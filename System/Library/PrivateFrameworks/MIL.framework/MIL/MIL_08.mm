void std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__rehash<false>(uint64_t a1, size_t __n)
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
    goto LABEL_6;
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
LABEL_6:

      std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_218015CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<MIL::Builder::OperationBuilder>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_218015FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::clear(a1);
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

void std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo> const,std::unordered_set<MIL::Builder::DataDependency>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

BOOL std::operator==[abi:ne200100]<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>(uint64_t a1, void *a2)
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

  while (!memcmp(v11, v12, v8) && std::operator==[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::pair<std::shared_ptr<MIL::Builder::OperationBuilder> const,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>((v3 + 5), v6 + 5));
  return v4;
}

BOOL std::operator==[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::pair<std::shared_ptr<MIL::Builder::OperationBuilder> const,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>(uint64_t a1, void *a2)
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

    v5 = std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::find<std::shared_ptr<MIL::Builder::OperationBuilder>>(a2, v3 + 2);
    if (!v5)
    {
      break;
    }
  }

  while (v3[2] == v5[2] && std::operator==[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>((v3 + 4), v5 + 4));
  return v4;
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::find<std::shared_ptr<MIL::Builder::OperationBuilder>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
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

        if (v10 != v7)
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

BOOL std::operator==[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>(uint64_t a1, void *a2)
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

    v5 = std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::find<std::shared_ptr<MIL::Builder::OperationBuilder>>(a2, v3 + 2);
    if (!v5)
    {
      break;
    }
  }

  while (v3[2] == v5[2]);
  return v4;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_2180167FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<MIL::IRTypedArgument>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t MIL::Builder::BlockBuilder::BlockBuilderImpl::GetOrBuildDataDependencyGraph(MIL::Builder::BlockBuilder::BlockBuilderImpl *this)
{
  if (!*(this + 47))
  {
    operator new();
  }

  return *(this + 47);
}

void sub_218016A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

const void **MIL::Builder::BlockBuilder::DataDependencyGraph::GetDataDependenciesForConsumerParam(uint64_t a1, uint64_t a2, const void **a3)
{
  v8 = a2;
  v5 = std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::find<std::shared_ptr<MIL::Builder::OperationBuilder>>((a1 + 80), &v8);
  if (!v5)
  {
    return (a1 + 120);
  }

  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(v5 + 3, a3);
  if (v6)
  {
    return v6 + 5;
  }

  else
  {
    return (a1 + 120);
  }
}

void MIL::Builder::BlockBuilder::DataDependencyGraph::AddBlockOutput(void *a1, uint64_t a2)
{
  MIL::Builder::BlockBuilder::DataDependencyGraph::GetProducerInfo(a1, a2, &v3);
  v2[0] = v3;
  v2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::DataDependency::MakeWithBlockOutputConsumer(v2);
}

void sub_218016B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<MIL::Builder::BlockBuilder::DataDependencyGraph>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(v2 + 120);
    std::__hash_table<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::__unordered_map_hasher<MIL::Builder::OperationBuilder *,std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::hash<MIL::Builder::OperationBuilder *>,std::equal_to<MIL::Builder::OperationBuilder *>,true>,std::__unordered_map_equal<MIL::Builder::OperationBuilder *,std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::equal_to<MIL::Builder::OperationBuilder *>,std::hash<MIL::Builder::OperationBuilder *>,true>,std::allocator<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>>::~__hash_table(v2 + 80);
    std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::~__hash_table(v2 + 40);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);

    JUMPOUT(0x21CEAFEA0);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::__unordered_map_hasher<MIL::Builder::OperationBuilder *,std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::hash<MIL::Builder::OperationBuilder *>,std::equal_to<MIL::Builder::OperationBuilder *>,true>,std::__unordered_map_equal<MIL::Builder::OperationBuilder *,std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::equal_to<MIL::Builder::OperationBuilder *>,std::hash<MIL::Builder::OperationBuilder *>,true>,std::allocator<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::__unordered_map_hasher<MIL::Builder::OperationBuilder *,std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::hash<MIL::Builder::OperationBuilder *>,std::equal_to<MIL::Builder::OperationBuilder *>,true>,std::__unordered_map_equal<MIL::Builder::OperationBuilder *,std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::equal_to<MIL::Builder::OperationBuilder *>,std::hash<MIL::Builder::OperationBuilder *>,true>,std::allocator<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::__unordered_map_hasher<MIL::Builder::OperationBuilder *,std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::hash<MIL::Builder::OperationBuilder *>,std::equal_to<MIL::Builder::OperationBuilder *>,true>,std::__unordered_map_equal<MIL::Builder::OperationBuilder *,std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::equal_to<MIL::Builder::OperationBuilder *>,std::hash<MIL::Builder::OperationBuilder *>,true>,std::allocator<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *MIL::Builder::BlockBuilder::DataDependencyGraph::GetDataDependenciesByVariableName(void *a1, const void **a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a1, a2);
  if (!v3)
  {
    return a1 + 15;
  }

  v4 = std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::OperationBuilder>,std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::find<std::shared_ptr<MIL::Builder::OperationBuilder>>(a1 + 5, v3 + 5);
  if (v4)
  {
    return v4 + 4;
  }

  else
  {
    return a1 + 15;
  }
}

BOOL MIL::Builder::BlockBuilder::BlockBuilderImpl::OperationFollowsOperation(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a2[1];
  v12 = *a2;
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = MIL::Builder::BlockBuilder::BlockBuilderImpl::OperationIterator(a1, &v12);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v7 = a3[1];
  v10 = *a3;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = MIL::Builder::BlockBuilder::BlockBuilderImpl::OperationIterator(a1, &v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v8 < v6;
}

void sub_218016D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x218016D88);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::shared_ptr<MIL::Builder::OperationBuilder> const&>(a1, i + 2);
  }

  return a1;
}

uint64_t std::vector<std::shared_ptr<MIL::Builder::OperationBuilder>>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<MIL::Builder::OperationBuilder> *,std::shared_ptr<MIL::Builder::OperationBuilder> *,std::shared_ptr<MIL::Builder::OperationBuilder> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t *std::remove[abi:ne200100]<std::__wrap_iter<std::shared_ptr<MIL::Builder::OperationBuilder> *>,std::shared_ptr<MIL::Builder::OperationBuilder>>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (*v3 != *a3)
    {
      v3 += 2;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 2; i != a2; i += 2)
      {
        v8 = *i;
        if (*i != *a3)
        {
          v9 = i[1];
          *i = 0;
          i[1] = 0;
          v10 = v3[1];
          *v3 = v8;
          v3[1] = v9;
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }

          v3 += 2;
        }
      }
    }
  }

  return v3;
}

uint64_t MIL::Builder::BlockBuilder::BlockBuilderImpl::OnOperationRemoved(uint64_t a1, MIL::Builder::OperationBuilder::OperationBuilderImpl ***a2, char a3)
{
  MIL::Builder::OperationBuilder::RemoveOwningBlock(*a2);
  v6 = *(a1 + 376);
  if (v6)
  {
    MIL::Builder::BlockBuilder::DataDependencyGraph::RemoveOperation(v6, *a2);
  }

  MIL::Builder::OperationBuilder::GetOutputs(*a2, &v16);
  v7 = v16;
  v8 = v17;
  if (v16 != v17)
  {
    do
    {
      Name = MIL::Builder::Variable::GetName(*v7);
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>((a1 + 72), Name);
      (*(**(a1 + 40) + 112))(*(a1 + 40), Name);
      if ((a3 & 1) == 0)
      {
        v10.__i_ = std::remove[abi:ne200100]<std::__wrap_iter<std::string *>,std::string>(*(a1 + 176), *(a1 + 184), Name);
        v11.__i_ = *(a1 + 184);
        std::vector<std::string>::erase((a1 + 176), v10, v11);
      }

      ++v7;
    }

    while (v7 != v8);
    v7 = v16;
  }

  if (v7)
  {
    v17 = v7;
    operator delete(v7);
  }

  MIL::Builder::OperationBuilder::GetInputArguments(*a2, &v16);
  for (i = v18; i; i = *i)
  {
    v13 = MIL::Builder::Variable::TryGetName(i[2]);
    if (v13)
    {
      v19 = v13;
      v14 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 112), v13);
      std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__erase_unique<std::shared_ptr<MIL::Builder::OperationBuilder>>(v14 + 5, a2);
    }
  }

  return std::__hash_table<MIL::IRValueType const*,std::hash<MIL::IRValueType const*>,std::equal_to<MIL::IRValueType const*>,std::allocator<MIL::IRValueType const*>>::~__hash_table(&v16);
}

