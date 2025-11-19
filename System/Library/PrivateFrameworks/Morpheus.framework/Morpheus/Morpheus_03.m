void sub_25A27FA74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,mlx::core::array>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,mlx::core::array>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(mlx::core::array const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<mlx::core::detail::vmap_replace(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<int> const&)::$_0,std::allocator<mlx::core::detail::vmap_replace(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<int> const&)::$_0>,void ()(mlx::core::array const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BE59E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<mlx::core::detail::vmap_replace(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<int> const&)::$_0,std::allocator<mlx::core::detail::vmap_replace(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<int> const&)::$_0>,void ()(mlx::core::array const&)>::operator()(uint64_t a1, __int128 *a2)
{
  v22 = *a2;
  if (!std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(*(a1 + 8), &v22))
  {
    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(*(a1 + 8), &v22);
    v4 = *a2;
    v5 = *(*a2 + 200);
    v6 = *(*a2 + 208);
    if (v5 != v6)
    {
      do
      {
        v7 = *(a1 + 8);
        v8 = *v5;
        v5 += 2;
        v21[0] = v8;
        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v7, v21);
      }

      while (v5 != v6);
      v4 = *a2;
    }

    v9 = *(v4 + 176);
    v10 = *(v4 + 184);
    if (v9 != v10)
    {
      do
      {
        v11 = *(*(a1 + 16) + 24);
        if (!v11)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v11 + 48))(v11, v9);
        v9 += 2;
      }

      while (v9 != v10);
      v9 = *(*a2 + 176);
      v10 = *(*a2 + 184);
    }

    while (v9 != v10)
    {
      v12 = *(a1 + 24);
      v21[0] = *v9;
      if (std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v12, v21))
      {
        std::vector<mlx::core::array>::push_back[abi:ne200100](*(a1 + 32), a2);
        *(*(*(*(a1 + 32) + 8) - 16) + 128) = 0;
        v13 = *(a1 + 24);
        v21[0] = *a2;
        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v13, v21);
        v14 = *a2;
        v15 = *(*a2 + 200);
        for (i = *(v14 + 208); v15 != i; v15 += 2)
        {
          v17 = *v15;
          v18 = v15[1];
          v21[0] = *v15;
          v21[1] = v18;
          if (v18)
          {
            atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
          }

          v19 = *(a1 + 24);
          v20 = v17;
          std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v19, &v20);
          *(v21[0] + 128) = 0;
          mlx::core::array::~array(v21);
        }

        return;
      }

      v9 += 2;
    }
  }
}

void sub_25A27FD5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::detail::vmap_replace(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<int> const&)::$_0,std::allocator<mlx::core::detail::vmap_replace(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&,std::vector<int> const&)::$_0>,void ()(mlx::core::array const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<void ()(mlx::core::array const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A280014(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__func<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1,std::allocator<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5A70;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1,std::allocator<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5A70;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void sub_25A2801C0(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v1[6] = v5;
    operator delete(v5);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1,std::allocator<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t *a1, void *a2)
{
  *a2 = &unk_286BE5A70;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100]((a2 + 1), (a1 + 1));
  a2[5] = 0;
  a2[6] = 0;
  a2[7] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a2 + 5), a1[5], a1[6], (a1[6] - a1[5]) >> 2);
  a2[8] = 0;
  a2[9] = 0;
  a2[10] = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a2 + 8), a1[8], a1[9], (a1[9] - a1[8]) >> 2);
}

void sub_25A280290(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = v5;
    operator delete(v5);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1,std::allocator<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  return std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
}

void std::__function::__func<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1,std::allocator<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  operator delete(a1);
}

void std::__function::__func<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1,std::allocator<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator()(std::vector<int> *this, uint64_t *a2)
{
  p_end_cap = &this[1].__end_cap_;
  p_end = &this->__end_;
  if (this[2].__begin_ == this[1].__end_cap_.__value_)
  {
    v6 = (a2[1] - *a2) >> 4;
    LODWORD(__x.__r_.__value_.__l.__data_) = 0;
    std::vector<int>::resize((this + 40), v6, &__x);
  }

  mlx::core::detail::vmap_trace(p_end, a2, p_end_cap, &__x);
  value = this[2].__end_cap_.__value_;
  begin = this[3].__begin_;
  v9 = (this + 64);
  if (begin == value)
  {
    v12[0] = 0;
    std::vector<int>::resize(v9, (v11[1] - v11[0]) >> 4, v12);
  }

  mlx::core::detail::vmap_replace(a2, &__x, v11, &p_end_cap->__value_, v9);
}

void sub_25A28045C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1,std::allocator<mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v3, __x);
  }
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_25A99B0D0)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_25A99B0C0)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_25A99B0D0)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_25A99B0C0)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t std::__function::__value_func<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5AF0;
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5AF0;
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BE5AF0;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return std::__function::__value_func<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::__value_func[abi:ne200100](a2 + 24, a1 + 24);
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::~__value_func[abi:ne200100](a1 + 24);

  operator delete(a1);
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator()(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = *a2;
  (*(*v4 + 48))(v7);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v7, &v8, 1uLL);
  mlx::core::array::~array(v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_25A280A38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5B70;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5B70;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::operator()(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v15[0] = *a2;
  v15[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  v15[2] = *a3;
  v15[3] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v12, 0, sizeof(v12));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v12, v15, &v16, 2uLL);
  v8 = *(a1 + 32);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v13);
  v9 = *(v13[0] + 8);
  *a4 = *v13[0];
  a4[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = v13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = v12;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v14);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v15[i]);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_25A280D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  for (i = 16; i != -16; i -= 16)
  {
    mlx::core::array::~array((&a16 + i));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)> const&,int,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5C00;
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5C00;
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286BE5C00;
  a2[1] = *(a1 + 8);
  return std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator()(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = *a2;
  (*(*v4 + 48))(v7);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v7, &v8, 1uLL);
  mlx::core::array::~array(v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_25A281050(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5C80;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5C80;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&)>::operator()(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v9, 0, sizeof(v9));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v9, v12, &v13, 1uLL);
  v6 = *(a1 + 32);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v6 + 48))(v10);
  v7 = *(v10[0] + 8);
  *a3 = *v10[0];
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v11);
  v11 = v9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v11);
  mlx::core::array::~array(v12);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1,std::allocator<mlx::core::vmap(std::function<mlx::core::array ()(mlx::core::array const&)> const&,int,int)::$_1>,mlx::core::array ()(mlx::core::array const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0,std::allocator<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286BE5D10;
  if (*(a1 + 152) == 1)
  {
    std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](a1 + 120);
  }

  if (*(a1 + 112) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](a1 + 80);
  }

  if (*(a1 + 72) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 40);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);
  return a1;
}

void std::__function::__func<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0,std::allocator<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286BE5D10;
  if (*(a1 + 152) == 1)
  {
    std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](a1 + 120);
  }

  if (*(a1 + 112) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](a1 + 80);
  }

  if (*(a1 + 72) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 40);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);

  JUMPOUT(0x25F851760);
}

void sub_25A281610(_Unwind_Exception *a1)
{
  if (v1[112] == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100]((v1 + 80));
  }

  if (v1[72] == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((v1 + 40));
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

_BYTE *std::__function::__func<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0,std::allocator<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BE5D10;
  v4 = (a2 + 40);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](a2 + 8, a1 + 8);
  std::__optional_copy_base<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>,false>::__optional_copy_base[abi:ne200100](v4, a1 + 40);
  std::__optional_copy_base<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>,false>::__optional_copy_base[abi:ne200100]((a2 + 80), a1 + 80);
  return std::__optional_copy_base<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>,false>::__optional_copy_base[abi:ne200100]((a2 + 120), a1 + 120);
}

void sub_25A2816E8(_Unwind_Exception *a1)
{
  if (*(v1 + 112) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v1 + 80);
  }

  if (*(v1 + 72) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v2);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0,std::allocator<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy(_BYTE *a1)
{
  if (a1[152] == 1)
  {
    std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100]((a1 + 120));
  }

  if (a1[112] == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100]((a1 + 80));
  }

  if (a1[72] == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 40));
  }

  return std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 8));
}

void std::__function::__func<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0,std::allocator<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(_BYTE *a1)
{
  if (a1[152] == 1)
  {
    std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100]((a1 + 120));
  }

  if (a1[112] == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100]((a1 + 80));
  }

  if (a1[72] == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 40));
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__func<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0,std::allocator<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(*v3 + 48))(&v33);
    if (v33 != v34)
    {
      mlx::core::stop_gradient(v33, v5, 0);
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(&v30, *a2, a2[1], (a2[1] - *a2) >> 4);
    v6 = std::vector<mlx::core::array>::__insert_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array*>,std::__wrap_iter<mlx::core::array*>>(&v30, v31, v33, v34, (v34 - v33) >> 4);
    v7 = v33;
    v8 = (*v33)[8];
    if (v8)
    {
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
    }

    else
    {
      v11 = mlx::core::default_device(v6);
      v9 = mlx::core::default_stream(*v11);
      v10 = v12;
      v7 = v33;
    }

    v29 = 0;
    v28 = 0u;
    v27 = 0;
    *__p = 0u;
    for (i = v34; v7 != i; v7 += 2)
    {
      v14 = *v7;
      v15 = *(&v28 + 1);
      if (*(&v28 + 1) >= v29)
      {
        v16 = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(&v28, v14);
      }

      else
      {
        **(&v28 + 1) = 0;
        *(v15 + 8) = 0;
        *(v15 + 16) = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v15, *v14, v14[1], (v14[1] - *v14) >> 2);
        v16 = v15 + 24;
      }

      *(&v28 + 1) = v16;
      v17 = (*v7)[7];
      v18 = __p[1];
      if (__p[1] >= v27)
      {
        v20 = (__p[1] - __p[0]) >> 3;
        if ((v20 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v21 = (v27 - __p[0]) >> 2;
        if (v21 <= v20 + 1)
        {
          v21 = v20 + 1;
        }

        if (v27 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::Dtype>>(__p, v22);
        }

        v23 = (8 * v20);
        *v23 = v17 & 0xFFFFFFFFFFLL;
        v19 = (8 * v20 + 8);
        v24 = v23 - (__p[1] - __p[0]);
        memcpy(v24, __p[0], __p[1] - __p[0]);
        v25 = __p[0];
        __p[0] = v24;
        __p[1] = v19;
        v27 = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *__p[1] = v17 & 0xFFFFFFFFFFLL;
        v19 = v18 + 8;
      }

      __p[1] = v19;
    }

    v29 = 0;
    v28 = 0uLL;
    mlx::core::to_stream(v9, v10 | 0x100000000);
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v42, a1 + 8);
    if (*(a1 + 72) == 1)
    {
      std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v43, a1 + 40);
      std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v39, a1 + 8);
      if (*(a1 + 112) == 1)
      {
        std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](v40, a1 + 80);
        std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v35, a1 + 8);
        v36 = (v34 - v33) >> 4;
        if (*(a1 + 152) == 1)
        {
          std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](v37, a1 + 120);
          std::allocate_shared[abi:ne200100]<mlx::core::CustomTransforms,std::allocator<mlx::core::CustomTransforms>,mlx::core::Stream,unsigned long,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>,std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>,0>();
        }

        std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v45, v35);
        v46 = v36;
        v38 = 0;
        operator new();
      }

      std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v45, v39);
      v41 = 0;
      operator new();
    }

    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v45, v42);
    v44 = 0;
    operator new();
  }

  std::__throw_bad_function_call[abi:ne200100]();
}

void sub_25A281D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v41 - 144);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](&a32);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v41 - 240);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](&a41);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v41 - 176);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v41 - 208);
  a32 = &a17;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a32);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  a32 = &a23;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a32);
  a32 = &a26;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a32);
  a32 = &a29;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a32);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0,std::allocator<mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *std::__optional_copy_base<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](a1, a2);
    a1[32] = 1;
  }

  return a1;
}

void sub_25A281F50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_copy_base<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](a1, a2);
    a1[32] = 1;
  }

  return a1;
}

void sub_25A281FB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_copy_base<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](a1, a2);
    a1[32] = 1;
  }

  return a1;
}

void sub_25A2820B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

mlx::core::array *std::vector<mlx::core::array>::__insert_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array*>,std::__wrap_iter<mlx::core::array*>>(uint64_t *a1, mlx::core::array *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v9 = a1[1];
    v8 = a1[2];
    if (a5 <= (v8 - v9) >> 4)
    {
      v16 = (v9 - a2) >> 4;
      if (v16 >= a5)
      {
        std::vector<mlx::core::array>::__move_range(a1, a2, a1[1], a2 + 16 * a5);
        v23 = &v7[2 * a5];
        v24 = v5;
        do
        {
          mlx::core::array::operator=(v24, v7);
          v7 += 2;
          v24 = (v24 + 16);
        }

        while (v7 != v23);
      }

      else
      {
        v17 = (a3 + v9 - a2);
        v18 = a1[1];
        if (v17 != a4)
        {
          v18 = a1[1];
          v19 = (a3 + v9 - a2);
          v20 = v18;
          do
          {
            v21 = v19[1];
            *v20 = *v19;
            v20[1] = v21;
            if (v21)
            {
              atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
            }

            v19 += 2;
            v20 += 2;
            v18 += 2;
          }

          while (v19 != a4);
        }

        a1[1] = v18;
        if (v16 >= 1)
        {
          std::vector<mlx::core::array>::__move_range(a1, a2, v9, a2 + 16 * a5);
          if (v9 != v5)
          {
            v22 = v5;
            do
            {
              mlx::core::array::operator=(v22, v7);
              v7 += 2;
              v22 = (v22 + 16);
            }

            while (v7 != v17);
          }
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 + ((v9 - *a1) >> 4);
      if (v11 >> 60)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v12 = a2 - v10;
      v13 = v8 - v10;
      if (v13 >> 3 > v11)
      {
        v11 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v11;
      }

      v15 = v12 >> 4;
      v28[4] = a1;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a1, v14);
      }

      v25 = (16 * v15);
      v28[0] = 0;
      v28[1] = 16 * v15;
      v28[3] = 0;
      do
      {
        v26 = v7[1];
        *v25 = *v7;
        v25[1] = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v25 += 2;
        v7 += 2;
      }

      while (v25 != (16 * v15 + 16 * a5));
      v28[2] = 16 * v15 + 16 * a5;
      v5 = std::vector<mlx::core::array>::__swap_out_circular_buffer(a1, v28, v5);
      std::__split_buffer<mlx::core::array>::~__split_buffer(v28);
    }
  }

  return v5;
}

void sub_25A282364(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<mlx::core::array>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<mlx::core::CustomTransforms>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,unsigned long,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>,std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>,std::allocator<mlx::core::CustomTransforms>,0>(void *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE5D80;
  std::construct_at[abi:ne200100]<mlx::core::CustomTransforms,mlx::core::Stream,unsigned long,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>,std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>,mlx::core::CustomTransforms*>((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::CustomTransforms>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE5D80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::CustomTransforms,mlx::core::Stream,unsigned long,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>,std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>,std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>,mlx::core::CustomTransforms*>(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *a3;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v16, a4);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](v15, a5);
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](v14, a6);
  mlx::core::CustomTransforms::CustomTransforms(a1, v9, v10, v11, v16, v15, v14);
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v15);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v16);
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlx::core::CustomTransforms::CustomTransforms(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *a1 = &unk_286BF7BA8;
  *(a1 + 8) = a2;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](a1 + 24, a5);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](a1 + 56, a6);
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](a1 + 88, a7);
  return a1;
}

void *_ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E_NS7_ISY_EESF_ED1Ev(void *a1)
{
  *a1 = &unk_286BE5DD0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E_NS7_ISY_EESF_ED0Ev(void *a1)
{
  *a1 = &unk_286BE5DD0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E_NS7_ISY_EESF_E18destroy_deallocateEv(void *a1)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E_NS7_ISY_EESF_EclESB_SB_SB_(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  memset(v9, 0, sizeof(v9));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v9, *a2, a2[1], (a2[1] - *a2) >> 4);
  memset(v8, 0, sizeof(v8));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v8, *a3, a3[1], (a3[1] - *a3) >> 4);
  memset(v7, 0, sizeof(v7));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v7, *a4, a4[1], (a4[1] - *a4) >> 4);
  mlx::core::vjp(a1 + 8, v9, v8);
}

void sub_25A282900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *a18)
{
  std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>>::~pair(&a18);
  *(v18 - 40) = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v18 - 40));
  *(v18 - 40) = &a12;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v18 - 40));
  *(v18 - 40) = &a15;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v18 - 40));
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E_NS7_ISY_EESF_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN3mlx4core15custom_functionENSt3__18functionIFNS1_6vectorINS0_5arrayENS1_9allocatorIS4_EEEERKS7_EEENS1_8optionalINS2_IFS7_S9_S9_S9_EEEEENSC_INS2_IFS7_S9_S9_RKNS3_IiNS5_IiEEEEEEEEENSC_INS2_IFNS1_4pairIS7_SH_EES9_SJ_EEEEEENK3__0clES9_EUlT_T0_T1_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E0_NS7_ISY_EESM_ED1Ev(void *a1)
{
  *a1 = &unk_286BE5E60;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E0_NS7_ISY_EESM_ED0Ev(void *a1)
{
  *a1 = &unk_286BE5E60;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E0_NS7_ISY_EESM_E18destroy_deallocateEv(void *a1)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E0_NS7_ISY_EESM_EclESB_SB_SL_(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v26 = 0;
  v27 = 0;
  v25 = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(&v25, *a2, a2[1], (a2[1] - *a2) >> 4);
  memset(v24, 0, sizeof(v24));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v24, *a3, a3[1], (a3[1] - *a3) >> 4);
  __p = 0;
  v22 = 0;
  v23 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 2);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v8 = v25;
  if (v26 != v25)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      if (v11 >= ((v22 - __p) >> 2) || v10 != *(__p + v11))
      {
        mlx::core::zeros_like(&v8[v9], v7, a4);
      }

      v12 = v30;
      if (v30 >= v31)
      {
        v15 = (v30 - v29) >> 4;
        v16 = v15 + 1;
        if ((v15 + 1) >> 60)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v17 = v31 - v29;
        if ((v31 - v29) >> 3 > v16)
        {
          v16 = v17 >> 3;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v18 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        v28[4] = &v29;
        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(&v29, v18);
        }

        v19 = (16 * v15);
        v28[0] = 0;
        v28[1] = v19;
        v28[3] = 0;
        v20 = *(v24[0] + 16 * v11);
        *v19 = v20;
        if (*(&v20 + 1))
        {
          atomic_fetch_add_explicit((*(&v20 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v28[2] = v19 + 1;
        std::vector<mlx::core::array>::__swap_out_circular_buffer(&v29, v28);
        v14 = v30;
        std::__split_buffer<mlx::core::array>::~__split_buffer(v28);
      }

      else
      {
        v13 = *(v24[0] + 16 * v11);
        *v30 = v13;
        if (*(&v13 + 1))
        {
          atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v14 = v12 + 1;
      }

      ++v11;
      v30 = v14;
      ++v10;
      v8 = v25;
      v9 += 2;
    }

    while (v10 < (v26 - v25) >> 4);
  }

  mlx::core::jvp(a1 + 8, &v25, &v29);
}

void sub_25A282E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>>::~pair(&a21);
  *(v21 - 128) = v21 - 112;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v21 - 128));
  if (__p)
  {
    operator delete(__p);
  }

  *(v21 - 112) = &a15;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v21 - 112));
  *(v21 - 112) = &a18;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v21 - 112));
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_T1_E0_NS7_ISY_EESM_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN3mlx4core15custom_functionENSt3__18functionIFNS1_6vectorINS0_5arrayENS1_9allocatorIS4_EEEERKS7_EEENS1_8optionalINS2_IFS7_S9_S9_S9_EEEEENSC_INS2_IFS7_S9_S9_RKNS3_IiNS5_IiEEEEEEEEENSC_INS2_IFNS1_4pairIS7_SH_EES9_SJ_EEEEEENK3__0clES9_EUlT_T0_T1_E0_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_E_NS7_ISX_EESR_ED1Ev(void *a1)
{
  *a1 = &unk_286BE5EF0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_E_NS7_ISX_EESR_ED0Ev(void *a1)
{
  *a1 = &unk_286BE5EF0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_E_NS7_ISX_EESR_E7__cloneEPNS0_6__baseISR_EE(uint64_t a1, void *a2)
{
  *a2 = &unk_286BE5EF0;
  result = std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100]((a2 + 1), a1 + 8);
  a2[5] = *(a1 + 40);
  return result;
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_E_NS7_ISX_EESR_E18destroy_deallocateEv(void *a1)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_E_NS7_ISX_EESR_EclESB_SL_(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10[4] = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v7, *a2, a2[1], (a2[1] - *a2) >> 4);
  memset(v6, 0, sizeof(v6));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
  v5 = *(a1 + 40);
  v8 = 0;
  std::vector<int>::vector[abi:ne200100](&__p, v5);
  mlx::core::vmap(a1 + 8, v6, &__p, v10);
}

void sub_25A283298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v20 - 72);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  *(v20 - 72) = &a12;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 72));
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZN3mlx4core15custom_functionENS_8functionIFNS_6vectorINS3_5arrayENS_9allocatorIS6_EEEERKS9_EEENS_8optionalINS4_IFS9_SB_SB_SB_EEEEENSE_INS4_IFS9_SB_SB_RKNS5_IiNS7_IiEEEEEEEEENSE_INS4_IFNS_4pairIS9_SJ_EESB_SL_EEEEEENK3__0clESB_EUlT_T0_E_NS7_ISX_EESR_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN3mlx4core15custom_functionENSt3__18functionIFNS1_6vectorINS0_5arrayENS1_9allocatorIS4_EEEERKS7_EEENS1_8optionalINS2_IFS7_S9_S9_S9_EEEEENSC_INS2_IFS7_S9_S9_RKNS3_IiNS5_IiEEEEEEEEENSC_INS2_IFNS1_4pairIS7_SH_EES9_SJ_EEEEEENK3__0clES9_EUlT_T0_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::pair<std::vector<mlx::core::array>,std::vector<int>>::pair[abi:ne200100]<std::vector<mlx::core::array>,std::vector<int>&,0>(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  v4 = (a1 + 3);
  *(v4 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void sub_25A2833C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<mlx::core::checkpoint(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>)::$_0,std::allocator<mlx::core::checkpoint(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5F90;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<mlx::core::checkpoint(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>)::$_0,std::allocator<mlx::core::checkpoint(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5F90;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void std::__function::__func<mlx::core::checkpoint(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>)::$_0,std::allocator<mlx::core::checkpoint(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void sub_25A28361C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::checkpoint(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>)::$_0,std::allocator<mlx::core::checkpoint(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::array::array()
{
  std::allocate_shared[abi:ne200100]<mlx::core::array::ArrayDesc,std::allocator<mlx::core::array::ArrayDesc>,std::vector<int>,mlx::core::Dtype &,0>();
}

{
  v0 = *MEMORY[0x277D85DE8];
  std::allocate_shared[abi:ne200100]<mlx::core::array::ArrayDesc,std::allocator<mlx::core::array::ArrayDesc>,std::vector<int>,mlx::core::Dtype &,0>();
}

void sub_25A283700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A283888(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *mlx::core::array::make_arrays@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v6 = *result;
  if (result[1] != *result)
  {
    v7 = *a2;
    if (a5[2])
    {
      std::construct_at[abi:ne200100]<mlx::core::array,std::vector<int>,mlx::core::Dtype const&,std::shared_ptr<mlx::core::Primitive> const&,std::vector<mlx::core::array> const&,mlx::core::array*>(0, v6, v7, a3, a4);
    }

    v8 = -*a5 >> 4;
    if (!((v8 + 1) >> 60))
    {
      v9 = -*a5;
      v10 = v9 >> 3;
      if (v9 >> 3 <= (v8 + 1))
      {
        v10 = v8 + 1;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a5, v11);
      }

      std::construct_at[abi:ne200100]<mlx::core::array,std::vector<int>,mlx::core::Dtype const&,std::shared_ptr<mlx::core::Primitive> const&,std::vector<mlx::core::array> const&,mlx::core::array*>(16 * v8, v6, v7, a3, a4);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25A283B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::array::unsafe_weak_copy(uint64_t **this@<X0>, uint64_t a2@<X8>)
{
  __p[8] = *MEMORY[0x277D85DE8];
  v5 = *this;
  memset(__p, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v5, v5[1], (v5[1] - *v5) >> 2);
  v6 = (*this)[7];
  v10 = 0;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  mlx::core::array::array(a2, __p, v6 & 0xFFFFFFFFFFLL);
}

void sub_25A283CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v20 - 72);
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(v19);
  _Unwind_Resume(a1);
}

void mlx::core::array::set_data(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  std::allocate_shared[abi:ne200100]<mlx::core::array::Data,std::allocator<mlx::core::array::Data>,mlx::core::allocator::Buffer &,std::function<void ()(mlx::core::allocator::Buffer)> &,0>();
}

{
  v2 = a2;
  std::allocate_shared[abi:ne200100]<mlx::core::array::Data,std::allocator<mlx::core::array::Data>,mlx::core::allocator::Buffer &,std::function<void ()(mlx::core::allocator::Buffer)> &,0>();
}

void mlx::core::array::array(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v3, __p, 1uLL);
  std::allocate_shared[abi:ne200100]<mlx::core::array::ArrayDesc,std::allocator<mlx::core::array::ArrayDesc>,std::vector<int>,mlx::core::Dtype const&,0>();
}

void sub_25A283E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<float const*>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A2841D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::array::array(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  __p[3] = a4;
  v4 = a3;
  memset(__p, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v4, __p, 1uLL);
  std::allocate_shared[abi:ne200100]<mlx::core::array::ArrayDesc,std::allocator<mlx::core::array::ArrayDesc>,std::vector<int>,mlx::core::Dtype &,0>();
}

void sub_25A2842A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<int const*>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A2845C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25A2846C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  v6 = *(v4 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

void mlx::core::array::detach(mlx::core::array *this)
{
  v2 = *this;
  v3 = *(*this + 72);
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *this;
  v5 = *(*this + 200);
  v6 = *(*this + 208);
  if (v5 != v6)
  {
    do
    {
      v7 = *v5;
      v8 = *(*v5 + 72);
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 += 2;
    }

    while (v5 != v6);
    v4 = *this;
    v5 = *(*this + 200);
    v6 = *(*this + 208);
  }

  if (v5 != v6)
  {
    do
    {
      v9 = *v5;
      v11 = *(*v5 + 176);
      v10 = *(*v5 + 184);
      v12 = *v5;
      if (v10 != v11)
      {
        do
        {
          mlx::core::array::~array((v10 - 16));
        }

        while (v10 != v11);
        v12 = *v5;
      }

      *(v9 + 184) = v11;
      v14 = *(v12 + 200);
      v13 = *(v12 + 208);
      v15 = v12;
      if (v13 != v14)
      {
        do
        {
          mlx::core::array::~array((v13 - 16));
        }

        while (v13 != v14);
        v15 = *v5;
      }

      *(v12 + 208) = v14;
      *(v15 + 224) = 0;
      v5 += 2;
    }

    while (v5 != v6);
    v4 = *this;
  }

  v17 = *(v4 + 176);
  v16 = *(v4 + 184);
  v18 = v4;
  if (v16 != v17)
  {
    do
    {
      mlx::core::array::~array((v16 - 16));
    }

    while (v16 != v17);
    v18 = *this;
  }

  *(v4 + 184) = v17;
  v20 = *(v18 + 200);
  v19 = *(v18 + 208);
  v21 = v18;
  if (v19 != v20)
  {
    do
    {
      mlx::core::array::~array((v19 - 16));
    }

    while (v19 != v20);
    v21 = *this;
  }

  *(v18 + 208) = v20;
  *(v21 + 224) = 0;
}

BOOL mlx::core::array::is_available(mlx::core::array *this)
{
  v1 = *this;
  v2 = *(*this + 80);
  if (v2 == 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    if (*(v1 + 104))
    {
      result = mlx::core::Event::is_signaled((v1 + 88));
      if (!result)
      {
        return result;
      }

      v1 = *this;
    }

    *(v1 + 80) = 2;
    return 1;
  }

  return 0;
}

void mlx::core::array::wait(mlx::core::array *this)
{
  if (!mlx::core::array::is_available(this))
  {
    v2 = *this;
    if (*(*this + 104))
    {
      mlx::core::Event::wait((v2 + 88));
      v3 = *this;
      *(v3 + 88) = 0;
      *(v3 + 92) = 0;
      v4 = *(v3 + 112);
      *(v3 + 104) = 0;
      *(v3 + 112) = 0;
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      *(v3 + 120) = 0;
      v2 = *this;
    }

    *(v2 + 80) = 2;
  }
}

void mlx::core::array::eval(mlx::core::array *this)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(*this + 80))
  {
    v1 = *MEMORY[0x277D85DE8];

    mlx::core::array::wait(this);
  }

  else
  {
    v2 = *(this + 1);
    v6[0] = *this;
    v6[1] = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    memset(v4, 0, sizeof(v4));
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v4, v6, &v7, 1uLL);
    mlx::core::eval(v4);
    v5 = v4;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v5);
    mlx::core::array::~array(v6);
    v3 = *MEMORY[0x277D85DE8];
  }
}

void sub_25A284AF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  va_copy(v7, va);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va1);
  mlx::core::array::~array(va2);
  _Unwind_Resume(a1);
}

