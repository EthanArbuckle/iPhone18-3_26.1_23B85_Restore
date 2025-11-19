uint64_t std::vector<std::vector<long long>>::__construct_one_at_end[abi:ne200100]<std::vector<long long> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<long long>>::__emplace_back_slow_path<std::vector<long long> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<long long>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<long long>>::~__split_buffer(&v14);
  return v8;
}

void sub_22D16D050(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<long long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<long long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<long long>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<long long>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<long long>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void sub_22D16D1B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<long long>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<long long>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<long long>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<long long>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::list<long long>::list(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a3)
  {
    operator new();
  }

  return result;
}

void *std::__tree<std::__value_type<long long,BOOL>,std::__map_value_compare<long long,std::__value_type<long long,BOOL>,std::less<long long>,true>,std::allocator<std::__value_type<long long,BOOL>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
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
      v5 = v2[4];
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

uint64_t std::__hash_table<std::__hash_value_type<long long,std::unordered_set<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::unordered_set<long long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,std::unordered_set<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::unordered_set<long long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<long long,std::unordered_set<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::unordered_set<long long>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

void *std::__hash_table<std::__hash_value_type<long long,std::unordered_set<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::unordered_set<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void sub_22D16D754(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long long,std::unordered_set<long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::unordered_set<long long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<long long,std::unordered_set<long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::unordered_set<long long>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<long long,std::unordered_set<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::unordered_set<long long>>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<long long,std::unordered_set<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::unordered_set<long long>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<long long,std::unordered_set<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::unordered_set<long long>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(void *a1, unint64_t *a2)
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

uint64_t std::__hash_table<std::__hash_value_type<long long,std::vector<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::vector<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::vector<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::vector<long long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,std::vector<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::vector<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::vector<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::vector<long long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<long long,std::vector<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::vector<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::vector<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::vector<long long>>>>::__deallocate_node(int a1, void *__p)
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
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<long long,std::vector<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::vector<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::vector<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::vector<long long>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2787526B0, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(void *a1, unint64_t *a2)
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
      if (v3 == v8)
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

uint64_t *std::__hash_table<std::__hash_value_type<long long,std::vector<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::vector<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::vector<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::vector<long long>>>>::__erase_unique<long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<long long,std::vector<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::vector<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::vector<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::vector<long long>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<long long,std::vector<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::vector<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::vector<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::vector<long long>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<long long,std::vector<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::vector<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::vector<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::vector<long long>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::vector<long long>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<long long,std::vector<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::vector<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::vector<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::vector<long long>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void std::__hash_table<std::__hash_value_type<long long,std::unordered_set<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::unordered_set<long long>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<long long,std::unordered_set<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::unordered_set<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::unordered_set<long long>>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__hash_table<std::__hash_value_type<long long,std::vector<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::vector<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::vector<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::vector<long long>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<long long,std::vector<long long>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::vector<long long>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::vector<long long>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::vector<long long>>>>::__deallocate_node(a1, *(a1 + 16));
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

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::clear(void *result)
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

double homeai::mod::ImageDescriptorBufferAbstract::ImageDescriptorBufferAbstract(homeai::mod::ImageDescriptorBufferAbstract *this)
{
  *this = &unk_284053E30;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0;
  return result;
}

uint64_t homeai::mod::ImageDescriptorBufferAbstract::initBufferWithData(homeai::mod::ImageDescriptorBufferAbstract *this, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    v9 = 0;
    v11 = this + 40;
    v10 = *(this + 5);
    *(this + 2) = *(this + 1);
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(this + 32, v10);
    *(v11 - 1) = v11;
    *v11 = 0;
    *(v11 + 1) = 0;
    *(v11 + 2) = a2;
    *(v11 + 3) = a3;
    *(v11 + 4) = a4;
    *(v11 + 5) = a4;
    v11[48] = a5;
  }

  else
  {
    v9 = -3;
  }

  return (v9 + 128) | 0xE00;
}

uint64_t homeai::mod::ImageDescriptorBufferAbstract::ImageDescriptorBufferAbstract(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  *a1 = &unk_284053E30;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 48) = 0;
  *(a1 + 88) = a6;
  inited = homeai::mod::ImageDescriptorBufferAbstract::initBufferWithData(a1, a3, a4, a5, a6);
  if ((inited & 0x80) == 0)
  {
    v11 = inited;
    exception = __cxa_allocate_exception(8uLL);
    *exception = v11;
    __cxa_throw(exception, MEMORY[0x277D827F8], 0);
  }

  v9 = homeai::mod::ImageDescriptorBufferAbstract::resetDescriptorIds(a1, a2);
  if ((v9 & 0x80) == 0)
  {
    v13 = __cxa_allocate_exception(8uLL);
    *v13 = v9;
    __cxa_throw(v13, MEMORY[0x277D827F8], 0);
  }

  return a1;
}

void sub_22D16E850(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v2, *v4);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t homeai::mod::ImageDescriptorBufferAbstract::resetDescriptorIds(uint64_t *a1, uint64_t a2)
{
  if (a1[9] == (*(a2 + 8) - *a2) >> 3)
  {
    v4 = a1 + 1;
    a1[2] = a1[1];
    v5 = a1 + 5;
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy((a1 + 4), a1[5]);
    v4[3] = v5;
    v4[5] = 0;
    *v5 = 0;
    v7 = *a2;
    v6 = *(a2 + 8);
    while (v7 != v6)
    {
      std::vector<long long>::push_back[abi:ne200100](v4, v7++);
    }

    v16 = 0;
    v17 = 0;
    __p = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, a1[1], a1[2], (a1[2] - a1[1]) >> 3);
    v19 = 0;
    v20 = 0;
    v18 = &v19;
    v9 = __p;
    if (((v16 - __p) >> 3) >= 1)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v21 = &v9[v10];
        *(std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&v18, &v9[v10]) + 10) = v11++;
        v9 = __p;
        v10 += 8;
      }

      while (v11 < ((v16 - __p) >> 3));
    }

    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy((v4 + 3), a1[5]);
    v12 = v19;
    a1[4] = v18;
    a1[5] = v12;
    v13 = v20;
    a1[6] = v20;
    if (v13)
    {
      v12[2] = v5;
      v18 = &v19;
      v19 = 0;
      v20 = 0;
      v12 = 0;
    }

    else
    {
      v4[3] = v5;
    }

    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(&v18, v12);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    v8 = &CVML_status_ok;
  }

  else
  {
    v8 = &CVML_status_invalidParameter;
  }

  return (*v8 + 128) | 0xE00;
}

void sub_22D16EA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, void *a13)
{
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(&a12, a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t homeai::mod::ImageDescriptorBufferAbstract::appendDescriptors(homeai::mod::ImageDescriptorBufferAbstract *this, const homeai::mod::ImageDescriptorBufferAbstract *a2)
{
  if (!*(a2 + 9))
  {
    v5 = 0;
    return (v5 + 128) | 0xE00;
  }

  v4 = (*(*this + 104))(this);
  if (v4 != (*(*a2 + 104))(a2))
  {
    v5 = -4;
    return (v5 + 128) | 0xE00;
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  if (v6 != v7)
  {
    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v8 == v9 && *(a2 + 9) != 0)
    {
      v5 = -4;
      return (v5 + 128) | 0xE00;
    }

    if (*(this + 9) == (v7 - v6) >> 3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  if (!*(this + 9))
  {
LABEL_16:
    v11 = *(a2 + 9);
    if (v8 != v9 && v11 != (v9 - v8) >> 3)
    {
      v5 = -4;
      return (v5 + 128) | 0xE00;
    }

    goto LABEL_20;
  }

  if (v8 != v9)
  {
LABEL_15:
    v5 = -4;
    return (v5 + 128) | 0xE00;
  }

  v11 = *(a2 + 9);
LABEL_20:
  if (*(this + 6) && *(a2 + 6) && v11 >= 1)
  {
    v12 = 0;
    v5 = -4;
    while (1)
    {
      if (*(this + 5))
      {
        v13 = *(v8 + 8 * v12);
        v14 = (this + 40);
        v15 = *(this + 5);
        do
        {
          if (v15[4] >= v13)
          {
            v14 = v15;
          }

          v15 = v15[v15[4] < v13];
        }

        while (v15);
        if (v14 != (this + 40) && v13 >= v14[4])
        {
          break;
        }
      }

      if (++v12 == (v11 & 0x7FFFFFFF))
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
LABEL_32:
    v16 = *(this + 9);
    homeai::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(this, v11 + v16, 1);
    if (v11 >= 1)
    {
      v17 = 0;
      v18 = v16;
      do
      {
        DataForKthDescriptor = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, v18);
        v20 = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(a2, v17);
        v21 = (*(*this + 104))(this);
        memcpy(DataForKthDescriptor, v20, v21);
        ++v17;
        ++v18;
      }

      while ((v11 & 0x7FFFFFFF) != v17);
    }

    v22 = *(a2 + 2);
    v23 = *(a2 + 1);
    if (v23 != v22)
    {
      do
      {
        std::vector<long long>::push_back[abi:ne200100](this + 1, v23++);
      }

      while (v23 != v22);
      if (v11 >= 1)
      {
        v24 = 0;
        v25 = v11 & 0x7FFFFFFF;
        do
        {
          *(std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(this + 32, (*(a2 + 1) + v24)) + 10) = v16;
          LODWORD(v16) = v16 + 1;
          v24 += 8;
          --v25;
        }

        while (v25);
      }
    }

    v5 = 0;
  }

  return (v5 + 128) | 0xE00;
}

void *homeai::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(homeai::mod::ImageDescriptorBufferAbstract *this, unint64_t a2, char a3)
{
  if (!(*(*this + 104))(this))
  {
    v6 = -2;
    goto LABEL_21;
  }

  if (*(this + 10) < a2 || (result = (*(*this + 104))(this), result > *(this + 8)))
  {
    v8 = (*(*this + 104))(this);
    v9 = *(this + 8);
    if (v8 <= v9)
    {
      v10 = *(this + 7);
      if (v10 && (a3 & 1) != 0)
      {
        if (*(this + 88) != 1)
        {
          v12 = malloc_type_malloc(v9 * a2, 0x1ED5B24AuLL);
          *(this + 7) = v12;
          if (!v12)
          {
            goto LABEL_12;
          }

          result = memcpy(v12, v10, *(this + 9) * *(this + 8));
LABEL_13:
          *(this + 9) = a2;
          *(this + 10) = a2;
          *(this + 88) = 1;
          return result;
        }

        result = malloc_type_realloc(*(this + 7), v9 * a2, 0xAF32C58BuLL);
LABEL_11:
        *(this + 7) = result;
        if (!result)
        {
LABEL_12:
          v6 = -5;
LABEL_21:
          v13 = (v6 + 128) | 0xE00;
          exception = __cxa_allocate_exception(8uLL);
          *exception = v13;
          __cxa_throw(exception, MEMORY[0x277D827F8], 0);
        }

        goto LABEL_13;
      }
    }

    else
    {
      *(this + 8) = (*(*this + 104))(this);
      v10 = *(this + 7);
    }

    if (v10)
    {
      if (*(this + 88) == 1)
      {
        free(v10);
      }
    }

    v11 = (*(*this + 104))(this);
    *(this + 8) = v11;
    result = malloc_type_malloc(v11 * a2, 0x6AC9F88EuLL);
    goto LABEL_11;
  }

  *(this + 9) = a2;
  return result;
}

uint64_t homeai::mod::ImageDescriptorBufferAbstract::deleteDescriptorAtIndex(homeai::mod::ImageDescriptorBufferAbstract *this, int a2, const void **a3)
{
  v17 = a2;
  v6 = *(this + 18);
  if (v6 <= a2)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3708;
    __cxa_throw(exception, MEMORY[0x277D827F8], 0);
  }

  v7 = v6 - 1;
  if (v6 - 1 > a2)
  {
    DataForKthDescriptor = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, a2);
    v9 = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(this, v7);
    memcpy(DataForKthDescriptor, v9, *(this + 8));
    v10 = *(this + 1);
    if (v10 != *(this + 2))
    {
      v16 = *(v10 + 8 * a2);
      v15 = *(v10 + 8 * v7);
      v18 = &v16;
      *(std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(this + 32, &v16) + 10) = v7;
      v18 = &v15;
      *(std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(this + 32, &v15) + 10) = a2;
      v11 = *(this + 1);
      *(v11 + 8 * a2) = v15;
      *(v11 + 8 * v7) = v16;
    }

    if (a3)
    {
      std::vector<int>::push_back[abi:ne200100](a3, &v17);
    }
  }

  v12 = *(this + 1);
  if (v12 != *(this + 2))
  {
    v18 = *(v12 + 8 * v7);
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__erase_unique<long long>(this + 4, &v18);
    *(this + 2) -= 8;
  }

  --*(this + 9);
  return 3712;
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
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

uint64_t homeai::mod::ImageDescriptorBufferAbstract::deleteDescriptorsAtIndexes(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v15 = 0;
  v5 = 0uLL;
  v14 = 0u;
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      std::vector<int>::push_back[abi:ne200100](&v14, v6);
      v6 += 4;
    }

    while (v6 != v7);
    v5 = v14;
  }

  v8 = 126 - 2 * __clz((*(&v5 + 1) - v5) >> 2);
  if (*(&v5 + 1) == v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(v5, *(&v5 + 1), &v16, v9, 1);
  v10 = v14;
  if (((*(&v14 + 1) - v14) >> 2) < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v6 = (*(*a1 + 48))(a1, v10[v11], a3);
      v12 = (v6 & 0x80) == 0;
      v10 = v14;
      if ((v6 & 0x80) == 0)
      {
        break;
      }

      ++v11;
    }

    while (v11 < ((*(&v14 + 1) - v14) >> 2));
  }

  if (v10)
  {
    *(&v14 + 1) = v10;
    operator delete(v10);
  }

  if (v12)
  {
    return v6;
  }

  else
  {
    return 3712;
  }
}

void sub_22D16F330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t homeai::mod::ImageDescriptorBufferAbstract::deleteDescriptorsWithIds(void *a1, uint64_t *a2, const void **a3)
{
  if (a1[1] == a1[2])
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3708;
    __cxa_throw(exception, MEMORY[0x277D827F8], 0);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v6 = *a2;
  if (((a2[1] - *a2) >> 3) >= 1)
  {
    v7 = 0;
    do
    {
      v20 = *(v6 + 8 * v7);
      __p = &v20;
      v8 = std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((a1 + 4), &v20);
      std::vector<int>::push_back[abi:ne200100](&v21, v8 + 10);
      ++v7;
      v6 = *a2;
    }

    while (v7 < ((a2[1] - *a2) >> 3));
  }

  __p = 0;
  v18 = 0;
  v19 = 0;
  v9 = (*(*a1 + 56))(a1, &v21, &__p);
  if ((v9 & 0x80) != 0)
  {
    if (a3)
    {
      v11 = __p;
      v10 = v18;
      if (((v18 - __p) >> 2) >= 1)
      {
        v12 = 0;
        do
        {
          v13 = v11[v12];
          v14 = a1[1];
          if (v13 < ((a1[2] - v14) >> 3))
          {
            std::vector<long long>::push_back[abi:ne200100](a3, (v14 + 8 * v13));
            v11 = __p;
            v10 = v18;
          }

          ++v12;
        }

        while (v12 < ((v10 - v11) >> 2));
      }
    }

    v9 = 3712;
  }

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return v9;
}

void sub_22D16F51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

float homeai::mod::ImageDescriptorBufferAbstract::computeDistanceFrom(homeai::mod::ImageDescriptorBufferAbstract *this, const homeai::mod::ImageDescriptorBufferAbstract *a2)
{
  if (*(this + 9) != 1 || *(a2 + 9) != 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3708;
    __cxa_throw(exception, MEMORY[0x277D827F8], 0);
  }

  (*(*this + 80))(__p);
  v3 = *__p[0];
  __p[1] = __p[0];
  operator delete(__p[0]);
  return v3;
}

homeai::mod::ImageDescriptorBufferAbstract *homeai::mod::ImageDescriptorBufferAbstract::setDescriptorIdForKthDescriptor(homeai::mod::ImageDescriptorBufferAbstract *this, int a2, uint64_t a3)
{
  v10[0] = a3;
  v6 = *(this + 1);
  if (v6 == *(this + 2))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3708;
    __cxa_throw(exception, MEMORY[0x277D827F8], 0);
  }

  v9 = *(v6 + 8 * a2);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__erase_unique<long long>(this + 4, &v9);
  *(*(this + 1) + 8 * a2) = a3;
  v10[2] = v10;
  *(std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(this + 32, v10) + 10) = a2;
  return this;
}