uint64_t MIL::Builder::BlockBuilder::DataDependencyGraph::RemoveOperation(MIL::Builder::BlockBuilder::DataDependencyGraph *this, MIL::Builder::OperationBuilder::OperationBuilderImpl **a2)
{
  v16[0] = a2;
  if (MIL::Builder::OperationBuilder::GetNumOutputs(a2))
  {
    v4 = 0;
    do
    {
      OutputName = MIL::Builder::OperationBuilder::GetOutputName(a2, v4);
      MIL::Builder::BlockBuilder::DataDependencyGraph::GetProducerInfo(this, OutputName, &v14);
      v6 = v14;
      v7 = v14[4];
      v14[3] = 0;
      v6[4] = 0;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v16[2] = &v14;
      if (!std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo> const&>,std::tuple<>>(this + 5, &v14)[7])
      {
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(this, v14);
        std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>>>::__erase_unique<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>(this + 5, &v14);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      ++v4;
    }

    while (v4 < MIL::Builder::OperationBuilder::GetNumOutputs(a2));
  }

  v8 = std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>>>::find<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>(this + 10, v16);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  for (i = v8[5]; i; i = *i)
  {
    for (j = i[7]; j; j = *j)
    {
      MIL::Builder::DataDependency::GetProducerInfo(j + 2, &v14);
      v11 = std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>>>::find<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>(this + 5, &v14);
      v12 = v11;
      if (!v11)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      std::__hash_table<MIL::Builder::DataDependency,std::hash<MIL::Builder::DataDependency>,std::equal_to<MIL::Builder::DataDependency>,std::allocator<MIL::Builder::DataDependency>>::__erase_unique<MIL::Builder::DataDependency>(v11 + 4, j + 2);
      if (!v12[7] && !v14[3])
      {
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__erase_unique<std::string>(this, v14);
        std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>>>::__erase_unique<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>(this + 5, &v14);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }
  }

  return std::__hash_table<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::__unordered_map_hasher<MIL::Builder::OperationBuilder *,std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::hash<MIL::Builder::OperationBuilder *>,std::equal_to<MIL::Builder::OperationBuilder *>,true>,std::__unordered_map_equal<MIL::Builder::OperationBuilder *,std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::equal_to<MIL::Builder::OperationBuilder *>,std::hash<MIL::Builder::OperationBuilder *>,true>,std::allocator<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>>::__erase_unique<MIL::Builder::OperationBuilder *>(this + 10, v16);
}

void sub_2180172AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>>>::__erase_unique<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>>>::find<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>>>::find<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
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

        if (v10 != v7)
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

uint64_t *std::__hash_table<MIL::Builder::DataDependency,std::hash<MIL::Builder::DataDependency>,std::equal_to<MIL::Builder::DataDependency>,std::allocator<MIL::Builder::DataDependency>>::__erase_unique<MIL::Builder::DataDependency>(void *a1, void *a2)
{
  result = std::__hash_table<MIL::Builder::DataDependency,std::hash<MIL::Builder::DataDependency>,std::equal_to<MIL::Builder::DataDependency>,std::allocator<MIL::Builder::DataDependency>>::find<MIL::Builder::DataDependency>(a1, a2);
  if (result)
  {
    std::__hash_table<MIL::Builder::DataDependency,std::hash<MIL::Builder::DataDependency>,std::equal_to<MIL::Builder::DataDependency>,std::allocator<MIL::Builder::DataDependency>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<MIL::Builder::DataDependency,std::hash<MIL::Builder::DataDependency>,std::equal_to<MIL::Builder::DataDependency>,std::allocator<MIL::Builder::DataDependency>>::find<MIL::Builder::DataDependency>(void *a1, void *a2)
{
  v4 = std::hash<MIL::Builder::DataDependency>::operator()(a1, a2);
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
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (MIL::Builder::operator==(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
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
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t std::__hash_table<MIL::Builder::DataDependency,std::hash<MIL::Builder::DataDependency>,std::equal_to<MIL::Builder::DataDependency>,std::allocator<MIL::Builder::DataDependency>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<MIL::Builder::OperationBuilder>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

uint64_t std::__hash_table<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::__unordered_map_hasher<MIL::Builder::OperationBuilder *,std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::hash<MIL::Builder::OperationBuilder *>,std::equal_to<MIL::Builder::OperationBuilder *>,true>,std::__unordered_map_equal<MIL::Builder::OperationBuilder *,std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,std::equal_to<MIL::Builder::OperationBuilder *>,std::hash<MIL::Builder::OperationBuilder *>,true>,std::allocator<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>>::__erase_unique<MIL::Builder::OperationBuilder *>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>>>::find<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MIL::Builder::OperationBuilder *,std::unordered_map<std::string,std::unordered_set<MIL::Builder::DataDependency>>>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

uint64_t *std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__erase_unique<std::shared_ptr<MIL::Builder::OperationBuilder>>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,std::hash<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>,std::unordered_set<MIL::Builder::DataDependency>>>>::find<std::shared_ptr<MIL::Builder::DataDependency::ProducerInfo>>(a1, a2);
  if (result)
  {
    std::__hash_table<MIL::Builder::DataDependency,std::hash<MIL::Builder::DataDependency>,std::equal_to<MIL::Builder::DataDependency>,std::allocator<MIL::Builder::DataDependency>>::erase(a1, result);
    return 1;
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

void sub_218017890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::clear(a1);
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

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::__deallocate_node(a1, *(a1 + 16));
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

std::vector<std::string>::iterator std::vector<std::string>::erase(std::vector<std::string> *this, std::vector<std::string>::const_iterator __first, std::vector<std::string>::const_iterator __last)
{
  if (__last.__i_ != __first.__i_)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v10, __last.__i_, this->__end_, __first.__i_);
    v6 = v5;
    end = this->__end_;
    if (end != v5)
    {
      do
      {
        v8 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
        --end;
        if (v8 < 0)
        {
          operator delete(end->__r_.__value_.__l.__data_);
        }
      }

      while (end != v6);
    }

    this->__end_ = v6;
  }

  return __first.__i_;
}

__int128 *std::remove[abi:ne200100]<std::__wrap_iter<std::string *>,std::string>(__int128 *a1, __int128 *a2, const void **a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v7 = *(a3 + 23);
    if (v7 >= 0)
    {
      v8 = *(a3 + 23);
    }

    else
    {
      v8 = a3[1];
    }

    if (v7 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    v3 = a1;
    while (1)
    {
      v10 = *(v3 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v3 + 1);
      }

      if (v10 == v8)
      {
        v12 = v11 >= 0 ? v3 : *v3;
        if (!memcmp(v12, v9, v8))
        {
          break;
        }
      }

      v3 = (v3 + 24);
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = (v3 + 24); i != a2; i = (i + 24))
      {
        v14 = *(i + 23);
        if (v14 >= 0)
        {
          v15 = *(i + 23);
        }

        else
        {
          v15 = *(i + 1);
        }

        v16 = *(a3 + 23);
        v17 = v16;
        if (v16 < 0)
        {
          v16 = a3[1];
        }

        if (v15 == v16)
        {
          v18 = v14 >= 0 ? i : *i;
          v19 = v17 >= 0 ? a3 : *a3;
          if (!memcmp(v18, v19, v15))
          {
            continue;
          }
        }

        if (*(v3 + 23) < 0)
        {
          operator delete(*v3);
        }

        v20 = *i;
        *(v3 + 2) = *(i + 2);
        *v3 = v20;
        v3 = (v3 + 24);
        *(i + 23) = 0;
        *i = 0;
      }
    }
  }

  return v3;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::shared_ptr<MIL::IRNamedValueType>::operator=[abi:ne200100]<MIL::IRNamedValueType,std::default_delete<MIL::IRNamedValueType>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::IRNamedValueType>::shared_ptr[abi:ne200100]<MIL::IRNamedValueType,std::default_delete<MIL::IRNamedValueType>,0>(&v6, a2);
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

uint64_t MIL::Util::Span<unsigned long,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return *a1 + 8 * a2;
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::~BlockBuilderImpl(MIL::Builder::BlockBuilder::BlockBuilderImpl *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::~__hash_table(this + 384);
  std::unique_ptr<MIL::Builder::BlockBuilder::DataDependencyGraph>::reset[abi:ne200100](this + 47, 0);
  std::__hash_table<std::unique_ptr<MIL::Builder::Variable const>,std::hash<std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::unique_ptr<MIL::Builder::Variable const>>,std::allocator<std::unique_ptr<MIL::Builder::Variable const>>>::~__hash_table(this + 336);
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>>>::~__hash_table(this + 296);
  std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(this + 256);
  v2 = *(this + 31);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 200);
  v5 = (this + 176);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 152);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>::~__hash_table(this + 112);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 72);
  v5 = (this + 48);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::__hash_table<std::unique_ptr<MIL::Builder::Variable const>,std::hash<std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::unique_ptr<MIL::Builder::Variable const>>,std::allocator<std::unique_ptr<MIL::Builder::Variable const>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::unique_ptr<MIL::Builder::Variable const>,std::hash<std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::unique_ptr<MIL::Builder::Variable const>>,std::allocator<std::unique_ptr<MIL::Builder::Variable const>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::unique_ptr<MIL::Builder::Variable const>,std::hash<std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::unique_ptr<MIL::Builder::Variable const>>,std::allocator<std::unique_ptr<MIL::Builder::Variable const>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[2];
      v2[2] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::BlockBuilderImpl(uint64_t a1, void *a2, __int128 *a3)
{
  *a1 = *a2;
  v3 = a2[1];
  *(a1 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *a3;
  *(a1 + 32) = *(a3 + 2);
  *(a1 + 16) = v4;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  v5 = 0u;
  v6 = 0u;
  v7 = 1065353216;
  MIL::IRMutableScope::Make();
}

void sub_218018188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v30 & 1) == 0)
    {
LABEL_8:
      std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::~__hash_table(v23 + 384);
      std::unique_ptr<MIL::Builder::BlockBuilder::DataDependencyGraph>::reset[abi:ne200100](v27, 0);
      std::__hash_table<std::unique_ptr<MIL::Builder::Variable const>,std::hash<std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::unique_ptr<MIL::Builder::Variable const>>,std::allocator<std::unique_ptr<MIL::Builder::Variable const>>>::~__hash_table(v23 + 336);
      std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>>>::~__hash_table(v26);
      std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(v23 + 256);
      v32 = *(v23 + 248);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v25);
      __p = (v29 + 128);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&__p);
      std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>::~__hash_table(v24);
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v29 + 24);
      __p = v29;
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&__p);
      v33 = *(v23 + 40);
      *(v23 + 40) = 0;
      if (v33)
      {
        (*(*v33 + 8))(v33);
      }

      if (*(v23 + 39) < 0)
      {
        operator delete(*(v23 + 16));
      }

      v34 = *(v23 + 8);
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v28);
  goto LABEL_8;
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::BlockBuilderImpl(void *a1, void *a2, MIL::IRObject *this, __int128 *a4)
{
  *a1 = *a2;
  v7 = a2[1];
  a1[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *a4;
  a1[4] = *(a4 + 2);
  *(a1 + 1) = v8;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  *(a1 + 5) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 26) = 1065353216;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 36) = 1065353216;
  *(a1 + 19) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 23) = 0u;
  Attributes = MIL::IRObject::GetAttributes(this);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map((a1 + 25), Attributes);
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  a1[30] = *LocationPtr;
  v11 = LocationPtr[1];
  a1[31] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 37) = 0u;
  *(a1 + 39) = 0u;
  *(a1 + 82) = 1065353216;
  *(a1 + 21) = 0u;
  *(a1 + 22) = 0u;
  *(a1 + 92) = 1065353216;
  a1[51] = 0;
  *(a1 + 47) = 0u;
  *(a1 + 49) = 0u;
  *(a1 + 104) = 1065353216;
  if (*a1)
  {
    if ((*(**a1 + 16))(*a1, a1 + 2))
    {
      if (MIL::IRCachedScope::IsCacheEnabled((this + 64)))
      {
        v12 = a2[1];
        v18[0] = *a2;
        v18[1] = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
        }

        MIL::Builder::BlockBuilder::BlockBuilderImpl::BlockBuilderImplCommon(a1, v18, this);
      }

      (*(*this + 32))(&v20, this);
      v13 = a2[1];
      v19[0] = *a2;
      v19[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
      }

      MIL::Builder::BlockBuilder::BlockBuilderImpl::BlockBuilderImplCommon(a1, v19, v20.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v16 = std::string::append(&v20, " is not registered in the context.");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v14 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v14, "Cannot initialize a BlockBuilder with an empty context.");
  __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_21801860C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
    if ((v30 & 1) == 0)
    {
LABEL_8:
      std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::shared_ptr<MIL::Builder::OperationBuilder>,std::unordered_set<std::shared_ptr<MIL::Builder::OperationBuilder>>>>>>::~__hash_table(v25 + 384);
      std::unique_ptr<MIL::Builder::BlockBuilder::DataDependencyGraph>::reset[abi:ne200100](v28, 0);
      std::__hash_table<std::unique_ptr<MIL::Builder::Variable const>,std::hash<std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::unique_ptr<MIL::Builder::Variable const>>,std::allocator<std::unique_ptr<MIL::Builder::Variable const>>>::~__hash_table(v25 + 336);
      std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>>>::~__hash_table(v27);
      std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::~__hash_table(v25 + 256);
      v33 = *(v25 + 248);
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((v31 + 20));
      __p = v31 + 17;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&__p);
      std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<MIL::Builder::DataDependency>>>>::~__hash_table(v26);
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(a9);
      __p = v31 + 1;
      std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&__p);
      v34 = *v31;
      *v31 = 0;
      if (v34)
      {
        (*(*v34 + 8))(v34);
      }

      if (*(v25 + 39) < 0)
      {
        operator delete(*(v25 + 16));
      }

      v35 = *(v25 + 8);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v29);
  goto LABEL_8;
}

void MIL::Builder::BlockBuilder::BlockBuilderImpl::BlockBuilderImplCommon(uint64_t a1, const void **a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = (*(*(a3 + 64) + 32))(a3 + 64);
  std::unordered_map<std::string,MIL::IRValueType const*>::unordered_map(v11, v5);
  if (v12)
  {
    v6 = *(v12 + 40);
    if (!v7)
    {
      __cxa_bad_cast();
    }

    if (!MIL::MILContextImpl::TypeIsRegistered(v7, v6))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Cannot initialize a BlockBuilder using a different MILContext than the IRBlock.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  v8 = (*(*v4 + 64))(v4);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v10, v8);
  MIL::IRMutableScope::Make();
}