BOOL mlx::core::array::is_tracer(mlx::core::array *this)
{
  if (*(*this + 128) != 1)
  {
    return mlx::core::detail::RetainGraph::tracing_counter > 0;
  }

  v1 = mlx::core::detail::InTracing::trace_stack(this);
  return *v1 != v1[1] || mlx::core::detail::RetainGraph::tracing_counter > 0;
}

char **mlx::core::array::copy_shared_buffer(uint64_t *a1, uint64_t a2, char **a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  v14 = *(*a2 + 136);
  v13 = *(*a2 + 144);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(v12 + 144);
  *(v12 + 136) = v14;
  *(v12 + 144) = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *a1;
  result = (*a1 + 24);
  if (result != a3)
  {
    result = std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(result, *a3, a3[1], (a3[1] - *a3) >> 3);
    v16 = *a1;
  }

  *(v16 + 168) = a4;
  v18 = *a1;
  *(v18 + 152) = *(*a2 + 152) + *(*a1 + 60) * a6;
  *(v18 + 160) = a5;
  return result;
}

void mlx::core::array::~array(mlx::core::array *this)
{
  v2 = *this;
  if (*this)
  {
    if (v2[8])
    {
      v4 = v2[25];
      v3 = v2[26];
      if (v3 != v4)
      {
        v5 = (v3 - v4) >> 4;
        v6 = *(this + 1);
        if (v6)
        {
          v6 = *(v6 + 8) + 1;
        }

        v7 = v6 == v5 + 1;
        v8 = v4;
        while (1)
        {
          v9 = v8[1];
          if (v9)
          {
            v9 = *(v9 + 8) + 1;
          }

          if (!v7 || v9 != v5)
          {
            break;
          }

          v8 += 2;
          v7 = 1;
          if (v8 == v3)
          {
            do
            {
              v10 = *v4;
              v12 = *(*v4 + 200);
              v11 = *(*v4 + 208);
              if (v12 != v11)
              {
                do
                {
                  v13 = *(v12 + 1);
                  *v12 = 0;
                  *(v12 + 1) = 0;
                  if (v13)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
                  }

                  v12 = (v12 + 16);
                }

                while (v12 != v11);
                v10 = *v4;
                v12 = *(*v4 + 200);
                v11 = *(*v4 + 208);
              }

              while (v11 != v12)
              {
                v11 = (v11 - 16);
                mlx::core::array::~array(v11);
              }

              *(v10 + 208) = v12;
              v4 += 2;
            }

            while (v4 != v3);
            break;
          }
        }
      }
    }
  }

  v14 = *(this + 1);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void mlx::core::array::ArrayDesc::init(mlx::core::array::ArrayDesc *this)
{
  std::vector<long long>::resize(this + 3, (*(this + 1) - *this) >> 2);
  *(this + 6) = 1;
  v3 = *this;
  v4 = ((*(this + 1) - *this) >> 2) - 1;
  if (v4 >= 0)
  {
    v5 = *(this + 3);
    v6 = 1;
    do
    {
      *(v5 + 8 * v4) = v6;
      v6 *= *(v3 + 4 * v4--);
    }

    while (v4 != -1);
    *(this + 6) = v6;
  }

  v7 = *(this + 22);
  for (i = *(this + 23); v7 != i; v7 += 16)
  {
    v9 = *(*v7 + 128) == 1 && (v2 = mlx::core::detail::InTracing::trace_stack(v2), *v2 != v2[1]) || mlx::core::detail::RetainGraph::tracing_counter > 0;
    *(this + 128) |= v9;
  }
}

void std::vector<long long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<long long>::__append(a1, a2 - v2);
  }
}

uint64_t mlx::core::array::ArrayDesc::ArrayDesc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = a3;
  *(a1 + 80) = 2;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  mlx::core::array::ArrayDesc::init(a1);
  return a1;
}

void sub_25A284F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = v13;
  a10 = (v10 + 200);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a10);
  v16 = *(v10 + 144);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  mlx::core::array::ArrayDesc::ArrayDesc(v10, v12, v11);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::array::ArrayDesc::ArrayDesc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = a3;
  *(a1 + 64) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 176) = *a5;
  *(a1 + 192) = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  mlx::core::array::ArrayDesc::init(a1);
  return a1;
}

void sub_25A285028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = v13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a10);
  v16 = *(v10 + 144);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  mlx::core::array::ArrayDesc::ArrayDesc(v10, (v10 + 72), v12, v11);
  _Unwind_Resume(a1);
}

void mlx::core::array::ArrayDesc::~ArrayDesc(mlx::core::array::ArrayDesc *this)
{
  v2 = (this + 176);
  if (*(this + 22) != *(this + 23))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = &v16;
    mlx::core::array::ArrayDesc::~ArrayDesc()::$_0::operator()(&v19, this);
    while (1)
    {
      v3 = v17;
      if (v16 == v17)
      {
        break;
      }

      v5 = *(v17 - 2);
      v4 = *(v17 - 1);
      *(v17 - 2) = 0;
      *(v3 - 1) = 0;
      v6 = v17;
      v7 = *(v17 - 1);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v17 = v6 - 2;
      mlx::core::array::ArrayDesc::~ArrayDesc()::$_0::operator()(&v19, v5);
      v9 = *(v5 + 200);
      v8 = *(v5 + 208);
      if (v9 != v8)
      {
        do
        {
          v10 = *(v9 + 1);
          *v9 = 0;
          *(v9 + 1) = 0;
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }

          v9 = (v9 + 16);
        }

        while (v9 != v8);
        v9 = *(v5 + 200);
        v8 = *(v5 + 208);
      }

      while (v8 != v9)
      {
        v8 = (v8 - 16);
        mlx::core::array::~array(v8);
      }

      *(v5 + 208) = v9;
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }
    }

    v19 = &v16;
    std::vector<std::shared_ptr<mlx::core::array::ArrayDesc>>::__destroy_vector::operator()[abi:ne200100](&v19);
  }

  v16 = (this + 200);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v16);
  v16 = v2;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v16);
  v11 = *(this + 18);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 14);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 9);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(this + 3);
  if (v14)
  {
    *(this + 4) = v14;
    operator delete(v14);
  }

  v15 = *this;
  if (*this)
  {
    *(this + 1) = v15;
    operator delete(v15);
  }
}

uint64_t mlx::core::array::ArrayDesc::~ArrayDesc()::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v35 = 0u;
  v36 = 0u;
  v37 = 1065353216;
  v5 = *(a2 + 176);
  v4 = *(a2 + 184);
  if (v5 != v4)
  {
    do
    {
      v6 = *v5;
      if (*v5)
      {
        v38 = *v5;
        v39 = v6;
        v7 = *(v5 + 1);
        v40 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
        }

        std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,mlx::core::array>>(&v35, &v38);
        mlx::core::array::~array(&v39);
        v8 = *(*v5 + 200);
        v9 = *(*v5 + 208);
        while (v8 != v9)
        {
          v38 = *v8;
          v39 = v38;
          v10 = *(v8 + 8);
          v40 = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
          }

          std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,mlx::core::array>>(&v35, &v38);
          mlx::core::array::~array(&v39);
          v8 += 16;
        }
      }

      v5 = (v5 + 16);
    }

    while (v5 != v4);
    v5 = *(a2 + 176);
    v4 = *(a2 + 184);
  }

  while (v4 != v5)
  {
    v4 = (v4 - 16);
    mlx::core::array::~array(v4);
  }

  *(a2 + 184) = v5;
  for (i = v36; i; i = *i)
  {
    v12 = i[4];
    if (v12)
    {
      v13 = *(v12 + 8) + 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = i[3];
    v16 = *(v14 + 200);
    v15 = *(v14 + 208);
    v17 = v13 <= ((v15 - v16) >> 4) + 1;
    if (v15 == v16)
    {
LABEL_26:
      if (v17)
      {
        v22 = *a1;
        v23 = *(*a1 + 8);
        v24 = *(*a1 + 16);
        if (v23 >= v24)
        {
          v26 = (v23 - *v22) >> 4;
          v27 = v26 + 1;
          if ((v26 + 1) >> 60)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v28 = v24 - *v22;
          if (v28 >> 3 > v27)
          {
            v27 = v28 >> 3;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF0)
          {
            v29 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          v42 = *a1;
          if (v29)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(v22, v29);
          }

          *(16 * v26) = *(i + 3);
          v25 = 16 * v26 + 16;
          i[3] = 0;
          i[4] = 0;
          v30 = *(v22 + 8) - *v22;
          v31 = (16 * v26 - v30);
          memcpy(v31, *v22, v30);
          v32 = *v22;
          *v22 = v31;
          v38 = v32;
          v39 = v32;
          *(v22 + 8) = v25;
          v40 = v32;
          v33 = *(v22 + 16);
          *(v22 + 16) = 0;
          v41 = v33;
          std::__split_buffer<std::shared_ptr<mlx::core::array::ArrayDesc>>::~__split_buffer(&v38);
        }

        else
        {
          *v23 = v14;
          v23[1] = i[4];
          i[3] = 0;
          i[4] = 0;
          v25 = (v23 + 2);
        }

        *(v22 + 8) = v25;
      }
    }

    else
    {
      while (v17)
      {
        v38 = *v16;
        v18 = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(&v35, &v38);
        v19 = *(v16 + 8);
        if (v19)
        {
          v20 = *(v19 + 8) + 1;
        }

        else
        {
          v20 = 0;
        }

        v14 = i[3];
        v21 = (*(v14 + 208) - *(v14 + 200)) >> 4;
        if (v18)
        {
          ++v21;
        }

        v17 = v20 <= v21;
        v16 += 16;
        if (v16 == v15)
        {
          goto LABEL_26;
        }
      }
    }
  }

  return std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::~__hash_table(&v35);
}

uint64_t mlx::core::array::ArrayIterator::ArrayIterator(uint64_t this, const mlx::core::array *a2, int a3)
{
  *this = a2;
  *(this + 8) = a3;
  if (*(*a2 + 8) == **a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Cannot iterate over 0-d array.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  return this;
}

void mlx::core::array::ArrayIterator::operator*(uint64_t ***a1@<X0>, const void ***a2@<X8>)
{
  v4 = ((**a1)[1] - ***a1) >> 2;
  LODWORD(v27) = 0;
  std::vector<int>::vector[abi:ne200100](&v30, v4);
  v5 = **a1;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v27, *v5, v5[1], (v5[1] - *v5) >> 2);
  v6 = **a1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v24, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = v24;
  v8 = v25 - (v24 + 4);
  if (v25 != v24 + 4)
  {
    memmove(v24, v24 + 4, v25 - (v24 + 4));
  }

  v25 = &v7[v8];
  v9 = *(a1 + 2);
  v10 = v30;
  *v30 = v9;
  *v27 = v9 + 1;
  v11 = *a1;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v20, v10, v31, (v31 - v10) >> 2);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v17, v27, v28, (v28 - v27) >> 2);
  mlx::core::slice(v11, &v20, &v17, v12, 0, v23);
  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v24, v25, (v25 - v24) >> 2);
  mlx::core::reshape(v23, &__p, v13, 0, a2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  mlx::core::array::~array(v23);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_25A285704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a18);
  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  v23 = *(v21 - 80);
  if (v23)
  {
    *(v21 - 72) = v23;
    operator delete(v23);
  }

  v24 = *(v21 - 56);
  if (v24)
  {
    *(v21 - 48) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void std::construct_at[abi:ne200100]<mlx::core::array,std::vector<int>,mlx::core::Dtype const&,std::shared_ptr<mlx::core::Primitive> const&,std::vector<mlx::core::array> const&,mlx::core::array*>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  *__p = *a2;
  v10 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = *a3;
  v7 = *(a4 + 8);
  v8[3] = *a4;
  v8[4] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  memset(v8, 0, 24);
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v8, *a5, a5[1], (a5[1] - *a5) >> 4);
  mlx::core::array::array(a1, __p, v6);
}

void sub_25A285870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  *(v17 - 40) = v16;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v17 - 40));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A285910(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<long long>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
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

      std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](v6, v10);
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

void std::vector<long long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void **std::__split_buffer<std::shared_ptr<mlx::core::array::ArrayDesc>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<mlx::core::array::ArrayDesc>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<mlx::core::array::ArrayDesc>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::vector<std::shared_ptr<mlx::core::array::ArrayDesc>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<mlx::core::array::ArrayDesc>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<mlx::core::array::ArrayDesc>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__shared_ptr_emplace<mlx::core::array::ArrayDesc>::__shared_ptr_emplace[abi:ne200100]<std::vector<int>,mlx::core::Dtype &,std::shared_ptr<mlx::core::Primitive>,std::vector<mlx::core::array>,std::allocator<mlx::core::array::ArrayDesc>,0>(void *a1, __int128 *a2, uint64_t *a3, __int128 *a4, __int128 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE3418;
  std::construct_at[abi:ne200100]<mlx::core::array::ArrayDesc,std::vector<int>,mlx::core::Dtype &,std::shared_ptr<mlx::core::Primitive>,std::vector<mlx::core::array>,mlx::core::array::ArrayDesc*>((a1 + 3), a2, a3, a4, a5);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::array::ArrayDesc,std::vector<int>,mlx::core::Dtype &,std::shared_ptr<mlx::core::Primitive>,std::vector<mlx::core::array>,mlx::core::array::ArrayDesc*>(uint64_t a1, __int128 *a2, uint64_t *a3, __int128 *a4, __int128 *a5)
{
  v6 = *a2;
  v13 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v7 = *a3;
  v11 = *a4;
  *__p = v6;
  *a4 = 0;
  *(a4 + 1) = 0;
  v9 = *a5;
  v10 = *(a5 + 2);
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *a5 = 0;
  mlx::core::array::ArrayDesc::ArrayDesc(a1, __p, v7, &v11, &v9);
  v14 = &v9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v14);
  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_25A285F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p)
{
  *(v16 - 24) = v15;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v16 - 24));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::array::unsafe_weak_copy(mlx::core::array const&)::$_0,std::allocator<mlx::core::array::unsafe_weak_copy(mlx::core::array const&)::$_0>,void ()(mlx::core::allocator::Buffer)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<mlx::core::array::ArrayDesc>::__shared_ptr_emplace[abi:ne200100]<std::vector<int>,mlx::core::Dtype const&,std::allocator<mlx::core::array::ArrayDesc>,0>(void *a1, uint64_t a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE3418;
  std::construct_at[abi:ne200100]<mlx::core::array::ArrayDesc,std::vector<int>,mlx::core::Dtype const&,mlx::core::array::ArrayDesc*>((a1 + 3), a2, a3);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::array::ArrayDesc,std::vector<int>,mlx::core::Dtype const&,mlx::core::array::ArrayDesc*>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *__p = *a2;
  v6 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  mlx::core::array::ArrayDesc::ArrayDesc(a1, __p, *a3);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_25A286158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<mlx::core::array::Data>::__shared_ptr_emplace[abi:ne200100]<mlx::core::allocator::Buffer &,std::function<void ()(mlx::core::allocator::Buffer)> &,std::allocator<mlx::core::array::Data>,0>(void *a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE6090;
  std::construct_at[abi:ne200100]<mlx::core::array::Data,mlx::core::allocator::Buffer &,std::function<void ()(mlx::core::allocator::Buffer)> &,mlx::core::array::Data*>(a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::array::Data>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE6090;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void *std::construct_at[abi:ne200100]<mlx::core::array::Data,mlx::core::allocator::Buffer &,std::function<void ()(mlx::core::allocator::Buffer)> &,mlx::core::array::Data*>(void *a1, uint64_t *a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](v7, a3);
  *a1 = v4;
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100]((a1 + 1), v7);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25A286340(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::array::Data::~Data(mlx::core::array::Data *this)
{
  v1 = this + 8;
  std::function<void ()(mlx::core::allocator::Buffer)>::operator()(this + 8, *this);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v1);
}

uint64_t std::function<void ()(mlx::core::allocator::Buffer)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t mlx::core::serialize(uint64_t a1, int *a2)
{
  v5 = *a2;
  (*(*a1 + 32))(a1, &v5, 4);
  v6 = a2[1];
  (*(*a1 + 32))(a1, &v6, 4);
  v7 = a2[2];
  return (*(*a1 + 32))(a1, &v7, 4);
}

{
  v5 = *a2;
  (*(*a1 + 32))(a1, &v5, 4);
  v6 = *(a2 + 4);
  return (*(*a1 + 32))(a1, &v6, 1);
}

unint64_t mlx::core::deserialize<mlx::core::Stream>(uint64_t a1)
{
  v5 = 0;
  (*(*a1 + 32))(a1, &v5, 4);
  v2 = v5;
  v5 = 0;
  (*(*a1 + 32))(a1, &v5, 4);
  v3 = v5;
  v5 = 0;
  (*(*a1 + 32))(a1, &v5, 4);
  return __PAIR64__(v3, v2);
}

unint64_t mlx::core::deserialize<mlx::core::Dtype>(uint64_t a1)
{
  v4 = 0;
  (*(*a1 + 32))(a1, &v4, 4);
  v2 = v4;
  v5 = 0;
  (*(*a1 + 32))(a1, &v5, 1);
  return v2 | (v5 << 32);
}

uint64_t mlx::core::serialize(mlx::core *this, uint64_t **a2, const mlx::core::array *a3)
{
  v5 = *a2;
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v5, v5[1], (v5[1] - *v5) >> 2);
  mlx::core::serialize<std::vector<int>>(this, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v6 = (*a2)[7];
  v11 = v6;
  (*(*this + 32))(this, &v11, 4);
  LOBYTE(v11) = BYTE4(v6);
  return (*(*this + 32))(this, &v11, 1);
}

void sub_25A2867B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::serialize<std::vector<int>>(uint64_t a1, int **a2)
{
  v8 = a2[1] - *a2;
  result = (*(*a1 + 32))(a1, &v8, 8);
  v6 = *a2;
  v5 = a2[1];
  while (v6 != v5)
  {
    v7 = *v6++;
    v9 = v7;
    result = (*(*a1 + 32))(a1, &v9, 4);
  }

  return result;
}

void mlx::core::deserialize<mlx::core::array>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  mlx::core::deserialize<std::vector<int>>(a1, &v9);
  v4 = mlx::core::deserialize<mlx::core::Dtype>(a1);
  __p = v9;
  memset(&v9, 0, sizeof(v9));
  v6 = 0;
  v7 = 0;
  memset(v5, 0, sizeof(v5));
  mlx::core::array::array(a2, &__p, v4 & 0xFFFFFFFFFFLL, &v6, v5);
  v10 = v5;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v10);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v9.__begin_)
  {
    v9.__end_ = v9.__begin_;
    operator delete(v9.__begin_);
  }
}

