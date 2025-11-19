void sub_218002480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<std::shared_ptr<MIL::IRValue const>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::Validation::Constraints const>>>(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void *std::shared_ptr<MIL::IRValue const>::operator=[abi:ne200100]<MIL::IRListValue const,std::default_delete<MIL::IRListValue const>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRListValue const,std::default_delete<MIL::IRListValue const>,0>(&v6, a2);
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

MIL::IRListValue **std::unique_ptr<MIL::IRListValue const>::~unique_ptr[abi:ne200100](MIL::IRListValue **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::IRListValue::~IRListValue(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void sub_2180026A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MIL::Attributes::BlobFileMutabilityInfo::Rewrite(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL MIL::Attributes::FlexibleShapeInfo::Impl::operator==(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if ((v4 == 0) != (v5 == 0) || v4 && !std::operator==[abi:ne200100]<std::string,std::vector<MIL::IRDimension const*>,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::vector<MIL::IRDimension const*>>>>(v4, v5))
  {
    return 0;
  }

  v6 = a1[7];
  v7 = *(a2 + 56);
  if ((v6 == 0) != (v7 == 0) || v6 && !std::operator==[abi:ne200100]<std::string,std::vector<std::pair<int,int>>,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::vector<std::pair<int,int>>>>>(v6, v7))
  {
    return 0;
  }

  return std::operator==[abi:ne200100]<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>>>((a1 + 2), (a2 + 16));
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_2180029D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

void sub_218002D24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__deallocate_node(a1, *(a1 + 16));
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<int,int>>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_218003098(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>>>::__erase_unique<std::string>(void *a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

void std::vector<int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, __n);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

BOOL std::operator==[abi:ne200100]<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>>>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v3 + 2);
    if (!v5)
    {
      break;
    }

    v6 = v5;
    v7 = *(v3 + 39);
    if (v7 >= 0)
    {
      v8 = *(v3 + 39);
    }

    else
    {
      v8 = v3[3];
    }

    v9 = *(v5 + 39);
    v10 = v9;
    if (v9 < 0)
    {
      v9 = v5[3];
    }

    if (v8 != v9)
    {
      break;
    }

    v11 = v7 >= 0 ? (v3 + 2) : v3[2];
    v12 = v10 >= 0 ? v6 + 2 : v6[2];
  }

  while (!memcmp(v11, v12, v8) && std::operator==[abi:ne200100]<std::string,std::vector<MIL::IRDimension const*>,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::vector<MIL::IRDimension const*>>>>((v3 + 5), v6 + 5));
  return v4;
}

BOOL std::operator==[abi:ne200100]<std::string,std::vector<MIL::IRDimension const*>,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::vector<MIL::IRDimension const*>>>>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v3 + 2);
    if (!v5)
    {
      break;
    }

    v6 = v5;
    v7 = *(v3 + 39);
    if (v7 >= 0)
    {
      v8 = *(v3 + 39);
    }

    else
    {
      v8 = v3[3];
    }

    v9 = *(v5 + 39);
    v10 = v9;
    if (v9 < 0)
    {
      v9 = v5[3];
    }

    if (v8 != v9)
    {
      break;
    }

    v11 = v7 >= 0 ? (v3 + 2) : v3[2];
    v12 = v10 >= 0 ? v6 + 2 : v6[2];
    if (memcmp(v11, v12, v8))
    {
      break;
    }

    v13 = v3[5];
    v14 = v3[6] - v13;
    v15 = v6[5];
    if (v14 != v6[6] - v15)
    {
      break;
    }
  }

  while (!memcmp(v13, v15, v14));
  return v4;
}

uint64_t std::operator==[abi:ne200100]<std::string,std::vector<std::pair<int,int>>,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::vector<std::pair<int,int>>>>>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  do
  {
    result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, v2 + 2);
    if (!result)
    {
      break;
    }

    v5 = result;
    v6 = *(v2 + 39);
    if (v6 >= 0)
    {
      v7 = *(v2 + 39);
    }

    else
    {
      v7 = v2[3];
    }

    v8 = *(result + 39);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(result + 24);
    }

    if (v7 != v8)
    {
      return 0;
    }

    v10 = v6 >= 0 ? (v2 + 2) : v2[2];
    v11 = v9 >= 0 ? v5 + 2 : v5[2];
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }

    v13 = v2[5];
    v12 = v2[6];
    v14 = v5[5];
    if (v12 - v13 != v5[6] - v14)
    {
      return 0;
    }

    while (v13 != v12)
    {
      if (*v13 != *v14 || *(v13 + 1) != v14[1])
      {
        return 0;
      }

      v13 += 8;
      v14 += 2;
    }

    v2 = *v2;
    result = 1;
  }

  while (v2);
  return result;
}

void std::__shared_ptr_emplace<std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E44C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::__shared_ptr_emplace<std::unordered_map<std::string,std::vector<std::pair<int,int>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E4510;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<MIL::IRDimension const*>>>>>::__deallocate_node(a1, *(a1 + 16));
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

uint64_t *std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRListValue const,std::default_delete<MIL::IRListValue const>,0>(uint64_t *result, uint64_t *a2)
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

void std::__shared_ptr_pointer<MIL::IRListValue const *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

MIL::IRListValue *std::__shared_ptr_pointer<MIL::IRListValue const *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    MIL::IRListValue::~IRListValue(result);

    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRListValue const *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::unique_ptr<MIL::Attributes::IOAliasInfo::Impl>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2 + 40);
    v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2);
    MEMORY[0x21CEAFEA0](v3, 0x10A0C40864A76ABLL);
  }

  return a1;
}

void *MIL::Attributes::IOAliasInfo::IOAliasInfo(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

void sub_218003A4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<MIL::Attributes::IOAliasInfo::Impl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MIL::Attributes::IOAliasInfo::Make(MIL::Attributes::IOAliasInfo *this, MIL::MILContext *a2, const MIL::IRFunction *a3)
{
  BYTE7(v21) = 9;
  strcpy(&v20, "IOAliases");
  Attribute = MIL::IRObject::TryGetAttribute(a2, &v20);
  v4 = Attribute;
  if (SBYTE7(v21) < 0)
  {
    operator delete(v20);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else if (Attribute)
  {
LABEL_3:
    v5 = MIL::IRValue::AsDictionary(v4);
    v20 = 0u;
    v21 = 0u;
    v22 = 1065353216;
    memset(v18, 0, sizeof(v18));
    v19 = 1065353216;
    v6 = MIL::IRDictionaryValue::begin(v5);
    v7 = MIL::IRDictionaryValue::end(v5);
    while (v6 != v7)
    {
      MIL::IRValue::GetScalar<std::string>(*(v6 + 16), &v17);
      MIL::IRValue::GetScalar<std::string>(*(v6 + 32), &__p);
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string&,std::string&>(&v20, &v17.__r_.__value_.__l.__data_);
      if ((v8 & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::operator+<char>();
        v12 = std::string::append(&v14, "' aliased to multiple internal names.");
        v13 = *&v12->__r_.__value_.__l.__data_;
        v15.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
        *&v15.__r_.__value_.__l.__data_ = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v15);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string&,std::string&>(v18, &__p.__r_.__value_.__l.__data_);
      if ((v9 & 1) == 0)
      {
        v10 = __cxa_allocate_exception(0x10uLL);
        std::operator+<char>();
        std::runtime_error::runtime_error(v10, &v15);
        __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      v6 = *v6;
    }

    operator new();
  }

  MIL::Attributes::IOAliasInfo::Make(Attribute);
}

void sub_218003CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  std::unique_ptr<MIL::Attributes::IOAliasInfo::Impl>::~unique_ptr[abi:ne200100](&a29);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a35);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v35 - 96);
  _Unwind_Resume(a1);
}

const void **MIL::Attributes::IOAliasInfo::SetAlias(void **a1, const void **a2, const void **a3)
{
  if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(*a1, a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v9 = std::string::append(&v14, "' already exists.");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(exception, &v15);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(*a1 + 5, a3))
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v12 = std::string::append(&v14, "' already exists.");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(v11, &v15);
    v11->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v11, off_278235F80, MEMORY[0x277D82610]);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string&,std::string&>(*a1, a2);
  v6 = *a1 + 5;

  return std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string,std::string>(v6, a3);
}

void sub_218003FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (v22)
  {
    __cxa_free_exception(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Attributes::IOAliasInfo::TrySetAlias(void **a1, const void **a2, const void **a3)
{
  if (std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(*a1, a2) || std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(*a1 + 5, a3))
  {
    return 0;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string&,std::string&>(*a1, a2);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string,std::string>(*a1 + 5, a3);
  return 1;
}

BOOL MIL::Attributes::IOAliasInfo::TryRemoveAlias(void **a1, const void **a2)
{
  v2 = *a1;
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(*a1, a2);
  if (v3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__erase_unique<std::string>(v2 + 5, v3 + 5);
    std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::remove(v2, v3, v5);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v5);
  }

  return v3 != 0;
}

const void **MIL::Attributes::IOAliasInfo::GetExternalName(uint64_t a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((*a1 + 40), a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v2 + 5;
}

const void **MIL::Attributes::IOAliasInfo::TryGetExternalName(uint64_t a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((*a1 + 40), a2);
  if (v2)
  {
    return v2 + 5;
  }

  else
  {
    return 0;
  }
}

const void **MIL::Attributes::IOAliasInfo::GetInternalName(void **a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(*a1, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v2 + 5;
}

const void **MIL::Attributes::IOAliasInfo::TryGetInternalName(void **a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(*a1, a2);
  if (v2)
  {
    return v2 + 5;
  }

  else
  {
    return 0;
  }
}

void MIL::Attributes::IOAliasInfo::Replace(MIL::Attributes::IOAliasInfo *this, MIL::MILContext *a2, MIL::IRFunction *a3)
{
  if (*(*this + 24))
  {
    *__p = 0u;
    v4 = 0u;
    v5 = 1065353216;
    MIL::IRTensorValueType::MakeScalar();
  }

  BYTE7(v4) = 9;
  strcpy(__p, "IOAliases");
  MIL::IRObject::RemoveAttribute(a3, __p);
  if (SBYTE7(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_218004504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21800468C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MIL::Attributes::BlobFileMutabilityInfo::Rewrite(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string,std::string>(void *a1, const void **a2)
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

void sub_218004944(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *MIL::Attributes::TraceabilityInfo::TraceabilityInfo(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

void sub_218004A00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<MIL::Attributes::TraceabilityInfo::Impl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<MIL::Attributes::TraceabilityInfo::Impl>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2 + 3;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = v2;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x21CEAFEA0](v2, 0x20C40A759441BLL);
  }

  return a1;
}

void MIL::Attributes::TraceabilityInfo::Make(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 64))(a2))
  {
    MIL::IRTensorValueType::MakeScalar();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "TraceabilityInfo is not a IRDictionaryType.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_218004D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  v33 = *(v31 - 128);
  *(v31 - 128) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(v31 - 96);
  *(v31 - 96) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(exception_object);
}

void sub_218004ECC()
{
  if (*(v0 - 97) < 0)
  {
    operator delete(*(v0 - 120));
  }

  JUMPOUT(0x218004EC4);
}

void anonymous namespace::ExtractTraceabilityInfo(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *a1;
  if (v2)
  {
    v4 = (*(*v2 + 48))(v2);
    v5 = v4;
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Traceability scope_name and scope_type should be of ListValueType.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    Type = MIL::IRListValue::GetType(v4);
    v7 = (*(*Type + 64))(Type);
    if (!(*(*v7 + 24))(v7) || (v8 = MIL::IRValueType::AsTensorType(v7), (*(*v8 + 88))(v8) != 3) || (v9 = MIL::IRValueType::AsTensorType(v7), !MIL::IRTensorValueType::IsScalar(v9)))
    {
      v31 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v31, "Each element of traceability scope_name/scope_type list should be a IRTensorValueType of type scalar string.");
      __cxa_throw(v31, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    Values = MIL::IRListValue::GetValues(v5);
    if (v11)
    {
      v12 = Values;
      v13 = Values + 16 * v11;
      while (1)
      {
        v14 = *v12;
        v15 = *(v12 + 8);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MIL::IRValue::GetScalar<std::string>(v14, &__p);
        v17 = *(a2 + 8);
        v16 = *(a2 + 16);
        if (v17 < v16)
        {
          break;
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *a2) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a2) >> 3);
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

        v34.__end_cap_.__value_ = a2;
        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2, v22);
        }

        v23 = 24 * v19;
        v24 = *&__p.__r_.__value_.__l.__data_;
        *(v23 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v23 = v24;
        memset(&__p, 0, sizeof(__p));
        v25 = 24 * v19 + 24;
        v26 = *(a2 + 8) - *a2;
        v27 = 24 * v19 - v26;
        memcpy((v23 - v26), *a2, v26);
        v28 = *a2;
        *a2 = v27;
        *(a2 + 8) = v25;
        v29 = *(a2 + 16);
        *(a2 + 16) = 0;
        v34.__end_ = v28;
        v34.__end_cap_.__value_ = v29;
        v34.__first_ = v28;
        v34.__begin_ = v28;
        std::__split_buffer<std::string>::~__split_buffer(&v34);
        v30 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        *(a2 + 8) = v25;
        if (v30 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (!v15)
          {
            goto LABEL_24;
          }

LABEL_23:
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          goto LABEL_24;
        }

        if (v15)
        {
          goto LABEL_23;
        }

LABEL_24:
        v12 += 16;
        if (v12 == v13)
        {
          return;
        }
      }

      v18 = *&__p.__r_.__value_.__l.__data_;
      *(v17 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v17 = v18;
      *(a2 + 8) = v17 + 24;
      if (!v15)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }
}

void sub_2180051E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_free_exception(v14);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void MIL::Attributes::TraceabilityInfo::Make(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "TraceabilityInfo");
  Attribute = MIL::IRObject::TryGetAttribute(v3, __p);
  v5 = Attribute;
  if (v10 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
LABEL_3:
      v6 = *a1;
      v7 = a1[1];
      v8[0] = v6;
      v8[1] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      MIL::Attributes::TraceabilityInfo::Make(v8, v5);
    }
  }

  else if (Attribute)
  {
    goto LABEL_3;
  }

  MIL::Attributes::TraceabilityInfo::Make(Attribute);
}

void sub_2180052F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Attributes::TraceabilityInfo::GetValue(uint64_t **a1)
{
  v2 = *a1;
  memset(v5, 0, sizeof(v5));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v5, *v2, v2[1], 0xAAAAAAAAAAAAAAABLL * ((v2[1] - *v2) >> 3));
  v3 = *a1;
  memset(v4, 0, sizeof(v4));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4, v3[3], v3[4], 0xAAAAAAAAAAAAAAABLL * ((v3[4] - v3[3]) >> 3));
  MIL::IRTensorValueType::MakeScalar();
}

void sub_218005898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, MIL::IRListValue *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<MIL::IRListValue const>::~unique_ptr[abi:ne200100](&a24);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapHasher,MIL::IRValueMapEq,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>,MIL::IRValueMapEq,MIL::IRValueMapHasher,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a25);
  a25 = v43 - 176;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v43 - 152;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v43 - 128;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = v43 - 104;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

void MIL::Attributes::TraceabilityInfo::AddNames(std::vector<std::string> **a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  if (v2 != &v3)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v2, v3, v4, 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
  }

  v6 = &v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void sub_218005B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void MIL::Attributes::TraceabilityInfo::AddTypes(std::vector<std::string> **a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  if (&v2[1] != &v3)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v2 + 1, v3, v4, 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
  }

  v6 = &v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void sub_218005BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t MIL::Attributes::TraceabilityInfo::GetNames@<X0>(uint64_t **this@<X0>, void *a2@<X8>)
{
  v2 = *this;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *v2, v2[1], 0xAAAAAAAAAAAAAAABLL * ((v2[1] - *v2) >> 3));
}

uint64_t MIL::Attributes::TraceabilityInfo::GetTypes@<X0>(MIL::Attributes::TraceabilityInfo *this@<X0>, void *a2@<X8>)
{
  v2 = *this;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *(v2 + 24), *(v2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 32) - *(v2 + 24)) >> 3));
}

void MIL::Attributes::TraceabilityInfo::Clear(void ****this)
{
  v1 = *this;
  std::vector<std::string>::clear[abi:ne200100](*this);

  std::vector<std::string>::clear[abi:ne200100](v1 + 3);
}