void sub_218018CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  __cxa_free_exception(v28);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a28);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__assign_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType>*,std::shared_ptr<MIL::IRNamedValueType>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument>*>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument>*>(&v17, a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*,std::shared_ptr<MIL::IRNamedValueType>*,std::shared_ptr<MIL::IRNamedValueType>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

uint64_t **MIL::Builder::DataDependency::GetProducer@<X0>(uint64_t **this@<X0>, void *a2@<X8>)
{
  v2 = **this;
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

uint64_t MIL::Builder::DataDependency::GetConsumer@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(*this + 24);
  *a2 = *(*this + 16);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t MIL::Builder::DataDependency::GetConsumerArgumentIndex(MIL::Builder::DataDependency *this)
{
  v1 = *this;
  if (!*(*this + 16) || *(v1 + 32) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Attempted to call GetConsumerArgumentIndex on a data dependency that does not have an explicit consumer.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return *(v1 + 64);
}

uint64_t MIL::Builder::DataDependency::GetConsumerNestedBlockIndex(MIL::Builder::DataDependency *this)
{
  v1 = *this;
  if (!*(*this + 16) || (*(v1 + 32) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Attempted to call GetConsumerNestedBlockIndex on a data dependency that does not have a lexical consumer.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return *(v1 + 72);
}

uint64_t MIL::Builder::DataDependency::GetConsumerParameterName(MIL::Builder::DataDependency *this)
{
  v1 = *this;
  if (!*(*this + 16) || *(v1 + 32) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Attempted to call GetConsumerParameterName on a data dependency that does not have an explicit consumer.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return v1 + 40;
}

__n128 MIL::Builder::DataDependency::DataDependency(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void MIL::Builder::DataDependency::MakeWithNonLexicalConsumer(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a3, *(a3 + 8));
  }

  else
  {
    v7 = *a3;
  }

  v8 = a4;
  v9 = -1;
  operator new();
}

void sub_21801918C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::DataDependency::DataDependencyImpl::~DataDependencyImpl(void **this)
{
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v2 = this[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[1];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void MIL::Builder::DataDependency::MakeWithBlockOutputConsumer(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void **MIL::Builder::DataDependency::GetProducerInfo@<X0>(void **this@<X0>, void *a2@<X8>)
{
  v2 = (*this)[1];
  *a2 = **this;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void std::__shared_ptr_emplace<MIL::Builder::DataDependency::DataDependencyImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2829E4A00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

void std::__shared_ptr_emplace<MIL::Builder::DataDependency::DataDependencyImpl>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void MIL::Builder::FunctionBuilder::FunctionBuilder(void *a1)
{
  *a1 = &unk_2829E4A50;
  std::make_unique[abi:ne200100]<MIL::Builder::FunctionBuilder::FunctionBuilderImpl,std::shared_ptr<MIL::MILContext> &,std::shared_ptr<MIL::IRFunction const> &,decltype(nullptr),0>();
}

{
  *a1 = &unk_2829E4A50;
  std::make_unique[abi:ne200100]<MIL::Builder::FunctionBuilder::FunctionBuilderImpl,std::shared_ptr<MIL::MILContext> &,std::shared_ptr<MIL::IRFunction const> &,decltype(nullptr),0>();
}

{
  *a1 = &unk_2829E4A50;
  operator new();
}

void sub_218019578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_2180196B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

void MIL::Builder::FunctionBuilder::~FunctionBuilder(MIL::Builder::FunctionBuilder *this)
{
  v2 = *(this + 1);
  *this = &unk_2829E4A50;
  *(this + 1) = 0;
  if (v2)
  {
    MIL::Builder::FunctionBuilder::FunctionBuilderImpl::~FunctionBuilderImpl(v2);
    MEMORY[0x21CEAFEA0]();
  }
}

{
  MIL::Builder::FunctionBuilder::~FunctionBuilder(this);

  JUMPOUT(0x21CEAFEA0);
}

const void **MIL::Builder::FunctionBuilder::GetBlock@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((*(a1 + 8) + 40), a2);
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

void MIL::Builder::FunctionBuilder::Make()
{
  operator new();
}

{
  operator new();
}

void sub_218019878(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x21CEAFEA0](v2, v1);
  _Unwind_Resume(a1);
}

void sub_21801997C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  MEMORY[0x21CEAFEA0](v14, v13);
  _Unwind_Resume(a1);
}

void MIL::Builder::FunctionBuilder::FunctionBuilderImpl::CreateFunction(MIL::Builder::FunctionBuilder::FunctionBuilderImpl *this)
{
  std::map<std::string,MIL::IRValueType const*>::map[abi:ne200100](&v10, this);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v9, this + 168);
  v8[0] = 0;
  v8[1] = 0;
  v7 = v8;
  v2 = *(this + 7);
  if (v2)
  {
    MIL::Builder::BlockBuilder::CreateBlock(*(v2 + 40));
  }

  v3 = *(this + 20);
  v5 = *(this + 19);
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(this + 111) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 11), *(this + 12));
  }

  else
  {
    __p = *(this + 88);
  }

  MIL::IRFunction::Make();
}

void sub_218019B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::destroy(&a19, a20);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a22);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(v22 - 56, *(v22 - 48));
  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::FunctionBuilder::AddInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v5 = MIL::Builder::FunctionBuilder::FunctionBuilderImpl::AddInput(v4, &__p.__r_.__value_.__l.__data_, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_218019C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Builder::FunctionBuilder::FunctionBuilderImpl::AddInput(uint64_t a1, const void **a2, uint64_t a3)
{
  if (a1 + 8 != std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(a1, a2))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = a1;
    v9 = exception;
    v11 = *(v8 + 152);
    v10 = *(v8 + 160);
    v13[0] = v11;
    v13[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::__init(&v12, "input already defined", 0x15uLL);
    MIL::InvalidOperationError::InvalidOperationError(v9, v13, &v12);
  }

  (*(**(a1 + 80) + 80))(*(a1 + 80), a2, a3, 1);
  v13[3] = a2;
  *(std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2) + 56) = a3;
  return MIL::Builder::FunctionBuilder::FunctionBuilderImpl::TryGetVariable(a1, a2);
}

void sub_218019D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v18)
  {
    __cxa_free_exception(v17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::FunctionBuilder::FunctionBuilderImpl::GetInputs(MIL::Builder::FunctionBuilder::FunctionBuilderImpl *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a2, *(this + 2));
  v5 = *this;
  if (*this != (this + 8))
  {
    do
    {
      Variable = MIL::Builder::FunctionBuilder::FunctionBuilderImpl::TryGetVariable(this, v5 + 32);
      std::__hash_table<MIL::Builder::Variable const*,std::hash<MIL::Builder::Variable const*>,std::equal_to<MIL::Builder::Variable const*>,std::allocator<MIL::Builder::Variable const*>>::__emplace_unique_key_args<MIL::Builder::Variable const*,MIL::Builder::Variable const*>(a2, &Variable);
      v6 = *(v5 + 8);
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
          v7 = *(v5 + 16);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != (this + 8));
  }
}

void MIL::Builder::FunctionBuilder::AddBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *__p = *a2;
  v4 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  MIL::Builder::FunctionBuilder::FunctionBuilderImpl::AddBlock(v2, __p);
}

void sub_218019F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::FunctionBuilder::FunctionBuilderImpl::AddBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = *(a1 + 24);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, *a2, *(a2 + 8));
  }

  else
  {
    v3 = *a2;
  }

  MIL::Builder::BlockBuilder::Make();
}

void sub_21801A094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Unwind_Resume(exception_object);
}

std::string *MIL::Builder::FunctionBuilder::FunctionBuilderImpl::SetSpecialization(uint64_t a1, std::string *a2)
{
  if (!std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::find<std::string>((a1 + 40), &a2->__r_.__value_.__l.__data_))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v6 = std::string::append(&v8, ".");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v9);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return std::string::operator=((a1 + 88), a2);
}

void sub_21801A1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void MIL::Builder::FunctionBuilder::SetLocation(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  MIL::Builder::FunctionBuilder::FunctionBuilderImpl::SetLocation(v2, &v3);
  if (*(&v3 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v3 + 1));
  }
}

void sub_21801A2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::FunctionBuilder::FunctionBuilderImpl::SetLocation(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot set location to nullptr.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 160);
  *(a1 + 152) = v2;
  *(a1 + 160) = v3;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void MIL::Builder::FunctionBuilder::SetAttribute(uint64_t a1, __int128 *a2, uint64_t a3)
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
  MIL::Builder::FunctionBuilder::FunctionBuilderImpl::SetAttribute(v3, __p, &v5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_21801A410(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  MIL::Builder::BlockBuilder::ReplaceUsesOfInputVariable(va);
  _Unwind_Resume(a1);
}

void MIL::Builder::FunctionBuilder::FunctionBuilderImpl::SetAttribute(uint64_t a1, const void **a2, __int128 *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 168), a2);
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

const void **MIL::Builder::FunctionBuilder::TryGetAttribute@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((*(a1 + 8) + 168), a2);
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

uint64_t MIL::Builder::FunctionBuilder::GetContext@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 8);
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

void MIL::Builder::FunctionBuilder::AddBlock(uint64_t a1, __int128 *a2, __int128 *a3)
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
  *(a3 + 1) = 0;
  MIL::Builder::FunctionBuilder::FunctionBuilderImpl::AddBlock(v3, __p, &v5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_21801A570(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  MIL::Builder::BlockBuilder::ReplaceUsesOfInputVariable(va);
  _Unwind_Resume(a1);
}

const void **MIL::Builder::FunctionBuilder::FunctionBuilderImpl::AddBlock(uint64_t a1, const void **a2, MIL::Builder::BlockBuilder **a3)
{
  if (!*a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add nullptr BlockBuilder.");
    goto LABEL_23;
  }

  OpsetName = MIL::Builder::BlockBuilder::GetOpsetName(*a3);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  v9 = *(OpsetName + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(OpsetName + 8);
  }

  if (v8 != v9 || (v7 >= 0 ? (v11 = a2) : (v11 = *a2), v10 >= 0 ? (v12 = OpsetName) : (v12 = *OpsetName), memcmp(v11, v12, v8)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot register a BlockBuilder with a different name than its specialization.");
    goto LABEL_23;
  }

  v13 = *(a1 + 24);
  MIL::Builder::BlockBuilder::GetContext(*a3, &v22);
  v14 = v22.__r_.__value_.__r.__words[0];
  if (v22.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22.__r_.__value_.__l.__size_);
  }

  if (v13 != v14)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This FunctionBuilder holds a different MILContext than the one used to create this BlockBuilders.");
LABEL_23:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  MIL::Builder::BlockBuilder::SetParent(*a3, *(a1 + 80));
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>>>::__emplace_unique_key_args<std::string,std::string&,std::shared_ptr<MIL::Builder::BlockBuilder>&>((a1 + 40), a2);
  if ((v16 & 1) == 0)
  {
    v18 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v19 = std::string::append(&v21, " already has a Block in this FunctionBuilder.");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v18, &v22);
    __cxa_throw(v18, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_21801A768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void MIL::Builder::FunctionBuilder::ClearInputs(MIL::Builder::FunctionBuilder *this)
{
  v1 = *(this + 1);
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(v1, *(v1 + 8));
  *v1 = v1 + 8;
  *(v1 + 16) = 0;
  *(v1 + 8) = 0;
}

uint64_t std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<MIL::IRBlock>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__construct_node<std::string const&,std::unique_ptr<MIL::IRBlock>>();
  }

  return v2;
}

uint64_t MIL::Builder::FunctionBuilder::FunctionBuilderImpl::TryGetVariable(uint64_t a1, uint64_t a2)
{
  result = (*(**(a1 + 80) + 24))(*(a1 + 80), a2, 1);
  if (result)
  {
    v8 = 0;
    v5 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>>>::__emplace_unique_key_args<std::string,std::string const&,decltype(nullptr)>((a1 + 112), a2);
    if (v6)
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

    return v5[5];
  }

  return result;
}

void sub_21801AADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<MIL::Builder::Variable const*,std::hash<MIL::Builder::Variable const*>,std::equal_to<MIL::Builder::Variable const*>,std::allocator<MIL::Builder::Variable const*>>::__emplace_unique_key_args<MIL::Builder::Variable const*,MIL::Builder::Variable const*>(void *a1, void *a2)
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

uint64_t *std::shared_ptr<MIL::Builder::BlockBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::BlockBuilder,std::default_delete<MIL::Builder::BlockBuilder>,0>(uint64_t *result, uint64_t *a2)
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

void std::__shared_ptr_pointer<MIL::Builder::BlockBuilder  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CEAFEA0);
}

