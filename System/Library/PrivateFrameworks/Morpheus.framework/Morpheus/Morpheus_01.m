void sub_25A24BE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if ((v37 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a36);
      if (a28)
      {
        operator delete(a28);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v37)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v36);
  goto LABEL_6;
}

void mlx::core::pad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, mlx::core *a5, uint64_t a6)
{
  v12 = (*(*a1 + 8) - **a1) >> 2;
  LODWORD(v23[0]) = 0;
  std::vector<int>::vector[abi:ne200100](&v24, v12);
  if (v24 != v25)
  {
    v13 = 0;
    v14 = (v25 - v24 - 4) >> 2;
    v15 = vdupq_n_s64(v14);
    v16 = (v14 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v17 = v24 + 8;
    do
    {
      v18 = vdupq_n_s64(v13);
      v19 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_25A99B0D0)));
      if (vuzp1_s16(v19, *v15.i8).u8[0])
      {
        *(v17 - 2) = v13;
      }

      if (vuzp1_s16(v19, *&v15).i8[2])
      {
        *(v17 - 1) = v13 + 1;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_25A99B0C0)))).i32[1])
      {
        *v17 = v13 + 2;
        v17[1] = v13 + 3;
      }

      v13 += 4;
      v17 += 4;
    }

    while (v16 != v13);
  }

  memset(v23, 0, sizeof(v23));
  memset(__p, 0, sizeof(__p));
  v20 = *a2;
  v21 = *(a2 + 8);
  while (v20 != v21)
  {
    std::vector<int>::push_back[abi:ne200100](v23, v20);
    std::vector<int>::push_back[abi:ne200100](__p, v20 + 1);
    v20 += 2;
  }

  mlx::core::pad(a1, &v24, v23, __p, a3, a4, a5, a6);
}

{
  std::vector<std::pair<int,int>>::vector[abi:ne200100](&__p, (*(*a1 + 8) - **a1) >> 2);
  mlx::core::pad(a1, &__p, a3, a4, a5, a6);
}

{
  std::vector<std::pair<int,int>>::vector[abi:ne200100](&__p, (*(*a1 + 8) - **a1) >> 2);
  mlx::core::pad(a1, &__p, a3, a4, a5, a6);
}

void sub_25A24C1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A24C29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A24C358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::moveaxis@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v29 = a1;
  v11 = mlx::core::moveaxis(mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(&v29, a2);
  __x = v11;
  result = mlx::core::moveaxis(mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(&v29, a3);
  if (v11 != result)
  {
    v14 = result;
    std::vector<int>::vector[abi:ne200100](&v28, (*(*a1 + 8) - **a1) >> 2);
    begin = v28.__begin_;
    end = v28.__end_;
    if (v28.__begin_ != v28.__end_)
    {
      v17 = 0;
      v18 = (v28.__end_ - v28.__begin_ - 4) >> 2;
      v19 = vdupq_n_s64(v18);
      v20 = (v18 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v21 = v28.__begin_ + 2;
      do
      {
        v22 = vdupq_n_s64(v17);
        v23 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_25A99B0D0)));
        if (vuzp1_s16(v23, *v19.i8).u8[0])
        {
          *(v21 - 2) = v17;
        }

        if (vuzp1_s16(v23, *&v19).i8[2])
        {
          *(v21 - 1) = v17 + 1;
        }

        if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_25A99B0C0)))).i32[1])
        {
          *v21 = v17 + 2;
          v21[1] = v17 + 3;
        }

        v17 += 4;
        v21 += 4;
      }

      while (v20 != v17);
    }

    v24 = &begin[v11];
    v25 = (end - (v24 + 1));
    if (end != v24 + 1)
    {
      memmove(v24, v24 + 1, end - (v24 + 1));
      begin = v28.__begin_;
    }

    v28.__end_ = &v25[v24];
    v26.__i_ = &begin[v14];
    std::vector<int>::insert(&v28, v26, &__x);
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v28.__begin_, v28.__end_, v28.__end_ - v28.__begin_);
    mlx::core::transpose(a1, __p, a4, a5);
  }

  v13 = *(a1 + 8);
  *a6 = *a1;
  a6[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_25A24C564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::moveaxis(mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v3 = (*(**a1 + 8) - ***a1) >> 2;
  if (-v3 > a2 || v3 <= a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v12);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "[moveaxis] Invalid axis ", 24);
    v7 = MEMORY[0x25F851360](v6, a2);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " for array with ", 16);
    v9 = MEMORY[0x25F851360](v8, v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v12, &v11);
    std::logic_error::logic_error(exception, &v11);
    exception->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(exception, off_279921400, MEMORY[0x277D825F8]);
  }

  return (v3 & (a2 >> 31)) + a2;
}

void sub_25A24C6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::transpose(uint64_t **a1, unsigned int **a2, mlx::core *a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    v10 = *a1;
    v11 = *a2;
    do
    {
      v12 = *v11;
      if ((*v11 & 0x80000000) != 0)
      {
        v12 += (v10[1] - *v10) >> 2;
      }

      *v11++ = v12;
    }

    while (v11 != v9);
  }

  v13 = v9 - v8;
  if (v13 == (*a1)[1] - **a1)
  {
    LODWORD(v41[0]) = 0;
    std::vector<int>::vector[abi:ne200100](&v40, v13 >> 2);
    v14 = *a2;
    v15 = a2[1];
    if (*a2 != v15)
    {
      v16 = *a1;
      v17 = v40.__r_.__value_.__r.__words[0];
      v18 = *a2;
      do
      {
        v19 = *v18;
        if ((v19 & 0x80000000) != 0 || v19 >= (v16[1] - *v16) >> 2)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](v41);
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "[transpose] Invalid axis (", 26);
          v27 = MEMORY[0x25F851360](v26, *v18);
          v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ") for array with ", 17);
          v29 = MEMORY[0x25F851380](v28, ((*a1)[1] - **a1) >> 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " dimensions.", 12);
          exception = __cxa_allocate_exception(0x10uLL);
          std::ostringstream::str[abi:ne200100](v41, &v42);
          std::logic_error::logic_error(exception, &v42);
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
        }

        if (*(v17 + 4 * v19))
        {
          v31 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v31, "[transpose] Repeat axes not allowed.");
          v31->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v31, off_279921408, MEMORY[0x277D82610]);
        }

        *(v17 + 4 * v19) = 1;
        ++v18;
      }

      while (v18 != v15);
      v20 = (v15 - v14) >> 2;
      v21 = **a1;
      v22 = v40.__r_.__value_.__r.__words[0];
      if (v20 <= 1)
      {
        v20 = 1;
      }

      do
      {
        v23 = *v14;
        v14 += 4;
        *v22++ = *(v21 + 4 * v23);
        --v20;
      }

      while (v20);
    }

    __p = v40;
    memset(&v40, 0, sizeof(v40));
    v24 = (*a1)[7];
    v37 = mlx::core::to_stream(a3, a4);
    v38 = v25;
    std::allocate_shared[abi:ne200100]<mlx::core::Transpose,std::allocator<mlx::core::Transpose>,mlx::core::Stream,std::vector<int>,0>();
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v41);
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "[transpose] Recived ", 20);
  v33 = MEMORY[0x25F851380](v32, a2[1] - *a2);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " axes for array with ", 21);
  v35 = MEMORY[0x25F851380](v34, ((*a1)[1] - **a1) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " dimensions.", 12);
  v36 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v41, &v40);
  std::logic_error::logic_error(v36, &v40);
  v36->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v36, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A24CB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((v30 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a28);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v29);
  goto LABEL_6;
}

void mlx::core::swapaxes(uint64_t **a1, uint64_t a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v25 = a1;
  v9 = mlx::core::swapaxes(mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(&v25, a2);
  v10 = mlx::core::swapaxes(mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(&v25, a3);
  std::vector<int>::vector[abi:ne200100](&v22, ((*a1)[1] - **a1) >> 2);
  v11 = v22;
  v12 = v23;
  if (v22 != v23)
  {
    v13 = 0;
    v14 = (v23 - v22 - 4) >> 2;
    v15 = vdupq_n_s64(v14);
    v16 = (v14 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v17 = v22 + 8;
    do
    {
      v18 = vdupq_n_s64(v13);
      v19 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_25A99B0D0)));
      if (vuzp1_s16(v19, *v15.i8).u8[0])
      {
        *(v17 - 2) = v13;
      }

      if (vuzp1_s16(v19, *&v15).i8[2])
      {
        *(v17 - 1) = v13 + 1;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_25A99B0C0)))).i32[1])
      {
        *v17 = v13 + 2;
        v17[1] = v13 + 3;
      }

      v13 += 4;
      v17 += 4;
    }

    while (v16 != v13);
  }

  v20 = v11[v9];
  v11[v9] = v11[v10];
  v11[v10] = v20;
  __p[0] = v11;
  __p[1] = v12;
  __p[2] = v24;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  mlx::core::transpose(a1, __p, a4, a5);
}

void sub_25A24CDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
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

uint64_t mlx::core::swapaxes(mlx::core::array const&,int,int,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v3 = (*(**a1 + 8) - ***a1) >> 2;
  if (-v3 > a2 || v3 <= a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v12);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "[swapaxes] Invalid axis ", 24);
    v7 = MEMORY[0x25F851360](v6, a2);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " for array with ", 16);
    v9 = MEMORY[0x25F851360](v8, v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v12, &v11);
    std::logic_error::logic_error(exception, &v11);
    exception->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(exception, off_279921400, MEMORY[0x277D825F8]);
  }

  return (v3 & (a2 >> 31)) + a2;
}

void sub_25A24CF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::transpose(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  std::vector<int>::vector[abi:ne200100](&v18, ((*a1)[1] - **a1) >> 2);
  v7 = v18;
  v6 = v19;
  if (v19 != v18)
  {
    v8 = 0;
    v9 = (v19 - v18 - 4) >> 2;
    v10 = vdupq_n_s64(v9);
    v11 = (v9 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v12 = v19 - 8;
    do
    {
      v13 = vdupq_n_s64(v8);
      v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_25A99B0D0)));
      if (vuzp1_s16(v14, *v10.i8).u8[0])
      {
        *(v12 + 1) = v8;
      }

      if (vuzp1_s16(v14, *&v10).i8[2])
      {
        *v12 = v8 + 1;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_25A99B0C0)))).i32[1])
      {
        *(v12 - 1) = v8 + 2;
        *(v12 - 2) = v8 + 3;
      }

      v8 += 4;
      v12 -= 16;
    }

    while (v11 != v8);
  }

  __p[0] = v7;
  __p[1] = v6;
  __p[2] = v20;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v15 = mlx::core::to_stream(a2, a3);
  mlx::core::transpose(a1, __p, v15, v16 | 0x100000000);
}

void sub_25A24D0B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::broadcast_arrays(uint64_t a1@<X0>, int **a2@<X1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v26[5] = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = v10 - *a1;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  if ((v11 >> 4) > 1)
  {
    mlx::core::BroadcastAxes::output_shape(a1, a2, v25);
    v24[0] = v25;
    v24[1] = a2;
    if (mlx::core::detail::InTracing::in_dynamic_tracing(v14))
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      if (*a1 != *(a1 + 8))
      {
        mlx::core::stop_gradient(*a1, a3, a4);
      }

      v26[0] = &v21;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v26);
    }

    else
    {
      v15 = *a1;
      v16 = *(a1 + 8);
      if (*a1 != v16)
      {
        do
        {
          mlx::core::broadcast_arrays(std::vector<mlx::core::array> const&,std::vector<int>,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()(v24, v15, &v21);
          v17 = **v15;
          v18 = (*v15)[1] - v17;
          if (v18 != v22 - v21 || memcmp(v17, v21, v18))
          {
            v22 = 0;
            v23 = 0;
            v21 = 0;
            v19 = (*v15)[7];
            mlx::core::to_stream(a3, a4);
            std::allocate_shared[abi:ne200100]<mlx::core::Broadcast,std::allocator<mlx::core::Broadcast>,mlx::core::Stream,std::vector<int> &,0>();
          }

          std::vector<mlx::core::array>::push_back[abi:ne200100](a5, v15);
          if (v21)
          {
            v22 = v21;
            operator delete(v21);
          }

          v15 += 2;
        }

        while (v15 != v16);
      }
    }

    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }

    v20 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = *MEMORY[0x277D85DE8];

    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a5, v9, v10, v11 >> 4);
  }
}

void sub_25A24D790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  v41 = *(v39 - 192);
  if (v41)
  {
    *(v39 - 184) = v41;
    operator delete(v41);
  }

  *(v39 - 192) = v38;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v39 - 192));
  _Unwind_Resume(a1);
}

uint64_t mlx::core::broadcast_arrays(std::vector<mlx::core::array> const&,std::vector<int>,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a3, *v6, v6[1], (v6[1] - *v6) >> 2);
  v8 = *a1[1];
  if (a1[1][1] != v8)
  {
    v9 = 0;
    do
    {
      v10 = *(v8 + 4 * v9);
      v11 = (*a2)[1] - **a2;
      if (v10 + (v11 >> 2) > (v11 >> 2) || v9 && v10 <= *(v8 + 4 * v9 - 4))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "[broadcast_arrays] Received invalid axes to ignore.");
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
      }

      result = mlx::core::array::shape(a2, v10);
      *(a3[1] + 4 * v10) = result;
      ++v9;
      v8 = *a1[1];
    }

    while (v9 < (a1[1][1] - v8) >> 2);
  }

  return result;
}

void sub_25A24DA64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::stop_gradient(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  memset(__p, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = (*a1)[7];
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A24DC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a17);
  mlx::core::array::~array(&a18);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::broadcast_arrays(uint64_t a1@<X0>, uint64_t a2@<X1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8);
  v19[0] = *a1;
  v19[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 8);
  v19[2] = *a2;
  v19[3] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v16, 0, sizeof(v16));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v16, v19, &v20, 2uLL);
  mlx::core::broadcast_arrays(v16, a3, a4, v17);
  v18 = v16;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v18);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v19[i]);
  }

  v11 = v17[0];
  v12 = *(v17[0] + 8);
  *a5 = *v17[0];
  a5[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  a5[2] = v14;
  a5[3] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v19[0] = v17;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v19);
  v15 = *MEMORY[0x277D85DE8];
}

void sub_25A24DDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, char a16)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a15);
  for (i = 16; i != -16; i -= 16)
  {
    mlx::core::array::~array((&a16 + i));
  }

  _Unwind_Resume(a1);
}

void mlx::core::broadcast_arrays(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 8);
  v23[0] = *a1;
  v23[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 8);
  v23[2] = *a2;
  v23[3] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v20, 0, sizeof(v20));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v20, v23, &v24, 2uLL);
  *__p = *a3;
  v19 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  mlx::core::broadcast_arrays(v20, __p, a4, a5, v21);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v22 = v20;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v22);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v23[i]);
  }

  v13 = v21[0];
  v14 = *(v21[0] + 8);
  *a6 = *v21[0];
  a6[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  a6[2] = v16;
  a6[3] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v23[0] = v21;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v23);
  v17 = *MEMORY[0x277D85DE8];
}

void sub_25A24DF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  a19 = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a19);
  for (i = 16; i != -16; i -= 16)
  {
    mlx::core::array::~array((v19 - 72 + i));
  }

  _Unwind_Resume(a1);
}

void mlx::core::equal(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v21[0]) = v8;
  BYTE4(v21[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v19) = v9;
  BYTE4(v19) = BYTE4(v9);
  v10 = mlx::core::promote_types(v21, &v19);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v17, v10, a3, a4, v21);
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v16, v10, a3, a4, &v22);
  memset(v18, 0, sizeof(v18));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v18, v21, &v23, 2uLL);
  mlx::core::broadcast_arrays(v18, a3, a4, &v19);
  v20 = v18;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v20);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v21[i]);
  }

  mlx::core::array::~array(v16);
  mlx::core::array::~array(v17);
  v14 = *v19;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A24E234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 104) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 104) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  _Unwind_Resume(a1);
}

void mlx::core::not_equal(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v21[0]) = v8;
  BYTE4(v21[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v19) = v9;
  BYTE4(v19) = BYTE4(v9);
  v10 = mlx::core::promote_types(v21, &v19);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v17, v10, a3, a4, v21);
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v16, v10, a3, a4, &v22);
  memset(v18, 0, sizeof(v18));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v18, v21, &v23, 2uLL);
  mlx::core::broadcast_arrays(v18, a3, a4, &v19);
  v20 = v18;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v20);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v21[i]);
  }

  mlx::core::array::~array(v16);
  mlx::core::array::~array(v17);
  v14 = *v19;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A24E58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 104) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 104) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  _Unwind_Resume(a1);
}

void mlx::core::greater(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v21[0]) = v8;
  BYTE4(v21[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v19) = v9;
  BYTE4(v19) = BYTE4(v9);
  v10 = mlx::core::promote_types(v21, &v19);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v17, v10, a3, a4, v21);
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v16, v10, a3, a4, &v22);
  memset(v18, 0, sizeof(v18));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v18, v21, &v23, 2uLL);
  mlx::core::broadcast_arrays(v18, a3, a4, &v19);
  v20 = v18;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v20);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v21[i]);
  }

  mlx::core::array::~array(v16);
  mlx::core::array::~array(v17);
  v14 = *v19;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A24E8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 104) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 104) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  _Unwind_Resume(a1);
}

void mlx::core::less(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v21[0]) = v8;
  BYTE4(v21[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v19) = v9;
  BYTE4(v19) = BYTE4(v9);
  v10 = mlx::core::promote_types(v21, &v19);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v17, v10, a3, a4, v21);
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v16, v10, a3, a4, &v22);
  memset(v18, 0, sizeof(v18));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v18, v21, &v23, 2uLL);
  mlx::core::broadcast_arrays(v18, a3, a4, &v19);
  v20 = v18;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v20);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v21[i]);
  }

  mlx::core::array::~array(v16);
  mlx::core::array::~array(v17);
  v14 = *v19;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A24EC3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 104) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 104) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  _Unwind_Resume(a1);
}

void mlx::core::less_equal(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v21[0]) = v8;
  BYTE4(v21[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v19) = v9;
  BYTE4(v19) = BYTE4(v9);
  v10 = mlx::core::promote_types(v21, &v19);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v17, v10, a3, a4, v21);
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v16, v10, a3, a4, &v22);
  memset(v18, 0, sizeof(v18));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v18, v21, &v23, 2uLL);
  mlx::core::broadcast_arrays(v18, a3, a4, &v19);
  v20 = v18;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v20);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v21[i]);
  }

  mlx::core::array::~array(v16);
  mlx::core::array::~array(v17);
  v14 = *v19;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A24EF94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 104) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 104) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  _Unwind_Resume(a1);
}

void mlx::core::array_equal(const void ***a1, const void ***a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *a2;
  v8 = **a1;
  v9 = v6[1] - v8;
  v10 = **a2;
  if (v9 == v7[1] - v10 && !memcmp(v8, v10, v9))
  {
    v13 = v6[7];
    v22 = v13;
    v23 = BYTE4(v13);
    v14 = v7[7];
    v18 = v14;
    v19 = BYTE4(v14);
    v15 = mlx::core::promote_types(&v22, &v18);
    v20 = v15;
    v21 = BYTE4(v15);
    mlx::core::issubdtype(&v20, &mlx::core::inexact);
    v16 = *a1;
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v16, v16[1], (v16[1] - *v16) >> 2);
    mlx::core::to_stream(a4, a5);
    operator new();
  }

  mlx::core::TypeToDtype<BOOL>::operator mlx::core::Dtype();
  mlx::core::array::array<BOOL>();
}

void sub_25A24F328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char *a25)
{
  mlx::core::array::~array(&a22);
  a25 = &a14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a25);
  v27 = (v25 - 104);
  v28 = -32;
  do
  {
    mlx::core::array::~array(v27);
    v27 = (v29 - 16);
    v28 += 16;
  }

  while (v28);
  mlx::core::array::~array(&a10);
  mlx::core::array::~array(&a12);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::all(uint64_t **a1@<X0>, char a2@<W1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  std::vector<int>::vector[abi:ne200100](&__p, ((*a1)[1] - **a1) >> 2);
  if (__p != v18)
  {
    v10 = 0;
    v11 = (v18 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0D0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0C0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  mlx::core::all(a1, &__p, a2, a3, a4, a5);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_25A24F51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::isnan(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v6 = (*a1)[7];
  v9 = v6;
  v10 = BYTE4(v6);
  if (mlx::core::issubdtype(&v9, &mlx::core::integer))
  {
    v7 = *a1;
  }

  else
  {
    v7 = *a1;
    if (*(*a1 + 14))
    {
      mlx::core::not_equal(a1, a1, a2, a3);
    }
  }

  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v7, v7[1], (v7[1] - *v7) >> 2);
  mlx::core::full<BOOL>(__p);
}

void sub_25A24F614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::full<BOOL>(uint64_t a1)
{
  *__p = *a1;
  v2 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  mlx::core::array::array<BOOL>();
}

void sub_25A24F6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, char a10, uint64_t a11, uint64_t a12)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::isinf(uint64_t **a1)
{
  v2 = (*a1)[7];
  v4 = v2;
  v5 = BYTE4(v2);
  if (mlx::core::issubdtype(&v4, &mlx::core::integer))
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1;
    if (*(*a1 + 14))
    {
      mlx::core::isposinf(a1);
    }
  }

  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  mlx::core::full<BOOL>(__p);
}

void sub_25A24F80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15)
{
  mlx::core::array::~array(&a10);
  mlx::core::array::~array(&a12);
  _Unwind_Resume(a1);
}

void mlx::core::logical_or(uint64_t **a1, uint64_t **a2, mlx::core *a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v13, 0, a3, a4, v17);
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v12, 0, a3, a4, &v18);
  memset(v14, 0, sizeof(v14));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v14, v17, &v19, 2uLL);
  mlx::core::broadcast_arrays(v14, a3, a4, &v15);
  v16 = v14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v16);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v17[i]);
  }

  mlx::core::array::~array(v12);
  mlx::core::array::~array(v13);
  v10 = *v15;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v10, v10[1], (v10[1] - *v10) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A24FA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 88) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 88));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 88) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 88));
  _Unwind_Resume(a1);
}