uint64_t homeai::mod::ImageDescriptorBufferAbstract::createDeepCopyOfSubset(homeai::mod::ImageDescriptorBufferAbstract *a1, char **a2)
{
  v4 = a2[1] - *a2;
  v5 = (*(*a1 + 104))(a1);
  v6 = (*(*a1 + 16))(a1);
  *(v6 + 88) = 1;
  v7 = *(a1 + 8);
  *(v6 + 64) = v7;
  *(v6 + 72) = v4 >> 3;
  *(v6 + 56) = malloc_type_malloc(v7 * (v4 >> 3), 0xD16991BFuLL);
  *(v6 + 80) = v4 >> 3;
  if ((v6 + 8) != a2)
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((v6 + 8), *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  if ((v4 >> 3) >= 1)
  {
    v8 = 0;
    v9 = (a1 + 40);
    v10 = *(v6 + 56);
    while (1)
    {
      v11 = *v9;
      if (!*v9)
      {
        break;
      }

      v12 = *&(*a2)[8 * v8];
      v13 = (a1 + 40);
      do
      {
        if (v11[4] >= v12)
        {
          v13 = v11;
        }

        v11 = v11[v11[4] < v12];
      }

      while (v11);
      if (v13 == v9 || v12 < v13[4])
      {
        break;
      }

      DataForKthDescriptor = homeai::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(a1, *(v13 + 10));
      memcpy(v10, DataForKthDescriptor, v5);
      *(std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v6 + 32, &(*a2)[8 * v8]) + 10) = v8;
      ++v8;
      v10 += *(a1 + 8);
      if (v8 == ((v4 >> 3) & 0x7FFFFFFF))
      {
        return v6;
      }
    }

    if (v6)
    {
      (*(*v6 + 8))(v6);
      return 0;
    }
  }

  return v6;
}

void homeai::mod::ImageDescriptorBufferAbstract::createEmptyCopy(homeai::mod::ImageDescriptorBufferAbstract *this)
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = 3711;
  __cxa_throw(exception, MEMORY[0x277D827F8], 0);
}

uint64_t homeai::mod::ImageDescriptorBufferAbstract::print(homeai::mod::ImageDescriptorBufferAbstract *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Descriptor count = ", 19);
  v3 = MEMORY[0x2318CB0C0](v2, *(this + 9));
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v18, MEMORY[0x277D82680]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v18);
  std::ostream::put();
  std::ostream::flush();
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Descriptor length = ", 20);
  v6 = (*(*this + 104))(this);
  v7 = MEMORY[0x2318CB0C0](v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " bytes", 6);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v18, MEMORY[0x277D82680]);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v18);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v12[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v13 = v10;
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x2318CB150](&v17);
}

void sub_22D16FBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::locale::~locale((v25 - 56));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x277D82818]);
  MEMORY[0x2318CB150](&a25);
  _Unwind_Resume(a1);
}

void homeai::mod::ImageDescriptorBufferAbstract::getRepresentative()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = 3711;
  __cxa_throw(exception, MEMORY[0x277D827F8], 0);
}

uint64_t std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__erase_unique<long long>(uint64_t **a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    if (v2[4] >= v3)
    {
      v4 = v2;
    }

    v2 = v2[v2[4] < v3];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

int *std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(int *result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v59 = v9[1];
          v60 = *(a2 - 1);
          if (v59 <= v60)
          {
            v61 = *(a2 - 1);
          }

          else
          {
            v61 = v9[1];
          }

          if (v59 >= v60)
          {
            v59 = *(a2 - 1);
          }

          *(a2 - 1) = v59;
          v9[1] = v61;
          v62 = *(a2 - 1);
          if (v62 <= *v9)
          {
            v63 = *v9;
          }

          else
          {
            v63 = *(a2 - 1);
          }

          if (v62 >= *v9)
          {
            v62 = *v9;
          }

          *(a2 - 1) = v62;
          v65 = *v9;
          v64 = v9[1];
          if (v63 <= v64)
          {
            v65 = v9[1];
          }

          if (v63 < v64)
          {
            v64 = v63;
          }

          *v9 = v65;
          v9[1] = v64;
          return result;
        case 4:
          v89 = v9[1];
          v88 = v9[2];
          if (*v9 <= v88)
          {
            v90 = v9[2];
          }

          else
          {
            v90 = *v9;
          }

          if (*v9 < v88)
          {
            v88 = *v9;
          }

          v9[2] = v88;
          *v9 = v90;
          v91 = *(a2 - 1);
          if (v89 <= v91)
          {
            v92 = *(a2 - 1);
          }

          else
          {
            v92 = v89;
          }

          if (v89 < v91)
          {
            v91 = v89;
          }

          *(a2 - 1) = v91;
          v93 = *v9;
          if (*v9 <= v92)
          {
            v94 = v92;
          }

          else
          {
            v94 = *v9;
          }

          if (v93 >= v92)
          {
            v93 = v92;
          }

          *v9 = v94;
          v9[1] = v93;
          v95 = v9[2];
          v96 = *(a2 - 1);
          if (v95 <= v96)
          {
            v97 = *(a2 - 1);
          }

          else
          {
            v97 = v9[2];
          }

          if (v95 >= v96)
          {
            v95 = *(a2 - 1);
          }

          *(a2 - 1) = v95;
          v98 = v9[1];
          if (v98 <= v97)
          {
            v99 = v97;
          }

          else
          {
            v99 = v9[1];
          }

          if (v98 >= v97)
          {
            v98 = v97;
          }

          v9[1] = v99;
          v9[2] = v98;
          return result;
        case 5:
          v66 = *v9;
          v67 = v9[1];
          if (*v9 <= v67)
          {
            v68 = v9[1];
          }

          else
          {
            v68 = *v9;
          }

          if (v66 >= v67)
          {
            v66 = v9[1];
          }

          *v9 = v68;
          v9[1] = v66;
          v69 = v9[3];
          v70 = *(a2 - 1);
          if (v69 <= v70)
          {
            v71 = *(a2 - 1);
          }

          else
          {
            v71 = v9[3];
          }

          if (v69 >= v70)
          {
            v69 = *(a2 - 1);
          }

          *(a2 - 1) = v69;
          v9[3] = v71;
          v72 = *(a2 - 1);
          v73 = v9[2];
          if (v72 <= v73)
          {
            v74 = v9[2];
          }

          else
          {
            v74 = *(a2 - 1);
          }

          if (v72 >= v73)
          {
            v72 = v9[2];
          }

          *(a2 - 1) = v72;
          v76 = v9[2];
          v75 = v9[3];
          v77 = v9[1];
          if (v74 <= v75)
          {
            v76 = v9[3];
          }

          if (v74 < v75)
          {
            v75 = v74;
          }

          v9[2] = v76;
          v9[3] = v75;
          v78 = *(a2 - 1);
          if (v77 <= v78)
          {
            v79 = *(a2 - 1);
          }

          else
          {
            v79 = v77;
          }

          if (v77 < v78)
          {
            v78 = v77;
          }

          *(a2 - 1) = v78;
          v80 = *v9;
          v82 = v9[2];
          v81 = v9[3];
          if (v81 <= *v9)
          {
            v83 = *v9;
          }

          else
          {
            v83 = v9[3];
          }

          if (v81 >= v80)
          {
            v81 = *v9;
          }

          if (v83 <= v82)
          {
            v80 = v9[2];
          }

          if (v83 < v82)
          {
            v82 = v83;
          }

          if (v81 <= v79)
          {
            v84 = v79;
          }

          else
          {
            v84 = v81;
          }

          if (v81 >= v79)
          {
            v81 = v79;
          }

          if (v84 <= v82)
          {
            v79 = v82;
          }

          *v9 = v80;
          v9[1] = v79;
          if (v84 >= v82)
          {
            v85 = v82;
          }

          else
          {
            v85 = v84;
          }

          v9[2] = v85;
          v9[3] = v81;
          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v86 = *(a2 - 1);
        v87 = *v9;
        if (v86 > *v9)
        {
          *v9 = v86;
          *(a2 - 1) = v87;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *,int *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a2 - 1);
    if (v12 < 0x81)
    {
      v48 = *v9;
      if (*v9 <= v14)
      {
        v49 = *(a2 - 1);
      }

      else
      {
        v49 = *v9;
      }

      if (v48 >= v14)
      {
        v48 = *(a2 - 1);
      }

      *(a2 - 1) = v48;
      *v9 = v49;
      v50 = *(a2 - 1);
      v51 = v9[v13];
      if (v50 <= v51)
      {
        v52 = v9[v13];
      }

      else
      {
        v52 = *(a2 - 1);
      }

      if (v50 >= v51)
      {
        v50 = v9[v13];
      }

      *(a2 - 1) = v50;
      v53 = *v9;
      v54 = v52 <= *v9;
      if (v52 > *v9)
      {
        v53 = v9[v13];
      }

      v9[v13] = v53;
      v55 = *v9;
      if (v54)
      {
        v55 = v52;
      }

      *v9 = v55;
      if (a5)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v15 = &v9[v13];
      v16 = *v15;
      if (*v15 <= v14)
      {
        v17 = *(a2 - 1);
      }

      else
      {
        v17 = *v15;
      }

      if (v16 >= v14)
      {
        v16 = *(a2 - 1);
      }

      *(a2 - 1) = v16;
      *v15 = v17;
      v18 = *(a2 - 1);
      if (v18 <= *v9)
      {
        v19 = *v9;
      }

      else
      {
        v19 = *(a2 - 1);
      }

      if (v18 >= *v9)
      {
        v18 = *v9;
      }

      *(a2 - 1) = v18;
      v20 = *v15;
      v21 = v19 <= *v15;
      if (v19 > *v15)
      {
        v20 = *v9;
      }

      *v9 = v20;
      v22 = *v15;
      if (v21)
      {
        v22 = v19;
      }

      *v15 = v22;
      v23 = *(v15 - 1);
      v24 = *(a2 - 2);
      if (v23 <= v24)
      {
        v25 = *(a2 - 2);
      }

      else
      {
        v25 = *(v15 - 1);
      }

      if (v23 >= v24)
      {
        v23 = *(a2 - 2);
      }

      *(a2 - 2) = v23;
      *(v15 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v9[1];
      if (v26 <= v27)
      {
        v28 = v9[1];
      }

      else
      {
        v28 = *(a2 - 2);
      }

      if (v26 >= v27)
      {
        v26 = v9[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v15 - 1);
      v30 = v28 <= v29;
      if (v28 > v29)
      {
        v29 = v9[1];
      }

      v9[1] = v29;
      v31 = *(v15 - 1);
      if (v30)
      {
        v31 = v28;
      }

      *(v15 - 1) = v31;
      v32 = v15[1];
      v33 = *(a2 - 3);
      if (v32 <= v33)
      {
        v34 = *(a2 - 3);
      }

      else
      {
        v34 = v15[1];
      }

      if (v32 >= v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      v15[1] = v34;
      v35 = *(a2 - 3);
      v36 = v9[2];
      if (v35 <= v36)
      {
        v37 = v9[2];
      }

      else
      {
        v37 = *(a2 - 3);
      }

      if (v35 >= v36)
      {
        v35 = v9[2];
      }

      *(a2 - 3) = v35;
      v38 = v15[1];
      v39 = v37 <= v38;
      if (v37 > v38)
      {
        v38 = v9[2];
      }

      v9[2] = v38;
      v41 = *v15;
      v40 = v15[1];
      if (v39)
      {
        v40 = v37;
      }

      if (v41 <= v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = *v15;
      }

      if (v41 < v40)
      {
        v40 = *v15;
      }

      v43 = *(v15 - 1);
      if (v40 <= v43)
      {
        v44 = *(v15 - 1);
      }

      else
      {
        v44 = v40;
      }

      if (v40 >= v43)
      {
        v40 = *(v15 - 1);
      }

      v15[1] = v40;
      if (v43 <= v42)
      {
        v45 = v42;
      }

      else
      {
        v45 = v43;
      }

      if (v43 <= v42)
      {
        v46 = v44;
      }

      else
      {
        v46 = v42;
      }

      *(v15 - 1) = v45;
      *v15 = v46;
      v47 = *v9;
      *v9 = v46;
      *v15 = v47;
      if (a5)
      {
        goto LABEL_94;
      }
    }

    if (*(v9 - 1) <= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(v9, a2);
      v9 = result;
      goto LABEL_99;
    }

LABEL_94:
    v56 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(v9, a2);
    if ((v57 & 1) == 0)
    {
      goto LABEL_97;
    }

    v58 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(v9, v56);
    v9 = v56 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(v56 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v58)
    {
LABEL_97:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(v8, v56, a3, -v11, a5 & 1);
      v9 = v56 + 1;
LABEL_99:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v100 = v9 + 1;
  v102 = v9 == a2 || v100 == a2;
  if (a5)
  {
    if (!v102)
    {
      v103 = 0;
      v104 = v9;
      do
      {
        v106 = *v104;
        v105 = v104[1];
        v104 = v100;
        if (v105 > v106)
        {
          v107 = v103;
          while (1)
          {
            *(v9 + v107 + 4) = v106;
            if (!v107)
            {
              break;
            }

            v106 = *(v9 + v107 - 4);
            v107 -= 4;
            if (v105 <= v106)
            {
              v108 = (v9 + v107 + 4);
              goto LABEL_204;
            }
          }

          v108 = v9;
LABEL_204:
          *v108 = v105;
        }

        v100 = v104 + 1;
        v103 += 4;
      }

      while (v104 + 1 != a2);
    }
  }

  else if (!v102)
  {
    do
    {
      v110 = *v8;
      v109 = v8[1];
      v8 = v100;
      if (v109 > v110)
      {
        do
        {
          *v100 = v110;
          v110 = *(v100 - 2);
          --v100;
        }

        while (v109 > v110);
        *v100 = v109;
      }

      v100 = v8 + 1;
    }

    while (v8 + 1 != a2);
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(int *a1, int *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 <= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 > v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

signed int *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,int *,std::greater<int> &>(signed int *a1, signed int *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 505)
  {
    v11 = 0;
    v41 = v10 >> 2;
    v39 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s32(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(4uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_22D297DE0;
      v18 = xmmword_22D297DD0;
      v19 = 0uLL;
      do
      {
        v20 = vcgeq_s32(v13, *(v7 + v12));
        v21.i64[0] = v20.u32[2];
        v21.i64[1] = v20.u32[3];
        v22 = vandq_s8(v21, v14);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        v19 = vorrq_s8(vshlq_u64(v22, v18), v19);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v21, v14), v17), v16);
        v18 = vaddq_s64(v18, v15);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 256);
      v23 = vorrq_s8(v16, v19);
      v12 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v24 = 0uLL;
    v25 = 0x3FFFFFFFFFFFFFFDLL;
    v26 = xmmword_22D297DE0;
    v27 = xmmword_22D297DD0;
    v28 = 0uLL;
    do
    {
      v29 = vrev64q_s32(*&v9[v25]);
      v30 = vcgtq_s32(vextq_s8(v29, v29, 8uLL), v13);
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v32 = vdupq_n_s64(1uLL);
      v33 = vandq_s8(v31, v32);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v28 = vorrq_s8(vshlq_u64(v33, v27), v28);
      v24 = vorrq_s8(vshlq_u64(vandq_s8(v31, v32), v26), v24);
      v34 = vdupq_n_s64(4uLL);
      v27 = vaddq_s64(v27, v34);
      v26 = vaddq_s64(v26, v34);
      v25 -= 4;
    }

    while (v25 != -67);
    v35 = vorrq_s8(v24, v28);
    v11 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v36 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v37 = &v9[-__clz(__rbit64(v11))];
        v38 = v7[v36];
        v7[v36] = *v37;
        *v37 = v38;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v39 = v11 == 0;
    if (v11)
    {
      v40 = 0;
    }

    else
    {
      v40 = -256;
    }

    v9 = (v9 + v40);
  }

  while (v9 - v7 > 504);
  v41 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v45 = v41 + 1;
    v42 = (v41 + 1) / 2;
    v43 = v45 - v45 / 2;
    goto LABEL_37;
  }

  v42 = v41 - 63;
  v43 = 64;
  v44 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v42 >= 1)
    {
      v47 = 0;
      v11 = 0;
      v48 = v9;
      do
      {
        v49 = *v48--;
        v11 |= (v49 > v2) << v47++;
      }

      while (v42 != v47);
      goto LABEL_46;
    }

    if (v12)
    {
      v57 = 0;
    }

    else
    {
      v57 = v44;
    }

    v53 = &v7[v57];
LABEL_62:
    if (v12)
    {
      v9 -= v42;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v42 < 1)
  {
    v12 = 0;
  }

  else
  {
    v46 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v46] <= v2) << v46;
      ++v46;
    }

    while (v42 != v46);
  }

  v44 = v42;
  v42 = v43;
  if (v39)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v50 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v51 = &v9[-__clz(__rbit64(v11))];
      v52 = v7[v50];
      v7[v50] = *v51;
      *v51 = v52;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v44 = 0;
  }

  v53 = &v7[v44];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v58 = __clz(v12) ^ 0x3F;
      v59 = &v53[v58];
      if (v9 != v59)
      {
        v60 = *v59;
        *v59 = *v9;
        *v9 = v60;
      }

      v12 &= ~(-1 << v58);
      --v9;
    }

    while (v12);
    v53 = v9 + 1;
  }

  else
  {
    do
    {
      v54 = __clz(v11) ^ 0x3F;
      v55 = &v9[-v54];
      if (v53 != v55)
      {
        v56 = *v55;
        *v55 = *v53;
        *v53 = v56;
      }

      v11 &= ~(-1 << v54);
      ++v53;
    }

    while (v11);
  }