uint64_t std::__shared_ptr_pointer<MIL::Builder::BlockBuilder  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Builder::BlockBuilder  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>>>::__emplace_unique_key_args<std::string,std::string&,std::shared_ptr<MIL::Builder::BlockBuilder>&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>>>::__construct_node_hash<std::string&,std::shared_ptr<MIL::Builder::BlockBuilder>&>();
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

void sub_21801B0D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MIL::Builder::FunctionBuilder::FunctionBuilderImpl::FunctionBuilderImpl(uint64_t a1, void *a2, MIL::IRObject **a3)
{
  v6 = (*(**a3 + 128))();
  std::map<std::string,MIL::IRValueType const*>::map[abi:ne200100](a1, v6);
  *(a1 + 24) = *a2;
  v7 = a2[1];
  *(a1 + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0;
  v8 = (*(**a3 + 32))();
  if (*(v8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *v8, *(v8 + 8));
  }

  else
  {
    v9 = *v8;
    *(a1 + 104) = *(v8 + 16);
    *(a1 + 88) = v9;
  }

  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1065353216;
  LocationPtr = MIL::IRObject::GetLocationPtr(*a3);
  *(a1 + 152) = *LocationPtr;
  v11 = LocationPtr[1];
  *(a1 + 160) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  Attributes = MIL::IRObject::GetAttributes(*a3);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(a1 + 168, Attributes);
  v13 = (*(*(*a3 + 8) + 32))();
  std::unordered_map<std::string,MIL::IRValueType const*>::unordered_map(v16, v13);
  v14 = (*(*(*a3 + 8) + 64))();
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v15, v14);
  MIL::IRMutableScope::Make();
}

void sub_21801B544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a18);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a23);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v23 + 168);
  v27 = *(v23 + 160);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>>>::~__hash_table(v25);
  if (*(v23 + 111) < 0)
  {
    operator delete(*(v24 + 48));
  }

  v28 = *(v23 + 80);
  *(v23 + 80) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v24);
  v29 = *(v23 + 32);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(v23, *(v23 + 8));
  _Unwind_Resume(a1);
}

void *std::shared_ptr<MIL::Builder::BlockBuilder>::operator=[abi:ne200100]<MIL::Builder::BlockBuilder,std::default_delete<MIL::Builder::BlockBuilder>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::Builder::BlockBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::BlockBuilder,std::default_delete<MIL::Builder::BlockBuilder>,0>(&v6, a2);
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::Builder::BlockBuilder>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_21801B8F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void MIL::Builder::FunctionBuilder::FunctionBuilderImpl::~FunctionBuilderImpl(MIL::Builder::FunctionBuilder::FunctionBuilderImpl *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 168);
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>>>::~__hash_table(this + 112);
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(this + 40);
  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(this, *(this + 1));
}

void MIL::Builder::FunctionBuilder::FunctionBuilderImpl::FunctionBuilderImpl(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  *(a1 + 24) = *a2;
  v2 = a2[1];
  *(a1 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  v6 = 0u;
  v7 = 0u;
  v8 = 1065353216;
  v3 = 0u;
  v4 = 0u;
  v5 = 1065353216;
  MIL::IRMutableScope::Make();
}

void sub_21801BB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    MIL::Builder::FunctionBuilder::FunctionBuilderImpl::FunctionBuilderImpl();
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>>>::~__hash_table((v17 + 3));
  if (*(v15 + 111) < 0)
  {
    operator delete(*v17);
  }

  v19 = *(v16 + 40);
  *(v16 + 40) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v16);
  v20 = *(v15 + 32);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(v15, *(v15 + 8));
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::~OperationBuilder(MIL::Builder::OperationBuilder *this)
{
  *this = &unk_2829E4AE0;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    MIL::Builder::OperationBuilder::OperationBuilderImpl::~OperationBuilderImpl(v2);
    MEMORY[0x21CEAFEA0]();
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  MIL::Builder::OperationBuilder::~OperationBuilder(this);

  JUMPOUT(0x21CEAFEA0);
}

void MIL::Builder::OperationBuilder::OperationBuilder(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E4AE0;
  std::make_unique[abi:ne200100]<MIL::Builder::OperationBuilder::OperationBuilderImpl,std::shared_ptr<MIL::IROperator const> &,std::shared_ptr<MIL::MILContext>,MIL::Builder::BlockBuilder *&,0>();
}

{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E4AE0;
  std::make_unique[abi:ne200100]<MIL::Builder::OperationBuilder::OperationBuilderImpl,std::shared_ptr<MIL::IROperation> &,std::shared_ptr<MIL::MILContext>,std::string,MIL::Builder::BlockBuilder *&,0>();
}

{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E4AE0;
  std::make_unique[abi:ne200100]<MIL::Builder::OperationBuilder::OperationBuilderImpl,std::shared_ptr<MIL::IROperation>,std::shared_ptr<MIL::MILContext>,std::string,MIL::IRScope const*&,MIL::Builder::BlockBuilder *&,0>();
}

{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2829E4AE0;
  std::make_unique[abi:ne200100]<MIL::Builder::OperationBuilder::OperationBuilderImpl,MIL::IROperation const,std::shared_ptr<MIL::MILContext>,std::string,MIL::IRScope const*&,MIL::Builder::BlockBuilder *&,0>();
}

void sub_21801BD50(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_21801BE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_21801BEC0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_21801BFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::make_unique[abi:ne200100]<MIL::Builder::OperationBuilder::OperationBuilderImpl,std::shared_ptr<MIL::IROperation> &,std::shared_ptr<MIL::MILContext>,std::string,MIL::Builder::BlockBuilder *&,0>((v17 | 8), (v16 + 8));
  MEMORY[0x21CEAFEA0](v15, v14);
  _Unwind_Resume(a1);
}

void sub_21801C078(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_21801C184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::make_unique[abi:ne200100]<MIL::Builder::OperationBuilder::OperationBuilderImpl,std::shared_ptr<MIL::IROperation> &,std::shared_ptr<MIL::MILContext>,std::string,MIL::Builder::BlockBuilder *&,0>((v16 | 8), (v17 | 8));
  MEMORY[0x21CEAFEA0](v15, v14);
  _Unwind_Resume(a1);
}

void sub_21801C22C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_21801C314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
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

void MIL::Builder::OperationBuilder::AddInput(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *v13 = *a2;
  v14 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *__p = *a3;
  v12 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInput(v8, v13, __p, v10);
}

void sub_21801C420(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  MIL::Builder::OperationBuilder::AddInput(va, va1, v3);
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInput(uint64_t a1, const void **a2, uint64_t a3, void *a4)
{
  if (*a4)
  {
    v7 = a2;
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 16, a2);
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v6, *a3, *(a3 + 8));
    }

    else
    {
      v6 = *a3;
    }

    MIL::IRArgument::Make();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInput(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
  }

  else
  {
    v13 = *a2;
  }

  v9 = a3[1];
  v12[0] = *a3;
  v12[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a4[1];
  v11[0] = *a4;
  v11[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInput(v8, &v13.__r_.__value_.__l.__data_, v12, v11);
}

void sub_21801C7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 + 8);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInput(uint64_t a1, const void **a2, void *a3, void *a4)
{
  if (*a3)
  {
    if (*a4)
    {
      std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 16, a2);
      v5 = a3[1];
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      MIL::IRArgument::Make();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot bind an input to a null IRValue.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddOutput(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddOutput(v8, __p, a3, v10);
}

void sub_21801CAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddOutput(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!*a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an output to a null OperationBuilder.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v8 = *v6;
    v9 = *(v6 + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Name = MIL::IRNamedValueType::GetName(v8);
    v11 = *(a2 + 23);
    if (v11 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = *(a2 + 8);
    }

    v13 = *(Name + 23);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(Name + 8);
    }

    if (v12 == v13)
    {
      break;
    }

    v17 = 0;
    if (v9)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v17)
    {
      goto LABEL_24;
    }

    v6 += 16;
    if (v6 == v7)
    {
      v6 = v7;
LABEL_24:
      v7 = *(a1 + 48);
LABEL_25:
      if (v6 == v7)
      {
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
        }

        else
        {
          v22 = *a2;
        }

        MIL::IRNamedValueType::Make();
      }

      v19 = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      v20 = std::string::append(&v23, " is already bound for this Operation.");
      v21 = *&v20->__r_.__value_.__l.__data_;
      v24.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v24.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v19, &v24);
      __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  if (v11 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = Name;
  }

  else
  {
    v16 = *Name;
  }

  v17 = memcmp(v15, v16, v12) == 0;
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_20:
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  goto LABEL_21;
}

void sub_21801CE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v35 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v36);
  goto LABEL_8;
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::CreateOperation(MIL::Builder::OperationBuilder::OperationBuilderImpl *this)
{
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](&v23, this + 2);
  memset(v22, 0, sizeof(v22));
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType>*,std::shared_ptr<MIL::IRNamedValueType>*>(v22, *(this + 5), *(this + 6), (*(this + 6) - *(this + 5)) >> 4);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v21, this + 64);
  __src = 0;
  v19 = 0;
  v20 = 0;
  std::vector<std::shared_ptr<MIL::IROperation>>::reserve(&__src, (*(this + 21) - *(this + 20)) >> 4);
  v2 = *(this + 20);
  for (i = *(this + 21); v2 != i; v2 += 2)
  {
    MIL::Builder::BlockBuilder::CreateBlock(&v24, *v2);
    if (v24)
    {
      operator new();
    }

    v24 = 0;
    v4 = v19;
    if (v19 >= v20)
    {
      v5 = __src;
      v6 = v19 - __src;
      v7 = (v19 - __src) >> 4;
      v8 = v7 + 1;
      if ((v7 + 1) >> 60)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v9 = v20 - __src;
      if ((v20 - __src) >> 3 > v8)
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

      v25[4] = &__src;
      if (v10)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRBlock>>>(&__src, v10);
      }

      v11 = (16 * v7);
      *v11 = 0;
      v11[1] = 0;
      memcpy(0, v5, v6);
      v12 = __src;
      v13 = v20;
      __src = 0;
      v19 = (16 * v7 + 16);
      v20 = 0;
      v25[2] = v12;
      v25[3] = v13;
      v25[0] = v12;
      v25[1] = v12;
      std::__split_buffer<std::shared_ptr<MIL::IRBlock>>::~__split_buffer(v25);
      v14 = v24;
      v19 = (16 * v7 + 16);
      v24 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }

    else
    {
      *v19 = 0;
      *(v4 + 1) = 0;
      v19 = v4 + 16;
    }
  }

  v15 = *(this + 23);
  if (v15)
  {
    (*(*v15 + 16))(v15, this + 200);
  }

  v16 = *(this + 14);
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(this + 1);
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::IROperation::Make();
}

void sub_21801D260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, void *a26)
{
  *(v26 - 136) = &a14;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100]((v26 - 136));
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a17);
  a17 = &a22;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a17);
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a25, a26);
  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::OperationBuilder::GetNumArguments(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 24);
  v3 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(v2 + 16, a2);
  if (v2 + 24 == v3)
  {
    return 0;
  }

  else
  {
    return (*(v3 + 64) - *(v3 + 56)) >> 4;
  }
}