void mlx::core::isposinf(uint64_t **a1)
{
  v2 = (*a1)[7];
  v4 = v2;
  v5 = BYTE4(v2);
  if (mlx::core::issubdtype(&v4, &mlx::core::integer))
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1;
    if ((*a1)[7])
    {
      mlx::core::array::array<float>();
    }
  }

  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  mlx::core::full<BOOL>(__p);
}

void mlx::core::isneginf(uint64_t **a1)
{
  v2 = (*a1)[7];
  v4 = v2;
  v5 = BYTE4(v2);
  if (mlx::core::issubdtype(&v4, &mlx::core::integer))
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1;
    if ((*a1)[7])
    {
      mlx::core::array::array<float>();
    }
  }

  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  mlx::core::full<BOOL>(__p);
}

void mlx::core::isfinite(uint64_t **a1)
{
  v2 = (*a1)[7];
  v4 = v2;
  v5 = BYTE4(v2);
  if (mlx::core::issubdtype(&v4, &mlx::core::integer))
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1;
    if (*(*a1 + 14))
    {
      mlx::core::isinf(a1);
    }
  }

  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  mlx::core::full<BOOL>(__p);
}

void sub_25A24FEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17)
{
  mlx::core::array::~array(&a14);
  mlx::core::array::~array(&a10);
  mlx::core::array::~array(&a12);
  _Unwind_Resume(a1);
}

void mlx::core::logical_not(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  memset(__p, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v5, v5[1], (v5[1] - *v5) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A2500BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a19);
  mlx::core::array::~array((v19 - 72));
  mlx::core::array::~array(&a9);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx::core::nan_to_num@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(*a1 + 56);
  LODWORD(v15) = v12;
  BYTE4(v15) = BYTE4(v12);
  result = mlx::core::issubdtype(&v15, &mlx::core::inexact);
  if (result)
  {
    if ((a2 & 0x100000000) != 0)
    {
      if ((a3 & 0x100000000) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      mlx::core::nan_to_num(mlx::core::array const&,float,std::optional<float>,std::optional<float>,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()<mlx::core::Dtype>(&v15);
      if ((a3 & 0x100000000) != 0)
      {
LABEL_9:
        mlx::core::isnan(a1, a4, a5);
      }
    }

    mlx::core::nan_to_num(mlx::core::array const&,float,std::optional<float>,std::optional<float>,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()<mlx::core::Dtype>(&v15);
    goto LABEL_9;
  }

  v14 = *(a1 + 8);
  *a6 = *a1;
  a6[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_25A250324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a9);
  mlx::core::array::~array(&a11);
  mlx::core::array::~array(v13);
  _Unwind_Resume(a1);
}

float mlx::core::nan_to_num(mlx::core::array const&,float,std::optional<float>,std::optional<float>,std::variant<std::monostate,mlx::core::Stream,mlx::core::Device>)::$_0::operator()<mlx::core::Dtype>(void *a1)
{
  v1 = *a1;
  if (*a1 == 9)
  {
    return 0.0;
  }

  if (v1 != 10)
  {
    if (v1 != 12)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v8);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[nan_to_num] Does not yet support given type: ", 46);
      v5 = mlx::core::operator<<(v4, a1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ".", 1);
      exception = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v8, &v7);
      std::logic_error::logic_error(exception, &v7);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }

    return 0.0;
  }

  return 3.4028e38;
}

void sub_25A25047C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_25A2508F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va6, a5);
  va_start(va5, a5);
  va_start(va4, a5);
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  va_copy(va4, va3);
  v17 = va_arg(va4, void);
  v19 = va_arg(va4, void);
  va_copy(va5, va4);
  v20 = va_arg(va5, void);
  v22 = va_arg(va5, void);
  va_copy(va6, va5);
  v23 = va_arg(va6, void);
  v25 = va_arg(va6, void);
  mlx::core::array::~array(va);
  mlx::core::array::~array(va1);
  mlx::core::array::~array(va2);
  mlx::core::array::~array(va3);
  mlx::core::array::~array(va4);
  mlx::core::array::~array(va5);
  mlx::core::array::~array(va6);
  mlx::core::array::~array(v5);
  mlx::core::array::~array((v6 - 112));
  mlx::core::array::~array((v6 - 96));
  _Unwind_Resume(a1);
}

void mlx::core::abs(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  __p[7] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  memset(__p, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = (*a1)[7];
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A250C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  mlx::core::array::~array(&a10);
  mlx::core::array::~array(v21);
  _Unwind_Resume(a1);
}

void mlx::core::logical_and(uint64_t **a1, uint64_t **a2, mlx::core *a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v13, 0, a3, a4, v17);
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v12, 0, a3, a4, &v18);
  memset(v14, 0, sizeof(v14));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v14, v17, &v19, 2uLL);
  mlx::core::broadcast_arrays(v14, a3, a4, &v15);
  v16 = v14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v16);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v17[i]);
  }

  mlx::core::array::~array(v12);
  mlx::core::array::~array(v13);
  v10 = *v15;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v10, v10[1], (v10[1] - *v10) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A250EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 88) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 88));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 88) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 88));
  _Unwind_Resume(a1);
}

void mlx::core::all(uint64_t **a1@<X0>, unsigned int **a2@<X1>, char a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  if (v22 != 1)
  {
    *__p = *v19;
    v17 = v20;
    v19[1] = 0;
    v20 = 0;
    v19[0] = 0;
    mlx::core::to_stream(a4, a5);
    std::allocate_shared[abi:ne200100]<mlx::core::Reduce,std::allocator<mlx::core::Reduce>,mlx::core::Stream,mlx::core::Reduce::ReduceType,std::vector<int> &,0>();
  }

  v11 = a1[1];
  v18[0] = *a1;
  v18[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v18, 0, a4, a5, a6);
  mlx::core::array::~array(v18);
  if ((a3 & 1) == 0)
  {
    mlx::core::squeeze(a6, v21, a4, a5, &v15);
    v12 = v15;
    v15 = 0uLL;
    v13 = *(a6 + 8);
    *a6 = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    mlx::core::array::~array(&v15);
  }

  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_25A2511D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  *(v27 - 96) = v26;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v27 - 96));
  mlx::core::array::~array((v27 - 88));
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(&a26);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::compute_reduce_shape(unsigned int **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v35[0] = 1;
  v33 = 0;
  v34 = 0;
  v32 = &v33;
  v5 = *a2;
  v4 = a2[1];
  v6 = v4 - *a2;
  v7 = v6 >> 2;
  v8 = *a1;
  v9 = a1[1];
  if (*a1 == v9)
  {
    v14 = 0;
    v15 = *a1;
  }

  else
  {
    v11 = v6 >> 2;
    do
    {
      v12 = *v8;
      v13 = (v11 & (v12 >> 31)) + v12;
      v31 = v13;
      if ((v13 & 0x80000000) != 0 || v7 <= v13)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "Invalid axis ", 13);
        v21 = MEMORY[0x25F851360](v20, v12);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " for array with ", 16);
        v23 = MEMORY[0x25F851380](v22, v7);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " dimensions.", 12);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](&v28, &__p);
        std::logic_error::logic_error(exception, &__p);
        exception->__vftable = (MEMORY[0x277D828E8] + 16);
        __cxa_throw(exception, off_279921400, MEMORY[0x277D825F8]);
      }

      std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v32, &v31);
      ++v8;
    }

    while (v8 != v9);
    v14 = v34;
    v8 = *a1;
    v15 = a1[1];
  }

  if (v14 != v15 - v8)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v25, "Duplicate axes detected in reduction.");
    v25->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v25, off_279921408, MEMORY[0x277D82610]);
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v16 = 0;
  if (v7 <= 1)
  {
    v7 = 1;
  }

  v17 = 1;
  do
  {
    v18 = v33;
    if (!v33)
    {
LABEL_18:
      std::vector<int>::push_back[abi:ne200100](&v28, (*a2 + 4 * v16));
      goto LABEL_20;
    }

    while (1)
    {
      v19 = *(v18 + 7);
      if (v16 >= v19)
      {
        break;
      }

LABEL_17:
      v18 = *v18;
      if (!v18)
      {
        goto LABEL_18;
      }
    }

    if (v16 > v19)
    {
      ++v18;
      goto LABEL_17;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 1;
    std::vector<int>::push_back[abi:ne200100](&v28, &__p);
LABEL_20:
    v17 &= *(v29 - 1) == *(*a2 + 4 * v16);
    v35[0] = v17;
    ++v16;
  }

  while (v16 != v7);
LABEL_21:
  std::vector<int>::vector[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>,0>(&__p, v32, &v33);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIiNS_9allocatorIiEEEES6_bEEC2B8ne200100IJLm0ELm1ELm2EEJS6_S6_bEJEJEJRS6_S9_RbEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(a3, &v28, &__p, v35);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  std::__tree<int>::destroy(&v32, v33);
}

void sub_25A251540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a17);
      std::__tree<int>::destroy(v20 - 120, *(v20 - 112));
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

uint64_t std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void mlx::core::all(uint64_t **a1@<X0>, int a2@<W1>, char a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v11, &__p, 1uLL);
  mlx::core::all(a1, &__p, a3, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_25A2516C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::any(uint64_t **a1@<X0>, char a2@<W1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  std::vector<int>::vector[abi:ne200100](&__p, ((*a1)[1] - **a1) >> 2);
  if (__p != v18)
  {
    v10 = 0;
    v11 = (v18 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0D0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0C0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  mlx::core::any(a1, &__p, a2, a3, a4, a5);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_25A251824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::any(uint64_t **a1@<X0>, unsigned int **a2@<X1>, char a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  if (v22 != 1)
  {
    *__p = *v19;
    v17 = v20;
    v19[1] = 0;
    v20 = 0;
    v19[0] = 0;
    mlx::core::to_stream(a4, a5);
    std::allocate_shared[abi:ne200100]<mlx::core::Reduce,std::allocator<mlx::core::Reduce>,mlx::core::Stream,mlx::core::Reduce::ReduceType,std::vector<int> &,0>();
  }

  v11 = a1[1];
  v18[0] = *a1;
  v18[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v18, 0, a4, a5, a6);
  mlx::core::array::~array(v18);
  if ((a3 & 1) == 0)
  {
    mlx::core::squeeze(a6, v21, a4, a5, &v15);
    v12 = v15;
    v15 = 0uLL;
    v13 = *(a6 + 8);
    *a6 = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    mlx::core::array::~array(&v15);
  }

  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_25A251A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  *(v27 - 96) = v26;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v27 - 96));
  mlx::core::array::~array((v27 - 88));
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(&a26);
  _Unwind_Resume(a1);
}

void mlx::core::any(uint64_t **a1@<X0>, int a2@<W1>, char a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v11, &__p, 1uLL);
  mlx::core::any(a1, &__p, a3, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_25A251B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::sum(uint64_t **a1@<X0>, char a2@<W1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  std::vector<int>::vector[abi:ne200100](&__p, ((*a1)[1] - **a1) >> 2);
  if (__p != v18)
  {
    v10 = 0;
    v11 = (v18 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0D0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0C0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  mlx::core::sum(a1, &__p, a2, a3, a4, a5);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_25A251CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::sum(uint64_t **a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*a2 == *(a2 + 8))
  {
    v14 = a1[1];
    *a6 = *a1;
    *(a6 + 8) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v11 = (*a1)[7];
    LODWORD(v24) = v11;
    BYTE4(v24) = BYTE4(v11);
    if (mlx::core::issubdtype(&v24, &mlx::core::signedinteger))
    {
      v12 = *a1;
      if (*(*a1 + 60) >= 5u)
      {
        v13 = 8;
      }

      else
      {
        v13 = 7;
      }
    }

    else
    {
      v15 = (*a1)[7];
      LODWORD(v24) = v15;
      BYTE4(v24) = BYTE4(v15);
      v16 = mlx::core::issubdtype(&v24, &mlx::core::unsignedinteger);
      v12 = *a1;
      v17 = (*a1)[7];
      if (v17)
      {
        v18 = v11;
      }

      else
      {
        v18 = 7;
      }

      v19 = 3;
      if (BYTE4(v17) >= 5u)
      {
        v19 = 4;
      }

      if (v16)
      {
        v13 = v19;
      }

      else
      {
        v13 = v18;
      }
    }

    if (v31 != 1)
    {
      *__p = *v28;
      v26 = v29;
      v28[1] = 0;
      v29 = 0;
      v28[0] = 0;
      mlx::core::to_stream(a4, a5);
      std::allocate_shared[abi:ne200100]<mlx::core::Reduce,std::allocator<mlx::core::Reduce>,mlx::core::Stream,mlx::core::Reduce::ReduceType,std::vector<int> &,0>();
    }

    v20 = a1[1];
    v27[0] = v12;
    v27[1] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
    }

    mlx::core::astype(v27, v13, a4, a5, a6);
    mlx::core::array::~array(v27);
    if ((a3 & 1) == 0)
    {
      mlx::core::squeeze(a6, v30, a4, a5, &v24);
      v21 = v24;
      v24 = 0uLL;
      v22 = *(a6 + 8);
      *a6 = v21;
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      mlx::core::array::~array(&v24);
    }

    if (v30[0])
    {
      v30[1] = v30[0];
      operator delete(v30[0]);
    }

    if (v28[0])
    {
      v28[1] = v28[0];
      operator delete(v28[0]);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_25A251FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  *(v26 - 96) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 96));
  mlx::core::array::~array((v26 - 88));
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(&a25);
  _Unwind_Resume(a1);
}

void mlx::core::sum(uint64_t **a1@<X0>, int a2@<W1>, char a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v11, &__p, 1uLL);
  mlx::core::sum(a1, &__p, a3, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_25A252120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::mean(mlx::core::detail::InTracing *a1, uint64_t a2, mlx::core *a3, uint64_t a4)
{
  std::vector<int>::vector[abi:ne200100](&__p, (*(*a1 + 8) - **a1) >> 2);
  if (__p != v18)
  {
    v8 = 0;
    v9 = (v18 - __p - 4) >> 2;
    v10 = vdupq_n_s64(v9);
    v11 = (v9 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v12 = __p + 8;
    do
    {
      v13 = vdupq_n_s64(v8);
      v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_25A99B0D0)));
      if (vuzp1_s16(v14, *v10.i8).u8[0])
      {
        *(v12 - 2) = v8;
      }

      if (vuzp1_s16(v14, *&v10).i8[2])
      {
        *(v12 - 1) = v8 + 1;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_25A99B0C0)))).i32[1])
      {
        *v12 = v8 + 2;
        v12[1] = v8 + 3;
      }

      v8 += 4;
      v12 += 4;
    }

    while (v11 != v8);
  }

  v15 = mlx::core::to_stream(a3, a4);
  mlx::core::mean(a1, &__p, a2, v15, v16 | 0x100000000);
}

void sub_25A25228C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::mean(mlx::core::detail::InTracing *a1, uint64_t *a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    do
    {
      if (*v10 < -((v9[1] - *v9) >> 2) || *v10 >= ((v9[1] - *v9) >> 2))
      {
        v15 = *v10;
        v16 = (v9[1] - *v9) >> 2;
        std::ostringstream::basic_ostringstream[abi:ne200100](v24);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "[mean] axis ", 12);
        v18 = MEMORY[0x25F851360](v17, v15);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " is out of bounds for array with ", 33);
        v20 = MEMORY[0x25F851360](v19, v16);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " dimensions.", 12);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v24, &v23);
        std::logic_error::logic_error(exception, &v23);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
      }

      ++v10;
    }

    while (v10 != v11);
  }

  v13 = v9[7];
  LODWORD(v24[0]) = v13;
  BYTE4(v24[0]) = BYTE4(v13);
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *a2, a2[1], (a2[1] - *a2) >> 2);
  mlx::core::number_of_elements(a1, __p, 1, v14 & 0xFFFFFFFFFFLL, a4, a5);
}

void sub_25A2524A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v20 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a19);
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v19);
  goto LABEL_6;
}

uint64_t mlx::core::anonymous namespace::at_least_float(unsigned int *a1)
{
  if (mlx::core::issubdtype(a1, &mlx::core::inexact))
  {
    v2 = *a1 | (*(a1 + 4) << 32);
    v3 = (*(a1 + 5) << 40) | (*(a1 + 7) << 56);
  }

  else
  {
    v2 = mlx::core::promote_types(a1, &mlx::core::float32);
    v3 = 0;
  }

  return v3 | v2 & 0xFFFFFFFFFFLL;
}

void mlx::core::number_of_elements(mlx::core::detail::InTracing *a1, int **a2, uint64_t a3, uint64_t a4, mlx::core *a5, uint64_t a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    v12 = (*(*a1 + 8) - **a1) >> 2;
    do
    {
      v13 = (v12 + *v11) % v12;
      if ((v13 & 0x80000000) != 0 || v13 >= v12)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v24);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "[number_of_elements] Can't get the shape for axis ", 50);
        v20 = MEMORY[0x25F851360](v19, *v11);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " from an array with ", 20);
        v22 = MEMORY[0x25F851380](v21, (*(*a1 + 8) - **a1) >> 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " dimensions.", 12);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v24, &v25);
        std::logic_error::logic_error(exception, &v25);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
      }

      *v11++ = v13;
    }

    while (v11 != v10);
  }

  if (mlx::core::detail::InTracing::in_dynamic_tracing(a1))
  {
    mlx::core::to_stream(a5, a6);
    operator new();
  }

  v15 = *a2;
  v14 = a2[1];
  v16 = 1.0;
  while (v15 != v14)
  {
    v17 = *v15++;
    v16 = v16 * mlx::core::array::shape(a1, v17);
  }

  v18 = *MEMORY[0x277D85DE8];

  mlx::core::array::array<double>();
}