LABEL_68:
  v61 = v53 - 1;
  if (v53 - 1 != a1)
  {
    *a1 = *v61;
  }

  *v61 = v2;
  return v53 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(_DWORD *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 <= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 >= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 <= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 >= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 <= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 < v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 <= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 < v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (v52 >= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 <= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 >= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 <= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 >= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 <= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (v5 >= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 <= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 >= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 <= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 >= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = a1[3];
        }

        if (v13 < v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 <= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 < v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 <= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 >= v19)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
        }

        if (v22 < v21)
        {
          v21 = v22;
        }

        if (v20 <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 >= v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 <= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 < v32)
  {
    v32 = a1[1];
  }

  if (v32 <= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 >= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *,int *>(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 > *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 <= v22;
            if (v23 < v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v14 = v19;
            }

            else
            {
              v18 = v21;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 4) >> 2;
          v24 = v25 < 2;
          v26 = v25 - 2;
          if (!v24)
          {
            v27 = v26 >> 1;
            v28 = &a1[v27];
            v29 = *v28;
            v30 = *v18;
            if (*v28 > *v18)
            {
              do
              {
                *v18 = v29;
                v18 = v28;
                if (!v27)
                {
                  break;
                }

                v27 = (v27 - 1) >> 1;
                v28 = &a1[v27];
                v29 = *v28;
              }

              while (*v28 > v30);
              *v18 = v30;
            }
          }
        }

        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<int> &,int *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 >= v11)
        {
          v10 = v8[1];
        }

        if (*v8 > v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 <= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 4 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 >= v14)
            {
              v10 = v8[1];
            }

            if (*v8 <= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 <= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

void *std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<long long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

__CFString *HMITaskResultCodeAsString(uint64_t a1)
{
  v1 = @"Success";
  if (a1 == 1)
  {
    v1 = @"Canceled";
  }

  if (a1 == 2)
  {
    return @"Error";
  }

  else
  {
    return v1;
  }
}

void sub_22D172140(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_22D172328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getVCPHomeKitAnalysisServiceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaAnalysisLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaAnalysisLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278753D00;
    v6 = 0;
    MediaAnalysisLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (MediaAnalysisLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("VCPHomeKitAnalysisService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVCPHomeKitAnalysisServiceClass_block_invoke_cold_1();
  }

  getVCPHomeKitAnalysisServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaAnalysisLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaAnalysisLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_22D173E44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22D1753BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __HMISignpostScopeLeave(va);
  _Unwind_Resume(a1);
}

id HMIConvertNSDateToIsoDateString(void *a1)
{
  v1 = MEMORY[0x277CCAA68];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v3 stringFromDate:v2];

  return v4;
}

void sub_22D17CA54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *HMIFaceFamiliarityAsString(uint64_t a1)
{
  v1 = @"Known";
  if (!a1)
  {
    v1 = @"Unknown";
  }

  if (a1 == 1)
  {
    return @"Uncertain";
  }

  else
  {
    return v1;
  }
}

void sub_22D180CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D180F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D1815E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

__CFString *HMIConfidenceLevelAsString(uint64_t a1)
{
  v1 = @"Low";
  if (a1 == 1)
  {
    v1 = @"Medium";
  }

  if (a1 == 2)
  {
    return @"High";
  }

  else
  {
    return v1;
  }
}

__CFString *HMIErrorCodeAsString(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v2 = @"Video analyzer in error state";
      }

      else
      {
        v2 = @"Model failed to load";
      }
    }

    else if (a1 == -1)
    {
      v2 = @"Unexpected error";
    }

    else
    {
      if (a1 != 1)
      {
LABEL_38:
        v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown error code %ld", a1];

        return v2;
      }

      v2 = @"Failed to analyze";
    }
  }

  else if (a1 <= 5)
  {
    if (a1 == 4)
    {
      v2 = @"Fragment is invalid";
    }

    else
    {
      v2 = @"Failed to read fragment";
    }
  }

  else
  {
    switch(a1)
    {
      case 6:
        v2 = @"Failed to verify fragment";

        break;
      case 7:
        v2 = @"Failed to transcode fragment";

        break;
      case 1001:
        v2 = @"No pixel buffer";

        return v2;
      default:
        goto LABEL_38;
    }
  }

  return v2;
}

__CFString *HMIErrorCodeName(uint64_t a1)
{
  if (a1 <= 5)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v2 = @"HMIErrorCodeModelFailedToLoad";
      }

      else if (a1 == 4)
      {
        v2 = @"HMIErrorCodeFragmentIsInvalid";
      }

      else
      {
        v2 = @"HMIErrorCodeFailedToReadFragment";
      }
    }

    else
    {
      switch(a1)
      {
        case -1:
          v2 = @"HMIErrorCodeUnexpectedError";

          break;
        case 1:
          v2 = @"HMIErrorCodeFailedToAnalyze";

          break;
        case 2:
          v2 = @"HMIErrorCodeAnalyzerInErrorState";

          break;
        default:
LABEL_35:
          v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR_%ld", a1];

          break;
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 1001:
        v2 = @"HMIPrivateErrorCodeNilPixelBuffer";

        return v2;
      case 1002:
        v2 = @"HMIPrivateErrorCodeEmptyURL";

        return v2;
      case 1003:
        v2 = @"HMIPrivateErrorCodeAVAssetReaderInitializationFailed";

        return v2;
      case 1004:
        v2 = @"HMIPrivateErrorCodeFailedToLoadProperty";

        return v2;
      case 1005:
        v2 = @"HMIPrivateErrorCodeAssetLoadCancelled";

        return v2;
      case 1006:
        v2 = @"HMIPrivateErrorCodeReadingStartFailed";

        return v2;
      case 1007:
        v2 = @"HMIPrivateErrorCodeNoTrackOutput";

        return v2;
      case 1008:
        v2 = @"HMIPrivateErrorCodeSampleBufferUnavailable";

        return v2;
      case 1009:
        v2 = @"HMIPrivateErrorCodeNoVideoTrackFound";

        return v2;
      case 1010:
        v2 = @"HMIPrivateErrorCodeMultipleVideoTracksFound";

        return v2;
      case 1011:
        v2 = @"HMIPrivateErrorInvalidPresentationTime";

        return v2;
      case 1012:
        v2 = @"HMIPrivateErrorAVAssetReaderNotStarted";

        return v2;
      case 1013:
        v2 = @"HMIPrivateErrorCodeSequentialIntegrityViolated";

        return v2;
      case 1014:
      case 1016:
      case 1037:
      case 1038:
      case 1039:
      case 1041:
      case 1043:
      case 1044:
      case 1045:
      case 1046:
      case 1047:
      case 1048:
        goto LABEL_35;
      case 1015:
        v2 = @"HMIPrivateErrorCodeInvalidVideoFrameFormatToSave";

        return v2;
      case 1017:
        v2 = @"HMIPrivateErrorCodeAnalysisServiceNoConfiguration";

        return v2;
      case 1018:
        v2 = @"HMIPrivateErrorCodeLoadingCoreMLModelFailed";

        return v2;
      case 1019:
        v2 = @"HMIPrivateErrorCodeCoreMLPredictionFailed";

        return v2;
      case 1020:
        v2 = @"HMIPrivateErrorCodeCoreMLOutputIncorrect";

        return v2;
      case 1021:
        v2 = @"HMIPrivateErrorCodeCropAndResizeFailed";

        return v2;
      case 1022:
        v2 = @"HMIPrivateErrorCodeScalerError";

        return v2;
      case 1023:
        v2 = @"HMIPrivateErrorCodeCodecNotAvailable";

        return v2;
      case 1024:
        v2 = @"HMIPrivateErrorCodeEncodingFailed";

        return v2;
      case 1025:
        v2 = @"HMIPrivateErrorCodeFaceprintingFailed";

        return v2;
      case 1026:
        v2 = @"HMIPrivateErrorCodeUpdatePersonsModelTaskFailed";

        return v2;
      case 1027:
        v2 = @"HMIPrivateErrorCodeRemovePersonsModelTaskFailed";

        return v2;
      case 1028:
        v2 = @"HMIPrivateErrorCodeHomePersonClusteringTaskFailed";

        return v2;
      case 1029:
        v2 = @"HMIPrivateErrorCodeFaceMisclassificationTaskFailed";

        return v2;
      case 1030:
        v2 = @"HMIPrivateErrorCodePersonsModelsSummaryTaskFailed";

        return v2;
      case 1031:
        v2 = @"HMIPrivateErrorCodeExternalPersonSourceDiskError";

        return v2;
      case 1032:
        v2 = @"HMIPrivateErrorCodeLoadPersonsModelsFailed";

        return v2;
      case 1033:
        v2 = @"HMIPrivateErrorCodeUpdatePersonsModelFailed";

        return v2;
      case 1034:
        v2 = @"HMIPrivateErrorCodeRemovePersonsModelFailed";

        return v2;
      case 1035:
        v2 = @"HMIPrivateErrorCodePersonsModelPredictionFailed";

        return v2;
      case 1036:
        v2 = @"HMIPrivateErrorCodeNilDataSource";

        return v2;
      case 1040:
        v2 = @"HMIPrivateErrorCodeCleanupImpureHomePersonsOperationFailed";

        return v2;
      case 1042:
        v2 = @"HMIPrivateErrorCodeUnknownTask";

        return v2;
      case 1049:
        v2 = @"HMIPrivateErrorCodeFeedbackServiceInternalServerError";

        return v2;
      case 1050:
        v2 = @"HMIPrivateErrorCodeFeedbackServiceResourceNotFoundError";

        return v2;
      default:
        if (a1 == 6)
        {
          v2 = @"HMIErrorCodeFailedToVerifyFragment";
        }

        else
        {
          if (a1 != 7)
          {
            goto LABEL_35;
          }

          v2 = @"HMIErrorcodeFailedToTranscodeFragment";
        }

        break;
    }
  }

  return v2;
}

void HMIErrorLog(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = v3;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMIErrorCodeName([v4 code]);
    v10 = 138543874;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, "%{public}@%@: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
}

void HMIErrorLogC(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = HMFGetLogIdentifier();
    v5 = HMIErrorCodeName([v1 code]);
    v6 = 138543874;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v1;
    _os_log_impl(&dword_22D12F000, v3, OS_LOG_TYPE_ERROR, "%{public}@%@: %@", &v6, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_22D184048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigFormatReaderCopyTrackByType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, 0, a2, a3, 0);
}

void getTimeRangeAssetTrackProperty(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  memset(v33, 0, sizeof(v33));
  v4 = *(MEMORY[0x277CC08E0] + 16);
  *&v32.start.value = *MEMORY[0x277CC08E0];
  *&v32.start.epoch = v4;
  *&v32.duration.timescale = *(MEMORY[0x277CC08E0] + 32);
  v5 = *MEMORY[0x277CBECE8];
  FigBaseObject = FigTrackReaderGetFigBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7 || (v7(FigBaseObject, *MEMORY[0x277CD6488], v5, &v37), (v8 = v37) == 0))
  {
    v28 = *MEMORY[0x277CC08F0];
    *&range.start.value = *MEMORY[0x277CC08F0];
    v16 = *(MEMORY[0x277CC08F0] + 16);
    range.start.epoch = v16;
    otherRange.start.value = 0;
    v17 = FigTrackReaderGetFigBaseObject();
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v18 || (v18(v17, *MEMORY[0x277CD64A8], v5, &otherRange), (v19 = otherRange.start.value) == 0))
    {
      cf.value = 0;
      v20 = FigFormatReaderGetFigBaseObject();
      value = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (value)
      {
        value(v20, *MEMORY[0x277CD6318], v5, &cf);
        value = cf.value;
      }

      if (value != *MEMORY[0x277CBED28])
      {
        v22 = FigFormatReaderGetFigBaseObject();
        v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v23)
        {
          v23(v22, *MEMORY[0x277CD6310], v5, &otherRange);
        }
      }

      if (!otherRange.start.value)
      {
        v26 = FigFormatReaderGetFigBaseObject();
        v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v27)
        {
          v27(v26, *MEMORY[0x277CD6308], v5, &otherRange);
        }
      }

      if (cf.value)
      {
        CFRelease(cf.value);
      }

      v19 = otherRange.start.value;
      if (!otherRange.start.value)
      {
        goto LABEL_26;
      }
    }

    v24 = CFGetTypeID(v19);
    if (v24 == CFDictionaryGetTypeID())
    {
      CMTimeMakeFromDictionary(&range.start, otherRange.start.value);
    }

    else
    {
LABEL_26:
      *&range.start.value = v28;
      range.start.epoch = v16;
    }

    if (otherRange.start.value)
    {
      CFRelease(otherRange.start.value);
    }

    *&otherRange.start.value = v28;
    otherRange.start.epoch = v16;
    cf = range.start;
    CMTimeRangeMake(&v32, &otherRange.start, &cf);
    goto LABEL_30;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v9)
  {
    *&range.start.value = *MEMORY[0x277CC08A0];
    range.start.epoch = *(MEMORY[0x277CC08A0] + 16);
    v9(v8, &range, &v36);
  }

  v10 = v37;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v11 || (*&range.start.value = *MEMORY[0x277CC08B0], range.start.epoch = *(MEMORY[0x277CC08B0] + 16), v11(v10, &range, &v35), (v12 = v36) == 0) || !v35)
  {
LABEL_30:
    v25 = *&v32.start.epoch;
    *a3 = *&v32.start.value;
    a3[1] = v25;
    a3[2] = *&v32.duration.timescale;
    goto LABEL_31;
  }

  v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v13)
  {
    if (!v13(v12, v34))
    {
      v14 = v35;
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v15)
      {
        if (!v15(v14, v33))
        {
          range = v34[1];
          otherRange = v33[1];
          CMTimeRangeGetUnion(&v32, &range, &otherRange);
          goto LABEL_30;
        }
      }
    }
  }

LABEL_31:
  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v37)
  {
    CFRelease(v37);
  }
}

void sub_22D1856B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D185AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t CMBaseObjectCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

void sub_22D187E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D188574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_22D189A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D189E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double HMIExpandFaceRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = a5 + -1.0;
  v10 = -(CGRectGetWidth(*&a1) * (a5 + -1.0)) * 0.5;
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  v11 = -(CGRectGetHeight(v18) * v9) * 0.5;
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  v20 = CGRectInset(v19, v10, v11);
  v12 = 0;
  v13 = 0;
  v14 = 1.0;
  v15 = 1.0;

  *&result = CGRectIntersection(v20, *&v12);
  return result;
}

uint64_t getImagePropertiesFromCGImageSource(CGImageSource *a1, int *a2, size_t *a3, size_t *a4)
{
  result = 0;
  if (a1 && a2 && a3 && a4)
  {
    context = objc_autoreleasePoolPush();
    ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, 0, 0);
    if (!ImageAtIndex)
    {
      v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"could not create image ref" userInfo:0];
      objc_exception_throw(v17);
    }

    v9 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
    v10 = 1;
    v11 = [(__CFDictionary *)v9 objectForKeyedSubscript:*MEMORY[0x277CD3410]];
    v12 = v11;
    if (v11)
    {
      v10 = [v11 intValue];
    }

    if ((v10 - 9) < 0xFFFFFFF8)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10;
    }

    if (v13 > 4)
    {
      Height = CGImageGetHeight(ImageAtIndex);
      Width = CGImageGetWidth(ImageAtIndex);
    }

    else
    {
      Height = CGImageGetWidth(ImageAtIndex);
      Width = CGImageGetHeight(ImageAtIndex);
    }

    v16 = Width;

    CGImageRelease(ImageAtIndex);
    objc_autoreleasePoolPop(context);
    *a2 = v13;
    *a3 = Height;
    result = 1;
    *a4 = v16;
  }

  return result;
}