uint64_t MIL::Builder::OperationBuilder::OperationBuilderImpl::GetArgumentForParameter(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(a1 + 16, a2);
  if (a1 + 24 == v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v19 = std::string::append(&v49, ".");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v50);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = v6;
  v8 = *(v6 + 56);
  if (a3 >= ((*(v6 + 64) - v8) >> 4))
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    v22 = a3;
    v23 = v21;
    std::to_string(&v44, v22);
    v24 = std::string::insert(&v44, 0, "Requested argument ");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v45, " for parameter ");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = *(a2 + 23);
    if (v28 >= 0)
    {
      v29 = a2;
    }

    else
    {
      v29 = *a2;
    }

    if (v28 >= 0)
    {
      v30 = *(a2 + 23);
    }

    else
    {
      v30 = *(a2 + 8);
    }

    v31 = std::string::append(&v46, v29, v30);
    v32 = *&v31->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = std::string::append(&v47, ", but only ");
    v34 = *&v33->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v43, (*(v7 + 64) - *(v7 + 56)) >> 4);
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v43;
    }

    else
    {
      v35 = v43.__r_.__value_.__r.__words[0];
    }

    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v43.__r_.__value_.__l.__size_;
    }

    v37 = std::string::append(&v48, v35, size);
    v38 = *&v37->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    v39 = std::string::append(&v49, " arguments are bound.");
    v40 = *&v39->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v23, &v50);
    __cxa_throw(v23, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = v8 + 16 * a3;
  v11 = *v9;
  v10 = *(v9 + 8);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 152) && (*(*v11 + 16))(v11))
  {
    v12 = *(a1 + 152);
    Name = MIL::IRArgument::GetName(v11);
    Variable = MIL::Builder::BlockBuilder::GetVariable(v12, Name);
LABEL_10:
    v16 = Variable;
    goto LABEL_13;
  }

  if ((*(*v11 + 16))(v11))
  {
    v15 = MIL::IRArgument::GetName(v11);
    Variable = MIL::Builder::OperationBuilder::OperationBuilderImpl::GetVariable(a1, v15);
    goto LABEL_10;
  }

  (*(*v11 + 48))(&v41, v11);
  v16 = MIL::Builder::OperationBuilder::OperationBuilderImpl::GetVariable(a1, &v41);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

LABEL_13:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v16;
}

void sub_21801D6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v44 - 57) < 0)
  {
    operator delete(*(v44 - 80));
  }

  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v43 & 1) == 0)
    {
LABEL_20:
      _Unwind_Resume(a1);
    }
  }

  else if (!v43)
  {
    goto LABEL_20;
  }

  __cxa_free_exception(v42);
  goto LABEL_20;
}

const void **MIL::Builder::OperationBuilder::OperationBuilderImpl::GetParameterNames@<X0>(const void **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = this[2];
  v4 = this + 3;
  if (v3 != this + 3)
  {
    do
    {
      this = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a2, v3 + 4);
      v5 = v3[1];
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
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  return this;
}

void MIL::Builder::OperationBuilder::Make()
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

void sub_21801D9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v14)
  {
    MEMORY[0x21CEAFEA0](v13, v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_21801DB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MIL::Builder::OperationBuilder::Make(v14 | 8);
  _Unwind_Resume(a1);
}

void sub_21801DC34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MIL::Builder::OperationBuilder::Make(v14 | 8);
  _Unwind_Resume(a1);
}

void sub_21801DD44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v19)
  {
    MEMORY[0x21CEAFEA0](v18, v17);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::OperationBuilder::Make(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::Make();
}

{
  v3 = OUTLINED_FUNCTION_3(a1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v2);
  }

  if (v1)
  {
    OUTLINED_FUNCTION_1_0();
  }
}

void sub_21801DE00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::OperationBuilder::Make(void *a1)
{
  v2 = (*(**a1 + 216))(*a1);
  if (v2[1] == *v2)
  {
    v3 = *a1;
    v4 = a1[1];
    __p[5] = v3;
    __p[6] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    __p[3] = 0;
    __p[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    MIL::Builder::OperationBuilder::Make();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "If the operation may have nested blocks, please use the other OperationBuilder Make API which takes IROperation, MILContext and OpsetName");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::Make(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  a2[1] = 0;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  MIL::Builder::OperationBuilder::Make();
}

void sub_21801E02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Builder::OperationBuilder::OperationBuilderImpl::UpdateOwnership@<X0>(MIL::Builder::OperationBuilder::OperationBuilderImpl *this@<X0>, MIL::Builder::BlockBuilder *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 19))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "OperationBuilder is already part of another BlockBuilder.");
    goto LABEL_14;
  }

  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot update OperationBuilder's ownership to a null pointer.");
LABEL_14:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(this + 20);
  for (i = *(this + 21); v6 != i; v6 += 16)
  {
    v9 = *v6;
    v8 = *(v6 + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ScopePtr = MIL::Builder::BlockBuilder::GetScopePtr(a2);
    MIL::Builder::BlockBuilder::SetParent(v9, ScopePtr);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  *(this + 19) = a2;

  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__hash_table(a3, this + 28);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::RemoveOwningBlock(MIL::Builder::OperationBuilder::OperationBuilderImpl *this)
{
  *(this + 19) = 0;
  v1 = *(this + 20);
  for (i = *(this + 21); v1 != i; v1 += 16)
  {
    v3 = *v1;
    v4 = *(v1 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::Builder::BlockBuilder::SetParent(v3, 0);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_21801E20C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Builder::OperationBuilder::OperationBuilderImpl::GetOutput(MIL::Builder::OperationBuilder::OperationBuilderImpl *this, unint64_t a2, const MIL::Builder::OperationBuilder *a3)
{
  v4 = *(this + 5);
  if (a2 >= (*(this + 6) - v4) >> 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v34, a2);
    v15 = std::string::insert(&v34, 0, "Attempting to access output ");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v35, " for ");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = (*(**this + 16))();
    v20 = *(v19 + 23);
    if (v20 >= 0)
    {
      v21 = v19;
    }

    else
    {
      v21 = *v19;
    }

    if (v20 >= 0)
    {
      v22 = *(v19 + 23);
    }

    else
    {
      v22 = *(v19 + 8);
    }

    v23 = std::string::append(&v36, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v37, " operation, but only ");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v33, (*(this + 6) - *(this + 5)) >> 4);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v33;
    }

    else
    {
      v27 = v33.__r_.__value_.__r.__words[0];
    }

    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v33.__r_.__value_.__l.__size_;
    }

    v29 = std::string::append(&v38, v27, size);
    v30 = *&v29->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v31 = std::string::append(&v39, " outputs are defined.");
    v32 = *&v31->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v40);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = v4 + 16 * a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 19);
  Name = MIL::IRNamedValueType::GetName(v6);
  if (v8)
  {
    Variable = MIL::Builder::BlockBuilder::GetVariable(v8, Name);
  }

  else
  {
    Variable = MIL::Builder::OperationBuilder::OperationBuilderImpl::GetVariable(this, Name);
  }

  v11 = Variable;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v11;
}

void sub_21801E494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v49 - 57) < 0)
  {
    operator delete(*(v49 - 80));
  }

  if (*(v49 - 89) < 0)
  {
    operator delete(*(v49 - 112));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
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
LABEL_20:
      _Unwind_Resume(a1);
    }
  }

  else if (!v48)
  {
    goto LABEL_20;
  }

  __cxa_free_exception(v47);
  goto LABEL_20;
}

uint64_t MIL::Builder::OperationBuilder::OperationBuilderImpl::GetOutputName(MIL::Builder::OperationBuilder::OperationBuilderImpl *this, unint64_t a2)
{
  v2 = *(this + 5);
  if (a2 >= (*(this + 6) - v2) >> 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v27, a2);
    v8 = std::string::insert(&v27, 0, "Attempting to access output ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v28, " for ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = (*(**this + 16))();
    v13 = *(v12 + 23);
    if (v13 >= 0)
    {
      v14 = v12;
    }

    else
    {
      v14 = *v12;
    }

    if (v13 >= 0)
    {
      v15 = *(v12 + 23);
    }

    else
    {
      v15 = *(v12 + 8);
    }

    v16 = std::string::append(&v29, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v30, " operation, but only ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v26, (*(this + 6) - *(this + 5)) >> 4);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v26;
    }

    else
    {
      v20 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v31, v20, size);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v32, " outputs are defined.");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v33);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = *(v2 + 16 * a2);

  return MIL::IRNamedValueType::GetName(v3);
}

void sub_21801E7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v42 - 41) < 0)
  {
    operator delete(*(v42 - 64));
  }

  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  if (a40 < 0)
  {
    operator delete(a35);
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
    if ((v41 & 1) == 0)
    {
LABEL_20:
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_20;
  }

  __cxa_free_exception(v40);
  goto LABEL_20;
}

uint64_t MIL::Builder::OperationBuilder::OperationBuilderImpl::GetOutputType(MIL::Builder::OperationBuilder::OperationBuilderImpl *this, unint64_t a2)
{
  v2 = *(this + 5);
  if (a2 >= (*(this + 6) - v2) >> 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v27, a2);
    v8 = std::string::insert(&v27, 0, "Attempting to access output ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v28, " for ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = (*(**this + 16))();
    v13 = *(v12 + 23);
    if (v13 >= 0)
    {
      v14 = v12;
    }

    else
    {
      v14 = *v12;
    }

    if (v13 >= 0)
    {
      v15 = *(v12 + 23);
    }

    else
    {
      v15 = *(v12 + 8);
    }

    v16 = std::string::append(&v29, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v30, " operation, but only ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v26, (*(this + 6) - *(this + 5)) >> 4);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v26;
    }

    else
    {
      v20 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v31, v20, size);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v32, " outputs are defined.");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v33);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = *(v2 + 16 * a2);

  return MIL::IRNamedValueType::GetType(v3);
}

void sub_21801EAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v42 - 41) < 0)
  {
    operator delete(*(v42 - 64));
  }

  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  if (a40 < 0)
  {
    operator delete(a35);
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
    if ((v41 & 1) == 0)
    {
LABEL_20:
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_20;
  }

  __cxa_free_exception(v40);
  goto LABEL_20;
}

void *MIL::Builder::OperationBuilder::OperationBuilderImpl::GetChildOperations@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  if (!this[19])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Attempting to get child operations of an OperationBuilder that is not part of a block.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = this;
  v4 = this[5];
  v5 = this[6];
  while (v4 != v5)
  {
    v6 = v3[19];
    Name = MIL::IRNamedValueType::GetName(*v4);
    this = MIL::Builder::BlockBuilder::GetOperationsByInput(v6, Name);
    for (i = this[2]; i; i = *i)
    {
      this = std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder>>>::__emplace_unique_key_args<std::shared_ptr<MIL::Builder::OperationBuilder>,std::shared_ptr<MIL::Builder::OperationBuilder> const&>(a2, i + 2);
    }

    v4 += 2;
  }

  return this;
}

const void **MIL::Builder::OperationBuilder::OperationBuilderImpl::GetConstChildOperations@<X0>(const void **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  if (!this[19])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Attempting to get child operations of an OperationBuilder that is not part of a block.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = this;
  v3 = this[5];
  v4 = this[6];
  while (v3 != v4)
  {
    v5 = v2[19];
    Name = MIL::IRNamedValueType::GetName(*v3);
    this = MIL::Builder::BlockBuilder::GetOperationsByInput(v5, Name);
    if (this[2])
    {
      std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder const>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder const>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder const>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder const>>>::__emplace_unique_impl<std::shared_ptr<MIL::Builder::OperationBuilder> const&>();
    }

    v3 += 2;
  }

  return this;
}

uint64_t MIL::Builder::OperationBuilder::OperationBuilderImpl::GetOpsetName(MIL::Builder::OperationBuilder::OperationBuilderImpl *this)
{
  v1 = *(this + 143);
  if (v1 < 0)
  {
    v1 = *(this + 16);
  }

  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "this OperationBuilder does not have an opset name.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return this + 120;
}

uint64_t MIL::Builder::OperationBuilder::TryGetOperatorSharedPtr@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
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