void sub_25A2528FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  if (*(v19 - 105) < 0)
  {
    operator delete(*(v19 - 128));
    if ((v18 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a17);
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

void mlx::core::mean(mlx::core::detail::InTracing *a1, int a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v11 = a2;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v11, __p, 1uLL);
  v9 = mlx::core::to_stream(a4, a5);
  mlx::core::mean(a1, __p, a3, v9, v10 | 0x100000000);
}

void sub_25A252A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::var(mlx::core::detail::InTracing *a1, uint64_t a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  std::vector<int>::vector[abi:ne200100](&__p, (*(*a1 + 8) - **a1) >> 2);
  if (__p != v20)
  {
    v10 = 0;
    v11 = (v20 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0D0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0C0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  v17 = mlx::core::to_stream(a4, a5);
  mlx::core::var(a1, &__p, a2, a3, v17, v18 | 0x100000000);
}

void sub_25A252BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::var(mlx::core::detail::InTracing *a1, uint64_t *a2, uint64_t a3, uint64_t a4, mlx::core *a5, uint64_t a6)
{
  v10 = *(*a1 + 56);
  v11 = v10;
  v12 = BYTE4(v10);
  mlx::core::mean(a1, a2, 1, a5, a6);
}

void sub_25A252E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  mlx::core::array::~array((v22 - 96));
  mlx::core::array::~array(v21);
  mlx::core::array::~array((v22 - 80));
  _Unwind_Resume(a1);
}

void mlx::core::square(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  memset(__p, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = (*a1)[7];
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A253090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a17);
  mlx::core::array::~array(&a18);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::var(mlx::core::detail::InTracing *a1, int a2, uint64_t a3, uint64_t a4, mlx::core *a5, uint64_t a6)
{
  v13 = a2;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v13, __p, 1uLL);
  v11 = mlx::core::to_stream(a5, a6);
  mlx::core::var(a1, __p, a3, a4, v11, v12 | 0x100000000);
}

void sub_25A253194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::std(mlx::core::detail::InTracing *a1, uint64_t a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  std::vector<int>::vector[abi:ne200100](&__p, (*(*a1 + 8) - **a1) >> 2);
  if (__p != v20)
  {
    v10 = 0;
    v11 = (v20 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0D0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0C0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  v17 = mlx::core::to_stream(a4, a5);
  mlx::core::std(a1, &__p, a2, a3, v17, v18 | 0x100000000);
}

void sub_25A253308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::sqrt(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  v9 = v6;
  v10 = BYTE4(v6);
  v7 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v7, v7[1], (v7[1] - *v7) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A253568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a19);
  mlx::core::array::~array(&a20);
  mlx::core::array::~array(&a9);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::std(mlx::core::detail::InTracing *a1, int a2, uint64_t a3, uint64_t a4, mlx::core *a5, uint64_t a6)
{
  v13 = a2;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v13, __p, 1uLL);
  v11 = mlx::core::to_stream(a5, a6);
  mlx::core::std(a1, __p, a3, a4, v11, v12 | 0x100000000);
}

void sub_25A25367C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::prod(uint64_t a1@<X0>, char a2@<W1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  std::vector<int>::vector[abi:ne200100](&__p, (*(*a1 + 8) - **a1) >> 2);
  if (__p != v18)
  {
    v10 = 0;
    v11 = (v18 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0D0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0C0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  mlx::core::prod(a1, &__p, a2, a3, a4, a5);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_25A2537D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::prod(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*a2 == *(a2 + 8))
  {
    v13 = *(a1 + 8);
    *a6 = *a1;
    *(a6 + 8) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v11 = *(*a1 + 56);
    LODWORD(v19) = v11;
    BYTE4(v19) = BYTE4(v11);
    if (mlx::core::issubdtype(&v19, &mlx::core::signedinteger))
    {
      v12 = *a1;
      *(*a1 + 60);
    }

    else
    {
      v14 = *(*a1 + 56);
      LODWORD(v19) = v14;
      BYTE4(v19) = BYTE4(v14);
      mlx::core::issubdtype(&v19, &mlx::core::unsignedinteger);
      v12 = *a1;
      *(*a1 + 56);
    }

    if (v25 != 1)
    {
      *__p = *v22;
      v21 = v23;
      v22[1] = 0;
      v23 = 0;
      v22[0] = 0;
      mlx::core::to_stream(a4, a5);
      std::allocate_shared[abi:ne200100]<mlx::core::Reduce,std::allocator<mlx::core::Reduce>,mlx::core::Stream,mlx::core::Reduce::ReduceType,std::vector<int> &,0>();
    }

    v15 = *(a1 + 8);
    *a6 = v12;
    *(a6 + 8) = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    if ((a3 & 1) == 0)
    {
      mlx::core::squeeze(a6, v24, a4, a5, &v19);
      v16 = v19;
      v19 = 0uLL;
      v17 = *(a6 + 8);
      *a6 = v16;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      mlx::core::array::~array(&v19);
    }

    if (v24[0])
    {
      v24[1] = v24[0];
      operator delete(v24[0]);
    }

    if (v22[0])
    {
      v22[1] = v22[0];
      operator delete(v22[0]);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_25A253AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  *(v25 - 96) = v24;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v25 - 96));
  mlx::core::array::~array((v25 - 88));
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(&a24);
  _Unwind_Resume(a1);
}

void mlx::core::prod(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v11, &__p, 1uLL);
  mlx::core::prod(a1, &__p, a3, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_25A253BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::max(uint64_t a1@<X0>, char a2@<W1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  std::vector<int>::vector[abi:ne200100](&__p, (*(*a1 + 8) - **a1) >> 2);
  if (__p != v18)
  {
    v10 = 0;
    v11 = (v18 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0D0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0C0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  mlx::core::max(a1, &__p, a2, a3, a4, a5);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_25A253D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::max(uint64_t a1@<X0>, unsigned int **a2@<X1>, char a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!*(*a1 + 48))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[max] Cannot max reduce zero size array.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  if (v23 != 1)
  {
    *__p = *v20;
    v19 = v21;
    v20[1] = 0;
    v21 = 0;
    v20[0] = 0;
    v12 = *(*a1 + 56);
    mlx::core::to_stream(a4, a5);
    std::allocate_shared[abi:ne200100]<mlx::core::Reduce,std::allocator<mlx::core::Reduce>,mlx::core::Stream,mlx::core::Reduce::ReduceType,std::vector<int> &,0>();
  }

  v11 = *(a1 + 8);
  *a6 = *a1;
  *(a6 + 8) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  if ((a3 & 1) == 0)
  {
    mlx::core::squeeze(a6, v22, a4, a5, &v17);
    v13 = v17;
    v17 = 0uLL;
    v14 = *(a6 + 8);
    *a6 = v13;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    mlx::core::array::~array(&v17);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_25A253FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  *(v25 - 96) = v24;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v25 - 96));
  mlx::core::array::~array((v25 - 88));
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(&a24);
  _Unwind_Resume(a1);
}

void mlx::core::max(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v11, &__p, 1uLL);
  mlx::core::max(a1, &__p, a3, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_25A2540E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::min(uint64_t **a1@<X0>, char a2@<W1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  std::vector<int>::vector[abi:ne200100](&__p, ((*a1)[1] - **a1) >> 2);
  if (__p != v18)
  {
    v10 = 0;
    v11 = (v18 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0D0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0C0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  mlx::core::min(a1, &__p, a2, a3, a4, a5);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_25A254244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::min(uint64_t **a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  if (!(*a1)[6])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[min] Cannot min reduce zero size array.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  if (*a2 == *(a2 + 8))
  {
    v13 = a1[1];
    *a6 = v7;
    *(a6 + 8) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (v25 != 1)
    {
      *__p = *v22;
      v21 = v23;
      v22[1] = 0;
      v23 = 0;
      v22[0] = 0;
      v14 = (*a1)[7];
      mlx::core::to_stream(a4, a5);
      std::allocate_shared[abi:ne200100]<mlx::core::Reduce,std::allocator<mlx::core::Reduce>,mlx::core::Stream,mlx::core::Reduce::ReduceType,std::vector<int> &,0>();
    }

    v12 = a1[1];
    *a6 = *a1;
    *(a6 + 8) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    if ((a3 & 1) == 0)
    {
      mlx::core::squeeze(a6, v24, a4, a5, &v19);
      v15 = v19;
      v19 = 0uLL;
      v16 = *(a6 + 8);
      *a6 = v15;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      mlx::core::array::~array(&v19);
    }

    if (v24[0])
    {
      v24[1] = v24[0];
      operator delete(v24[0]);
    }

    if (v22[0])
    {
      v22[1] = v22[0];
      operator delete(v22[0]);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_25A2544D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  *(v25 - 96) = v24;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v25 - 96));
  mlx::core::array::~array((v25 - 88));
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(&a24);
  _Unwind_Resume(a1);
}

void mlx::core::min(uint64_t **a1@<X0>, int a2@<W1>, char a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v11, &__p, 1uLL);
  mlx::core::min(a1, &__p, a3, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_25A254604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A254808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(v12);
  _Unwind_Resume(a1);
}

void mlx::core::argmin(uint64_t **a1, int a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*a1)[6])
  {
    v12 = a2;
    v15 = 0;
    v14 = 0uLL;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v14, &v12, &v13, 1uLL);
    if (v14)
    {
      *(&v14 + 1) = v14;
      operator delete(v14);
    }

    if (v11 == 1)
    {
      mlx::core::zeros(v9);
    }

    v9[1] = 0;
    v10 = 0;
    v9[0] = 0;
    mlx::core::to_stream(a4, a5);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[argmin] Cannot argmin reduce zero size array.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A254AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v20 - 120) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 120));
  mlx::core::array::~array((v20 - 112));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(&a19);
  _Unwind_Resume(a1);
}

void sub_25A254D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(v12);
  _Unwind_Resume(a1);
}

void mlx::core::argmax(uint64_t **a1, int a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*a1)[6])
  {
    v12 = a2;
    v15 = 0;
    v14 = 0uLL;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v14, &v12, &v13, 1uLL);
    if (v14)
    {
      *(&v14 + 1) = v14;
      operator delete(v14);
    }

    if (v11 == 1)
    {
      mlx::core::zeros(v9);
    }

    v9[1] = 0;
    v10 = 0;
    v9[0] = 0;
    mlx::core::to_stream(a4, a5);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[argmax] Cannot argmax reduce zero size array.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A25507C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v20 - 120) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 120));
  mlx::core::array::~array((v20 - 112));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::sort(uint64_t a1, mlx::core *a2, uint64_t a3)
{
  v6 = *(*a1 + 48);
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v6, __p, 1uLL);
  mlx::core::reshape(a1, __p, a2, a3, v8);
  mlx::core::sort(v8, 0, a2, a3);
}

void sub_25A2551CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::sort(uint64_t **a1, uint64_t a2, mlx::core *a3, uint64_t a4)
{
  v19[33] = *MEMORY[0x277D85DE8];
  v7 = **a1;
  v8 = (*a1)[1];
  v9 = (v8 - v7) >> 2;
  if (v9 > a2 && ((v9 + a2) & 0x80000000) == 0)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v7, v8, (v8 - v7) >> 2);
    v11 = (*a1)[7];
    mlx::core::to_stream(a3, a4);
    operator new();
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v19);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "[sort] Received invalid axis ", 29);
  v13 = MEMORY[0x25F851360](v12, a2);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " for array with ", 16);
  v15 = MEMORY[0x25F851380](v14, ((*a1)[1] - **a1) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " dimensions.", 12);
  exception = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v19, &v18);
  std::logic_error::logic_error(exception, &v18);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A25546C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void mlx::core::argsort(uint64_t a1, mlx::core *a2, uint64_t a3)
{
  v6 = *(*a1 + 48);
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v6, __p, 1uLL);
  mlx::core::reshape(a1, __p, a2, a3, v8);
  mlx::core::argsort(v8, 0, a2, a3);
}

void sub_25A2555B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::argsort(uint64_t **a1, uint64_t a2, mlx::core *a3, uint64_t a4)
{
  v18[33] = *MEMORY[0x277D85DE8];
  v7 = **a1;
  v8 = (*a1)[1];
  v9 = (v8 - v7) >> 2;
  if (v9 > a2 && ((v9 + a2) & 0x80000000) == 0)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v7, v8, (v8 - v7) >> 2);
    mlx::core::to_stream(a3, a4);
    operator new();
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v18);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "[argsort] Received invalid axis ", 32);
  v12 = MEMORY[0x25F851360](v11, a2);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " for array with ", 16);
  v14 = MEMORY[0x25F851380](v13, ((*a1)[1] - **a1) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " dimensions.", 12);
  exception = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v18, &v17);
  std::logic_error::logic_error(exception, &v17);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A255848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void mlx::core::partition(uint64_t a1, uint64_t a2, mlx::core *a3, uint64_t a4)
{
  v8 = *(*a1 + 48);
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v8, __p, 1uLL);
  mlx::core::reshape(a1, __p, a3, a4, v10);
  mlx::core::partition(v10, a2, 0, a3, a4);
}

void sub_25A2559A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::partition(uint64_t **this, uint64_t a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v29[33] = *MEMORY[0x277D85DE8];
  v7 = ((*this)[1] - **this) >> 2;
  if (v7 > a3)
  {
    v8 = v7 + a3;
    if ((v8 & 0x80000000) == 0)
    {
      if (a3 >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = v8;
      }

      v13 = a2;
      if ((a2 & 0x80000000) == 0 || (v13 = mlx::core::array::shape(this, a3) + a2, v13 >= 0))
      {
        if (v13 < mlx::core::array::shape(this, v12))
        {
          v14 = *this;
          memset(__p, 0, sizeof(__p));
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
          v15 = (*this)[7];
          mlx::core::to_stream(a4, a5);
          operator new();
        }
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](v29);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "[partition] Received invalid kth ", 33);
      v17 = MEMORY[0x25F851360](v16, a2);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "along axis ", 11);
      v19 = MEMORY[0x25F851360](v18, a3);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " for array with shape: ", 23);
      mlx::core::operator<<(v20, *this);
      exception = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v29, &v28);
      std::logic_error::logic_error(exception, &v28);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v29);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "[partition] Received invalid axis ", 34);
  v23 = MEMORY[0x25F851360](v22, a3);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " for array with ", 16);
  v25 = MEMORY[0x25F851380](v24, ((*this)[1] - **this) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " dimensions.", 12);
  v26 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v29, &v28);
  std::logic_error::logic_error(v26, &v28);
  v26->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v26, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A255D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void mlx::core::argpartition(uint64_t a1, uint64_t a2, mlx::core *a3, uint64_t a4)
{
  v8 = *(*a1 + 48);
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v8, __p, 1uLL);
  mlx::core::reshape(a1, __p, a3, a4, v10);
  mlx::core::argpartition(v10, a2, 0, a3, a4);
}

void sub_25A255EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::argpartition(uint64_t **this, uint64_t a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v28[33] = *MEMORY[0x277D85DE8];
  v7 = ((*this)[1] - **this) >> 2;
  if (v7 > a3)
  {
    v8 = v7 + a3;
    if ((v8 & 0x80000000) == 0)
    {
      if (a3 >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = v8;
      }

      v13 = a2;
      if ((a2 & 0x80000000) == 0 || (v13 = mlx::core::array::shape(this, a3) + a2, v13 >= 0))
      {
        if (v13 < mlx::core::array::shape(this, v12))
        {
          v14 = *this;
          memset(__p, 0, sizeof(__p));
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
          mlx::core::to_stream(a4, a5);
          operator new();
        }
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](v28);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "[argpartition] Received invalid kth ", 36);
      v16 = MEMORY[0x25F851360](v15, a2);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " along axis ", 12);
      v18 = MEMORY[0x25F851360](v17, a3);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " for array with shape: ", 23);
      mlx::core::operator<<(v19, *this);
      exception = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v28, &v27);
      std::logic_error::logic_error(exception, &v27);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v28);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "[argpartition] Received invalid axis ", 37);
  v22 = MEMORY[0x25F851360](v21, a3);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " for array with ", 16);
  v24 = MEMORY[0x25F851380](v23, ((*this)[1] - **this) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " dimensions.", 12);
  v25 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v28, &v27);
  std::logic_error::logic_error(v25, &v27);
  v25->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v25, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A256268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void mlx::core::topk(uint64_t a1@<X0>, uint64_t a2@<X1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v10 = *(*a1 + 48);
  v12 = 0;
  v13 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v10, &__p, 1uLL);
  mlx::core::reshape(a1, &__p, a3, a4, v14);
  mlx::core::topk(v14, a2, 0, a3, a4, a5);
  mlx::core::array::~array(v14);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_25A2563CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  mlx::core::array::~array(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx::core::topk@<X0>(uint64_t **this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v12 = ((*this)[1] - **this) >> 2;
  v13 = a3;
  if ((a3 & 0x80000000) != 0 && (v13 = (v12 + a3), v12 + a3 < 0) || v13 >= v12)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "[topk] Received invalid axis ", 29);
    v23 = MEMORY[0x25F851360](v22, a3);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " for array with ", 16);
    v25 = MEMORY[0x25F851380](v24, ((*this)[1] - **this) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&v28, &v27);
    std::logic_error::logic_error(exception, &v27);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  if ((a2 & 0x80000000) != 0 || mlx::core::array::shape(this, v13) < a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "[topk] Received invalid k=", 26);
    v17 = MEMORY[0x25F851360](v16, a2);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " along axis ", 12);
    v19 = MEMORY[0x25F851360](v18, a3);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " for array with shape: ", 23);
    mlx::core::operator<<(v20, *this);
    v21 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&v28, &v27);
    std::logic_error::logic_error(v21, &v27);
    v21->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v21, off_279921408, MEMORY[0x277D82610]);
  }

  result = mlx::core::array::shape(this, v13);
  if (result != a2)
  {
    mlx::core::partition(this, -a2, v13, a4, a5);
  }

  v15 = this[1];
  *a6 = *this;
  a6[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_25A256750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a23);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void mlx::core::logsumexp(uint64_t a1, uint64_t a2, mlx::core *a3, uint64_t a4)
{
  std::vector<int>::vector[abi:ne200100](&__p, (*(*a1 + 8) - **a1) >> 2);
  if (__p != v16)
  {
    v8 = 0;
    v9 = (v16 - __p - 4) >> 2;
    v10 = vdupq_n_s64(v9);
    v11 = (v9 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v12 = __p + 8;
    do
    {
      v13 = vdupq_n_s64(v8);
      v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_25A99B0D0)));
      if (vuzp1_s16(v14, *v10.i8).u8[0])
      {
        *(v12 - 2) = v8;
      }

      if (vuzp1_s16(v14, *&v10).i8[2])
      {
        *(v12 - 1) = v8 + 1;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_25A99B0C0)))).i32[1])
      {
        *v12 = v8 + 2;
        v12[1] = v8 + 3;
      }

      v8 += 4;
      v12 += 4;
    }

    while (v11 != v8);
  }

  mlx::core::logsumexp(a1, &__p, a2, a3, a4);
}

void sub_25A256954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::logsumexp(uint64_t a1, unsigned int **a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (*(*a1 + 48))
  {
    if (v5[1] != *v5 || *a2 == a2[1])
    {
      v10 = v5[7];
      LODWORD(v19) = v10;
      BYTE4(v19) = BYTE4(v10);
      if ((mlx::core::issubdtype(&v19, &mlx::core::complexfloating) & 1) == 0 && a2[1] - *a2 == 4)
      {
        v11 = **a2;
        if (v11 == -1 || (*(*a1 + 8) - **a1) >> 2 == v11 + 1)
        {
          v13 = *(*a1 + 56);
          LODWORD(v19) = v13;
          BYTE4(v19) = BYTE4(v13);
          v14 = *a1;
          v20 = 0uLL;
          v19 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v19, *v14, v14[1], (v14[1] - *v14) >> 2);
          __p = v19;
          v15 = v20;
          *(v20 - 4) = 1;
          v18 = v15;
          v20 = 0uLL;
          v19 = 0;
          mlx::core::to_stream(a4, a5);
          operator new();
        }
      }

      mlx::core::max(a1, a2, 1, a4, a5, v21);
      mlx::core::stop_gradient(v21, a4, a5);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[logsumexp] Received non-empty axes for array with 0 dimensions.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[logsumexp] Received empty array.");
  }

  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A256E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  mlx::core::array::~array(v27);
  v30 = *(v28 - 144);
  if (v30)
  {
    *(v28 - 136) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::log(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A257168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::exp(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A2573C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::logsumexp(uint64_t a1, int a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v9 = a2;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v9, __p, 1uLL);
  mlx::core::logsumexp(a1, __p, a3, a4, a5);
}

void sub_25A2574CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::negative(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (*(*a1 + 14))
  {
    memset(__p, 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v3, v3[1], (v3[1] - *v3) >> 2);
    v7 = (*a1)[7];
    mlx::core::to_stream(a2, a3);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[negative] Not supported for BOOL, use logical_not instead.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void mlx::core::sign(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  memset(__p, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = (*a1)[7];
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A2578B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a17);
  mlx::core::array::~array(&a18);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::reciprocal(uint64_t a1)
{
  v1 = *(*a1 + 56);
  v2 = v1;
  v3 = BYTE4(v1);
  mlx::core::array::array<float>();
}

void mlx::core::operator/()
{
  mlx::core::TypeToDtype<double>::operator mlx::core::Dtype();
  mlx::core::array::array<double>();
}

{
  mlx::core::TypeToDtype<double>::operator mlx::core::Dtype();
  mlx::core::array::array<double>();
}

void sub_25A257A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void sub_25A257ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::floor_divide(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v23[0]) = v8;
  BYTE4(v23[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v19) = v9;
  BYTE4(v19) = BYTE4(v9);
  v10 = mlx::core::promote_types(v23, &v19);
  v20 = v10;
  v21 = BYTE4(v10);
  if (mlx::core::issubdtype(&v20, &mlx::core::inexact))
  {
    mlx::core::divide(a1, a2, a3, a4);
  }

  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v17, v20, a3, a4, v23);
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v16, v20, a3, a4, &v24);
  memset(v18, 0, sizeof(v18));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v18, v23, &v25, 2uLL);
  mlx::core::broadcast_arrays(v18, a3, a4, &v19);
  v22 = v18;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v22);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v23[i]);
  }

  mlx::core::array::~array(v16);
  mlx::core::array::~array(v17);
  v14 = *v19;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A257DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 88) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 88));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 88) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 88));
  _Unwind_Resume(a1);
}

void mlx::core::floor(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (*(*a1 + 14) != 13)
  {
    memset(__p, 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v3, v3[1], (v3[1] - *v3) >> 2);
    v7 = (*a1)[7];
    mlx::core::to_stream(a2, a3);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[floor] Not supported for complex64.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void mlx::core::remainder(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v23[0]) = v8;
  BYTE4(v23[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v21) = v9;
  BYTE4(v21) = BYTE4(v9);
  v10 = mlx::core::promote_types(v23, &v21);
  v11 = a1[1];
  v19[0] = *a1;
  v19[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v19, v10, a3, a4, v23);
  v12 = a2[1];
  v18[0] = *a2;
  v18[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  v13 = mlx::core::to_stream(a3, a4);
  mlx::core::astype(v18, v10, v13, v14 | 0x100000000, &v24);
  memset(v20, 0, sizeof(v20));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v20, v23, &v25, 2uLL);
  mlx::core::broadcast_arrays(v20, a3, a4, &v21);
  v22 = v20;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v22);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v23[i]);
  }

  mlx::core::array::~array(v18);
  mlx::core::array::~array(v19);
  v16 = *v21;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v16, v16[1], (v16[1] - *v16) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A25836C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 104) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 104) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  _Unwind_Resume(a1);
}

void mlx::core::divmod(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v33[0]) = v8;
  BYTE4(v33[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v27[0]) = v9;
  BYTE4(v27[0]) = BYTE4(v9);
  v10 = mlx::core::promote_types(v33, v27);
  v28 = v10;
  v29 = BYTE4(v10);
  if (!mlx::core::issubdtype(&v28, &mlx::core::complexfloating))
  {
    v11 = a1[1];
    v23[0] = *a1;
    v23[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }

    mlx::core::astype(v23, v28, a3, a4, v33);
    v12 = a2[1];
    v22[0] = *a2;
    v22[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    v13 = v28;
    v14 = mlx::core::to_stream(a3, a4);
    mlx::core::astype(v22, v13, v14, v15 | 0x100000000, &v34);
    __p = 0;
    v25 = 0;
    v26 = 0;
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&__p, v33, v36, 2uLL);
    mlx::core::broadcast_arrays(&__p, a3, a4, v27);
    p_p = &__p;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&p_p);
    for (i = 2; i != -2; i -= 2)
    {
      mlx::core::array::~array(&v33[i]);
    }

    mlx::core::array::~array(v22);
    mlx::core::array::~array(v23);
    v17 = *v27[0];
    v33[1] = 0;
    v34 = 0;
    v33[0] = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v33, *v17, v17[1], (v17[1] - *v17) >> 2);
    v18 = *v27[0];
    v36[0] = 0;
    v36[1] = 0;
    v35 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v35, *v18, v18[1], (v18[1] - *v18) >> 2);
    memset(v21, 0, sizeof(v21));
    std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(v21, v33, &v37, 2uLL);
    v19 = *(*v27[0] + 56);
    LODWORD(p_p) = v19;
    BYTE4(p_p) = BYTE4(v19);
    v31 = v19;
    v32 = BYTE4(v19);
    v25 = 0;
    v26 = 0;
    __p = 0;
    std::vector<mlx::core::Dtype>::__init_with_size[abi:ne200100]<mlx::core::Dtype const*,mlx::core::Dtype const*>(&__p, &p_p, v33, 2uLL);
    mlx::core::to_stream(a3, a4);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[divmod] Complex type not supported.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void mlx::core::ceil(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (*(*a1 + 14) != 13)
  {
    memset(__p, 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v3, v3[1], (v3[1] - *v3) >> 2);
    v7 = (*a1)[7];
    mlx::core::to_stream(a2, a3);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[floor] Not supported for complex64.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void mlx::core::expm1(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A258D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::sin(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A258F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::cos(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A2591C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::tan(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A25941C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::arcsin(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A259674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::arccos(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A2598CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::arctan(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A259B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::arctan2(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v20) = v8;
  BYTE4(v20) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v19[0]) = v9;
  BYTE4(v19[0]) = BYTE4(v9);
  v10 = mlx::core::promote_types(&v20, v19);
  LODWORD(v22[0]) = v10;
  BYTE4(v22[0]) = BYTE4(v10);
  v12 = a1[1];
  v18[0] = *a1;
  v18[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v18, v11, a3, a4, v22);
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v17, v11, a3, a4, &v23);
  memset(v19, 0, sizeof(v19));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v19, v22, &v24, 2uLL);
  mlx::core::broadcast_arrays(v19, a3, a4, &v20);
  v21 = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v21);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v22[i]);
  }

  mlx::core::array::~array(v17);
  mlx::core::array::~array(v18);
  v15 = *v20;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v15, v15[1], (v15[1] - *v15) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A259E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 104) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 104) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  _Unwind_Resume(a1);
}