void sub_22D18EA80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_22D191338(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_22D1918A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v10 = objc_begin_catch(exception_object);
      v11 = objc_autoreleasePoolPush();
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [v10 reason];
        LODWORD(a9) = 138543618;
        *(&a9 + 4) = v13;
        WORD6(a9) = 2112;
        *(&a9 + 14) = v14;
        _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_ERROR, "%{public}@Couldn't retrieve metadata from photos crop:%@", &a9, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exception_object);
    }

    if (!v9)
    {
      JUMPOUT(0x22D1917CCLL);
    }

    JUMPOUT(0x22D1917C0);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D193604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D19A328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D19A79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22D19BD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D19C138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D19E448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  os_unfair_lock_unlock((v39 + v40));
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v41 - 240), 8);
  _Block_object_dispose((v41 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_22D19F3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  os_unfair_lock_unlock((v17 + a7));
  _Unwind_Resume(a1);
}

void sub_22D19FCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_22D1A0688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D1A3E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  os_unfair_lock_unlock((v28 + v29));
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v30 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_22D1A4108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22D1A4324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D1A4444(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22D1A5020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D1A653C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D1A6D54(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22D1A7648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_22D1A7D24(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v1 + v2));
  _Block_object_dispose((v3 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22D1A9E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {

    __cxa_begin_catch(exception_object);
    v20 = objc_autoreleasePoolPush();
    v21 = v14;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *(v18 - 128) = 138543362;
      *(v17 + 4) = v23;
      _os_log_impl(&dword_22D12F000, v22, OS_LOG_TYPE_ERROR, "%{public}@Clustering error", (v18 - 128), 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1047];
    v25 = v24;
    if (v13)
    {
      v26 = v24;
      *v13 = v25;
    }

    HMIErrorLog(v21, v25);

    __cxa_end_catch();
    JUMPOUT(0x22D1A9D70);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<homeai::clustering::GreedyClusterer>::__shared_ptr_emplace[abi:ne200100]<float,float,float,std::allocator<homeai::clustering::GreedyClusterer>,0>(void *a1, float *a2, float *a3, float *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2840543D0;
  homeai::clustering::GreedyClusterer::GreedyClusterer((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<homeai::clustering::GreedyClusterer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2840543D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CB1A0);
}

id camera_recording_log()
{
  if (camera_recording_log__hmf_once_t0 != -1)
  {
    camera_recording_log_cold_1();
  }

  v1 = camera_recording_log__hmf_once_v1;

  return v1;
}

void __camera_recording_log_block_invoke()
{
  v2 = [@"camera_recording" stringByReplacingOccurrencesOfString:@"_" withString:@"."];
  v0 = HMFCreateOSLogHandle();
  v1 = camera_recording_log__hmf_once_v1;
  camera_recording_log__hmf_once_v1 = v0;
}

id camera_recording_analyzer_log()
{
  if (camera_recording_analyzer_log__hmf_once_t2 != -1)
  {
    camera_recording_analyzer_log_cold_1();
  }

  v1 = camera_recording_analyzer_log__hmf_once_v3;

  return v1;
}

void __camera_recording_analyzer_log_block_invoke()
{
  v2 = [@"camera_recording_analyzer" stringByReplacingOccurrencesOfString:@"_" withString:@"."];
  v0 = HMFCreateOSLogHandle();
  v1 = camera_recording_analyzer_log__hmf_once_v3;
  camera_recording_analyzer_log__hmf_once_v3 = v0;
}

id camera_recording_analyzer_media_log()
{
  if (camera_recording_analyzer_media_log__hmf_once_t4 != -1)
  {
    camera_recording_analyzer_media_log_cold_1();
  }

  v1 = camera_recording_analyzer_media_log__hmf_once_v5;

  return v1;
}

void __camera_recording_analyzer_media_log_block_invoke()
{
  v2 = [@"camera_recording_analyzer_media" stringByReplacingOccurrencesOfString:@"_" withString:@"."];
  v0 = HMFCreateOSLogHandle();
  v1 = camera_recording_analyzer_media_log__hmf_once_v5;
  camera_recording_analyzer_media_log__hmf_once_v5 = v0;
}

id camera_recording_analyzer_scheduler_log()
{
  if (camera_recording_analyzer_scheduler_log__hmf_once_t6 != -1)
  {
    camera_recording_analyzer_scheduler_log_cold_1();
  }

  v1 = camera_recording_analyzer_scheduler_log__hmf_once_v7;

  return v1;
}

void __camera_recording_analyzer_scheduler_log_block_invoke()
{
  v2 = [@"camera_recording_analyzer_scheduler" stringByReplacingOccurrencesOfString:@"_" withString:@"."];
  v0 = HMFCreateOSLogHandle();
  v1 = camera_recording_analyzer_scheduler_log__hmf_once_v7;
  camera_recording_analyzer_scheduler_log__hmf_once_v7 = v0;
}

id camera_recording_analyzer_scheduler_json_log()
{
  if (camera_recording_analyzer_scheduler_json_log__hmf_once_t8 != -1)
  {
    camera_recording_analyzer_scheduler_json_log_cold_1();
  }

  v1 = camera_recording_analyzer_scheduler_json_log__hmf_once_v9;

  return v1;
}

void __camera_recording_analyzer_scheduler_json_log_block_invoke()
{
  v2 = [@"camera_recording_analyzer_scheduler_json" stringByReplacingOccurrencesOfString:@"_" withString:@"."];
  v0 = HMFCreateOSLogHandle();
  v1 = camera_recording_analyzer_scheduler_json_log__hmf_once_v9;
  camera_recording_analyzer_scheduler_json_log__hmf_once_v9 = v0;
}

id camera_recording_maintenance_log()
{
  if (camera_recording_maintenance_log__hmf_once_t10 != -1)
  {
    camera_recording_maintenance_log_cold_1();
  }

  v1 = camera_recording_maintenance_log__hmf_once_v11;

  return v1;
}

void __camera_recording_maintenance_log_block_invoke()
{
  v2 = [@"camera_recording_maintenance" stringByReplacingOccurrencesOfString:@"_" withString:@"."];
  v0 = HMFCreateOSLogHandle();
  v1 = camera_recording_maintenance_log__hmf_once_v11;
  camera_recording_maintenance_log__hmf_once_v11 = v0;
}

void sub_22D1AC608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  cv::Mat::~Mat(&a17);
  cv::Mat::~Mat(&a29);
  _Unwind_Resume(a1);
}

void sub_22D1ACB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HMIVideoAnalyzerDecodeModeAsString(uint64_t a1)
{
  v1 = @"None";
  if (a1 == 1)
  {
    v1 = @"IFrameOnly";
  }

  if (a1 == 2)
  {
    return @"Full";
  }

  else
  {
    return v1;
  }
}

void sub_22D1B4638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id objectAsString(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id objectAsNumber(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
      [v3 setNumberStyle:1];
      v2 = [v3 numberFromString:v1];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void sub_22D1B7FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D1BC610(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HMIDispatchQueueNameString(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = a1;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if (v4)
  {
    v8 = @".";
  }

  else
  {
    v8 = &stru_284057FB8;
  }

  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = &stru_284057FB8;
  }

  v10 = [v5 hash];

  v11 = [v3 stringWithFormat:@"com.apple.HomeAI.%@%@%@.%tu", v7, v8, v9, v10];

  return v11;
}

unint64_t HMIHashCGRect(int8x16_t a1, double a2, int8x16_t a3, double a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v7 = -*a1.i64;
  if (*a1.i64 >= 0.0)
  {
    v7 = *a1.i64;
  }

  *a6.i64 = floor(v7 + 0.5);
  v8 = (v7 - *a6.i64) * 1.84467441e19;
  *a7.i64 = *a6.i64 - trunc(*a6.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = vnegq_f64(v9);
  v11 = vbslq_s8(v10, a7, a6);
  v12 = 2654435761u * *v11.i64;
  v13 = v12 + v8;
  if (v8 <= 0.0)
  {
    v13 = 2654435761u * *v11.i64;
  }

  v14 = v12 - fabs(v8);
  if (v8 >= 0.0)
  {
    v14 = v13;
  }

  if (a2 < 0.0)
  {
    a2 = -a2;
  }

  *v11.i64 = floor(a2 + 0.5);
  v15 = (a2 - *v11.i64) * 1.84467441e19;
  *a7.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
  v16 = vbslq_s8(v10, a7, v11);
  v17 = 2654435761u * *v16.i64;
  v18 = v17 + v15;
  if (v15 <= 0.0)
  {
    v18 = 2654435761u * *v16.i64;
  }

  v19 = v17 - fabs(v15);
  if (v15 >= 0.0)
  {
    v19 = v18;
  }

  v20 = -*a3.i64;
  if (*a3.i64 >= 0.0)
  {
    v20 = *a3.i64;
  }

  *a3.i64 = floor(v20 + 0.5);
  v21 = (v20 - *a3.i64) * 1.84467441e19;
  *v16.i64 = *a3.i64 - trunc(*a3.i64 * 5.42101086e-20) * 1.84467441e19;
  v24 = vbslq_s8(v10, v16, a3);
  v22 = 2654435761u * *v24.i64;
  v23 = v22 + v21;
  *v24.i64 = fabs(v21);
  if (v21 <= 0.0)
  {
    v23 = v22;
  }

  v25 = v22 - *v24.i64;
  if (v21 >= 0.0)
  {
    v25 = v23;
  }

  v26 = -a4;
  if (a4 >= 0.0)
  {
    v26 = a4;
  }

  *a1.i64 = floor(v26 + 0.5);
  v27 = (v26 - *a1.i64) * 1.84467441e19;
  *v24.i64 = *a1.i64 - trunc(*a1.i64 * 5.42101086e-20) * 1.84467441e19;
  a1.i64[0] = vbslq_s8(v10, v24, a1).i64[0];
  v28 = 2654435761u * *a1.i64;
  v29 = v28 + v27;
  if (v27 <= 0.0)
  {
    v29 = 2654435761u * *a1.i64;
  }

  v30 = v28 - fabs(v27);
  if (v27 >= 0.0)
  {
    v30 = v29;
  }

  return v19 ^ v14 ^ v25 ^ v30;
}

uint64_t HMIHashCMTime(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 < 0)
  {
    v1 = -v1;
  }

  return 2654435761 * v1;
}

double HMICVPixelBufferGetSize(__CVBuffer *a1)
{
  Width = CVPixelBufferGetWidth(a1);
  CVPixelBufferGetHeight(a1);
  return Width;
}

uint64_t HMICVPixelBufferSetValue(__CVBuffer *a1, int a2)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  if (CVPixelBufferIsPlanar(a1))
  {
    if (CVPixelBufferGetPlaneCount(a1))
    {
      v4 = 0;
      do
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, v4);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, v4);
        v7 = CVPixelBufferGetBytesPerRowOfPlane(a1, v4) * HeightOfPlane;
        if (v4)
        {
          v8 = -128;
        }

        else
        {
          v8 = a2;
        }

        memset(BaseAddressOfPlane, v8, v7);
        ++v4;
      }

      while (v4 < CVPixelBufferGetPlaneCount(a1));
    }
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    Height = CVPixelBufferGetHeight(a1);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    memset(BaseAddress, a2, BytesPerRow * Height);
  }

  return CVPixelBufferUnlockBaseAddress(a1, 0);
}

id HMIVideoIdForVideoFragment(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 absoluteString];
  v6 = [v5 hasPrefix:@"HKD://"];

  if (v6)
  {
    v7 = [v4 UUIDString];
  }

  else
  {
    v8 = [v3 lastPathComponent];
    v7 = [v8 stringByDeletingPathExtension];
  }

  return v7;
}

id HMICGRectCreateArrayRepresentation(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v14[4] = *MEMORY[0x277D85DE8];
  if (CGRectIsNull(*&a1))
  {
    v8 = &unk_284075690;
  }

  else
  {
    v16.origin.x = a1;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetMinY(v16)];
    v14[0] = v9;
    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetMinX(v17)];
    v14[1] = v10;
    v18.origin.x = a1;
    v18.origin.y = a2;
    v18.size.width = a3;
    v18.size.height = a4;
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetMaxY(v18)];
    v14[2] = v11;
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetMaxX(v19)];
    v14[3] = v12;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  }

  return v8;
}

void HMICGRectNormalizedFromPixel(unint64_t a1, unint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, 1.0 / a1, 1.0 / a2);
  v10 = v11;
  v12.origin.x = a3;
  v12.origin.y = a4;
  v12.size.width = a5;
  v12.size.height = a6;
  CGRectApplyAffineTransform(v12, &v10);
}

void HMICGRectPixelFromNormalized(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  *&v12.a = *MEMORY[0x277CBF2C0];
  *&v12.c = v10;
  *&v12.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v11.a = *&v12.a;
  *&v11.c = v10;
  *&v11.tx = *&v12.tx;
  CGAffineTransformScale(&v12, &v11, a5, a6);
  v11 = v12;
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  v14 = CGRectApplyAffineTransform(v13, &v11);
  CGRectIntegral(v14);
}

double HMICGRectExpandWithinLimit(double a1, double a2, double a3, double a4, double a5, double a6, float a7)
{
  v7 = a3 * (a7 + -1.0) * 0.5;
  if (a1 + a3 + v7 <= a5)
  {
    v9 = a3 * (a7 + -1.0) * 0.5;
  }

  else
  {
    v8 = a5 - (a1 + a3);
    v9 = v8;
  }

  if (a1 < v7)
  {
    v10 = a1;
    v7 = v10;
  }

  if (v9 >= v7)
  {
    v9 = v7;
  }

  return a1 - v9;
}

id HMIFormatNumber(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCABB8];
  v4 = a1;
  v5 = objc_alloc_init(v3);
  [v5 setMaximumFractionDigits:a2];
  v6 = [v5 stringFromNumber:v4];

  return v6;
}

id HMIJSONFormattedStringForDate(void *a1)
{
  v1 = MEMORY[0x277CCA968];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"];
  v4 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v4];

  v5 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v5];

  v6 = [v3 stringFromDate:v2];

  return v6;
}

id HMIJSONDecimalNumberForNumber(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x277CCA988] decimalNumberHandlerWithRoundingMode:0 scale:a2 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
  v5 = MEMORY[0x277CCA980];
  if (v3)
  {
    [v3 decimalValue];
  }

  else
  {
    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
  }

  v6 = [v5 decimalNumberWithDecimal:v9];
  v7 = [v6 decimalNumberByRoundingAccordingToBehavior:v4];

  return v7;
}

uint64_t HMIIsResidentDevice()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productClass];

  return (v1 < 7) & (0x58u >> v1);
}

id HMIURLForCacheDirectory(void *a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  v3 = [v2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v9];
  v4 = v9;

  if (v3)
  {
    v5 = [v3 URLByAppendingPathComponent:@"com.apple.HomeAI" isDirectory:1];
    v6 = [v5 absoluteURL];
  }

  else
  {
    if (a1)
    {
      v7 = v4;
      *a1 = v4;
    }

    HMIErrorLogC(v4);
    v6 = 0;
  }

  return v6;
}

id HMIURLForDirectoryPathRelativeToCacheDirectory(void *a1, void *a2)
{
  v3 = a1;
  v11 = 0;
  v4 = HMIURLForCacheDirectory(&v11);
  v5 = v11;
  v6 = v5;
  if (v4)
  {
    v7 = [v4 URLByAppendingPathComponent:v3 isDirectory:1];
    v8 = [v7 absoluteURL];
  }

  else
  {
    if (a2)
    {
      v9 = v5;
      *a2 = v6;
    }

    HMIErrorLogC(v6);
    v8 = 0;
  }

  return v8;
}

id HMIVersionInformation()
{
  v0 = [MEMORY[0x277CCAB68] string];
  v1 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HomeAI"];
  v2 = [v1 infoDictionary];
  v3 = [v2 objectForKey:*MEMORY[0x277CBED58]];
  [v0 appendFormat:@"homeai: %@\n", v3];

  return v0;
}

uint64_t HMIVisionRuntimeVersion()
{
  result = NSVersionOfRunTimeLibrary("Vision");
  if (result == -1)
  {
    objc_opt_class();

    return NSVersionOfRunTimeLibrary("Vision");
  }

  return result;
}