void MIL::Builder::OperationBuilder::RenameArgument(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 24);
  *__p = *a3;
  v7 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(&v5, (a1 + 8));
  MIL::Builder::OperationBuilder::OperationBuilderImpl::RenameInput(v4, a2, __p, &v5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_21801EF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::RenameInput(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = a1[2];
  v7 = a1 + 3;
  if (v6 != a1 + 3)
  {
    do
    {
      v8 = v6[7];
      if (v6[8] != v8)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          if ((*(**(v8 + v9) + 16))(*(v8 + v9)))
          {
            Name = MIL::IRArgument::GetName(*(v8 + v9));
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
                  std::string::__init_copy_ctor_external(&v26, *a3, *(a3 + 8));
                }

                else
                {
                  v26 = *a3;
                }

                MIL::IRArgument::Make();
              }
            }
          }

          ++v10;
          v8 = v6[7];
          v9 += 16;
        }

        while (v10 < (v6[8] - v8) >> 4);
      }

      v17 = v6[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v6[2];
          v19 = *v18 == v6;
          v6 = v18;
        }

        while (!v19);
      }

      v6 = v18;
    }

    while (v18 != v7);
  }

  v20 = a1[19];
  if (v20)
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, *a3, *(a3 + 8));
    }

    else
    {
      v25 = *a3;
    }

    v24 = *a4;
    *a4 = 0;
    *(a4 + 1) = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, *a2, *(a2 + 8));
    }

    else
    {
      v23 = *a2;
    }

    MIL::Builder::BlockBuilder::UpdateOpInput(v20, &v25, &v24, &v23);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (*(&v24 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v24 + 1));
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }
}

void sub_21801F204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::GetInputArguments(MIL::Builder::OperationBuilder::OperationBuilderImpl *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a2, *(this + 4));
  v5 = *(this + 2);
  if (v5 != (this + 24))
  {
    do
    {
      if (*(v5 + 8) != *(v5 + 7))
      {
        LODWORD(v6) = 0;
        do
        {
          ArgumentForParameter = MIL::Builder::OperationBuilder::OperationBuilderImpl::GetArgumentForParameter(this, v5 + 32, v6);
          std::__hash_table<MIL::Builder::Variable const*,std::hash<MIL::Builder::Variable const*>,std::equal_to<MIL::Builder::Variable const*>,std::allocator<MIL::Builder::Variable const*>>::__emplace_unique_key_args<MIL::Builder::Variable const*,MIL::Builder::Variable const*>(a2, &ArgumentForParameter);
          v6 = (v6 + 1);
        }

        while (v6 < (*(v5 + 8) - *(v5 + 7)) >> 4);
      }

      v7 = *(v5 + 1);
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
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != (this + 24));
  }
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::GetOutputs(MIL::Builder::OperationBuilder::OperationBuilderImpl *this@<X0>, const MIL::Builder::OperationBuilder *a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::string const*>::reserve(a3, (*(this + 6) - *(this + 5)) >> 4);
  if (*(this + 6) != *(this + 5))
  {
    v6 = 0;
    do
    {
      Output = MIL::Builder::OperationBuilder::OperationBuilderImpl::GetOutput(this, v6, a2);
      v9 = a3[1];
      v8 = a3[2];
      if (v9 >= v8)
      {
        v11 = (v9 - *a3) >> 3;
        if ((v11 + 1) >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - *a3;
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a3, v14);
        }

        v15 = (8 * v11);
        *v15 = Output;
        v10 = 8 * v11 + 8;
        v16 = a3[1] - *a3;
        v17 = v15 - v16;
        memcpy(v15 - v16, *a3, v16);
        v18 = *a3;
        *a3 = v17;
        a3[1] = v10;
        a3[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v9 = Output;
        v10 = (v9 + 8);
      }

      a3[1] = v10;
      ++v6;
    }

    while (v6 < (*(this + 6) - *(this + 5)) >> 4);
  }
}

void sub_21801F4D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MIL::Builder::OperationBuilder::SetAttribute@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v7 = *(a3 + 8);
  v9 = *a3;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::SetAttribute(v6, __p, &v9);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  return std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
}

void sub_21801F590(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  MIL::Builder::BlockBuilder::ReplaceUsesOfInputVariable(va);
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::SetAttribute(uint64_t a1, const void **a2, const void **a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 64), a2);
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

uint64_t MIL::Builder::OperationBuilder::OperationBuilderImpl::GetOutputType(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v17;
  }

  if (v3 != v4)
  {
    while (1)
    {
      v5 = *v3;
      v6 = *(v3 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      Name = MIL::IRNamedValueType::GetName(v5);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v9 = *(Name + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(Name + 8);
      }

      if (size == v9)
      {
        break;
      }

      v13 = 0;
      if (v6)
      {
        goto LABEL_25;
      }

LABEL_26:
      if (v13)
      {
        goto LABEL_29;
      }

      v3 += 16;
      if (v3 == v4)
      {
        v3 = v4;
        goto LABEL_29;
      }
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v10 >= 0)
    {
      v12 = Name;
    }

    else
    {
      v12 = *Name;
    }

    v13 = memcmp(p_p, v12, size) == 0;
    if (!v6)
    {
      goto LABEL_26;
    }

LABEL_25:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_26;
  }

LABEL_29:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v3 == *(a1 + 48))
  {
    Type = 0;
  }

  else
  {
    Type = MIL::IRNamedValueType::GetType(*v3);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return Type;
}

void sub_21801F7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::OperationBuilder::SetLocation(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 24);
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  MIL::Builder::OperationBuilder::OperationBuilderImpl::SetLocation(v2, &v3);
  if (*(&v3 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v3 + 1));
  }
}

void sub_21801F85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::SetLocation(uint64_t a1, uint64_t *a2)
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
  v4 = *(a1 + 112);
  *(a1 + 104) = v2;
  *(a1 + 112) = v3;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void MIL::Builder::OperationBuilder::AddBlock(uint64_t a1, uint64_t a2)
{
  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddBlock(*(a1 + 24), a2);
}

{
  v2 = *(a1 + 24);
  v3 = *(a2 + 8);
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddBlock(v2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddBlock(void *a1, uint64_t a2)
{
  v2 = a1[23];
  if (v2)
  {
    v5 = a1[19];
    if (v5)
    {
      MIL::Builder::BlockBuilder::GetScopePtr(v5);
      v2 = a1[23];
    }

    v6 = a1[24];
    v9 = v2;
    v10 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    MIL::Builder::BlockBuilder::Make();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Need to set the context of this Operation in order to add a block to it.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_21801FAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_21801FB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void **MIL::Builder::OperationBuilder::OperationBuilderImpl::AddBlock(uint64_t a1, MIL::Builder::BlockBuilder **a2)
{
  v4 = *(a1 + 152);
  if (v4)
  {
    v5 = *a2;
    ScopePtr = MIL::Builder::BlockBuilder::GetScopePtr(v4);
    MIL::Builder::BlockBuilder::SetParent(v5, ScopePtr);
  }

  return std::vector<std::shared_ptr<MIL::IRArgument>>::push_back[abi:ne200100]((a1 + 160), a2);
}

uint64_t MIL::Builder::OperationBuilder::GetBlocks@<X0>(MIL::Builder::OperationBuilder *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 3);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<std::shared_ptr<MIL::Builder::BlockBuilder>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::Builder::BlockBuilder>*,std::shared_ptr<MIL::Builder::BlockBuilder>*>(a2, *(v2 + 160), *(v2 + 168), (*(v2 + 168) - *(v2 + 160)) >> 4);
}

void MIL::Builder::OperationBuilder::SetContext(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 24);
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  MIL::Builder::OperationBuilder::OperationBuilderImpl::SetContext(v2, &v3);
  if (*(&v3 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v3 + 1));
  }
}

void sub_21801FC40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::SetContext(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 184);
  v3 = *a2;
  if (v2)
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot change the context of an OperationBuilder that already has one.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = *(a1 + 192);
  *(a1 + 184) = v3;
  *(a1 + 192) = v5;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

uint64_t MIL::Builder::OperationBuilder::GetContext@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  v4 = *(v2 + 184);
  v3 = *(v2 + 192);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void MIL::Builder::OperationBuilder::AddInput(uint64_t a1@<X0>, uint64_t a2@<X1>, MIL::Builder::Variable::VariableImpl **a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  *&v10 = *a4;
  *(&v10 + 1) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInput(v8, __p, a3, &v10);
}

void sub_21801FDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInput(uint64_t a1, __int128 *a2, MIL::Builder::Variable::VariableImpl **a3, __int128 *a4)
{
  if (a3)
  {
    if (*a4)
    {
      Name = MIL::Builder::Variable::TryGetName(a3);
      if (Name)
      {
        v18 = *(a2 + 2);
        v17 = *a2;
        *(a2 + 1) = 0;
        *(a2 + 2) = 0;
        *a2 = 0;
        if (*(Name + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v16, *Name, *(Name + 1));
        }

        else
        {
          v9 = *Name;
          v16.__r_.__value_.__r.__words[2] = *(Name + 2);
          *&v16.__r_.__value_.__l.__data_ = v9;
        }

        v15 = *a4;
        *a4 = 0;
        *(a4 + 1) = 0;
        MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInput(a1, &v17, &v16, &v15);
      }

      v13 = *a2;
      v14 = *(a2 + 2);
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *a2 = 0;
      MIL::Builder::Variable::TryGetValueSharedPtr(a3, &v12);
      v11 = *a4;
      *a4 = 0;
      *(a4 + 1) = 0;
      MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInput(a1, &v13, &v12, &v11);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add a null Variable as an input.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_21801FF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::OperationBuilder::AddInputBool(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<BOOL>(v8, __p, a3, v10);
}

{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<BOOL>(v8, __p, a3, v10);
}

void sub_2180200D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = *(a3 + 8);
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 2, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputString(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v13 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a3, *(a3 + 8));
  }

  else
  {
    v11 = *a3;
  }

  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<std::string>(v8, __p, &v11, v10);
}

void sub_2180203C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  v25 = *(v23 + 8);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<std::string>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputBFloat16(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 a3@<W2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Bf16>(v8, __p, a3, v10);
}

void sub_21802071C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Bf16>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputFloat16(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 a3@<W2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Fp16>(v8, __p, a3, v10);
}

void sub_2180209DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Fp16>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputFloat8E5M2(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Fp8E5M2>(v8, __p, a3, v10);
}

void sub_218020C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Fp8E5M2>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputFloat8E4M3FN(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Fp8E4M3FN>(v8, __p, a3, v10);
}

void sub_218020F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Fp8E4M3FN>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputFloat32(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a3, (a1 + 8));
  v6 = *(a1 + 24);
  *__p = *a2;
  v10 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v7 = a3[1];
  v8[0] = *a3;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<float>(v6, __p, v8);
}

void sub_218021224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<float>(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 184))
  {
    if (*a3)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputFloat64(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a3, (a1 + 8));
  v6 = *(a1 + 24);
  *__p = *a2;
  v10 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v7 = a3[1];
  v8[0] = *a3;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<double>(v6, __p, v8);
}

void sub_2180214F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<double>(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 184))
  {
    if (*a3)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputInt4(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Int4>(v8, __p, a3, v10);
}

void sub_2180217BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Int4>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputInt8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<signed char>(v8, __p, a3, v10);
}

void sub_218021B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<signed char>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputInt16(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<short>(v8, __p, a3, v10);
}

void sub_218021DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<short>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputInt32(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<int>(v8, __p, a3, v10);
}

void sub_21802209C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<int>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputInt64(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<long long>(v8, __p, a3, v10);
}

void sub_21802235C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<long long>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt1(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt1>(v8, __p, a3, v10);
}

void sub_21802261C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt1>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt2(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt2>(v8, __p, a3, v10);
}

void sub_21802297C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt2>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt3(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt3>(v8, __p, a3, v10);
}

void sub_218022CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt3>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt4(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt4>(v8, __p, a3, v10);
}

void sub_21802303C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt4>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt6(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt6>(v8, __p, a3, v10);
}

void sub_21802339C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt6>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<unsigned char>(v8, __p, a3, v10);
}