void mlx::core::sinh(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A25A0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::cosh(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A25A33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::tanh(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A25A594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::arcsinh(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A25A7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::arccosh(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A25AA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::arctanh(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A25AC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::degrees(uint64_t a1)
{
  v1 = *(*a1 + 56);
  v2 = v1;
  v3 = BYTE4(v1);
  mlx::core::array::array<double>();
}

void mlx::core::radians(uint64_t a1)
{
  v1 = *(*a1 + 56);
  v2 = v1;
  v3 = BYTE4(v1);
  mlx::core::array::array<double>();
}

void mlx::core::log2(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A25B03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::log10(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A25B29C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::log1p(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A25B4F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::logaddexp(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v20) = v8;
  BYTE4(v20) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v19[0]) = v9;
  BYTE4(v19[0]) = BYTE4(v9);
  v10 = mlx::core::promote_types(&v20, v19);
  LODWORD(v22[0]) = v10;
  BYTE4(v22[0]) = BYTE4(v10);
  v12 = a1[1];
  v18[0] = *a1;
  v18[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v18, v11, a3, a4, v22);
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v17, v11, a3, a4, &v23);
  memset(v19, 0, sizeof(v19));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v19, v22, &v24, 2uLL);
  mlx::core::broadcast_arrays(v19, a3, a4, &v20);
  v21 = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v21);
  for (i = 2; i != -2; i -= 2)
  {
    mlx::core::array::~array(&v22[i]);
  }

  mlx::core::array::~array(v17);
  mlx::core::array::~array(v18);
  v15 = *v20;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v15, v15[1], (v15[1] - *v15) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A25B804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 104) = v25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v26 - 104) = &a25;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v26 - 104));
  _Unwind_Resume(a1);
}

void mlx::core::sigmoid(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v11, v7, a2, a3, v12);
  mlx::core::array::~array(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A25BAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 80));
  mlx::core::array::~array((v20 - 72));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a19);
  _Unwind_Resume(a1);
}

void mlx::core::erf(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  v9 = v6;
  v10 = BYTE4(v6);
  v7 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v7, v7[1], (v7[1] - *v7) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A25BCF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a19);
  mlx::core::array::~array(&a20);
  mlx::core::array::~array(&a9);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::erfinv(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  v9 = v6;
  v10 = BYTE4(v6);
  v7 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v7, v7[1], (v7[1] - *v7) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A25BF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a19);
  mlx::core::array::~array(&a20);
  mlx::core::array::~array(&a9);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::round(uint64_t **a1, int a2, mlx::core *a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v8 = (*a1)[7];
    v12 = v8;
    v13 = BYTE4(v8);
    __exp10(a2);
    mlx::core::array::array<float>();
  }

  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  v10 = (*a1)[7];
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A25C264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a13);
  mlx::core::array::~array((v21 - 96));
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::matmul(void *a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v59 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = a1[1];
  *&v54 = *a1;
  *(&v54 + 1) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *a2;
  v11 = a2[1];
  *&v53 = *a2;
  *(&v53 + 1) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = v8[1] - *v8;
  if (!v12 || (v15 = v10, v14 = *v10, v13 = v15[1], v13 == v14))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[matmul] Got 0 dimension input. Inputs must have at least one dimension.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  if (v12 == 4)
  {
    mlx::core::expand_dims(&v54, 0, a3, a4);
  }

  if (v13 - v14 == 4)
  {
    mlx::core::expand_dims(&v53, 1, a3, a4);
  }

  v16 = *(v54 + 8);
  if (v16 == *v54 || *(v53 + 8) - *v53 <= 4uLL)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  *v53;
  if (*(v16 - 4) != *(*(v53 + 8) - 8))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v57);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "[matmul] Last dimension of first input with shape ", 50);
    v31 = mlx::core::operator<<(v30, v54);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " must match second to last dimension of", 39);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " second input with shape ", 25);
    v34 = mlx::core::operator<<(v33, v53);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ".", 1);
    v35 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v57, &v52);
    std::logic_error::logic_error(v35, &v52);
    v35->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v35, off_279921408, MEMORY[0x277D82610]);
  }

  v17 = *(v54 + 56);
  LODWORD(v57[0]) = v17;
  BYTE4(v57[0]) = BYTE4(v17);
  v18 = *(v53 + 56);
  LODWORD(v52.__r_.__value_.__l.__data_) = v18;
  v52.__r_.__value_.__s.__data_[4] = BYTE4(v18);
  v19 = mlx::core::promote_types(v57, &v52);
  LODWORD(v51) = v19;
  BYTE4(v51) = BYTE4(v19);
  if (v19 == 13)
  {
    mlx::core::real(&v54, a3, a4, v57);
    mlx::core::real(&v53, a3, a4, &v52);
    mlx::core::imag(&v54, a3, a4);
  }

  if ((mlx::core::issubdtype(&v51, &mlx::core::floating) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v57);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "[matmul] Only real floating point types are supported but ", 58);
    v37 = *(v54 + 56);
    LODWORD(v52.__r_.__value_.__l.__data_) = v37;
    v52.__r_.__value_.__s.__data_[4] = BYTE4(v37);
    v38 = mlx::core::operator<<(v36, &v52);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " and ", 5);
    v40 = *(v53 + 56);
    LODWORD(v55) = v40;
    BYTE4(v55) = BYTE4(v40);
    v41 = mlx::core::operator<<(v39, &v55);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " were provided which results", 28);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " in ", 4);
    v44 = mlx::core::operator<<(v43, &v51);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ", which is not a real floating point type.", 42);
    v45 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v57, &v52);
    std::logic_error::logic_error(v45, &v52);
    v45->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v45, off_279921408, MEMORY[0x277D82610]);
  }

  v20 = *(v54 + 56);
  if (v51 != v20)
  {
    v50 = v54;
    if (*(&v54 + 1))
    {
      atomic_fetch_add_explicit((*(&v54 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    mlx::core::astype(&v50, v51, a3, a4, v57);
    v21 = *v57;
    v57[0] = 0;
    v57[1] = 0;
    v22 = *(&v54 + 1);
    v54 = v21;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    mlx::core::array::~array(v57);
    mlx::core::array::~array(&v50);
    v20 = v51;
  }

  if (v20 != *(v53 + 56))
  {
    v49 = v53;
    if (*(&v53 + 1))
    {
      atomic_fetch_add_explicit((*(&v53 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    mlx::core::astype(&v49, v51, a3, a4, v57);
    v23 = *v57;
    v57[0] = 0;
    v57[1] = 0;
    v24 = *(&v53 + 1);
    v53 = v23;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    mlx::core::array::~array(v57);
    mlx::core::array::~array(&v49);
  }

  v25 = *(*a2 + 8) - **a2;
  if (*(*a1 + 8) - **a1 < 9uLL)
  {
    if (v25 < 9)
    {
      goto LABEL_37;
    }
  }

  else if (v25 <= 8)
  {
    mlx::core::flatten(&v54, 0, -2, a3, a4, v57);
    v26 = *v57;
    v57[0] = 0;
    v57[1] = 0;
    v27 = *(&v54 + 1);
    v54 = v26;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    mlx::core::array::~array(v57);
    goto LABEL_37;
  }

  v55 = -2;
  v47 = 0;
  v48 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v55, &v56, 2uLL);
  mlx::core::broadcast_arrays(&v54, &v53, &__p, a3, a4, v57);
  v52.__r_.__value_.__r.__words[0] = &v54;
  v52.__r_.__value_.__l.__size_ = &v53;
  std::tuple<mlx::core::array &,mlx::core::array &>::operator=[abi:ne200100]<mlx::core::array,mlx::core::array,0>(&v52, v57);
  mlx::core::array::~array(v58);
  mlx::core::array::~array(v57);
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }

LABEL_37:
  memset(&v52, 0, sizeof(v52));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v52, *v54, *(v54 + 8), (*(v54 + 8) - *v54) >> 2);
  v28 = *(v53 + 8);
  if (v28 != *v53)
  {
    *(v52.__r_.__value_.__l.__size_ - 4) = *(v28 - 4);
    memset(&v52, 0, sizeof(v52));
    mlx::core::to_stream(a3, a4);
    operator new();
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void sub_25A25CD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, uint64_t a45, char a46, uint64_t a47, char a48, uint64_t a49, void *a50, uint64_t a51)
{
  if (a43 < 0)
  {
    operator delete(__p);
    if ((v52 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a50);
      mlx::core::array::~array(&a44);
      mlx::core::array::~array(&a46);
      _Unwind_Resume(a1);
    }
  }

  else if (!v52)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v51);
  goto LABEL_6;
}

uint64_t mlx::core::real@<X0>(uint64_t **a1@<X0>, mlx::core *a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = (*a1)[7];
  v14 = v8;
  v15 = BYTE4(v8);
  result = mlx::core::issubdtype(&v14, &mlx::core::complexfloating);
  v10 = *a1;
  if (result)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v10, v10[1], (v10[1] - *v10) >> 2);
    mlx::core::to_stream(a2, a3);
    operator new();
  }

  v11 = a1[1];
  *a4 = v10;
  a4[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A25D1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a17);
  mlx::core::array::~array((v17 - 56));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::imag(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  v11 = v6;
  v12 = BYTE4(v6);
  v7 = mlx::core::issubdtype(&v11, &mlx::core::complexfloating);
  v8 = *a1;
  if (v7)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v8, v8[1], (v8[1] - *v8) >> 2);
    mlx::core::to_stream(a2, a3);
    operator new();
  }

  v9 = v8[7];
  mlx::core::to_stream(v7, 0);
  mlx::core::zeros(v8);
}

void sub_25A25D3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a17);
  mlx::core::array::~array(&a18);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::tuple<mlx::core::array &,mlx::core::array &>::operator=[abi:ne200100]<mlx::core::array,mlx::core::array,0>(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = a1[1];
  v8 = a2[1];
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v9 = *(v7 + 8);
  *v7 = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return a1;
}

void mlx::core::gather(uint64_t **a1, uint64_t a2, int **a3, uint64_t a4, mlx::core *a5, uint64_t a6)
{
  if ((*(a2 + 8) - *a2) >> 4 > (((*a1)[1] - **a1) >> 2))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v65);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "[gather] Too many index arrays. Got ", 36);
    v45 = MEMORY[0x25F851380](v44, (*(a2 + 8) - *a2) >> 4);
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " index arrays for input with ", 29);
    v47 = MEMORY[0x25F851380](v46, ((*a1)[1] - **a1) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&v65, &v64);
    std::logic_error::logic_error(exception, &v64);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  std::set<int>::set[abi:ne200100]<std::__wrap_iter<int const*>>(&v64, *a3, a3[1]);
  if (v64.__r_.__value_.__r.__words[2] == a3[1] - *a3)
  {
    if (!v64.__r_.__value_.__r.__words[2])
    {
      goto LABEL_11;
    }

    if ((*(v64.__r_.__value_.__r.__words[0] + 28) & 0x80000000) != 0)
    {
      goto LABEL_46;
    }

    size = v64.__r_.__value_.__l.__size_;
    if (v64.__r_.__value_.__l.__size_)
    {
      do
      {
        v13 = size;
        size = *(size + 8);
      }

      while (size);
    }

    else
    {
      p_size = &v64.__r_.__value_.__l.__size_;
      do
      {
        v13 = p_size[2];
        v15 = *v13 == p_size;
        p_size = v13;
      }

      while (v15);
    }

    if (*(v13 + 28) >= (((*a1)[1] - **a1) >> 2))
    {
LABEL_46:
      v43 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v43, "[gather] Axes don't match array dimensions.");
    }

    else
    {
LABEL_11:
      v17 = *a2;
      v16 = *(a2 + 8);
      if (v64.__r_.__value_.__r.__words[2] == (v16 - *a2) >> 4)
      {
        while (v17 != v16)
        {
          if (!*(*v17 + 56))
          {
            v42 = __cxa_allocate_exception(8uLL);
            *v42 = "[Gather] Boolean indices not supported.";
            __cxa_throw(v42, MEMORY[0x277D82740], 0);
          }

          v17 += 16;
        }

        if (*(a4 + 8) - *a4 != (*a1)[1] - **a1)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v65);
          v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "[gather] Got slice_sizes with size ", 35);
          v50 = MEMORY[0x25F851380](v49, (*(a4 + 8) - *a4) >> 2);
          v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " for array with ", 16);
          v52 = MEMORY[0x25F851380](v51, ((*a1)[1] - **a1) >> 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " dimensions.", 12);
          v53 = __cxa_allocate_exception(0x10uLL);
          std::ostringstream::str[abi:ne200100](&v65, &v63);
          std::logic_error::logic_error(v53, &v63);
          v53->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v53, off_279921408, MEMORY[0x277D82610]);
        }

        v18 = mlx::core::result_type(a2);
        v61 = v18;
        v62 = BYTE4(v18);
        if (mlx::core::issubdtype(&v61, &mlx::core::inexact))
        {
          v54 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v54, "[gather] Got indices with invalid dtype. Indices must be integral.");
          v54->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v54, off_279921408, MEMORY[0x277D82610]);
        }

        mlx::core::broadcast_arrays(a2, v19, 0, &v63);
        v21 = v63.__r_.__value_.__l.__size_;
        for (i = v63.__r_.__value_.__r.__words[0]; i != v21; i += 16)
        {
          v22 = *(i + 8);
          v60[0] = *i;
          v60[1] = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
          }

          mlx::core::astype(v60, v61, a5, a6, &v65);
          v23 = v65;
          v65 = 0uLL;
          v24 = *(i + 8);
          *i = v23;
          if (v24)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          }

          mlx::core::array::~array(&v65);
          mlx::core::array::~array(v60);
        }

        if ((*a1)[6])
        {
          if ((*a1)[1] != **a1)
          {
            v25 = 0;
            do
            {
              v26 = *(*a4 + 4 * v25);
              if (v26 < 0 || v26 > mlx::core::array::shape(a1, v25))
              {
                std::ostringstream::basic_ostringstream[abi:ne200100](&v65);
                v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "[gather] Slice sizes must be in [0, a.shape(i)]. Got ", 53);
                v38 = mlx::core::operator<<(v37, a4);
                v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " for array with shape ", 22);
                v40 = mlx::core::operator<<(v39, *a1);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ".", 1);
                v41 = __cxa_allocate_exception(0x10uLL);
                std::ostringstream::str[abi:ne200100](&v65, &v59);
                std::logic_error::logic_error(v41, &v59);
                v41->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(v41, off_279921408, MEMORY[0x277D82610]);
              }

              ++v25;
            }

            while (v25 < ((*a1)[1] - **a1) >> 2);
          }

LABEL_37:
          v65 = 0uLL;
          v66 = 0;
          if (v63.__r_.__value_.__r.__words[0] == v63.__r_.__value_.__l.__size_ || &v65 == *v63.__r_.__value_.__l.__data_)
          {
            v32 = 0;
          }

          else
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v65, **v63.__r_.__value_.__l.__data_, *(*v63.__r_.__value_.__l.__data_ + 8), (*(*v63.__r_.__value_.__l.__data_ + 8) - **v63.__r_.__value_.__l.__data_) >> 2);
            v32 = *(&v65 + 1);
          }

          std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v65, v32, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
          std::vector<mlx::core::array>::insert(&v63, v63.__r_.__value_.__l.__data_, a1);
          *__p = v65;
          v58 = v66;
          v66 = 0;
          v65 = 0uLL;
          v33 = (*a1)[7];
          v55 = mlx::core::to_stream(a5, a6);
          v56 = v34;
          std::allocate_shared[abi:ne200100]<mlx::core::Gather,std::allocator<mlx::core::Gather>,mlx::core::Stream,std::vector<int> const,std::vector<int> const,0>();
        }

        v27 = *a4;
        v28 = *(a4 + 8);
        if (*a4 == v28)
        {
          v31 = 1;
        }

        else
        {
          v29 = 1;
          do
          {
            v30 = *v27++;
            v29 *= v30;
          }

          while (v27 != v28);
          v31 = v29 != 0;
        }

        if (v63.__r_.__value_.__r.__words[0] == v63.__r_.__value_.__l.__size_)
        {
          if (!v31)
          {
            goto LABEL_37;
          }
        }

        else if (*(*v63.__r_.__value_.__l.__data_ + 48) == 0 || !v31)
        {
          goto LABEL_37;
        }

        std::ostringstream::basic_ostringstream[abi:ne200100](&v65);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "[gather] If the input is empty, either the indices must be", 58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " empty or the total slice size must be 0.", 41);
        v36 = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](&v65, &v59);
        std::logic_error::logic_error(v36, &v59);
        v36->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v36, off_279921408, MEMORY[0x277D82610]);
      }

      v43 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v43, "[gather] Number of index arrays does not match number of axes.");
    }
  }

  else
  {
    v43 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v43, "[gather] Repeat axes not allowed in gather.");
  }

  v43->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v43, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A25DC7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, void *a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43)
{
  if (a35 < 0)
  {
    operator delete(__p);
    if ((v44 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a42);
      std::__tree<int>::destroy(&a36, a37);
      _Unwind_Resume(a1);
    }
  }

  else if (!v44)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v43);
  goto LABEL_6;
}

mlx::core::array *std::vector<mlx::core::array>::insert(void *a1, mlx::core::array *a2, mlx::core::array *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2 - v10;
    v13 = v7 - v10;
    v14 = v13 >> 3;
    if (v13 >> 3 <= v11)
    {
      v14 = ((v6 - *a1) >> 4) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 4;
    v22 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a1, v15);
    }

    *&v19 = 0;
    *(&v19 + 1) = 16 * v16;
    v20 = 16 * v16;
    v21 = 0;
    std::__split_buffer<mlx::core::array>::emplace_back<mlx::core::array const&>(&v19, a3);
    v4 = std::vector<mlx::core::array>::__swap_out_circular_buffer(a1, &v19, v4);
    std::__split_buffer<mlx::core::array>::~__split_buffer(&v19);
  }

  else if (a2 == v6)
  {
    v17 = *(a3 + 1);
    *v6 = *a3;
    *(v6 + 1) = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    a1[1] = v6 + 16;
  }

  else
  {
    std::vector<mlx::core::array>::__move_range(a1, a2, v6, a2 + 16);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 16;
    if (v8)
    {
      v9 = 0;
    }

    mlx::core::array::operator=(v4, (a3 + v9));
  }

  return v4;
}

void sub_25A25DF74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<mlx::core::array>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void mlx::core::kron(uint64_t **a1, uint64_t **a2, mlx::core *a3, uint64_t a4)
{
  if ((*a1)[6] && (*a2)[6])
  {
    v8 = (*a2)[1] - **a2;
    if (((*a1)[1] - **a1) >> 2 <= (v8 >> 2))
    {
      v9 = v8 >> 2;
    }

    else
    {
      LODWORD(v9) = ((*a1)[1] - **a1) >> 2;
    }

    LODWORD(v31) = 1;
    std::vector<int>::vector[abi:ne200100](&v33, 2 * v9);
    LODWORD(v30[0]) = 1;
    std::vector<int>::vector[abi:ne200100](&v31, 2 * v9);
    v29 = 1;
    std::vector<int>::vector[abi:ne200100](v30, v9);
    v10 = v9 - 1;
    v11 = ((*a1)[1] - **a1) >> 2;
    if (v11 - 1 >= 0)
    {
      v12 = 8 * v10;
      v13 = 4 * v10;
      do
      {
        LODWORD(v11) = v11 - 1;
        v14 = mlx::core::array::shape(a1, v11);
        *(v33 + v12) = v14;
        v15 = mlx::core::array::shape(a1, v11);
        *(v30[0] + v13) *= v15;
        v12 -= 8;
        v13 -= 4;
      }

      while (v11 > 0);
    }

    v16 = ((*a2)[1] - **a2) >> 2;
    if (v16 - 1 >= 0)
    {
      v17 = v10;
      v18 = 4 * v10;
      v19 = (8 * v17) | 4;
      do
      {
        LODWORD(v16) = v16 - 1;
        v20 = mlx::core::array::shape(a2, v16);
        *(v31 + v19) = v20;
        v21 = mlx::core::array::shape(a2, v16);
        *(v30[0] + v18) *= v21;
        v18 -= 4;
        v19 -= 8;
      }

      while (v16 > 0);
    }

    *v26 = v33;
    v27 = v34;
    v33 = 0uLL;
    v34 = 0;
    mlx::core::reshape(a1, v26, a3, a4, v28);
    *v23 = v31;
    v24 = v32;
    v31 = 0uLL;
    v32 = 0;
    mlx::core::reshape(a2, v23, a3, a4, v25);
    mlx::core::multiply(v28, v25, a3, a4);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[kron] Input arrays cannot be empty.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A25E28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a25);
  mlx::core::array::~array(&a17);
  if (a13)
  {
    operator delete(a13);
  }

  mlx::core::array::~array(&a23);
  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  v30 = *(v28 - 144);
  if (v30)
  {
    *(v28 - 136) = v30;
    operator delete(v30);
  }

  v31 = *(v28 - 112);
  if (v31)
  {
    *(v28 - 104) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void mlx::core::take(uint64_t **a1, void *a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v8 = **a1;
  v9 = (*a1)[1];
  v10 = (v9 - v8) >> 2;
  if (v10 > a3)
  {
    v11 = v10 + a3;
    if ((v11 & 0x80000000) == 0)
    {
      if ((*a1)[6] || !*(*a2 + 48))
      {
        if (a3 < 0)
        {
          LODWORD(a3) = v11;
        }

        memset(v21, 0, 24);
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v21, v8, v9, (v9 - v8) >> 2);
        *(v21[0] + a3) = 1;
        mlx::core::gather(a1, a2, a3, v21, a4, a5);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[take] Cannot do a non-empty take from an array with zero elements.");
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v21);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "[take] Received invalid axis ", 29);
  v15 = MEMORY[0x25F851360](v14, a3);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " for array with ", 16);
  v17 = MEMORY[0x25F851380](v16, ((*a1)[1] - **a1) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " dimensions.", 12);
  v18 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v21, &v20);
  std::logic_error::logic_error(v18, &v20);
  v18->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v18, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A25E824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a23);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void mlx::core::gather(uint64_t **a1, void *a2, int a3, uint64_t a4, mlx::core *a5, uint64_t a6)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = a2[1];
  v15[0] = *a2;
  v15[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v14, 0, sizeof(v14));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v14, v15, &v16, 1uLL);
  v12 = a3;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v12, __p, 1uLL);
  mlx::core::gather(a1, v14, __p, a4, a5, a6);
}