id HMIModelUUID(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBEB28] data];
  [v2 appendBytes:&v8 length:8];
  [v2 appendBytes:&v7 length:8];
  v3 = MEMORY[0x277CCAD78];
  v4 = [MEMORY[0x277CCAD78] hmf_zeroUUID];
  v5 = [v3 hmf_UUIDWithNamespace:v4 data:v2];

  return v5;
}

void sub_22D1C2DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D1C3064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D1C37A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_22D1C3D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D1C4078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D1C48FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_22D1C5934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D1C5D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D1C5F20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22D1C63E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D1C8AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D1CBB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_22D1CE4A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22D1CE920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _decoderDidDecodeFrameCallback(void *a1, uint64_t a2, CMTimeFlags a3, uint64_t a4, __CVBuffer *a5, CMTime *a6, uint64_t a7)
{
  v24 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = [v11 object];
  v13 = v12;
  if (a3)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v13;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      LODWORD(buf.duration.value) = 138543618;
      *(&buf.duration.value + 4) = v17;
      LOWORD(buf.duration.flags) = 1024;
      *(&buf.duration.flags + 2) = a3;
      _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_ERROR, "%{public}@Frame decode error %d", &buf, 0x12u);
    }

LABEL_5:
    objc_autoreleasePoolPop(v14);
    goto LABEL_6;
  }

  if (!v12)
  {
    v14 = objc_autoreleasePoolPush();
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      LODWORD(buf.duration.value) = 138543362;
      *(&buf.duration.value + 4) = v20;
      _os_log_impl(&dword_22D12F000, v19, OS_LOG_TYPE_ERROR, "%{public}@Decompression session decoded frames after decoder was deallocated, ignoring frames.", &buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (a5)
  {
    *&buf.duration.value = *a7;
    buf.duration.epoch = *(a7 + 16);
    buf.presentationTimeStamp = *a6;
    buf.decodeTimeStamp = **&MEMORY[0x277CC0898];
    formatDescriptionOut = 0;
    v18 = *MEMORY[0x277CBECE8];
    CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x277CBECE8], a5, &formatDescriptionOut);
    cf = 0;
    CMSampleBufferCreateForImageBuffer(v18, a5, 1u, 0, 0, formatDescriptionOut, &buf, &cf);
    [v13 _didDecodeSampleBuffer:cf];
    CFRelease(cf);
    CFRelease(formatDescriptionOut);
  }

LABEL_6:
}

void sub_22D1D439C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't append sample buffer because, exception %@"];
    [v9 _failWithDescription:v10];

    objc_end_catch();
    JUMPOUT(0x22D1D435CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D1D52D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D1D6130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D1D6664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22D1D6D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D1D7BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = HMIMotionDetector;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_22D1D8928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v64 = STACK[0x390];
  if (STACK[0x390])
  {
    STACK[0x398] = v64;
    operator delete(v64);
  }

  v65 = STACK[0x3A8];
  if (STACK[0x3A8])
  {
    STACK[0x3B0] = v65;
    operator delete(v65);
  }

  v66 = STACK[0x400];
  if (STACK[0x400])
  {
    STACK[0x408] = v66;
    operator delete(v66);
  }

  v67 = STACK[0x418];
  if (STACK[0x418])
  {
    STACK[0x420] = v67;
    operator delete(v67);
  }

  a59 = &STACK[0x430];
  std::vector<cv::Mat>::__destroy_vector::operator()[abi:ne200100](&a59);
  cv::Mat::~Mat(&STACK[0x448]);
  a59 = v62 - 248;
  std::vector<cv::Mat>::__destroy_vector::operator()[abi:ne200100](&a59);
  cv::Mat::~Mat((v62 - 224));
  __HMISignpostScopeLeave((v62 - 128));

  _Unwind_Resume(a1);
}

uint64_t cv::MatExpr::operator cv::Mat@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 80) = 0;
  *(a2 + 64) = a2 + 8;
  *(a2 + 72) = a2 + 80;
  *(a2 + 88) = 0;
  *a2 = 1124007936;
  *(a2 + 4) = 0u;
  *(a2 + 20) = 0u;
  *(a2 + 36) = 0u;
  *(a2 + 48) = 0u;
  return (*(**a1 + 24))(*a1, a1, a2, 0xFFFFFFFFLL);
}

void cv::MatExpr::~MatExpr(cv::MatExpr *this)
{
  v2 = *(this + 29);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((this + 208));
  }

  *(this + 28) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 30) = 0;
  if (*(this + 53) >= 1)
  {
    v3 = 0;
    v4 = *(this + 34);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(this + 53));
  }

  *(this + 29) = 0;
  v5 = *(this + 35);
  if (v5)
  {
    v6 = v5 == this + 288;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  v7 = *(this + 17);
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((this + 112));
  }

  *(this + 16) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  if (*(this + 29) >= 1)
  {
    v8 = 0;
    v9 = *(this + 22);
    do
    {
      *(v9 + 4 * v8++) = 0;
    }

    while (v8 < *(this + 29));
  }

  *(this + 17) = 0;
  v10 = *(this + 23);
  if (v10)
  {
    v11 = v10 == this + 192;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    free(v10);
  }

  v12 = *(this + 5);
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((this + 16));
  }

  *(this + 4) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  if (*(this + 5) >= 1)
  {
    v13 = 0;
    v14 = *(this + 10);
    do
    {
      *(v14 + 4 * v13++) = 0;
    }

    while (v13 < *(this + 5));
  }

  *(this + 5) = 0;
  v15 = *(this + 11);
  if (v15)
  {
    v16 = v15 == this + 96;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    free(v15);
  }
}

void std::vector<cv::Mat>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<cv::Mat>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<cv::Mat>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = v3 - 96;
      v5 = *(v3 - 72);
      if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate((v3 - 96));
      }

      *(v3 - 80) = 0;
      *(v3 - 56) = 0;
      *(v3 - 48) = 0;
      *(v3 - 64) = 0;
      if (*(v3 - 92) >= 1)
      {
        v6 = 0;
        v7 = *(v3 - 32);
        do
        {
          *(v7 + 4 * v6++) = 0;
        }

        while (v6 < *(v3 - 92));
      }

      *(v3 - 72) = 0;
      v8 = *(v3 - 24);
      if (v8)
      {
        v9 = v8 == (v3 - 16);
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        free(v8);
      }

      v3 -= 96;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22D1D9CD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22D1D9DA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<cv::Point_<float>>::__init_with_size[abi:ne200100]<cv::Point_<float>*,cv::Point_<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22D1D9E14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<cv::Mat>::__init_with_size[abi:ne200100]<cv::Mat*,cv::Mat*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<cv::Mat>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22D1D9E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<cv::Mat>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<cv::Mat>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Mat>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cv::Mat>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

cv::Mat *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<cv::Mat>,cv::Mat*,cv::Mat*,cv::Mat*>(uint64_t a1, cv::Mat *a2, cv::Mat *a3, cv::Mat *this)
{
  v4 = this;
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      *(v4 + 2) = *(v6 + 2);
      v7 = *(v6 + 24);
      *(v4 + 24) = v7;
      *(v4 + 40) = *(v6 + 40);
      *(v4 + 7) = *(v6 + 7);
      *(v4 + 8) = v4 + 8;
      *(v4 + 10) = 0;
      *(v4 + 9) = v4 + 80;
      *(v4 + 11) = 0;
      if (v7)
      {
        atomic_fetch_add(v7, 1u);
      }

      if (*(v6 + 1) > 2)
      {
        *(v4 + 1) = 0;
        cv::Mat::copySize(v4, v6);
      }

      else
      {
        v8 = *(v6 + 9);
        v9 = *(v4 + 9);
        *v9 = *v8;
        v9[1] = v8[1];
      }

      v6 = (v6 + 96);
      v4 = (v14 + 96);
      v14 = (v14 + 96);
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<cv::Mat>,cv::Mat*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<cv::Mat>,cv::Mat*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<cv::Mat>,std::reverse_iterator<cv::Mat*>,std::reverse_iterator<cv::Mat*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<cv::Mat>,std::reverse_iterator<cv::Mat*>,std::reverse_iterator<cv::Mat*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = v6 - 96;
      v8 = *(v6 - 72);
      if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate((v6 - 96));
      }

      *(v6 - 80) = 0;
      *(v6 - 56) = 0;
      *(v6 - 48) = 0;
      *(v6 - 64) = 0;
      if (*(v6 - 92) >= 1)
      {
        v9 = 0;
        v10 = *(v6 - 32);
        do
        {
          *(v10 + 4 * v9++) = 0;
        }

        while (v9 < *(v6 - 92));
      }

      *(v6 - 72) = 0;
      v11 = *(v6 - 24);
      if (v11)
      {
        v12 = v11 == (v6 - 16);
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        free(v11);
      }

      v6 -= 96;
    }

    while (v7 != a5);
  }
}

void sub_22D1DB014(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

__CFString *HMISessionEntityAssignmentAsString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_278755CA0[a1 - 1];
  }
}

void sub_22D1DF2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  _Block_object_dispose(&a21, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D1E1BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D1E47BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D1E4B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVCPHomeKitAnalysisSessionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaAnalysisLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaAnalysisLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278755E50;
    v6 = 0;
    MediaAnalysisLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (MediaAnalysisLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("VCPHomeKitAnalysisSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVCPHomeKitAnalysisSessionClass_block_invoke_cold_1();
  }

  getVCPHomeKitAnalysisSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaAnalysisLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  MediaAnalysisLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *cvCreateMemStorage(int a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x1020040727097A4uLL);
  if (!v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "");
    std::string::basic_string[abi:ne200100]<0>(v7, "icvInitMemStorage");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v9, 4294967269, v8, v7, __p, 86);
    cv::error(v9, v3);
  }

  if (a1 >= 1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 65408;
  }

  if (v4 == 0x7FFFFFFF)
  {
    cvCreateMemStorage_cold_1();
  }

  v2[4] = 0;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *v2 = 1116274688;
  *(v2 + 8) = (v4 + 7) & 0xFFFFFFF8;
  return v2;
}

void sub_22D1EF9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void cvReleaseMemStorage(void **a1)
{
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "");
    std::string::basic_string[abi:ne200100]<0>(v4, "cvReleaseMemStorage");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v6, 4294967269, v5, v4, __p, 177);
    cv::error(v6, v1);
  }

  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    icvDestroyMemStorage(v2);
    cvFree_(v2);
  }
}

void sub_22D1EFBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void *icvDestroyMemStorage(void *result)
{
  v1 = result;
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "");
    std::string::basic_string[abi:ne200100]<0>(v10, "icvDestroyMemStorage");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v12, 4294967269, v11, v10, __p, 134);
    cv::error(v12, v2);
  }

  v3 = result[3];
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = result + 1;
  for (i = result[1]; i; v4 = result)
  {
    result = i;
    i = i[1];
    v7 = v1[3];
    if (v7)
    {
      if (v4)
      {
        v8 = v4[1];
        *result = v4;
        result[1] = v8;
        if (v8)
        {
          *v8 = result;
        }

        v4[1] = result;
      }

      else
      {
        *(v7 + 8) = result;
        *(v7 + 16) = result;
        *result = 0;
        result[1] = 0;
        *(v1 + 9) = *(v1 + 8) - 16;
      }
    }

    else
    {
      cvFree_(result);
      result = v4;
    }
  }

  *(v1 + 9) = 0;
  *v5 = 0;
  v1[2] = 0;
  return result;
}

void sub_22D1EFD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t cvRestoreMemStoragePos(uint64_t result, uint64_t *a2)
{
  if (!result || !a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v9, "");
    std::string::basic_string[abi:ne200100]<0>(v8, "cvRestoreMemStoragePos");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v10, 4294967269, v9, v8, __p, 282);
    cv::error(v10, v2);
  }

  v3 = *(a2 + 2);
  if (v3 > *(result + 32))
  {
    std::string::basic_string[abi:ne200100]<0>(v9, "");
    std::string::basic_string[abi:ne200100]<0>(v8, "cvRestoreMemStoragePos");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v10, 4294967095, v9, v8, __p, 284);
    cv::error(v10, v4);
  }

  v5 = *a2;
  *(result + 16) = *a2;
  *(result + 36) = v3;
  if (!v5)
  {
    v6 = *(result + 8);
    *(result + 16) = v6;
    if (v6)
    {
      LODWORD(v6) = *(result + 32) - 16;
    }

    *(result + 36) = v6;
  }

  return result;
}

void sub_22D1EFF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t cvMemStorageAlloc(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "NULL storage pointer");
    std::string::basic_string[abi:ne200100]<0>(v11, "cvMemStorageAlloc");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v13, 4294967269, v12, v11, __p, 321);
    cv::error(v13, v4);
  }

  if (a2 >> 31)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "Too large memory block is requested");
    std::string::basic_string[abi:ne200100]<0>(v11, "cvMemStorageAlloc");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v13, 4294967085, v12, v11, __p, 324);
    cv::error(v13, v5);
  }

  v6 = *(a1 + 36);
  if ((v6 & 7) != 0)
  {
    cvMemStorageAlloc_cold_1();
  }

  v7 = v6;
  if (v6 < a2)
  {
    if (((*(a1 + 32) & 0xFFFFFFF8) - 16) < a2)
    {
      std::string::basic_string[abi:ne200100]<0>(v12, "requested size is negative or too big");
      std::string::basic_string[abi:ne200100]<0>(v11, "cvMemStorageAlloc");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
      cv::Exception::Exception(v13, 4294967085, v12, v11, __p, 332);
      cv::error(v13, v8);
    }

    icvGoNextMemBlock(a1);
    v6 = *(a1 + 36);
    v7 = v6;
  }

  result = *(a1 + 16) + *(a1 + 32) - v7;
  if ((result & 7) != 0)
  {
    cvMemStorageAlloc_cold_2();
  }

  *(a1 + 36) = (v6 - v2) & 0xFFFFFFF8;
  return result;
}

void sub_22D1F01F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t icvGoNextMemBlock(uint64_t result)
{
  v1 = result;
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "");
    std::string::basic_string[abi:ne200100]<0>(v11, "icvGoNextMemBlock");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(&v13, 4294967269, v12, v11, __p, 212);
    cv::error(&v13, v2);
  }

  v3 = *(result + 16);
  if (!v3 || (v4 = *(v3 + 8)) == 0)
  {
    v5 = *(result + 24);
    if (v5)
    {
      v13 = *(v5 + 16);
      v14 = *(v5 + 36);
      icvGoNextMemBlock(v5);
      v4 = *(v5 + 16);
      result = cvRestoreMemStoragePos(v5, &v13);
      v6 = *(v5 + 16);
      if (v4 == v6)
      {
        if (*(v5 + 8) != v4)
        {
          icvGoNextMemBlock();
        }

        *(v5 + 36) = 0;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
      }

      else
      {
        v7 = v4[1];
        v6[1] = v7;
        if (v7)
        {
          *v7 = v6;
        }
      }
    }

    else
    {
      result = malloc_type_malloc(*(result + 32), 0x20040A4A59CD2uLL);
      v4 = result;
    }

    v4[1] = 0;
    v8 = *(v1 + 16);
    *v4 = v8;
    if (!v8)
    {
      v8 = v1;
    }

    *(v8 + 8) = v4;
  }

  *(v1 + 16) = v4;
  v9 = *(v1 + 32);
  *(v1 + 36) = v9 - 16;
  if ((v9 & 7) != 0)
  {
    icvGoNextMemBlock();
  }

  return result;
}

void sub_22D1F0404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

_DWORD *cvCreateSeq(unsigned int a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "");
    std::string::basic_string[abi:ne200100]<0>(v14, "cvCreateSeq");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v16, 4294967269, v15, v14, __p, 371);
    cv::error(v16, v8);
  }

  if (a2 < 0x60 || !a3)
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "");
    std::string::basic_string[abi:ne200100]<0>(v14, "cvCreateSeq");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v16, 4294967095, v15, v14, __p, 373);
    cv::error(v16, v9);
  }

  v10 = cvMemStorageAlloc(a4, a2);
  bzero(v10, a2);
  *v10 = a1 | 0x42990000;
  v10[1] = a2;
  if ((a1 & 0xFFF) != 0 && (a1 & 0xFFF) != 7 && (((a1 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a1 & 7))) & 3) != a3)
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "Specified element size doesn't match to the size of the specified element type (try to use 0 for element type)");
    std::string::basic_string[abi:ne200100]<0>(v14, "cvCreateSeq");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v16, 4294967095, v15, v14, __p, 389);
    cv::error(v16, v11);
  }

  v10[11] = a3;
  *(v10 + 9) = a4;
  cvSetSeqBlockSize(v10, 0x400 / a3);
  return v10;
}