void sub_25A286940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  *(v17 - 24) = v16;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v17 - 24));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v19 = *(v17 - 48);
  if (v19)
  {
    *(v17 - 40) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void mlx::core::deserialize<std::vector<int>>(uint64_t a1@<X0>, std::vector<int> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  __n = 0;
  (*(*a1 + 32))(a1, &__n, 8);
  v4 = __n;
  std::vector<int>::reserve(a2, __n);
  for (; v4; --v4)
  {
    v16 = 0;
    (*(*a1 + 32))(a1, &v16, 4);
    end = a2->__end_;
    value = a2->__end_cap_.__value_;
    if (end >= value)
    {
      begin = a2->__begin_;
      v9 = end - a2->__begin_;
      v10 = v9 >> 2;
      v11 = (v9 >> 2) + 1;
      if (v11 >> 62)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v12 = value - begin;
      if (v12 >> 1 > v11)
      {
        v11 = v12 >> 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v13 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2, v13);
      }

      *(4 * v10) = v16;
      v7 = 4 * v10 + 4;
      memcpy(0, begin, v9);
      v14 = a2->__begin_;
      a2->__begin_ = 0;
      a2->__end_ = v7;
      a2->__end_cap_.__value_ = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *end = v16;
      v7 = (end + 4);
    }

    a2->__end_ = v7;
  }
}

void sub_25A286B14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::write_header(mlx::core *this, mlx::core::io::FileWriter *a2, char a3)
{
  v4 = a2;
  mlx::core::version(__p);
  mlx::core::serialize<std::string>(this, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = v4;
  (*(*this + 32))(this, &v9, 4);
  LOBYTE(v9) = a3;
  return (*(*this + 32))(this, &v9, 1);
}

void sub_25A286BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::serialize<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    v4 = *(a2 + 8);
  }

  v9 = v4;
  result = (*(*a1 + 32))(a1, &v9, 8);
  v6 = v2[23];
  if (v6 < 0)
  {
    v7 = v2;
    v2 = *v2;
    v6 = *(v7 + 1);
  }

  for (; v6; --v6)
  {
    v8 = *v2++;
    v10 = v8;
    result = (*(*a1 + 32))(a1, &v10, 1);
  }

  return result;
}

uint64_t mlx::core::FunctionTable::match(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  while (v8 != v9)
  {
    if (!std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::find<std::string>(a3, v8))
    {
      return 0;
    }

    v8 += 3;
  }

  v10 = *a1;
  v12 = a2;
  v11 = *a2;
  v13 = v12[1] - v11;
  if (v13)
  {
    v14 = v13 >> 4;
    v15 = *(a4 + 24);
    if (v14 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14;
    }

    v17 = v16;
    while (1)
    {
      v18 = *v11;
      v19 = *v15;
      if (*(*v11 + 56) != *(*v15 + 56))
      {
        return 0;
      }

      if ((v10 & 1) == 0)
      {
        v20 = *(v18 + 8) - *v18;
        if (v20 != *(v19 + 8) - *v19 || memcmp(*v18, *v19, v20))
        {
          return 0;
        }
      }

      v15 += 2;
      v11 += 2;
      if (!--v17)
      {
        v21 = v16;
        goto LABEL_18;
      }
    }
  }

  v21 = 0;
LABEL_18:
  std::map<std::string,mlx::core::array>::map[abi:ne200100]<std::__hash_map_const_iterator<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *> *>>>(&v32, *(a3 + 16), 0);
  v23 = v32;
  if (v32 == v33)
  {
LABEL_30:
    v22 = 1;
  }

  else
  {
    v24 = *(a4 + 24);
    while (1)
    {
      v25 = v23[7];
      v26 = *(v24 + 16 * v21);
      if (*(v25 + 56) != *(v26 + 56))
      {
        break;
      }

      if ((v10 & 1) == 0)
      {
        v27 = *(v25 + 8) - *v25;
        if (v27 != *(v26 + 8) - *v26 || memcmp(*v25, *v26, v27))
        {
          break;
        }
      }

      v28 = v23[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v23[2];
          v30 = *v29 == v23;
          v23 = v29;
        }

        while (!v30);
      }

      ++v21;
      v23 = v29;
      if (v29 == v33)
      {
        goto LABEL_30;
      }
    }

    v22 = 0;
  }

  std::__tree<std::__value_type<std::string,mlx::core::array>,std::__map_value_compare<std::string,std::__value_type<std::string,mlx::core::array>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlx::core::array>>>::destroy(&v32, v33[0]);
  return v22;
}

void mlx::core::FunctionTable::emplace(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 24) + ((a2[1] - *a2) >> 4);
  v6 = 0;
  v7 = v3;
  v4 = 0;
  v5 = 0;
  std::__hash_table<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>>>::__emplace_unique_impl<unsigned long,std::vector<mlx::core::FunctionTable::Function>>();
}

void sub_25A286F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<mlx::core::FunctionTable::Function>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::FunctionTable::find(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = ((a2[1] - *a2) >> 4) + *(a3 + 24);
  v6 = std::__hash_table<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>>>::find<int>((a1 + 8), &v10);
  if (v6)
  {
    v7 = v6[3];
    v8 = v6[4];
    while (v7 != v8)
    {
      if (mlx::core::FunctionTable::match(a1, a2, a3, v7))
      {
        return v7;
      }

      v7 += 96;
    }
  }

  return 0;
}

void mlx::core::FunctionExporter::FunctionExporter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  *a1 = &unk_286BE60E0;
  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v6;
  }

  else
  {
    v5 = v6.__r_.__value_.__r.__words[0];
  }

  *(a1 + 8) = open(v5, 1537, 420);
  *(a1 + 16) = v6;
  memset(&v6, 0, sizeof(v6));
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::__value_func[abi:ne200100](a1 + 40, a3);
  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  operator new();
}

void sub_25A287204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      v20 = *(v15 + 112);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      std::__tree<int>::destroy(v16, *(v15 + 80));
      std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](v15 + 40);
      mlx::core::io::FileWriter::~FileWriter(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void sub_25A287274(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x25A28726CLL);
}

void mlx::core::FunctionExporter::export_function(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a1 + 100) != 1)
  {
    mlx::core::FunctionTable::emplace(*(a1 + 104), a2, a3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[export_function] Attempting to write after exporting is closed.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void mlx::core::serialize<std::vector<std::string>>(uint64_t a1, __int128 **a2)
{
  v8 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  (*(*a1 + 32))(a1, &v8, 8);
  v5 = *a2;
  v4 = a2[1];
  while (v5 != v4)
  {
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 1));
    }

    else
    {
      v6 = *v5;
      __p.__r_.__value_.__r.__words[2] = *(v5 + 2);
      *&__p.__r_.__value_.__l.__data_ = v6;
    }

    mlx::core::serialize<std::string>(a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v5 = (v5 + 24);
  }
}

void sub_25A287FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::serialize<std::vector<unsigned long long>>(uint64_t a1, uint64_t **a2)
{
  v8 = a2[1] - *a2;
  result = (*(*a1 + 32))(a1, &v8, 8);
  v6 = *a2;
  v5 = a2[1];
  while (v6 != v5)
  {
    v7 = *v6++;
    v8 = v7;
    result = (*(*a1 + 32))(a1, &v8, 8);
  }

  return result;
}

uint64_t mlx::core::serialize<std::vector<mlx::core::array>>(mlx::core *a1, uint64_t ***a2)
{
  v8 = (a2[1] - *a2) >> 4;
  result = (*(*a1 + 32))(a1, &v8, 8);
  v6 = *a2;
  v7 = a2[1];
  while (v6 != v7)
  {
    result = mlx::core::serialize(a1, v6, v5);
    v6 += 2;
  }

  return result;
}

uint64_t mlx::core::PrimitiveFactory::save(void *a1, uint64_t a2, void *a3)
{
  mlx::core::serialize(a2, (*a3 + 8));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  (*(**a3 + 40))(*a3, &v21);
  if ((v28 & 0x10) != 0)
  {
    v7 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v7 = v24;
    }

    locale = v23[4].__locale_;
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v6 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      goto LABEL_14;
    }

    locale = v23[1].__locale_;
    v7 = v23[3].__locale_;
  }

  v6 = v7 - locale;
  if ((v7 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v7 - locale;
  if (v6)
  {
    memmove(&__dst, locale, v6);
  }

LABEL_14:
  __dst.__r_.__value_.__s.__data_[v6] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    v11 = memchr(p_dst, 32, size);
    if (v11)
    {
      v12 = v11 - p_dst;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    v12 = -1;
  }

  std::string::basic_string(&v19, &__dst, 0, v12, &v30);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  __dst = v19;
  v13 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a1 + 5, &__dst.__r_.__value_.__l.__data_);
  if (v13)
  {
    std::string::operator=(&__dst, (v13 + 5));
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  mlx::core::serialize<std::string>(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a1, &__dst.__r_.__value_.__l.__data_);
  if (!v14)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::logic_error::logic_error(exception, &v19);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v15 = v14[8];
  if (!v15)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v15 + 48))(v15, a2, *a3);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v21 = *MEMORY[0x277D82828];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x277D82828] + 24);
  v22 = MEMORY[0x277D82878] + 16;
  if (v26 < 0)
  {
    operator delete(v25);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x25F8516C0](&v29);
}

void sub_25A288530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a28);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<int>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<mlx::core::Dtype>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::Dtype>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void mlx::core::serialize<std::vector<std::vector<int>>>(uint64_t a1, uint64_t **a2)
{
  v9 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  (*(*a1 + 32))(a1, &v9, 8);
  v5 = *a2;
  v4 = a2[1];
  while (v5 != v4)
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v5, v5[1], (v5[1] - *v5) >> 2);
    mlx::core::serialize<std::vector<int>>(a1, &__p);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }

    v5 += 3;
  }
}

void sub_25A288794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::serialize<std::vector<mlx::core::Dtype>>(uint64_t a1, int **a2)
{
  v7 = (a2[1] - *a2) >> 3;
  result = (*(*a1 + 32))(a1, &v7, 8);
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    result = mlx::core::serialize(a1, v5);
    v5 += 2;
  }

  return result;
}

ssize_t mlx::core::io::FileWriter::write(ssize_t this, const char *__buf, unint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = this;
    do
    {
      if (v3 >= 0x7FFFFFFF)
      {
        v6 = 0x7FFFFFFFLL;
      }

      else
      {
        v6 = v3;
      }

      this = write(*(v5 + 8), __buf, v6);
      if (this <= 0)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v11);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "[write] Unable to write ", 24);
        v8 = MEMORY[0x25F851380](v7, v3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " bytes to file.", 15);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v11, v10);
        MEMORY[0x25F851100](exception, v10);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      __buf += this;
      v3 -= this;
    }

    while (v3);
  }

  return this;
}

void sub_25A288934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
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

void **std::pair<std::vector<mlx::core::array>,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>::~pair(void **a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::~__hash_table((a1 + 3));
  v3 = a1;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void mlx::core::FunctionExporter::operator()(uint64_t a1, void *a2)
{
  memset(v2, 0, sizeof(v2));
  v3 = 1065353216;
  mlx::core::FunctionExporter::export_function(a1, a2, v2);
}

void sub_25A288A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void mlx::core::exporter(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v2, a2);
  v3 = 0;
  operator new();
}

{
  v4 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)>::__value_func[abi:ne200100](v2, a2);
  v3 = 0;
  operator new();
}

void sub_25A288B54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25A288C68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::exporter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::__value_func[abi:ne200100](v5, a2);
  mlx::core::FunctionExporter::FunctionExporter(a3, a1, v5);
}

void sub_25A288D2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::export_function(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  mlx::core::exporter(a1, a2);
}

{
  v2 = *MEMORY[0x277D85DE8];
  mlx::core::exporter(a1, a2);
}

{
  v2[15] = *MEMORY[0x277D85DE8];
  mlx::core::exporter(a1, a2, v2);
}

void mlx::core::FunctionExporter::~FunctionExporter(mlx::core::FunctionExporter *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<int>::destroy(this + 72, *(this + 10));
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](this + 40);

  mlx::core::io::FileWriter::~FileWriter(this);
}

void mlx::core::ImportedFunction::operator()(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  memset(v3, 0, sizeof(v3));
  mlx::core::ImportedFunction::operator()(a1, v3, a2, a3);
  v4 = v3;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void sub_25A289008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void mlx::core::ImportedFunction::operator()(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = mlx::core::FunctionTable::find(*a1, a2, a3);
  if (!v8)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v39);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "[import_function::call] No imported function found which matches ", 65);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "the given positional and keyword arguments. Possible functions include:\n", 72);
    mlx::core::FunctionTable::print_functions(*a1, v39);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "\nCalled with ", 13);
    v13 = MEMORY[0x25F851380](v12, (a2[1] - *a2) >> 4);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " positional inputs and ", 23);
    v15 = MEMORY[0x25F851380](v14, *(a3 + 24));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " keyword inputs:\n", 17);
    v16 = *a2;
    if (a2[1] != *a2)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "  ", 2);
        v22 = MEMORY[0x25F851360](v21, ++v20);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ": ", 2);
        v24 = mlx::core::operator<<(v23, *(v16 + v19));
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " ", 1);
        v26 = *(*(v16 + v19) + 56);
        LODWORD(v38.__r_.__value_.__l.__data_) = v26;
        v38.__r_.__value_.__s.__data_[4] = BYTE4(v26);
        v27 = mlx::core::operator<<(v25, &v38);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\n", 1);
        v16 = *a2;
        v19 += 16;
      }

      while (v20 < (a2[1] - *a2) >> 4);
    }

    for (i = *(a3 + 16); i; i = *i)
    {
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "  ", 3);
      v29 = *(i + 39);
      if (v29 >= 0)
      {
        v30 = (i + 2);
      }

      else
      {
        v30 = i[2];
      }

      if (v29 >= 0)
      {
        v31 = *(i + 39);
      }

      else
      {
        v31 = i[3];
      }

      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ": ", 3);
      v34 = mlx::core::operator<<(v33, i[5]);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " ", 1);
      v36 = i[5][7];
      LODWORD(v38.__r_.__value_.__l.__data_) = v36;
      v38.__r_.__value_.__s.__data_[4] = BYTE4(v36);
      v37 = mlx::core::operator<<(v35, &v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "\n", 1);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v39, &v38);
    std::logic_error::logic_error(exception, &v38);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v9 = v8;
  memset(v39, 0, 24);
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v39, *a2, a2[1], (a2[1] - *a2) >> 4);
  for (j = a3 + 16; ; std::vector<mlx::core::array>::push_back[abi:ne200100](v39, (j + 40)))
  {
    j = *j;
    if (!j)
    {
      break;
    }
  }

  mlx::core::detail::compile_replace((v9 + 72), (v9 + 24), v9 + 48, v39, **a1, a4);
  v38.__r_.__value_.__r.__words[0] = v39;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v38);
}

uint64_t mlx::core::ImportedFunction::operator()@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  mlx::core::ImportedFunction::operator()(a1, a2, v4, a3);
  return std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::~__hash_table(v4);
}

void *mlx::core::FunctionTable::print_functions(void *result, void *a2)
{
  v2 = result[3];
  if (v2)
  {
    v4 = 1;
    do
    {
      v30 = v2;
      v6 = v2[3];
      v5 = v2[4];
      v31 = v5;
      while (v6 != v5)
      {
        v7 = 0x5555555555555555 * ((v6[1] - *v6) >> 3) + ((v6[4] - v6[3]) >> 4);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
        v9 = MEMORY[0x25F851360](v8, v4);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ". Function with ", 16);
        v11 = MEMORY[0x25F851380](v10, v7);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " positional inputs and ", 23);
        v13 = MEMORY[0x25F851380](v12, 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
        result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " keyword inputs:\n", 17);
        v14 = v6[3];
        if (v6[4] != v14)
        {
          v15 = 0;
          do
          {
            if (v15 >= v7)
            {
              v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "   ", 4);
              v20 = *v6 + 24 * (v15 - v7);
              v21 = *(v20 + 23);
              if (v21 >= 0)
              {
                v22 = *v6 + 24 * (v15 - v7);
              }

              else
              {
                v22 = *v20;
              }

              if (v21 >= 0)
              {
                v23 = *(v20 + 23);
              }

              else
              {
                v23 = *(v20 + 8);
              }

              v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v22, v23);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ": ", 3);
              v17 = v15 + 1;
            }

            else
            {
              v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "   ", 3);
              v17 = v15 + 1;
              v18 = MEMORY[0x25F851360](v16, v15 + 1);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
            }

            v25 = (v14 + 16 * v15);
            v26 = mlx::core::operator<<(a2, *v25);
            v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " ", 1);
            v28 = (*v25)[7];
            LODWORD(v32) = v28;
            BYTE4(v32) = BYTE4(v28);
            v29 = mlx::core::operator<<(v27, &v32);
            result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "\n", 1);
            v14 = v6[3];
            v15 = v17;
          }

          while (v17 < (v6[4] - v14) >> 4);
        }

        v4 = (v4 + 1);
        v6 += 12;
        v5 = v31;
      }

      v2 = *v30;
    }

    while (*v30);
  }

  return result;
}

void sub_25A28A0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
    if ((v60 & 1) == 0)
    {
LABEL_6:
      if (a21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a21);
      }

      v63 = *(a10 + 8);
      if (v63)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v63);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v60)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v61);
  goto LABEL_6;
}

void mlx::core::deserialize<std::string>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  __requested_capacity = 0;
  (*(*a1 + 32))(a1, &__requested_capacity, 8);
  v4 = __requested_capacity;
  std::string::reserve(a2, __requested_capacity);
  for (; v4; --v4)
  {
    __c = 0;
    (*(*a1 + 32))(a1, &__c, 1);
    std::string::push_back(a2, __c);
  }
}