void sub_25A25E9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  mlx::core::array::~array(&a16);
  _Unwind_Resume(a1);
}

void mlx::core::take(const void ***a1, int a2, uint64_t a3, mlx::core *a4, uint64_t a5)
{
  v7 = (*a1)[1] - **a1;
  if ((v7 >> 2) > a3 && (((v7 >> 2) + a3) & 0x80000000) == 0)
  {
    if ((*a1)[6])
    {
      if (a3 >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = (v7 >> 2) + a3;
      }

      LODWORD(v26.__r_.__value_.__l.__data_) = 0;
      std::vector<int>::vector[abi:ne200100](&v27, v7 >> 2);
      v12 = *a1;
      memset(&v26, 0, sizeof(v26));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v26, *v12, v12[1], (v12[1] - *v12) >> 2);
      v13 = v27;
      *(v27 + v11) = a2;
      v14 = v26.__r_.__value_.__r.__words[0];
      *(v26.__r_.__value_.__r.__words[0] + 4 * v11) = a2 + 1;
      v23 = v13;
      v24 = v28;
      v28 = 0uLL;
      __p = v14;
      v22 = *&v26.__r_.__value_.__r.__words[1];
      v27 = 0;
      memset(&v26, 0, sizeof(v26));
      mlx::core::slice(a1, &v23, &__p, a4, a5, v25);
      mlx::core::squeeze(v25, v11, a4, a5);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[take] Cannot do a non-empty take from an array with zero elements.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v27);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "[take] Received invalid axis ", 29);
  v16 = MEMORY[0x25F851360](v15, a3);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " for array with ", 16);
  v18 = MEMORY[0x25F851380](v17, ((*a1)[1] - **a1) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " dimensions.", 12);
  v19 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](&v27, &v26);
  std::logic_error::logic_error(v19, &v26);
  v19->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v19, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A25ED34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a23);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void mlx::core::take_along_axis(void *a1, void *a2, int a3, mlx::core *a4, uint64_t a5)
{
  v36[29] = *MEMORY[0x277D85DE8];
  v6 = *(*a1 + 8) - **a1;
  v7 = v6 >> 2;
  if ((v6 >> 2) > a3)
  {
    v9 = *a2;
    if (*(*a2 + 8) - **a2 == v6)
    {
      v13 = a1[1];
      v33[0] = *a1;
      v33[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
        v9 = *a2;
      }

      v14 = a2[1];
      v34 = v9;
      v35 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      memset(v30, 0, sizeof(v30));
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v30, v33, v36, 2uLL);
      LODWORD(v32) = (v7 & (a3 >> 31)) + a3 - ((*(*a1 + 8) - **a1) >> 2);
      v28 = 0;
      v29 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v32, &v32 + 4, 1uLL);
      mlx::core::broadcast_arrays(v30, &__p, a4, a5, &v31);
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      v32 = v30;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v32);
      for (i = 2; i != -2; i -= 2)
      {
        mlx::core::array::~array(&v33[i]);
      }

      v16 = *(v31.__r_.__value_.__r.__words[0] + 16);
      v33[0] = 0;
      v33[1] = 0;
      v34 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v33, *v16, v16[1], (v16[1] - *v16) >> 2);
      v33[1] = 0;
      v34 = 0;
      v33[0] = 0;
      v17 = *(*a1 + 56);
      mlx::core::to_stream(a4, a5);
      operator new();
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](v33);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "[take_along_axis] Indices of dimension ", 39);
    v23 = MEMORY[0x25F851380](v22, (*(*a2 + 8) - **a2) >> 2);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " does not match array of dimension ", 35);
    v25 = MEMORY[0x25F851380](v24, (*(*a1 + 8) - **a1) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v33, &v31);
    std::logic_error::logic_error(exception, &v31);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v33);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "[take_along_axis] Received invalid axis ", 40);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " for array with ", 16);
  v20 = MEMORY[0x25F851380](v19, (*(*a1 + 8) - **a1) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " dimensions.", 12);
  v21 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v33, &v31);
  std::logic_error::logic_error(v21, &v31);
  v21->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v21, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A25F2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a30 < 0)
  {
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a32);
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

void mlx::core::scatter_axis(mlx::core::array *a1, void *a2, uint64_t **a3, int a4, int a5, mlx::core *a6, uint64_t a7)
{
  v62[29] = *MEMORY[0x277D85DE8];
  if (a5 == 1)
  {
    v13 = "[put_along_axis]";
  }

  else
  {
    v13 = "[scatter_add_axis]";
  }

  std::string::basic_string[abi:ne200100]<0>(&v56, v13);
  v14 = *a1;
  v15 = *(*a1 + 8) - **a1;
  if ((v15 >> 2) > a4)
  {
    if (*(*a2 + 8) - **a2 == v15)
    {
      v16 = a3[1];
      v53[0] = *a3;
      v53[1] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
        v14 = *a1;
      }

      mlx::core::astype(v53, *(v14 + 56), a6, a7, &v54);
      mlx::core::array::~array(v53);
      v17 = *(v54 + 8) - *v54;
      v18 = *a2;
      v19 = *(*a2 + 8) - **a2;
      if (v17 > v19)
      {
        std::vector<int>::vector[abi:ne200100](__p, (v17 >> 2) - (v19 >> 2));
        if (__p[0] != __p[1])
        {
          v20 = 0;
          v21 = (__p[1] - __p[0] - 4) >> 2;
          v22 = vdupq_n_s64(v21);
          v23 = (v21 + 4) & 0x7FFFFFFFFFFFFFFCLL;
          v24 = __p[0] + 8;
          do
          {
            v25 = vdupq_n_s64(v20);
            v26 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v25, xmmword_25A99B0D0)));
            if (vuzp1_s16(v26, *v22.i8).u8[0])
            {
              *(v24 - 2) = v20;
            }

            if (vuzp1_s16(v26, *&v22).i8[2])
            {
              *(v24 - 1) = v20 + 1;
            }

            if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v25, xmmword_25A99B0C0)))).i32[1])
            {
              *v24 = v20 + 2;
              v24[1] = v20 + 3;
            }

            v20 += 4;
            v24 += 4;
          }

          while (v23 != v20);
        }

        mlx::core::squeeze(&v54, __p, a6, a7, &v55);
        v27 = *&v55.__r_.__value_.__l.__data_;
        *&v55.__r_.__value_.__l.__data_ = 0uLL;
        v28 = *(&v54 + 1);
        v54 = v27;
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        mlx::core::array::~array(&v55);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v18 = *a2;
      }

      v29 = a2[1];
      __p[0] = v18;
      __p[1] = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
      }

      v61 = v54;
      if (*(&v54 + 1))
      {
        atomic_fetch_add_explicit((*(&v54 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      memset(v52, 0, sizeof(v52));
      std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v52, __p, v62, 2uLL);
      mlx::core::broadcast_arrays(v52, a6, a7, &v55);
      v59 = v52;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v59);
      for (i = 2; i != -2; i -= 2)
      {
        mlx::core::array::~array(&__p[i]);
      }

      std::vector<mlx::core::array>::insert(&v55, v55.__r_.__value_.__l.__data_, a1);
      v31 = (*(*a1 + 8) - **a1) >> 2;
      LODWORD(v59) = (v31 & (a4 >> 31)) + a4 - v31;
      v50 = 0;
      v51 = 0;
      v49 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v49, &v59, &v59 + 4, 1uLL);
      mlx::core::broadcast_arrays(&v55, &v49, a6, a7, __p);
      std::vector<mlx::core::array>::__vdeallocate(&v55.__r_.__value_.__l.__data_);
      *&v55.__r_.__value_.__l.__data_ = *__p;
      v55.__r_.__value_.__r.__words[2] = v61;
      __p[1] = 0;
      *&v61 = 0;
      __p[0] = 0;
      v52[0] = __p;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v52);
      if (v49)
      {
        v50 = v49;
        operator delete(v49);
      }

      v32 = *v55.__r_.__value_.__l.__data_;
      __p[1] = 0;
      *&v61 = 0;
      __p[0] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v32, v32[1], (v32[1] - *v32) >> 2);
      __p[1] = 0;
      *&v61 = 0;
      __p[0] = 0;
      v33 = *(*a1 + 56);
      mlx::core::to_stream(a6, a7);
      operator new();
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](__p);
    if ((v58 & 0x80u) == 0)
    {
      v41 = &v56;
    }

    else
    {
      v41 = v56;
    }

    if ((v58 & 0x80u) == 0)
    {
      v42 = v58;
    }

    else
    {
      v42 = v57;
    }

    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v41, v42);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " Indices of dimension ", 22);
    v45 = MEMORY[0x25F851380](v44, (*(*a2 + 8) - **a2) >> 2);
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " does not match array of dimension ", 35);
    v47 = MEMORY[0x25F851380](v46, (*(*a1 + 8) - **a1) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__p, &v55);
    std::logic_error::logic_error(exception, &v55);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](__p);
  if ((v58 & 0x80u) == 0)
  {
    v34 = &v56;
  }

  else
  {
    v34 = v56;
  }

  if ((v58 & 0x80u) == 0)
  {
    v35 = v58;
  }

  else
  {
    v35 = v57;
  }

  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v34, v35);
  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " Received invalid axis ", 23);
  v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " for array with ", 16);
  v39 = MEMORY[0x25F851380](v38, (*(*a1 + 8) - **a1) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " dimensions.", 12);
  v40 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](__p, &v55);
  std::logic_error::logic_error(v40, &v55);
  v40->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v40, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A25FA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if ((v45 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a43);
      if (a41 < 0)
      {
        operator delete(a36);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v45)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v44);
  goto LABEL_6;
}

void mlx::core::scatter(uint64_t **a1, uint64_t a2, uint64_t **a3, int **a4, int a5, mlx::core *a6, uint64_t a7)
{
  v90 = a5;
  v10 = *a2;
  v9 = *(a2 + 8);
  if ((v9 - *a2) >> 4 <= (((*a1)[1] - **a1) >> 2))
  {
    while (v10 != v9)
    {
      if (!*(*v10 + 56))
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = "[scatter] Boolean indices not supported.";
        __cxa_throw(exception, MEMORY[0x277D82740], 0);
      }

      v10 += 2;
    }

    std::set<int>::set[abi:ne200100]<std::__wrap_iter<int const*>>(&v85, *a4, a4[1]);
    if (v85.__r_.__value_.__r.__words[2] == a4[1] - *a4)
    {
      if (!v85.__r_.__value_.__r.__words[2])
      {
        goto LABEL_14;
      }

      if ((*(v85.__r_.__value_.__r.__words[0] + 28) & 0x80000000) != 0)
      {
        goto LABEL_55;
      }

      size = v85.__r_.__value_.__l.__size_;
      if (v85.__r_.__value_.__l.__size_)
      {
        do
        {
          v17 = size;
          size = *(size + 8);
        }

        while (size);
      }

      else
      {
        p_size = &v85.__r_.__value_.__l.__size_;
        do
        {
          v17 = p_size[2];
          v19 = *v17 == p_size;
          p_size = v17;
        }

        while (v19);
      }

      if (*(v17 + 28) >= (((*a1)[1] - **a1) >> 2))
      {
LABEL_55:
        v55 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v55, "[scatter] Axes don't match array dimensions.");
      }

      else
      {
LABEL_14:
        if (v85.__r_.__value_.__r.__words[2] == (*(a2 + 8) - *a2) >> 4)
        {
          mlx::core::broadcast_arrays(a2, v15, 0, &v82);
          v79 = 0;
          v80 = 0;
          v81 = 0;
          if (v82 == v83 || &v79 == *v82)
          {
            v20 = 0;
            v21 = 0;
          }

          else
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v79, **v82, (*v82)[1], ((*v82)[1] - **v82) >> 2);
            v20 = v79;
            v21 = v80;
          }

          v23 = **a1;
          v22 = (*a1)[1];
          if (((v21 - v20) >> 2) + ((v22 - v23) >> 2) == ((*a3)[1] - **a3) >> 2)
          {
            if (v21 != v20)
            {
              v24 = 0;
              do
              {
                v25 = mlx::core::array::shape(a3, v24);
                if (v25 != *(v79 + v24))
                {
                  std::ostringstream::basic_ostringstream[abi:ne200100](&v86);
                  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v86, "[scatter] Update shape ", 23);
                  v46 = mlx::core::operator<<(v45, *a3);
                  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " is not valid for broadcasted index shape ", 42);
                  v48 = mlx::core::operator<<(v47, &v79);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ".", 1);
                  v49 = __cxa_allocate_exception(0x10uLL);
                  std::ostringstream::str[abi:ne200100](&v86, &v78);
                  std::logic_error::logic_error(v49, &v78);
                  v49->__vftable = (MEMORY[0x277D828F8] + 16);
                  __cxa_throw(v49, off_279921408, MEMORY[0x277D82610]);
                }

                ++v24;
              }

              while (v24 < (v80 - v79) >> 2);
              v23 = **a1;
              v22 = (*a1)[1];
            }

            if (v22 != v23)
            {
              v26 = 0;
              do
              {
                v27 = mlx::core::array::shape(a3, v26 + ((v80 - v79) >> 2));
                if (v27 > mlx::core::array::shape(a1, v26))
                {
                  std::ostringstream::basic_ostringstream[abi:ne200100](&v86);
                  v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v86, "[scatter] Updates with shape ", 29);
                  v51 = mlx::core::operator<<(v50, *a3);
                  v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, " are too large for array with shape ", 36);
                  v53 = mlx::core::operator<<(v52, *a1);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, ".", 1);
                  v54 = __cxa_allocate_exception(0x10uLL);
                  std::ostringstream::str[abi:ne200100](&v86, &v78);
                  std::logic_error::logic_error(v54, &v78);
                  v54->__vftable = (MEMORY[0x277D828F8] + 16);
                  __cxa_throw(v54, off_279921408, MEMORY[0x277D82610]);
                }

                ++v26;
              }

              while (v26 < ((*a1)[1] - **a1) >> 2);
            }

            v28 = mlx::core::result_type(a2);
            v76 = v28;
            v77 = BYTE4(v28);
            if (!mlx::core::issubdtype(&v76, &mlx::core::inexact))
            {
              v30 = v83;
              v29 = v82;
              if (v82 != v83)
              {
                do
                {
                  v31 = v29[1];
                  v75[0] = *v29;
                  v75[1] = v31;
                  if (v31)
                  {
                    atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
                  }

                  mlx::core::astype(v75, v76, a6, a7, &v86);
                  v32 = v86;
                  v86 = 0uLL;
                  v33 = v29[1];
                  *v29 = v32;
                  if (v33)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
                  }

                  mlx::core::array::~array(&v86);
                  mlx::core::array::~array(v75);
                  v29 += 2;
                }

                while (v29 != v30);
              }

              *&v86 = mlx::core::to_stream(a6, a7);
              DWORD2(v86) = v34;
              v78.__r_.__value_.__r.__words[0] = 1;
              if (!mlx::core::operator==(&v86 + 1, &v78) || *(*a1 + 60) << 32 != 0x800000000)
              {
                std::vector<mlx::core::array>::insert(&v82, v82, a1);
                v35 = a3[1];
                v74[0] = *a3;
                v74[1] = v35;
                if (v35)
                {
                  atomic_fetch_add_explicit(v35 + 1, 1uLL, memory_order_relaxed);
                }

                mlx::core::astype(v74, *(*a1 + 14), a6, a7, &v78);
                v36 = v83;
                if (v83 >= v84)
                {
                  v38 = (v83 - v82) >> 4;
                  if ((v38 + 1) >> 60)
                  {
                    std::vector<int>::__throw_length_error[abi:ne200100]();
                  }

                  v39 = (v84 - v82) >> 3;
                  if (v39 <= v38 + 1)
                  {
                    v39 = v38 + 1;
                  }

                  if (v84 - v82 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v40 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v40 = v39;
                  }

                  v89 = &v82;
                  if (v40)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(&v82, v40);
                  }

                  *&v86 = 0;
                  *(&v86 + 1) = 16 * v38;
                  v88 = 0;
                  **(&v86 + 1) = *&v78.__r_.__value_.__l.__data_;
                  *&v78.__r_.__value_.__l.__data_ = 0uLL;
                  v87 = 16 * v38 + 16;
                  std::vector<mlx::core::array>::__swap_out_circular_buffer(&v82, &v86);
                  v37 = v83;
                  std::__split_buffer<mlx::core::array>::~__split_buffer(&v86);
                }

                else
                {
                  *v83 = *&v78.__r_.__value_.__l.__data_;
                  v37 = (v36 + 16);
                  *&v78.__r_.__value_.__l.__data_ = 0uLL;
                }

                v83 = v37;
                mlx::core::array::~array(&v78);
                mlx::core::array::~array(v74);
                v41 = *a1;
                memset(__p, 0, sizeof(__p));
                std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v41, v41[1], (v41[1] - *v41) >> 2);
                v42 = (*a1)[7];
                v78.__r_.__value_.__r.__words[0] = mlx::core::to_stream(a6, a7);
                LODWORD(v78.__r_.__value_.__r.__words[1]) = v43;
                std::allocate_shared[abi:ne200100]<mlx::core::Scatter,std::allocator<mlx::core::Scatter>,mlx::core::Stream,mlx::core::Scatter::ReduceType &,std::vector<int> const&,0>();
              }

              std::ostringstream::basic_ostringstream[abi:ne200100](&v86);
              v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v86, "[scatter] GPU scatter does not yet support ", 43);
              v70 = (*a1)[7];
              LODWORD(v78.__r_.__value_.__l.__data_) = v70;
              v78.__r_.__value_.__s.__data_[4] = BYTE4(v70);
              v71 = mlx::core::operator<<(v69, &v78);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, " for the input or updates.", 26);
              v72 = __cxa_allocate_exception(0x10uLL);
              std::ostringstream::str[abi:ne200100](&v86, &v78);
              std::logic_error::logic_error(v72, &v78);
              v72->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(v72, off_279921408, MEMORY[0x277D82610]);
            }

            v68 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v68, "[scatter] Got indices with invalid dtype. Indices must be integral.");
            v68->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v68, off_279921408, MEMORY[0x277D82610]);
          }

          std::ostringstream::basic_ostringstream[abi:ne200100](&v86);
          v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v86, "[scatter] Updates with ", 23);
          v62 = MEMORY[0x25F851380](v61, ((*a3)[1] - **a3) >> 2);
          v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " dimensions does not match the sum of the array (", 49);
          v64 = MEMORY[0x25F851380](v63, ((*a1)[1] - **a1) >> 2);
          v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, ") and indices (", 15);
          v66 = MEMORY[0x25F851380](v65, (v80 - v79) >> 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, ") dimensions.", 13);
          v67 = __cxa_allocate_exception(0x10uLL);
          std::ostringstream::str[abi:ne200100](&v86, &v78);
          std::logic_error::logic_error(v67, &v78);
          v67->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v67, off_279921408, MEMORY[0x277D82610]);
        }

        v55 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v55, "[scatter] Number of index arrays does not match number of axes.");
      }
    }

    else
    {
      v55 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v55, "[scatter] Repeat axes not allowed in scatter.");
    }

    v55->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v55, off_279921408, MEMORY[0x277D82610]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v86);
  v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v86, "[scatter] Too many index arrays. Got ", 37);
  v57 = MEMORY[0x25F851380](v56, (*(a2 + 8) - *a2) >> 4);
  v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, " index arrays for input with ", 29);
  v59 = MEMORY[0x25F851380](v58, ((*a1)[1] - **a1) >> 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, " dimensions.", 12);
  v60 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](&v86, &v85);
  std::logic_error::logic_error(v60, &v85);
  v60->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v60, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A26061C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char *a29, char *a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *a35, void *a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((v43 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a41);
      if (a29)
      {
        a30 = a29;
        operator delete(a29);
      }

      a29 = &a32;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a29);
      std::__tree<int>::destroy(&a35, a36);
      _Unwind_Resume(a1);
    }
  }

  else if (!v43)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v42);
  goto LABEL_6;
}

void mlx::core::rsqrt(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  v9 = v6;
  v10 = BYTE4(v6);
  v7 = *a1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v7, v7[1], (v7[1] - *v7) >> 2);
  mlx::core::to_stream(a2, a3);
  operator new();
}