void sub_22D1F06CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t cvSetSeqBlockSize(uint64_t result, int a2)
{
  v2 = a2;
  if (!result || !*(result + 72))
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "");
    std::string::basic_string[abi:ne200100]<0>(v9, "cvSetSeqBlockSize");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v11, 4294967269, v10, v9, __p, 409);
    cv::error(v11, v3);
  }

  if (a2 < 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "");
    std::string::basic_string[abi:ne200100]<0>(v9, "cvSetSeqBlockSize");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v11, 4294967085, v10, v9, __p, 411);
    cv::error(v11, v5);
  }

  v4 = *(result + 44);
  if (!a2)
  {
    if (1024 / v4 <= 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 1024 / v4;
    }
  }

  v6 = (*(*(result + 72) + 32) & 0xFFFFFFF8) - 48;
  if (v2 * v4 > v6)
  {
    v2 = v6 / v4;
    if (!(v6 / v4))
    {
      std::string::basic_string[abi:ne200100]<0>(v10, "Storage block size is too small to fit the sequence elements");
      std::string::basic_string[abi:ne200100]<0>(v9, "cvSetSeqBlockSize");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
      cv::Exception::Exception(v11, 4294967085, v10, v9, __p, 427);
      cv::error(v11, v7);
    }
  }

  *(result + 64) = v2;
  return result;
}

void sub_22D1F0980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t cvGetSeqElem(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    v3 = (v2 & (a2 >> 31)) + a2;
    v4 = v3 >= v2 ? *(a1 + 40) : 0;
    a2 = v3 - v4;
    if (v3 - v4 >= v2)
    {
      return 0;
    }
  }

  v5 = *(a1 + 88);
  if (v2 >= 2 * a2)
  {
    while (1)
    {
      v7 = *(v5 + 5);
      if (a2 < v7)
      {
        break;
      }

      v5 = v5[1];
      a2 -= v7;
    }
  }

  else
  {
    do
    {
      v5 = *v5;
      v2 -= *(v5 + 5);
    }

    while (a2 < v2);
    a2 -= v2;
  }

  return v5[3] + *(a1 + 44) * a2;
}

uint64_t cvSliceLength(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (SHIDWORD(a1) <= 0)
  {
    v3 = *(a2 + 40);
  }

  else
  {
    v3 = 0;
  }

  if (HIDWORD(a1) == a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 + HIDWORD(a1) - ((v2 & (a1 >> 31)) + a1);
  }

  if (v2 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a2 + 40);
  }

  v6 = v4 + v2 * (((v4 & ~(v4 >> 31)) - (v4 + (v4 >> 31))) / v5 + (v4 >> 31));
  if (v6 >= v2)
  {
    return v2;
  }

  else
  {
    return v6;
  }
}

char *cvCvtSeqToArray(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if (!a1 || !a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "");
    std::string::basic_string[abi:ne200100]<0>(v18, "cvCvtSeqToArray");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v20, 4294967269, v19, v18, __p, 545);
    cv::error(v20, v6);
  }

  v7 = *(a1 + 44);
  v8 = cvSliceLength(a3, a1) * v7;
  if (!v8)
  {
    return 0;
  }

  cvStartReadSeq(a1, v21, 0);
  cvSetSeqReaderPos(v21, v3, 0);
  v9 = v24;
  v10 = v4;
  v12 = v22;
  v11 = v23;
  do
  {
    v13 = v9 - v11;
    if (v8 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v8;
    }

    memcpy(v10, v11, v14);
    v10 += v14;
    v12 = *(v12 + 8);
    v11 = *(v12 + 24);
    v22 = v12;
    v23 = v11;
    v9 = v11 + *(v12 + 20) * v7;
    v24 = &v11[*(v12 + 20) * v7];
    v15 = __OFSUB__(v8, v14);
    v8 -= v14;
  }

  while (!((v8 < 0) ^ v15 | (v8 == 0)));
  return v4;
}

void sub_22D1F0C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t cvStartReadSeq(uint64_t result, uint64_t a2, int a3)
{
  if (!a2 || (*(a2 + 40) = 0, *(a2 + 24) = 0u, *(a2 + 8) = 0u, !result))
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "");
    std::string::basic_string[abi:ne200100]<0>(v12, "cvStartReadSeq");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v14, 4294967269, v13, v12, __p, 939);
    cv::error(v14, v3);
  }

  *a2 = 64;
  *(a2 + 8) = result;
  v4 = *(result + 88);
  if (v4)
  {
    v5 = *v4;
    v6 = v4[3];
    *(a2 + 24) = v6;
    v7 = v5[3];
    v8 = *(v5 + 5);
    v9 = *(result + 44);
    v10 = v7 + (v8 - 1) * v9;
    *(a2 + 56) = v10;
    *(a2 + 48) = *(v4 + 4);
    if (a3)
    {
      *(a2 + 24) = v10;
      *(a2 + 56) = v6;
      v6 = v7;
      v4 = v5;
    }

    else
    {
      v8 = *(v4 + 5);
    }

    *(a2 + 16) = v4;
    *(a2 + 32) = v6;
    *(a2 + 40) = v6 + v8 * v9;
  }

  else
  {
    *(a2 + 56) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
  }

  return result;
}

void sub_22D1F0DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void *cvSetSeqReaderPos(void *result, int a2, int a3)
{
  v3 = a2;
  if (!result || (v4 = result[1]) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "");
    std::string::basic_string[abi:ne200100]<0>(v21, "cvSetSeqReaderPos");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v23, 4294967269, v22, v21, __p, 1039);
    cv::error(v23, v5);
  }

  v6 = *(v4 + 44);
  if (a3)
  {
    v7 = v6 * a2;
    v8 = result[2];
    v9 = result[3];
    if (v6 * a2 <= 0)
    {
      v15 = result[4];
      v11 = v9 + v7;
      if (v11 < v15)
      {
        do
        {
          v7 += v9 - v15;
          v8 = *v8;
          v15 = v8[3];
          v9 = v15 + *(v8 + 5) * v6;
          v11 = v9 + v7;
        }

        while (v11 < v15);
        result[2] = v8;
        result[4] = v15;
        result[5] = v9;
      }
    }

    else
    {
      v10 = result[5];
      v11 = v9 + v7;
      if (v11 >= v10)
      {
        do
        {
          v7 += v9 - v10;
          v8 = v8[1];
          v9 = v8[3];
          v12 = *(v8 + 5) * v6;
          v10 = v9 + v12;
        }

        while (v7 >= v12);
        result[2] = v8;
        v11 = v9 + v7;
        result[4] = v9;
        result[5] = v10;
      }
    }

    result[3] = v11;
  }

  else
  {
    v13 = *(v4 + 40);
    if (a2 < 0)
    {
      if (-v13 > a2)
      {
        std::string::basic_string[abi:ne200100]<0>(v22, "");
        std::string::basic_string[abi:ne200100]<0>(v21, "cvSetSeqReaderPos");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
        cv::Exception::Exception(v23, 4294967085, v22, v21, __p, 1049);
        cv::error(v23, v16);
      }

      v3 = v13 + a2;
    }

    else if (a2 >= v13)
    {
      if (a2 - v13 >= v13)
      {
        std::string::basic_string[abi:ne200100]<0>(v22, "");
        std::string::basic_string[abi:ne200100]<0>(v21, "cvSetSeqReaderPos");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
        cv::Exception::Exception(v23, 4294967085, v22, v21, __p, 1056);
        cv::error(v23, v14);
      }

      v3 = a2 - v13;
    }

    v17 = *(result[1] + 88);
    v18 = *(v17 + 5);
    if (v3 >= v18)
    {
      if (v13 >= 2 * v3)
      {
        do
        {
          v17 = v17[1];
          v3 -= v18;
          v18 = *(v17 + 5);
        }

        while (v3 >= v18);
      }

      else
      {
        do
        {
          v17 = *v17;
          v18 = *(v17 + 5);
          v13 -= v18;
        }

        while (v3 < v13);
        v3 -= v13;
      }
    }

    v19 = v17[3];
    result[3] = v19 + v3 * v6;
    if (result[2] != v17)
    {
      result[2] = v17;
      result[4] = v19;
      result[5] = v19 + v18 * v6;
    }
  }

  return result;
}

void sub_22D1F1188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t icvGrowSeq(uint64_t a1, int a2)
{
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "");
    std::string::basic_string[abi:ne200100]<0>(v27, "icvGrowSeq");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v29, 4294967269, v28, v27, __p, 631);
    cv::error(v29, v4);
  }

  result = *(a1 + 80);
  if (result)
  {
    *(a1 + 80) = *(result + 8);
LABEL_23:
    v17 = *(a1 + 88);
    if (v17)
    {
      *result = *v17;
      *(result + 8) = v17;
      *v17 = result;
      v18 = *result;
      v19 = (*result + 8);
    }

    else
    {
      *(a1 + 88) = result;
      *(result + 8) = result;
      v19 = result;
      v17 = result;
      v18 = result;
    }

    *v19 = result;
    v20 = *(result + 20);
    if (v20 < 1 || (v21 = *(a1 + 44), v22 = v20 / v21, v20 % v21))
    {
      icvGrowSeq();
    }

    v23 = *(result + 24);
    if (a2)
    {
      v24 = v23 + v20;
      *(result + 24) = v24;
      if (result == v18)
      {
        *(a1 + 48) = v24;
        *(a1 + 56) = v24;
      }

      else
      {
        if (*(v17 + 16))
        {
          icvGrowSeq();
        }

        *(a1 + 88) = result;
        v17 = result;
      }

      *(result + 16) = 0;
      do
      {
        *(result + 16) += v22;
        result = *(result + 8);
      }

      while (result != v17);
    }

    else
    {
      *(a1 + 48) = v23 + v20;
      *(a1 + 56) = v23;
      if (result == v18)
      {
        v25 = 0;
      }

      else
      {
        v25 = *(v18 + 20) + *(v18 + 16);
      }

      *(result + 16) = v25;
    }

    *(result + 20) = 0;
    return result;
  }

  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 44);
  if (*(a1 + 40) >= 4 * v6)
  {
    result = cvSetSeqBlockSize(a1, 2 * v6);
  }

  if (!v7)
  {
    std::string::basic_string[abi:ne200100]<0>(v28, "The sequence has NULL storage pointer");
    std::string::basic_string[abi:ne200100]<0>(v27, "icvGrowSeq");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v29, 4294967269, v28, v27, __p, 644);
    cv::error(v29, v9);
  }

  v10 = *(v7 + 36);
  v11 = *(v7 + 16) + *(v7 + 32);
  v12 = *(a1 + 48);
  if ((v11 - v10 - v12) > 7 || a2 || v10 < *(a1 + 44))
  {
    v15 = v6 * v8 + 32;
    if (v10 < v15)
    {
      v16 = v6 / 3;
      if (v6 <= 5)
      {
        v16 = 1;
      }

      if (v10 >= v16 * v8 + 40)
      {
        v15 = (v10 - 32) / *(a1 + 44) * *(a1 + 44) + 32;
      }

      else
      {
        icvGoNextMemBlock(v7);
        if (*(v7 + 36) < v15)
        {
          icvGrowSeq();
        }
      }
    }

    result = cvMemStorageAlloc(v7, v15);
    *(result + 24) = (result + 39) & 0xFFFFFFFFFFFFFFF8;
    *(result + 20) = v15 - 32;
    *result = 0;
    *(result + 8) = 0;
    goto LABEL_23;
  }

  v13 = v10 / v8;
  if (v13 >= v6)
  {
    v13 = v6;
  }

  v14 = v12 + v13 * v8;
  *(a1 + 48) = v14;
  *(v7 + 36) = (v11 - v14) & 0xFFFFFFF8;
  return result;
}

void sub_22D1F1558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void *cvChangeSeqBlock(void *result, int a2)
{
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "");
    std::string::basic_string[abi:ne200100]<0>(v11, "cvChangeSeqBlock");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v13, 4294967269, v12, v11, __p, 989);
    cv::error(v13, v2);
  }

  v3 = result[2];
  if (a2 < 1)
  {
    v9 = *v3;
    result[2] = *v3;
    v5 = *(v9 + 24);
    v6 = *(v9 + 20);
    v7 = *(result[1] + 44);
    v8 = v5 + v7 * (v6 - 1);
  }

  else
  {
    v4 = v3[1];
    result[2] = v4;
    v5 = *(v4 + 24);
    v6 = *(v4 + 20);
    v7 = *(result[1] + 44);
    v8 = v5;
  }

  result[3] = v8;
  result[4] = v5;
  result[5] = v5 + v7 * v6;
  return result;
}

void sub_22D1F16E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t cvGetSeqReaderPos(uint64_t a1)
{
  if (!a1 || !*(a1 + 24))
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "");
    std::string::basic_string[abi:ne200100]<0>(v6, "cvGetSeqReaderPos");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v8, 4294967269, v7, v6, __p, 1014);
    cv::error(v8, v1);
  }

  v2 = *(*(a1 + 8) + 44);
  if (v2 <= 32 && ((0x8000808BuLL >> (v2 - 1)) & 1) != 0)
  {
    v3 = (*(a1 + 24) - *(a1 + 32)) >> icvPower2ShiftTab[v2 - 1];
  }

  else
  {
    v3 = (*(a1 + 24) - *(a1 + 32)) / v2;
  }

  return (*(*(a1 + 16) + 16) + v3 - *(a1 + 48));
}

void sub_22D1F185C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

char *cvSeqPush(uint64_t a1, void *__src)
{
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "");
    std::string::basic_string[abi:ne200100]<0>(v9, "cvSeqPush");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v11, 4294967269, v10, v9, __p, 1132);
    cv::error(v11, v4);
  }

  v5 = *(a1 + 44);
  v6 = *(a1 + 56);
  if (v6 >= *(a1 + 48))
  {
    icvGrowSeq(a1, 0);
    v6 = *(a1 + 56);
    if (&v6[v5] > *(a1 + 48))
    {
      cvSeqPush_cold_1();
    }
  }

  if (__src)
  {
    memcpy(v6, __src, v5);
  }

  ++*(**(a1 + 88) + 20);
  ++*(a1 + 40);
  *(a1 + 56) = &v6[v5];
  return v6;
}

void sub_22D1F19EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t icvFreeSeqBlock(uint64_t result, int a2)
{
  v2 = *(result + 88);
  v3 = v2;
  if (!a2)
  {
    v3 = *v2;
  }

  if (*(v3 + 5))
  {
    icvFreeSeqBlock();
  }

  v4 = *v2;
  if (v2 == *v2)
  {
    v10 = *(result + 48);
    v6 = *(result + 44);
    v9 = v10 - *(v2 + 6) + v6 * *(v2 + 4);
    *(v2 + 5) = v9;
    v2[3] = (v10 - v9);
    *(result + 88) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
  }

  else
  {
    if (a2)
    {
      v5 = *(v2 + 4);
      v6 = *(result + 44);
      *(v2 + 5) = v6 * v5;
      v2[3] = (v2[3] - v6 * v5);
      v4 = v2;
      do
      {
        *(v4 + 4) -= v5;
        v4 = v4[1];
      }

      while (v4 != v2);
      v7 = *v4;
      v8 = v4[1];
      *(result + 88) = v8;
      v9 = *(v4 + 5);
    }

    else
    {
      v11 = *(result + 56);
      if (v11 != v4[3])
      {
        icvFreeSeqBlock();
      }

      v6 = *(result + 44);
      v9 = *(result + 48) - v11;
      *(v4 + 5) = v9;
      v7 = *v4;
      v8 = v4[1];
      v12 = (*v4)[3] + v6 * *(*v4 + 5);
      *(result + 48) = v12;
      *(result + 56) = v12;
    }

    *(v7 + 1) = v8;
    *v4[1] = v7;
    v2 = v4;
  }

  if (v9 < 1 || v9 % v6)
  {
    icvFreeSeqBlock();
  }

  v2[1] = *(result + 80);
  *(result + 80) = v2;
  return result;
}