void sub_25A28A4A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<mlx::core::FunctionTable::Function>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<mlx::core::FunctionTable::Function>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<mlx::core::FunctionTable::Function>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<mlx::core::FunctionTable::Function>>::destroy[abi:ne200100]<mlx::core::FunctionTable::Function,void,0>(a1, i))
  {
    i -= 12;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<mlx::core::FunctionTable::Function>>::destroy[abi:ne200100]<mlx::core::FunctionTable::Function,void,0>(uint64_t a1, void **a2)
{
  v3 = a2 + 9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a2 + 6;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a2 + 3;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t std::vector<mlx::core::FunctionTable::Function>::__emplace_back_slow_path<>(uint64_t a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v2 = v1 + 1;
  if (v1 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v4 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::FunctionTable::Function>>(a1, v4);
  }

  v5 = 96 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *&v14 = 96 * v1 + 96;
  v6 = *(a1 + 8);
  v7 = 96 * v1 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<mlx::core::FunctionTable::Function>,mlx::core::FunctionTable::Function*>(a1, *a1, v6, (v5 + *a1 - v6));
  v8 = *a1;
  *a1 = v7;
  v9 = *(a1 + 16);
  v11 = v14;
  *(a1 + 8) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<mlx::core::FunctionTable::Function>::~__split_buffer(&v12);
  return v11;
}

void sub_25A28A6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<mlx::core::FunctionTable::Function>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::FunctionTable::Function>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<mlx::core::FunctionTable::Function>,mlx::core::FunctionTable::Function*>(uint64_t a1, void **a2, void **a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      mlx::core::FunctionTable::Function::Function(a4, v7);
      v7 += 96;
      a4 = v12 + 12;
      v12 += 12;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<mlx::core::FunctionTable::Function>>::destroy[abi:ne200100]<mlx::core::FunctionTable::Function,void,0>(a1, v5);
      v5 += 12;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<mlx::core::FunctionTable::Function>,mlx::core::FunctionTable::Function*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

__n128 mlx::core::FunctionTable::Function::Function(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  *(a1 + 3) = *(a2 + 48);
  a1[8] = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  result = *(a2 + 72);
  *(a1 + 9) = result;
  a1[11] = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<mlx::core::FunctionTable::Function>,mlx::core::FunctionTable::Function*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<mlx::core::FunctionTable::Function>,mlx::core::FunctionTable::Function*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<mlx::core::FunctionTable::Function>,mlx::core::FunctionTable::Function*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 12;
      std::allocator_traits<std::allocator<mlx::core::FunctionTable::Function>>::destroy[abi:ne200100]<mlx::core::FunctionTable::Function,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<mlx::core::FunctionTable::Function>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<mlx::core::FunctionTable::Function>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<mlx::core::FunctionTable::Function>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    std::allocator_traits<std::allocator<mlx::core::FunctionTable::Function>>::destroy[abi:ne200100]<mlx::core::FunctionTable::Function,void,0>(v5, (v4 - 96));
  }
}

void mlx::core::io::FileWriter::~FileWriter(mlx::core::io::FileWriter *this)
{
  mlx::core::io::FileWriter::~FileWriter(this);

  JUMPOUT(0x25F851760);
}

{
  *this = &unk_286BE60E0;
  v2 = *(this + 2);
  if (v2)
  {
    close(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
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

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A28AD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
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

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<unsigned long long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A28B0F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

uint64_t mlx::core::PrimitiveFactory::PrimitiveFactory(mlx::core::PrimitiveFactory *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v1249[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v454, "Abs");
  v1134[0] = &unk_286BE6158;
  v1134[1] = mlx::core::serialize_primitive<mlx::core::Abs>;
  v1134[3] = v1134;
  v1133[0] = &unk_286BE6208;
  v1133[1] = mlx::core::deserialize_primitive<mlx::core::Abs>;
  v1133[3] = v1133;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1135, v1134);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1136, v1133);
  v1137 = 0uLL;
  v1138 = 0;
  v453 = 0;
  v452 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1139, v454, v1135);
  std::string::basic_string[abi:ne200100]<0>(v450, "Add");
  v1128[0] = &unk_286BE6158;
  v1128[1] = mlx::core::serialize_primitive<mlx::core::Add>;
  v1128[3] = v1128;
  v1127[0] = &unk_286BE62B8;
  v1127[1] = mlx::core::deserialize_primitive<mlx::core::Add>;
  v1127[3] = v1127;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1129, v1128);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1130, v1127);
  v1131 = 0uLL;
  v1132 = 0;
  v449 = 0;
  v448 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1140, v450, v1129);
  std::string::basic_string[abi:ne200100]<0>(v446, "AddMM");
  v1122[0] = &unk_286BE6158;
  v1122[1] = mlx::core::serialize_primitive<mlx::core::AddMM>;
  v1122[3] = v1122;
  v1121[0] = &unk_286BE6358;
  v1121[1] = mlx::core::deserialize_primitive<mlx::core::AddMM>;
  v1121[3] = v1121;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1123, v1122);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1124, v1121);
  v1125 = 0uLL;
  v1126 = 0;
  v445 = 0;
  v444 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1141, v446, v1123);
  std::string::basic_string[abi:ne200100]<0>(v442, "Arange");
  v1116[0] = &unk_286BE6158;
  v1116[1] = mlx::core::serialize_primitive<mlx::core::Arange>;
  v1116[3] = v1116;
  v1115[0] = &unk_286BE63F8;
  v1115[1] = mlx::core::deserialize_primitive<mlx::core::Arange>;
  v1115[3] = v1115;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1117, v1116);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1118, v1115);
  v1119 = 0uLL;
  v1120 = 0;
  v441 = 0;
  v440 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1142, v442, v1117);
  std::string::basic_string[abi:ne200100]<0>(v438, "ArcCos");
  v1110[0] = &unk_286BE6158;
  v1110[1] = mlx::core::serialize_primitive<mlx::core::ArcCos>;
  v1110[3] = v1110;
  v1109[0] = &unk_286BE6498;
  v1109[1] = mlx::core::deserialize_primitive<mlx::core::ArcCos>;
  v1109[3] = v1109;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1111, v1110);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1112, v1109);
  v1113 = 0uLL;
  v1114 = 0;
  v437 = 0;
  v436 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1143, v438, v1111);
  std::string::basic_string[abi:ne200100]<0>(v434, "ArcCosh");
  v1104[0] = &unk_286BE6158;
  v1104[1] = mlx::core::serialize_primitive<mlx::core::ArcCosh>;
  v1104[3] = v1104;
  v1103[0] = &unk_286BE6538;
  v1103[1] = mlx::core::deserialize_primitive<mlx::core::ArcCosh>;
  v1103[3] = v1103;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1105, v1104);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1106, v1103);
  v1107 = 0uLL;
  v1108 = 0;
  v433 = 0;
  v432 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1144, v434, v1105);
  std::string::basic_string[abi:ne200100]<0>(v430, "ArcSin");
  v1098[0] = &unk_286BE6158;
  v1098[1] = mlx::core::serialize_primitive<mlx::core::ArcSin>;
  v1098[3] = v1098;
  v1097[0] = &unk_286BE65D8;
  v1097[1] = mlx::core::deserialize_primitive<mlx::core::ArcSin>;
  v1097[3] = v1097;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1099, v1098);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1100, v1097);
  v1101 = 0uLL;
  v1102 = 0;
  v429 = 0;
  v428 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1145, v430, v1099);
  std::string::basic_string[abi:ne200100]<0>(v426, "ArcSinh");
  v1092[0] = &unk_286BE6158;
  v1092[1] = mlx::core::serialize_primitive<mlx::core::ArcSinh>;
  v1092[3] = v1092;
  v1091[0] = &unk_286BE6678;
  v1091[1] = mlx::core::deserialize_primitive<mlx::core::ArcSinh>;
  v1091[3] = v1091;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1093, v1092);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1094, v1091);
  v1095 = 0uLL;
  v1096 = 0;
  v425 = 0;
  v424 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1146, v426, v1093);
  std::string::basic_string[abi:ne200100]<0>(v422, "ArcTan");
  v1086[0] = &unk_286BE6158;
  v1086[1] = mlx::core::serialize_primitive<mlx::core::ArcTan>;
  v1086[3] = v1086;
  v1085[0] = &unk_286BE6718;
  v1085[1] = mlx::core::deserialize_primitive<mlx::core::ArcTan>;
  v1085[3] = v1085;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1087, v1086);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1088, v1085);
  v1089 = 0uLL;
  v1090 = 0;
  v421 = 0;
  v420 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1147, v422, v1087);
  std::string::basic_string[abi:ne200100]<0>(v418, "ArcTan2");
  v1080[0] = &unk_286BE6158;
  v1080[1] = mlx::core::serialize_primitive<mlx::core::ArcTan2>;
  v1080[3] = v1080;
  v1079[0] = &unk_286BE67B8;
  v1079[1] = mlx::core::deserialize_primitive<mlx::core::ArcTan2>;
  v1079[3] = v1079;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1081, v1080);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1082, v1079);
  v1083 = 0uLL;
  v1084 = 0;
  v417 = 0;
  v416 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1148, v418, v1081);
  std::string::basic_string[abi:ne200100]<0>(v414, "ArcTanh");
  v1074[0] = &unk_286BE6158;
  v1074[1] = mlx::core::serialize_primitive<mlx::core::ArcTanh>;
  v1074[3] = v1074;
  v1073[0] = &unk_286BE6858;
  v1073[1] = mlx::core::deserialize_primitive<mlx::core::ArcTanh>;
  v1073[3] = v1073;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1075, v1074);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1076, v1073);
  v1077 = 0uLL;
  v1078 = 0;
  v413 = 0;
  v412 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1149, v414, v1075);
  std::string::basic_string[abi:ne200100]<0>(v410, "ArgPartition");
  v1068[0] = &unk_286BE6158;
  v1068[1] = mlx::core::serialize_primitive<mlx::core::ArgPartition>;
  v1068[3] = v1068;
  v1067[0] = &unk_286BE68F8;
  v1067[1] = mlx::core::deserialize_primitive<mlx::core::ArgPartition>;
  v1067[3] = v1067;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1069, v1068);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1070, v1067);
  v1071 = 0uLL;
  v1072 = 0;
  v409 = 0;
  v408 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1150, v410, v1069);
  std::string::basic_string[abi:ne200100]<0>(v406, "ArgReduce");
  v1062[0] = &unk_286BE6158;
  v1062[1] = mlx::core::serialize_primitive<mlx::core::ArgReduce>;
  v1062[3] = v1062;
  v1061[0] = &unk_286BE6998;
  v1061[1] = mlx::core::deserialize_primitive<mlx::core::ArgReduce>;
  v1061[3] = v1061;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1063, v1062);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1064, v1061);
  v1065 = 0uLL;
  v1066 = 0;
  v405 = 0;
  v404 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1151, v406, v1063);
  std::string::basic_string[abi:ne200100]<0>(v402, "ArgSort");
  v1056[0] = &unk_286BE6158;
  v1056[1] = mlx::core::serialize_primitive<mlx::core::ArgSort>;
  v1056[3] = v1056;
  v1055[0] = &unk_286BE6A38;
  v1055[1] = mlx::core::deserialize_primitive<mlx::core::ArgSort>;
  v1055[3] = v1055;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1057, v1056);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1058, v1055);
  v1059 = 0uLL;
  v1060 = 0;
  v401 = 0;
  v400 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1152, v402, v1057);
  std::string::basic_string[abi:ne200100]<0>(v398, "AsType");
  v1050[0] = &unk_286BE6158;
  v1050[1] = mlx::core::serialize_primitive<mlx::core::AsType>;
  v1050[3] = v1050;
  v1049[0] = &unk_286BE6AD8;
  v1049[1] = mlx::core::deserialize_primitive<mlx::core::AsType>;
  v1049[3] = v1049;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1051, v1050);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1052, v1049);
  v1053 = 0uLL;
  v1054 = 0;
  v397 = 0;
  v396 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1153, v398, v1051);
  std::string::basic_string[abi:ne200100]<0>(v394, "AsStrided");
  v1044[0] = &unk_286BE6158;
  v1044[1] = mlx::core::serialize_primitive<mlx::core::AsStrided>;
  v1044[3] = v1044;
  v1043[0] = &unk_286BE6B78;
  v1043[1] = mlx::core::deserialize_primitive<mlx::core::AsStrided>;
  v1043[3] = v1043;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1045, v1044);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1046, v1043);
  v1047 = 0uLL;
  v1048 = 0;
  v393 = 0;
  v392 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1154, v394, v1045);
  std::string::basic_string[abi:ne200100]<0>(v390, "BitwiseBinary");
  v1038[0] = &unk_286BE6158;
  v1038[1] = mlx::core::serialize_primitive<mlx::core::BitwiseBinary>;
  v1038[3] = v1038;
  v1037[0] = &unk_286BE6C18;
  v1037[1] = mlx::core::deserialize_primitive<mlx::core::BitwiseBinary>;
  v1037[3] = v1037;
  std::string::basic_string[abi:ne200100]<0>(v1032, "BitwiseAnd");
  std::string::basic_string[abi:ne200100]<0>(v1033, "BitwiseOr");
  std::string::basic_string[abi:ne200100]<0>(v1034, "BitwiseXor");
  std::string::basic_string[abi:ne200100]<0>(v1035, "LeftShift");
  std::string::basic_string[abi:ne200100]<0>(v1036, "RightShift");
  v388 = 0uLL;
  v389 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v388, v1032, v1037, 5uLL);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1039, v1038);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1040, v1037);
  v1041 = v388;
  v1042 = v389;
  v389 = 0;
  v388 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1155, v390, v1039);
  std::string::basic_string[abi:ne200100]<0>(v386, "BlockMaskedMM");
  v1027[0] = &unk_286BE6158;
  v1027[1] = mlx::core::serialize_primitive<mlx::core::BlockMaskedMM>;
  v1027[3] = v1027;
  v1026[0] = &unk_286BE6CB8;
  v1026[1] = mlx::core::deserialize_primitive<mlx::core::BlockMaskedMM>;
  v1026[3] = v1026;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1028, v1027);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1029, v1026);
  v1030 = 0uLL;
  v1031 = 0;
  v385 = 0;
  v384 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1156, v386, v1028);
  std::string::basic_string[abi:ne200100]<0>(v382, "Broadcast");
  v1021[0] = &unk_286BE6158;
  v1021[1] = mlx::core::serialize_primitive<mlx::core::Broadcast>;
  v1021[3] = v1021;
  v1020[0] = &unk_286BE6D58;
  v1020[1] = mlx::core::deserialize_primitive<mlx::core::Broadcast>;
  v1020[3] = v1020;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1022, v1021);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1023, v1020);
  v1024 = 0uLL;
  v1025 = 0;
  v381 = 0;
  v380 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1157, v382, v1022);
  std::string::basic_string[abi:ne200100]<0>(v378, "BroadcastAxes");
  v1015[0] = &unk_286BE6158;
  v1015[1] = mlx::core::serialize_primitive<mlx::core::BroadcastAxes>;
  v1015[3] = v1015;
  v1014[0] = &unk_286BE6DF8;
  v1014[1] = mlx::core::deserialize_primitive<mlx::core::BroadcastAxes>;
  v1014[3] = v1014;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1016, v1015);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1017, v1014);
  v1018 = 0uLL;
  v1019 = 0;
  v377 = 0;
  v376 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1158, v378, v1016);
  std::string::basic_string[abi:ne200100]<0>(v374, "Ceil");
  v1009[0] = &unk_286BE6158;
  v1009[1] = mlx::core::serialize_primitive<mlx::core::Ceil>;
  v1009[3] = v1009;
  v1008[0] = &unk_286BE6E98;
  v1008[1] = mlx::core::deserialize_primitive<mlx::core::Ceil>;
  v1008[3] = v1008;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1010, v1009);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1011, v1008);
  v1012 = 0uLL;
  v1013 = 0;
  v373 = 0;
  v372 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1159, v374, v1010);
  std::string::basic_string[abi:ne200100]<0>(v370, "Concatenate");
  v1003[0] = &unk_286BE6158;
  v1003[1] = mlx::core::serialize_primitive<mlx::core::Concatenate>;
  v1003[3] = v1003;
  v1002[0] = &unk_286BE6F38;
  v1002[1] = mlx::core::deserialize_primitive<mlx::core::Concatenate>;
  v1002[3] = v1002;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v1004, v1003);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v1005, v1002);
  v1006 = 0uLL;
  v1007 = 0;
  v369 = 0;
  v368 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1160, v370, v1004);
  std::string::basic_string[abi:ne200100]<0>(v366, "Conjugate");
  v997[0] = &unk_286BE6158;
  v997[1] = mlx::core::serialize_primitive<mlx::core::Conjugate>;
  v997[3] = v997;
  v996[0] = &unk_286BE6FD8;
  v996[1] = mlx::core::deserialize_primitive<mlx::core::Conjugate>;
  v996[3] = v996;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v998, v997);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v999, v996);
  v1000 = 0uLL;
  v1001 = 0;
  v365 = 0;
  v364 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1161, v366, v998);
  std::string::basic_string[abi:ne200100]<0>(v362, "Convolution");
  v991[0] = &unk_286BE6158;
  v991[1] = mlx::core::serialize_primitive<mlx::core::Convolution>;
  v991[3] = v991;
  v990[0] = &unk_286BE7078;
  v990[1] = mlx::core::deserialize_primitive<mlx::core::Convolution>;
  v990[3] = v990;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v992, v991);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v993, v990);
  v994 = 0uLL;
  v995 = 0;
  v361 = 0;
  v360 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1162, v362, v992);
  std::string::basic_string[abi:ne200100]<0>(v358, "Copy");
  v985[0] = &unk_286BE6158;
  v985[1] = mlx::core::serialize_primitive<mlx::core::Copy>;
  v985[3] = v985;
  v984[0] = &unk_286BE7118;
  v984[1] = mlx::core::deserialize_primitive<mlx::core::Copy>;
  v984[3] = v984;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v986, v985);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v987, v984);
  v988 = 0uLL;
  v989 = 0;
  v357 = 0;
  v356 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1163, v358, v986);
  std::string::basic_string[abi:ne200100]<0>(v354, "Cos");
  v979[0] = &unk_286BE6158;
  v979[1] = mlx::core::serialize_primitive<mlx::core::Cos>;
  v979[3] = v979;
  v978[0] = &unk_286BE71B8;
  v978[1] = mlx::core::deserialize_primitive<mlx::core::Cos>;
  v978[3] = v978;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v980, v979);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v981, v978);
  v982 = 0uLL;
  v983 = 0;
  v353 = 0;
  v352 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1164, v354, v980);
  std::string::basic_string[abi:ne200100]<0>(v350, "Cosh");
  v973[0] = &unk_286BE6158;
  v973[1] = mlx::core::serialize_primitive<mlx::core::Cosh>;
  v973[3] = v973;
  v972[0] = &unk_286BE7258;
  v972[1] = mlx::core::deserialize_primitive<mlx::core::Cosh>;
  v972[3] = v972;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v974, v973);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v975, v972);
  v976 = 0uLL;
  v977 = 0;
  v349 = 0;
  v348 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1165, v350, v974);
  std::string::basic_string[abi:ne200100]<0>(v346, "Depends");
  v967[0] = &unk_286BE6158;
  v967[1] = mlx::core::serialize_primitive<mlx::core::Depends>;
  v967[3] = v967;
  v966[0] = &unk_286BE72F8;
  v966[1] = mlx::core::deserialize_primitive<mlx::core::Depends>;
  v966[3] = v966;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v968, v967);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v969, v966);
  v970 = 0uLL;
  v971 = 0;
  v345 = 0;
  v344 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1166, v346, v968);
  std::string::basic_string[abi:ne200100]<0>(v342, "Divide");
  v961[0] = &unk_286BE6158;
  v961[1] = mlx::core::serialize_primitive<mlx::core::Divide>;
  v961[3] = v961;
  v960[0] = &unk_286BE7398;
  v960[1] = mlx::core::deserialize_primitive<mlx::core::Divide>;
  v960[3] = v960;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v962, v961);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v963, v960);
  v964 = 0uLL;
  v965 = 0;
  v341 = 0;
  v340 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1167, v342, v962);
  std::string::basic_string[abi:ne200100]<0>(v338, "DivMod");
  v955[0] = &unk_286BE6158;
  v955[1] = mlx::core::serialize_primitive<mlx::core::DivMod>;
  v955[3] = v955;
  v954[0] = &unk_286BE7438;
  v954[1] = mlx::core::deserialize_primitive<mlx::core::DivMod>;
  v954[3] = v954;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v956, v955);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v957, v954);
  v958 = 0uLL;
  v959 = 0;
  v337 = 0;
  v336 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1168, v338, v956);
  std::string::basic_string[abi:ne200100]<0>(v334, "DynamicSlice");
  v949[0] = &unk_286BE6158;
  v949[1] = mlx::core::serialize_primitive<mlx::core::DynamicSlice>;
  v949[3] = v949;
  v948[0] = &unk_286BE74D8;
  v948[1] = mlx::core::deserialize_primitive<mlx::core::DynamicSlice>;
  v948[3] = v948;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v950, v949);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v951, v948);
  v952 = 0uLL;
  v953 = 0;
  v333 = 0;
  v332 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1169, v334, v950);
  std::string::basic_string[abi:ne200100]<0>(v330, "DynamicSliceUpdate");
  v943[0] = &unk_286BE6158;
  v943[1] = mlx::core::serialize_primitive<mlx::core::DynamicSliceUpdate>;
  v943[3] = v943;
  v942[0] = &unk_286BE7578;
  v942[1] = mlx::core::deserialize_primitive<mlx::core::DynamicSliceUpdate>;
  v942[3] = v942;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v944, v943);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v945, v942);
  v946 = 0uLL;
  v947 = 0;
  v329 = 0;
  v328 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1170, v330, v944);
  std::string::basic_string[abi:ne200100]<0>(v326, "Equal");
  v937[0] = &unk_286BE6158;
  v937[1] = mlx::core::serialize_primitive<mlx::core::Equal>;
  v937[3] = v937;
  v936[0] = &unk_286BE7618;
  v936[1] = mlx::core::deserialize_primitive<mlx::core::Equal>;
  v936[3] = v936;
  std::string::basic_string[abi:ne200100]<0>(v934, "NaNEqual");
  v324 = 0uLL;
  v325 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v324, v934, v936, 1uLL);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v938, v937);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v939, v936);
  v940 = v324;
  v941 = v325;
  v325 = 0;
  v324 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1171, v326, v938);
  std::string::basic_string[abi:ne200100]<0>(v322, "Erf");
  v929[0] = &unk_286BE6158;
  v929[1] = mlx::core::serialize_primitive<mlx::core::Erf>;
  v929[3] = v929;
  v928[0] = &unk_286BE76B8;
  v928[1] = mlx::core::deserialize_primitive<mlx::core::Erf>;
  v928[3] = v928;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v930, v929);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v931, v928);
  v932 = 0uLL;
  v933 = 0;
  v321 = 0;
  v320 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1172, v322, v930);
  std::string::basic_string[abi:ne200100]<0>(v318, "ErfInv");
  v923[0] = &unk_286BE6158;
  v923[1] = mlx::core::serialize_primitive<mlx::core::ErfInv>;
  v923[3] = v923;
  v922[0] = &unk_286BE7758;
  v922[1] = mlx::core::deserialize_primitive<mlx::core::ErfInv>;
  v922[3] = v922;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v924, v923);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v925, v922);
  v926 = 0uLL;
  v927 = 0;
  v317 = 0;
  v316 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1173, v318, v924);
  std::string::basic_string[abi:ne200100]<0>(v314, "Exp");
  v917[0] = &unk_286BE6158;
  v917[1] = mlx::core::serialize_primitive<mlx::core::Exp>;
  v917[3] = v917;
  v916[0] = &unk_286BE77F8;
  v916[1] = mlx::core::deserialize_primitive<mlx::core::Exp>;
  v916[3] = v916;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v918, v917);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v919, v916);
  v920 = 0uLL;
  v921 = 0;
  v313 = 0;
  v312 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1174, v314, v918);
  std::string::basic_string[abi:ne200100]<0>(v310, "Expm1");
  v911[0] = &unk_286BE6158;
  v911[1] = mlx::core::serialize_primitive<mlx::core::Expm1>;
  v911[3] = v911;
  v910[0] = &unk_286BE7898;
  v910[1] = mlx::core::deserialize_primitive<mlx::core::Expm1>;
  v910[3] = v910;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v912, v911);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v913, v910);
  v914 = 0uLL;
  v915 = 0;
  v309 = 0;
  v308 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1175, v310, v912);
  std::string::basic_string[abi:ne200100]<0>(v306, "ExpandDims");
  v905[0] = &unk_286BE6158;
  v905[1] = mlx::core::serialize_primitive<mlx::core::ExpandDims>;
  v905[3] = v905;
  v904[0] = &unk_286BE7938;
  v904[1] = mlx::core::deserialize_primitive<mlx::core::ExpandDims>;
  v904[3] = v904;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v906, v905);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v907, v904);
  v908 = 0uLL;
  v909 = 0;
  v305 = 0;
  v304 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1176, v306, v906);
  std::string::basic_string[abi:ne200100]<0>(v302, "FFT");
  v899[0] = &unk_286BE6158;
  v899[1] = mlx::core::serialize_primitive<mlx::core::FFT>;
  v899[3] = v899;
  v898[0] = &unk_286BE7A28;
  v898[1] = mlx::core::deserialize_primitive<mlx::core::FFT>;
  v898[3] = v898;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v900, v899);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v901, v898);
  v902 = 0uLL;
  v903 = 0;
  v301 = 0;
  v300 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1177, v302, v900);
  std::string::basic_string[abi:ne200100]<0>(v298, "Flatten");
  v893[0] = &unk_286BE6158;
  v893[1] = mlx::core::serialize_primitive<mlx::core::Flatten>;
  v893[3] = v893;
  v892[0] = &unk_286BE7AC8;
  v892[1] = mlx::core::deserialize_primitive<mlx::core::Flatten>;
  v892[3] = v892;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v894, v893);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v895, v892);
  v896 = 0uLL;
  v897 = 0;
  v297 = 0;
  v296 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1178, v298, v894);
  std::string::basic_string[abi:ne200100]<0>(v294, "Floor");
  v887[0] = &unk_286BE6158;
  v887[1] = mlx::core::serialize_primitive<mlx::core::Floor>;
  v887[3] = v887;
  v886[0] = &unk_286BE7B68;
  v886[1] = mlx::core::deserialize_primitive<mlx::core::Floor>;
  v886[3] = v886;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v888, v887);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v889, v886);
  v890 = 0uLL;
  v891 = 0;
  v293 = 0;
  v292 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1179, v294, v888);
  std::string::basic_string[abi:ne200100]<0>(v290, "Full");
  v881[0] = &unk_286BE6158;
  v881[1] = mlx::core::serialize_primitive<mlx::core::Full>;
  v881[3] = v881;
  v880[0] = &unk_286BE7C08;
  v880[1] = mlx::core::deserialize_primitive<mlx::core::Full>;
  v880[3] = v880;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v882, v881);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v883, v880);
  v884 = 0uLL;
  v885 = 0;
  v289 = 0;
  v288 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1180, v290, v882);
  std::string::basic_string[abi:ne200100]<0>(v286, "Gather");
  v875[0] = &unk_286BE6158;
  v875[1] = mlx::core::serialize_primitive<mlx::core::Gather>;
  v875[3] = v875;
  v874[0] = &unk_286BE7CA8;
  v874[1] = mlx::core::deserialize_primitive<mlx::core::Gather>;
  v874[3] = v874;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v876, v875);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v877, v874);
  v878 = 0uLL;
  v879 = 0;
  v285 = 0;
  v284 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1181, v286, v876);
  std::string::basic_string[abi:ne200100]<0>(v282, "GatherMM");
  v869[0] = &unk_286BE6158;
  v869[1] = mlx::core::serialize_primitive<mlx::core::GatherMM>;
  v869[3] = v869;
  v868[0] = &unk_286BE7D48;
  v868[1] = mlx::core::deserialize_primitive<mlx::core::GatherMM>;
  v868[3] = v868;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v870, v869);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v871, v868);
  v872 = 0uLL;
  v873 = 0;
  v281 = 0;
  v280 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1182, v282, v870);
  std::string::basic_string[abi:ne200100]<0>(v278, "Greater");
  v863[0] = &unk_286BE6158;
  v863[1] = mlx::core::serialize_primitive<mlx::core::Greater>;
  v863[3] = v863;
  v862[0] = &unk_286BE7DE8;
  v862[1] = mlx::core::deserialize_primitive<mlx::core::Greater>;
  v862[3] = v862;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v864, v863);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v865, v862);
  v866 = 0uLL;
  v867 = 0;
  v277 = 0;
  v276 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1183, v278, v864);
  std::string::basic_string[abi:ne200100]<0>(v274, "GreaterEqual");
  v857[0] = &unk_286BE6158;
  v857[1] = mlx::core::serialize_primitive<mlx::core::GreaterEqual>;
  v857[3] = v857;
  v856[0] = &unk_286BE7E88;
  v856[1] = mlx::core::deserialize_primitive<mlx::core::GreaterEqual>;
  v856[3] = v856;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v858, v857);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v859, v856);
  v860 = 0uLL;
  v861 = 0;
  v273 = 0;
  v272 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1184, v274, v858);
  std::string::basic_string[abi:ne200100]<0>(v270, "Hadamard");
  v851[0] = &unk_286BE6158;
  v851[1] = mlx::core::serialize_primitive<mlx::core::Hadamard>;
  v851[3] = v851;
  v850[0] = &unk_286BE7F28;
  v850[1] = mlx::core::deserialize_primitive<mlx::core::Hadamard>;
  v850[3] = v850;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v852, v851);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v853, v850);
  v854 = 0uLL;
  v855 = 0;
  v269 = 0;
  v268 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1185, v270, v852);
  std::string::basic_string[abi:ne200100]<0>(v266, "Imag");
  v845[0] = &unk_286BE6158;
  v845[1] = mlx::core::serialize_primitive<mlx::core::Imag>;
  v845[3] = v845;
  v844[0] = &unk_286BE7FC8;
  v844[1] = mlx::core::deserialize_primitive<mlx::core::Imag>;
  v844[3] = v844;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v846, v845);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v847, v844);
  v848 = 0uLL;
  v849 = 0;
  v265 = 0;
  v264 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1186, v266, v846);
  std::string::basic_string[abi:ne200100]<0>(v262, "Less");
  v839[0] = &unk_286BE6158;
  v839[1] = mlx::core::serialize_primitive<mlx::core::Less>;
  v839[3] = v839;
  v838[0] = &unk_286BE8068;
  v838[1] = mlx::core::deserialize_primitive<mlx::core::Less>;
  v838[3] = v838;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v840, v839);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v841, v838);
  v842 = 0uLL;
  v843 = 0;
  v261 = 0;
  v260 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1187, v262, v840);
  std::string::basic_string[abi:ne200100]<0>(v258, "LessEqual");
  v833[0] = &unk_286BE6158;
  v833[1] = mlx::core::serialize_primitive<mlx::core::LessEqual>;
  v833[3] = v833;
  v832[0] = &unk_286BE8108;
  v832[1] = mlx::core::deserialize_primitive<mlx::core::LessEqual>;
  v832[3] = v832;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v834, v833);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v835, v832);
  v836 = 0uLL;
  v837 = 0;
  v257 = 0;
  v256 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1188, v258, v834);
  std::string::basic_string[abi:ne200100]<0>(v254, "Log");
  v827[0] = &unk_286BE6158;
  v827[1] = mlx::core::serialize_primitive<mlx::core::Log>;
  v827[3] = v827;
  v826[0] = &unk_286BE81A8;
  v826[1] = mlx::core::deserialize_primitive<mlx::core::Log>;
  v826[3] = v826;
  std::string::basic_string[abi:ne200100]<0>(v824, "Log2");
  std::string::basic_string[abi:ne200100]<0>(v825, "Log10");
  v252 = 0uLL;
  v253 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v252, v824, v826, 2uLL);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v828, v827);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v829, v826);
  v830 = v252;
  v831 = v253;
  v253 = 0;
  v252 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1189, v254, v828);
  std::string::basic_string[abi:ne200100]<0>(v250, "Log1p");
  v819[0] = &unk_286BE6158;
  v819[1] = mlx::core::serialize_primitive<mlx::core::Log1p>;
  v819[3] = v819;
  v818[0] = &unk_286BE8248;
  v818[1] = mlx::core::deserialize_primitive<mlx::core::Log1p>;
  v818[3] = v818;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v820, v819);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v821, v818);
  v822 = 0uLL;
  v823 = 0;
  v249 = 0;
  v248 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1190, v250, v820);
  std::string::basic_string[abi:ne200100]<0>(v246, "LogicalNot");
  v813[0] = &unk_286BE6158;
  v813[1] = mlx::core::serialize_primitive<mlx::core::LogicalNot>;
  v813[3] = v813;
  v812[0] = &unk_286BE82E8;
  v812[1] = mlx::core::deserialize_primitive<mlx::core::LogicalNot>;
  v812[3] = v812;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v814, v813);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v815, v812);
  v816 = 0uLL;
  v817 = 0;
  v245 = 0;
  v244 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1191, v246, v814);
  std::string::basic_string[abi:ne200100]<0>(v242, "LogicalAnd");
  v807[0] = &unk_286BE6158;
  v807[1] = mlx::core::serialize_primitive<mlx::core::LogicalAnd>;
  v807[3] = v807;
  v806[0] = &unk_286BE8388;
  v806[1] = mlx::core::deserialize_primitive<mlx::core::LogicalAnd>;
  v806[3] = v806;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v808, v807);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v809, v806);
  v810 = 0uLL;
  v811 = 0;
  v241 = 0;
  v240 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1192, v242, v808);
  std::string::basic_string[abi:ne200100]<0>(v238, "LogicalOr");
  v801[0] = &unk_286BE6158;
  v801[1] = mlx::core::serialize_primitive<mlx::core::LogicalOr>;
  v801[3] = v801;
  v800[0] = &unk_286BE8428;
  v800[1] = mlx::core::deserialize_primitive<mlx::core::LogicalOr>;
  v800[3] = v800;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v802, v801);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v803, v800);
  v804 = 0uLL;
  v805 = 0;
  v237 = 0;
  v236 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1193, v238, v802);
  std::string::basic_string[abi:ne200100]<0>(v234, "LogAddExp");
  v795[0] = &unk_286BE6158;
  v795[1] = mlx::core::serialize_primitive<mlx::core::LogAddExp>;
  v795[3] = v795;
  v794[0] = &unk_286BE84C8;
  v794[1] = mlx::core::deserialize_primitive<mlx::core::LogAddExp>;
  v794[3] = v794;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v796, v795);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v797, v794);
  v798 = 0uLL;
  v799 = 0;
  v233 = 0;
  v232 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1194, v234, v796);
  std::string::basic_string[abi:ne200100]<0>(v230, "LogSumExp");
  v789[0] = &unk_286BE6158;
  v789[1] = mlx::core::serialize_primitive<mlx::core::LogSumExp>;
  v789[3] = v789;
  v788[0] = &unk_286BE8568;
  v788[1] = mlx::core::deserialize_primitive<mlx::core::LogSumExp>;
  v788[3] = v788;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v790, v789);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v791, v788);
  v792 = 0uLL;
  v793 = 0;
  v229 = 0;
  v228 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1195, v230, v790);
  std::string::basic_string[abi:ne200100]<0>(v226, "Matmul");
  v783[0] = &unk_286BE6158;
  v783[1] = mlx::core::serialize_primitive<mlx::core::Matmul>;
  v783[3] = v783;
  v782[0] = &unk_286BE8608;
  v782[1] = mlx::core::deserialize_primitive<mlx::core::Matmul>;
  v782[3] = v782;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v784, v783);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v785, v782);
  v786 = 0uLL;
  v787 = 0;
  v225 = 0;
  v224 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1196, v226, v784);
  std::string::basic_string[abi:ne200100]<0>(v222, "Maximum");
  v777[0] = &unk_286BE6158;
  v777[1] = mlx::core::serialize_primitive<mlx::core::Maximum>;
  v777[3] = v777;
  v776[0] = &unk_286BE86A8;
  v776[1] = mlx::core::deserialize_primitive<mlx::core::Maximum>;
  v776[3] = v776;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v778, v777);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v779, v776);
  v780 = 0uLL;
  v781 = 0;
  v221 = 0;
  v220 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1197, v222, v778);
  std::string::basic_string[abi:ne200100]<0>(v218, "Minimum");
  v771[0] = &unk_286BE6158;
  v771[1] = mlx::core::serialize_primitive<mlx::core::Minimum>;
  v771[3] = v771;
  v770[0] = &unk_286BE8748;
  v770[1] = mlx::core::deserialize_primitive<mlx::core::Minimum>;
  v770[3] = v770;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v772, v771);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v773, v770);
  v774 = 0uLL;
  v775 = 0;
  v217 = 0;
  v216 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1198, v218, v772);
  std::string::basic_string[abi:ne200100]<0>(v214, "Multiply");
  v765[0] = &unk_286BE6158;
  v765[1] = mlx::core::serialize_primitive<mlx::core::Multiply>;
  v765[3] = v765;
  v764[0] = &unk_286BE87E8;
  v764[1] = mlx::core::deserialize_primitive<mlx::core::Multiply>;
  v764[3] = v764;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v766, v765);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v767, v764);
  v768 = 0uLL;
  v769 = 0;
  v213 = 0;
  v212 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1199, v214, v766);
  std::string::basic_string[abi:ne200100]<0>(v210, "Negative");
  v759[0] = &unk_286BE6158;
  v759[1] = mlx::core::serialize_primitive<mlx::core::Negative>;
  v759[3] = v759;
  v758[0] = &unk_286BE8888;
  v758[1] = mlx::core::deserialize_primitive<mlx::core::Negative>;
  v758[3] = v758;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v760, v759);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v761, v758);
  v762 = 0uLL;
  v763 = 0;
  v209 = 0;
  v208 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1200, v210, v760);
  std::string::basic_string[abi:ne200100]<0>(v206, "NotEqual");
  v753[0] = &unk_286BE6158;
  v753[1] = mlx::core::serialize_primitive<mlx::core::NotEqual>;
  v753[3] = v753;
  v752[0] = &unk_286BE8928;
  v752[1] = mlx::core::deserialize_primitive<mlx::core::NotEqual>;
  v752[3] = v752;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v754, v753);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v755, v752);
  v756 = 0uLL;
  v757 = 0;
  v205 = 0;
  v204 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1201, v206, v754);
  std::string::basic_string[abi:ne200100]<0>(v202, "Reshape");
  v747[0] = &unk_286BE6158;
  v747[1] = mlx::core::serialize_primitive<mlx::core::Reshape>;
  v747[3] = v747;
  v746[0] = &unk_286BE89C8;
  v746[1] = mlx::core::deserialize_primitive<mlx::core::Reshape>;
  v746[3] = v746;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v748, v747);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v749, v746);
  v750 = 0uLL;
  v751 = 0;
  v201 = 0;
  v200 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1202, v202, v748);
  std::string::basic_string[abi:ne200100]<0>(v198, "NumberOfElements");
  v741[0] = &unk_286BE6158;
  v741[1] = mlx::core::serialize_primitive<mlx::core::NumberOfElements>;
  v741[3] = v741;
  v740[0] = &unk_286BE8A68;
  v740[1] = mlx::core::deserialize_primitive<mlx::core::NumberOfElements>;
  v740[3] = v740;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v742, v741);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v743, v740);
  v744 = 0uLL;
  v745 = 0;
  v197 = 0;
  v196 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1203, v198, v742);
  std::string::basic_string[abi:ne200100]<0>(v194, "Pad");
  v735[0] = &unk_286BE6158;
  v735[1] = mlx::core::serialize_primitive<mlx::core::Pad>;
  v735[3] = v735;
  v734[0] = &unk_286BE8B08;
  v734[1] = mlx::core::deserialize_primitive<mlx::core::Pad>;
  v734[3] = v734;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v736, v735);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v737, v734);
  v738 = 0uLL;
  v739 = 0;
  v193 = 0;
  v192 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1204, v194, v736);
  std::string::basic_string[abi:ne200100]<0>(v190, "Partition");
  v729[0] = &unk_286BE6158;
  v729[1] = mlx::core::serialize_primitive<mlx::core::Partition>;
  v729[3] = v729;
  v728[0] = &unk_286BE8BA8;
  v728[1] = mlx::core::deserialize_primitive<mlx::core::Partition>;
  v728[3] = v728;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v730, v729);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v731, v728);
  v732 = 0uLL;
  v733 = 0;
  v189 = 0;
  v188 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1205, v190, v730);
  std::string::basic_string[abi:ne200100]<0>(v186, "Power");
  v723[0] = &unk_286BE6158;
  v723[1] = mlx::core::serialize_primitive<mlx::core::Power>;
  v723[3] = v723;
  v722[0] = &unk_286BE8C48;
  v722[1] = mlx::core::deserialize_primitive<mlx::core::Power>;
  v722[3] = v722;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v724, v723);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v725, v722);
  v726 = 0uLL;
  v727 = 0;
  v185 = 0;
  v184 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1206, v186, v724);
  std::string::basic_string[abi:ne200100]<0>(v182, "QuantizedMatmul");
  v717[0] = &unk_286BE6158;
  v717[1] = mlx::core::serialize_primitive<mlx::core::QuantizedMatmul>;
  v717[3] = v717;
  v716[0] = &unk_286BE8CE8;
  v716[1] = mlx::core::deserialize_primitive<mlx::core::QuantizedMatmul>;
  v716[3] = v716;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v718, v717);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v719, v716);
  v720 = 0uLL;
  v721 = 0;
  v181 = 0;
  v180 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1207, v182, v718);
  std::string::basic_string[abi:ne200100]<0>(v178, "GatherQMM");
  v711[0] = &unk_286BE6158;
  v711[1] = mlx::core::serialize_primitive<mlx::core::GatherQMM>;
  v711[3] = v711;
  v710[0] = &unk_286BE8D88;
  v710[1] = mlx::core::deserialize_primitive<mlx::core::GatherQMM>;
  v710[3] = v710;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v712, v711);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v713, v710);
  v714 = 0uLL;
  v715 = 0;
  v177 = 0;
  v176 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1208, v178, v712);
  std::string::basic_string[abi:ne200100]<0>(v174, "RandomBits");
  v705[0] = &unk_286BE6158;
  v705[1] = mlx::core::serialize_primitive<mlx::core::RandomBits>;
  v705[3] = v705;
  v704[0] = &unk_286BE8E78;
  v704[1] = mlx::core::deserialize_primitive<mlx::core::RandomBits>;
  v704[3] = v704;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v706, v705);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v707, v704);
  v708 = 0uLL;
  v709 = 0;
  v173 = 0;
  v172 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1209, v174, v706);
  std::string::basic_string[abi:ne200100]<0>(v170, "Real");
  v699[0] = &unk_286BE6158;
  v699[1] = mlx::core::serialize_primitive<mlx::core::Real>;
  v699[3] = v699;
  v698[0] = &unk_286BE8F18;
  v698[1] = mlx::core::deserialize_primitive<mlx::core::Real>;
  v698[3] = v698;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v700, v699);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v701, v698);
  v702 = 0uLL;
  v703 = 0;
  v169 = 0;
  v168 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1210, v170, v700);
  std::string::basic_string[abi:ne200100]<0>(v166, "Remainder");
  v693[0] = &unk_286BE6158;
  v693[1] = mlx::core::serialize_primitive<mlx::core::Remainder>;
  v693[3] = v693;
  v692[0] = &unk_286BE8FB8;
  v692[1] = mlx::core::deserialize_primitive<mlx::core::Remainder>;
  v692[3] = v692;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v694, v693);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v695, v692);
  v696 = 0uLL;
  v697 = 0;
  v165 = 0;
  v164 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1211, v166, v694);
  std::string::basic_string[abi:ne200100]<0>(v162, "Reshape");
  v687[0] = &unk_286BE6158;
  v687[1] = mlx::core::serialize_primitive<mlx::core::Reshape>;
  v687[3] = v687;
  v686[0] = &unk_286BE89C8;
  v686[1] = mlx::core::deserialize_primitive<mlx::core::Reshape>;
  v686[3] = v686;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v688, v687);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v689, v686);
  v690 = 0uLL;
  v691 = 0;
  v161 = 0;
  v160 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1212, v162, v688);
  std::string::basic_string[abi:ne200100]<0>(v158, "Reduce");
  v681[0] = &unk_286BE6158;
  v681[1] = mlx::core::serialize_primitive<mlx::core::Reduce>;
  v681[3] = v681;
  v680[0] = &unk_286BE9058;
  v680[1] = mlx::core::deserialize_primitive<mlx::core::Reduce>;
  v680[3] = v680;
  std::string::basic_string[abi:ne200100]<0>(v674, "And");
  std::string::basic_string[abi:ne200100]<0>(v675, "Or");
  std::string::basic_string[abi:ne200100]<0>(v676, "Sum");
  std::string::basic_string[abi:ne200100]<0>(v677, "Prod");
  std::string::basic_string[abi:ne200100]<0>(v678, "Min");
  std::string::basic_string[abi:ne200100]<0>(v679, "Max");
  v156 = 0uLL;
  v157 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v156, v674, v680, 6uLL);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v682, v681);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v683, v680);
  v684 = v156;
  v685 = v157;
  v157 = 0;
  v156 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1213, v158, v682);
  std::string::basic_string[abi:ne200100]<0>(v154, "Round");
  v669[0] = &unk_286BE6158;
  v669[1] = mlx::core::serialize_primitive<mlx::core::Round>;
  v669[3] = v669;
  v668[0] = &unk_286BE90F8;
  v668[1] = mlx::core::deserialize_primitive<mlx::core::Round>;
  v668[3] = v668;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v670, v669);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v671, v668);
  v672 = 0uLL;
  v673 = 0;
  v153 = 0;
  v152 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1214, v154, v670);
  std::string::basic_string[abi:ne200100]<0>(v150, "Scan");
  v663[0] = &unk_286BE6158;
  v663[1] = mlx::core::serialize_primitive<mlx::core::Scan>;
  v663[3] = v663;
  v662[0] = &unk_286BE9198;
  v662[1] = mlx::core::deserialize_primitive<mlx::core::Scan>;
  v662[3] = v662;
  std::string::basic_string[abi:ne200100]<0>(v657, "CumSum");
  std::string::basic_string[abi:ne200100]<0>(v658, "CumProd");
  std::string::basic_string[abi:ne200100]<0>(v659, "CumMin");
  std::string::basic_string[abi:ne200100]<0>(v660, "CumMax");
  std::string::basic_string[abi:ne200100]<0>(v661, "CumLogaddexp");
  v148 = 0uLL;
  v149 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v148, v657, v662, 5uLL);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v664, v663);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v665, v662);
  v666 = v148;
  v667 = v149;
  v149 = 0;
  v148 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1215, v150, v664);
  std::string::basic_string[abi:ne200100]<0>(v146, "Scatter");
  v652[0] = &unk_286BE6158;
  v652[1] = mlx::core::serialize_primitive<mlx::core::Scatter>;
  v652[3] = v652;
  v651[0] = &unk_286BE9238;
  v651[1] = mlx::core::deserialize_primitive<mlx::core::Scatter>;
  v651[3] = v651;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v653, v652);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v654, v651);
  v655 = 0uLL;
  v656 = 0;
  v145 = 0;
  v144 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1216, v146, v653);
  std::string::basic_string[abi:ne200100]<0>(v142, "Select");
  v646[0] = &unk_286BE6158;
  v646[1] = mlx::core::serialize_primitive<mlx::core::Select>;
  v646[3] = v646;
  v645[0] = &unk_286BE92D8;
  v645[1] = mlx::core::deserialize_primitive<mlx::core::Select>;
  v645[3] = v645;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v647, v646);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v648, v645);
  v649 = 0uLL;
  v650 = 0;
  v141 = 0;
  v140 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1217, v142, v647);
  std::string::basic_string[abi:ne200100]<0>(v138, "Sigmoid");
  v640[0] = &unk_286BE6158;
  v640[1] = mlx::core::serialize_primitive<mlx::core::Sigmoid>;
  v640[3] = v640;
  v639[0] = &unk_286BE9378;
  v639[1] = mlx::core::deserialize_primitive<mlx::core::Sigmoid>;
  v639[3] = v639;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v641, v640);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v642, v639);
  v643 = 0uLL;
  v644 = 0;
  v137 = 0;
  v136 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1218, v138, v641);
  std::string::basic_string[abi:ne200100]<0>(v134, "Sign");
  v634[0] = &unk_286BE6158;
  v634[1] = mlx::core::serialize_primitive<mlx::core::Sign>;
  v634[3] = v634;
  v633[0] = &unk_286BE9418;
  v633[1] = mlx::core::deserialize_primitive<mlx::core::Sign>;
  v633[3] = v633;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v635, v634);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v636, v633);
  v637 = 0uLL;
  v638 = 0;
  v133 = 0;
  v132 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1219, v134, v635);
  std::string::basic_string[abi:ne200100]<0>(v130, "Sin");
  v628[0] = &unk_286BE6158;
  v628[1] = mlx::core::serialize_primitive<mlx::core::Sin>;
  v628[3] = v628;
  v627[0] = &unk_286BE94B8;
  v627[1] = mlx::core::deserialize_primitive<mlx::core::Sin>;
  v627[3] = v627;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v629, v628);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v630, v627);
  v631 = 0uLL;
  v632 = 0;
  v129 = 0;
  v128 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1220, v130, v629);
  std::string::basic_string[abi:ne200100]<0>(v126, "Sinh");
  v622[0] = &unk_286BE6158;
  v622[1] = mlx::core::serialize_primitive<mlx::core::Sinh>;
  v622[3] = v622;
  v621[0] = &unk_286BE9558;
  v621[1] = mlx::core::deserialize_primitive<mlx::core::Sinh>;
  v621[3] = v621;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v623, v622);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v624, v621);
  v625 = 0uLL;
  v626 = 0;
  v125 = 0;
  v124 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1221, v126, v623);
  std::string::basic_string[abi:ne200100]<0>(v122, "Slice");
  v616[0] = &unk_286BE6158;
  v616[1] = mlx::core::serialize_primitive<mlx::core::Slice>;
  v616[3] = v616;
  v615[0] = &unk_286BE95F8;
  v615[1] = mlx::core::deserialize_primitive<mlx::core::Slice>;
  v615[3] = v615;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v617, v616);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v618, v615);
  v619 = 0uLL;
  v620 = 0;
  v121 = 0;
  v120 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1222, v122, v617);
  std::string::basic_string[abi:ne200100]<0>(v118, "SliceUpdate");
  v610[0] = &unk_286BE6158;
  v610[1] = mlx::core::serialize_primitive<mlx::core::SliceUpdate>;
  v610[3] = v610;
  v609[0] = &unk_286BE9698;
  v609[1] = mlx::core::deserialize_primitive<mlx::core::SliceUpdate>;
  v609[3] = v609;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v611, v610);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v612, v609);
  v613 = 0uLL;
  v614 = 0;
  v117 = 0;
  v116 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1223, v118, v611);
  std::string::basic_string[abi:ne200100]<0>(v114, "Softmax");
  v604[0] = &unk_286BE6158;
  v604[1] = mlx::core::serialize_primitive<mlx::core::Softmax>;
  v604[3] = v604;
  v603[0] = &unk_286BE9738;
  v603[1] = mlx::core::deserialize_primitive<mlx::core::Softmax>;
  v603[3] = v603;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v605, v604);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v606, v603);
  v607 = 0uLL;
  v608 = 0;
  v113 = 0;
  v112 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1224, v114, v605);
  std::string::basic_string[abi:ne200100]<0>(v110, "Sort");
  v598[0] = &unk_286BE6158;
  v598[1] = mlx::core::serialize_primitive<mlx::core::Sort>;
  v598[3] = v598;
  v597[0] = &unk_286BE97D8;
  v597[1] = mlx::core::deserialize_primitive<mlx::core::Sort>;
  v597[3] = v597;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v599, v598);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v600, v597);
  v601 = 0uLL;
  v602 = 0;
  v109 = 0;
  v108 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1225, v110, v599);
  std::string::basic_string[abi:ne200100]<0>(v106, "Split");
  v592[0] = &unk_286BE6158;
  v592[1] = mlx::core::serialize_primitive<mlx::core::Split>;
  v592[3] = v592;
  v591[0] = &unk_286BE9878;
  v591[1] = mlx::core::deserialize_primitive<mlx::core::Split>;
  v591[3] = v591;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v593, v592);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v594, v591);
  v595 = 0uLL;
  v596 = 0;
  v105 = 0;
  v104 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1226, v106, v593);
  std::string::basic_string[abi:ne200100]<0>(v102, "Square");
  v586[0] = &unk_286BE6158;
  v586[1] = mlx::core::serialize_primitive<mlx::core::Square>;
  v586[3] = v586;
  v585[0] = &unk_286BE9918;
  v585[1] = mlx::core::deserialize_primitive<mlx::core::Square>;
  v585[3] = v585;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v587, v586);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v588, v585);
  v589 = 0uLL;
  v590 = 0;
  v101 = 0;
  v100 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1227, v102, v587);
  std::string::basic_string[abi:ne200100]<0>(v98, "Squeeze");
  v580[0] = &unk_286BE6158;
  v580[1] = mlx::core::serialize_primitive<mlx::core::Squeeze>;
  v580[3] = v580;
  v579[0] = &unk_286BE99B8;
  v579[1] = mlx::core::deserialize_primitive<mlx::core::Squeeze>;
  v579[3] = v579;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v581, v580);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v582, v579);
  v583 = 0uLL;
  v584 = 0;
  v97 = 0;
  v96 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1228, v98, v581);
  std::string::basic_string[abi:ne200100]<0>(v94, "Sqrt");
  v574[0] = &unk_286BE6158;
  v574[1] = mlx::core::serialize_primitive<mlx::core::Sqrt>;
  v574[3] = v574;
  v573[0] = &unk_286BE9A58;
  v573[1] = mlx::core::deserialize_primitive<mlx::core::Sqrt>;
  v573[3] = v573;
  std::string::basic_string[abi:ne200100]<0>(v571, "Rsqrt");
  std::string::basic_string[abi:ne200100]<0>(v572, "Sqrt");
  v92 = 0uLL;
  v93 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v92, v571, v573, 2uLL);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v575, v574);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v576, v573);
  v577 = v92;
  v578 = v93;
  v93 = 0;
  v92 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1229, v94, v575);
  std::string::basic_string[abi:ne200100]<0>(v90, "StopGradient");
  v566[0] = &unk_286BE6158;
  v566[1] = mlx::core::serialize_primitive<mlx::core::StopGradient>;
  v566[3] = v566;
  v565[0] = &unk_286BE9AF8;
  v565[1] = mlx::core::deserialize_primitive<mlx::core::StopGradient>;
  v565[3] = v565;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v567, v566);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v568, v565);
  v569 = 0uLL;
  v570 = 0;
  v89 = 0;
  v88 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1230, v90, v567);
  std::string::basic_string[abi:ne200100]<0>(v86, "Subtract");
  v560[0] = &unk_286BE6158;
  v560[1] = mlx::core::serialize_primitive<mlx::core::Subtract>;
  v560[3] = v560;
  v559[0] = &unk_286BE9B98;
  v559[1] = mlx::core::deserialize_primitive<mlx::core::Subtract>;
  v559[3] = v559;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v561, v560);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v562, v559);
  v563 = 0uLL;
  v564 = 0;
  v85 = 0;
  v84 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1231, v86, v561);
  std::string::basic_string[abi:ne200100]<0>(v82, "Tan");
  v554[0] = &unk_286BE6158;
  v554[1] = mlx::core::serialize_primitive<mlx::core::Tan>;
  v554[3] = v554;
  v553[0] = &unk_286BE9C38;
  v553[1] = mlx::core::deserialize_primitive<mlx::core::Tan>;
  v553[3] = v553;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v555, v554);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v556, v553);
  v557 = 0uLL;
  v558 = 0;
  v81 = 0;
  v80 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1232, v82, v555);
  std::string::basic_string[abi:ne200100]<0>(v78, "Tanh");
  v548[0] = &unk_286BE6158;
  v548[1] = mlx::core::serialize_primitive<mlx::core::Tanh>;
  v548[3] = v548;
  v547[0] = &unk_286BE9CD8;
  v547[1] = mlx::core::deserialize_primitive<mlx::core::Tanh>;
  v547[3] = v547;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v549, v548);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v550, v547);
  v551 = 0uLL;
  v552 = 0;
  v77 = 0;
  v76 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1233, v78, v549);
  std::string::basic_string[abi:ne200100]<0>(v74, "View");
  v542[0] = &unk_286BE6158;
  v542[1] = mlx::core::serialize_primitive<mlx::core::View>;
  v542[3] = v542;
  v541[0] = &unk_286BE9D78;
  v541[1] = mlx::core::deserialize_primitive<mlx::core::View>;
  v541[3] = v541;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v543, v542);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v544, v541);
  v545 = 0uLL;
  v546 = 0;
  v73 = 0;
  v72 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1234, v74, v543);
  std::string::basic_string[abi:ne200100]<0>(v70, "Transpose");
  v536[0] = &unk_286BE6158;
  v536[1] = mlx::core::serialize_primitive<mlx::core::Transpose>;
  v536[3] = v536;
  v535[0] = &unk_286BE9E18;
  v535[1] = mlx::core::deserialize_primitive<mlx::core::Transpose>;
  v535[3] = v535;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v537, v536);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v538, v535);
  v539 = 0uLL;
  v540 = 0;
  v69 = 0;
  v68 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1235, v70, v537);
  std::string::basic_string[abi:ne200100]<0>(v66, "Unflatten");
  v530[0] = &unk_286BE6158;
  v530[1] = mlx::core::serialize_primitive<mlx::core::Unflatten>;
  v530[3] = v530;
  v529[0] = &unk_286BE9EB8;
  v529[1] = mlx::core::deserialize_primitive<mlx::core::Unflatten>;
  v529[3] = v529;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v531, v530);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v532, v529);
  v533 = 0uLL;
  v534 = 0;
  v65 = 0;
  v64 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1236, v66, v531);
  std::string::basic_string[abi:ne200100]<0>(v62, "QRF");
  v524[0] = &unk_286BE6158;
  v524[1] = mlx::core::serialize_primitive<mlx::core::QRF>;
  v524[3] = v524;
  v523[0] = &unk_286BE9F58;
  v523[1] = mlx::core::deserialize_primitive<mlx::core::QRF>;
  v523[3] = v523;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v525, v524);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v526, v523);
  v527 = 0uLL;
  v528 = 0;
  v61 = 0;
  v60 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1237, v62, v525);
  std::string::basic_string[abi:ne200100]<0>(v58, "SVD");
  v518[0] = &unk_286BE6158;
  v518[1] = mlx::core::serialize_primitive<mlx::core::SVD>;
  v518[3] = v518;
  v517[0] = &unk_286BE9FF8;
  v517[1] = mlx::core::deserialize_primitive<mlx::core::SVD>;
  v517[3] = v517;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v519, v518);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v520, v517);
  v521 = 0uLL;
  v522 = 0;
  v57 = 0;
  v56 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1238, v58, v519);
  std::string::basic_string[abi:ne200100]<0>(v54, "Inverse");
  v512[0] = &unk_286BE6158;
  v512[1] = mlx::core::serialize_primitive<mlx::core::Inverse>;
  v512[3] = v512;
  v511[0] = &unk_286BEA098;
  v511[1] = mlx::core::deserialize_primitive<mlx::core::Inverse>;
  v511[3] = v511;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v513, v512);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v514, v511);
  v515 = 0uLL;
  v516 = 0;
  v53 = 0;
  v52 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1239, v54, v513);
  std::string::basic_string[abi:ne200100]<0>(v50, "Cholesky");
  v506[0] = &unk_286BE6158;
  v506[1] = mlx::core::serialize_primitive<mlx::core::Cholesky>;
  v506[3] = v506;
  v505[0] = &unk_286BEA138;
  v505[1] = mlx::core::deserialize_primitive<mlx::core::Cholesky>;
  v505[3] = v505;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v507, v506);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v508, v505);
  v509 = 0uLL;
  v510 = 0;
  v49 = 0;
  v48 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1240, v50, v507);
  std::string::basic_string[abi:ne200100]<0>(v46, "Eigh");
  v500[0] = &unk_286BE6158;
  v500[1] = mlx::core::serialize_primitive<mlx::core::Eigh>;
  v500[3] = v500;
  v499[0] = &unk_286BEA1D8;
  v499[1] = mlx::core::deserialize_primitive<mlx::core::Eigh>;
  v499[3] = v499;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v501, v500);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v502, v499);
  v503 = 0uLL;
  v504 = 0;
  v45 = 0;
  v44 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1241, v46, v501);
  std::string::basic_string[abi:ne200100]<0>(v42, "AffineQuantize");
  v494[0] = &unk_286BE6158;
  v494[1] = mlx::core::serialize_primitive<mlx::core::fast::AffineQuantize>;
  v494[3] = v494;
  v493[0] = &unk_286BEA2C8;
  v493[1] = mlx::core::deserialize_primitive<mlx::core::fast::AffineQuantize>;
  v493[3] = v493;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v495, v494);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v496, v493);
  v497 = 0uLL;
  v498 = 0;
  v41 = 0;
  v40 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1242, v42, v495);
  std::string::basic_string[abi:ne200100]<0>(v38, "RMSNorm");
  v488[0] = &unk_286BE6158;
  v488[1] = mlx::core::serialize_primitive<mlx::core::fast::RMSNorm>;
  v488[3] = v488;
  v487[0] = &unk_286BEA3B8;
  v487[1] = mlx::core::deserialize_primitive<mlx::core::fast::RMSNorm>;
  v487[3] = v487;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v489, v488);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v490, v487);
  v491 = 0uLL;
  v492 = 0;
  v37 = 0;
  v36 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1243, v38, v489);
  std::string::basic_string[abi:ne200100]<0>(v34, "RMSNormVJP");
  v482[0] = &unk_286BE6158;
  v482[1] = mlx::core::serialize_primitive<mlx::core::fast::RMSNormVJP>;
  v482[3] = v482;
  v481[0] = &unk_286BEA4A8;
  v481[1] = mlx::core::deserialize_primitive<mlx::core::fast::RMSNormVJP>;
  v481[3] = v481;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v483, v482);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v484, v481);
  v485 = 0uLL;
  v486 = 0;
  v33 = 0;
  v32 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1244, v34, v483);
  std::string::basic_string[abi:ne200100]<0>(v30, "LayerNorm");
  v476[0] = &unk_286BE6158;
  v476[1] = mlx::core::serialize_primitive<mlx::core::fast::LayerNorm>;
  v476[3] = v476;
  v475[0] = &unk_286BEA598;
  v475[1] = mlx::core::deserialize_primitive<mlx::core::fast::LayerNorm>;
  v475[3] = v475;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v477, v476);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v478, v475);
  v479 = 0uLL;
  v480 = 0;
  v29 = 0;
  v28 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1245, v30, v477);
  std::string::basic_string[abi:ne200100]<0>(v26, "LayerNormVJP");
  v470[0] = &unk_286BE6158;
  v470[1] = mlx::core::serialize_primitive<mlx::core::fast::LayerNormVJP>;
  v470[3] = v470;
  v469[0] = &unk_286BEA688;
  v469[1] = mlx::core::deserialize_primitive<mlx::core::fast::LayerNormVJP>;
  v469[3] = v469;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v471, v470);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v472, v469);
  v473 = 0uLL;
  v474 = 0;
  v25 = 0;
  v24 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1246, v26, v471);
  std::string::basic_string[abi:ne200100]<0>(v22, "RoPE");
  v464[0] = &unk_286BE6158;
  v464[1] = mlx::core::serialize_primitive<mlx::core::fast::RoPE>;
  v464[3] = v464;
  v463[0] = &unk_286BEA778;
  v463[1] = mlx::core::deserialize_primitive<mlx::core::fast::RoPE>;
  v463[3] = v463;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v465, v464);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v466, v463);
  v467 = 0uLL;
  v468 = 0;
  v21 = 0;
  v20 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1247, v22, v465);
  std::string::basic_string[abi:ne200100]<0>(__p, "ScaledDotProductAttention");
  v458[0] = &unk_286BE6158;
  v458[1] = mlx::core::serialize_primitive<mlx::core::fast::ScaledDotProductAttention>;
  v458[3] = v458;
  v457[0] = &unk_286BEA868;
  v457[1] = mlx::core::deserialize_primitive<mlx::core::fast::ScaledDotProductAttention>;
  v457[3] = v457;
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::__value_func[abi:ne200100](v459, v458);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::__value_func[abi:ne200100](v460, v457);
  v461 = 0uLL;
  v462 = 0;
  v17 = 0;
  v16 = 0uLL;
  std::pair<std::string const,mlx::core::PrimitiveSerializer>::pair[abi:ne200100]<true,0>(v1248, __p, v459);
  v15 = v1;
  std::unordered_map<std::string,mlx::core::PrimitiveSerializer>::unordered_map(v1, &v1139[0].__r_.__value_.__l.__data_, 110);
  v2 = v1249;
  v3 = -12320;
  do
  {
    v456 = v2;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v456);
    std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100]((v2 - 4));
    std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100]((v2 - 8));
    if (*(v2 - 65) < 0)
    {
      operator delete(*(v2 - 11));
    }

    v2 -= 14;
    v3 += 112;
  }

  while (v3);
  v456 = &v461;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v456);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v460);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v459);
  v456 = &v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v456);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v457);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v458);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v459[0] = &v467;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v459);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v466);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v465);
  v459[0] = &v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v459);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v463);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v464);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  v465[0] = &v473;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v465);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v472);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v471);
  v465[0] = &v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v465);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v469);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v470);
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v471[0] = &v479;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v471);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v478);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v477);
  v471[0] = &v28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v471);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v475);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v476);
  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  v477[0] = &v485;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v477);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v484);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v483);
  v477[0] = &v32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v477);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v481);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v482);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  v483[0] = &v491;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v483);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v490);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v489);
  v483[0] = &v36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v483);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v487);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v488);
  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  v489[0] = &v497;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v489);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v496);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v495);
  v489[0] = &v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v489);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v493);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v494);
  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  v495[0] = &v503;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v495);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v502);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v501);
  v495[0] = &v44;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v495);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v499);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v500);
  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  v501[0] = &v509;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v501);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v508);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v507);
  v501[0] = &v48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v501);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v505);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v506);
  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  v507[0] = &v515;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v507);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v514);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v513);
  v507[0] = &v52;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v507);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v511);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v512);
  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  v513[0] = &v521;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v513);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v520);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v519);
  v513[0] = &v56;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v513);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v517);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v518);
  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  v519[0] = &v527;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v519);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v526);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v525);
  v519[0] = &v60;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v519);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v523);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v524);
  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  v525[0] = &v533;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v525);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v532);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v531);
  v525[0] = &v64;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v525);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v529);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v530);
  if (v67 < 0)
  {
    operator delete(v66[0]);
  }

  v531[0] = &v539;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v531);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v538);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v537);
  v531[0] = &v68;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v531);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v535);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v536);
  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  v537[0] = &v545;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v537);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v544);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v543);
  v537[0] = &v72;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v537);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v541);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v542);
  if (v75 < 0)
  {
    operator delete(v74[0]);
  }

  v543[0] = &v551;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v543);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v550);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v549);
  v543[0] = &v76;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v543);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v547);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v548);
  if (v79 < 0)
  {
    operator delete(v78[0]);
  }

  v549[0] = &v557;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v549);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v556);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v555);
  v549[0] = &v80;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v549);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v553);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v554);
  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  v555[0] = &v563;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v555);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v562);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v561);
  v555[0] = &v84;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v555);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v559);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v560);
  if (v87 < 0)
  {
    operator delete(v86[0]);
  }

  v561[0] = &v569;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v561);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v568);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v567);
  v561[0] = &v88;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v561);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v565);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v566);
  if (v91 < 0)
  {
    operator delete(v90[0]);
  }

  v567[0] = &v577;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v567);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v576);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v575);
  v567[0] = &v92;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v567);
  for (i = 0; i != -48; i -= 24)
  {
    if (v572[i + 23] < 0)
    {
      operator delete(*&v571[i + 24]);
    }
  }

  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v573);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v574);
  if (v95 < 0)
  {
    operator delete(v94[0]);
  }

  v575[0] = &v583;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v575);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v582);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v581);
  v575[0] = &v96;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v575);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v579);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v580);
  if (v99 < 0)
  {
    operator delete(v98[0]);
  }

  v581[0] = &v589;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v581);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v588);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v587);
  v581[0] = &v100;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v581);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v585);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v586);
  if (v103 < 0)
  {
    operator delete(v102[0]);
  }

  v587[0] = &v595;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v587);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v594);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v593);
  v587[0] = &v104;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v587);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v591);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v592);
  if (v107 < 0)
  {
    operator delete(v106[0]);
  }

  v593[0] = &v601;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v593);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v600);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v599);
  v593[0] = &v108;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v593);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v597);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v598);
  if (v111 < 0)
  {
    operator delete(v110[0]);
  }

  v599[0] = &v607;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v599);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v606);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v605);
  v599[0] = &v112;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v599);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v603);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v604);
  if (v115 < 0)
  {
    operator delete(v114[0]);
  }

  v605[0] = &v613;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v605);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v612);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v611);
  v605[0] = &v116;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v605);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v609);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v610);
  if (v119 < 0)
  {
    operator delete(v118[0]);
  }

  v611[0] = &v619;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v611);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v618);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v617);
  v611[0] = &v120;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v611);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v615);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v616);
  if (v123 < 0)
  {
    operator delete(v122[0]);
  }

  v617[0] = &v625;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v617);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v624);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v623);
  v617[0] = &v124;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v617);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v621);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v622);
  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  v623[0] = &v631;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v623);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v630);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v629);
  v623[0] = &v128;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v623);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v627);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v628);
  if (v131 < 0)
  {
    operator delete(v130[0]);
  }

  v629[0] = &v637;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v629);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v636);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v635);
  v629[0] = &v132;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v629);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v633);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v634);
  if (v135 < 0)
  {
    operator delete(v134[0]);
  }

  v635[0] = &v643;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v635);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v642);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v641);
  v635[0] = &v136;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v635);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v639);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v640);
  if (v139 < 0)
  {
    operator delete(v138[0]);
  }

  v641[0] = &v649;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v641);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v648);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v647);
  v641[0] = &v140;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v641);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v645);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v646);
  if (v143 < 0)
  {
    operator delete(v142[0]);
  }

  v647[0] = &v655;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v647);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v654);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v653);
  v647[0] = &v144;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v647);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v651);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v652);
  if (v147 < 0)
  {
    operator delete(v146[0]);
  }

  v653[0] = &v666;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v653);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v665);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v664);
  v653[0] = &v148;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v653);
  for (j = 0; j != -120; j -= 24)
  {
    if (v661[j + 23] < 0)
    {
      operator delete(*&v661[j]);
    }
  }

  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v662);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v663);
  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  v657[0] = &v672;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v657);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v671);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v670);
  v657[0] = &v152;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v657);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v668);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v669);
  if (v155 < 0)
  {
    operator delete(v154[0]);
  }

  v657[0] = &v684;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v657);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v683);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v682);
  v657[0] = &v156;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v657);
  for (k = 0; k != -144; k -= 24)
  {
    if (v679[k + 23] < 0)
    {
      operator delete(*&v679[k]);
    }
  }

  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v680);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v681);
  if (v159 < 0)
  {
    operator delete(v158[0]);
  }

  v674[0] = &v690;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v689);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v688);
  v674[0] = &v160;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v686);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v687);
  if (v163 < 0)
  {
    operator delete(v162[0]);
  }

  v674[0] = &v696;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v695);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v694);
  v674[0] = &v164;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v692);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v693);
  if (v167 < 0)
  {
    operator delete(v166[0]);
  }

  v674[0] = &v702;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v701);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v700);
  v674[0] = &v168;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v698);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v699);
  if (v171 < 0)
  {
    operator delete(v170[0]);
  }

  v674[0] = &v708;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v707);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v706);
  v674[0] = &v172;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v704);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v705);
  if (v175 < 0)
  {
    operator delete(v174[0]);
  }

  v674[0] = &v714;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v713);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v712);
  v674[0] = &v176;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v710);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v711);
  if (v179 < 0)
  {
    operator delete(v178[0]);
  }

  v674[0] = &v720;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v719);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v718);
  v674[0] = &v180;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v716);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v717);
  if (v183 < 0)
  {
    operator delete(v182[0]);
  }

  v674[0] = &v726;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v725);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v724);
  v674[0] = &v184;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v722);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v723);
  if (v187 < 0)
  {
    operator delete(v186[0]);
  }

  v674[0] = &v732;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v731);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v730);
  v674[0] = &v188;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v728);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v729);
  if (v191 < 0)
  {
    operator delete(v190[0]);
  }

  v674[0] = &v738;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v737);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v736);
  v674[0] = &v192;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v734);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v735);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  v674[0] = &v744;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v743);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v742);
  v674[0] = &v196;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v740);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v741);
  if (v199 < 0)
  {
    operator delete(v198[0]);
  }

  v674[0] = &v750;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v749);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v748);
  v674[0] = &v200;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v746);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v747);
  if (v203 < 0)
  {
    operator delete(v202[0]);
  }

  v674[0] = &v756;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v755);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v754);
  v674[0] = &v204;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v752);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v753);
  if (v207 < 0)
  {
    operator delete(v206[0]);
  }

  v674[0] = &v762;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v761);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v760);
  v674[0] = &v208;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v758);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v759);
  if (v211 < 0)
  {
    operator delete(v210[0]);
  }

  v674[0] = &v768;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v767);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v766);
  v674[0] = &v212;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v764);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v765);
  if (v215 < 0)
  {
    operator delete(v214[0]);
  }

  v674[0] = &v774;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v773);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v772);
  v674[0] = &v216;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v770);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v771);
  if (v219 < 0)
  {
    operator delete(v218[0]);
  }

  v674[0] = &v780;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v779);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v778);
  v674[0] = &v220;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v776);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v777);
  if (v223 < 0)
  {
    operator delete(v222[0]);
  }

  v674[0] = &v786;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v785);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v784);
  v674[0] = &v224;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v782);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v783);
  if (v227 < 0)
  {
    operator delete(v226[0]);
  }

  v674[0] = &v792;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v791);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v790);
  v674[0] = &v228;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v788);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v789);
  if (v231 < 0)
  {
    operator delete(v230[0]);
  }

  v674[0] = &v798;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v797);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v796);
  v674[0] = &v232;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v794);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v795);
  if (v235 < 0)
  {
    operator delete(v234[0]);
  }

  v674[0] = &v804;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v803);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v802);
  v674[0] = &v236;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v800);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v801);
  if (v239 < 0)
  {
    operator delete(v238[0]);
  }

  v674[0] = &v810;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v809);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v808);
  v674[0] = &v240;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v806);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v807);
  if (v243 < 0)
  {
    operator delete(v242[0]);
  }

  v674[0] = &v816;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v815);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v814);
  v674[0] = &v244;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v812);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v813);
  if (v247 < 0)
  {
    operator delete(v246[0]);
  }

  v674[0] = &v822;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v821);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v820);
  v674[0] = &v248;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v818);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v819);
  if (v251 < 0)
  {
    operator delete(v250[0]);
  }

  v674[0] = &v830;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v829);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v828);
  v674[0] = &v252;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  for (m = 0; m != -48; m -= 24)
  {
    if (v825[m + 23] < 0)
    {
      operator delete(*&v824[m + 24]);
    }
  }

  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v826);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v827);
  if (v255 < 0)
  {
    operator delete(v254[0]);
  }

  v674[0] = &v836;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v835);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v834);
  v674[0] = &v256;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v832);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v833);
  if (v259 < 0)
  {
    operator delete(v258[0]);
  }

  v674[0] = &v842;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v841);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v840);
  v674[0] = &v260;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v838);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v839);
  if (v263 < 0)
  {
    operator delete(v262[0]);
  }

  v674[0] = &v848;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v847);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v846);
  v674[0] = &v264;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v844);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v845);
  if (v267 < 0)
  {
    operator delete(v266[0]);
  }

  v674[0] = &v854;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v853);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v852);
  v674[0] = &v268;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v850);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v851);
  if (v271 < 0)
  {
    operator delete(v270[0]);
  }

  v674[0] = &v860;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v859);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v858);
  v674[0] = &v272;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v856);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v857);
  if (v275 < 0)
  {
    operator delete(v274[0]);
  }

  v674[0] = &v866;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v865);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v864);
  v674[0] = &v276;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v862);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v863);
  if (v279 < 0)
  {
    operator delete(v278[0]);
  }

  v674[0] = &v872;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v871);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v870);
  v674[0] = &v280;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v868);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v869);
  if (v283 < 0)
  {
    operator delete(v282[0]);
  }

  v674[0] = &v878;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v877);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v876);
  v674[0] = &v284;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v874);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v875);
  if (v287 < 0)
  {
    operator delete(v286[0]);
  }

  v674[0] = &v884;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v883);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v882);
  v674[0] = &v288;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v880);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v881);
  if (v291 < 0)
  {
    operator delete(v290[0]);
  }

  v674[0] = &v890;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v889);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v888);
  v674[0] = &v292;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v886);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v887);
  if (v295 < 0)
  {
    operator delete(v294[0]);
  }

  v674[0] = &v896;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v895);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v894);
  v674[0] = &v296;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v892);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v893);
  if (v299 < 0)
  {
    operator delete(v298[0]);
  }

  v674[0] = &v902;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v901);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v900);
  v674[0] = &v300;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v898);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v899);
  if (v303 < 0)
  {
    operator delete(v302[0]);
  }

  v674[0] = &v908;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v907);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v906);
  v674[0] = &v304;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v904);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v905);
  if (v307 < 0)
  {
    operator delete(v306[0]);
  }

  v674[0] = &v914;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v913);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v912);
  v674[0] = &v308;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v910);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v911);
  if (v311 < 0)
  {
    operator delete(v310[0]);
  }

  v674[0] = &v920;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v919);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v918);
  v674[0] = &v312;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v916);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v917);
  if (v315 < 0)
  {
    operator delete(v314[0]);
  }

  v674[0] = &v926;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v925);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v924);
  v674[0] = &v316;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v922);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v923);
  if (v319 < 0)
  {
    operator delete(v318[0]);
  }

  v674[0] = &v932;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v931);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v930);
  v674[0] = &v320;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v928);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v929);
  if (v323 < 0)
  {
    operator delete(v322[0]);
  }

  v674[0] = &v940;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v939);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v938);
  v674[0] = &v324;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  if (v935 < 0)
  {
    operator delete(v934[0]);
  }

  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v936);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v937);
  if (v327 < 0)
  {
    operator delete(v326[0]);
  }

  v674[0] = &v946;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v945);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v944);
  v674[0] = &v328;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v942);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v943);
  if (v331 < 0)
  {
    operator delete(v330[0]);
  }

  v674[0] = &v952;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v951);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v950);
  v674[0] = &v332;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v948);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v949);
  if (v335 < 0)
  {
    operator delete(v334[0]);
  }

  v674[0] = &v958;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v957);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v956);
  v674[0] = &v336;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v954);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v955);
  if (v339 < 0)
  {
    operator delete(v338[0]);
  }

  v674[0] = &v964;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v963);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v962);
  v674[0] = &v340;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v960);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v961);
  if (v343 < 0)
  {
    operator delete(v342[0]);
  }

  v674[0] = &v970;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v969);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v968);
  v674[0] = &v344;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v966);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v967);
  if (v347 < 0)
  {
    operator delete(v346[0]);
  }

  v674[0] = &v976;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v975);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v974);
  v674[0] = &v348;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v972);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v973);
  if (v351 < 0)
  {
    operator delete(v350[0]);
  }

  v674[0] = &v982;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v981);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v980);
  v674[0] = &v352;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v978);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v979);
  if (v355 < 0)
  {
    operator delete(v354[0]);
  }

  v674[0] = &v988;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v987);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v986);
  v674[0] = &v356;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v984);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v985);
  if (v359 < 0)
  {
    operator delete(v358[0]);
  }

  v674[0] = &v994;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v993);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v992);
  v674[0] = &v360;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v990);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v991);
  if (v363 < 0)
  {
    operator delete(v362[0]);
  }

  v674[0] = &v1000;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v999);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v998);
  v674[0] = &v364;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v996);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v997);
  if (v367 < 0)
  {
    operator delete(v366[0]);
  }

  v674[0] = &v1006;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1005);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1004);
  v674[0] = &v368;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1002);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1003);
  if (v371 < 0)
  {
    operator delete(v370[0]);
  }

  v674[0] = &v1012;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1011);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1010);
  v674[0] = &v372;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1008);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1009);
  if (v375 < 0)
  {
    operator delete(v374[0]);
  }

  v674[0] = &v1018;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1017);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1016);
  v674[0] = &v376;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1014);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1015);
  if (v379 < 0)
  {
    operator delete(v378[0]);
  }

  v674[0] = &v1024;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1023);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1022);
  v674[0] = &v380;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1020);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1021);
  if (v383 < 0)
  {
    operator delete(v382[0]);
  }

  v674[0] = &v1030;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1029);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1028);
  v674[0] = &v384;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1026);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1027);
  if (v387 < 0)
  {
    operator delete(v386[0]);
  }

  v674[0] = &v1041;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1040);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1039);
  v674[0] = &v388;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  for (n = 0; n != -120; n -= 24)
  {
    if (v1036[n + 23] < 0)
    {
      operator delete(*&v1036[n]);
    }
  }

  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1037);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1038);
  if (v391 < 0)
  {
    operator delete(v390[0]);
  }

  v674[0] = &v1047;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1046);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1045);
  v674[0] = &v392;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1043);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1044);
  if (v395 < 0)
  {
    operator delete(v394[0]);
  }

  v674[0] = &v1053;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1052);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1051);
  v674[0] = &v396;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1049);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1050);
  if (v399 < 0)
  {
    operator delete(v398[0]);
  }

  v674[0] = &v1059;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1058);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1057);
  v674[0] = &v400;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1055);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1056);
  if (v403 < 0)
  {
    operator delete(v402[0]);
  }

  v674[0] = &v1065;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1064);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1063);
  v674[0] = &v404;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1061);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1062);
  if (v407 < 0)
  {
    operator delete(v406[0]);
  }

  v674[0] = &v1071;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1070);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1069);
  v674[0] = &v408;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1067);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1068);
  if (v411 < 0)
  {
    operator delete(v410[0]);
  }

  v674[0] = &v1077;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1076);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1075);
  v674[0] = &v412;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1073);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1074);
  if (v415 < 0)
  {
    operator delete(v414[0]);
  }

  v674[0] = &v1083;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1082);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1081);
  v674[0] = &v416;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1079);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1080);
  if (v419 < 0)
  {
    operator delete(v418[0]);
  }

  v674[0] = &v1089;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1088);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1087);
  v674[0] = &v420;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1085);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1086);
  if (v423 < 0)
  {
    operator delete(v422[0]);
  }

  v674[0] = &v1095;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1094);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1093);
  v674[0] = &v424;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1091);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1092);
  if (v427 < 0)
  {
    operator delete(v426[0]);
  }

  v674[0] = &v1101;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1100);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1099);
  v674[0] = &v428;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1097);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1098);
  if (v431 < 0)
  {
    operator delete(v430[0]);
  }

  v674[0] = &v1107;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1106);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1105);
  v674[0] = &v432;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1103);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1104);
  if (v435 < 0)
  {
    operator delete(v434[0]);
  }

  v674[0] = &v1113;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1112);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1111);
  v674[0] = &v436;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1109);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1110);
  if (v439 < 0)
  {
    operator delete(v438[0]);
  }

  v674[0] = &v1119;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1118);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1117);
  v674[0] = &v440;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1115);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1116);
  if (v443 < 0)
  {
    operator delete(v442[0]);
  }

  v674[0] = &v1125;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1124);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1123);
  v674[0] = &v444;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1121);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1122);
  if (v447 < 0)
  {
    operator delete(v446[0]);
  }

  v674[0] = &v1131;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1130);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1129);
  v674[0] = &v448;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1127);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1128);
  if (v451 < 0)
  {
    operator delete(v450[0]);
  }

  v674[0] = &v1137;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1136);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1135);
  v674[0] = &v452;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v674);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](v1133);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](v1134);
  if (v455 < 0)
  {
    operator delete(v454[0]);
  }

  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 1065353216;
  for (ii = *(v1 + 16); ii; ii = *ii)
  {
    v10 = ii[13];
    v11 = ii[14];
    while (v10 != v11)
    {
      v1139[0].__r_.__value_.__r.__words[0] = v10;
      v12 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v15 + 40), v10);
      std::string::operator=((v12 + 5), (ii + 2));
      v10 += 3;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_25A295718(_Unwind_Exception *a1)
{
  v3 = -12320;
  v4 = v1;
  do
  {
    v4 = std::pair<std::string const,mlx::core::PrimitiveSerializer>::~pair(v4) - 112;
    v3 += 112;
  }

  while (v3);
  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1830]);
  STACK[0x17E8] = &STACK[0x340];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x17E8]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x17F0]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1810]);
  if (SLOBYTE(STACK[0x36F]) < 0)
  {
    operator delete(STACK[0x358]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x18C8]);
  STACK[0x1830] = &STACK[0x370];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1830]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1888]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x18A8]);
  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(STACK[0x388]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1960]);
  STACK[0x18C8] = &STACK[0x3A0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x18C8]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1920]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1940]);
  if (SLOBYTE(STACK[0x3CF]) < 0)
  {
    operator delete(STACK[0x3B8]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x19F8]);
  STACK[0x1960] = &STACK[0x3D0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1960]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x19B8]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x19D8]);
  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1A90]);
  STACK[0x19F8] = &STACK[0x400];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x19F8]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1A50]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1A70]);
  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1B28]);
  STACK[0x1A90] = &STACK[0x430];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1A90]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1AE8]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1B08]);
  if (SLOBYTE(STACK[0x45F]) < 0)
  {
    operator delete(STACK[0x448]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1BC0]);
  STACK[0x1B28] = &STACK[0x460];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1B28]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1B80]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1BA0]);
  if (SLOBYTE(STACK[0x48F]) < 0)
  {
    operator delete(STACK[0x478]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1C58]);
  STACK[0x1BC0] = &STACK[0x490];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1BC0]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1C18]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1C38]);
  if (SLOBYTE(STACK[0x4BF]) < 0)
  {
    operator delete(STACK[0x4A8]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1CF0]);
  STACK[0x1C58] = &STACK[0x4C0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1C58]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1CB0]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1CD0]);
  if (SLOBYTE(STACK[0x4EF]) < 0)
  {
    operator delete(STACK[0x4D8]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1D88]);
  STACK[0x1CF0] = &STACK[0x4F0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1CF0]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1D48]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1D68]);
  if (SLOBYTE(STACK[0x51F]) < 0)
  {
    operator delete(STACK[0x508]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1E20]);
  STACK[0x1D88] = &STACK[0x520];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1D88]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1DE0]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1E00]);
  if (SLOBYTE(STACK[0x54F]) < 0)
  {
    operator delete(STACK[0x538]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1EB8]);
  STACK[0x1E20] = &STACK[0x550];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1E20]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1E78]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1E98]);
  if (SLOBYTE(STACK[0x57F]) < 0)
  {
    operator delete(STACK[0x568]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1F50]);
  STACK[0x1EB8] = &STACK[0x580];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1EB8]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1F10]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1F30]);
  if (SLOBYTE(STACK[0x5AF]) < 0)
  {
    operator delete(STACK[0x598]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x1FE8]);
  STACK[0x1F50] = &STACK[0x5B0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1F50]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x1FA8]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x1FC8]);
  if (SLOBYTE(STACK[0x5DF]) < 0)
  {
    operator delete(STACK[0x5C8]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2080]);
  STACK[0x1FE8] = &STACK[0x5E0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x1FE8]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2040]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2060]);
  if (SLOBYTE(STACK[0x60F]) < 0)
  {
    operator delete(STACK[0x5F8]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2118]);
  STACK[0x2080] = &STACK[0x610];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2080]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x20D8]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x20F8]);
  if (SLOBYTE(STACK[0x63F]) < 0)
  {
    operator delete(STACK[0x628]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x21B0]);
  STACK[0x2118] = &STACK[0x640];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2118]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2170]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2190]);
  if (SLOBYTE(STACK[0x66F]) < 0)
  {
    operator delete(STACK[0x658]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2248]);
  STACK[0x21B0] = &STACK[0x670];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x21B0]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2208]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2228]);
  if (SLOBYTE(STACK[0x69F]) < 0)
  {
    operator delete(STACK[0x688]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x22E0]);
  STACK[0x2248] = &STACK[0x6A0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2248]);
  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x22A0]);
  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x22C0]);
  if (SLOBYTE(STACK[0x6CF]) < 0)
  {
    operator delete(STACK[0x6B8]);
  }

  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x23A8]);
  STACK[0x22E0] = &STACK[0x6D0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x22E0]);
  v5 = &STACK[0x2367];
  v6 = -48;
  v7 = &STACK[0x2367];
  while (1)
  {
    v8 = *v7;
    v7 -= 3;
    if (v8 < 0)
    {
      operator delete(*(v5 - 23));
    }

    v5 = v7;
    v6 += 24;
    if (!v6)
    {
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2368]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2388]);
      if (SLOBYTE(STACK[0x6FF]) < 0)
      {
        operator delete(STACK[0x6E8]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2440]);
      STACK[0x23A8] = &STACK[0x700];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x23A8]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2400]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2420]);
      if (SLOBYTE(STACK[0x72F]) < 0)
      {
        operator delete(STACK[0x718]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x24D8]);
      STACK[0x2440] = &STACK[0x730];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2440]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2498]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x24B8]);
      if (SLOBYTE(STACK[0x75F]) < 0)
      {
        operator delete(STACK[0x748]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2570]);
      STACK[0x24D8] = &STACK[0x760];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x24D8]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2530]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2550]);
      if (SLOBYTE(STACK[0x78F]) < 0)
      {
        operator delete(STACK[0x778]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2608]);
      STACK[0x2570] = &STACK[0x790];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2570]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x25C8]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x25E8]);
      if (SLOBYTE(STACK[0x7BF]) < 0)
      {
        operator delete(STACK[0x7A8]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x26A0]);
      STACK[0x2608] = &STACK[0x7C0];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2608]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2660]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2680]);
      if (SLOBYTE(STACK[0x7EF]) < 0)
      {
        operator delete(STACK[0x7D8]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2738]);
      STACK[0x26A0] = &STACK[0x7F0];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x26A0]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x26F8]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2718]);
      if (SLOBYTE(STACK[0x81F]) < 0)
      {
        operator delete(STACK[0x808]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x27D0]);
      STACK[0x2738] = &STACK[0x820];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2738]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2790]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x27B0]);
      if (SLOBYTE(STACK[0x84F]) < 0)
      {
        operator delete(STACK[0x838]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2868]);
      STACK[0x27D0] = &STACK[0x850];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x27D0]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2828]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2848]);
      if (SLOBYTE(STACK[0x87F]) < 0)
      {
        operator delete(STACK[0x868]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2900]);
      STACK[0x2868] = &STACK[0x880];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2868]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x28C0]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x28E0]);
      if (SLOBYTE(STACK[0x8AF]) < 0)
      {
        operator delete(STACK[0x898]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2998]);
      STACK[0x2900] = &STACK[0x8B0];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2900]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2958]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2978]);
      if (SLOBYTE(STACK[0x8DF]) < 0)
      {
        operator delete(STACK[0x8C8]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2A30]);
      STACK[0x2998] = &STACK[0x8E0];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2998]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x29F0]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2A10]);
      if (SLOBYTE(STACK[0x90F]) < 0)
      {
        operator delete(STACK[0x8F8]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2AC8]);
      STACK[0x2A30] = &STACK[0x910];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2A30]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2A88]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2AA8]);
      if (SLOBYTE(STACK[0x93F]) < 0)
      {
        operator delete(STACK[0x928]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2B60]);
      STACK[0x2AC8] = &STACK[0x940];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2AC8]);
      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2B20]);
      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2B40]);
      if (SLOBYTE(STACK[0x96F]) < 0)
      {
        operator delete(STACK[0x958]);
      }

      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2C70]);
      STACK[0x2B60] = &STACK[0x970];
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2B60]);
      v9 = &STACK[0x2C2F];
      v10 = -120;
      v11 = &STACK[0x2C2F];
      while (1)
      {
        v12 = *v11;
        v11 -= 3;
        if (v12 < 0)
        {
          operator delete(*(v9 - 23));
        }

        v9 = v11;
        v10 += 24;
        if (!v10)
        {
          std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2C30]);
          std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2C50]);
          if (SLOBYTE(STACK[0x99F]) < 0)
          {
            operator delete(STACK[0x988]);
          }

          mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2D08]);
          STACK[0x2BB8] = &STACK[0x9A0];
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2BB8]);
          std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2CC8]);
          std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2CE8]);
          if (SLOBYTE(STACK[0x9CF]) < 0)
          {
            operator delete(STACK[0x9B8]);
          }

          mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2E30]);
          STACK[0x2BB8] = &STACK[0x9D0];
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2BB8]);
          v13 = &STACK[0x2DEF];
          v14 = -144;
          v15 = &STACK[0x2DEF];
          while (1)
          {
            v16 = *v15;
            v15 -= 3;
            if (v16 < 0)
            {
              operator delete(*(v13 - 23));
            }

            v13 = v15;
            v14 += 24;
            if (!v14)
            {
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2DF0]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2E10]);
              if (SLOBYTE(STACK[0x9FF]) < 0)
              {
                operator delete(STACK[0x9E8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2EC8]);
              STACK[0x2D60] = &STACK[0xA00];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2E88]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2EA8]);
              if (SLOBYTE(STACK[0xA2F]) < 0)
              {
                operator delete(STACK[0xA18]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2F60]);
              STACK[0x2D60] = &STACK[0xA30];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2F20]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2F40]);
              if (SLOBYTE(STACK[0xA5F]) < 0)
              {
                operator delete(STACK[0xA48]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x2FF8]);
              STACK[0x2D60] = &STACK[0xA60];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x2FB8]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x2FD8]);
              if (SLOBYTE(STACK[0xA8F]) < 0)
              {
                operator delete(STACK[0xA78]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3090]);
              STACK[0x2D60] = &STACK[0xA90];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3050]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3070]);
              if (SLOBYTE(STACK[0xABF]) < 0)
              {
                operator delete(STACK[0xAA8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3128]);
              STACK[0x2D60] = &STACK[0xAC0];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x30E8]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3108]);
              if (SLOBYTE(STACK[0xAEF]) < 0)
              {
                operator delete(STACK[0xAD8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x31C0]);
              STACK[0x2D60] = &STACK[0xAF0];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3180]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x31A0]);
              if (SLOBYTE(STACK[0xB1F]) < 0)
              {
                operator delete(STACK[0xB08]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3258]);
              STACK[0x2D60] = &STACK[0xB20];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3218]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3238]);
              if (SLOBYTE(STACK[0xB4F]) < 0)
              {
                operator delete(STACK[0xB38]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x32F0]);
              STACK[0x2D60] = &STACK[0xB50];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x32B0]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x32D0]);
              if (SLOBYTE(STACK[0xB7F]) < 0)
              {
                operator delete(STACK[0xB68]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3388]);
              STACK[0x2D60] = &STACK[0xB80];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3348]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3368]);
              if (SLOBYTE(STACK[0xBAF]) < 0)
              {
                operator delete(STACK[0xB98]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3420]);
              STACK[0x2D60] = &STACK[0xBB0];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x33E0]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3400]);
              if (SLOBYTE(STACK[0xBDF]) < 0)
              {
                operator delete(STACK[0xBC8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x34B8]);
              STACK[0x2D60] = &STACK[0xBE0];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3478]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3498]);
              if (SLOBYTE(STACK[0xC0F]) < 0)
              {
                operator delete(STACK[0xBF8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3550]);
              STACK[0x2D60] = &STACK[0xC10];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3510]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3530]);
              if (SLOBYTE(STACK[0xC3F]) < 0)
              {
                operator delete(STACK[0xC28]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x35E8]);
              STACK[0x2D60] = &STACK[0xC40];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x35A8]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x35C8]);
              if (SLOBYTE(STACK[0xC6F]) < 0)
              {
                operator delete(STACK[0xC58]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3680]);
              STACK[0x2D60] = &STACK[0xC70];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3640]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3660]);
              if (SLOBYTE(STACK[0xC9F]) < 0)
              {
                operator delete(STACK[0xC88]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3718]);
              STACK[0x2D60] = &STACK[0xCA0];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x36D8]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x36F8]);
              if (SLOBYTE(STACK[0xCCF]) < 0)
              {
                operator delete(STACK[0xCB8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x37B0]);
              STACK[0x2D60] = &STACK[0xCD0];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3770]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3790]);
              if (SLOBYTE(STACK[0xCFF]) < 0)
              {
                operator delete(STACK[0xCE8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3848]);
              STACK[0x2D60] = &STACK[0xD00];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3808]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3828]);
              if (SLOBYTE(STACK[0xD2F]) < 0)
              {
                operator delete(STACK[0xD18]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x38E0]);
              STACK[0x2D60] = &STACK[0xD30];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x38A0]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x38C0]);
              if (SLOBYTE(STACK[0xD5F]) < 0)
              {
                operator delete(STACK[0xD48]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3978]);
              STACK[0x2D60] = &STACK[0xD60];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3938]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3958]);
              if (SLOBYTE(STACK[0xD8F]) < 0)
              {
                operator delete(STACK[0xD78]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3A10]);
              STACK[0x2D60] = &STACK[0xD90];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x39D0]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x39F0]);
              if (SLOBYTE(STACK[0xDBF]) < 0)
              {
                operator delete(STACK[0xDA8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3AA8]);
              STACK[0x2D60] = &STACK[0xDC0];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3A68]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3A88]);
              if (SLOBYTE(STACK[0xDEF]) < 0)
              {
                operator delete(STACK[0xDD8]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3B40]);
              STACK[0x2D60] = &STACK[0xDF0];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3B00]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3B20]);
              if (SLOBYTE(STACK[0xE1F]) < 0)
              {
                operator delete(STACK[0xE08]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3BD8]);
              STACK[0x2D60] = &STACK[0xE20];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3B98]);
              std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3BB8]);
              if (SLOBYTE(STACK[0xE4F]) < 0)
              {
                operator delete(STACK[0xE38]);
              }

              mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3CA0]);
              STACK[0x2D60] = &STACK[0xE50];
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
              v17 = &STACK[0x3C5F];
              v18 = -48;
              v19 = &STACK[0x3C5F];
              while (1)
              {
                v20 = *v19;
                v19 -= 3;
                if (v20 < 0)
                {
                  operator delete(*(v17 - 23));
                }

                v17 = v19;
                v18 += 24;
                if (!v18)
                {
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3C60]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3C80]);
                  if (SLOBYTE(STACK[0xE7F]) < 0)
                  {
                    operator delete(STACK[0xE68]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3D38]);
                  STACK[0x2D60] = &STACK[0xE80];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3CF8]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3D18]);
                  if (SLOBYTE(STACK[0xEAF]) < 0)
                  {
                    operator delete(STACK[0xE98]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3DD0]);
                  STACK[0x2D60] = &STACK[0xEB0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3D90]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3DB0]);
                  if (SLOBYTE(STACK[0xEDF]) < 0)
                  {
                    operator delete(STACK[0xEC8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3E68]);
                  STACK[0x2D60] = &STACK[0xEE0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3E28]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3E48]);
                  if (SLOBYTE(STACK[0xF0F]) < 0)
                  {
                    operator delete(STACK[0xEF8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3F00]);
                  STACK[0x2D60] = &STACK[0xF10];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3EC0]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3EE0]);
                  if (SLOBYTE(STACK[0xF3F]) < 0)
                  {
                    operator delete(STACK[0xF28]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x3F98]);
                  STACK[0x2D60] = &STACK[0xF40];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3F58]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x3F78]);
                  if (SLOBYTE(STACK[0xF6F]) < 0)
                  {
                    operator delete(STACK[0xF58]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4030]);
                  STACK[0x2D60] = &STACK[0xF70];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x3FF0]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4010]);
                  if (SLOBYTE(STACK[0xF9F]) < 0)
                  {
                    operator delete(STACK[0xF88]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x40C8]);
                  STACK[0x2D60] = &STACK[0xFA0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4088]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x40A8]);
                  if (SLOBYTE(STACK[0xFCF]) < 0)
                  {
                    operator delete(STACK[0xFB8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4160]);
                  STACK[0x2D60] = &STACK[0xFD0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4120]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4140]);
                  if (SLOBYTE(STACK[0xFFF]) < 0)
                  {
                    operator delete(STACK[0xFE8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x41F8]);
                  STACK[0x2D60] = &STACK[0x1000];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x41B8]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x41D8]);
                  if (SLOBYTE(STACK[0x102F]) < 0)
                  {
                    operator delete(STACK[0x1018]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4290]);
                  STACK[0x2D60] = &STACK[0x1030];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4250]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4270]);
                  if (SLOBYTE(STACK[0x105F]) < 0)
                  {
                    operator delete(STACK[0x1048]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4328]);
                  STACK[0x2D60] = &STACK[0x1060];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x42E8]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4308]);
                  if (SLOBYTE(STACK[0x108F]) < 0)
                  {
                    operator delete(STACK[0x1078]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x43C0]);
                  STACK[0x2D60] = &STACK[0x1090];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4380]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x43A0]);
                  if (SLOBYTE(STACK[0x10BF]) < 0)
                  {
                    operator delete(STACK[0x10A8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4458]);
                  STACK[0x2D60] = &STACK[0x10C0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4418]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4438]);
                  if (SLOBYTE(STACK[0x10EF]) < 0)
                  {
                    operator delete(STACK[0x10D8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x44F0]);
                  STACK[0x2D60] = &STACK[0x10F0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x44B0]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x44D0]);
                  if (SLOBYTE(STACK[0x111F]) < 0)
                  {
                    operator delete(STACK[0x1108]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4588]);
                  STACK[0x2D60] = &STACK[0x1120];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4548]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4568]);
                  if (SLOBYTE(STACK[0x114F]) < 0)
                  {
                    operator delete(STACK[0x1138]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4620]);
                  STACK[0x2D60] = &STACK[0x1150];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x45E0]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4600]);
                  if (SLOBYTE(STACK[0x117F]) < 0)
                  {
                    operator delete(STACK[0x1168]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x46B8]);
                  STACK[0x2D60] = &STACK[0x1180];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4678]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4698]);
                  if (SLOBYTE(STACK[0x11AF]) < 0)
                  {
                    operator delete(STACK[0x1198]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4768]);
                  STACK[0x2D60] = &STACK[0x11B0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  if (SLOBYTE(STACK[0x4727]) < 0)
                  {
                    operator delete(STACK[0x4710]);
                  }

                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4728]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4748]);
                  if (SLOBYTE(STACK[0x11DF]) < 0)
                  {
                    operator delete(STACK[0x11C8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4800]);
                  STACK[0x2D60] = &STACK[0x11E0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x47C0]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x47E0]);
                  if (SLOBYTE(STACK[0x120F]) < 0)
                  {
                    operator delete(STACK[0x11F8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4898]);
                  STACK[0x2D60] = &STACK[0x1210];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4858]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4878]);
                  if (SLOBYTE(STACK[0x123F]) < 0)
                  {
                    operator delete(STACK[0x1228]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4930]);
                  STACK[0x2D60] = &STACK[0x1240];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x48F0]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4910]);
                  if (SLOBYTE(STACK[0x126F]) < 0)
                  {
                    operator delete(STACK[0x1258]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x49C8]);
                  STACK[0x2D60] = &STACK[0x1270];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4988]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x49A8]);
                  if (SLOBYTE(STACK[0x129F]) < 0)
                  {
                    operator delete(STACK[0x1288]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4A60]);
                  STACK[0x2D60] = &STACK[0x12A0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4A20]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4A40]);
                  if (SLOBYTE(STACK[0x12CF]) < 0)
                  {
                    operator delete(STACK[0x12B8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4AF8]);
                  STACK[0x2D60] = &STACK[0x12D0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4AB8]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4AD8]);
                  if (SLOBYTE(STACK[0x12FF]) < 0)
                  {
                    operator delete(STACK[0x12E8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4B90]);
                  STACK[0x2D60] = &STACK[0x1300];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4B50]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4B70]);
                  if (SLOBYTE(STACK[0x132F]) < 0)
                  {
                    operator delete(STACK[0x1318]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4C28]);
                  STACK[0x2D60] = &STACK[0x1330];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4BE8]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4C08]);
                  if (SLOBYTE(STACK[0x135F]) < 0)
                  {
                    operator delete(STACK[0x1348]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4CC0]);
                  STACK[0x2D60] = &STACK[0x1360];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4C80]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4CA0]);
                  if (SLOBYTE(STACK[0x138F]) < 0)
                  {
                    operator delete(STACK[0x1378]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4D58]);
                  STACK[0x2D60] = &STACK[0x1390];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4D18]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4D38]);
                  if (SLOBYTE(STACK[0x13BF]) < 0)
                  {
                    operator delete(STACK[0x13A8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4DF0]);
                  STACK[0x2D60] = &STACK[0x13C0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4DB0]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4DD0]);
                  if (SLOBYTE(STACK[0x13EF]) < 0)
                  {
                    operator delete(STACK[0x13D8]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4E88]);
                  STACK[0x2D60] = &STACK[0x13F0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4E48]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4E68]);
                  if (SLOBYTE(STACK[0x141F]) < 0)
                  {
                    operator delete(STACK[0x1408]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4F20]);
                  STACK[0x2D60] = &STACK[0x1420];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4EE0]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4F00]);
                  if (SLOBYTE(STACK[0x144F]) < 0)
                  {
                    operator delete(STACK[0x1438]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x4FB8]);
                  STACK[0x2D60] = &STACK[0x1450];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x4F78]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x4F98]);
                  if (SLOBYTE(STACK[0x147F]) < 0)
                  {
                    operator delete(STACK[0x1468]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5050]);
                  STACK[0x2D60] = &STACK[0x1480];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5010]);
                  std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5030]);
                  if (SLOBYTE(STACK[0x14AF]) < 0)
                  {
                    operator delete(STACK[0x1498]);
                  }

                  mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5160]);
                  STACK[0x2D60] = &STACK[0x14B0];
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                  v21 = &STACK[0x511F];
                  v22 = -120;
                  v23 = &STACK[0x511F];
                  while (1)
                  {
                    v24 = *v23;
                    v23 -= 3;
                    if (v24 < 0)
                    {
                      operator delete(*(v21 - 23));
                    }

                    v21 = v23;
                    v22 += 24;
                    if (!v22)
                    {
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5120]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5140]);
                      if (SLOBYTE(STACK[0x14DF]) < 0)
                      {
                        operator delete(STACK[0x14C8]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x51F8]);
                      STACK[0x2D60] = &STACK[0x14E0];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x51B8]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x51D8]);
                      if (SLOBYTE(STACK[0x150F]) < 0)
                      {
                        operator delete(STACK[0x14F8]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5290]);
                      STACK[0x2D60] = &STACK[0x1510];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5250]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5270]);
                      if (SLOBYTE(STACK[0x153F]) < 0)
                      {
                        operator delete(STACK[0x1528]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5328]);
                      STACK[0x2D60] = &STACK[0x1540];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x52E8]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5308]);
                      if (SLOBYTE(STACK[0x156F]) < 0)
                      {
                        operator delete(STACK[0x1558]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x53C0]);
                      STACK[0x2D60] = &STACK[0x1570];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5380]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x53A0]);
                      if (SLOBYTE(STACK[0x159F]) < 0)
                      {
                        operator delete(STACK[0x1588]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5458]);
                      STACK[0x2D60] = &STACK[0x15A0];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5418]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5438]);
                      if (SLOBYTE(STACK[0x15CF]) < 0)
                      {
                        operator delete(STACK[0x15B8]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x54F0]);
                      STACK[0x2D60] = &STACK[0x15D0];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x54B0]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x54D0]);
                      if (SLOBYTE(STACK[0x15FF]) < 0)
                      {
                        operator delete(STACK[0x15E8]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5588]);
                      STACK[0x2D60] = &STACK[0x1600];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5548]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5568]);
                      if (SLOBYTE(STACK[0x162F]) < 0)
                      {
                        operator delete(STACK[0x1618]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5620]);
                      STACK[0x2D60] = &STACK[0x1630];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x55E0]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5600]);
                      if (SLOBYTE(STACK[0x165F]) < 0)
                      {
                        operator delete(STACK[0x1648]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x56B8]);
                      STACK[0x2D60] = &STACK[0x1660];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5678]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5698]);
                      if (SLOBYTE(STACK[0x168F]) < 0)
                      {
                        operator delete(STACK[0x1678]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5750]);
                      STACK[0x2D60] = &STACK[0x1690];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5710]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5730]);
                      if (SLOBYTE(STACK[0x16BF]) < 0)
                      {
                        operator delete(STACK[0x16A8]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x57E8]);
                      STACK[0x2D60] = &STACK[0x16C0];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x57A8]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x57C8]);
                      if (SLOBYTE(STACK[0x16EF]) < 0)
                      {
                        operator delete(STACK[0x16D8]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5880]);
                      STACK[0x2D60] = &STACK[0x16F0];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5840]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5860]);
                      if (SLOBYTE(STACK[0x171F]) < 0)
                      {
                        operator delete(STACK[0x1708]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5918]);
                      STACK[0x2D60] = &STACK[0x1720];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x58D8]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x58F8]);
                      if (SLOBYTE(STACK[0x174F]) < 0)
                      {
                        operator delete(STACK[0x1738]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x59B0]);
                      STACK[0x2D60] = &STACK[0x1750];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5970]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5990]);
                      if (SLOBYTE(STACK[0x177F]) < 0)
                      {
                        operator delete(STACK[0x1768]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5A48]);
                      STACK[0x2D60] = &STACK[0x1780];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5A08]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5A28]);
                      if (SLOBYTE(STACK[0x17AF]) < 0)
                      {
                        operator delete(STACK[0x1798]);
                      }

                      mlx::core::PrimitiveSerializer::~PrimitiveSerializer(&STACK[0x5AE0]);
                      STACK[0x2D60] = &STACK[0x17B0];
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2D60]);
                      std::__function::__value_func<std::shared_ptr<mlx::core::Primitive> ()(mlx::core::io::ParallelFileReader &,mlx::core::Stream)>::~__value_func[abi:ne200100](&STACK[0x5AA0]);
                      std::__function::__value_func<void ()(mlx::core::io::FileWriter &,mlx::core::Primitive const&)>::~__value_func[abi:ne200100](&STACK[0x5AC0]);
                      if (SLOBYTE(STACK[0x17E7]) < 0)
                      {
                        operator delete(STACK[0x17D0]);
                      }

                      _Unwind_Resume(a1);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t mlx::core::serialize_primitive<mlx::core::AddMM>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v5 = *(a2 + 20);
  (*(*a1 + 32))(a1, &v5, 4);
  v6 = v3;
  return (*(*a1 + 32))(a1, &v6, 4);
}