void sub_25A2609F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a19);
  mlx::core::array::~array(&a20);
  mlx::core::array::~array(&a9);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t **mlx::core::softmax@<X0>(uint64_t **result@<X0>, unsigned int **a2@<X1>, int a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v6 = result;
  v32 = *MEMORY[0x277D85DE8];
  v8 = *result;
  if ((*result)[6])
  {
    if (v8[1] != *v8 || *a2 == a2[1])
    {
      v13 = v8[7];
      LODWORD(v31) = v13;
      BYTE4(v31) = BYTE4(v13);
      v14 = mlx::core::issubdtype(&v31, &mlx::core::complexfloating);
      if (v14)
      {
        v15 = *v6;
      }

      else
      {
        v15 = *v6;
        if (a2[1] - *a2 == 4)
        {
          v17 = **a2;
          if (v17 == -1 || (v15[1] - *v15) >> 2 == v17 + 1)
          {
            v19 = v15[7];
            LODWORD(v31) = v19;
            BYTE4(v31) = BYTE4(v19);
            v20 = *v6;
            memset(__p, 0, sizeof(__p));
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v20, v20[1], (v20[1] - *v20) >> 2);
            mlx::core::to_stream(a4, a5);
            operator new();
          }
        }
      }

      v21 = v6[1];
      *&v31 = v15;
      *(&v31 + 1) = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
      }

      if (((v14 | a3 ^ 1) & 1) == 0)
      {
        v22 = v6[1];
        v28[0] = *v6;
        v28[1] = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
        }

        mlx::core::astype(v28, 10, a4, a5, &v29);
        v23 = v29;
        v29 = 0uLL;
        v24 = *(&v31 + 1);
        v31 = v23;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        mlx::core::array::~array(&v29);
        mlx::core::array::~array(v28);
      }

      mlx::core::max(&v31, a2, 1, a4, a5, v27);
      mlx::core::stop_gradient(v27, a4, a5);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[softmax] Received non-empty axes for array with 0 dimensions.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v16 = result[1];
  *a6 = v8;
  a6[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A260E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, void *__p, uint64_t a27)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a17);
  mlx::core::array::~array((v27 - 112));
  mlx::core::array::~array(&a19);
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::softmax(uint64_t **a1@<X0>, int a2@<W1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  std::vector<int>::vector[abi:ne200100](&__p, ((*a1)[1] - **a1) >> 2);
  if (__p != v18)
  {
    v10 = 0;
    v11 = (v18 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0D0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_25A99B0C0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  mlx::core::softmax(a1, &__p, a2, a3, a4, a5);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_25A2610AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::power(const void ***a1, const void ***a2, mlx::core *a3, uint64_t a4)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = (*a1)[7];
  LODWORD(v24) = v8;
  BYTE4(v24) = BYTE4(v8);
  v9 = (*a2)[7];
  LODWORD(v21) = v9;
  BYTE4(v21) = BYTE4(v9);
  v10 = mlx::core::promote_types(&v24, &v21);
  v11 = a1[1];
  v20[0] = *a1;
  v20[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v20, v10, a3, a4, &v24);
  v12 = a2[1];
  v19[0] = *a2;
  v19[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v19, v10, a3, a4, &v25);
  v21 = 0uLL;
  v22 = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v21, &v24, v26, 2uLL);
  for (i = 16; i != -16; i -= 16)
  {
    mlx::core::array::~array((&v24 + i));
  }

  mlx::core::array::~array(v19);
  mlx::core::array::~array(v20);
  v14 = **a1;
  v15 = (*a1)[1] - v14;
  v16 = **a2;
  if (v15 != (*a2)[1] - v16 || memcmp(v14, v16, v15))
  {
    mlx::core::broadcast_arrays(&v21, a3, a4, &v24);
    std::vector<mlx::core::array>::__vdeallocate(&v21);
    v21 = v24;
    v22 = v25;
    v23 = &v24;
    v25 = 0;
    v24 = 0uLL;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v23);
  }

  v17 = *v21;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v17, v17[1], (v17[1] - *v17) >> 2);
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A2613A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25)
{
  a25 = &a21;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

void mlx::core::cumsum(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, mlx::core *a5, uint64_t a6)
{
  v21[33] = *MEMORY[0x277D85DE8];
  v8 = **a1;
  v9 = (*a1)[1];
  if (((v9 - v8) >> 2) <= a2 || -((v9 - v8) >> 2) > a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v21);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "[cumsum] Axis ", 14);
    v15 = MEMORY[0x25F851360](v14, a2);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " is out of bounds for array with ", 33);
    v17 = MEMORY[0x25F851380](v16, ((*a1)[1] - **a1) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v21, &v20);
    std::logic_error::logic_error(exception, &v20);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v13 = (*a1)[7] & 0xFFFFFFFFFFLL;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v8, v9, (v9 - v8) >> 2);
  mlx::core::to_stream(a5, a6);
  operator new();
}

void sub_25A261718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void mlx::core::cumprod(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, mlx::core *a5, uint64_t a6)
{
  v21[33] = *MEMORY[0x277D85DE8];
  v8 = **a1;
  v9 = (*a1)[1];
  if (((v9 - v8) >> 2) <= a2 || -((v9 - v8) >> 2) > a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v21);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "[cumprod] Axis ", 15);
    v15 = MEMORY[0x25F851360](v14, a2);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " is out of bounds for array with ", 33);
    v17 = MEMORY[0x25F851380](v16, ((*a1)[1] - **a1) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v21, &v20);
    std::logic_error::logic_error(exception, &v20);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v8, v9, (v9 - v8) >> 2);
  v13 = (*a1)[7];
  mlx::core::to_stream(a5, a6);
  operator new();
}

void sub_25A261A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void mlx::core::cummax(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, mlx::core *a5, uint64_t a6)
{
  v21[33] = *MEMORY[0x277D85DE8];
  v8 = **a1;
  v9 = (*a1)[1];
  if (((v9 - v8) >> 2) <= a2 || -((v9 - v8) >> 2) > a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v21);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "[cummax] Axis ", 14);
    v15 = MEMORY[0x25F851360](v14, a2);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " is out of bounds for array with ", 33);
    v17 = MEMORY[0x25F851380](v16, ((*a1)[1] - **a1) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v21, &v20);
    std::logic_error::logic_error(exception, &v20);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v8, v9, (v9 - v8) >> 2);
  v13 = (*a1)[7];
  mlx::core::to_stream(a5, a6);
  operator new();
}

void sub_25A261D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void mlx::core::cummin(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, mlx::core *a5, uint64_t a6)
{
  v21[33] = *MEMORY[0x277D85DE8];
  v8 = **a1;
  v9 = (*a1)[1];
  if (((v9 - v8) >> 2) <= a2 || -((v9 - v8) >> 2) > a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v21);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "[cummin] Axis ", 14);
    v15 = MEMORY[0x25F851360](v14, a2);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " is out of bounds for array with ", 33);
    v17 = MEMORY[0x25F851380](v16, ((*a1)[1] - **a1) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v21, &v20);
    std::logic_error::logic_error(exception, &v20);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v8, v9, (v9 - v8) >> 2);
  v13 = (*a1)[7];
  mlx::core::to_stream(a5, a6);
  operator new();
}

void sub_25A2620C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void mlx::core::logcumsumexp(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, mlx::core *a5, uint64_t a6)
{
  v21[33] = *MEMORY[0x277D85DE8];
  v8 = **a1;
  v9 = (*a1)[1];
  if (((v9 - v8) >> 2) <= a2 || -((v9 - v8) >> 2) > a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v21);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "[logcumsumexp] Axis ", 20);
    v15 = MEMORY[0x25F851360](v14, a2);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " is out of bounds for array with ", 33);
    v17 = MEMORY[0x25F851380](v16, ((*a1)[1] - **a1) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v21, &v20);
    std::logic_error::logic_error(exception, &v20);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v8, v9, (v9 - v8) >> 2);
  v13 = (*a1)[7];
  mlx::core::to_stream(a5, a6);
  operator new();
}

void sub_25A262404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void mlx::core::conv1d(uint64_t **a1, uint64_t **a2, int a3, int a4, int a5, uint64_t a6, mlx::core *a7, uint64_t a8)
{
  v21 = a3;
  memset(v22, 0, sizeof(v22));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v22, &v21, v22, 1uLL);
  v19 = a4;
  memset(v20, 0, sizeof(v20));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v20, &v19, v20, 1uLL);
  v17 = a5;
  memset(v18, 0, sizeof(v18));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v18, &v17, v18, 1uLL);
  v15 = 1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v15, __p, 1uLL);
  mlx::core::conv_general(a1, a2, v22, v20, v18, __p, a6, 0, a7, a8);
}

void sub_25A2625FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a20)
  {
    operator delete(a20);
  }

  v23 = *(v21 - 88);
  if (v23)
  {
    *(v21 - 80) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::conv_general(uint64_t **a1, uint64_t **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, char a8, mlx::core *a9, uint64_t a10)
{
  v15 = a1[1];
  v23[0] = *a1;
  v23[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  v16 = a2[1];
  v22[0] = *a2;
  v22[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
  }

  memset(v21, 0, sizeof(v21));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v21, *a3, a3[1], (a3[1] - *a3) >> 2);
  memset(v20, 0, sizeof(v20));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v20, *a4, a4[1], (a4[1] - *a4) >> 2);
  memset(v19, 0, sizeof(v19));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v19, *a4, a4[1], (a4[1] - *a4) >> 2);
  memset(v18, 0, sizeof(v18));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v18, *a5, a5[1], (a5[1] - *a5) >> 2);
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *a6, a6[1], (a6[1] - *a6) >> 2);
  mlx::core::conv_general(v23, v22, v21, v20, v19, v18, __p, a7, a8, a9, a10);
}

void sub_25A2627FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v24 = *(v22 - 104);
  if (v24)
  {
    *(v22 - 96) = v24;
    operator delete(v24);
  }

  mlx::core::array::~array((v22 - 80));
  mlx::core::array::~array((v22 - 64));
  _Unwind_Resume(a1);
}

void mlx::core::conv2d(uint64_t **a1, uint64_t **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, mlx::core *a7, uint64_t a8)
{
  v23 = *MEMORY[0x277D85DE8];
  v22 = *a3;
  memset(v18, 0, sizeof(v18));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v18, &v22, &v23, 2uLL);
  v21 = *a4;
  memset(v17, 0, sizeof(v17));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v17, &v21, &v22, 2uLL);
  v20 = *a5;
  memset(v16, 0, sizeof(v16));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v16, &v20, &v21, 2uLL);
  v19 = 0x100000001;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v19, &v20, 2uLL);
  mlx::core::conv_general(a1, a2, v18, v17, v16, __p, a6, 0, a7, a8);
}

void sub_25A262A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::conv3d(uint64_t **a1, uint64_t **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, mlx::core *a7, uint64_t a8)
{
  *&v30[4] = *MEMORY[0x277D85DE8];
  v28 = *a3;
  v29 = *(a3 + 2);
  memset(v18, 0, sizeof(v18));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v18, &v28, v30, 3uLL);
  v25 = *a4;
  v26 = *(a4 + 2);
  memset(v17, 0, sizeof(v17));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v17, &v25, &v27, 3uLL);
  v22 = *a5;
  v23 = *(a5 + 2);
  memset(v16, 0, sizeof(v16));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v16, &v22, &v24, 3uLL);
  v19 = 0x100000001;
  v20 = 1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v19, &v21, 3uLL);
  mlx::core::conv_general(a1, a2, v18, v17, v16, __p, a6, 0, a7, a8);
}

void sub_25A262C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::conv_transpose_general(uint64_t **a1, uint64_t **a2, void *a3, uint64_t *a4, void *a5, void *a6, unsigned int a7, uint64_t a8, mlx::core *a9, uint64_t a10)
{
  std::vector<int>::vector[abi:ne200100](&v48, (a4[1] - *a4) >> 2);
  std::vector<int>::vector[abi:ne200100](&v46, (a4[1] - *a4) >> 2);
  if (a4[1] != *a4)
  {
    v14 = 0;
    do
    {
      v15 = *(*a5 + 4 * v14);
      v16 = mlx::core::array::shape(a2, v14 + 1);
      *(v48 + 4 * v14) = (v16 - 1) * v15 - *(*a4 + 4 * v14);
      v17 = mlx::core::array::shape(a1, v14 + 1);
      v18 = *(*a3 + 4 * v14);
      v31 = *(*a4 + 4 * v14);
      v32 = *(*a5 + 4 * v14);
      v19 = mlx::core::array::shape(a2, v14 + 1);
      v20 = a5;
      v21 = a3;
      v22 = *(*a3 + 4 * v14);
      v23 = mlx::core::array::shape(a1, v14 + 1);
      v24 = *a4;
      v25 = a4[1];
      *(v46 + 4 * v14) = v18 * (v17 - 1) - 2 * v31 + (v19 - 1) * v32 + v22 - v22 * v23 + *(*a4 + 4 * v14) + *(*a6 + 4 * v14);
      ++v14;
      a3 = v21;
      a5 = v20;
    }

    while (v14 < (v25 - v24) >> 2);
  }

  v26 = a1[1];
  v45[0] = *a1;
  v45[1] = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
  }

  v27 = a2[1];
  v44[0] = *a2;
  v44[1] = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(v27 + 1, 1uLL, memory_order_relaxed);
  }

  v28 = (a3[1] - *a3) >> 2;
  v42 = 1;
  std::vector<int>::vector[abi:ne200100](&v43, v28);
  *v40 = v48;
  v41 = v49;
  v49 = 0;
  v48 = 0uLL;
  *v38 = v46;
  v39 = v47;
  v46 = 0uLL;
  v47 = 0;
  *v36 = *a5;
  v37 = a5[2];
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  *__p = *a3;
  v35 = a3[2];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  mlx::core::conv_general(v45, v44, &v43, v40, v38, v36, __p, a7, 1, a9, a10);
}

void sub_25A262FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a34)
  {
    operator delete(a34);
  }

  mlx::core::array::~array((v35 - 176));
  mlx::core::array::~array((v35 - 160));
  v37 = *(v35 - 144);
  if (v37)
  {
    *(v35 - 136) = v37;
    operator delete(v37);
  }

  v38 = *(v35 - 112);
  if (v38)
  {
    *(v35 - 104) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(a1);
}