int *cvSeqPushMulti(int *result, char *__src, int a3, int a4)
{
  v4 = a3;
  v6 = result;
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "NULL sequence pointer");
    std::string::basic_string[abi:ne200100]<0>(v18, "cvSeqPushMulti");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v20, 4294967269, v19, v18, __p, 1453);
    cv::error(v20, v7);
  }

  if (a3 < 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "number of removed elements is negative");
    std::string::basic_string[abi:ne200100]<0>(v18, "cvSeqPushMulti");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v20, 4294967095, v19, v18, __p, 1455);
    cv::error(v20, v8);
  }

  v9 = result[11];
  if (a4)
  {
    if (a3 >= 1)
    {
      v10 = *(result + 11);
      do
      {
        if (!v10 || (v11 = *(v10 + 16)) == 0)
        {
          icvGrowSeq(v6, 1);
          v10 = *(v6 + 88);
          v11 = *(v10 + 16);
          if (v11 <= 0)
          {
            cvSeqPushMulti_cold_1();
          }
        }

        if (v11 >= v4)
        {
          v12 = v4;
        }

        else
        {
          v12 = v11;
        }

        v4 -= v12;
        v13 = *(v10 + 20) + v12;
        *(v10 + 16) = v11 - v12;
        *(v10 + 20) = v13;
        *(v6 + 40) += v12;
        result = (*(v10 + 24) - v9 * v12);
        *(v10 + 24) = result;
        if (__src)
        {
          result = memcpy(result, &__src[v4 * v9], v9 * v12);
        }
      }

      while (v4 > 0);
    }
  }

  else if (a3 >= 1)
  {
    while (1)
    {
      result = *(v6 + 56);
      v14 = (*(v6 + 48) - result) / v9;
      if (v14 >= 1)
      {
        if (v4 >= v14)
        {
          v15 = (*(v6 + 48) - result) / v9;
        }

        else
        {
          v15 = v4;
        }

        *(**(v6 + 88) + 20) += v15;
        *(v6 + 40) += v15;
        v16 = v15 * v9;
        if (__src)
        {
          memcpy(result, __src, v15 * v9);
          __src += v16;
          result = *(v6 + 56);
        }

        v4 -= v15;
        *(v6 + 56) = result + v16;
        if (v4 < 1)
        {
          break;
        }
      }

      icvGrowSeq(v6, 0);
    }
  }

  return result;
}

void sub_22D1F1DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t cvSeqPopMulti(uint64_t result, char *__dst, int a3, int a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = result;
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(v23, "NULL sequence pointer");
    std::string::basic_string[abi:ne200100]<0>(v22, "cvSeqPopMulti");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v24, 4294967269, v23, v22, __p, 1522);
    cv::error(v24, v7);
  }

  if (a3 < 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v23, "number of removed elements is negative");
    std::string::basic_string[abi:ne200100]<0>(v22, "cvSeqPopMulti");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v24, 4294967095, v23, v22, __p, 1524);
    cv::error(v24, v8);
  }

  if (*(result + 40) < a3)
  {
    v4 = *(result + 40);
  }

  if (a4)
  {
    if (v4 >= 1)
    {
      do
      {
        v9 = *(v6 + 88);
        v10 = *(v9 + 20);
        if (v10 <= 0)
        {
          cvSeqPopMulti_cold_1();
        }

        if (v10 >= v4)
        {
          v11 = v4;
        }

        else
        {
          v11 = *(v9 + 20);
        }

        v12 = v10 - v11;
        *(v9 + 20) = v12;
        *(v6 + 40) -= v11;
        *(v9 + 16) += v11;
        v13 = *(v6 + 44) * v11;
        if (v5)
        {
          result = memcpy(v5, *(v9 + 24), v13);
          v5 += v13;
          v9 = *(v6 + 88);
          v12 = *(v9 + 20);
          v13 = v13;
        }

        *(v9 + 24) += v13;
        if (!v12)
        {
          result = icvFreeSeqBlock(v6, 1);
        }

        v14 = __OFSUB__(v4, v11);
        v4 -= v11;
      }

      while (!((v4 < 0) ^ v14 | (v4 == 0)));
    }
  }

  else
  {
    if (__dst)
    {
      v5 = &__dst[*(result + 44) * v4];
    }

    if (v4 >= 1)
    {
      do
      {
        v15 = **(v6 + 88);
        v16 = *(v15 + 20);
        if (v16 <= 0)
        {
          cvSeqPopMulti_cold_2();
        }

        if (v16 >= v4)
        {
          v17 = v4;
        }

        else
        {
          v17 = *(v15 + 20);
        }

        v18 = v16 - v17;
        *(v15 + 20) = v18;
        v19 = *(v6 + 44);
        *(v6 + 40) -= v17;
        v20 = (*(v6 + 56) - v19 * v17);
        *(v6 + 56) = v20;
        if (v5)
        {
          v5 -= v19 * v17;
          result = memcpy(v5, v20, v19 * v17);
          v18 = *(**(v6 + 88) + 20);
        }

        if (!v18)
        {
          result = icvFreeSeqBlock(v6, 0);
        }

        v14 = __OFSUB__(v4, v17);
        v4 -= v17;
      }

      while (!((v4 < 0) ^ v14 | (v4 == 0)));
    }
  }

  return result;
}

void sub_22D1F2120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t cvClearSeq(uint64_t a1)
{
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "");
    std::string::basic_string[abi:ne200100]<0>(v4, "cvClearSeq");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v6, 4294967269, v5, v4, __p, 1590);
    cv::error(v6, v1);
  }

  return cvSeqPopMulti(a1, 0, *(a1 + 40), 0);
}

void sub_22D1F2258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

int *cvSeqSlice(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v6 = a2;
  if (!a1 || *(a1 + 2) != 17049)
  {
    std::string::basic_string[abi:ne200100]<0>(v31, "Invalid sequence header");
    std::string::basic_string[abi:ne200100]<0>(v30, "cvSeqSlice");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v32, 4294967291, v31, v30, __p, 1604);
    cv::error(v32, v8);
  }

  if (!a3)
  {
    v5 = *(a1 + 72);
    if (!v5)
    {
      std::string::basic_string[abi:ne200100]<0>(v31, "NULL storage pointer");
      std::string::basic_string[abi:ne200100]<0>(v30, "cvSeqSlice");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
      cv::Exception::Exception(v32, 4294967269, v31, v30, __p, 1610);
      cv::error(v32, v9);
    }
  }

  v10 = *(a1 + 44);
  v11 = cvSliceLength(a2, a1);
  v12 = v11;
  v13 = *(a1 + 40);
  if (v13 <= v6)
  {
    v14 = *(a1 + 40);
  }

  else
  {
    v14 = 0;
  }

  if (v6 >= 0)
  {
    v15 = -v14;
  }

  else
  {
    v15 = *(a1 + 40);
  }

  v16 = v15 + v6;
  if (v11 > v13 || (v16 >= v13 ? (v17 = v11 == 0) : (v17 = 1), !v17))
  {
    std::string::basic_string[abi:ne200100]<0>(v31, "Bad sequence slice");
    std::string::basic_string[abi:ne200100]<0>(v30, "cvSeqSlice");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v32, 4294967085, v31, v30, __p, 1621);
    cv::error(v32, v18);
  }

  Seq = cvCreateSeq(*a1, *(a1 + 4), v10, v5);
  if (v12 >= 1)
  {
    cvStartReadSeq(a1, v33, 0);
    cvSetSeqReaderPos(v33, v16, 0);
    v20 = 0;
    v21 = 0;
    v22 = v35;
    v23 = (v36 - v35) / v10;
    do
    {
      if (v23 >= v12)
      {
        v24 = v12;
      }

      else
      {
        v24 = v23;
      }

      if (a4)
      {
        cvSeqPushMulti(Seq, v22, v24, 0);
      }

      else
      {
        v25 = cvMemStorageAlloc(v5, 0x20uLL);
        if (v20)
        {
          *v25 = v21;
          *(v25 + 8) = v20;
          *v20 = v25;
          *(v21 + 8) = v25;
          v26 = *(v21 + 20) + *(v21 + 16);
        }

        else
        {
          v26 = 0;
          *v25 = v25;
          *(v25 + 8) = v25;
          v20 = v25;
          *(Seq + 11) = v25;
        }

        *(v25 + 16) = v26;
        *(v25 + 24) = v35;
        *(v25 + 20) = v24;
        Seq[10] += v24;
        v21 = v25;
      }

      v23 = *(v34 + 8);
      v22 = *(v23 + 24);
      v34 = v23;
      v35 = v22;
      LODWORD(v23) = *(v23 + 20);
      v27 = __OFSUB__(v12, v24);
      v12 -= v24;
    }

    while (!((v12 < 0) ^ v27 | (v12 == 0)));
  }

  return Seq;
}