uint64_t mlx::core::serialize_primitive<mlx::core::Arange>(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v4 = a2[5];
  v6 = a2[3];
  (*(*a1 + 32))(a1, &v6, 8);
  v6 = v3;
  (*(*a1 + 32))(a1, &v6, 8);
  v6 = v4;
  return (*(*a1 + 32))(a1, &v6, 8);
}

uint64_t mlx::core::serialize_primitive<mlx::core::ArgPartition>(uint64_t a1, uint64_t a2)
{
  v3 = HIDWORD(*(a2 + 20));
  v5 = *(a2 + 20);
  (*(*a1 + 32))(a1, &v5, 4);
  v6 = v3;
  return (*(*a1 + 32))(a1, &v6, 4);
}

uint64_t mlx::core::serialize_primitive<mlx::core::ArgReduce>(uint64_t a1, uint64_t a2)
{
  v3 = HIDWORD(*(a2 + 20));
  v5 = *(a2 + 20);
  (*(*a1 + 32))(a1, &v5, 4);
  v6 = v3;
  return (*(*a1 + 32))(a1, &v6, 4);
}

void mlx::core::deserialize_primitive<mlx::core::ArgSort>(uint64_t a1)
{
  v1 = 0;
  (*(*a1 + 32))(a1, &v1, 4);
  operator new();
}