void mlx::core::conv_general(uint64_t **a1, uint64_t **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8, char a9, mlx::core *a10, uint64_t a11)
{
  v213[33] = *MEMORY[0x277D85DE8];
  v211 = a8;
  v210 = a9;
  v17 = (*a1)[1] - **a1;
  if (a8 == 1 || ((v17 >> 2) - 3) < 2)
  {
    v18 = v17 >> 2;
    if ((v17 >> 2) - 6 > 0xFFFFFFFC)
    {
      v19 = (*a1)[7];
      LODWORD(v213[0]) = v19;
      BYTE4(v213[0]) = BYTE4(v19);
      if (mlx::core::issubdtype(v213, &mlx::core::floating))
      {
        v20 = (v18 - 2);
        v21 = (*a1)[1] - **a1;
        if (v21 >> 2 == v18)
        {
          if ((*a2)[1] - **a2 == v21)
          {
            v22 = v18 - 1;
            if (!(mlx::core::array::shape(a1, v22) % a8))
            {
              if (a8 >= 2)
              {
                v23 = **a2;
                if ((*a2)[1] == v23)
                {
                  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
                }

                if (*v23 % a8)
                {
                  std::ostringstream::basic_ostringstream[abi:ne200100](v213);
                  v182 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "[conv] If groups > 1, the output channels must be divisible by the number", 73);
                  v183 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v182, " of groups. Got ", 16);
                  v184 = **a2;
                  if ((*a2)[1] == v184)
                  {
                    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
                  }

                  v195 = MEMORY[0x25F851360](v183, *v184);
                  v196 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v195, " output channels and ", 21);
                  v197 = MEMORY[0x25F851360](v196, a8);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v197, " groups.", 8);
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::ostringstream::str[abi:ne200100](v213, &v212);
                  std::logic_error::logic_error(exception, &v212);
                  exception->__vftable = (MEMORY[0x277D828F8] + 16);
                  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
                }
              }

              v24 = mlx::core::array::shape(a1, v22);
              if (v24 == mlx::core::array::shape(a2, v22) * a8)
              {
                v25 = (*a1)[7];
                LODWORD(v213[0]) = v25;
                BYTE4(v213[0]) = BYTE4(v25);
                v26 = (*a2)[7];
                LODWORD(v212.__r_.__value_.__l.__data_) = v26;
                v212.__r_.__value_.__s.__data_[4] = BYTE4(v26);
                v27 = mlx::core::promote_types(v213, &v212);
                v28 = a1[1];
                v209[0] = *a1;
                v209[1] = v28;
                if (v28)
                {
                  atomic_fetch_add_explicit(v28 + 1, 1uLL, memory_order_relaxed);
                }

                mlx::core::astype(v209, v27, a10, a11, v213);
                v29 = *v213;
                v213[0] = 0;
                v213[1] = 0;
                v30 = a1[1];
                *a1 = v29;
                if (v30)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
                }

                mlx::core::array::~array(v213);
                mlx::core::array::~array(v209);
                v31 = a2[1];
                v208[0] = *a2;
                v208[1] = v31;
                if (v31)
                {
                  atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
                }

                mlx::core::astype(v208, v27, a10, a11, v213);
                v32 = *v213;
                v213[0] = 0;
                v213[1] = 0;
                v33 = a2[1];
                *a2 = v32;
                if (v33)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
                }

                mlx::core::array::~array(v213);
                mlx::core::array::~array(v208);
                v34 = *a3;
                v35 = a3[1];
                if (v35 - *a3 <= 4)
                {
                  if (v35 == v34)
                  {
                    v36 = 1;
                  }

                  else
                  {
                    v36 = *v34;
                  }

                  LODWORD(v212.__r_.__value_.__l.__data_) = v36;
                  std::vector<int>::vector[abi:ne200100](v213, v20);
                  v37 = *a3;
                  if (*a3)
                  {
                    a3[1] = v37;
                    operator delete(v37);
                    *a3 = 0;
                    a3[1] = 0;
                    a3[2] = 0;
                  }

                  *a3 = *v213;
                  a3[2] = v213[2];
                }

                v38 = *a4;
                v39 = a4[1];
                if (v39 - *a4 <= 4)
                {
                  if (v39 == v38)
                  {
                    v40 = 0;
                  }

                  else
                  {
                    v40 = *v38;
                  }

                  LODWORD(v212.__r_.__value_.__l.__data_) = v40;
                  std::vector<int>::vector[abi:ne200100](v213, v20);
                  v41 = *a4;
                  if (*a4)
                  {
                    a4[1] = v41;
                    operator delete(v41);
                    *a4 = 0;
                    a4[1] = 0;
                    a4[2] = 0;
                  }

                  *a4 = *v213;
                  a4[2] = v213[2];
                }

                v42 = *a5;
                v43 = a5[1];
                if (v43 - *a5 <= 4)
                {
                  if (v43 == v42)
                  {
                    v44 = 0;
                  }

                  else
                  {
                    v44 = *v42;
                  }

                  LODWORD(v212.__r_.__value_.__l.__data_) = v44;
                  std::vector<int>::vector[abi:ne200100](v213, v20);
                  v45 = *a5;
                  if (*a5)
                  {
                    a5[1] = v45;
                    operator delete(v45);
                    *a5 = 0;
                    a5[1] = 0;
                    a5[2] = 0;
                  }

                  *a5 = *v213;
                  a5[2] = v213[2];
                }

                v46 = *a6;
                v47 = a6[1];
                if (v47 - *a6 <= 4)
                {
                  if (v47 == v46)
                  {
                    v48 = 1;
                  }

                  else
                  {
                    v48 = *v46;
                  }

                  LODWORD(v212.__r_.__value_.__l.__data_) = v48;
                  std::vector<int>::vector[abi:ne200100](v213, v20);
                  v49 = *a6;
                  if (*a6)
                  {
                    a6[1] = v49;
                    operator delete(v49);
                    *a6 = 0;
                    a6[1] = 0;
                    a6[2] = 0;
                  }

                  *a6 = *v213;
                  a6[2] = v213[2];
                }

                v50 = *a7;
                v51 = a7[1];
                if (v51 - *a7 <= 4)
                {
                  if (v51 == v50)
                  {
                    v52 = 1;
                  }

                  else
                  {
                    v52 = *v50;
                  }

                  LODWORD(v212.__r_.__value_.__l.__data_) = v52;
                  std::vector<int>::vector[abi:ne200100](v213, v20);
                  v53 = *a7;
                  if (*a7)
                  {
                    a7[1] = v53;
                    operator delete(v53);
                    *a7 = 0;
                    a7[1] = 0;
                    a7[2] = 0;
                  }

                  *a7 = *v213;
                  a7[2] = v213[2];
                }

                v54 = *a4;
                v55 = a4[1];
                if (*a4 == v55)
                {
                  LOBYTE(v56) = 0;
                }

                else
                {
                  LOBYTE(v56) = 0;
                  do
                  {
                    v57 = *v54++;
                    v56 = v56 & 1 | (v57 >> 31);
                  }

                  while (v54 != v55);
                }

                for (i = *a5; i != a5[1]; ++i)
                {
                  v59 = *i;
                  v56 = v56 & 1 | (v59 >> 31);
                }

                if (v56)
                {
                  v60 = ((*a1)[1] - **a1) >> 2;
                  LODWORD(v212.__r_.__value_.__l.__data_) = 0;
                  std::vector<int>::vector[abi:ne200100](v213, v60);
                  v61 = *a1;
                  memset(&v212, 0, sizeof(v212));
                  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v212, *v61, v61[1], (v61[1] - *v61) >> 2);
                  v62 = v213[0];
                  v63 = v212.__r_.__value_.__r.__words[0];
                  if (v20 >= 1)
                  {
                    v64 = *a4;
                    v65 = v213[0] + 4;
                    v66 = *a5;
                    v67 = (v212.__r_.__value_.__r.__words[0] + 4);
                    do
                    {
                      if ((*v64 & 0x80000000) != 0)
                      {
                        *v65 -= *v64;
                        *v64 = 0;
                      }

                      if ((*v66 & 0x80000000) != 0)
                      {
                        *v67 += *v66;
                        *v66 = 0;
                      }

                      ++v64;
                      ++v66;
                      ++v65;
                      ++v67;
                      --v20;
                    }

                    while (v20);
                  }

                  v206 = v62;
                  v207 = *&v213[1];
                  memset(v213, 0, 24);
                  __p = v63;
                  v205 = *&v212.__r_.__value_.__r.__words[1];
                  memset(&v212, 0, sizeof(v212));
                  mlx::core::slice(a1, &v206, &__p, a10, a11, v202);
                  v68 = *v202;
                  v202[0] = 0;
                  v202[1] = 0;
                  v69 = a1[1];
                  *a1 = v68;
                  if (v69)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
                  }

                  mlx::core::array::~array(v202);
                  if (__p)
                  {
                    *&v205 = __p;
                    operator delete(__p);
                  }

                  if (v206)
                  {
                    *&v207 = v206;
                    operator delete(v206);
                  }

                  if (v212.__r_.__value_.__r.__words[0])
                  {
                    v212.__r_.__value_.__l.__size_ = v212.__r_.__value_.__r.__words[0];
                    operator delete(v212.__r_.__value_.__l.__data_);
                  }

                  if (v213[0])
                  {
                    v213[1] = v213[0];
                    operator delete(v213[0]);
                  }
                }

                v70 = *a1;
                v71 = **a1;
                v72 = *v71;
                v199 = *a2;
                v73 = ***a2;
                std::vector<int>::vector[abi:ne200100](v202, ((*a1)[1] - v71) >> 2);
                v74 = v202[0];
                *v202[0] = v72;
                v75 = (v70[1] - *v70) >> 2;
                v76 = (v75 - 2);
                v77 = *a3;
                v78 = a3[1] - *a3;
                if (v76 == v78 >> 2)
                {
                  v79 = *a4;
                  if (a4[1] - *a4 == v78)
                  {
                    v80 = *a5;
                    if (a5[1] - *a5 == v78)
                    {
                      v81 = *a6;
                      if (a6[1] - *a6 == v78)
                      {
                        v82 = *a7;
                        if (a7[1] - *a7 == v78)
                        {
                          v83 = v75 - 1;
                          if ((v75 - 1) < 2)
                          {
                            v83 = 1;
                          }

                          else
                          {
                            v84 = 0;
                            v85 = v75 - 2;
                            v86 = *v70 + 4;
                            v87 = *v199 + 4;
                            do
                            {
                              v88 = *(v81 + 4 * v84);
                              if (v88 <= 0)
                              {
                                std::ostringstream::basic_ostringstream[abi:ne200100](v213);
                                v105 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "[conv] Kernel dilation sizes must be positive.", 46);
                                v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, " Got kernel dilation ", 21);
                                v107 = mlx::core::operator<<(v106, a6);
                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v107, ".", 1);
                                v108 = __cxa_allocate_exception(0x10uLL);
                                std::ostringstream::str[abi:ne200100](v213, &v212);
                                std::logic_error::logic_error(v108, &v212);
                                v108->__vftable = (MEMORY[0x277D828F8] + 16);
                                __cxa_throw(v108, off_279921408, MEMORY[0x277D82610]);
                              }

                              v89 = *(v82 + 4 * v84);
                              if (v89 <= 0)
                              {
                                std::ostringstream::basic_ostringstream[abi:ne200100](v213);
                                v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "[conv] Input dilation sizes must be positive.", 45);
                                v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, " Got input dilation ", 20);
                                v111 = mlx::core::operator<<(v110, a7);
                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, ".", 1);
                                v112 = __cxa_allocate_exception(0x10uLL);
                                std::ostringstream::str[abi:ne200100](v213, &v212);
                                std::logic_error::logic_error(v112, &v212);
                                v112->__vftable = (MEMORY[0x277D828F8] + 16);
                                __cxa_throw(v112, off_279921408, MEMORY[0x277D82610]);
                              }

                              v90 = *(v79 + 4 * v84);
                              if (v90 < 0 || (v91 = *(v80 + 4 * v84), v91 < 0))
                              {
                                std::ostringstream::basic_ostringstream[abi:ne200100](v213);
                                v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "[conv] Padding sizes must be non-negative.", 42);
                                v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, " Got padding ", 13);
                                v97 = mlx::core::operator<<(v96, a4);
                                v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, " | ", 3);
                                v99 = mlx::core::operator<<(v98, a5);
                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v99, ".", 1);
                                v100 = __cxa_allocate_exception(0x10uLL);
                                std::ostringstream::str[abi:ne200100](v213, &v212);
                                std::logic_error::logic_error(v100, &v212);
                                v100->__vftable = (MEMORY[0x277D828F8] + 16);
                                __cxa_throw(v100, off_279921408, MEMORY[0x277D82610]);
                              }

                              v92 = *(v77 + 4 * v84);
                              if (v92 <= 0)
                              {
                                std::ostringstream::basic_ostringstream[abi:ne200100](v213);
                                v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "[conv] Stride sizes must be positive.", 37);
                                v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, " Got strides ", 13);
                                v103 = mlx::core::operator<<(v102, a3);
                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, ".", 1);
                                v104 = __cxa_allocate_exception(0x10uLL);
                                std::ostringstream::str[abi:ne200100](v213, &v212);
                                std::logic_error::logic_error(v104, &v212);
                                v104->__vftable = (MEMORY[0x277D828F8] + 16);
                                __cxa_throw(v104, off_279921408, MEMORY[0x277D82610]);
                              }

                              v93 = (v91 + v90 + v88 - v88 * *(v87 + 4 * v84) + (*(v86 + 4 * v84) - 1) * v89) / v92;
                              v74[v84 + 1] = v93 + 1;
                              if (v93 < 0)
                              {
                                std::ostringstream::basic_ostringstream[abi:ne200100](v213);
                                v113 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "[conv] Spatial dimensions of input after padding", 48);
                                v114 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v113, " cannot be smaller than weight spatial dimensions.", 50);
                                v115 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v114, " Got error at axis ", 19);
                                v116 = MEMORY[0x25F851360](v115, v84 + 1);
                                v117 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v116, " for input with shape ", 22);
                                v118 = mlx::core::operator<<(v117, v70);
                                v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, ", padding low ", 14);
                                v120 = mlx::core::operator<<(v119, a4);
                                v121 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v120, ", padding high ", 15);
                                v122 = mlx::core::operator<<(v121, a5);
                                v123 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, ", and weight of shape ", 22);
                                v124 = mlx::core::operator<<(v123, v199);
                                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v124, ".", 1);
                                v125 = __cxa_allocate_exception(0x10uLL);
                                std::ostringstream::str[abi:ne200100](v213, &v212);
                                std::logic_error::logic_error(v125, &v212);
                                v125->__vftable = (MEMORY[0x277D828F8] + 16);
                                __cxa_throw(v125, off_279921408, MEMORY[0x277D82610]);
                              }

                              ++v84;
                            }

                            while (v85 != v84);
                          }

                          v74[v83] = v73;
                          v202[1] = 0;
                          v203 = 0;
                          v202[0] = 0;
                          v94 = (*a1)[7];
                          mlx::core::to_stream(a10, a11);
                          std::allocate_shared[abi:ne200100]<mlx::core::Convolution,std::allocator<mlx::core::Convolution>,mlx::core::Stream,std::vector<int> &,std::vector<int> &,std::vector<int> &,std::vector<int> &,int &,BOOL &,0>();
                        }

                        std::ostringstream::basic_ostringstream[abi:ne200100](v213);
                        v177 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "[conv] Invalid input dilation ", 30);
                        v178 = mlx::core::operator<<(v177, a7);
                        v179 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v178, "for ", 4);
                        v180 = MEMORY[0x25F851360](v179, v76);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v180, "D convolution.", 14);
                        v181 = __cxa_allocate_exception(0x10uLL);
                        std::ostringstream::str[abi:ne200100](v213, &v212);
                        std::logic_error::logic_error(v181, &v212);
                        v181->__vftable = (MEMORY[0x277D828F8] + 16);
                        __cxa_throw(v181, off_279921408, MEMORY[0x277D82610]);
                      }

                      std::ostringstream::basic_ostringstream[abi:ne200100](v213);
                      v172 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "[conv] Invalid kernel dilation ", 31);
                      v173 = mlx::core::operator<<(v172, a6);
                      v174 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v173, "for ", 4);
                      v175 = MEMORY[0x25F851360](v174, v76);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v175, "D convolution.", 14);
                      v176 = __cxa_allocate_exception(0x10uLL);
                      std::ostringstream::str[abi:ne200100](v213, &v212);
                      std::logic_error::logic_error(v176, &v212);
                      v176->__vftable = (MEMORY[0x277D828F8] + 16);
                      __cxa_throw(v176, off_279921408, MEMORY[0x277D82610]);
                    }
                  }

                  std::ostringstream::basic_ostringstream[abi:ne200100](v213);
                  v126 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "[conv] Invalid padding ", 23);
                  v127 = mlx::core::operator<<(v126, a4);
                  v128 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v127, " | ", 3);
                  v129 = mlx::core::operator<<(v128, a5);
                  v130 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v129, "for ", 4);
                  v131 = MEMORY[0x25F851360](v130, v76);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v131, "D convolution.", 14);
                  v132 = __cxa_allocate_exception(0x10uLL);
                  std::ostringstream::str[abi:ne200100](v213, &v212);
                  std::logic_error::logic_error(v132, &v212);
                  v132->__vftable = (MEMORY[0x277D828F8] + 16);
                  __cxa_throw(v132, off_279921408, MEMORY[0x277D82610]);
                }

                std::ostringstream::basic_ostringstream[abi:ne200100](v213);
                v167 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "[conv] Invalid strides ", 23);
                v168 = mlx::core::operator<<(v167, a3);
                v169 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v168, " for ", 5);
                v170 = MEMORY[0x25F851360](v169, v76);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v170, "D convolution.", 14);
                v171 = __cxa_allocate_exception(0x10uLL);
                std::ostringstream::str[abi:ne200100](v213, &v212);
                std::logic_error::logic_error(v171, &v212);
                v171->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(v171, off_279921408, MEMORY[0x277D82610]);
              }

              std::ostringstream::basic_ostringstream[abi:ne200100](v213);
              if (a8 == 1)
              {
                v161 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "[conv] Expect the input channels in the input", 45);
                v162 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v161, " and weight array to match but got shapes -", 43);
                v163 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v162, " input: ", 8);
                v164 = mlx::core::operator<<(v163, *a1);
                v165 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v164, " and weight: ", 13);
                mlx::core::operator<<(v165, *a2);
              }

              else
              {
                v185 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "Given groups=", 13);
                v186 = MEMORY[0x25F851360](v185, a8);
                v187 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v186, " and weights of shape ", 22);
                v188 = mlx::core::operator<<(v187, *a2);
                v189 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v188, ", expected to have ", 19);
                v190 = mlx::core::array::shape(a2, v22);
                v191 = MEMORY[0x25F851360](v189, (v190 * a8));
                v192 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v191, " input channels but got ", 24);
                v193 = mlx::core::array::shape(a1, v22);
                v194 = MEMORY[0x25F851360](v192, v193);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v194, " input channels instead.", 24);
              }

              v166 = __cxa_allocate_exception(0x10uLL);
              std::ostringstream::str[abi:ne200100](v213, &v212);
              std::logic_error::logic_error(v166, &v212);
              v166->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(v166, off_279921408, MEMORY[0x277D82610]);
            }

            std::ostringstream::basic_ostringstream[abi:ne200100](v213);
            v155 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "[conv] The input channels must be divisible by the number", 57);
            v156 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v155, " of groups. Got input with shape ", 33);
            v157 = mlx::core::operator<<(v156, *a1);
            v158 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v157, " and ", 5);
            v159 = MEMORY[0x25F851360](v158, a8);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v159, " groups.", 8);
            v160 = __cxa_allocate_exception(0x10uLL);
            std::ostringstream::str[abi:ne200100](v213, &v212);
            std::logic_error::logic_error(v160, &v212);
            v160->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v160, off_279921408, MEMORY[0x277D82610]);
          }

          std::ostringstream::basic_ostringstream[abi:ne200100](v213);
          v147 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "[conv] Invalid weight array with ", 33);
          v148 = MEMORY[0x25F851380](v147, ((*a2)[1] - **a2) >> 2);
          v149 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v148, " dimensions for ", 16);
          v150 = MEMORY[0x25F851360](v149, (v18 - 2));
          v151 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v150, "D convolution.", 14);
          v152 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v151, " Expected an array with ", 24);
          v153 = MEMORY[0x25F851360](v152, v18);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v153, " dimensions following the format [C_out, ..., C_in].", 52);
          v154 = __cxa_allocate_exception(0x10uLL);
          std::ostringstream::str[abi:ne200100](v213, &v212);
          std::logic_error::logic_error(v154, &v212);
          v154->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v154, off_279921408, MEMORY[0x277D82610]);
        }

        std::ostringstream::basic_ostringstream[abi:ne200100](v213);
        v139 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "[conv] Invalid input array with ", 32);
        v140 = MEMORY[0x25F851380](v139, ((*a1)[1] - **a1) >> 2);
        v141 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v140, " dimensions for ", 16);
        v142 = MEMORY[0x25F851360](v141, (v18 - 2));
        v143 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v142, "D convolution.", 14);
        v144 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v143, " Expected an array with ", 24);
        v145 = MEMORY[0x25F851360](v144, v18);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v145, " dimensions following the format [N, ..., C_in].", 48);
        v146 = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v213, &v212);
        std::logic_error::logic_error(v146, &v212);
        v146->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v146, off_279921408, MEMORY[0x277D82610]);
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](v213);
      v134 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, "[conv] Invalid input array with type ", 37);
      v135 = (*a1)[7];
      LODWORD(v212.__r_.__value_.__l.__data_) = v135;
      v212.__r_.__value_.__s.__data_[4] = BYTE4(v135);
      v136 = mlx::core::operator<<(v134, &v212);
      v137 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v136, ".", 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v137, " Convolution currently only supports floating point types", 57);
      v138 = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v213, &v212);
      std::logic_error::logic_error(v138, &v212);
      v138->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v138, off_279921408, MEMORY[0x277D82610]);
    }

    v133 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v133, "[conv] Only works for inputs with 1-3 spatial dimensions. The inputs must be in the format [N, ..., C_in]");
  }

  else
  {
    v133 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v133, "[conv] Can only handle groups != 1 in 1D or 2D convolutions.");
  }

  __cxa_throw(v133, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A2645E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  if (a46 < 0)
  {
    operator delete(__p);
    if ((v50 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a48);
      if (a27)
      {
        operator delete(a27);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v50)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v49);
  goto LABEL_6;
}

void mlx::core::conv_transpose1d(uint64_t **a1, uint64_t **a2, int a3, int a4, int a5, int a6, unsigned int a7, uint64_t a8, mlx::core *a9, uint64_t a10)
{
  v23 = a3;
  memset(v24, 0, sizeof(v24));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v24, &v23, v24, 1uLL);
  v21 = a4;
  memset(v22, 0, sizeof(v22));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v22, &v21, v22, 1uLL);
  v19 = a5;
  memset(v20, 0, sizeof(v20));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v20, &v19, v20, 1uLL);
  v17 = a6;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v17, __p, 1uLL);
  mlx::core::conv_transpose_general(a1, a2, v24, v22, v20, __p, a7, v16, a9, a10);
}

void sub_25A26497C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a20)
  {
    operator delete(a20);
  }

  v23 = *(v21 - 88);
  if (v23)
  {
    *(v21 - 80) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::conv_transpose2d(uint64_t **a1, uint64_t **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned int a7, uint64_t a8, mlx::core *a9, uint64_t a10)
{
  v25 = *MEMORY[0x277D85DE8];
  v24 = *a3;
  memset(v20, 0, sizeof(v20));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v20, &v24, &v25, 2uLL);
  v23 = *a4;
  memset(v19, 0, sizeof(v19));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v19, &v23, &v24, 2uLL);
  v22 = *a5;
  memset(v18, 0, sizeof(v18));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v18, &v22, &v23, 2uLL);
  v21 = *a6;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v21, &v22, 2uLL);
  mlx::core::conv_transpose_general(a1, a2, v20, v19, v18, __p, a7, v16, a9, a10);
}

void sub_25A264B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::conv_transpose3d(uint64_t **a1, uint64_t **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned int a7, uint64_t a8, mlx::core *a9, uint64_t a10)
{
  *&v32[4] = *MEMORY[0x277D85DE8];
  v30 = *a3;
  v31 = *(a3 + 2);
  memset(v20, 0, sizeof(v20));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v20, &v30, v32, 3uLL);
  v27 = *a4;
  v28 = *(a4 + 2);
  memset(v19, 0, sizeof(v19));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v19, &v27, &v29, 3uLL);
  v24 = *a5;
  v25 = *(a5 + 2);
  memset(v18, 0, sizeof(v18));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v18, &v24, &v26, 3uLL);
  v21 = *a6;
  v22 = *(a6 + 2);
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v21, &v23, 3uLL);
  mlx::core::conv_transpose_general(a1, a2, v20, v19, v18, __p, a7, v16, a9, a10);
}

void sub_25A264D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::quantized_matmul(void *a1, uint64_t a2, uint64_t **a3, uint64_t **a4, char a5, unsigned int a6, unsigned int a7, uint64_t a8, mlx::core *a9, uint64_t a10)
{
  v55[26] = *MEMORY[0x277D85DE8];
  v15 = *(*a1 + 56);
  LODWORD(v51.__r_.__value_.__l.__data_) = v15;
  v51.__r_.__value_.__s.__data_[4] = BYTE4(v15);
  v16 = (*a3)[7];
  LODWORD(v46.__r_.__value_.__l.__data_) = v16;
  v46.__r_.__value_.__s.__data_[4] = BYTE4(v16);
  v17 = mlx::core::promote_types(&v51, &v46);
  LODWORD(v51.__r_.__value_.__l.__data_) = v17;
  v51.__r_.__value_.__s.__data_[4] = BYTE4(v17);
  v18 = (*a4)[7];
  LODWORD(v46.__r_.__value_.__l.__data_) = v18;
  v46.__r_.__value_.__s.__data_[4] = BYTE4(v18);
  v19 = mlx::core::promote_types(&v51, &v46);
  v47 = v19;
  v48 = BYTE4(v19);
  if (mlx::core::issubdtype(&v47, &mlx::core::floating))
  {
    v21 = a1[1];
    v45[0] = *a1;
    v45[1] = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
    }

    mlx::core::astype(v45, v47, v20, 0, &v51);
    v23 = *(a2 + 8);
    v51.__r_.__value_.__r.__words[2] = *a2;
    v52 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    v24 = a3[1];
    v44[0] = *a3;
    v44[1] = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
    }

    mlx::core::astype(v44, v47, v22, 0, &v53);
    v26 = a4[1];
    v43[0] = *a4;
    v43[1] = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
    }

    mlx::core::astype(v43, v47, v25, 0, &v54);
    memset(&v46, 0, sizeof(v46));
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v46, &v51, v55, 4uLL);
    v27 = HIDWORD(quantized_matmul_dims);
    for (i = 48; i != -16; i -= 16)
    {
      mlx::core::array::~array((&v51 + i));
    }

    mlx::core::array::~array(v43);
    mlx::core::array::~array(v44);
    mlx::core::array::~array(v45);
    if (*(*a1 + 8) - **a1 >= 9uLL && *(*a2 + 8) - **a2 >= 9uLL)
    {
      v50 = -2;
      v41 = 0;
      v42 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v50, &v51, 2uLL);
      mlx::core::broadcast_arrays(&v46, &__p, a9, a10, &v51);
      std::vector<mlx::core::array>::__vdeallocate(&v46.__r_.__value_.__l.__data_);
      v46 = v51;
      memset(&v51, 0, sizeof(v51));
      v49 = &v51;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v49);
      if (__p)
      {
        v41 = __p;
        operator delete(__p);
      }
    }

    v29 = *v46.__r_.__value_.__l.__data_;
    memset(&v51, 0, sizeof(v51));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v51, *v29, v29[1], (v29[1] - *v29) >> 2);
    *(v51.__r_.__value_.__l.__size_ - 4) = v27;
    memset(&v51, 0, sizeof(v51));
    mlx::core::to_stream(a9, a10);
    operator new();
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v51);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "[quantized_matmul] Only real floating types are supported but ", 62);
  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "the passed types where x.dtype() == ", 36);
  v32 = *(*a1 + 56);
  LODWORD(v46.__r_.__value_.__l.__data_) = v32;
  v46.__r_.__value_.__s.__data_[4] = BYTE4(v32);
  v33 = mlx::core::operator<<(v31, &v46);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ", scales.dtype() == ", 20);
  v35 = (*a3)[7];
  LODWORD(v49) = v35;
  BYTE4(v49) = BYTE4(v35);
  v36 = mlx::core::operator<<(v34, &v49);
  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " and biases.dtype() == ", 23);
  v38 = (*a4)[7];
  LODWORD(v50) = v38;
  BYTE4(v50) = BYTE4(v38);
  mlx::core::operator<<(v37, &v50);
  exception = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](&v51, &v46);
  std::logic_error::logic_error(exception, &v46);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A265344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if ((v40 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a38);
      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v39);
  goto LABEL_6;
}