void MIL::Attributes::TraceabilityInfo::Replace(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a1;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v16, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
  v7 = *a1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v13, v7[3], v7[4], 0xAAAAAAAAAAAAAAABLL * ((v7[4] - v7[3]) >> 3));
  if (v16 != v17 || v13 != v14)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "TraceabilityInfo");
    v8 = *(a2 + 8);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    MIL::Attributes::TraceabilityInfo::GetValue(a1);
  }

  v9 = *a3;
  std::string::basic_string[abi:ne200100]<0>(v11, "TraceabilityInfo");
  MIL::IRObject::RemoveAttribute(v9, v11);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  v11[0] = &v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
  v13 = &v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void sub_218005E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  __p = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v25 - 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void MIL::Attributes::TraceabilityInfo::Rewrite(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  (*(**a3 + 32))(&v11);
  v7 = v11;
  *a4 = v11;
  if (v7)
  {
    operator new();
  }

  a4[1] = 0;
  v8 = *a2;
  v9 = a2[1];
  v10[0] = v8;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Attributes::TraceabilityInfo::Replace(a1, v10, a4);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_218005FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MIL::Pass::Run(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL MIL::Attributes::TraceabilityInfo::operator==(const void ****a1, const void ****a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  if (v5 - v4 != (*a2)[1] - v6)
  {
    return 0;
  }

  while (v4 != v5)
  {
    result = std::equal_to<std::string>::operator()[abi:ne200100](&v12, v4, v6);
    if (!result)
    {
      return result;
    }

    v4 += 3;
    v6 += 3;
  }

  v8 = v2[3];
  v9 = v2[4];
  v10 = v3[3];
  if (v9 - v8 != v3[4] - v10)
  {
    return 0;
  }

  if (v8 == v9)
  {
    return 1;
  }

  do
  {
    result = std::equal_to<std::string>::operator()[abi:ne200100](&v11, v8, v10);
    if (!result)
    {
      break;
    }

    v8 += 3;
    v10 += 3;
  }

  while (v8 != v9);
  return result;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void MIL::Blob::TryGetDataOffsetAndByteLength(const void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "path");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &__p.__r_.__value_.__l.__data_);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  MIL::IRValue::GetScalar<std::string>(v6[5], &v24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!v7)
  {
    __cxa_bad_cast();
  }

  v8 = v7;
  std::string::basic_string[abi:ne200100]<0>(&v21, "type");
  v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &v21);
  MIL::IRValue::GetScalar<std::string>(v9[5], &__p);
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 8)
    {
      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 14)
      {
        goto LABEL_25;
      }

      if (__p.__r_.__value_.__r.__words[0] != 0x4C4259434147454CLL || *(__p.__r_.__value_.__r.__words + 6) != 0x454C4946424F4C42)
      {
        goto LABEL_25;
      }

      goto LABEL_31;
    }

    p_p = &__p;
    goto LABEL_24;
  }

  if (__p.__r_.__value_.__l.__size_ != 14 || (*__p.__r_.__value_.__l.__data_ == 0x4C4259434147454CLL ? (v11 = *(__p.__r_.__value_.__r.__words[0] + 6) == 0x454C4946424F4C42) : (v11 = 0), !v11))
  {
    if (__p.__r_.__value_.__l.__size_ != 8)
    {
      goto LABEL_25;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
LABEL_24:
    if (p_p->__r_.__value_.__r.__words[0] == 0x454C4946424F4C42)
    {
      std::string::basic_string[abi:ne200100]<0>(&v21, "offset");
      v17 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &v21);
      if (!v17)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v18 = MIL::IRValue::GetScalar<unsigned long long>(v17[5]);
      if (v22 < 0)
      {
        operator delete(v21);
      }

      MIL::MILContextImpl::GetOrCreateStorageReader(v8, &v24.__r_.__value_.__l.__data_, &v21);
      DataOffset = MIL::Blob::StorageReader::GetDataOffset(v21, v18);
      DataSize = MIL::Blob::StorageReader::GetDataSize(v21, v18);
      *a3 = 1;
      *(a3 + 8) = DataOffset;
      *(a3 + 16) = DataSize;
      goto LABEL_39;
    }

LABEL_25:
    LOBYTE(v21) = 0;
    *(&v21 + 4) = 0;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    goto LABEL_26;
  }

LABEL_31:
  std::string::basic_string[abi:ne200100]<0>(&v21, "identifier");
  v13 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, &v21);
  if (!v13)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v14 = MIL::IRValue::GetScalar<unsigned long long>(v13[5]);
  if (v22 < 0)
  {
    operator delete(v21);
  }

  MIL::MILContextImpl::GetOrCreateLegacyStorageReader(v8, &v24.__r_.__value_.__l.__data_, &v21);
  FileDataOffsetAndByteLength = MIL::Blob::LegacyStorageReader::GetFileDataOffsetAndByteLength(v21, v14);
  *a3 = 1;
  *(a3 + 8) = FileDataOffsetAndByteLength;
  *(a3 + 16) = v16;
LABEL_39:
  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
  }

LABEL_26:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_2180065B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  __cxa_begin_catch(a1);
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  __cxa_end_catch();
  JUMPOUT(0x218006480);
}

void MIL::Blob::FileWriter::~FileWriter(MIL::Blob::FileWriter *this)
{
  v1 = this + 432;
  MEMORY[0x21CEAFA60](this + 24);
  std::iostream::~basic_iostream();
  MEMORY[0x21CEAFDA0](v1);
}

uint64_t *std::fstream::~fstream(uint64_t *a1)
{
  MEMORY[0x21CEAFDA0](v2 + 432);
  return a1;
}

void (__cdecl ***MIL::Blob::FileWriter::FileWriter(void (__cdecl ***a1)(std::fstream *__hidden this), const std::string *a2, int a3))(std::fstream *__hidden this)
{
  a1[60] = 0;
  a1[1] = 0;
  *a1 = &unk_2829E4708;
  a1[54] = &unk_2829E4730;
  std::ios_base::init((a1 + 54), a1 + 3);
  a1[71] = 0;
  *(a1 + 144) = -1;
  MEMORY[0x21CEAFA50](a1 + 3);
  if (a3)
  {
    v6 = 60;
  }

  else
  {
    v6 = 28;
  }

  std::fstream::open(a1, a2, v6);
  v7 = *a1;
  if ((*(*(*a1 - 3) + a1 + 32) & 5) != 0)
  {
    std::fstream::open(a1, a2, 0x14u);
    if (!std::filebuf::close())
    {
      std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
    }

    std::fstream::open(a1, a2, v6);
    v7 = *a1;
  }

  if ((*(*(v7 - 3) + a1 + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v10 = std::string::append(&v12, " file stream for writing");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v13);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_2180069B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      MEMORY[0x21CEAFDA0](v21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void std::fstream::open(std::fstream *this, const std::string *__s, std::ios_base::openmode __mode)
{
  v4 = std::filebuf::open();
  v5 = (this + *(this->__sb_.__extbuf_ - 3));
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5->__rdstate_ | 4;
  }

  std::ios_base::clear(v5, v6);
}

unint64_t MIL::Blob::FileWriter::GetNextAlignedOffset(MIL::Blob::FileWriter *this)
{
  std::istream::seekg();
  std::istream::tellg();
  return (v2 + 63) & 0xFFFFFFFFFFFFFFC0;
}

uint64_t MIL::Blob::FileWriter::GetFileSize(MIL::Blob::FileWriter *this)
{
  std::istream::seekg();
  std::istream::tellg();
  return v2;
}

unint64_t MIL::Blob::FileWriter::AppendData(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  std::istream::seekg();
  std::istream::tellg();
  v2 = v10;
  v3 = a1 + 2;
  MEMORY[0x21CEAFAD0](v8, a1 + 2);
  v4 = v2 + 63;
  v5 = v3 + *(*v3 - 24);
  if ((v5[32] & 5) == 0)
  {
    (*(**(v5 + 5) + 32))(v9);
    if (v10 == -1)
    {
      std::ios_base::clear((v3 + *(*v3 - 24)), *(v3 + *(*v3 - 24) + 32) | 4);
    }
  }

  MEMORY[0x21CEAFAE0](v8);
  std::ostream::write();
  if (*(a1 + *(*a1 - 24) + 32))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL FileWriter]: Unknown error occured while writing data to the file.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return v4 & 0xFFFFFFFFFFFFFFC0;
}

uint64_t MIL::Blob::FileWriter::WriteData(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((a4 & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v22, a4);
    v10 = std::string::insert(&v22, 0, "[MIL FileWriter]: Provided offset not aligned. offset=");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v23, " alignment=");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v21, 0x40uLL);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v21;
    }

    else
    {
      v14 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v21.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v24, v14, size);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v25, ".");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v26);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = a1 + 2;
  MEMORY[0x21CEAFAD0](&v25, a1 + 2);
  v7 = v6 + *(*v6 - 24);
  if ((v7[32] & 5) == 0)
  {
    (*(**(v7 + 5) + 32))(&v26);
    if (v27 == -1)
    {
      std::ios_base::clear((v6 + *(*v6 - 24)), *(v6 + *(*v6 - 24) + 32) | 4);
    }
  }

  MEMORY[0x21CEAFAE0](&v25);
  result = std::ostream::write();
  if (*(a1 + *(*a1 - 24) + 32))
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "[MIL FileWriter]: Unknown error occured while writing data to the file.");
    __cxa_throw(v20, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_218007030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a14 < 0)
  {
    operator delete(a9);
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
    if ((v48 & 1) == 0)
    {
LABEL_16:
      _Unwind_Resume(a1);
    }
  }

  else if (!v48)
  {
    goto LABEL_16;
  }

  __cxa_free_exception(v47);
  goto LABEL_16;
}

uint64_t MIL::Blob::FileWriter::ReadData(void *a1)
{
  std::istream::seekg();
  result = std::istream::read();
  if (*(a1 + *(*a1 - 24) + 32))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL FileWriter]: Unknown error occured while reading data from the file.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t std::fstream::~fstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[8];
  a1[2] = a2[9];
  MEMORY[0x21CEAFA60](a1 + 3);

  return std::iostream::~basic_iostream();
}

void non-virtual thunk tostd::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  MEMORY[0x21CEAFA60](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x21CEAFDA0);
}

{
  v1 = a1 + 52;
  MEMORY[0x21CEAFA60](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x21CEAFDA0](v1);

  JUMPOUT(0x21CEAFEA0);
}

void virtual thunk tostd::fstream::~fstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x21CEAFA60](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x21CEAFDA0);
}

{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x21CEAFA60](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x21CEAFDA0](v1 + 54);

  JUMPOUT(0x21CEAFEA0);
}

void std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  v1 = a1 + 54;
  MEMORY[0x21CEAFA60](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x21CEAFDA0](v1);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::Blob::LegacyStorageReader::~LegacyStorageReader(MIL::Blob::MMapFileReader **this)
{
  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table((this + 5));
  std::unique_ptr<MIL::Blob::MMapFileReader const>::reset[abi:ne200100](this + 4, 0);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

double MIL::Blob::LegacyStorageReader::LegacyStorageReader(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 72) = 1065353216;
  return result;
}

void MIL::Blob::LegacyStorageReader::EnsureLoaded(MIL::Blob::LegacyStorageReader *this)
{
  v3 = this;
  v1 = (this + 24);
  v2 = &v3;
  if (atomic_load_explicit(v1, memory_order_acquire) != -1)
  {
    v5 = &v2;
    v4 = &v5;
    std::__call_once(v1, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<MIL::Blob::LegacyStorageReader::EnsureLoaded(void)::$_1 &&>>);
  }
}

uint64_t MIL::Blob::LegacyStorageReader::GetFileDataOffsetAndByteLength(MIL::Blob::LegacyStorageReader *this, unint64_t a2)
{
  v6 = a2;
  MIL::Blob::LegacyStorageReader::EnsureLoaded(this);
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(this + 5, &v6);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "blobv1 identifier not found");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return v3[3];
}

unint64_t MIL::Blob::LegacyStorageReader::GetDataView<MIL::Fp16>(MIL::Blob::MMapFileReader **a1, unint64_t a2)
{
  FileDataOffsetAndByteLength = MIL::Blob::LegacyStorageReader::GetFileDataOffsetAndByteLength(a1, a2);
  result = MIL::Blob::MMapFileReader::ReadData(a1[4], FileDataOffsetAndByteLength, v4);
  if (v6 < 2)
  {
    return 0;
  }

  return result;
}

unint64_t MIL::Blob::LegacyStorageReader::GetDataView<float>(MIL::Blob::MMapFileReader **a1, unint64_t a2)
{
  FileDataOffsetAndByteLength = MIL::Blob::LegacyStorageReader::GetFileDataOffsetAndByteLength(a1, a2);
  result = MIL::Blob::MMapFileReader::ReadData(a1[4], FileDataOffsetAndByteLength, v4);
  if (v6 < 4)
  {
    return 0;
  }

  return result;
}

MIL::Blob::MMapFileReader *std::unique_ptr<MIL::Blob::MMapFileReader const>::reset[abi:ne200100](MIL::Blob::MMapFileReader **a1, MIL::Blob::MMapFileReader *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MIL::Blob::MMapFileReader::~MMapFileReader(result);

    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

void sub_218007A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<MIL::Blob::MMapFileReader const>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MIL::Blob::LegacyStorageReader::FileInfo>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
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

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t MIL::Blob::MMapEncryptedFileReader::MMapEncryptedFileReader(uint64_t a1, std::string::size_type a2)
{
  v3 = *(MIL::Blob::MMapFileReader::MMapFileReader(a1, a2) + 48);
  if (v3 >= 0x40)
  {
    v4 = *(a1 + 40);
    if (*v4 == 1162759500)
    {
      v5 = *(v4 + 4);
      if ((v5 - 3) <= 0xFFFFFFFD)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v27, *(v4 + 4));
        v11 = std::string::insert(&v27, 0, "Invalid Encrypted file header: Unsupported major version = ");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v28.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
        *&v28.__r_.__value_.__l.__data_ = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v28);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (v5 == 1)
      {
        v6 = 64;
      }

      else
      {
        v6 = *(v4 + 7);
      }

      if (v3 <= v6)
      {
        v13 = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v27, v6);
        v14 = std::string::insert(&v27, 0, "Invalid Encrypted file header: File does not contain any payload, size of Header = ");
        v15 = *&v14->__r_.__value_.__l.__data_;
        v28.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
        *&v28.__r_.__value_.__l.__data_ = v15;
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v13, &v28);
        __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v7 = *(v4 + 8);
      if (v7 - 1 >= v3 - v6)
      {
        v16 = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v27, v7);
        v17 = std::string::insert(&v27, 0, "Invalid Encrypted file header: Incorrect size of decrypted file size = ");
        v18 = *&v17->__r_.__value_.__l.__data_;
        v28.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v28.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v16, &v28);
        __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v8 = *(v4 + 16);
      if (v8)
      {
        if (v8 >> 52)
        {
          v19 = *(v4 + 16);
          v20 = __cxa_allocate_exception(0x10uLL);
          std::to_string(&v27, v19);
          v21 = std::string::insert(&v27, 0, "Invalid Encrypted file header: Incorrect number of encrypted pages = ");
          v22 = *&v21->__r_.__value_.__l.__data_;
          v28.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
          *&v28.__r_.__value_.__l.__data_ = v22;
          v21->__r_.__value_.__l.__size_ = 0;
          v21->__r_.__value_.__r.__words[2] = 0;
          v21->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v20, &v28);
          __cxa_throw(v20, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        if (v3 < v8 << 12)
        {
          v23 = *(v4 + 16);
          v24 = __cxa_allocate_exception(0x10uLL);
          std::to_string(&v27, v23);
          v25 = std::string::insert(&v27, 0, "Invalid Encrypted file header: Incorrect number of encrypted bytes = ");
          v26 = *&v25->__r_.__value_.__l.__data_;
          v28.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
          *&v28.__r_.__value_.__l.__data_ = v26;
          v25->__r_.__value_.__l.__size_ = 0;
          v25->__r_.__value_.__r.__words[2] = 0;
          v25->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v24, &v28);
          __cxa_throw(v24, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        if (mremap_encrypted())
        {
          operator new();
        }
      }

      *(a1 + 40) = v4 + v6;
      *(a1 + 48) = v7;
      *(a1 + 56) = 1;
    }
  }

  return a1;
}