uint64_t mlx::core::serialize_primitive<mlx::core::AsType>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v5 = v3;
  (*(*a1 + 32))(a1, &v5, 4);
  v6 = BYTE4(v3);
  return (*(*a1 + 32))(a1, &v6, 1);
}

void mlx::core::serialize_primitive<mlx::core::AsStrided>(uint64_t a1, uint64_t *a2)
{
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIiNS_9allocatorIiEEEENS3_IxNS4_IxEEEEmEEC2B8ne200100IJLm0ELm1ELm2EEJS6_S8_mEJEJEJRKS6_RKS8_RKmEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSI_IJDpT2_EEEDpOT3_(v3, a2 + 3, a2 + 6, a2 + 9);
  v6 = a1;
  mlx::core::serialize<std::tuple<std::vector<int>,std::vector<long long>,unsigned long>>(mlx::core::io::FileWriter &,std::tuple<std::vector<int>,std::vector<long long>,unsigned long>)::{lambda(std::tuple<std::vector<int>,std::vector<long long>,unsigned long> &)#1}::operator()<std::vector<int>,std::vector<long long>,unsigned long>(&v6, v3, __p, &v5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }
}

void sub_25A298EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::deserialize_primitive<mlx::core::BitwiseBinary>(uint64_t a1)
{
  v1 = 0;
  (*(*a1 + 32))(a1, &v1, 4);
  operator new();
}

void mlx::core::deserialize_primitive<mlx::core::BlockMaskedMM>(uint64_t a1)
{
  v1 = 0;
  (*(*a1 + 32))(a1, &v1, 4);
  operator new();
}

void mlx::core::serialize_primitive<mlx::core::Broadcast>(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  mlx::core::serialize<std::vector<int>>(a1, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_25A299150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::deserialize_primitive<mlx::core::Broadcast>(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = a3;
  mlx::core::deserialize<std::vector<int>>(a1, &__p);
  std::allocate_shared[abi:ne200100]<mlx::core::Broadcast,std::allocator<mlx::core::Broadcast>,mlx::core::Stream &,std::vector<int>,0>();
}

void sub_25A2991C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::serialize_primitive<mlx::core::BroadcastAxes>(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  mlx::core::serialize<std::vector<int>>(a1, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_25A299248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A299314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::deserialize_primitive<mlx::core::Concatenate>(uint64_t a1)
{
  v1 = 0;
  (*(*a1 + 32))(a1, &v1, 4);
  operator new();
}

void mlx::core::serialize_primitive<mlx::core::Convolution>(uint64_t a1, uint64_t a2)
{
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4ELm5EEEEJNS_6vectorIiNS_9allocatorIiEEEES6_S6_S6_ibEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4ELm5EEJS6_S6_S6_S6_ibEJEJEJRKS6_SA_SA_SA_RKiRKbEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_(v3, (a2 + 24), (a2 + 48), (a2 + 72), (a2 + 96), (a2 + 120), (a2 + 124));
  v9 = a1;
  mlx::core::serialize<std::tuple<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL>>(mlx::core::io::FileWriter &,std::tuple<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL>)::{lambda(std::tuple<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL> &)#1}::operator()<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL>(&v9, v3, v4, v5, __p, &v7, v8);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v5[0])
  {
    v5[1] = v5[0];
    operator delete(v5[0]);
  }

  if (v4[0])
  {
    v4[1] = v4[0];
    operator delete(v4[0]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }
}

void sub_25A2996F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::tuple<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::serialize_primitive<mlx::core::DynamicSlice>(uint64_t a1, uint64_t a2)
{
  std::pair<std::vector<int>,std::vector<int>>::pair[abi:ne200100]<true,0>(v3, (a2 + 24), (a2 + 48));
  v5 = a1;
  mlx::core::serialize<std::pair<std::vector<int>,std::vector<int>>>(mlx::core::io::FileWriter &,std::pair<std::vector<int>,std::vector<int>>)::{lambda(std::pair<std::vector<int>,std::vector<int>> &)#1}::operator()<std::vector<int>,std::vector<int>>(&v5, v3, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }
}

void sub_25A299AF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(va);
  _Unwind_Resume(a1);
}

void sub_25A299B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::serialize_primitive<mlx::core::DynamicSliceUpdate>(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  mlx::core::serialize<std::vector<int>>(a1, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_25A299C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A299CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}