void sub_22D1F2608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t cvSeqSort(uint64_t result, uint64_t (*a2)(void), uint64_t a3)
{
  v178 = *MEMORY[0x277D85DE8];
  v134 = result;
  if (!result)
  {
    v5 = 4294967269;
LABEL_5:
    std::string::basic_string[abi:ne200100]<0>(v157, "Bad input sequence");
    std::string::basic_string[abi:ne200100]<0>(v153, "cvSeqSort");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(&v161, v5, v157, v153, __p, 1915);
    cv::error(&v161, v6);
  }

  if (*(result + 2) != 17049)
  {
    v5 = 4294967291;
    goto LABEL_5;
  }

  if (!a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v157, "Null compare function");
    std::string::basic_string[abi:ne200100]<0>(v153, "cvSeqSort");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(&v161, 4294967269, v157, v153, __p, 1918);
    cv::error(&v161, v7);
  }

  if (*(result + 40) < 2)
  {
    return result;
  }

  v8 = *(result + 44);
  result = cvStartReadSeq(result, &v169, 0);
  v165 = v169;
  v166 = v170;
  v167 = v171;
  v168 = v172;
  v173[0] = v170;
  v173[1] = v171;
  v9 = v170;
  v10 = *(&v170 + 1) - v8;
  v11 = v171;
  if (v10 >= v171)
  {
    v14 = *(&v167 + 1);
  }

  else
  {
    v9 = *v170;
    v11 = *(*v170 + 24);
    v12 = *(*v170 + 20);
    v13 = *(*(&v165 + 1) + 44);
    v10 = v11 + v13 * (v12 - 1);
    v14 = v11 + v13 * v12;
  }

  v15 = 0;
  v174 = v9;
  v175 = v10;
  v176 = v11;
  v177 = v14;
  do
  {
    v16 = &v173[4 * v15];
    v17 = v16[1];
    v170 = *v16;
    v171 = v17;
    v18 = v16[3];
    v166 = v16[2];
    v167 = v18;
    v133 = v15 - 1;
    while (1)
    {
      if (v170 == v166)
      {
        v20 = v8 + DWORD2(v166) - DWORD2(v170);
      }

      else
      {
        SeqReaderPos = cvGetSeqReaderPos(&v165);
        result = cvGetSeqReaderPos(&v169);
        v20 = v8 + v8 * (SeqReaderPos - result);
      }

      if (v20 <= 7 * v8)
      {
        break;
      }

      v145 = v169;
      v146 = v170;
      v147 = v171;
      v148 = v172;
      v163 = v171;
      v164 = v172;
      v161 = v169;
      v162 = v170;
      v151 = v167;
      v152 = v168;
      *__p = v165;
      v150 = v166;
      v155 = v167;
      v156 = v168;
      v21 = v20 / v8;
      *v153 = v165;
      v154 = v166;
      if (v20 / v8 < 41)
      {
        v139 = *(&v146 + 1);
        v28 = v20 / v8;
        v29 = v21 / 2;
        cvSetSeqReaderPos(&v145, v21 / 2, 1);
        v30 = *(&v146 + 1);
        cvSetSeqReaderPos(&v145, v28 + ~v29, 1);
        v31 = *(&v146 + 1);
        goto LABEL_48;
      }

      v137 = v20 / v8;
      v22 = v21 >> 3;
      v23 = *(&v146 + 1);
      cvSetSeqReaderPos(&v145, v21 >> 3, 1);
      v139 = *(&v146 + 1);
      cvSetSeqReaderPos(&v145, v22, 1);
      v24 = *(&v146 + 1);
      v25 = (a2)(v23, v139, a3);
      v26 = (a2)(v139, v24, a3);
      if (v25 < 0)
      {
        if ((v26 & 0x80000000) == 0)
        {
          if ((a2)(v23, v24, a3) >= 0)
          {
            v27 = v23;
          }

          else
          {
            v27 = v24;
          }

          goto LABEL_29;
        }
      }

      else if (v26 <= 0)
      {
        if ((a2)(v23, v24, a3) >= 0)
        {
          v27 = v24;
        }

        else
        {
          v27 = v23;
        }

LABEL_29:
        v139 = v27;
      }

      cvSetSeqReaderPos(&v145, (v137 >> 1) - 3 * v22, 1);
      v32 = *(&v146 + 1);
      cvSetSeqReaderPos(&v145, v22, 1);
      v30 = *(&v146 + 1);
      cvSetSeqReaderPos(&v145, v22, 1);
      v33 = *(&v146 + 1);
      v34 = (a2)(v32, v30, a3);
      v35 = (a2)(v30, v33, a3);
      if (v34 < 0)
      {
        if ((v35 & 0x80000000) == 0)
        {
          if ((a2)(v32, v33, a3) >= 0)
          {
            v30 = v32;
          }

          else
          {
            v30 = v33;
          }
        }
      }

      else if (v35 <= 0)
      {
        if ((a2)(v32, v33, a3) >= 0)
        {
          v30 = v33;
        }

        else
        {
          v30 = v32;
        }
      }

      cvSetSeqReaderPos(&v145, v137 - (v137 >> 1) + ~(3 * v22), 1);
      v36 = *(&v146 + 1);
      cvSetSeqReaderPos(&v145, v22, 1);
      v31 = *(&v146 + 1);
      cvSetSeqReaderPos(&v145, v22, 1);
      v37 = *(&v146 + 1);
      v38 = (a2)(v36, v31, a3);
      v39 = (a2)(v31, v37, a3);
      if (v38 < 0)
      {
        if ((v39 & 0x80000000) == 0)
        {
          if ((a2)(v36, v37, a3) >= 0)
          {
            v31 = v36;
          }

          else
          {
            v31 = v37;
          }
        }
      }

      else if (v39 <= 0)
      {
        if ((a2)(v36, v37, a3) >= 0)
        {
          v31 = v37;
        }

        else
        {
          v31 = v36;
        }
      }

LABEL_48:
      v40 = (a2)(v139, v30, a3);
      v41 = (a2)(v30, v31, a3);
      if (v40 < 0)
      {
        if ((v41 & 0x80000000) == 0)
        {
          if ((a2)(v139, v31, a3) >= 0)
          {
            v30 = v139;
          }

          else
          {
            v30 = v31;
          }
        }
      }

      else if (v41 <= 0)
      {
        if ((a2)(v139, v31, a3) >= 0)
        {
          v30 = v31;
        }

        else
        {
          v30 = v139;
        }
      }

      v169 = v161;
      v170 = v162;
      v171 = v163;
      v172 = v164;
      v42 = *(&v162 + 1);
      if (v30 != *(&v162 + 1) && v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          v44 = *(v30 + i);
          *(v30 + i) = *(*(&v170 + 1) + i);
          *(*(&v170 + 1) + i) = v44;
        }

        v42 = *(&v170 + 1);
      }

      v45 = v42 + v8;
      *(&v170 + 1) = v45;
      if (v45 >= *(&v171 + 1))
      {
        *&v170 = *(v170 + 8);
        v45 = *(v170 + 24);
        v46 = *(v170 + 20);
        v47 = *(*(&v169 + 1) + 44);
        *(&v170 + 1) = v45;
        *&v171 = v45;
        *(&v171 + 1) = v45 + v47 * v46;
      }

      v48 = 0;
      *v157 = v169;
      v158 = v170;
      v159 = v171;
      v160 = v172;
LABEL_65:
      v49 = *(&v166 + 1);
      while (1)
      {
        if (v45 == v49)
        {
          goto LABEL_69;
        }

        v50 = (a2)(v45, v42, a3);
        if (v50 < 1)
        {
          if (!v50)
          {
            v70 = *(&v158 + 1);
            if (*(&v158 + 1) != *(&v170 + 1) && v8 >= 1)
            {
              for (j = 0; j != v8; ++j)
              {
                v73 = *(*(&v158 + 1) + j);
                *(*(&v158 + 1) + j) = *(*(&v170 + 1) + j);
                *(*(&v170 + 1) + j) = v73;
              }

              v70 = *(&v158 + 1);
            }

            *(&v158 + 1) = v70 + v8;
            if (*(&v158 + 1) >= *(&v159 + 1))
            {
              *&v158 = *(v158 + 8);
              v74 = *(v158 + 20);
              v75 = *(v157[1] + 11);
              *(&v158 + 1) = *(v158 + 24);
              *&v159 = *(&v158 + 1);
              *(&v159 + 1) = *(&v158 + 1) + v75 * v74;
            }

            v48 = 1;
          }

          v45 = *(&v170 + 1) + v8;
          *(&v170 + 1) = v45;
          if (v45 >= *(&v171 + 1))
          {
            *&v170 = *(v170 + 8);
            v45 = *(v170 + 24);
            v76 = *(v170 + 20);
            v77 = *(*(&v169 + 1) + 44);
            *(&v170 + 1) = v45;
            *&v171 = v45;
            *(&v171 + 1) = v45 + v77 * v76;
          }

          goto LABEL_65;
        }

        v45 = *(&v170 + 1);
        v49 = *(&v166 + 1);
LABEL_69:
        while (v45 != v49)
        {
          v51 = (a2)(v49, v42, a3);
          if (v51 < 0)
          {
            v45 = *(&v170 + 1);
            v49 = *(&v166 + 1);
            break;
          }

          if (!v51)
          {
            v52 = *(&v150 + 1);
            if (*(&v150 + 1) != *(&v166 + 1) && v8 >= 1)
            {
              for (k = 0; k != v8; ++k)
              {
                v55 = *(*(&v150 + 1) + k);
                *(*(&v150 + 1) + k) = *(*(&v166 + 1) + k);
                *(*(&v166 + 1) + k) = v55;
              }

              v52 = *(&v150 + 1);
            }

            *(&v150 + 1) = v52 - v8;
            if (*(&v150 + 1) < v151)
            {
              *&v150 = *v150;
              v56 = *(v150 + 24);
              v57 = *(v150 + 20);
              v58 = *(__p[1] + 11);
              *(&v150 + 1) = v56 + v58 * (v57 - 1);
              *&v151 = v56;
              *(&v151 + 1) = v56 + v58 * v57;
            }

            v48 = 1;
          }

          v49 = *(&v166 + 1) - v8;
          *(&v166 + 1) = v49;
          if (v49 < v167)
          {
            *&v166 = *v166;
            v59 = *(v166 + 24);
            v60 = *(v166 + 20);
            v61 = *(*(&v165 + 1) + 44);
            v49 = v59 + v61 * (v60 - 1);
            *(&v166 + 1) = v49;
            *&v167 = v59;
            *(&v167 + 1) = v59 + v61 * v60;
          }

          v45 = *(&v170 + 1);
        }

        if (v45 == v49)
        {
          break;
        }

        if (v8 >= 1)
        {
          for (m = 0; m != v8; ++m)
          {
            v63 = *(*(&v170 + 1) + m);
            *(*(&v170 + 1) + m) = *(*(&v166 + 1) + m);
            *(*(&v166 + 1) + m) = v63;
          }

          v45 = *(&v170 + 1);
        }

        v45 += v8;
        *(&v170 + 1) = v45;
        if (v45 >= *(&v171 + 1))
        {
          *&v170 = *(v170 + 8);
          v45 = *(v170 + 24);
          v64 = *(v170 + 20);
          v65 = *(*(&v169 + 1) + 44);
          *(&v170 + 1) = v45;
          *&v171 = v45;
          *(&v171 + 1) = v45 + v65 * v64;
        }

        v66 = *(&v166 + 1);
        v49 = *(&v166 + 1) - v8;
        *(&v166 + 1) = v49;
        if (v49 < v167)
        {
          *&v166 = *v166;
          v67 = *(v166 + 24);
          v68 = *(v166 + 20);
          v69 = *(*(&v165 + 1) + 44);
          v49 = v67 + v69 * (v68 - 1);
          *(&v166 + 1) = v49;
          *&v167 = v67;
          *(&v167 + 1) = v67 + v69 * v68;
        }

        v48 = 1;
        if (v45 == v66)
        {
          goto LABEL_126;
        }
      }

      result = a2();
      if (!result)
      {
        v78 = *(&v158 + 1);
        if (*(&v158 + 1) != *(&v170 + 1) && v8 >= 1)
        {
          for (n = 0; n != v8; ++n)
          {
            v80 = *(*(&v158 + 1) + n);
            *(*(&v158 + 1) + n) = *(*(&v170 + 1) + n);
            *(*(&v170 + 1) + n) = v80;
          }

          v78 = *(&v158 + 1);
        }

        *(&v158 + 1) = v78 + v8;
        if (*(&v158 + 1) >= *(&v159 + 1))
        {
          *&v158 = *(v158 + 8);
          v81 = *(v158 + 20);
          v82 = *(v157[1] + 11);
          *(&v158 + 1) = *(v158 + 24);
          *&v159 = *(&v158 + 1);
          *(&v159 + 1) = *(&v158 + 1) + v82 * v81;
        }

        v48 = 1;
      }

      if (result <= 0)
      {
        *(&v170 + 1) += v8;
        if (*(&v170 + 1) < *(&v171 + 1))
        {
          goto LABEL_125;
        }

        *&v170 = *(v170 + 8);
        v83 = *(v170 + 24);
        v88 = *(v170 + 20);
        v89 = *(*(&v169 + 1) + 44);
        *(&v170 + 1) = v83;
        *&v171 = v83;
        v86 = v89 * v88;
        v87 = &v171 + 8;
      }

      else
      {
        *(&v166 + 1) -= v8;
        if (*(&v166 + 1) >= v167)
        {
          goto LABEL_125;
        }

        *&v166 = *v166;
        v83 = *(v166 + 24);
        v84 = *(v166 + 20);
        v85 = *(*(&v165 + 1) + 44);
        *(&v166 + 1) = v83 + v85 * (v84 - 1);
        *&v167 = v83;
        v86 = v85 * v84;
        v87 = &v167 + 8;
      }

      *v87 = v83 + v86;
LABEL_125:
      if (!v48)
      {
        v169 = v161;
        v170 = v162;
        v171 = v163;
        v172 = v164;
        v165 = *v153;
        v166 = v154;
        v167 = v155;
        v168 = v156;
        break;
      }

LABEL_126:
      v90 = cvGetSeqReaderPos(&v169);
      if (!v90)
      {
        v90 = *(v134 + 40);
      }

      v91 = cvGetSeqReaderPos(&v161);
      v92 = cvGetSeqReaderPos(v157);
      if (!v92)
      {
        v92 = *(v134 + 40);
      }

      v93 = v90 - v92;
      if (v90 - v92 >= v92 - v91)
      {
        v94 = v92 - v91;
      }

      else
      {
        v94 = v90 - v92;
      }

      if (v94 >= 1)
      {
        v145 = v161;
        v146 = v162;
        v147 = v163;
        v148 = v164;
        v141 = v169;
        v142 = v170;
        v143 = v171;
        v144 = v172;
        cvSetSeqReaderPos(&v141, -v94, 1);
        for (ii = 0; ii != v94; ++ii)
        {
          if (v8 >= 1)
          {
            for (jj = 0; jj != v8; ++jj)
            {
              v97 = *(*(&v146 + 1) + jj);
              *(*(&v146 + 1) + jj) = *(*(&v142 + 1) + jj);
              *(*(&v142 + 1) + jj) = v97;
            }
          }

          *(&v146 + 1) += v8;
          if (*(&v146 + 1) >= *(&v147 + 1))
          {
            *&v146 = *(v146 + 8);
            v98 = *(v146 + 20);
            v99 = *(*(&v145 + 1) + 44);
            *(&v146 + 1) = *(v146 + 24);
            *&v147 = *(&v146 + 1);
            *(&v147 + 1) = *(&v146 + 1) + v99 * v98;
          }

          *(&v142 + 1) += v8;
          if (*(&v142 + 1) >= *(&v143 + 1))
          {
            *&v142 = *(v142 + 8);
            v100 = *(v142 + 20);
            v101 = *(*(&v141 + 1) + 44);
            *(&v142 + 1) = *(v142 + 24);
            *&v143 = *(&v142 + 1);
            *(&v143 + 1) = *(&v142 + 1) + v101 * v100;
          }
        }
      }

      v102 = cvGetSeqReaderPos(&v165);
      v103 = cvGetSeqReaderPos(v153);
      result = cvGetSeqReaderPos(__p);
      v104 = v103 - result;
      v105 = result - v102;
      if (v104 >= result - v102)
      {
        v106 = result - v102;
      }

      else
      {
        v106 = v104;
      }

      if (v106 >= 1)
      {
        v145 = v169;
        v146 = v170;
        v147 = v171;
        v148 = v172;
        v141 = *v153;
        v142 = v154;
        v143 = v155;
        v144 = v156;
        result = cvSetSeqReaderPos(&v141, 1 - v106, 1);
        for (kk = 0; kk != v106; ++kk)
        {
          if (v8 >= 1)
          {
            for (mm = 0; mm != v8; ++mm)
            {
              v109 = *(*(&v146 + 1) + mm);
              *(*(&v146 + 1) + mm) = *(*(&v142 + 1) + mm);
              *(*(&v142 + 1) + mm) = v109;
            }
          }

          *(&v146 + 1) += v8;
          if (*(&v146 + 1) >= *(&v147 + 1))
          {
            *&v146 = *(v146 + 8);
            v110 = *(v146 + 20);
            v111 = *(*(&v145 + 1) + 44);
            *(&v146 + 1) = *(v146 + 24);
            *&v147 = *(&v146 + 1);
            *(&v147 + 1) = *(&v146 + 1) + v111 * v110;
          }

          *(&v142 + 1) += v8;
          if (*(&v142 + 1) >= *(&v143 + 1))
          {
            *&v142 = *(v142 + 8);
            v112 = *(v142 + 20);
            v113 = *(*(&v141 + 1) + 44);
            *(&v142 + 1) = *(v142 + 24);
            *&v143 = *(&v142 + 1);
            *(&v143 + 1) = *(&v142 + 1) + v113 * v112;
          }
        }
      }

      if (v93 <= 1)
      {
        if (v105 <= 1)
        {
          goto LABEL_186;
        }

        v165 = *v153;
        v166 = v154;
        v167 = v155;
        v168 = v156;
        v169 = *v153;
        v170 = v154;
        v171 = v155;
        v172 = v156;
        result = cvSetSeqReaderPos(&v169, 1 - v105, 1);
      }

      else if (v105 < 2)
      {
        v165 = v161;
        v166 = v162;
        v167 = v163;
        v168 = v164;
        v169 = v161;
        v170 = v162;
        v171 = v163;
        v172 = v164;
        result = cvSetSeqReaderPos(&v165, v93 - 1, 1);
      }

      else
      {
        v114 = &v173[4 * v133 + 4];
        if (v93 <= v105)
        {
          v117 = v155;
          v114[2] = v154;
          v114[3] = v117;
          cvSetSeqReaderPos(v153, 1 - v105, 1);
          v118 = v155;
          *v114 = v154;
          v114[1] = v118;
          v165 = v161;
          v166 = v162;
          v167 = v163;
          v168 = v164;
          v171 = v163;
          v172 = v164;
          v169 = v161;
          v170 = v162;
          result = cvSetSeqReaderPos(&v165, v93 - 1, 1);
        }

        else
        {
          v115 = v163;
          *v114 = v162;
          v114[1] = v115;
          cvSetSeqReaderPos(&v161, v93 - 1, 1);
          v116 = v163;
          v114[2] = v162;
          v114[3] = v116;
          v165 = *v153;
          v166 = v154;
          v167 = v155;
          v168 = v156;
          v171 = v155;
          v172 = v156;
          v169 = *v153;
          v170 = v154;
          result = cvSetSeqReaderPos(&v169, 1 - v105, 1);
        }

        ++v133;
      }
    }

    v119 = *(&v169 + 1);
    v120 = v170;
    v121 = v171;
    v122 = (*(&v170 + 1) + v8);
    v136 = *(&v171 + 1);
    if (v122 >= *(&v171 + 1))
    {
      v123 = *(v170 + 8);
      v122 = v123[3];
      v136 = &v122[*(*(&v169 + 1) + 44) * *(v123 + 5)];
      v124 = v122;
    }

    else
    {
      v123 = v170;
      v124 = v171;
    }

    v125 = (*(&v166 + 1) + v8);
    *(&v166 + 1) = v125;
    if (v125 >= *(&v167 + 1))
    {
      *&v166 = *(v166 + 8);
      v125 = *(v166 + 24);
      v126 = *(v166 + 20);
      v127 = *(*(&v165 + 1) + 44);
      *(&v166 + 1) = v125;
      *&v167 = v125;
      *(&v167 + 1) = &v125[v127 * v126];
    }

    while (v122 != v125)
    {
      v135 = v124;
      if (v120 != v123)
      {
        v121 = v124;
      }

      v138 = v123;
      v140 = v122;
      v120 = v123;
      v128 = v122;
      while (v128 != *(&v170 + 1))
      {
        v129 = v128;
        v128 -= v8;
        if (v128 < v121)
        {
          v120 = *v120;
          v121 = v120[3];
          v128 = (v121 + *(v119 + 44) * (*(v120 + 5) - 1));
        }

        result = (a2)(v128, v129, a3);
        if (result < 1)
        {
          break;
        }

        if (v8 >= 1)
        {
          v130 = v8;
          v131 = v128;
          do
          {
            v132 = *v131;
            *v131++ = *v129;
            *v129++ = v132;
            --v130;
          }

          while (v130);
        }
      }

      v122 = &v140[v8];
      if (v122 >= v136)
      {
        v123 = v138[1];
        v122 = v123[3];
        v136 = &v122[*(v119 + 44) * *(v123 + 5)];
        v124 = v122;
      }

      else
      {
        v123 = v138;
        v124 = v135;
      }

      v125 = *(&v166 + 1);
    }

LABEL_186:
    v15 = v133;
  }

  while ((v133 & 0x80000000) == 0);
  return result;
}

void sub_22D1F36D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  cv::Exception::~Exception(&a68);
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  _Unwind_Resume(a1);
}

_DWORD *cvCreateSet(unsigned int a1, int a2, int a3, uint64_t a4)
{
  if (!a4)
  {
    std::string::basic_string[abi:ne200100]<0>(v9, "");
    std::string::basic_string[abi:ne200100]<0>(v8, "cvCreateSet");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v10, 4294967269, v9, v8, __p, 2480);
    cv::error(v10, v4);
  }

  if (a2 < 112 || a3 < 16 || (a3 & 7) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v9, "");
    std::string::basic_string[abi:ne200100]<0>(v8, "cvCreateSet");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v10, 4294967095, v9, v8, __p, 2484);
    cv::error(v10, v5);
  }

  result = cvCreateSeq(a1, a2, a3, a4);
  *(result + 1) = 17048;
  return result;
}

void sub_22D1F38D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t cvSetAdd(uint64_t a1, void *__src, void *a3)
{
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "");
    std::string::basic_string[abi:ne200100]<0>(v17, "cvSetAdd");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v19, 4294967269, v18, v17, __p, 2501);
    cv::error(v19, v6);
  }

  v7 = *(a1 + 96);
  if (!v7)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 44);
    icvGrowSeq(a1, 0);
    v10 = *(a1 + 48);
    v7 = *(a1 + 56);
    *(a1 + 96) = v7;
    if (v7 + v9 <= v10)
    {
      v12 = v7;
      do
      {
        v11 = (v12 + v9);
        *v12 = v8 | 0x80000000;
        v12[1] = v12 + v9;
        ++v8;
        v13 = v12 + v9 + v9;
        v12 = (v12 + v9);
      }

      while (v13 <= v10);
    }

    else
    {
      v11 = v7;
    }

    if (v8 >= 67108865)
    {
      cvSetAdd_cold_1();
    }

    *(v11 - v9 + 8) = 0;
    *(**(a1 + 88) + 20) += v8 - *(a1 + 40);
    *(a1 + 40) = v8;
    *(a1 + 56) = v10;
  }

  *(a1 + 96) = v7[1];
  v14 = *v7 & 0x3FFFFFF;
  if (__src)
  {
    memcpy(v7, __src, *(a1 + 44));
  }

  *v7 = v14;
  ++*(a1 + 104);
  if (a3)
  {
    *a3 = v7;
  }

  return v14;
}

void sub_22D1F3AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t cvClearSet(uint64_t a1)
{
  result = cvClearSeq(a1);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return result;
}

_DWORD *cvCreateGraph(unsigned int a1, int a2, int a3, int a4, uint64_t a5)
{
  if (a3 < 16 || a2 < 120 || a4 <= 39)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "");
    std::string::basic_string[abi:ne200100]<0>(v11, "cvCreateGraph");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v13, 4294967095, v12, v11, __p, 2579);
    cv::error(v13, v7);
  }

  Set = cvCreateSet(a1, a2, a3, a5);
  *(Set + 14) = cvCreateSet(0, 112, a4, a5);
  return Set;
}

void sub_22D1F3C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}