void sub_218008264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      if (a21 < 0)
      {
        operator delete(a16);
      }

      MIL::Blob::MMapFileReader::~MMapFileReader(v21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

uint64_t MIL::Blob::MMapFileReader::MMapFileReader(uint64_t a1, std::string::size_type a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (stat(v4, &v18))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(exception, &v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  st_size = v18.st_size;
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = fopen(v6, "r");
  v8 = v7;
  if (!v7)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(v17, &v21);
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = fileno(v7);
  v10 = mmap(0, st_size, 1, 2, v9, 0);
  buf.__r_.__value_.__r.__words[0] = &unk_2829E47B8;
  buf.__r_.__value_.__l.__size_ = st_size;
  p_buf = &buf;
  v21.__r_.__value_.__r.__words[0] = v10;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v21.__r_.__value_.__l.__size_, &buf);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf);
  v11 = v21.__r_.__value_.__r.__words[0];
  if (v21.__r_.__value_.__r.__words[0] + 1 <= 1)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::runtime_error::runtime_error(v15, &buf);
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (st_size)
  {
    v12 = v21.__r_.__value_.__r.__words[0];
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 40) = v12;
  *(a1 + 48) = st_size;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = v13;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
    p_buf = st_size;
    _os_log_impl(&dword_217F7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MMapped %s to base address %lx with size %zu", &buf, 0x20u);
  }

  std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:ne200100](a1, &v21);
  std::unique_ptr<void,std::function<void ()(void *)>>::reset[abi:ne200100](&v21, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v21.__r_.__value_.__l.__size_);
  fclose(v8);
  return a1;
}

void sub_2180086E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
    if ((v34 & 1) == 0)
    {
LABEL_6:
      std::unique_ptr<void,std::function<void ()(void *)>>::reset[abi:ne200100](v32, 0);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v32 + 1));
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v33);
  goto LABEL_6;
}

uint64_t *std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  std::unique_ptr<void,std::function<void ()(void *)>>::reset[abi:ne200100](a1, v4);
  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

unint64_t MIL::Util::Span<unsigned char,18446744073709551615ul>::Slice(void *a1, unint64_t a2, uint64_t a3)
{
  if (!a3 || ((v3 = a1[1], v3 > a2) ? (v4 = a3 + a2 > v3) : (v4 = 1), v4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return *a1 + a2;
}

uint64_t *std::unique_ptr<void,std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t std::function<void ()(void *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<MIL::Blob::MMapFileReader::MMapFileReader(std::string const&)::$_0,std::allocator<MIL::Blob::MMapFileReader::MMapFileReader(std::string const&)::$_0>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829E47B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Blob::MMapFileReader::MMapFileReader(std::string const&)::$_0,std::allocator<MIL::Blob::MMapFileReader::MMapFileReader(std::string const&)::$_0>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void sub_218008D54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v3 + 24);
  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](va);
  MEMORY[0x21CEAFEA0](v3, v2);
  _Unwind_Resume(a1);
}

void MIL::Blob::StorageReader::~StorageReader(MIL::Blob::StorageReader::Impl **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    MIL::Blob::StorageReader::Impl::~Impl(v2);
    MEMORY[0x21CEAFEA0]();
  }
}