uint64_t mlx::core::anonymous namespace::extract_quantized_matmul_dims(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t **a5, uint64_t **a6, char a7, unsigned int a8, unsigned int a9)
{
  v9 = *a4;
  if (*(*a4 + 14) != 3)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v82);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "[", 1);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, a1, a2);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "] The weight matrix should be uint32 ", 37);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "but received ", 13);
    v37 = (*a4)[7];
    LODWORD(v81.__r_.__value_.__l.__data_) = v37;
    v81.__r_.__value_.__s.__data_[4] = BYTE4(v37);
    mlx::core::operator<<(v36, &v81);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v82, &v81);
    std::logic_error::logic_error(exception, &v81);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v13 = **a5;
  v12 = (*a5)[1];
  v14 = **a6;
  if (v12 - v13 != (*a6)[1] - v14 || memcmp(**a5, v14, v12 - v13))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v82);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "[", 1);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, a1, a2);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "] Scales and biases should have the same shape. ", 48);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Received scales with shape ", 27);
    v30 = mlx::core::operator<<(v29, *a5);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " and biases with ", 17);
    mlx::core::operator<<(v31, *a6);
    v32 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v82, &v81);
    std::logic_error::logic_error(v32, &v81);
    v32->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v32, off_279921408, MEMORY[0x277D82610]);
  }

  v18 = *v9;
  v17 = v9[1];
  v19 = &v17[-*v9];
  if (memcmp(v18, v13, v19 - 8))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v82);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "[", 1);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, a1, a2);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "] Weight, scales and biases should have the same batch shape. ", 62);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "Received weight with shape ", 27);
    v43 = mlx::core::operator<<(v42, *a4);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ", scales with ", 14);
    v45 = mlx::core::operator<<(v44, *a5);
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " and biases with ", 17);
    mlx::core::operator<<(v46, *a6);
    v47 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v82, &v81);
    std::logic_error::logic_error(v47, &v81);
    v47->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v47, off_279921408, MEMORY[0x277D82610]);
  }

  if (v17 == v18 || v12 == v13)
  {
    goto LABEL_16;
  }

  v20 = &v18[v19];
  v21 = (32 * *&v18[v19 - 4] / a9);
  if (v21 != *(v12 - 1) * a8)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v82);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "[", 1);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, a1, a2);
    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "] The shapes of the weight and scales are ", 42);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "incompatible based on bits and group_size. w.shape() == ", 56);
    v52 = mlx::core::operator<<(v51, *a4);
    v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " and scales.shape() == ", 23);
    v54 = mlx::core::operator<<(v53, *a5);
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " with group_size=", 17);
    v56 = MEMORY[0x25F851360](v55, a8);
    v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, " and bits=", 10);
    MEMORY[0x25F851360](v57, a9);
    v58 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v82, &v81);
    std::logic_error::logic_error(v58, &v81);
    v58->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v58, off_279921408, MEMORY[0x277D82610]);
  }

  v22 = *(*a3 + 8);
  if (v22 == **a3)
  {
    goto LABEL_16;
  }

  v23 = *(v22 - 4);
  if (a7)
  {
    if (v19 > 4)
    {
      v24 = (32 * *&v18[v19 - 4] / a9);
      v21 = *(v20 - 2);
      goto LABEL_14;
    }

LABEL_16:
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  if (v19 <= 4)
  {
    goto LABEL_16;
  }

  v24 = *(v20 - 2);
LABEL_14:
  if (v24 != v23)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v82);
    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "[", 1);
    v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, a1, a2);
    v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "] Last dimension of first input with ", 37);
    v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "shape (..., ", 12);
    v63 = MEMORY[0x25F851360](v62, v23);
    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, ") does not match ", 17);
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "the expanded quantized matrix (", 31);
    v66 = MEMORY[0x25F851360](v65, v24);
    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, ", ", 2);
    v68 = MEMORY[0x25F851360](v67, v21);
    v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, ") computed from shape ", 22);
    v70 = mlx::core::operator<<(v69, *a4);
    v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, " with group_size=", 17);
    v72 = MEMORY[0x25F851360](v71, a8);
    v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, ", bits=", 7);
    v74 = MEMORY[0x25F851360](v73, a9);
    v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " and transpose=", 15);
    *(v75 + *(*v75 - 24) + 8) |= 1u;
    MEMORY[0x25F851330]();
    v76 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v82, &v81);
    std::logic_error::logic_error(v76, &v81);
    v76->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v76, off_279921408, MEMORY[0x277D82610]);
  }

  return v23 | (v21 << 32);
}

void sub_25A265AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a20);
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void mlx::core::gather_qmm(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, unsigned int a9, char a10, mlx::core *a11, uint64_t a12)
{
  v56[11] = *MEMORY[0x277D85DE8];
  if (*(a5 + 16) & 1) != 0 || (*(a6 + 16))
  {
    LOBYTE(v45[0]) = 0;
    v46 = 0;
    if (*(a5 + 16) == 1)
    {
      v15 = *(a5 + 8);
      v45[0] = *a5;
      v45[1] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v46 = 1;
    }

    if (v46 == 1)
    {
      mlx::core::array::~array(v45);
    }

    LOBYTE(v42[0]) = 0;
    v43 = 0;
    if (*(a6 + 16) == 1)
    {
      v16 = *(a6 + 8);
      v42[0] = *a6;
      v42[1] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v43 = 1;
    }

    if (v43 == 1)
    {
      mlx::core::array::~array(v42);
    }

    mlx::core::broadcast_arrays(&v47, &v44, a11, a12, &v55);
    v38[0] = &v47;
    v38[1] = &v44;
    std::tuple<mlx::core::array &,mlx::core::array &>::operator=[abi:ne200100]<mlx::core::array,mlx::core::array,0>(v38, &v55);
    mlx::core::array::~array(v56);
    mlx::core::array::~array(&v55);
    v17 = *(v47 + 56);
    LODWORD(v55) = v17;
    BYTE4(v55) = BYTE4(v17);
    if (mlx::core::issubdtype(v18, &mlx::core::integer))
    {
      v19 = *(v44 + 56);
      LODWORD(v55) = v19;
      BYTE4(v55) = BYTE4(v19);
      if (mlx::core::issubdtype(&v55, &mlx::core::integer))
      {
        v41 = v47;
        if (*(&v47 + 1))
        {
          atomic_fetch_add_explicit((*(&v47 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        mlx::core::astype(&v41, 3, a11, a12, &v55);
        v20 = v55;
        v55 = 0uLL;
        v21 = *(&v47 + 1);
        v47 = v20;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        mlx::core::array::~array(&v55);
        mlx::core::array::~array(&v41);
        v40 = v44;
        if (*(&v44 + 1))
        {
          atomic_fetch_add_explicit((*(&v44 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        mlx::core::astype(&v40, 3, a11, a12, &v55);
        v22 = v55;
        v55 = 0uLL;
        v23 = *(&v44 + 1);
        v44 = v22;
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        mlx::core::array::~array(&v55);
        mlx::core::array::~array(&v40);
        v38[1] = 0;
        v39 = 0;
        v38[0] = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v38, *v47, *(v47 + 8), (*(v47 + 8) - *v47) >> 2);
        if (*(*a1 + 8) - **a1 > 4uLL)
        {
          LODWORD(v55) = *(*(*a1 + 8) - 8);
          std::vector<int>::push_back[abi:ne200100](v38, &v55);
          std::vector<int>::push_back[abi:ne200100](v38, &quantized_matmul_dims + 1);
          v24 = *(*a1 + 56);
          LODWORD(v55) = v24;
          BYTE4(v55) = BYTE4(v24);
          v25 = (*a3)[7];
          v53 = v25;
          v54 = BYTE4(v25);
          v26 = mlx::core::promote_types(&v55, &v53);
          LODWORD(v55) = v26;
          BYTE4(v55) = BYTE4(v26);
          v27 = (*a4)[7];
          v53 = v27;
          v54 = BYTE4(v27);
          mlx::core::promote_types(&v55, &v53);
          v38[0] = 0;
          v38[1] = 0;
          v39 = 0;
          mlx::core::to_stream(a11, a12);
          if (a10)
          {
            v28 = (*(a6 + 16) & 1) == 0;
            v29 = *(a5 + 16) ^ 1u;
          }

          operator new();
        }

        std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "[gather_qmm] Got rhs_indices with invalid dtype. Indices must be integral.");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "[gather_qmm] Got lhs_indices with invalid dtype. Indices must be integral.");
    }

    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v30 = *(a1 + 8);
  v52[0] = *a1;
  v52[1] = v30;
  if (v30)
  {
    atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
  }

  v31 = *(a2 + 8);
  v51[0] = *a2;
  v51[1] = v31;
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  }

  v32 = a3[1];
  v50[0] = *a3;
  v50[1] = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(v32 + 1, 1uLL, memory_order_relaxed);
  }

  v33 = a4[1];
  v49[0] = *a4;
  v49[1] = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(v33 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::quantized_matmul(v52, v51, v50, v49, a7, a8, a9, a8, a11, a12);
}

void sub_25A2662A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, char a36, uint64_t a37, char a38, uint64_t a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, char a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, char a58)
{
  mlx::core::array::~array(&a56);
  mlx::core::array::~array(&a58);
  mlx::core::array::~array((v58 - 248));
  mlx::core::array::~array((v58 - 232));
  _Unwind_Resume(a1);
}

uint64_t mlx::core::anonymous namespace::indices_or_default@<X0>(uint64_t result@<X0>, uint64_t **a2@<X1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*(result + 16) != 1)
  {
    v9 = *a2;
    v10 = **a2;
    v11 = v9[1] - 8;
    v19[1] = 0;
    v20 = 0;
    v19[0] = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(v19, v10, v11, (v11 - v10) >> 2);
    v12 = v19[0];
    if (v19[0] == v19[1])
    {
      v15 = 1.0;
    }

    else
    {
      v13 = 1;
      do
      {
        v14 = *v12++;
        v13 *= v14;
      }

      while (v12 != v19[1]);
      v15 = v13;
    }

    v16 = mlx::core::to_stream(a3, a4);
    mlx::core::arange(0x400000003, v16, v17 | 0x100000000, v18, 0.0, v15, 1.0);
  }

  v6 = *(result + 8);
  *a5 = *result;
  a5[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_25A266574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a13);
  if (a15)
  {
    a16 = a15;
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void mlx::core::tensordot(uint64_t **a1, uint64_t **a2, unsigned int a3, mlx::core *a4, uint64_t a5)
{
  if ((a3 & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[tensordot] axis must be greater or equal to 0.");
  }

  else
  {
    v7 = (*a1)[1] - **a1;
    v8 = (*a2)[1];
    if ((v8 - **a2) >> 2 >= (v7 >> 2))
    {
      v9 = v7 >> 2;
    }

    else
    {
      v9 = (v8 - **a2) >> 2;
    }

    if (v9 >= a3)
    {
      __p = 0;
      v40 = 0;
      v41 = 0;
      __src = 0;
      v37 = 0;
      v38 = 0;
      if (a3)
      {
        v10 = 0;
        v11 = -a3;
        do
        {
          v12 = v37;
          if (v37 >= v38)
          {
            v14 = __src;
            v15 = v37 - __src;
            v16 = (v37 - __src) >> 2;
            v17 = v16 + 1;
            if ((v16 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v18 = v38 - __src;
            if ((v38 - __src) >> 1 > v17)
            {
              v17 = v18 >> 1;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v19 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v17;
            }

            if (v19)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v19);
            }

            v20 = (4 * v16);
            v21 = &v20[-((v37 - __src) >> 2)];
            *v20 = v10;
            v13 = (v20 + 1);
            memcpy(v21, v14, v15);
            v22 = __src;
            __src = v21;
            v37 = v13;
            v38 = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v37 = v10;
            v13 = v12 + 4;
          }

          v37 = v13;
          v23 = v11 + v10;
          v24 = v40;
          if (v40 >= v41)
          {
            v26 = __p;
            v27 = v40 - __p;
            v28 = (v40 - __p) >> 2;
            v29 = v28 + 1;
            if ((v28 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v30 = v41 - __p;
            if ((v41 - __p) >> 1 > v29)
            {
              v29 = v30 >> 1;
            }

            if (v30 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v31 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v29;
            }

            if (v31)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__p, v31);
            }

            *(4 * v28) = v23;
            v25 = 4 * v28 + 4;
            memcpy(0, v26, v27);
            v32 = __p;
            __p = 0;
            v40 = v25;
            v41 = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *v40 = v23;
            v25 = (v24 + 4);
          }

          v40 = v25;
          ++v10;
        }

        while (v11 + v10);
      }

      mlx::core::tensordot(a1, a2, &__p, &__src, a4, a5);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[tensordot] axis must be less than the number of dimensions of a and b.");
  }

  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

void mlx::core::tensordot(uint64_t **a1, uint64_t **a2, char **a3, int **a4, mlx::core *a5, uint64_t a6)
{
  v140[3] = *MEMORY[0x277D85DE8];
  if (a3[1] - *a3 == a4[1] - *a4)
  {
    v13 = *a1;
    v12 = a1[1];
    v140[0] = *a1;
    v140[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    v14 = *a2;
    v15 = a2[1];
    v138 = *a2;
    v139 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    }

    v16 = *a3;
    v17 = a3[1] - *a3;
    if (v17)
    {
      v18 = v17 >> 2;
      v20 = v13;
      v19 = *v13;
      v21 = (v20[1] - v19) >> 2;
      v22 = *a4;
      v23 = a4[1] - *a4;
      if (v18 <= 1)
      {
        v18 = 1;
      }

      v24 = 1;
      do
      {
        v26 = *v16;
        v16 += 4;
        v25 = v26;
        v27 = v21 + v26;
        if ((v26 & 0x80000000) != 0)
        {
          v25 = v27;
        }

        if (v21 <= v25 || !v23)
        {
          goto LABEL_119;
        }

        v28 = *v22;
        v29 = (v14[1] - *v14) >> 2;
        if ((v28 & 0x80000000) != 0)
        {
          v28 += v29;
        }

        if (v29 <= v28)
        {
LABEL_119:
          std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
        }

        v30 = *(v19 + 4 * v25);
        if (v30 != *(*v14 + 4 * v28))
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "[tensordot] a and b must have the same shape on the contracted axes.");
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
        }

        v24 *= v30;
        --v23;
        ++v22;
        --v18;
      }

      while (v18);
    }

    else
    {
      v21 = (v13[1] - *v13) >> 2;
    }

    LOBYTE(v136[0]) = 0;
    std::vector<BOOL>::vector(v137, v21);
    v122 = a5;
    v123 = a6;
    v31 = (v138[1] - *v138) >> 2;
    LOBYTE(v133) = 0;
    std::vector<BOOL>::vector(v136, v31);
    v32 = a3;
    v33 = *a3;
    v34 = a3[1];
    if (v33 != v34)
    {
      v35 = v140[0];
      v36 = v137[0];
      v37 = v33;
      do
      {
        v38 = *v37;
        if (*v37 < 0)
        {
          v38 += (v35[1] - *v35) >> 2;
        }

        *(v36 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
        ++v37;
      }

      while (v37 != v34);
    }

    v39 = *a4;
    v40 = a4[1];
    if (*a4 != v40)
    {
      v41 = v138;
      v42 = v136[0];
      do
      {
        v43 = *v39;
        if (*v39 < 0)
        {
          v43 += (v41[1] - *v41) >> 2;
        }

        *(v42 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
        ++v39;
      }

      while (v39 != v40);
    }

    v133 = 0;
    v134 = 0;
    v135 = 0;
    __p = 0;
    v131 = 0;
    v132 = 0;
    v128 = 0;
    v129 = 0;
    __src = 0;
    v44 = *a1;
    v45 = **a1;
    v124 = a4;
    if ((*a1)[1] != v45)
    {
      v46 = 0;
      v125 = 1;
      do
      {
        if (((*(v137[0] + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
        {
          v47 = v134;
          if (v134 >= v135)
          {
            v49 = v133;
            v50 = v134 - v133;
            v51 = (v134 - v133) >> 2;
            v52 = v51 + 1;
            if ((v51 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v53 = v135 - v133;
            if ((v135 - v133) >> 1 > v52)
            {
              v52 = v53 >> 1;
            }

            v54 = v53 >= 0x7FFFFFFFFFFFFFFCLL;
            v55 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v54)
            {
              v55 = v52;
            }

            if (v55)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v133, v55);
            }

            v56 = (4 * v51);
            v57 = &v56[-((v134 - v133) >> 2)];
            *v56 = v46;
            v48 = (v56 + 1);
            memcpy(v57, v49, v50);
            v58 = v133;
            v133 = v57;
            v134 = v48;
            v135 = 0;
            if (v58)
            {
              operator delete(v58);
            }
          }

          else
          {
            *v134 = v46;
            v48 = v47 + 4;
          }

          v134 = v48;
          v59 = mlx::core::array::shape(a1, v46);
          v60 = mlx::core::array::shape(a1, v46);
          v61 = v128;
          if (v128 >= v129)
          {
            v63 = __src;
            v64 = v128 - __src;
            v65 = (v128 - __src) >> 2;
            v66 = v65 + 1;
            if ((v65 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v67 = v129 - __src;
            if ((v129 - __src) >> 1 > v66)
            {
              v66 = v67 >> 1;
            }

            v54 = v67 >= 0x7FFFFFFFFFFFFFFCLL;
            v68 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v54)
            {
              v68 = v66;
            }

            if (v68)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v68);
            }

            *(4 * v65) = v60;
            v62 = 4 * v65 + 4;
            memcpy(0, v63, v64);
            v69 = __src;
            __src = 0;
            v128 = v62;
            v129 = 0;
            if (v69)
            {
              operator delete(v69);
            }
          }

          else
          {
            *v128 = v60;
            v62 = (v61 + 4);
          }

          v125 *= v59;
          v128 = v62;
          v44 = *a1;
          v45 = **a1;
        }

        ++v46;
      }

      while (v46 < (v44[1] - v45) >> 2);
      v33 = *v32;
      v34 = v32[1];
    }

    if (v33 != v34)
    {
      v70 = v134;
      do
      {
        v71 = *v33;
        if (v70 >= v135)
        {
          v72 = v133;
          v73 = v70 - v133;
          v74 = (v70 - v133) >> 2;
          v75 = v74 + 1;
          if ((v74 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v76 = v135 - v133;
          if ((v135 - v133) >> 1 > v75)
          {
            v75 = v76 >> 1;
          }

          if (v76 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v77 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v77 = v75;
          }

          if (v77)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v133, v77);
          }

          v78 = (v70 - v133) >> 2;
          v79 = (4 * v74);
          v80 = (4 * v74 - 4 * v78);
          *v79 = v71;
          v70 = (v79 + 1);
          memcpy(v80, v72, v73);
          v81 = v133;
          v133 = v80;
          v134 = v70;
          v135 = 0;
          if (v81)
          {
            operator delete(v81);
          }
        }

        else
        {
          *v70 = v71;
          v70 += 4;
        }

        v134 = v70;
        ++v33;
      }

      while (v33 != v34);
    }

    v82 = *a4;
    v83 = a4[1];
    if (*v124 != v83)
    {
      v84 = v131;
      do
      {
        v85 = *v82;
        if (v84 >= v132)
        {
          v86 = __p;
          v87 = v84 - __p;
          v88 = (v84 - __p) >> 2;
          v89 = v88 + 1;
          if ((v88 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v90 = v132 - __p;
          if ((v132 - __p) >> 1 > v89)
          {
            v89 = v90 >> 1;
          }

          if (v90 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v91 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v91 = v89;
          }

          if (v91)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__p, v91);
          }

          v92 = (v84 - __p) >> 2;
          v93 = (4 * v88);
          v94 = (4 * v88 - 4 * v92);
          *v93 = v85;
          v84 = (v93 + 1);
          memcpy(v94, v86, v87);
          v95 = __p;
          __p = v94;
          v131 = v84;
          v132 = 0;
          if (v95)
          {
            operator delete(v95);
          }
        }

        else
        {
          *v84 = v85;
          v84 += 4;
        }

        v131 = v84;
        ++v82;
      }

      while (v82 != v83);
    }

    v96 = *a2;
    v97 = **a2;
    if ((*a2)[1] != v97)
    {
      v98 = 0;
      v99 = 1;
      do
      {
        if (((*(v136[0] + ((v98 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
        {
          v100 = v131;
          if (v131 >= v132)
          {
            v102 = __p;
            v103 = v131 - __p;
            v104 = (v131 - __p) >> 2;
            v105 = v104 + 1;
            if ((v104 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v106 = v132 - __p;
            if ((v132 - __p) >> 1 > v105)
            {
              v105 = v106 >> 1;
            }

            if (v106 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v107 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v107 = v105;
            }

            if (v107)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__p, v107);
            }

            *(4 * v104) = v98;
            v101 = 4 * v104 + 4;
            memcpy(0, v102, v103);
            v108 = __p;
            __p = 0;
            v131 = v101;
            v132 = 0;
            if (v108)
            {
              operator delete(v108);
            }
          }

          else
          {
            *v131 = v98;
            v101 = (v100 + 4);
          }

          v131 = v101;
          v109 = mlx::core::array::shape(a2, v98);
          v110 = mlx::core::array::shape(a2, v98);
          v111 = v128;
          if (v128 >= v129)
          {
            v113 = __src;
            v114 = v128 - __src;
            v115 = (v128 - __src) >> 2;
            v116 = v115 + 1;
            if ((v115 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v117 = v129 - __src;
            if ((v129 - __src) >> 1 > v116)
            {
              v116 = v117 >> 1;
            }

            if (v117 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v118 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v118 = v116;
            }

            if (v118)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v118);
            }

            *(4 * v115) = v110;
            v112 = 4 * v115 + 4;
            memcpy(0, v113, v114);
            v119 = __src;
            __src = 0;
            v128 = v112;
            v129 = 0;
            if (v119)
            {
              operator delete(v119);
            }
          }

          else
          {
            *v128 = v110;
            v112 = (v111 + 4);
          }

          v99 *= v109;
          v128 = v112;
          v96 = *a2;
          v97 = **a2;
        }

        ++v98;
      }

      while (v98 < (v96[1] - v97) >> 2);
    }

    memset(v126, 0, sizeof(v126));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v126, v133, v134, (v134 - v133) >> 2);
    mlx::core::transpose(v140, v126, v122, v123);
  }

  v121 = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](v121, "[tensordot] axes must have the same size.");
  __cxa_throw(v121, off_279921408, MEMORY[0x277D82610]);
}