void sub_2180236FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<unsigned char>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt16(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<unsigned short>(v8, __p, a3, v10);
}

void sub_2180239BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<unsigned short>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt32(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<unsigned int>(v8, __p, a3, v10);
}

void sub_218023C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<unsigned int>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt64(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<unsigned long long>(v8, __p, a3, v10);
}

void sub_218023F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 184))
  {
    if (*a4)
    {
      MIL::IRTensorValueType::MakeScalar();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_2180241FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::AddInputString(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<std::string>(v8, __p, a3, v10);
}

void sub_218024558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<std::string>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 3, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputBFloat16(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Bf16>(v8, __p, a3, v10);
}

void sub_2180248C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Bf16>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = (a3[1] - *a3) >> 1;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 7, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputFloat16(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Fp16>(v8, __p, a3, v10);
}

void sub_218024C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Fp16>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = (a3[1] - *a3) >> 1;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 4, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputFloat8E5M2(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Fp8E5M2>(v8, __p, a3, v10);
}

void sub_218024F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Fp8E5M2>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = a3[1] - *a3;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 25, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputFloat8E4M3FN(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Fp8E4M3FN>(v8, __p, a3, v10);
}

void sub_2180252F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Fp8E4M3FN>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = a3[1] - *a3;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 24, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputFloat32(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<float>(v8, __p, a3, v10);
}

void sub_218025650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<float>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = (a3[1] - *a3) >> 2;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 5, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputFloat64(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<double>(v8, __p, a3, v10);
}

void sub_2180259B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<double>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = (a3[1] - *a3) >> 3;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 6, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputInt4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Int4>(v8, __p, a3, v10);
}

void sub_218025D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::Int4>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = a3[1] - *a3;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 13, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputInt8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<signed char>(v8, __p, a3, v10);
}

void sub_2180260A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<signed char>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = a3[1] - *a3;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 9, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputInt16(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<short>(v8, __p, a3, v10);
}

void sub_218026400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<short>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = (a3[1] - *a3) >> 1;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 10, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputInt32(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<int>(v8, __p, a3, v10);
}

void sub_218026764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<int>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = (a3[1] - *a3) >> 2;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 11, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputInt64(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<long long>(v8, __p, a3, v10);
}

void sub_218026AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<long long>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = (a3[1] - *a3) >> 3;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 12, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt1(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt1>(v8, __p, a3, v10);
}

void sub_218026E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt1>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = a3[1] - *a3;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 21, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt2(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt2>(v8, __p, a3, v10);
}

void sub_2180271B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt2>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = a3[1] - *a3;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 19, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt3(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt3>(v8, __p, a3, v10);
}

void sub_21802753C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt3>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = a3[1] - *a3;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 22, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt4>(v8, __p, a3, v10);
}

void sub_2180278C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt4>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = a3[1] - *a3;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 20, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt6(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt6>(v8, __p, a3, v10);
}

void sub_218027C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<MIL::UInt6>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = a3[1] - *a3;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 23, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<unsigned char>(v8, __p, a3, v10);
}

void sub_218027FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<unsigned char>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = a3[1] - *a3;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 14, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt16(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<unsigned short>(v8, __p, a3, v10);
}

void sub_218028334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<unsigned short>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = (a3[1] - *a3) >> 1;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 15, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt32(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<unsigned int>(v8, __p, a3, v10);
}

void sub_218028698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<unsigned int>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = (a3[1] - *a3) >> 2;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 16, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInputUInt64(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  *__p = *a2;
  v12 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<unsigned long long>(v8, __p, a3, v10);
}

void sub_2180289FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Builder::OperationBuilder::AddOutput();
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInputLiteral<unsigned long long>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  if (v4)
  {
    if (*a4)
    {
      v7 = (a3[1] - *a3) >> 3;
      memset(__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, &v7, &v8, 1uLL);
      MIL::IRTensorValueType::Make(v4, 17, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "This OperationBuilder needs a context in order to accept literal inputs.");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void MIL::Builder::OperationBuilder::AddInput(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *a2, *(a2 + 8));
  }

  else
  {
    v14 = *a2;
  }

  v9 = a3[1];
  v16 = *a3;
  v17 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(v13, 0, sizeof(v13));
  std::vector<std::shared_ptr<MIL::IRArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRArgument> const*,std::shared_ptr<MIL::IRArgument> const*>(v13, &v16, &v18, 1uLL);
  v10 = a4[1];
  v11 = *a4;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInput(v8, &v14.__r_.__value_.__l.__data_, v13, &v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v15 = v13;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v15);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_218028DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v22 = *(v20 + 8);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInput(uint64_t a1, const void **a2, uint64_t **a3, uint64_t *a4)
{
  if (!*a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot add an input to a null OperationBuilder.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    do
    {
      v9 = *v4;
      v10 = v4[1];
      *&v23 = *v4;
      *(&v23 + 1) = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v9)
      {
        v16 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v16, "Cannot bind an input to a null IRArgument.");
        __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v24 = a2;
      v11 = std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 16, a2);
      std::vector<std::shared_ptr<MIL::IROperation>>::push_back[abi:ne200100]((v11 + 56), &v23);
      if (*(a1 + 152))
      {
        v12 = (*(*v23 + 32))(v23);
        if (v12)
        {
          v13 = *(a1 + 152);
          if (*(v12 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v22, *v12, *(v12 + 8));
          }

          else
          {
            v14 = *v12;
            v22.__r_.__value_.__r.__words[2] = *(v12 + 16);
            *&v22.__r_.__value_.__l.__data_ = v14;
          }

          v15 = a4[1];
          v20 = *a4;
          v21 = v15;
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          __p[0] = 0;
          __p[1] = 0;
          v19 = 0;
          MIL::Builder::BlockBuilder::UpdateOpInput(v13, &v22, &v20, __p);
          if (SHIBYTE(v19) < 0)
          {
            operator delete(__p[0]);
          }

          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v22.__r_.__value_.__l.__data_);
          }
        }
      }

      if (*(&v23 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
      }

      v4 += 2;
    }

    while (v4 != v5);
  }
}

void MIL::Builder::OperationBuilder::AddInput(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X2>, uint64_t *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a2, *(a2 + 8));
  }

  else
  {
    v12 = *a2;
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::AddInput(v8, &v12.__r_.__value_.__l.__data_, a3, &v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_218029170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = *(v16 + 8);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Builder::OperationBuilder::RemoveInputs(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 24);
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(&v6, (a1 + 8));
  v4 = MIL::Builder::OperationBuilder::OperationBuilderImpl::RemoveInputs(v3, a2, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

void sub_21802920C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Builder::OperationBuilder::OperationBuilderImpl::RemoveInputs(uint64_t a1, const void **a2, uint64_t *a3)
{
  result = std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__count_unique<std::string>(a1 + 16, a2);
  if (result)
  {
    if (*(a1 + 152))
    {
      v17 = a2;
      v7 = std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 16, a2);
      v8 = *(v7 + 56);
      for (i = *(v7 + 64); v8 != i; v8 += 2)
      {
        v10 = (*(**v8 + 32))(*v8);
        if (v10)
        {
          v11 = *(a1 + 152);
          if (*(v10 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v16, *v10, *(v10 + 8));
          }

          else
          {
            v12 = *v10;
            v16.__r_.__value_.__r.__words[2] = *(v10 + 16);
            *&v16.__r_.__value_.__l.__data_ = v12;
          }

          v13 = a3[1];
          v14 = *a3;
          v15 = v13;
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          MIL::Builder::BlockBuilder::RemoveOpInput(v11, &v16, &v14);
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v16.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    return std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__erase_unique<std::string>((a1 + 16), a2) != 0;
  }

  return result;
}

void sub_218029368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **MIL::Builder::OperationBuilder::TryGetAttribute@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((*(a1 + 24) + 64), a2);
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

uint64_t MIL::Builder::OperationBuilder::OperationBuilderImpl::TryGetConstant@<X0>(MIL::Builder::OperationBuilder::OperationBuilderImpl *this@<X0>, void *a2@<X8>)
{
  result = (*(**this + 104))(*this);
  if (result)
  {
    MIL::Builder::OperationBuilder::OperationBuilderImpl::GetConstants(this);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_2180294D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::GetConstants(MIL::Builder::OperationBuilder::OperationBuilderImpl *this)
{
  if ((*(**this + 104))(*this))
  {
    std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](&v19, this + 2);
    if (*(this + 19))
    {
      v2 = v19;
      if (v19 != v20)
      {
        do
        {
          v3 = v2[7];
          if (v2[8] != v3)
          {
            v4 = 0;
            v5 = 0;
            do
            {
              if ((*(**(v3 + v4) + 32))(*(v3 + v4)))
              {
                v6 = *(this + 19);
                Name = MIL::IRArgument::GetName(*(v3 + v4));
                MIL::Builder::BlockBuilder::GetValue(&v16, v6, Name);
                v8 = v16;
                if (v17)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
                }

                if (v8)
                {
                  v9 = *(this + 19);
                  v10 = MIL::IRArgument::GetName(*(v3 + v4));
                  MIL::Builder::BlockBuilder::GetValue(&v16, v9, v10);
                  v18[3] = v16;
                  v18[4] = v17;
                  if (v17)
                  {
                    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  MIL::IRArgument::Make();
                }
              }

              ++v5;
              v3 = v2[7];
              v4 += 16;
            }

            while (v5 < (v2[8] - v3) >> 4);
          }

          v11 = v2[1];
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = v2[2];
              v13 = *v12 == v2;
              v2 = v12;
            }

            while (!v13);
          }

          v2 = v12;
        }

        while (v12 != v20);
      }
    }

    memset(v18, 0, 24);
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType>*,std::shared_ptr<MIL::IRNamedValueType>*>(v18, *(this + 5), *(this + 6), (*(this + 6) - *(this + 5)) >> 4);
    v14 = std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(&v16, this + 64);
    MIL::UnknownLocation::Make(v14);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "This operator does not have constant function defined.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t MIL::Builder::OperationBuilder::OperationBuilderImpl::GetOwningBlock(MIL::Builder::OperationBuilder::OperationBuilderImpl *this)
{
  result = *(this + 19);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "This OperationBuilder does not have an owning block");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  return result;
}

uint64_t MIL::Builder::OperationBuilder::OperationBuilderImpl::GetIRArgument(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(a1 + 16, a2);
  if (a1 + 24 == v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v11 = std::string::append(&v39, ".");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(exception, &v40);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }

  v7 = v6;
  v8 = *(v6 + 56);
  if (a3 >= (*(v6 + 64) - v8) >> 4)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    v14 = a3;
    v15 = v13;
    std::to_string(&v34, v14);
    v16 = std::string::insert(&v34, 0, "Requested argument ");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v35, " for parameter ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
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

    v23 = std::string::append(&v36, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v37, ", but only ");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v33, (*(v7 + 64) - *(v7 + 56)) >> 4);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v33;
    }

    else
    {
      v27 = v33.__r_.__value_.__r.__words[0];
    }

    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v33.__r_.__value_.__l.__size_;
    }

    v29 = std::string::append(&v38, v27, size);
    v30 = *&v29->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v31 = std::string::append(&v39, " arguments are bound.");
    v32 = *&v31->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(v15, &v40);
    v15->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(v15, off_278235F78, MEMORY[0x277D825F8]);
  }

  return v8 + 16 * a3;
}

void sub_218029D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v49 - 57) < 0)
  {
    operator delete(*(v49 - 80));
  }

  if (*(v49 - 89) < 0)
  {
    operator delete(*(v49 - 112));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
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
  }

  if (v48)
  {
    __cxa_free_exception(v47);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::OperationBuilder::RenameOutput(uint64_t a1@<X0>, unint64_t a2@<X1>, std::string::size_type a3@<X2>, uint64_t *a4@<X8>)
{
  std::shared_ptr<MIL::Builder::OperationBuilder>::shared_ptr[abi:ne200100]<MIL::Builder::OperationBuilder,0>(a4, (a1 + 8));
  v8 = *(a1 + 24);
  v9 = a4[1];
  v10[0] = *a4;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Builder::OperationBuilder::OperationBuilderImpl::RenameOutput(v8, a2, a3, v10);
}

void sub_218029F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::RenameOutput(MIL::Builder::OperationBuilder::OperationBuilderImpl *this, unint64_t a2, std::string::size_type a3, uint64_t *a4)
{
  v7 = *(this + 19);
  if (v7)
  {
    OutputName = MIL::Builder::OperationBuilder::OperationBuilderImpl::GetOutputName(this, a2);
    v10 = a4[1];
    v14 = *a4;
    v15 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MIL::Builder::BlockBuilder::RenameOpOutput(v7, OutputName, a3, &v14);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  v11 = *(this + 5);
  if (a2 < (*(this + 6) - v11) >> 4)
  {
    v12 = (v11 + 16 * a2);
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    }

    else
    {
      __p = *a3;
    }

    MIL::IRNamedValueType::GetType(*v12);
    MIL::IRNamedValueType::Make();
  }

  std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
}

void sub_21802A080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

const void *MIL::Builder::OperationBuilder::OperationBuilderImpl::GetVariable(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>>>::__emplace_unique_key_args<std::string,std::string const&,decltype(nullptr)>((a1 + 224), a2);
  if (v4)
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

  return v3[5];
}

void sub_21802A2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Builder::OperationBuilder::OperationBuilderImpl::GetVariable(uint64_t a1, void *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::hash<std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::shared_ptr<MIL::IRValue const>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::shared_ptr<MIL::IRValue const>>,std::hash<std::shared_ptr<MIL::IRValue const>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>>>::__emplace_unique_key_args<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>&,decltype(nullptr)>((a1 + 264), a2);
  if (v4)
  {
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    MIL::Builder::Variable::Make();
  }

  return v3[4];
}

void sub_21802A3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>>>::__emplace_unique_key_args<std::string,std::string const&,decltype(nullptr)>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>>>::__construct_node_hash<std::string const&,decltype(nullptr)>();
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

void sub_21802A628(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::hash<std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::shared_ptr<MIL::IRValue const>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::shared_ptr<MIL::IRValue const>>,std::hash<std::shared_ptr<MIL::IRValue const>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>>>::__emplace_unique_key_args<std::shared_ptr<MIL::IRValue const>,std::shared_ptr<MIL::IRValue const>&,decltype(nullptr)>(void *a1, void *a2)
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

void sub_21802A978(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<MIL::IRValue const> const,std::unique_ptr<MIL::Builder::Variable const>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<MIL::IRValue const> const,std::unique_ptr<MIL::Builder::Variable const>>,0>(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_21802AAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<MIL::Builder::OperationBuilder>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder const>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder const>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder const>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder const>>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = a2 + 2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) >> 47));
  *(v4 - 1) = v6;
  v7 = std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder const>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder const>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder const>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder const>>>::__node_insert_unique_prepare[abi:ne200100](a1, v6, v4);
  if (v7)
  {
    return v7;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<MIL::IRDimension const*>>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

void *std::__hash_table<std::shared_ptr<MIL::Builder::OperationBuilder const>,std::hash<std::shared_ptr<MIL::Builder::OperationBuilder const>>,std::equal_to<std::shared_ptr<MIL::Builder::OperationBuilder const>>,std::allocator<std::shared_ptr<MIL::Builder::OperationBuilder const>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (i[2] == *a3)
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, v15);
  }

  return 0;
}