void MIL::Blob::StorageReader::StorageReader()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void sub_218008F04(_Unwind_Exception *a1)
{
  MEMORY[0x21CEAFEA0](v2, 0x1072C40375F26C8);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t MIL::Blob::StorageReader::Impl::GetFilename(uint64_t this)
{
  if ((*(this + 24) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Storage data is not backed by a file.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return this;
}

uint64_t MIL::Blob::StorageReader::GetRawDataView(MIL::Blob::StorageReader::Impl **this, uint64_t a2)
{
  v2 = *this;
  Metadata = MIL::Blob::StorageReader::Impl::GetMetadata(*this, a2, v5);
  return (*(**(v2 + 4) + 32))(*(v2 + 4), v5[2], v5[1], Metadata);
}

void MIL::Blob::StorageReader::Impl::GetAllOffsets(MIL::Blob::StorageReader::Impl *this@<X0>, const void **a2@<X8>)
{
  v4 = *(*(**(this + 4) + 32))(*(this + 4), 0, 64);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<unsigned long long>::reserve(a2, v4);
  if (v4)
  {
    v5 = 64;
    do
    {
      v7 = a2[1];
      v6 = a2[2];
      if (v7 >= v6)
      {
        v9 = *a2;
        v10 = v7 - *a2;
        v11 = v10 >> 3;
        v12 = (v10 >> 3) + 1;
        if (v12 >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v13 = v6 - v9;
        if (v13 >> 2 > v12)
        {
          v12 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v14);
        }

        *(8 * v11) = v5;
        v8 = 8 * v11 + 8;
        memcpy(0, v9, v10);
        v15 = *a2;
        *a2 = 0;
        a2[1] = v8;
        a2[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = v5;
        v8 = (v7 + 1);
      }

      a2[1] = v8;
      MIL::Blob::StorageReader::Impl::GetMetadata(this, v5, v16);
      v5 = (v16[2] + v16[1] + 63) & 0xFFFFFFFFFFFFFFC0;
      LODWORD(v4) = v4 - 1;
    }

    while (v4);
  }
}

void sub_21800938C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 MIL::Blob::StorageReader::Impl::GetMetadata@<Q0>(MIL::Blob::StorageReader::Impl *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (*(**(this + 4) + 32))(*(this + 4), a2, 64);
  v5 = *(v4 + 16);
  *a3 = *v4;
  *(a3 + 16) = v5;
  result = *(v4 + 32);
  v7 = *(v4 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v7;
  if (*a3 != -559038737)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid sentinel in blob_metadata.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(void const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t MIL::Blob::anonymous namespace::ValidateStorageHeader(uint64_t result)
{
  if (*(result + 4) != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Storage Reader expects file format version 2.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void MIL::Blob::anonymous namespace::InMemoryStorageData::~InMemoryStorageData(MIL::Blob::_anonymous_namespace_::InMemoryStorageData *this)
{
  *this = &unk_2829E4890;
  std::function<void ()(void const*)>::operator()(this + 24, *(this + 1));
  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](this + 24);
}

{

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::function<void ()(void const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

unint64_t MIL::Util::Span<unsigned char const,18446744073709551615ul>::Slice(void *a1, unint64_t a2, uint64_t a3)
{
  if (!a3 || ((v3 = a1[1], v3 > a2) ? (v4 = a3 + a2 > v3) : (v4 = 1), v4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return *a1 + a2;
}

uint64_t std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void MIL::Blob::StorageReader::Impl::~Impl(MIL::Blob::StorageReader::Impl *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__shared_ptr_emplace<MIL::Blob::anonymous namespace::MMapStorageData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E48E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::Blob::anonymous namespace::MMapStorageData::~MMapStorageData(MIL::Blob::_anonymous_namespace_::MMapStorageData *this)
{
  *this = &unk_2829E4930;
  std::unique_ptr<MIL::Blob::MMapFileReader const>::reset[abi:ne200100](this + 5, 0);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{

  JUMPOUT(0x21CEAFEA0);
}

uint64_t MIL::Blob::anonymous namespace::MMapStorageData::GetLength(MIL::Blob::MMapFileReader **this)
{
  v2 = this[5];

  return MIL::Blob::MMapFileReader::GetLength(v2);
}

uint64_t MIL::Blob::anonymous namespace::MMapStorageData::IsEncrypted(MIL::Blob::MMapFileReader **this)
{
  v2 = this[5];

  return MIL::Blob::MMapFileReader::IsEncrypted(v2);
}

unint64_t MIL::Blob::anonymous namespace::MMapStorageData::GetView(MIL::Blob::MMapFileReader **this, unint64_t a2, uint64_t a3)
{
  v6 = this[5];

  return MIL::Blob::MMapFileReader::ReadData(v6, a2, a3);
}

void MIL::Blob::anonymous namespace::MMapStorageData::EnsureLoaded(MIL::Blob::_anonymous_namespace_::MMapStorageData *this)
{
  v3 = this;
  v1 = (this + 32);
  v2 = &v3;
  if (atomic_load_explicit(v1, memory_order_acquire) != -1)
  {
    v5 = &v2;
    v4 = &v5;
  }
}

void sub_218009A94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<MIL::Blob::MMapFileReader>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

MIL::Blob::MMapFileReader **std::unique_ptr<MIL::Blob::MMapFileReader>::~unique_ptr[abi:ne200100](MIL::Blob::MMapFileReader **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::Blob::MMapFileReader::~MMapFileReader(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

uint64_t MIL::Blob::StorageReader::Impl::GetDataViewForByteAligned<signed char>(MIL::Blob::StorageReader::Impl *a1, uint64_t a2)
{
  v3 = MIL::Blob::StorageReader::Impl::GetAndCheckMetadata(a1, a2, 4, v6);
  result = (*(**(a1 + 4) + 32))(*(a1 + 4), v6[2], v6[1], v3);
  if (!v5)
  {
    return 0;
  }

  return result;
}

double MIL::Blob::StorageReader::Impl::GetAndCheckMetadata@<D0>(MIL::Blob::StorageReader::Impl *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *&result = MIL::Blob::StorageReader::Impl::GetMetadata(a1, a2, a4).n128_u64[0];
  if (*(a4 + 4) != a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Metadata data type does not match requested type.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void MIL::Blob::StorageReader::Impl::GetDataViewForSubByteSized<MIL::Int4>(MIL::Blob::StorageReader::Impl *a1, uint64_t a2)
{
  v3 = MIL::Blob::StorageReader::Impl::GetAndCheckMetadata(a1, a2, 8, &v7);
  v4 = (*(**(a1 + 4) + 32))(*(a1 + 4), v9, v8, v3);
  if (v10 >= 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "8 or more bits of padding for sub-byte sized data is incorrect");
    goto LABEL_6;
  }

  if ((v10 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid padding for byte-aligned sub-byte-sized type");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  MIL::Util::CastToBitSpan<MIL::Int4 const,unsigned char const,true>(v4, v5, (8 * v8 - v10) >> 2);
}

void MIL::Blob::StorageReader::Impl::GetDataViewForSubByteSized<MIL::UInt6>(MIL::Blob::StorageReader::Impl *a1, uint64_t a2)
{
  v3 = MIL::Blob::StorageReader::Impl::GetAndCheckMetadata(a1, a2, 13, &v8);
  v4 = (*(**(a1 + 4) + 32))(*(a1 + 4), v10, v9, v3);
  if (v11 >= 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "8 or more bits of padding for sub-byte sized data is incorrect");
    goto LABEL_6;
  }

  v6 = 8 * v9 - v11;
  if (v6 % 6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid padding for blob");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  MIL::Util::CastToBitSpan<MIL::UInt6 const,unsigned char const,true>(v4, v5, v6 / 6);
}

void MIL::Blob::StorageReader::Impl::GetDataViewForSubByteSized<MIL::UInt4>(MIL::Blob::StorageReader::Impl *a1, uint64_t a2)
{
  v3 = MIL::Blob::StorageReader::Impl::GetAndCheckMetadata(a1, a2, 11, &v7);
  v4 = (*(**(a1 + 4) + 32))(*(a1 + 4), v9, v8, v3);
  if (v10 >= 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "8 or more bits of padding for sub-byte sized data is incorrect");
    goto LABEL_6;
  }

  if ((v10 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid padding for byte-aligned sub-byte-sized type");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char const,true>(v4, v5, (8 * v8 - v10) >> 2);
}

void MIL::Blob::StorageReader::Impl::GetDataViewForSubByteSized<MIL::UInt3>(MIL::Blob::StorageReader::Impl *a1, uint64_t a2)
{
  v3 = MIL::Blob::StorageReader::Impl::GetAndCheckMetadata(a1, a2, 12, &v8);
  v4 = (*(**(a1 + 4) + 32))(*(a1 + 4), v10, v9, v3);
  if (v11 >= 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "8 or more bits of padding for sub-byte sized data is incorrect");
    goto LABEL_6;
  }

  v6 = 8 * v9 - v11;
  if (v6 != 3 * (v6 / 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid padding for blob");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  MIL::Util::CastToBitSpan<MIL::UInt3 const,unsigned char const,true>(v4, v5, v6 / 3);
}

void MIL::Blob::StorageReader::Impl::GetDataViewForSubByteSized<MIL::UInt2>(MIL::Blob::StorageReader::Impl *a1, uint64_t a2)
{
  v3 = MIL::Blob::StorageReader::Impl::GetAndCheckMetadata(a1, a2, 10, &v7);
  v4 = (*(**(a1 + 4) + 32))(*(a1 + 4), v9, v8, v3);
  if (v10 >= 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "8 or more bits of padding for sub-byte sized data is incorrect");
    goto LABEL_6;
  }

  if (v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid padding for byte-aligned sub-byte-sized type");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  MIL::Util::CastToBitSpan<MIL::UInt2 const,unsigned char const,true>(v4, v5, (8 * v8 - v10) >> 1);
}

void MIL::Blob::StorageReader::Impl::GetDataViewForSubByteSized<MIL::UInt1>(MIL::Blob::StorageReader::Impl *a1, uint64_t a2)
{
  v3 = MIL::Blob::StorageReader::Impl::GetAndCheckMetadata(a1, a2, 9, &v7);
  v4 = (*(**(a1 + 4) + 32))(*(a1 + 4), v9, v8, v3);
  if (v10 >= 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "8 or more bits of padding for sub-byte sized data is incorrect");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  MIL::Util::CastToBitSpan<MIL::UInt1 const,unsigned char const,true>(v4, v5, 8 * v8 - v10);
}

uint64_t MIL::Blob::StorageReader::Impl::GetDataViewForByteAligned<unsigned char>(MIL::Blob::StorageReader::Impl *a1, uint64_t a2)
{
  v3 = MIL::Blob::StorageReader::Impl::GetAndCheckMetadata(a1, a2, 3, v6);
  result = (*(**(a1 + 4) + 32))(*(a1 + 4), v6[2], v6[1], v3);
  if (!v5)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::Blob::StorageReader::Impl::GetDataViewForByteAligned<MIL::Bf16>(MIL::Blob::StorageReader::Impl *a1, uint64_t a2)
{
  v3 = MIL::Blob::StorageReader::Impl::GetAndCheckMetadata(a1, a2, 5, v6);
  result = (*(**(a1 + 4) + 32))(*(a1 + 4), v6[2], v6[1], v3);
  if (v5 < 2)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::Blob::StorageReader::Impl::GetDataViewForByteAligned<MIL::Fp8E4M3FN>(MIL::Blob::StorageReader::Impl *a1, uint64_t a2)
{
  v3 = MIL::Blob::StorageReader::Impl::GetAndCheckMetadata(a1, a2, 16, v6);
  result = (*(**(a1 + 4) + 32))(*(a1 + 4), v6[2], v6[1], v3);
  if (!v5)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::Blob::StorageReader::Impl::GetDataViewForByteAligned<MIL::Fp8E5M2>(MIL::Blob::StorageReader::Impl *a1, uint64_t a2)
{
  v3 = MIL::Blob::StorageReader::Impl::GetAndCheckMetadata(a1, a2, 17, v6);
  result = (*(**(a1 + 4) + 32))(*(a1 + 4), v6[2], v6[1], v3);
  if (!v5)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::Blob::StorageReader::Impl::GetDataViewForByteAligned<MIL::Fp16>(MIL::Blob::StorageReader::Impl *a1, uint64_t a2)
{
  v3 = MIL::Blob::StorageReader::Impl::GetAndCheckMetadata(a1, a2, 1, v6);
  result = (*(**(a1 + 4) + 32))(*(a1 + 4), v6[2], v6[1], v3);
  if (v5 < 2)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::Blob::StorageReader::Impl::GetDataViewForByteAligned<float>(MIL::Blob::StorageReader::Impl *a1, uint64_t a2)
{
  v3 = MIL::Blob::StorageReader::Impl::GetAndCheckMetadata(a1, a2, 2, v6);
  result = (*(**(a1 + 4) + 32))(*(a1 + 4), v6[2], v6[1], v3);
  if (v5 < 4)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::Blob::StorageReader::Impl::GetDataViewForByteAligned<short>(MIL::Blob::StorageReader::Impl *a1, uint64_t a2)
{
  v3 = MIL::Blob::StorageReader::Impl::GetAndCheckMetadata(a1, a2, 6, v6);
  result = (*(**(a1 + 4) + 32))(*(a1 + 4), v6[2], v6[1], v3);
  if (v5 < 2)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::Blob::StorageReader::Impl::GetDataViewForByteAligned<unsigned short>(MIL::Blob::StorageReader::Impl *a1, uint64_t a2)
{
  v3 = MIL::Blob::StorageReader::Impl::GetAndCheckMetadata(a1, a2, 7, v6);
  result = (*(**(a1 + 4) + 32))(*(a1 + 4), v6[2], v6[1], v3);
  if (v5 < 2)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::Blob::StorageReader::Impl::GetDataViewForByteAligned<int>(MIL::Blob::StorageReader::Impl *a1, uint64_t a2)
{
  v3 = MIL::Blob::StorageReader::Impl::GetAndCheckMetadata(a1, a2, 14, v6);
  result = (*(**(a1 + 4) + 32))(*(a1 + 4), v6[2], v6[1], v3);
  if (v5 < 4)
  {
    return 0;
  }

  return result;
}

uint64_t MIL::Blob::StorageReader::Impl::GetDataViewForByteAligned<unsigned int>(MIL::Blob::StorageReader::Impl *a1, uint64_t a2)
{
  v3 = MIL::Blob::StorageReader::Impl::GetAndCheckMetadata(a1, a2, 15, v6);
  result = (*(**(a1 + 4) + 32))(*(a1 + 4), v6[2], v6[1], v3);
  if (v5 < 4)
  {
    return 0;
  }

  return result;
}

void MIL::Blob::StorageWriter::~StorageWriter(MIL::Blob::FileWriter ***this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    MIL::Blob::StorageWriter::Impl::~Impl(v2);
    MEMORY[0x21CEAFEA0]();
  }
}

unint64_t MIL::Blob::StorageWriter::Impl::WriteData<signed char>(uint64_t a1)
{
  NextAlignedOffset = MIL::Blob::FileWriter::GetNextAlignedOffset(*(a1 + 24));
  if ((NextAlignedOffset & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: dataOffset is expected to be 64 bits aligned.");
    goto LABEL_7;
  }

  v3 = NextAlignedOffset;
  v4 = NextAlignedOffset + 64;
  if (NextAlignedOffset != MIL::Blob::FileWriter::AppendData(*(a1 + 24)) || v4 != MIL::Blob::FileWriter::AppendData(*(a1 + 24)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: Metadata written to different offset than expected.");
LABEL_7:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *v5 = v6 + 1;
  MIL::Blob::FileWriter::WriteData(*(v5 - 1), v5, 64, 0);
  return v3;
}

unint64_t MIL::Blob::StorageWriter::Impl::WriteData<unsigned char>(uint64_t a1)
{
  NextAlignedOffset = MIL::Blob::FileWriter::GetNextAlignedOffset(*(a1 + 24));
  if ((NextAlignedOffset & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: dataOffset is expected to be 64 bits aligned.");
    goto LABEL_7;
  }

  v3 = NextAlignedOffset;
  v4 = NextAlignedOffset + 64;
  if (NextAlignedOffset != MIL::Blob::FileWriter::AppendData(*(a1 + 24)) || v4 != MIL::Blob::FileWriter::AppendData(*(a1 + 24)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: Metadata written to different offset than expected.");
LABEL_7:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *v5 = v6 + 1;
  MIL::Blob::FileWriter::WriteData(*(v5 - 1), v5, 64, 0);
  return v3;
}

unint64_t MIL::Blob::StorageWriter::Impl::WriteData<unsigned int>(uint64_t a1)
{
  NextAlignedOffset = MIL::Blob::FileWriter::GetNextAlignedOffset(*(a1 + 24));
  if ((NextAlignedOffset & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: dataOffset is expected to be 64 bits aligned.");
    goto LABEL_7;
  }

  v3 = NextAlignedOffset;
  v4 = NextAlignedOffset + 64;
  if (NextAlignedOffset != MIL::Blob::FileWriter::AppendData(*(a1 + 24)) || v4 != MIL::Blob::FileWriter::AppendData(*(a1 + 24)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: Metadata written to different offset than expected.");
LABEL_7:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *v5 = v6 + 1;
  MIL::Blob::FileWriter::WriteData(*(v5 - 1), v5, 64, 0);
  return v3;
}

unint64_t MIL::Blob::StorageWriter::Impl::WriteData<MIL::Bf16>(uint64_t a1)
{
  NextAlignedOffset = MIL::Blob::FileWriter::GetNextAlignedOffset(*(a1 + 24));
  if ((NextAlignedOffset & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: dataOffset is expected to be 64 bits aligned.");
    goto LABEL_7;
  }

  v3 = NextAlignedOffset;
  v4 = NextAlignedOffset + 64;
  if (NextAlignedOffset != MIL::Blob::FileWriter::AppendData(*(a1 + 24)) || v4 != MIL::Blob::FileWriter::AppendData(*(a1 + 24)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: Metadata written to different offset than expected.");
LABEL_7:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *v5 = v6 + 1;
  MIL::Blob::FileWriter::WriteData(*(v5 - 1), v5, 64, 0);
  return v3;
}

unint64_t MIL::Blob::StorageWriter::Impl::WriteData<MIL::Fp8E4M3FN>(uint64_t a1)
{
  NextAlignedOffset = MIL::Blob::FileWriter::GetNextAlignedOffset(*(a1 + 24));
  if ((NextAlignedOffset & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: dataOffset is expected to be 64 bits aligned.");
    goto LABEL_7;
  }

  v3 = NextAlignedOffset;
  v4 = NextAlignedOffset + 64;
  if (NextAlignedOffset != MIL::Blob::FileWriter::AppendData(*(a1 + 24)) || v4 != MIL::Blob::FileWriter::AppendData(*(a1 + 24)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: Metadata written to different offset than expected.");
LABEL_7:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *v5 = v6 + 1;
  MIL::Blob::FileWriter::WriteData(*(v5 - 1), v5, 64, 0);
  return v3;
}

unint64_t MIL::Blob::StorageWriter::Impl::WriteData<MIL::Fp8E5M2>(uint64_t a1)
{
  NextAlignedOffset = MIL::Blob::FileWriter::GetNextAlignedOffset(*(a1 + 24));
  if ((NextAlignedOffset & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: dataOffset is expected to be 64 bits aligned.");
    goto LABEL_7;
  }

  v3 = NextAlignedOffset;
  v4 = NextAlignedOffset + 64;
  if (NextAlignedOffset != MIL::Blob::FileWriter::AppendData(*(a1 + 24)) || v4 != MIL::Blob::FileWriter::AppendData(*(a1 + 24)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: Metadata written to different offset than expected.");
LABEL_7:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *v5 = v6 + 1;
  MIL::Blob::FileWriter::WriteData(*(v5 - 1), v5, 64, 0);
  return v3;
}

unint64_t MIL::Blob::StorageWriter::Impl::WriteData<MIL::Fp16>(uint64_t a1)
{
  NextAlignedOffset = MIL::Blob::FileWriter::GetNextAlignedOffset(*(a1 + 24));
  if ((NextAlignedOffset & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: dataOffset is expected to be 64 bits aligned.");
    goto LABEL_7;
  }

  v3 = NextAlignedOffset;
  v4 = NextAlignedOffset + 64;
  if (NextAlignedOffset != MIL::Blob::FileWriter::AppendData(*(a1 + 24)) || v4 != MIL::Blob::FileWriter::AppendData(*(a1 + 24)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: Metadata written to different offset than expected.");
LABEL_7:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *v5 = v6 + 1;
  MIL::Blob::FileWriter::WriteData(*(v5 - 1), v5, 64, 0);
  return v3;
}

unint64_t MIL::Blob::StorageWriter::Impl::WriteData<float>(uint64_t a1)
{
  NextAlignedOffset = MIL::Blob::FileWriter::GetNextAlignedOffset(*(a1 + 24));
  if ((NextAlignedOffset & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: dataOffset is expected to be 64 bits aligned.");
    goto LABEL_7;
  }

  v3 = NextAlignedOffset;
  v4 = NextAlignedOffset + 64;
  if (NextAlignedOffset != MIL::Blob::FileWriter::AppendData(*(a1 + 24)) || v4 != MIL::Blob::FileWriter::AppendData(*(a1 + 24)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: Metadata written to different offset than expected.");
LABEL_7:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *v5 = v6 + 1;
  MIL::Blob::FileWriter::WriteData(*(v5 - 1), v5, 64, 0);
  return v3;
}

unint64_t MIL::Blob::StorageWriter::Impl::WriteData<short>(uint64_t a1)
{
  NextAlignedOffset = MIL::Blob::FileWriter::GetNextAlignedOffset(*(a1 + 24));
  if ((NextAlignedOffset & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: dataOffset is expected to be 64 bits aligned.");
    goto LABEL_7;
  }

  v3 = NextAlignedOffset;
  v4 = NextAlignedOffset + 64;
  if (NextAlignedOffset != MIL::Blob::FileWriter::AppendData(*(a1 + 24)) || v4 != MIL::Blob::FileWriter::AppendData(*(a1 + 24)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: Metadata written to different offset than expected.");
LABEL_7:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *v5 = v6 + 1;
  MIL::Blob::FileWriter::WriteData(*(v5 - 1), v5, 64, 0);
  return v3;
}

unint64_t MIL::Blob::StorageWriter::Impl::WriteData<int>(uint64_t a1)
{
  NextAlignedOffset = MIL::Blob::FileWriter::GetNextAlignedOffset(*(a1 + 24));
  if ((NextAlignedOffset & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: dataOffset is expected to be 64 bits aligned.");
    goto LABEL_7;
  }

  v3 = NextAlignedOffset;
  v4 = NextAlignedOffset + 64;
  if (NextAlignedOffset != MIL::Blob::FileWriter::AppendData(*(a1 + 24)) || v4 != MIL::Blob::FileWriter::AppendData(*(a1 + 24)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: Metadata written to different offset than expected.");
LABEL_7:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *v5 = v6 + 1;
  MIL::Blob::FileWriter::WriteData(*(v5 - 1), v5, 64, 0);
  return v3;
}

unint64_t MIL::Blob::StorageWriter::Impl::WriteData<MIL::Int4>(uint64_t a1)
{
  NextAlignedOffset = MIL::Blob::FileWriter::GetNextAlignedOffset(*(a1 + 24));
  if ((NextAlignedOffset & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: dataOffset is expected to be 64 bits aligned.");
    goto LABEL_7;
  }

  v3 = NextAlignedOffset;
  v4 = NextAlignedOffset + 64;
  if (NextAlignedOffset != MIL::Blob::FileWriter::AppendData(*(a1 + 24)) || v4 != MIL::Blob::FileWriter::AppendData(*(a1 + 24)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: Metadata written to different offset than expected.");
LABEL_7:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *v5 = v6 + 1;
  MIL::Blob::FileWriter::WriteData(*(v5 - 1), v5, 64, 0);
  return v3;
}

unint64_t MIL::Blob::StorageWriter::Impl::WriteData<MIL::UInt6>(uint64_t a1)
{
  NextAlignedOffset = MIL::Blob::FileWriter::GetNextAlignedOffset(*(a1 + 24));
  if ((NextAlignedOffset & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: dataOffset is expected to be 64 bits aligned.");
    goto LABEL_7;
  }

  v3 = NextAlignedOffset;
  v4 = NextAlignedOffset + 64;
  if (NextAlignedOffset != MIL::Blob::FileWriter::AppendData(*(a1 + 24)) || v4 != MIL::Blob::FileWriter::AppendData(*(a1 + 24)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: Metadata written to different offset than expected.");
LABEL_7:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *v5 = v6 + 1;
  MIL::Blob::FileWriter::WriteData(*(v5 - 1), v5, 64, 0);
  return v3;
}

unint64_t MIL::Blob::StorageWriter::Impl::WriteData<MIL::UInt4>(uint64_t a1)
{
  NextAlignedOffset = MIL::Blob::FileWriter::GetNextAlignedOffset(*(a1 + 24));
  if ((NextAlignedOffset & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: dataOffset is expected to be 64 bits aligned.");
    goto LABEL_7;
  }

  v3 = NextAlignedOffset;
  v4 = NextAlignedOffset + 64;
  if (NextAlignedOffset != MIL::Blob::FileWriter::AppendData(*(a1 + 24)) || v4 != MIL::Blob::FileWriter::AppendData(*(a1 + 24)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: Metadata written to different offset than expected.");
LABEL_7:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *v5 = v6 + 1;
  MIL::Blob::FileWriter::WriteData(*(v5 - 1), v5, 64, 0);
  return v3;
}

unint64_t MIL::Blob::StorageWriter::Impl::WriteData<MIL::UInt3>(uint64_t a1)
{
  NextAlignedOffset = MIL::Blob::FileWriter::GetNextAlignedOffset(*(a1 + 24));
  if ((NextAlignedOffset & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: dataOffset is expected to be 64 bits aligned.");
    goto LABEL_7;
  }

  v3 = NextAlignedOffset;
  v4 = NextAlignedOffset + 64;
  if (NextAlignedOffset != MIL::Blob::FileWriter::AppendData(*(a1 + 24)) || v4 != MIL::Blob::FileWriter::AppendData(*(a1 + 24)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: Metadata written to different offset than expected.");
LABEL_7:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *v5 = v6 + 1;
  MIL::Blob::FileWriter::WriteData(*(v5 - 1), v5, 64, 0);
  return v3;
}

unint64_t MIL::Blob::StorageWriter::Impl::WriteData<MIL::UInt2>(uint64_t a1)
{
  NextAlignedOffset = MIL::Blob::FileWriter::GetNextAlignedOffset(*(a1 + 24));
  if ((NextAlignedOffset & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: dataOffset is expected to be 64 bits aligned.");
    goto LABEL_7;
  }

  v3 = NextAlignedOffset;
  v4 = NextAlignedOffset + 64;
  if (NextAlignedOffset != MIL::Blob::FileWriter::AppendData(*(a1 + 24)) || v4 != MIL::Blob::FileWriter::AppendData(*(a1 + 24)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: Metadata written to different offset than expected.");
LABEL_7:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *v5 = v6 + 1;
  MIL::Blob::FileWriter::WriteData(*(v5 - 1), v5, 64, 0);
  return v3;
}

unint64_t MIL::Blob::StorageWriter::Impl::WriteData<MIL::UInt1>(uint64_t a1)
{
  NextAlignedOffset = MIL::Blob::FileWriter::GetNextAlignedOffset(*(a1 + 24));
  if ((NextAlignedOffset & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: dataOffset is expected to be 64 bits aligned.");
    goto LABEL_7;
  }

  v3 = NextAlignedOffset;
  v4 = NextAlignedOffset + 64;
  if (NextAlignedOffset != MIL::Blob::FileWriter::AppendData(*(a1 + 24)) || v4 != MIL::Blob::FileWriter::AppendData(*(a1 + 24)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: Metadata written to different offset than expected.");
LABEL_7:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *v5 = v6 + 1;
  MIL::Blob::FileWriter::WriteData(*(v5 - 1), v5, 64, 0);
  return v3;
}

unint64_t MIL::Blob::StorageWriter::Impl::WriteData<unsigned short>(uint64_t a1)
{
  NextAlignedOffset = MIL::Blob::FileWriter::GetNextAlignedOffset(*(a1 + 24));
  if ((NextAlignedOffset & 0x3F) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: dataOffset is expected to be 64 bits aligned.");
    goto LABEL_7;
  }

  v3 = NextAlignedOffset;
  v4 = NextAlignedOffset + 64;
  if (NextAlignedOffset != MIL::Blob::FileWriter::AppendData(*(a1 + 24)) || v4 != MIL::Blob::FileWriter::AppendData(*(a1 + 24)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[MIL StorageWriter]: Metadata written to different offset than expected.");
LABEL_7:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *v5 = v6 + 1;
  MIL::Blob::FileWriter::WriteData(*(v5 - 1), v5, 64, 0);
  return v3;
}

void MIL::Blob::StorageWriter::GetFilePath(MIL::Blob::StorageWriter *this@<X0>, std::string *a2@<X8>)
{
  v2 = *this;
  if (*(*this + 23) < 0)
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

void MIL::Blob::StorageWriter::Impl::~Impl(MIL::Blob::FileWriter **this)
{
  std::unique_ptr<MIL::Blob::FileWriter>::~unique_ptr[abi:ne200100](this + 3);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

MIL::Blob::FileWriter **std::unique_ptr<MIL::Blob::FileWriter>::~unique_ptr[abi:ne200100](MIL::Blob::FileWriter **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::Blob::FileWriter::~FileWriter(v2);
    MEMORY[0x21CEAFEA0]();
  }

  return a1;
}

void MIL::Blob::StorageWriter::Impl::Impl(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v2 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v2;
  }

  operator new();
}

void sub_21800C114(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::unique_ptr<MIL::Blob::FileWriter>::~unique_ptr[abi:ne200100]((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void MIL::Builder::BlockBuilder::~BlockBuilder(MIL::Builder::BlockBuilder *this)
{
  v2 = *(this + 1);
  *this = &unk_2829E4980;
  *(this + 1) = 0;
  if (v2)
  {
    MIL::Builder::BlockBuilder::BlockBuilderImpl::~BlockBuilderImpl(v2);
    MEMORY[0x21CEAFEA0]();
  }
}

{
  MIL::Builder::BlockBuilder::~BlockBuilder(this);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::Builder::BlockBuilder::BlockBuilder(void *a1)
{
  *a1 = &unk_2829E4980;
  std::make_unique[abi:ne200100]<MIL::Builder::BlockBuilder::BlockBuilderImpl,std::shared_ptr<MIL::MILContext> &,std::string &,MIL::IRScope const*&,0>();
}

{
  *a1 = &unk_2829E4980;
  std::make_unique[abi:ne200100]<MIL::Builder::BlockBuilder::BlockBuilderImpl,std::shared_ptr<MIL::MILContext> &,std::string &,MIL::IRScope const*&,0>();
}

{
  *a1 = &unk_2829E4980;
  std::make_unique[abi:ne200100]<MIL::Builder::BlockBuilder::BlockBuilderImpl,std::shared_ptr<MIL::MILContext> &,MIL::IRBlock &,std::string &,MIL::IRScope const*&,MIL::Builder::BlockBuilder*,0>();
}

{
  *a1 = &unk_2829E4980;
  std::make_unique[abi:ne200100]<MIL::Builder::BlockBuilder::BlockBuilderImpl,std::shared_ptr<MIL::MILContext> &,MIL::IRBlock &,std::string &,MIL::IRScope const*&,MIL::Builder::BlockBuilder*,0>();
}

void sub_21800C354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_21800C550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

const void **MIL::Builder::BlockBuilder::GetOperation@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((*(a1 + 8) + 72), a2);
  if (!result)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = result[6];
  *a3 = result[5];
  a3[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

const void **MIL::Builder::BlockBuilder::TryGetOperation@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((*(a1 + 8) + 72), a2);
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

const void **MIL::Builder::BlockBuilder::BlockBuilderImpl::GetVariable(uint64_t a1, uint64_t a2)
{
  result = MIL::Builder::BlockBuilder::BlockBuilderImpl::TryGetVariable(a1, a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v4 = std::string::append(&v6, ".");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v7.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v7.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v7);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_21800C760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

const void **MIL::Builder::BlockBuilder::BlockBuilderImpl::TryGetVariable(uint64_t a1, uint64_t a2)
{
  if ((*(**(a1 + 40) + 24))(*(a1 + 40), a2, 1))
  {
    goto LABEL_2;
  }

  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 112), a2);
  if (!result)
  {
    return result;
  }

  v8 = a2;
  if (!std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 112), a2)[8])
  {
    return 0;
  }

LABEL_2:
  v8 = 0;
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>>>::__emplace_unique_key_args<std::string,std::string const&,decltype(nullptr)>((a1 + 296), a2);
  if (v5)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    MIL::Builder::Variable::Make();
  }

  return v4[5];
}

void sub_21800C948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::BlockBuilder::AddOperation(uint64_t a1, const void **a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a3 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::BlockBuilder::BlockBuilderImpl::AddOperation(v3, a2);
}

void sub_21800C9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::AddOperation(uint64_t *a1, const void **a2)
{
  MIL::Builder::BlockBuilder::BlockBuilderImpl::GetOperator(a1, a2, &v3);
  v2[0] = v3;
  v2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::Make(v2);
}

void sub_21800CAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  v18 = *(v16 + 8);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::BlockBuilder::AddOperation(MIL::Builder::BlockBuilder *a1, __int128 *a2, uint64_t *a3)
{
  v4 = *(a1 + 1);
  v8 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = a3[1];
  v6 = *a3;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Builder::BlockBuilder::BlockBuilderImpl::AddOperation(v4, &v8, &v6, a1);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
  }
}

void sub_21800CB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

uint64_t MIL::Builder::BlockBuilder::BlockBuilderImpl::AddOperation(void **a1, MIL::Builder::OperationBuilder::OperationBuilderImpl ***a2, uint64_t *a3, MIL::Builder::BlockBuilder *a4)
{
  MIL::Builder::BlockBuilder::BlockBuilderImpl::CheckAddedOperation(a1, *a2);
  if (*a3)
  {
    v8 = a3[1];
    v11 = *a3;
    v12 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = MIL::Builder::BlockBuilder::BlockBuilderImpl::OperationIterator(a1, &v11);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::insert(a1 + 6, v9, a2);
  }

  else
  {
    std::vector<std::shared_ptr<MIL::IROperation>>::push_back[abi:ne200100](a1 + 6, a2);
  }

  return MIL::Builder::BlockBuilder::BlockBuilderImpl::OnOperationAdded(a1, a2, a4);
}

void sub_21800CC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Builder::BlockBuilder::BlockBuilderImpl::InsertOperations(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, MIL::Builder::BlockBuilder *a5)
{
  v5 = a1 + 6;
  if (a4 > (a1[7] - a1[6]) >> 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "Insertion position out of range");
    __cxa_throw(exception, off_278235F78, MEMORY[0x277D825F8]);
  }

  v9 = a2;
  MIL::Builder::BlockBuilder::BlockBuilderImpl::CheckInsertedOperations(a1, a2, a3);
  result = std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::__insert_with_size[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder> const*,std::shared_ptr<MIL::Builder::OperationBuilder> const*>(v5, (a1[6] + 16 * a4), v9, &v9[2 * a3], (16 * a3) >> 4);
  if (a3)
  {
    v12 = 16 * a3;
    do
    {
      result = MIL::Builder::BlockBuilder::BlockBuilderImpl::OnOperationAdded(a1, v9, a5);
      v9 += 2;
      v12 -= 16;
    }

    while (v12);
  }

  return result;
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::InsertOperations(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, MIL::Builder::BlockBuilder *a6)
{
  if (a3 != a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Operation and position spans must be of same size");
LABEL_23:
    v27 = off_278235F80;
    v28 = MEMORY[0x277D82610];
    goto LABEL_24;
  }

  v9 = a2;
  if (a3 >= 2)
  {
    v11 = a3 - 1;
    v12 = (a4 + 8);
    while (*v12 >= *(v12 - 1))
    {
      ++v12;
      if (!--v11)
      {
        goto LABEL_8;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Insertion positions are not sorted");
    goto LABEL_23;
  }

  if (a3)
  {
LABEL_8:
    if (*(a4 + 8 * a3 - 8) > ((a1[7] - a1[6]) >> 4))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::out_of_range::out_of_range[abi:ne200100](exception, "Insertion position out of range");
      v27 = off_278235F78;
      v28 = MEMORY[0x277D825F8];
LABEL_24:
      __cxa_throw(exception, v27, v28);
    }

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  MIL::Builder::BlockBuilder::BlockBuilderImpl::CheckInsertedOperations(a1, a2, a3);
  std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::resize((a1 + 6), a3 + ((a1[7] - a1[6]) >> 4));
  if ((v13 & 1) == 0)
  {
    v29 = v13;
    v30 = a6;
    v14 = a1[7];
    v15 = (v14 - 16 * a3);
    v16 = (v9 + 16 * a3 - 8);
    v17 = 8 * a3;
    v18 = a4 - 8;
    do
    {
      v19 = (a1[6] + 16 * *(v18 + v17));
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder> *,std::shared_ptr<MIL::Builder::OperationBuilder> *,std::shared_ptr<MIL::Builder::OperationBuilder> *>(&v31, v19, v15, v14);
      v21 = v20;
      v23 = *(v16 - 1);
      v22 = *v16;
      if (*v16)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v24 = *(v20 - 8);
      *(v20 - 16) = v23;
      *(v20 - 8) = v22;
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      v14 = v21 - 16;
      v16 -= 2;
      v15 = v19;
      v17 -= 8;
    }

    while (v17);
    if ((v29 & 1) == 0)
    {
      v25 = 16 * a3;
      do
      {
        MIL::Builder::BlockBuilder::BlockBuilderImpl::OnOperationAdded(a1, v9, v30);
        v9 += 16;
        v25 -= 16;
      }

      while (v25);
    }
  }
}

void MIL::Builder::BlockBuilder::AddConst(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *a2;
  v7 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = *a3;
  *__p = v3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v4[0] = 0;
  v4[1] = 0;
  MIL::Builder::BlockBuilder::AddConst(a1, __p, &v5, v4);
}

void sub_21800D004(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  MIL::Builder::BlockBuilder::AddConst((v5 | 8), va);
  _Unwind_Resume(a1);
}

void MIL::Builder::BlockBuilder::AddConst(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a1 + 8);
  *a3 = 0;
  a3[1] = 0;
  *a4 = 0;
  a4[1] = 0;
  MIL::Builder::BlockBuilder::BlockBuilderImpl::AddConst(v4);
}

void sub_21800D094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void MIL::Builder::BlockBuilder::BlockBuilderImpl::AddConst(uint64_t *a1)
{
  v5[5] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "const");
  Operator = MIL::Builder::BlockBuilder::BlockBuilderImpl::GetOperator(a1, __p, v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  MIL::UnknownLocation::Make(Operator);
}

void sub_21800D508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(v36 - 184, *(v36 - 176));
  v38 = *(v36 - 152);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  v39 = *(v36 - 128);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  v40 = *(v36 - 144);
  *(v36 - 144) = 0;
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  v41 = *(v36 - 104);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::BlockBuilder::GetOperations@<X0>(MIL::Builder::BlockBuilder *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder>*,std::shared_ptr<MIL::Builder::OperationBuilder>*>(a2, *(v2 + 48), *(v2 + 56), (*(v2 + 56) - *(v2 + 48)) >> 4);
}

uint64_t MIL::Builder::BlockBuilder::BlockBuilderImpl::GetOperation@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *(this + 48);
  if (a2 >= (*(this + 56) - v3) >> 4)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v4 = *(v3 + 16 * a2);
  *a3 = v4;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void MIL::Builder::BlockBuilder::Make()
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

void sub_21800D804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  MEMORY[0x21CEAFEA0](v17, v16);
  _Unwind_Resume(a1);
}

void sub_21800D930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_21800DA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x21CEAFEA0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_21800DB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  MEMORY[0x21CEAFEA0](v17, v16);
  _Unwind_Resume(a1);
}

const void **MIL::Builder::BlockBuilder::BlockBuilderImpl::GetOperationsByInput(uint64_t a1, const void **a2)
{
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 112), a2))
  {
    return (a1 + 256);
  }

  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 112), a2);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v4 + 5;
}

uint64_t MIL::Builder::BlockBuilder::BlockBuilderImpl::GetStateOperationsByInput@<X0>(MIL::Builder::BlockBuilder::BlockBuilderImpl *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  MIL::Builder::BlockBuilder::BlockBuilderImpl::CreateStateDependencyMap(a1, v12);
  if (!std::operator==[abi:ne200100]<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>(v12, a1 + 48))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Program has been modified affecting the sequential ordering of state operations. Use UpdateStateDependencyMap() if the modification was intentional.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v10 = 1;
  MIL::Builder::BlockBuilder::BlockBuilderImpl::ExtractStateOpsHelper(a1, &__p, v11);
  v13 = a2;
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v11, a2);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder>*,std::shared_ptr<MIL::Builder::OperationBuilder>*>(a3, v6[5], v6[6], (v6[6] - v6[5]) >> 4);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(v11);
  if (v10 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::~__hash_table(v12);
}

const void **MIL::Builder::BlockBuilder::GetDataDependenciesForConsumerParam(uint64_t a1, uint64_t a2, const void **a3)
{
  v5 = MIL::Builder::BlockBuilder::BlockBuilderImpl::GetOrBuildDataDependencyGraph(*(a1 + 8));

  return MIL::Builder::BlockBuilder::DataDependencyGraph::GetDataDependenciesForConsumerParam(v5, a2, a3);
}

void *MIL::Builder::BlockBuilder::GetDataDependenciesByVariableName(uint64_t a1, const void **a2)
{
  v3 = MIL::Builder::BlockBuilder::BlockBuilderImpl::GetOrBuildDataDependencyGraph(*(a1 + 8));

  return MIL::Builder::BlockBuilder::DataDependencyGraph::GetDataDependenciesByVariableName(v3, a2);
}

void MIL::Builder::BlockBuilder::ReplaceUsesOfInputVariable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 8);
  *__p = *a3;
  v9 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v5 = a4[1];
  v6 = *a4;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Builder::BlockBuilder::BlockBuilderImpl::ReplaceUsesOfInputVariable(v4, a2, __p, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_21800DEA8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  MIL::Builder::BlockBuilder::ReplaceUsesOfInputVariable(va);
  _Unwind_Resume(a1);
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::ReplaceUsesOfInputVariable(void *a1, const void **a2, uint64_t a3, uint64_t *a4)
{
  std::unique_ptr<MIL::Builder::BlockBuilder::DataDependencyGraph>::reset[abi:ne200100](a1 + 47, 0);
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a1 + 14, a2);
  if (v8)
  {
    std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>::unordered_set(v29, (v8 + 5));
    v9 = v30;
    if (v30)
    {
      while (1)
      {
        v10 = *a4;
        if (!*a4)
        {
          break;
        }

        v11 = v9[3];
        v27 = v9[2];
        v28 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = *a4;
        }

        v12 = a4[1];
        v25 = v10;
        v26 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = MIL::Builder::BlockBuilder::BlockBuilderImpl::OperationFollowsOperation(a1, &v27, &v25);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          if (v13)
          {
            break;
          }
        }

        else if (v13)
        {
          break;
        }

LABEL_19:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_20;
        }
      }

      v14 = v9[2];
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *a3, *(a3 + 8));
      }

      else
      {
        v24 = *a3;
      }

      MIL::Builder::OperationBuilder::RenameArgument(v14, a2, &v24);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      goto LABEL_19;
    }

LABEL_20:
    std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(v29);
  }

  v15 = a1[6];
  v16 = a1[7];
  if (v15 == v16)
  {
    return;
  }

  do
  {
    BlocksRef = MIL::Builder::OperationBuilder::GetBlocksRef(*v15);
    v18 = *BlocksRef;
    v19 = *(BlocksRef + 8);
    while (v18 != v19)
    {
      v21 = *v18;
      v20 = v18[1];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v23, *a3, *(a3 + 8));
      }

      else
      {
        v23 = *a3;
      }

      v22[0] = 0;
      v22[1] = 0;
      MIL::Builder::BlockBuilder::ReplaceUsesOfInputVariable(v21, a2, &v23, v22);
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (!v20)
        {
          goto LABEL_32;
        }

LABEL_31:
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        goto LABEL_32;
      }

      operator delete(v23.__r_.__value_.__l.__data_);
      if (v20)
      {
        goto LABEL_31;
      }

LABEL_32:
      v18 += 2;
    }

    v15 += 2;
  }

  while (v15 != v16);
}

void MIL::Builder::BlockBuilder::RemoveOperation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Builder::BlockBuilder::BlockBuilderImpl::RemoveOperation(v2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_21800E194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::RemoveOperation(uint64_t a1, MIL::Builder::OperationBuilder::OperationBuilderImpl ***a2)
{
  if (*a2)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = a1 + 48;
    v8 = v5;
    if (v5 != v6)
    {
      v8 = v5;
      while (*v8 != *a2)
      {
        v8 += 2;
        if (v8 == v6)
        {
          v8 = v6;
          break;
        }
      }
    }

    v9 = std::remove[abi:ne200100]<std::__wrap_iter<std::shared_ptr<MIL::Builder::OperationBuilder> *>,std::shared_ptr<MIL::Builder::OperationBuilder>>(v5, v6, a2);
    std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::erase(v7, v9, *(a1 + 56));
    if (v8 != v6)
    {
      v10 = a2[1];
      v11 = *a2;
      v12 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MIL::Builder::BlockBuilder::BlockBuilderImpl::OnOperationRemoved(a1, &v11, 0);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }
  }
}

void sub_21800E27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::RemoveOperations(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  if (!a3)
  {
    goto LABEL_15;
  }

  v7 = 0;
  v8 = 8 * a3;
  v9 = 1;
  v10 = a2;
  do
  {
    v11 = *v10;
    if (*v10 >= (*(a1 + 56) - *(a1 + 48)) >> 4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::out_of_range::out_of_range[abi:ne200100](exception, "Operation index out of range");
      v20 = off_278235F78;
      v21 = MEMORY[0x277D825F8];
LABEL_18:
      __cxa_throw(exception, v20, v21);
    }

    if (!(v9 & 1 | (v11 > v7)))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "Indices are not strictly increasing");
      v20 = off_278235F80;
      v21 = MEMORY[0x277D82610];
      goto LABEL_18;
    }

    v9 = 0;
    ++v10;
    v7 = v11;
    v8 -= 8;
  }

  while (v8);
  v12 = 0;
  v13 = a2 + 1;
  v14 = a3;
  do
  {
    if (--v14)
    {
      v16 = 16 * *v13;
      v15 = *(a1 + 48);
    }

    else
    {
      v15 = *(a1 + 48);
      v16 = *(a1 + 56) - v15;
    }

    v17 = *(v13 - 1);
    v18 = *(v15 + 16 * v17);
    v22 = v18;
    if (*(&v18 + 1))
    {
      atomic_fetch_add_explicit((*(&v18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    MIL::Builder::BlockBuilder::BlockBuilderImpl::OnOperationRemoved(a1, &v22, a4);
    if (*(&v22 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
    }

    ++v13;
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder> *,std::shared_ptr<MIL::Builder::OperationBuilder> *,std::shared_ptr<MIL::Builder::OperationBuilder> *>(&v23, (*(a1 + 48) + 16 * v17 + 16), (v16 + *(a1 + 48)), *(a1 + 48) + 16 * (v12 + v17));
    --v12;
  }

  while (v14);
LABEL_15:
  std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::resize(a1 + 48, ((*(a1 + 56) - *(a1 + 48)) >> 4) - a3);
}

void MIL::Builder::BlockBuilder::AddInput(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *__p = *a2;
  v4 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  MIL::Builder::BlockBuilder::BlockBuilderImpl::AddInput(v2, __p);
}

void sub_21800E4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::AddInput(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 40) + 80))(*(a1 + 40));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  MIL::IRNamedValueType::Make();
}

void sub_21800E6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void **a16)
{
  std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::Builder::BlockBuilder::UpdateOpInput(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  *v10 = *a2;
  v11 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v5 = a3[1];
  v8 = *a3;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *__p = *a4;
  v7 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  MIL::Builder::BlockBuilder::BlockBuilderImpl::UpdateOpInput(v4, v10, &v8, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_21800E7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MIL::Builder::BlockBuilder::AddConst((v18 + 8), &a18);
  _Unwind_Resume(a1);
}

uint64_t *MIL::Builder::BlockBuilder::BlockBuilderImpl::UpdateOpInput(uint64_t a1, const void **a2, void *a3, uint64_t a4)
{
  if (!*a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot update input of a null OperationBuilder");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::unique_ptr<MIL::Builder::BlockBuilder::DataDependencyGraph>::reset[abi:ne200100]((a1 + 376), 0);
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 112), a2);
  result = std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::shared_ptr<MIL::Builder::OperationBuilder> const&>(v8 + 5, a3);
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10)
  {
    v11 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 112), a4);
    return std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__erase_unique<std::shared_ptr<MIL::Builder::OperationBuilder>>(v11 + 5, a3);
  }

  return result;
}

void MIL::Builder::BlockBuilder::RemoveOpInput(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  *__p = *a2;
  v8 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Builder::BlockBuilder::BlockBuilderImpl::RemoveOpInput(v3, __p, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_21800E988(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  MIL::Builder::BlockBuilder::ReplaceUsesOfInputVariable(va);
  _Unwind_Resume(a1);
}

uint64_t *MIL::Builder::BlockBuilder::BlockBuilderImpl::RemoveOpInput(uint64_t a1, const void **a2, void *a3)
{
  if (!*a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot update input of a null OperationBuilder");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::unique_ptr<MIL::Builder::BlockBuilder::DataDependencyGraph>::reset[abi:ne200100]((a1 + 376), 0);
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 112), a2);
  if (result)
  {
    v7 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 112), a2);
    return std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__erase_unique<std::shared_ptr<MIL::Builder::OperationBuilder>>(v7 + 5, a3);
  }

  return result;
}

void MIL::Builder::BlockBuilder::UpdateOpOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  *__p = *a2;
  v9 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v5 = *(a4 + 8);
  v6 = *a4;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Builder::BlockBuilder::BlockBuilderImpl::UpdateOpOutput(v4, __p, a3, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_21800EAFC(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  MIL::Builder::BlockBuilder::ReplaceUsesOfInputVariable(va);
  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::BlockBuilder::BlockBuilderImpl::UpdateOpOutput(uint64_t a1, const void **a2, uint64_t a3, const void **a4)
{
  if (!*a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot update output of a null OperationBuilder");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 72), a2))
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v15 = std::string::append(&v17, " is already defined in this block.");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v14, &v18);
    __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::unique_ptr<MIL::Builder::BlockBuilder::DataDependencyGraph>::reset[abi:ne200100]((a1 + 376), 0);
  v18.__r_.__value_.__r.__words[0] = a2;
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 72), a2);
  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = v8[6];
  v8[5] = v10;
  v8[6] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return (*(**(a1 + 40) + 80))(*(a1 + 40), a2, a3, 0);
}

void sub_21800ECAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void MIL::Builder::BlockBuilder::RenameOpOutput(uint64_t a1, uint64_t a2, std::string::size_type a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = *(a4 + 8);
  v6 = *a4;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Builder::BlockBuilder::BlockBuilderImpl::RenameOpOutput(v4, a2, a3, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_21800ED64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

const void **MIL::Builder::BlockBuilder::BlockBuilderImpl::RenameOpOutput(void *a1, uint64_t a2, std::string::size_type a3, const void **a4)
{
  if (!*a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot rename output of a null OperationBuilder");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a1 + 9, a2))
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v28 = std::string::append(&v36, " doesn't exist in this block.");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v27, &v37);
    __cxa_throw(v27, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a1 + 9, a3))
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v31 = std::string::append(&v36, " is already defined in this block.");
    v32 = *&v31->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v30, &v37);
    __cxa_throw(v30, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::unique_ptr<MIL::Builder::BlockBuilder::DataDependencyGraph>::reset[abi:ne200100](a1 + 47, 0);
  v37.__r_.__value_.__r.__words[0] = a3;
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 9, a3);
  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = v8[6];
  v8[5] = v10;
  v8[6] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = a1[5];
  v13 = (*(*v12 + 24))(v12, a2, 1);
  (*(*v12 + 80))(v12, a3, v13, 0);
  v14 = a1[5];
  MIL::Builder::BlockBuilder::BlockBuilderImpl::GetValue(a1, a2, &v37);
  (*(*v14 + 88))(v14, a3, &v37, 0);
  if (v37.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37.__r_.__value_.__l.__size_);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, *a3, *(a3 + 8));
  }

  else
  {
    v35 = *a3;
  }

  v33 = 0;
  v34 = 0;
  MIL::Builder::BlockBuilder::BlockBuilderImpl::ReplaceUsesOfInputVariable(a1, a2, &v35, &v33);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v16 = a1[22];
  v15 = a1[23];
  if (v15 != v16)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *(v16 + v17 + 23);
      if (v19 >= 0)
      {
        v20 = *(v16 + v17 + 23);
      }

      else
      {
        v20 = *(v16 + v17 + 8);
      }

      v21 = *(a2 + 23);
      v22 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(a2 + 8);
      }

      if (v20 == v21)
      {
        if (v19 >= 0)
        {
          v23 = (v16 + v17);
        }

        else
        {
          v23 = *(v16 + v17);
        }

        if (v22 >= 0)
        {
          v24 = a2;
        }

        else
        {
          v24 = *a2;
        }

        if (!memcmp(v23, v24, v20))
        {
          std::string::operator=((v16 + v17), a3);
          v16 = a1[22];
          v15 = a1[23];
        }
      }

      ++v18;
      v17 += 24;
    }

    while (v18 < 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3));
  }

  (*(*a1[5] + 112))(a1[5], a2);
  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(a1 + 9, a2);
}

void sub_21800F16C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
    if ((v25 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v26);
  goto LABEL_8;
}

void sub_21800F228(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x21800F220);
}

void sub_21800F24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  JUMPOUT(0x21800F220);
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::GetValue(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  (*(**(a1 + 40) + 56))(&v11);
  if (v11)
  {
    v6 = v12;
    *a3 = v11;
    a3[1] = v6;
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v7 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 72), a2);
    v9 = v7[5];
    v8 = v7[6];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      Operator = MIL::Builder::OperationBuilder::GetOperator(v9);
      if ((*(*Operator + 104))(Operator))
      {
        MIL::Builder::OperationBuilder::GetConstants(v9);
      }
    }

    *a3 = 0;
    a3[1] = 0;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_21800F4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  a9 = &a12;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::CreateBlock(MIL::Builder::BlockBuilder::BlockBuilderImpl *this)
{
  MIL::Builder::BlockBuilder::BlockBuilderImpl::CreateStateDependencyMap(this, v11);
  if (std::operator==[abi:ne200100]<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>(v11, this + 48))
  {
    memset(v10, 0, sizeof(v10));
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType>*,std::shared_ptr<MIL::IRNamedValueType>*>(v10, *(this + 19), *(this + 20), (*(this + 20) - *(this + 19)) >> 4);
    memset(v9, 0, sizeof(v9));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v9, *(this + 22), *(this + 23), 0xAAAAAAAAAAAAAAABLL * ((*(this + 23) - *(this + 22)) >> 3));
    std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v8, this + 200);
    memset(__src, 0, sizeof(__src));
    std::vector<std::shared_ptr<MIL::IROperation>>::reserve(__src, (*(this + 7) - *(this + 6)) >> 4);
    v2 = *(this + 6);
    if (v2 != *(this + 7))
    {
      v3 = *v2;
      v4 = *(v2 + 8);
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      }

      MIL::Builder::OperationBuilder::CreateOperation(v3);
    }

    v5 = *(this + 31);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    MIL::IRBlock::Make();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "State Operation dependencies are violated after program modification. Use UpdateStateDependencyMap() if the modification was intentional.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_21800F860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  __cxa_free_exception(v27);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::~__hash_table(&a27);
  _Unwind_Resume(a1);
}

void MIL::Builder::BlockBuilder::TryGetConstExprValue()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "TryGetConstExprValue has been deprecated.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t MIL::Builder::BlockBuilder::BlockBuilderImpl::UpdateStateDependencyMap(MIL::Builder::BlockBuilder::BlockBuilderImpl *this)
{
  MIL::Builder::BlockBuilder::BlockBuilderImpl::CreateStateDependencyMap(this, v3);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::__move_assign(this + 384, v3);
  return std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::~__hash_table(v3);
}

void MIL::Builder::BlockBuilder::UpdateStateDependencyMapForState(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  MIL::Builder::BlockBuilder::BlockBuilderImpl::UpdateStateDependencyMapForState(v2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_21800FA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Builder::BlockBuilder::BlockBuilderImpl::UpdateStateDependencyMapForState(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *a2, *(a2 + 8));
  }

  else
  {
    v8 = *a2;
  }

  v9 = 1;
  MIL::Builder::BlockBuilder::BlockBuilderImpl::ExtractStateOpsHelper(a1, &v8, v10);
  if (v9 == 1 && SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (v10[3])
  {
    v11 = a2;
    v4 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v10, a2);
    v11 = a2;
    v5 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 384), a2);
    std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__move_assign((v5 + 5), v7);
    std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::~__hash_table(v7);
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(v10);
}

void sub_21800FBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::~__hash_table(&a10);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(v21 - 72);
  _Unwind_Resume(a1);
}

void *MIL::Builder::BlockBuilder::AddOutput(MIL::Builder::BlockBuilder *this, MIL::Builder::Variable::VariableImpl **a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot set an output to nullptr.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *(this + 1);
  Name = MIL::Builder::Variable::GetName(a2);

  return MIL::Builder::BlockBuilder::BlockBuilderImpl::AddOutput(v2, Name);
}

void *MIL::Builder::BlockBuilder::BlockBuilderImpl::AddOutput(uint64_t a1, const void **a2)
{
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 72), a2) && !(*(**(a1 + 40) + 24))(*(a1 + 40), a2, 1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v6 = a2;
    v7 = exception;
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" is neither a function input nor is produced by any OperationBuilder in this block.", v6, &v8.__r_.__value_.__l.__data_);
    std::runtime_error::runtime_error(v7, &v8);
    __cxa_throw(v7, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::vector<std::string>::push_back[abi:ne200100](a1 + 176, a2);
  result = *(a1 + 376);
  if (result)
  {

    MIL::Builder::BlockBuilder::DataDependencyGraph::AddBlockOutput(result, a2);
  }

  return result;
}

void sub_21800FD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t MIL::Builder::BlockBuilder::GetOutputNames@<X0>(MIL::Builder::BlockBuilder *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *(v2 + 176), *(v2 + 184), 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 184) - *(v2 + 176)) >> 3));
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::GetInputNames(MIL::Builder::BlockBuilder::BlockBuilderImpl *this@<X0>, std::vector<std::string> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  std::vector<std::string>::reserve(a2, (*(this + 20) - *(this + 19)) >> 4);
  v5 = *(this + 19);
  v4 = *(this + 20);
  while (v5 != v4)
  {
    Name = MIL::IRNamedValueType::GetName(*v5);
    std::vector<std::string>::push_back[abi:ne200100](a2, Name);
    v5 += 2;
  }
}

void sub_21800FE74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::GetOutputs(MIL::Builder::BlockBuilder::BlockBuilderImpl *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::string const*>::reserve(a2, 0xAAAAAAAAAAAAAAABLL * ((*(this + 23) - *(this + 22)) >> 3));
  v5 = *(this + 22);
  for (i = *(this + 23); v5 != i; v5 += 24)
  {
    Variable = MIL::Builder::BlockBuilder::BlockBuilderImpl::GetVariable(this, v5);
    v9 = a2[1];
    v8 = a2[2];
    if (v9 >= v8)
    {
      v11 = (v9 - *a2) >> 3;
      if ((v11 + 1) >> 61)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v12 = v8 - *a2;
      v13 = v12 >> 2;
      if (v12 >> 2 <= (v11 + 1))
      {
        v13 = v11 + 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a2, v14);
      }

      v15 = (8 * v11);
      *v15 = Variable;
      v10 = 8 * v11 + 8;
      v16 = a2[1] - *a2;
      v17 = v15 - v16;
      memcpy(v15 - v16, *a2, v16);
      v18 = *a2;
      *a2 = v17;
      a2[1] = v10;
      a2[2] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v9 = Variable;
      v10 = (v9 + 1);
    }

    a2[1] = v10;
  }
}

void sub_21800FFDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::BlockBuilder::SetLocation(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  MIL::Builder::BlockBuilder::BlockBuilderImpl::SetLocation(v2, &v3);
  if (*(&v3 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v3 + 1));
  }
}

void sub_218010060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::SetLocation(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot set an empty location.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 248);
  *(a1 + 240) = v2;
  *(a1 + 248) = v3;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t MIL::Builder::BlockBuilder::GetContext@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 8);
  v4 = *v2;
  v3 = v2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void MIL::Builder::BlockBuilder::SetAttribute(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v7 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = *a3;
  *__p = v4;
  *a3 = 0;
  *(a3 + 8) = 0;
  MIL::Builder::BlockBuilder::BlockBuilderImpl::SetAttribute(v3, __p, &v5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2180101C4(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  MIL::Builder::BlockBuilder::ReplaceUsesOfInputVariable(va);
  _Unwind_Resume(a1);
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::SetAttribute(uint64_t a1, const void **a2, __int128 *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 200), a2);
  v5 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v6 = v4[6];
  *(v4 + 5) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

const void **MIL::Builder::BlockBuilder::TryGetAttribute@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((*(a1 + 8) + 200), a2);
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

std::vector<std::string>::iterator MIL::Builder::BlockBuilder::RemoveOutput(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 176);
  v5 = *(v3 + 184);
  v6 = (v3 + 176);
  v7.__i_ = std::remove[abi:ne200100]<std::__wrap_iter<std::string *>,std::string>(v4, v5, a2);
  v8.__i_ = v6->__end_;

  return std::vector<std::string>::erase(v6, v7, v8);
}

MIL::Builder::Variable::VariableImpl *MIL::Builder::BlockBuilder::RemoveOutput(MIL::Builder::BlockBuilder *this, MIL::Builder::Variable::VariableImpl **a2)
{
  result = MIL::Builder::Variable::TryGetName(a2);
  if (result)
  {
    v4 = result;
    v5 = *(this + 1);
    v6 = *(v5 + 176);
    v7 = *(v5 + 184);
    v8 = (v5 + 176);
    v9.__i_ = std::remove[abi:ne200100]<std::__wrap_iter<std::string *>,std::string>(v6, v7, v4);
    v10.__i_ = v8->__end_;

    return std::vector<std::string>::erase(v8, v9, v10).__i_;
  }

  return result;
}

const void **MIL::Builder::BlockBuilder::BlockBuilderImpl::ReplaceInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MIL::Builder::BlockBuilder::BlockBuilderImpl::GetVariable(a1, a2);
  (*(**(a1 + 40) + 80))(*(a1 + 40), a3, a4, 1);
  v8 = *(a1 + 152);
  if (*(a1 + 160) != v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      Name = MIL::IRNamedValueType::GetName(*(v8 + v9));
      v12 = *(Name + 23);
      if (v12 >= 0)
      {
        v13 = *(Name + 23);
      }

      else
      {
        v13 = Name[1];
      }

      v14 = *(a2 + 23);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(a2 + 8);
      }

      if (v13 == v14)
      {
        if (v12 < 0)
        {
          Name = *Name;
        }

        if (v15 >= 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = *a2;
        }

        if (!memcmp(Name, v16, v13))
        {
          if (*(a3 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v28, *a3, *(a3 + 8));
          }

          else
          {
            v28 = *a3;
          }

          MIL::IRNamedValueType::Make();
        }
      }

      ++v10;
      v8 = *(a1 + 152);
      v9 += 16;
    }

    while (v10 < (*(a1 + 160) - v8) >> 4);
  }

  v17 = *(a3 + 23);
  v18 = *(a3 + 8);
  if (v17 >= 0)
  {
    v19 = *(a3 + 23);
  }

  else
  {
    v19 = *(a3 + 8);
  }

  v20 = *(a2 + 23);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a2 + 8);
  }

  if (v19 != v20 || (v17 >= 0 ? (v22 = a3) : (v22 = *a3), v21 >= 0 ? (v23 = a2) : (v23 = *a2), memcmp(v22, v23, v19)))
  {
    if (v17 < 0)
    {
      std::string::__init_copy_ctor_external(&v27, *a3, v18);
    }

    else
    {
      v27 = *a3;
    }

    v25 = 0;
    v26 = 0;
    MIL::Builder::BlockBuilder::BlockBuilderImpl::ReplaceUsesOfInputVariable(a1, a2, &v27, &v25);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }

  return MIL::Builder::BlockBuilder::BlockBuilderImpl::GetVariable(a1, a3);
}

void sub_21801057C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void **a24)
{
  std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&a24);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::BlockBuilder::BlockBuilderImpl::ReplaceOutput(void *a1, uint64_t a2, std::string *a3, int a4)
{
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a1 + 9, a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v23 = std::string::append(&v58, ".");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v59);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a1 + 9, &a3->__r_.__value_.__l.__data_);
  if (!result)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v26 = std::string::append(&v58, ".");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v25, &v59);
    __cxa_throw(v25, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a4)
  {
    Variable = MIL::Builder::BlockBuilder::BlockBuilderImpl::GetVariable(a1, a2);
    v10 = MIL::Builder::BlockBuilder::BlockBuilderImpl::GetVariable(a1, a3);
    Type = MIL::Builder::Variable::TryGetType(Variable);
    result = MIL::Builder::Variable::TryGetType(v10);
    if (Type != result)
    {
      v28 = __cxa_allocate_exception(0x10uLL);
      p_data = &a3->__r_.__value_.__l.__data_;
      v30 = v28;
      v31 = p_data;
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" and ", p_data, &v53.__r_.__value_.__l.__data_);
      v32 = *(a2 + 23);
      if (v32 >= 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = *a2;
      }

      if (v32 >= 0)
      {
        v34 = *(a2 + 23);
      }

      else
      {
        v34 = *(a2 + 8);
      }

      v35 = std::string::append(&v53, v33, v34);
      v36 = *&v35->__r_.__value_.__l.__data_;
      v54.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&v54.__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      v37 = std::string::append(&v54, " have different types, cannot replace output ");
      v38 = *&v37->__r_.__value_.__l.__data_;
      v55.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v55.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      v39 = *(a2 + 23);
      if (v39 >= 0)
      {
        v40 = a2;
      }

      else
      {
        v40 = *a2;
      }

      if (v39 >= 0)
      {
        v41 = *(a2 + 23);
      }

      else
      {
        v41 = *(a2 + 8);
      }

      v42 = std::string::append(&v55, v40, v41);
      v43 = *&v42->__r_.__value_.__l.__data_;
      v56.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
      *&v56.__r_.__value_.__l.__data_ = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      v44 = std::string::append(&v56, " with ");
      v45 = *&v44->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      v46 = *(v31 + 23);
      if (v46 >= 0)
      {
        v47 = v31;
      }

      else
      {
        v47 = *v31;
      }

      if (v46 >= 0)
      {
        v48 = *(v31 + 23);
      }

      else
      {
        v48 = v31[1];
      }

      v49 = std::string::append(&v57, v47, v48);
      v50 = *&v49->__r_.__value_.__l.__data_;
      v58.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
      *&v58.__r_.__value_.__l.__data_ = v50;
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      v51 = std::string::append(&v58, ".");
      v52 = *&v51->__r_.__value_.__l.__data_;
      v59.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
      *&v59.__r_.__value_.__l.__data_ = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v30, &v59);
      __cxa_throw(v30, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  v13 = a1[22];
  v12 = a1[23];
  if (v12 != v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(v13 + v14 + 23);
      if (v16 >= 0)
      {
        v17 = *(v13 + v14 + 23);
      }

      else
      {
        v17 = *(v13 + v14 + 8);
      }

      v18 = *(a2 + 23);
      v19 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(a2 + 8);
      }

      if (v17 == v18)
      {
        if (v16 >= 0)
        {
          v20 = (v13 + v14);
        }

        else
        {
          v20 = *(v13 + v14);
        }

        if (v19 >= 0)
        {
          v21 = a2;
        }

        else
        {
          v21 = *a2;
        }

        result = memcmp(v20, v21, v17);
        if (!result)
        {
          result = std::string::operator=((v13 + v14), a3);
          v13 = a1[22];
          v12 = a1[23];
        }
      }

      ++v15;
      v14 += 24;
    }

    while (v15 < 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3));
  }

  return result;
}

void sub_2180109B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (v43)
  {
    __cxa_free_exception(v42);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::UpdateOutputNames(uint64_t a1, __int128 **a2)
{
  std::vector<std::string>::clear[abi:ne200100]((a1 + 176));
  std::vector<std::string>::reserve((a1 + 176), 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v4 = *a2;
  v5 = a2[1];
  while (v4 != v5)
  {
    MIL::Builder::BlockBuilder::BlockBuilderImpl::GetVariable(a1, v4);
    std::vector<std::string>::push_back[abi:ne200100](a1 + 176, v4);
    v4 = (v4 + 24);
  }
}

void *MIL::Builder::BlockBuilder::BlockBuilderImpl::PermuteOperations(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v26 = a3;
  v27 = a4;
  if (a4)
  {
    v5 = result;
    for (i = 0; i < a4; ++i)
    {
      v7 = v26;
      v8 = *(v26 + 8 * i);
      if (v8 != i)
      {
        v9 = v5[6];
        if (i + a2 >= (v5[7] - v9) >> 4)
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v10 = *(v9 + 16 * (i + a2));
        v25 = v10;
        if (*(&v10 + 1))
        {
          atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
          v8 = *(v7 + 8 * i);
        }

        v11 = i;
        while (v8 != i)
        {
          v12 = v8;
          v13 = v8 + a2;
          v14 = v5[6];
          v15 = (v5[7] - v14) >> 4;
          v16 = v11 + a2;
          if (v15 <= v13 || v15 <= v16)
          {
            std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
          }

          v18 = *(v14 + 16 * v13);
          v19 = *(v14 + 16 * v13 + 8);
          if (v19)
          {
            atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
          }

          v20 = v14 + 16 * v16;
          v21 = *(v20 + 8);
          *v20 = v18;
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          *MIL::Util::Span<unsigned long,18446744073709551615ul>::At(&v26, v11) = v11;
          v8 = *(v26 + 8 * v12);
          v11 = v12;
        }

        v22 = v5[6];
        if (v11 >= (v5[7] - v22) >> 4)
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v23 = v22 + 16 * v11;
        v24 = *(v23 + 8);
        *v23 = v25;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        result = MIL::Util::Span<unsigned long,18446744073709551615ul>::At(&v26, v11);
        *result = v11;
        a4 = v27;
      }
    }
  }

  return result;
}

void sub_218010D24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_218010FA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,0>(uint64_t a1)
{
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>>>::__emplace_unique_key_args<std::string,std::string const&,decltype(nullptr)>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>>>::__construct_node_hash<std::string const&,decltype(nullptr)>();
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

void sub_2180113E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::Builder::Variable const>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::Builder::Variable const>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

const void **MIL::Builder::BlockBuilder::BlockBuilderImpl::GetOperator@<X0>(uint64_t *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v8 = std::string::append(&v13, ".");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v14);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  Opset = MIL::MILContext::GetOpset(*a1);
  result = MIL::IROpset::TryGetOperatorSharedPtr(Opset, a2, a3);
  if (!*a3)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v11 = std::string::append(&v13, ".");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v10, &v14);
    __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_2180116C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      v25 = *(v21 + 8);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

BOOL MIL::Builder::BlockBuilder::BlockBuilderImpl::CheckAddedOperation(MIL::Builder::BlockBuilder::BlockBuilderImpl *this, MIL::Builder::OperationBuilder::OperationBuilderImpl **a2)
{
  if (MIL::Builder::OperationBuilder::GetNumOutputs(a2))
  {
    v4 = 0;
    do
    {
      OutputName = MIL::Builder::OperationBuilder::GetOutputName(a2, v4);
      if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(this + 9, OutputName))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::operator+<char>();
        v8 = std::string::append(&v11, " in this block.");
        v9 = *&v8->__r_.__value_.__l.__data_;
        v12.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
        *&v12.__r_.__value_.__l.__data_ = v9;
        v8->__r_.__value_.__l.__size_ = 0;
        v8->__r_.__value_.__r.__words[2] = 0;
        v8->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v12);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      ++v4;
    }

    while (v4 < MIL::Builder::OperationBuilder::GetNumOutputs(a2));
  }

  result = MIL::Builder::OperationBuilder::IsPartOfBlock(a2);
  if (result)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Operation is already part of another BlockBuilder.");
    __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void *MIL::Builder::BlockBuilder::BlockBuilderImpl::OperationIterator(uint64_t a1, void *a2)
{
  result = *(a1 + 48);
  v4 = *(a1 + 56);
  if (result != v4)
  {
    while (*result != *a2)
    {
      result += 2;
      if (result == v4)
      {
        goto LABEL_4;
      }
    }
  }

  if (result == v4)
  {
LABEL_4:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Trying to find index for Operation not in this Block.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void *std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::insert(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v14 = *a1;
    v15 = ((v6 - *a1) >> 4) + 1;
    if (v15 >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v16 = a2 - v14;
    v17 = v7 - v14;
    v18 = v17 >> 3;
    if (v17 >> 3 <= v15)
    {
      v18 = ((v6 - *a1) >> 4) + 1;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF0)
    {
      v19 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    v20 = v16 >> 4;
    v32 = a1;
    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(a1, v19);
    }

    *&v30 = 0;
    *(&v30 + 1) = 16 * v20;
    v31 = (16 * v20);
    std::__split_buffer<std::shared_ptr<MIL::Builder::OperationBuilder>>::emplace_back<std::shared_ptr<MIL::Builder::OperationBuilder> const&>(&v30, a3);
    v22 = *(&v30 + 1);
    memcpy(v31, v4, a1[1] - v4);
    v23 = *a1;
    v24 = *(&v30 + 1);
    *&v31 = v31 + a1[1] - v4;
    a1[1] = v4;
    v25 = v4 - v23;
    v26 = (v24 - (v4 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    v28 = a1[2];
    *(a1 + 1) = v31;
    *&v31 = v27;
    *(&v31 + 1) = v28;
    *&v30 = v27;
    *(&v30 + 1) = v27;
    std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(&v30);
    return v22;
  }

  else if (a2 == v6)
  {
    v21 = a3[1];
    *v6 = *a3;
    v6[1] = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    a1[1] = v6 + 2;
  }

  else
  {
    std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::__move_range(a1, a2, v6, (a2 + 2));
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 2;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    v12 = *v10;
    v11 = v10[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v4[1];
    *v4 = v12;
    v4[1] = v11;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  return v4;
}

void sub_218011B70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::BlockBuilder::BlockBuilderImpl::OnOperationAdded(void *a1, uint64_t a2, MIL::Builder::BlockBuilder *a3)
{
  MIL::Builder::OperationBuilder::GetInputArguments(*a2, &v40);
  for (i = v42; i; i = *i)
  {
    if (MIL::Builder::Variable::TryGetName(i[2]))
    {
      v39.__r_.__value_.__r.__words[0] = MIL::Builder::Variable::GetName(i[2]);
      v7 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 14, v39.__r_.__value_.__l.__data_);
      std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::shared_ptr<MIL::Builder::OperationBuilder> const&>(v7 + 5, a2);
    }
  }

  std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&v40);
  MIL::Builder::OperationBuilder::GetOutputs(*a2, &v40);
  v8 = v40;
  v9 = v41;
  if (v40 != v41)
  {
    do
    {
      v39.__r_.__value_.__r.__words[0] = MIL::Builder::Variable::GetName(*v8);
      v10 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 9, v39.__r_.__value_.__l.__data_);
      v12 = *a2;
      v11 = *(a2 + 8);
      if (v11)
      {
        atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
      }

      v13 = v10[6];
      v10[5] = v12;
      v10[6] = v11;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v14 = a1[5];
      Name = MIL::Builder::Variable::GetName(*v8);
      Type = MIL::Builder::Variable::TryGetType(*v8);
      (*(*v14 + 80))(v14, Name, Type, 0);
      ++v8;
    }

    while (v8 != v9);
    v8 = v40;
  }

  if (v8)
  {
    v41 = v8;
    operator delete(v8);
  }

  MIL::Builder::OperationBuilder::GetBlocks(*a2, &v40);
  v17 = v40;
  v18 = v41;
  while (v17 != v18)
  {
    v19 = *((*v17)[1] + 5);
    (*(*v19 + 104))(v19, *(*(a3 + 1) + 40));
    v17 += 2;
  }

  v39.__r_.__value_.__r.__words[0] = &v40;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v39);
  MIL::Builder::OperationBuilder::UpdateOwnership(*a2, a3, &v40);
  v20 = v42;
  if (v42)
  {
    while (1)
    {
      if (*(v20 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v39, v20[2], v20[3]);
      }

      else
      {
        v39 = *(v20 + 2);
      }

      MIL::Builder::Variable::UpdateOwner(v20[5], a3);
      if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a1 + 37, &v39.__r_.__value_.__l.__data_))
      {
        break;
      }

      v21 = v20[5];
      v20[5] = 0;
      v36 = v21;
      std::__hash_table<std::unique_ptr<MIL::Builder::Variable const>,std::hash<std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::unique_ptr<MIL::Builder::Variable const>>,std::allocator<std::unique_ptr<MIL::Builder::Variable const>>>::__emplace_unique_key_args<std::unique_ptr<MIL::Builder::Variable const>,std::unique_ptr<MIL::Builder::Variable const>>(a1 + 42, &v36);
      v22 = v36;
      v36 = 0;
      if (v22)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      v20 = *v20;
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    v36 = &v39;
    v23 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 37, &v39.__r_.__value_.__l.__data_);
    v24 = v20[5];
    v20[5] = 0;
    v22 = v23[5];
    v23[5] = v24;
    if (!v22)
    {
      goto LABEL_24;
    }

LABEL_23:
    (*(v22->__r_.__value_.__r.__words[0] + 8))(v22);
    goto LABEL_24;
  }

LABEL_30:
  v25 = *a2;
  v26 = a1[1];
  *&v38 = *a1;
  *(&v38 + 1) = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::SetContext(v25, &v38);
  if (*(&v38 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v38 + 1));
  }

  MIL::Builder::OperationBuilder::GetOutputs(*a2, &v39.__r_.__value_.__l.__data_);
  size = v39.__r_.__value_.__l.__size_;
  v27 = v39.__r_.__value_.__r.__words[0];
  if (v39.__r_.__value_.__r.__words[0] != v39.__r_.__value_.__l.__size_)
  {
    do
    {
      MIL::Builder::Variable::TryGetValueSharedPtr(*v27, &v36);
      if (v36)
      {
        v29 = a1[5];
        v30 = MIL::Builder::Variable::GetName(*v27);
        (*(*v29 + 88))(v29, v30, &v36, 1);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      ++v27;
    }

    while (v27 != size);
    v27 = v39.__r_.__value_.__r.__words[0];
  }

  if (v27)
  {
    v39.__r_.__value_.__l.__size_ = v27;
    operator delete(v27);
  }

  v31 = a1[47];
  if (v31)
  {
    v32 = *(a2 + 8);
    v34 = *a2;
    v35 = v32;
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::Builder::BlockBuilder::DataDependencyGraph::AddOperation(v31, &v34);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>>>::~__hash_table(&v40);
}

void sub_218011F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>>>::~__hash_table(&a22);
  _Unwind_Resume(a1);
}

void *std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder> *,std::shared_ptr<MIL::Builder::OperationBuilder> *,std::shared_ptr<MIL::Builder::OperationBuilder> *>(&v11, a2, v7, v6);
}

__int128 *std::__split_buffer<std::shared_ptr<MIL::Builder::OperationBuilder>>::emplace_back<std::shared_ptr<MIL::Builder::OperationBuilder> const&>(__int128 *result, void *a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (v4 == *(result + 3))
  {
    v5 = *(result + 1);
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *result) >> 3;
      }

      v9 = *(result + 4);
      v11[4] = *(v3 + 4);
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(v9, v8);
    }

    v6 = (((v5 - *result) >> 4) + 1 + ((((v5 - *result) >> 4) + 1) >> 63)) >> 1;
    result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder> *,std::shared_ptr<MIL::Builder::OperationBuilder> *,std::shared_ptr<MIL::Builder::OperationBuilder> *>(v11, v5, v4, &v5[-v6]);
    v4 = v7;
    *(v3 + 1) -= 16 * v6;
    *(v3 + 2) = v7;
  }

  *v4 = *a2;
  v10 = a2[1];
  *(v4 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 16;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder> *,std::shared_ptr<MIL::Builder::OperationBuilder> *,std::shared_ptr<MIL::Builder::OperationBuilder> *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder> *,std::shared_ptr<MIL::Builder::OperationBuilder> *,std::shared_ptr<MIL::Builder::OperationBuilder> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

unint64_t MIL::Builder::BlockBuilder::DataDependencyGraph::AddOperation(void *a1, uint64_t a2)
{
  v26 = *a2;
  v27 = &v26;
  v23 = std::__hash_table<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::__unordered_map_hasher<MIL::Builder::OperationBuilder *,std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::hash<MIL::Builder::OperationBuilder *>,std::equal_to<MIL::Builder::OperationBuilder *>,true>,std::__unordered_map_equal<MIL::Builder::OperationBuilder *,std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::equal_to<MIL::Builder::OperationBuilder *>,std::hash<MIL::Builder::OperationBuilder *>,true>,std::allocator<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>>::__emplace_unique_key_args<MIL::Builder::OperationBuilder *,std::piecewise_construct_t const&,std::tuple<MIL::Builder::OperationBuilder *&&>,std::tuple<>>(a1 + 10, &v26);
  Parameters = MIL::Builder::OperationBuilder::GetParameters(*a2);
  v5 = *Parameters;
  v22 = Parameters + 1;
  if (*Parameters != Parameters + 1)
  {
    do
    {
      v27 = (v5 + 4);
      std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v23 + 3, v5 + 4);
      v6 = v5[7];
      if (v5[8] != v6)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = (v6 + 16 * v7);
          if ((*(**v9 + 16))())
          {
            Name = MIL::IRArgument::GetName(*v9);
            MIL::Builder::BlockBuilder::DataDependencyGraph::GetProducerInfo(a1, Name, &v27);
            v25[0] = v27;
            v25[1] = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v11 = *(a2 + 8);
            v24[0] = *a2;
            v24[1] = v11;
            if (v11)
            {
              atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
            }

            MIL::Builder::DataDependency::MakeWithNonLexicalConsumer(v25, v24, (v5 + 4), v8);
          }

          v6 = v5[7];
          v7 = ++v8;
        }

        while (v8 < ((v5[8] - v6) >> 4));
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v5 = v13;
    }

    while (v13 != v22);
  }

  result = MIL::Builder::OperationBuilder::GetNumOutputs(*a2);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      OutputName = MIL::Builder::OperationBuilder::GetOutputName(*a2, i);
      MIL::Builder::BlockBuilder::DataDependencyGraph::GetProducerInfo(a1, OutputName, &v27);
      v18 = v27;
      v20 = *a2;
      v19 = *(a2 + 8);
      if (v19)
      {
        atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
      }

      v21 = v18[4];
      v18[3] = v20;
      v18[4] = v19;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        v18 = v27;
      }

      v18[5] = i;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      result = MIL::Builder::OperationBuilder::GetNumOutputs(*a2);
    }
  }

  return result;
}

void sub_21801256C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::shared_ptr<MIL::Builder::OperationBuilder> const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<MIL::Builder::OperationBuilder>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::OperationBuilder>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_218012AFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_218012E20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::unique_ptr<MIL::Builder::Variable const>,std::hash<std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::unique_ptr<MIL::Builder::Variable const>>,std::allocator<std::unique_ptr<MIL::Builder::Variable const>>>::__emplace_unique_key_args<std::unique_ptr<MIL::Builder::Variable const>,std::unique_ptr<MIL::Builder::Variable const>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::unique_ptr<MIL::Builder::Variable const>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[2];
    __p[2] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const void **MIL::Builder::BlockBuilder::DataDependencyGraph::GetProducerInfo@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>(a1, a2);
  if (!result)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    v8 = 0uLL;
    v9 = 0;
    operator new();
  }

  v6 = result[6];
  *a3 = result[5];
  a3[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::__unordered_map_hasher<MIL::Builder::OperationBuilder *,std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::hash<MIL::Builder::OperationBuilder *>,std::equal_to<MIL::Builder::OperationBuilder *>,true>,std::__unordered_map_equal<MIL::Builder::OperationBuilder *,std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::equal_to<MIL::Builder::OperationBuilder *>,std::hash<MIL::Builder::OperationBuilder *>,true>,std::allocator<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>>::__emplace_unique_key_args<MIL::Builder::OperationBuilder *,std::piecewise_construct_t const&,std::tuple<MIL::Builder::OperationBuilder *&&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_218013604(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_218013944(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<MIL::Builder::DataDependency::ProducerInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E49B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::allocator<MIL::Builder::DataDependency::ProducerInfo>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>>();
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

void sub_218013D58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo> const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_218014088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo> const,std::unordered_set<MIL::Builder::DataDependency>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo> const,std::unordered_set<MIL::Builder::DataDependency>>,0>(uint64_t a1)
{
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void *std::__hash_table<MIL::Builder::DataDependency,std::hash<MIL::Builder::DataDependency>,std::equal_to<MIL::Builder::DataDependency>,std::allocator<MIL::Builder::DataDependency>>::__emplace_unique_key_args<MIL::Builder::DataDependency,MIL::Builder::DataDependency const&>(void *a1, void *a2)
{
  v4 = std::hash<MIL::Builder::DataDependency>::operator()(a1, a2);
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

  if (!MIL::Builder::operator==(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::Builder::Variable const>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

unint64_t MIL::Builder::BlockBuilder::BlockBuilderImpl::CheckInsertedOperations(unint64_t result, uint64_t a2, uint64_t a3)
{
  v24 = result;
  if (a3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(a2 + 16 * v4);
      MIL::Builder::BlockBuilder::BlockBuilderImpl::CheckAddedOperation(v24, v6);
      result = MIL::Builder::OperationBuilder::GetNumOutputs(v6);
      if (result)
      {
        for (i = 0; i < result; ++i)
        {
          OutputName = MIL::Builder::OperationBuilder::GetOutputName(v6, i);
          v9 = 0;
          do
          {
            v10 = *(a2 + 16 * v9);
            NumOutputs = i;
            if (v9 != v4)
            {
              NumOutputs = MIL::Builder::OperationBuilder::GetNumOutputs(*(a2 + 16 * v9));
            }

            if (NumOutputs)
            {
              for (j = 0; j != NumOutputs; ++j)
              {
                v13 = MIL::Builder::OperationBuilder::GetOutputName(v10, j);
                v14 = *(OutputName + 23);
                if (v14 >= 0)
                {
                  v15 = *(OutputName + 23);
                }

                else
                {
                  v15 = *(OutputName + 8);
                }

                v16 = *(v13 + 23);
                v17 = v16;
                if ((v16 & 0x80u) != 0)
                {
                  v16 = *(v13 + 8);
                }

                if (v15 == v16)
                {
                  if (v14 >= 0)
                  {
                    v18 = OutputName;
                  }

                  else
                  {
                    v18 = *OutputName;
                  }

                  if (v17 >= 0)
                  {
                    v19 = v13;
                  }

                  else
                  {
                    v19 = *v13;
                  }

                  if (!memcmp(v18, v19, v15))
                  {
                    exception = __cxa_allocate_exception(0x10uLL);
                    std::operator+<char>();
                    v21 = std::string::append(&v25, " in this block.");
                    v22 = *&v21->__r_.__value_.__l.__data_;
                    v26.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
                    *&v26.__r_.__value_.__l.__data_ = v22;
                    v21->__r_.__value_.__l.__size_ = 0;
                    v21->__r_.__value_.__r.__words[2] = 0;
                    v21->__r_.__value_.__r.__words[0] = 0;
                    std::runtime_error::runtime_error(exception, &v26);
                    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                  }
                }
              }
            }

            ++v9;
          }

          while (v9 != v5);
          result = MIL::Builder::OperationBuilder::GetNumOutputs(v6);
        }
      }

      ++v4;
      ++v5;
    }

    while (v4 != a3);
  }

  return result;
}

void sub_218014600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void *std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::__insert_with_size[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder> const*,std::shared_ptr<MIL::Builder::OperationBuilder> const*>(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::__move_range(a1, a2, a1[1], &a2[2 * a5]);
        v18 = &v7[2 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::shared_ptr<MIL::Builder::OperationBuilder> const*,std::shared_ptr<MIL::Builder::OperationBuilder> const*,std::shared_ptr<MIL::Builder::OperationBuilder>*>(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::__move_range(a1, v5, v10, &v5[2 * a5]);
        v18 = (v7 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument>*>(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = (v19 + 16 * a5);
    v21 = v19;
    do
    {
      *v21 = *v7;
      v22 = v7[1];
      *(v21 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v7 += 2;
    }

    while (v21 != v20);
    memcpy(v20, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v20[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(v30);
    return v19;
  }

  return v5;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::shared_ptr<MIL::Builder::OperationBuilder> const*,std::shared_ptr<MIL::Builder::OperationBuilder> const*,std::shared_ptr<MIL::Builder::OperationBuilder>*>(uint64_t a1, void *a2, void *a3, void *a4)
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::shared_ptr<MIL::Builder::OperationBuilder>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::shared_ptr<MIL::Builder::OperationBuilder>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 16 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        v3 -= 16;
      }

      *(a1 + 8) = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::__append(a1, v5);
  }
}

void std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(a1[1], 16 * a2);
      v5 += 16 * a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    v16[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = a1[1] - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v11;
    v15 = a1[2];
    a1[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(v16);
  }
}

uint64_t *std::shared_ptr<MIL::IRNamedValueType>::shared_ptr[abi:ne200100]<MIL::IRNamedValueType,std::default_delete<MIL::IRNamedValueType>,0>(uint64_t *result, uint64_t *a2)
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

uint64_t std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType> const*,std::shared_ptr<MIL::IRNamedValueType> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_218014B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder>*,std::shared_ptr<MIL::Builder::OperationBuilder>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_218014C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::BlockBuilder::BlockBuilderImpl::CreateStateDependencyMap@<X0>(MIL::Builder::BlockBuilder::BlockBuilderImpl *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  LOBYTE(__p) = 0;
  v9 = 0;
  MIL::Builder::BlockBuilder::BlockBuilderImpl::ExtractStateOpsHelper(this, &__p, v10);
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  for (i = v11; i; i = *i)
  {
    v12 = i + 2;
    v4 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, i + 2);
    std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__move_assign((v4 + 5), v6);
    std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::~__hash_table(v6);
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>>>::~__hash_table(v10);
}

void sub_218014CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, __int16 a22, char a23, char a24)
{
  if (a20 == 1 && a19 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::~__hash_table(v24);
  _Unwind_Resume(a1);
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::ExtractStateOpsHelper(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = *(a1 + 48);
  for (i = *(a1 + 56); v4 != i; v4 += 2)
  {
    Operator = MIL::Builder::OperationBuilder::GetOperator(*v4);
    if ((*(*Operator + 240))(Operator))
    {
      v8 = MIL::Builder::OperationBuilder::GetOperator(*v4);
      v9 = (*(*v8 + 240))(v8);
      if (MIL::IRMemoryEffect::TryAsStateReadEffect(v9) || (v10 = MIL::Builder::OperationBuilder::GetOperator(*v4), v11 = (*(*v10 + 240))(v10), MIL::IRMemoryEffect::TryAsStateWriteEffect(v11)))
      {
        Parameters = MIL::Builder::OperationBuilder::GetParameters(*v4);
        std::string::basic_string[abi:ne200100]<0>(__p, "input");
        v13 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(Parameters, __p);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }

        if (Parameters + 8 == v13)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "State Op missing required state input.");
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "input");
        v14 = std::map<std::string,std::unique_ptr<MIL::IRBlock>>::at(Parameters, __p);
        v15 = (*(***v14 + 32))(**v14);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }

        if (!v15)
        {
          v24 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v24, "State input needs to have a name, cannot be a literal.");
          v24->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v24, off_278235F80, MEMORY[0x277D82610]);
        }

        if (*(a2 + 24) != 1)
        {
          goto LABEL_25;
        }

        v16 = *(a2 + 23);
        if (v16 >= 0)
        {
          v17 = *(a2 + 23);
        }

        else
        {
          v17 = *(a2 + 8);
        }

        v18 = *(v15 + 23);
        v19 = v18;
        if ((v18 & 0x80u) != 0)
        {
          v18 = v15[1];
        }

        if (v17 == v18)
        {
          v20 = v16 >= 0 ? a2 : *a2;
          v21 = v19 >= 0 ? v15 : *v15;
          if (!memcmp(v20, v21, v17))
          {
LABEL_25:
            __p[0] = v15;
            v22 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v15);
            std::vector<std::shared_ptr<MIL::IROperation>>::push_back[abi:ne200100](v22 + 5, v4);
          }
        }
      }
    }
  }
}

uint64_t anonymous namespace::CreateStateDependencyMap@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v20 = 0u;
  v21 = 0u;
  v22 = 1065353216;
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    do
    {
      v6 = *(v3 + 16 * v5);
      v23 = v6;
      if (*(&v6 + 1))
      {
        atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>::unordered_set(v17, &v23, 1);
      if (*(&v23 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
      }

      Operator = MIL::Builder::OperationBuilder::GetOperator(*(*a1 + 16 * v5));
      v8 = (*(*Operator + 240))(Operator);
      if (MIL::IRMemoryEffect::TryAsStateReadEffect(v8))
      {
        v9 = 16 * v5 + 16;
        for (i = v5; i + 1 < (a1[1] - *a1) >> 4; ++i)
        {
          v11 = MIL::Builder::OperationBuilder::GetOperator(*(*a1 + v9));
          v12 = (*(*v11 + 240))(v11);
          if (!MIL::IRMemoryEffect::TryAsStateReadEffect(v12))
          {
            v5 = i;
            break;
          }

          std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::shared_ptr<MIL::Builder::OperationBuilder> const&>(v17, (*a1 + v9));
          v9 += 16;
        }
      }

      v13 = v18;
      if (v18)
      {
        do
        {
          *&v23 = v13 + 2;
          v14 = std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::Builder::OperationBuilder> const&>,std::tuple<>>(a2, v13 + 2);
          if (v14 + 4 != &v20)
          {
            *(v14 + 16) = v22;
            std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::shared_ptr<MIL::Builder::OperationBuilder>,void *> *>>(v14 + 4, v21, 0);
          }

          v13 = *v13;
        }

        while (v13);
        v15 = v18;
      }

      else
      {
        v15 = 0;
      }

      v22 = v19;
      std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::shared_ptr<MIL::Builder::OperationBuilder>,void *> *>>(&v20, v15, 0);
      std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(v17);
      ++v5;
      v3 = *a1;
    }

    while (v5 < (a1[1] - *a1) >> 4);
  }

  return std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(&v20);
}

void sub_2180152BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(&a15);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::~__hash_table(v22);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>::unordered_set(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::shared_ptr<MIL::Builder::OperationBuilder> const&>(a1, a2);
      a2 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::Builder::OperationBuilder> const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_218015614(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::shared_ptr<MIL::Builder::OperationBuilder>,void *> *>>(void *a1, void *a2, void *a3)
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
        v12 = v4[2];
        v11 = v4[3];
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        }

        v13 = v8[3];
        v8[2] = v12;
        v8[3] = v11;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        v10 = *v8;
        std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__emplace_multi<std::shared_ptr<MIL::Builder::OperationBuilder> const&>();
  }
}

void sub_21801570C(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void *std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) >> 47));
  a2[1] = v6;
  inserted = std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__node_insert_multi_prepare(a1, v6, v4);
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void *std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
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