uint64_t std::vector<std::shared_ptr<MIL::Builder::BlockBuilder>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::Builder::BlockBuilder>*,std::shared_ptr<MIL::Builder::BlockBuilder>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21802AD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<MIL::Builder::BlockBuilder>>,std::shared_ptr<MIL::Builder::BlockBuilder>*,std::shared_ptr<MIL::Builder::BlockBuilder>*,std::shared_ptr<MIL::Builder::BlockBuilder>*>(uint64_t a1, void *a2, void *a3, void *a4)
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::Builder::BlockBuilder>>,std::shared_ptr<MIL::Builder::BlockBuilder>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::Builder::BlockBuilder>>,std::shared_ptr<MIL::Builder::BlockBuilder>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__count_unique<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a2, v2 + 4))
      {
        if (!std::less<std::string>::operator()[abi:ne200100](a1, v2 + 4, a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__erase_unique<std::string>(uint64_t **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__remove_node_pointer(a1, v3);
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>,0>((v4 + 4));
  operator delete(v4);
  return 1;
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::~OperationBuilderImpl(void **this)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::hash<std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::shared_ptr<MIL::IRValue const>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::shared_ptr<MIL::IRValue const>>,std::hash<std::shared_ptr<MIL::IRValue const>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>>>::~__hash_table((this + 33));
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>>>::~__hash_table((this + 28));
  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  v2 = this[24];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v5 = this + 20;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  v3 = this[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((this + 8));
  v5 = this + 5;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy((this + 2), this[3]);
  v4 = this[1];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::hash<std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::shared_ptr<MIL::IRValue const>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::shared_ptr<MIL::IRValue const>>,std::hash<std::shared_ptr<MIL::IRValue const>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::hash<std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::shared_ptr<MIL::IRValue const>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::shared_ptr<MIL::IRValue const>>,std::hash<std::shared_ptr<MIL::IRValue const>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::hash<std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::shared_ptr<MIL::IRValue const>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::shared_ptr<MIL::IRValue const>>,std::hash<std::shared_ptr<MIL::IRValue const>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<MIL::IRValue const> const,std::unique_ptr<MIL::Builder::Variable const>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::OperationBuilderImpl(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1065353216;
  MIL::UnknownLocation::Make(a1);
}

void sub_21802B1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = a10;
  a10 = 0;
  if (v14)
  {
    MIL::Builder::FunctionBuilder::FunctionBuilderImpl::FunctionBuilderImpl();
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table((v12 + 3));
  a10 = v12;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(v11, *(v10 + 24));
  v15 = *(v10 + 8);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::OperationBuilder::OperationBuilderImpl::OperationBuilderImpl(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v10 = *a3;
  v11 = v6;
  *a3 = 0;
  *(a3 + 1) = 0;
  *__p = *a4;
  v9 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  MIL::Builder::OperationBuilder::OperationBuilderImpl::OperationBuilderImpl(a1, &v11, &v10, __p, 0, a5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&v10 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
  }

  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
  }

  return a1;
}

void sub_21802B298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::make_unique[abi:ne200100]<MIL::Builder::OperationBuilder::OperationBuilderImpl,std::shared_ptr<MIL::IROperation> &,std::shared_ptr<MIL::MILContext>,std::string,MIL::Builder::BlockBuilder *&,0>((v15 | 8), (v14 | 8));
  _Unwind_Resume(a1);
}

uint64_t MIL::Builder::OperationBuilder::OperationBuilderImpl::OperationBuilderImpl(uint64_t a1, MIL::IRObject **a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  (*(**a2 + 80))();
  v12 = (*(**a2 + 160))();
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100]((a1 + 16), v12);
  v13 = (*(**a2 + 176))();
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType>*,std::shared_ptr<MIL::IRNamedValueType>*>(a1 + 40, *v13, v13[1], (v13[1] - *v13) >> 4);
  Attributes = MIL::IRObject::GetAttributes(*a2);
  std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(a1 + 64, Attributes);
  LocationPtr = MIL::IRObject::GetLocationPtr(*a2);
  *(a1 + 104) = *LocationPtr;
  v16 = LocationPtr[1];
  *(a1 + 112) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *a4;
  *(a1 + 136) = *(a4 + 2);
  *(a1 + 120) = v17;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  *(a1 + 144) = a5;
  *(a1 + 152) = a6;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 256) = 1065353216;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 1065353216;
  *(a1 + 304) = 0;
  MIL::Builder::OperationBuilder::OperationBuilderImpl::OperationBuilderImplFromIROperationCommon(a1, *a2);
  return a1;
}

void sub_21802B46C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::__unordered_map_hasher<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::hash<std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::shared_ptr<MIL::IRValue const>>,true>,std::__unordered_map_equal<std::shared_ptr<MIL::IRValue const>,std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>,std::equal_to<std::shared_ptr<MIL::IRValue const>>,std::hash<std::shared_ptr<MIL::IRValue const>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<MIL::IRValue const>,std::unique_ptr<MIL::Builder::Variable const>>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::Builder::Variable>>>>::~__hash_table(v2 + 224);
  if (*(v2 + 223) < 0)
  {
    operator delete(*v4);
  }

  v6 = *(v2 + 192);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 143) < 0)
  {
    operator delete(*(v2 + 120));
  }

  v7 = *(v2 + 112);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2 + 64);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(v2 + 16, *(v2 + 24));
  v8 = *(v2 + 8);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  _Unwind_Resume(a1);
}

void MIL::Builder::OperationBuilder::OperationBuilderImpl::OperationBuilderImplFromIROperationCommon(MIL::Builder::OperationBuilder::OperationBuilderImpl *this, const MIL::IROperation *a2)
{
  v3 = *(this + 2);
  v30 = this + 24;
  if (v3 != this + 24)
  {
    do
    {
      v4 = *(v3 + 7);
      if (*(v3 + 8) != v4)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = (*(**(v4 + v5) + 40))(*(v4 + v5));
          if (v7)
          {
            v8 = (*(*v7 + 40))(v7);
            if (v8)
            {
              v9 = v8;
              if ((*(*v8 + 120))(v8))
              {
                (*(*v9 + 128))(&__p, v9);
                Name = MIL::IRArgument::GetName(*(v4 + v5));
                v11 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                size = __p.__r_.__value_.__l.__size_;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v13 = __p.__r_.__value_.__l.__size_;
                }

                v14 = *(Name + 23);
                v15 = v14;
                if ((v14 & 0x80u) != 0)
                {
                  v14 = *(Name + 8);
                }

                if (v13 == v14)
                {
                  v16 = __p.__r_.__value_.__r.__words[0];
                  v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                  v18 = v15 >= 0 ? Name : *Name;
                  if (!memcmp(v17, v18, v13))
                  {
                    if (v11 < 0)
                    {
                      std::string::__init_copy_ctor_external(&v35, v16, size);
                    }

                    else
                    {
                      v35 = __p;
                    }

                    MIL::IRArgument::Make();
                  }
                }

                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Constexpr output name must be the same as the argument name.");
                __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
              }
            }
          }

          ++v6;
          v4 = *(v3 + 7);
          v5 += 16;
        }

        while (v6 < (*(v3 + 8) - v4) >> 4);
      }

      v19 = *(v3 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v3 + 2);
          v21 = *v20 == v3;
          v3 = v20;
        }

        while (!v21);
      }

      v3 = v20;
    }

    while (v20 != v30);
  }

  v22 = (*(*a2 + 232))(a2);
  if (v22)
  {
    v23 = (*(*v22 + 16))(v22);
    if (v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v25 = v24;
    if (v24 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v24;
    if (v24)
    {
      memmove(&__p, v23, v24);
    }

    __p.__r_.__value_.__s.__data_[v25] = 0;
    std::string::operator=((this + 200), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v26 = (*(*a2 + 216))(a2);
  memset(&__p, 0, sizeof(__p));
  std::vector<std::shared_ptr<MIL::IRBlock>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRBlock>*,std::shared_ptr<MIL::IRBlock>*>(&__p, *v26, v26[1], (v26[1] - *v26) >> 4);
  std::vector<std::shared_ptr<MIL::IROperation>>::reserve(this + 20, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 4);
  if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
  {
    v27 = *(this + 24);
    v32 = *(this + 23);
    v33 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    if (*(this + 143) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, *(this + 15), *(this + 16));
    }

    else
    {
      v31 = *(this + 5);
    }

    MIL::Builder::BlockBuilder::Make();
  }

  p_p = &__p;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&p_p);
}