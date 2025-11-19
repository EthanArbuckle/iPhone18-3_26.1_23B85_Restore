void *std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
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

void std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__rehash<false>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
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

void sub_25A857920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
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
        std::string::operator=((v8 + 16), (v4 + 2));
        std::string::operator=((v8 + 40), (v4 + 5));
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>();
  }
}

void sub_25A857A98(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void sub_25A857B18(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_25A857C30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,std::string>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__rehash<true>(a1, *(a2 + 8));
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

void sub_25A857F0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t mlx_fft_fft(uint64_t *a1, uint64_t **a2, int a3, int a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::fft::fft(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

void mlx::core::fft::fft(uint64_t **a1@<X0>, int a2@<W1>, int a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v15 = a2;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v16, &v15, &v16, 1uLL);
  v11 = a3;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v11, &__p, 1uLL);
  mlx::core::fft::fftn(a1, &v16, &__p, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

void sub_25A858210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_fft_fft2(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v21, a3, a3 + 4 * a4, a4);
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a5, a5 + 4 * a6, a6);
  if (!a7)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "expected a non-empty mlx_stream");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::fft::fftn(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
  v12 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v13 = v24;
  v24 = 0uLL;
  v14 = *(v12 + 8);
  *v12 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  mlx::core::array::~array(&v24);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return 0;
}

uint64_t mlx_fft_fftn(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v21, a3, a3 + 4 * a4, a4);
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a5, a5 + 4 * a6, a6);
  if (!a7)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "expected a non-empty mlx_stream");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::fft::fftn(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
  v12 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v13 = v24;
  v24 = 0uLL;
  v14 = *(v12 + 8);
  *v12 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  mlx::core::array::~array(&v24);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return 0;
}

uint64_t mlx_fft_ifft(uint64_t *a1, uint64_t **a2, int a3, int a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::fft::ifft(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

void mlx::core::fft::ifft(uint64_t **a1@<X0>, int a2@<W1>, int a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v15 = a2;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v16, &v15, &v16, 1uLL);
  v11 = a3;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v11, &__p, 1uLL);
  mlx::core::fft::ifftn(a1, &v16, &__p, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

void sub_25A8589B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_fft_ifft2(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v21, a3, a3 + 4 * a4, a4);
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a5, a5 + 4 * a6, a6);
  if (!a7)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "expected a non-empty mlx_stream");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::fft::ifftn(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
  v12 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v13 = v24;
  v24 = 0uLL;
  v14 = *(v12 + 8);
  *v12 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  mlx::core::array::~array(&v24);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return 0;
}

uint64_t mlx_fft_ifftn(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v21, a3, a3 + 4 * a4, a4);
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a5, a5 + 4 * a6, a6);
  if (!a7)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "expected a non-empty mlx_stream");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::fft::ifftn(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
  v12 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v13 = v24;
  v24 = 0uLL;
  v14 = *(v12 + 8);
  *v12 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  mlx::core::array::~array(&v24);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return 0;
}

uint64_t mlx_fft_irfft(uint64_t *a1, uint64_t **a2, int a3, int a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::fft::irfft(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

void mlx::core::fft::irfft(uint64_t **a1@<X0>, int a2@<W1>, int a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v15 = a2;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v16, &v15, &v16, 1uLL);
  v11 = a3;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v11, &__p, 1uLL);
  mlx::core::fft::irfftn(a1, &v16, &__p, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

void sub_25A859160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_fft_irfft2(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v21, a3, a3 + 4 * a4, a4);
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a5, a5 + 4 * a6, a6);
  if (!a7)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "expected a non-empty mlx_stream");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::fft::irfftn(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
  v12 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v13 = v24;
  v24 = 0uLL;
  v14 = *(v12 + 8);
  *v12 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  mlx::core::array::~array(&v24);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return 0;
}

uint64_t mlx_fft_irfftn(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v21, a3, a3 + 4 * a4, a4);
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a5, a5 + 4 * a6, a6);
  if (!a7)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "expected a non-empty mlx_stream");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::fft::irfftn(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
  v12 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v13 = v24;
  v24 = 0uLL;
  v14 = *(v12 + 8);
  *v12 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  mlx::core::array::~array(&v24);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return 0;
}

uint64_t mlx_fft_rfft(uint64_t *a1, uint64_t **a2, int a3, int a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::fft::rfft(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000, &v11);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v11;
  v11 = 0uLL;
  v8 = *(v6 + 8);
  *v6 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  mlx::core::array::~array(&v11);
  return 0;
}

void mlx::core::fft::rfft(uint64_t **a1@<X0>, int a2@<W1>, int a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v15 = a2;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v16, &v15, &v16, 1uLL);
  v11 = a3;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v11, &__p, 1uLL);
  mlx::core::fft::rfftn(a1, &v16, &__p, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

void sub_25A859908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx_fft_rfft2(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v21, a3, a3 + 4 * a4, a4);
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a5, a5 + 4 * a6, a6);
  if (!a7)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "expected a non-empty mlx_stream");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::fft::rfftn(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
  v12 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v13 = v24;
  v24 = 0uLL;
  v14 = *(v12 + 8);
  *v12 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  mlx::core::array::~array(&v24);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return 0;
}

uint64_t mlx_fft_rfftn(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v21, a3, a3 + 4 * a4, a4);
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a5, a5 + 4 * a6, a6);
  if (!a7)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "expected a non-empty mlx_stream");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::fft::rfftn(a2, &v21, &__p, *a7, *(a7 + 8) | 0x100000000, &v24);
  v12 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v13 = v24;
  v24 = 0uLL;
  v14 = *(v12 + 8);
  *v12 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  mlx::core::array::~array(&v24);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return 0;
}

uint64_t mlx_device_tostring(std::string **a1, _DWORD *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_device");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::operator<<(&v10, a2);
  if ((v17 & 0x10) != 0)
  {
    v5 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v5 = v13;
    }

    locale = v12[4].__locale_;
  }

  else
  {
    if ((v17 & 8) == 0)
    {
      v4 = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_15;
    }

    locale = v12[1].__locale_;
    v5 = v12[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v5 - locale;
  if (v4)
  {
    memmove(&__p, locale, v4);
  }

LABEL_15:
  __p.__r_.__value_.__s.__data_[v4] = 0;
  if (!*a1)
  {
    operator new();
  }

  std::string::operator=(*a1, &__p);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](&v18);
  return 0;
}

uint64_t mlx_device_set(void **a1, void *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_device");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!*a1)
  {
    operator new();
  }

  result = 0;
  *v2 = *a2;
  return result;
}

uint64_t mlx_device_get_index(_DWORD *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_device");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  *a1 = *(a2 + 4);
  return result;
}

uint64_t mlx_device_get_type(_DWORD *a1, int *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_device");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  return result;
}

BOOL mlx_device_equal(_DWORD *a1, _DWORD *a2)
{
  if (!a1 || !a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_device");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return mlx::core::operator==(a1, a2);
}

uint64_t mlx_get_default_device(mlx::core *a1)
{
  v2 = mlx::core::default_device(a1);
  if (!*a1)
  {
    operator new();
  }

  result = 0;
  **a1 = *v2;
  return result;
}

uint64_t mlx_set_default_device(mlx::core::metal *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_device");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::set_default_device(a1);
  return 0;
}

uint64_t mlx_device_free(uint64_t a1)
{
  if (a1)
  {
    MEMORY[0x25F851760](a1, 0x1000C4000313F17);
  }

  return 0;
}

uint64_t mlx_version(uint64_t *a1)
{
  mlx::core::version(&v5);
  v2 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  v3 = v5;
  *(v2 + 16) = v6;
  *v2 = v3;
  return 0;
}

uint64_t mlx_closure_set(void **a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator=(v2, a2);
  return 0;
}

uint64_t mlx_closure_free(uint64_t a1)
{
  if (a1)
  {
    v1 = std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1);
    MEMORY[0x25F851760](v1, 0x1020C40A5B76CDFLL);
  }

  return 0;
}

void mlx_closure_new_func(uint64_t a1)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_286C09600;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

void mlx_closure_new_func_payload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    std::shared_ptr<void>::shared_ptr[abi:ne200100]<void,void (*)(void *),0>(v3, a2);
  }

  operator new();
}

void sub_25A85ADC8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_rethrow();
}

uint64_t mlx_closure_apply(void ***a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
    goto LABEL_9;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
LABEL_9:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(&v8);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v5 = v8;
  v5[2] = v9;
  v8 = 0uLL;
  v9 = 0;
  v10 = &v8;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v10);
  return 0;
}

void mlx_closure_new_unary(uint64_t a1)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_286C09760;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

uint64_t mlx_closure_kwargs_set(void **a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_kwargs");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::operator=(v2, a2);
  return 0;
}

uint64_t mlx_closure_kwargs_free(uint64_t a1)
{
  if (a1)
  {
    v1 = std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](a1);
    MEMORY[0x25F851760](v1, 0x1020C40A5B76CDFLL);
  }

  return 0;
}

void mlx_closure_kwargs_new_func(uint64_t a1)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_286C097E0;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

void mlx_closure_kwargs_new_func_payload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    std::shared_ptr<void>::shared_ptr[abi:ne200100]<void,void (*)(void *),0>(v3, a2);
  }

  operator new();
}

void sub_25A85B60C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_rethrow();
}

uint64_t mlx_closure_kwargs_apply(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_kwargs");
    goto LABEL_11;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    goto LABEL_11;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array");
LABEL_11:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = *(a2 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(&v9);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v6 = v9;
  v6[2] = v10;
  v9 = 0uLL;
  v10 = 0;
  v11 = &v9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v11);
  return 0;
}

uint64_t mlx_closure_value_and_grad_set(void **a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_value_and_grad");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  std::function<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::operator=(v2, a2);
  return 0;
}

uint64_t mlx_closure_value_and_grad_free(uint64_t a1)
{
  if (a1)
  {
    v1 = std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1);
    MEMORY[0x25F851760](v1, 0x1020C40A5B76CDFLL);
  }

  return 0;
}

void mlx_closure_value_and_grad_new_func(uint64_t a1)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_286C09940;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

void mlx_closure_value_and_grad_new_func_payload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    std::shared_ptr<void>::shared_ptr[abi:ne200100]<void,void (*)(void *),0>(v3, a2);
  }

  operator new();
}

void sub_25A85BD44(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_rethrow();
}

uint64_t mlx_closure_value_and_grad_apply(uint64_t ***a1, uint64_t ***a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_value_and_grad");
    goto LABEL_15;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
LABEL_15:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = *(a3 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(&v11);
  v7 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (v7 != &v11)
  {
    std::vector<mlx::core::array>::__assign_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v7, v11, v12, (v12 - v11) >> 4);
  }

  v8 = *a2;
  if (!*a2)
  {
    operator new();
  }

  if (v8 != &v13)
  {
    std::vector<mlx::core::array>::__assign_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v8, v13, v14, (v14 - v13) >> 4);
  }

  v15 = &v13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v15);
  v15 = &v11;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v15);
  return 0;
}

uint64_t mlx_closure_custom_set(void **a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_custom");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::operator=(v2, a2);
  return 0;
}

uint64_t mlx_closure_custom_free(uint64_t a1)
{
  if (a1)
  {
    v1 = std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1);
    MEMORY[0x25F851760](v1, 0x1020C40A5B76CDFLL);
  }

  return 0;
}

void mlx_closure_custom_new_func(uint64_t a1)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_286C09AA0;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

void mlx_closure_custom_new_func_payload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    std::shared_ptr<void>::shared_ptr[abi:ne200100]<void,void (*)(void *),0>(v3, a2);
  }

  operator new();
}

void sub_25A85C4E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_rethrow();
}

uint64_t mlx_closure_custom_apply(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_custom");
    goto LABEL_11;
  }

  if (!a3 || !a4 || !a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
LABEL_11:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(a2 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v6 + 48))(&v10);
  v7 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v7 = v10;
  v7[2] = v11;
  v10 = 0uLL;
  v11 = 0;
  v12 = &v10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v12);
  return 0;
}

uint64_t mlx_closure_custom_jvp_set(void **a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_custom_jvp");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::operator=(v2, a2);
  return 0;
}

uint64_t mlx_closure_custom_jvp_free(uint64_t a1)
{
  if (a1)
  {
    v1 = std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](a1);
    MEMORY[0x25F851760](v1, 0x1020C40A5B76CDFLL);
  }

  return 0;
}

void mlx_closure_custom_jvp_new_func(uint64_t a1)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_286C09C00;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

void mlx_closure_custom_jvp_new_func_payload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    std::shared_ptr<void>::shared_ptr[abi:ne200100]<void,void (*)(void *),0>(v3, a2);
  }

  operator new();
}

void sub_25A85CC48(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_rethrow();
}

uint64_t mlx_closure_custom_jvp_apply(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_custom_jvp");
    goto LABEL_13;
  }

  if (!a3 || !a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
LABEL_13:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v13 = 0;
  v14 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a5, a5 + 4 * a6, a6);
  v8 = *(a2 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(&v15);
  v9 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::vector<mlx::core::array>::__vdeallocate(*a1);
  *v9 = v15;
  v9[2] = v16;
  v15 = 0uLL;
  v16 = 0;
  v17 = &v15;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return 0;
}

uint64_t mlx_closure_custom_vmap_set(void **a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_custom_vmap");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::operator=(v2, a2);
  return 0;
}

uint64_t mlx_closure_custom_vmap_free(uint64_t a1)
{
  if (a1)
  {
    v1 = std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](a1);
    MEMORY[0x25F851760](v1, 0x1020C40A5B76CDFLL);
  }

  return 0;
}

void mlx_closure_custom_vmap_new_func(uint64_t a1)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_286C09D60;
  v1[1] = a1;
  v1[3] = v1;
  operator new();
}

void mlx_closure_custom_vmap_new_func_payload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    std::shared_ptr<void>::shared_ptr[abi:ne200100]<void,void (*)(void *),0>(v3, a2);
  }

  operator new();
}

void sub_25A85D3DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_rethrow();
}

uint64_t mlx_closure_custom_vmap_apply(uint64_t ***a1, void ***a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure_custom_vmap");
    goto LABEL_19;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
LABEL_19:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, a5, a5 + 4 * a6, a6);
  v9 = *(a3 + 24);
  if (!v9)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v9 + 48))(&v17);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (v10 != &v17)
  {
    std::vector<mlx::core::array>::__assign_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v10, v17, v18, (v18 - v17) >> 4);
  }

  v11 = *a2;
  if (!*a2)
  {
    operator new();
  }

  if (v11 != &v19)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v11, v19, v20, (v20 - v19) >> 2);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  __p = &v17;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
  return 0;
}

void *std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_25A85DA88(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_25A85DD60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_25A85E038(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_25A85E3A8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_25A85E680(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_25A85E958(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<mlx_closure_new_func::$_0,std::allocator<mlx_closure_new_func::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286C09600;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlx_closure_new_func::$_0,std::allocator<mlx_closure_new_func::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<void *,mlx_closure_new_func_payload::$_1,std::allocator<void>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<void *,mlx_closure_new_func_payload::$_1,std::allocator<void>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx_closure_new_func_payload::$_0,std::allocator<mlx_closure_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C096E0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx_closure_new_func_payload::$_0,std::allocator<mlx_closure_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C096E0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx_closure_new_func_payload::$_0,std::allocator<mlx_closure_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C096E0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<mlx_closure_new_func_payload::$_0,std::allocator<mlx_closure_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx_closure_new_func_payload::$_0,std::allocator<mlx_closure_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<mlx_closure_new_func_payload::$_0,std::allocator<mlx_closure_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<mlx_closure_new_unary::$_0,std::allocator<mlx_closure_new_unary::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286C09760;
  a2[1] = v2;
  return result;
}

void std::__function::__func<mlx_closure_new_unary::$_0,std::allocator<mlx_closure_new_unary::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator()(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "closure: expected unary input");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t std::__function::__func<mlx_closure_new_unary::$_0,std::allocator<mlx_closure_new_unary::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

mlx::core::array *mlx_array_free_(mlx::core::array *result)
{
  if (result)
  {
    mlx::core::array::~array(result);

    JUMPOUT(0x25F851760);
  }

  return result;
}

uint64_t std::__function::__func<mlx_closure_kwargs_new_func::$_0,std::allocator<mlx_closure_kwargs_new_func::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286C097E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlx_closure_kwargs_new_func::$_0,std::allocator<mlx_closure_kwargs_new_func::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<void *,mlx_closure_kwargs_new_func_payload::$_1,std::allocator<void>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<void *,mlx_closure_kwargs_new_func_payload::$_1,std::allocator<void>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx_closure_kwargs_new_func_payload::$_0,std::allocator<mlx_closure_kwargs_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C098C0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx_closure_kwargs_new_func_payload::$_0,std::allocator<mlx_closure_kwargs_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C098C0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx_closure_kwargs_new_func_payload::$_0,std::allocator<mlx_closure_kwargs_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C098C0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<mlx_closure_kwargs_new_func_payload::$_0,std::allocator<mlx_closure_kwargs_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx_closure_kwargs_new_func_payload::$_0,std::allocator<mlx_closure_kwargs_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<mlx_closure_kwargs_new_func_payload::$_0,std::allocator<mlx_closure_kwargs_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::unordered_map<std::string,mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<mlx_closure_value_and_grad_new_func::$_0,std::allocator<mlx_closure_value_and_grad_new_func::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286C09940;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlx_closure_value_and_grad_new_func::$_0,std::allocator<mlx_closure_value_and_grad_new_func::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<void *,mlx_closure_value_and_grad_new_func_payload::$_1,std::allocator<void>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<void *,mlx_closure_value_and_grad_new_func_payload::$_1,std::allocator<void>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx_closure_value_and_grad_new_func_payload::$_0,std::allocator<mlx_closure_value_and_grad_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C09A20;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx_closure_value_and_grad_new_func_payload::$_0,std::allocator<mlx_closure_value_and_grad_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C09A20;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx_closure_value_and_grad_new_func_payload::$_0,std::allocator<mlx_closure_value_and_grad_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C09A20;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<mlx_closure_value_and_grad_new_func_payload::$_0,std::allocator<mlx_closure_value_and_grad_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx_closure_value_and_grad_new_func_payload::$_0,std::allocator<mlx_closure_value_and_grad_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<mlx_closure_value_and_grad_new_func_payload::$_0,std::allocator<mlx_closure_value_and_grad_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<mlx_closure_custom_new_func::$_0,std::allocator<mlx_closure_custom_new_func::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286C09AA0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlx_closure_custom_new_func::$_0,std::allocator<mlx_closure_custom_new_func::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<void *,mlx_closure_custom_new_func_payload::$_1,std::allocator<void>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<void *,mlx_closure_custom_new_func_payload::$_1,std::allocator<void>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx_closure_custom_new_func_payload::$_0,std::allocator<mlx_closure_custom_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C09B80;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx_closure_custom_new_func_payload::$_0,std::allocator<mlx_closure_custom_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C09B80;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx_closure_custom_new_func_payload::$_0,std::allocator<mlx_closure_custom_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C09B80;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<mlx_closure_custom_new_func_payload::$_0,std::allocator<mlx_closure_custom_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx_closure_custom_new_func_payload::$_0,std::allocator<mlx_closure_custom_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<mlx_closure_custom_new_func_payload::$_0,std::allocator<mlx_closure_custom_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<mlx_closure_custom_jvp_new_func::$_0,std::allocator<mlx_closure_custom_jvp_new_func::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286C09C00;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlx_closure_custom_jvp_new_func::$_0,std::allocator<mlx_closure_custom_jvp_new_func::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<void *,mlx_closure_custom_jvp_new_func_payload::$_1,std::allocator<void>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<void *,mlx_closure_custom_jvp_new_func_payload::$_1,std::allocator<void>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx_closure_custom_jvp_new_func_payload::$_0,std::allocator<mlx_closure_custom_jvp_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C09CE0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx_closure_custom_jvp_new_func_payload::$_0,std::allocator<mlx_closure_custom_jvp_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C09CE0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx_closure_custom_jvp_new_func_payload::$_0,std::allocator<mlx_closure_custom_jvp_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C09CE0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<mlx_closure_custom_jvp_new_func_payload::$_0,std::allocator<mlx_closure_custom_jvp_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx_closure_custom_jvp_new_func_payload::$_0,std::allocator<mlx_closure_custom_jvp_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<mlx_closure_custom_jvp_new_func_payload::$_0,std::allocator<mlx_closure_custom_jvp_new_func_payload::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<mlx_closure_custom_vmap_new_func::$_0,std::allocator<mlx_closure_custom_vmap_new_func::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286C09D60;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlx_closure_custom_vmap_new_func::$_0,std::allocator<mlx_closure_custom_vmap_new_func::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<void *,mlx_closure_custom_vmap_new_func_payload::$_1,std::allocator<void>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<void *,mlx_closure_custom_vmap_new_func_payload::$_1,std::allocator<void>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx_closure_custom_vmap_new_func_payload::$_0,std::allocator<mlx_closure_custom_vmap_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C09E40;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx_closure_custom_vmap_new_func_payload::$_0,std::allocator<mlx_closure_custom_vmap_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__func(void *a1)
{
  *a1 = &unk_286C09E40;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx_closure_custom_vmap_new_func_payload::$_0,std::allocator<mlx_closure_custom_vmap_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C09E40;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<mlx_closure_custom_vmap_new_func_payload::$_0,std::allocator<mlx_closure_custom_vmap_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx_closure_custom_vmap_new_func_payload::$_0,std::allocator<mlx_closure_custom_vmap_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<mlx_closure_custom_vmap_new_func_payload::$_0,std::allocator<mlx_closure_custom_vmap_new_func_payload::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25A861578(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::unordered_map<std::string,std::variant<std::string,unsigned long>>::unordered_map(v35, a1);
  std::string::basic_string[abi:ne200100]<0>(v33, "architecture");
  *(v26 - 24) = v33;
  v27 = std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v35, v33);
  if (*(v27 + 16))
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v28 = (v27 + 5);
  if (*(v27 + 63) < 0)
  {
    v28 = *v28;
  }

  strncpy(v25, v28, 0x100uLL);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "max_buffer_length");
  *(v26 - 24) = v33;
  v29 = std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v35, v33);
  if (*(v29 + 16) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  *(v25 + 256) = v29[5];
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "max_recommended_working_set_size");
  *(v26 - 24) = v33;
  v30 = std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v35, v33);
  if (*(v30 + 16) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  *(v25 + 264) = v30[5];
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "memory_size");
  *(v26 - 24) = v33;
  v31 = std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v35, v33);
  if (*(v31 + 16) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  *(v25 + 272) = v31[5];
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::~__hash_table(v35);
}

uint64_t mlx_metal_is_available(mlx::core::metal *a1)
{
  is_available = mlx::core::metal::is_available(a1);
  result = 0;
  *a1 = is_available;
  return result;
}

uint64_t mlx_metal_start_capture(char *__s)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  mlx::core::metal::start_capture(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

uint64_t std::unordered_map<std::string,std::variant<std::string,unsigned long>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<std::string,unsigned long>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<std::string,unsigned long>> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__construct_node_hash<std::pair<std::string const,std::variant<std::string,unsigned long>> const&>();
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

void sub_25A861C34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<std::string,unsigned long>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::variant<std::string,unsigned long>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::string,unsigned long>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&this[1], a2 + 24);
  return this;
}

void sub_25A861D6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::string,unsigned long>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,unsigned long>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::string,unsigned long>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,unsigned long>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::string,unsigned long>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::string,unsigned long>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_286C09EC0[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::string,unsigned long>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_286C09EB0[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEmEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSD_mEEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEmEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJSD_mEEEEEEDcSN_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<std::string,unsigned long>>,0>(uint64_t a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::string,unsigned long>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<std::string,unsigned long>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

void sub_25A862234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::variant<std::string,unsigned long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t mlx_array_tostring(std::string **a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = a2[1];
  v11[0] = *a2;
  v11[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  mlx::core::operator<<(&v12, v11);
  mlx::core::array::~array(v11);
  if ((v19 & 0x10) != 0)
  {
    v6 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v6 = v15;
    }

    locale = v14[4].__locale_;
  }

  else
  {
    if ((v19 & 8) == 0)
    {
      v5 = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_17;
    }

    locale = v14[1].__locale_;
    v6 = v14[3].__locale_;
  }

  v5 = v6 - locale;
  if ((v6 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v6 - locale;
  if (v5)
  {
    memmove(&__p, locale, v5);
  }

LABEL_17:
  __p.__r_.__value_.__s.__data_[v5] = 0;
  if (!*a1)
  {
    operator new();
  }

  std::string::operator=(*a1, &__p);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = *MEMORY[0x277D82828];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x277D82828] + 24);
  v13 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](&v20);
  return 0;
}

uint64_t mlx_array_free(mlx::core::array *a1)
{
  if (a1)
  {
    mlx::core::array::~array(a1);
    MEMORY[0x25F851760]();
  }

  return 0;
}

uint64_t mlx_array_set(void **a1, uint64_t *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v3 = *a2;
  if (*v2 != *a2)
  {
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = v2[1];
    *v2 = v3;
    v2[1] = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return 0;
}

uint64_t mlx_array_set_complex(uint64_t *a1, float a2, float a3)
{
  *v9 = a2;
  *&v9[1] = a3;
  mlx::core::array::array(&v8, v9, 0x80000000DLL);
  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v5 = v8;
  v8 = 0uLL;
  v6 = *(v4 + 8);
  *v4 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  mlx::core::array::~array(&v8);
  return 0;
}

void mlx_array_new_complex(float a1, float a2)
{
  *v3 = a1;
  *&v3[1] = a2;
  mlx::core::array::array(&v2, v3, 0x80000000DLL);
  operator new();
}

uint64_t mlx_array_set_data(int a1, int a2, char *__src, int a4, int a5)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(&v26, __src, &__src[4 * a4], a4);
  {
    case 0u:
      memset(v25, 0, sizeof(v25));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v25, v26, v27, (v27 - v26) >> 2);
      mlx::core::array::array<BOOL *>();
    case 1u:
      memset(v24, 0, sizeof(v24));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v24, v26, v27, (v27 - v26) >> 2);
      mlx::core::array::array<unsigned char *>();
    case 2u:
      memset(v23, 0, sizeof(v23));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v23, v26, v27, (v27 - v26) >> 2);
      mlx::core::array::array<unsigned short *>();
    case 3u:
      memset(v22, 0, sizeof(v22));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v22, v26, v27, (v27 - v26) >> 2);
      mlx::core::array::array<unsigned int *>();
    case 4u:
      memset(v21, 0, sizeof(v21));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v21, v26, v27, (v27 - v26) >> 2);
      mlx::core::array::array<unsigned long long *>();
    case 5u:
      memset(v20, 0, sizeof(v20));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v20, v26, v27, (v27 - v26) >> 2);
      mlx::core::array::array<signed char *>();
    case 6u:
      memset(v19, 0, sizeof(v19));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v19, v26, v27, (v27 - v26) >> 2);
      mlx::core::array::array<short *>();
    case 7u:
      memset(v18, 0, sizeof(v18));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v18, v26, v27, (v27 - v26) >> 2);
      mlx::core::array::array<int *>();
    case 8u:
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v26, v27, (v27 - v26) >> 2);
      mlx::core::array::array<long long *>();
    case 9u:
      memset(v16, 0, sizeof(v16));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v16, v26, v27, (v27 - v26) >> 2);
      mlx::core::array::array<half *>();
    case 0xAu:
      memset(v15, 0, sizeof(v15));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v15, v26, v27, (v27 - v26) >> 2);
      mlx::core::array::array<float *>();
    case 0xBu:
      memset(v14, 0, sizeof(v14));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v14, v26, v27, (v27 - v26) >> 2);
      mlx::core::array::array<double *>();
    case 0xCu:
      memset(v13, 0, sizeof(v13));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v13, v26, v27, (v27 - v26) >> 2);
      mlx::core::array::array<mlx::core::_MLX_BFloat16 *>();
    case 0xDu:
      memset(v12, 0, sizeof(v12));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v12, v26, v27, (v27 - v26) >> 2);
      mlx::core::array::array<mlx::core::complex64_t *>();
    default:
      _mlx_error("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/c/array.cpp", 229, "unknown data type", v6, v7, v8, v9, v10, v12[0]);
      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      return 1;
  }
}

uint64_t mlx_array_new_data(int a1, char *__src, int a3, int a4)
{
  v5 = 0;
  if (mlx_array_set_data(&v5, a1, __src, a3, a4))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t mlx_array_itemsize(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 60);
}

uint64_t mlx_array_size(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 48);
}

uint64_t mlx_array_nbytes(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 60) * *(*a1 + 48);
}

uint64_t mlx_array_ndim(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return (*(*a1 + 8) - **a1) >> 2;
}

uint64_t mlx_array_shape(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return **a1;
}

uint64_t mlx_array_strides(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 24);
}

uint64_t mlx_array_dim(uint64_t **a1, int a2)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return mlx::core::array::shape(a1, a2);
}

uint64_t mlx_array_dtype(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

uint64_t mlx_array_eval(mlx::core::array *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::array::eval(a1);
  return 0;
}

uint64_t mlx_array_item_BOOL(_BYTE *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<BOOL>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

uint64_t mlx::core::array::item<BOOL>(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

uint64_t mlx_array_item_uint8(_BYTE *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<BOOL>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

uint64_t mlx_array_item_uint16(_WORD *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<unsigned short>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

uint64_t mlx::core::array::item<unsigned short>(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

uint64_t mlx_array_item_uint32(_DWORD *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<unsigned int>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

uint64_t mlx::core::array::item<unsigned int>(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

uint64_t mlx_array_item_uint64(uint64_t *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<unsigned long long>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

uint64_t mlx::core::array::item<unsigned long long>(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

uint64_t mlx_array_item_int8(_BYTE *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<signed char>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

uint64_t mlx_array_item_int16(_WORD *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<short>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

uint64_t mlx_array_item_int32(_DWORD *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<unsigned int>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

uint64_t mlx_array_item_int64(uint64_t *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<unsigned long long>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

uint64_t mlx_array_item_float32(float *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<float>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

uint64_t mlx_array_item_float64(double *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<double>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

double mlx::core::array::item<double>(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

uint64_t mlx_array_item_complex64(uint64_t a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<complex float >(a2);
  result = 0;
  *a1 = v3;
  *(a1 + 4) = v5;
  return result;
}

float mlx::core::array::item<complex float >(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  v2 = *(*a1 + 152);
  result = *v2;
  v4 = *(v2 + 4);
  return result;
}

uint64_t mlx_array_item_float16(__int16 *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<half>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

uint64_t mlx_array_item_bfloat16(__int16 *a1, mlx::core::array *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = mlx::core::array::item<half>(a2);
  result = 0;
  *a1 = v3;
  return result;
}

uint64_t mlx_array_data_BOOL(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

uint64_t mlx_array_data_uint8(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

uint64_t mlx_array_data_uint16(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

uint64_t mlx_array_data_uint32(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

uint64_t mlx_array_data_uint64(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

uint64_t mlx_array_data_int8(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

uint64_t mlx_array_data_int16(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

uint64_t mlx_array_data_int32(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

uint64_t mlx_array_data_int64(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

uint64_t mlx_array_data_float32(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

uint64_t mlx_array_data_float64(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

uint64_t mlx_array_data_complex64(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

uint64_t mlx_array_data_float16(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

uint64_t mlx_array_data_bfloat16(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return *(*a1 + 152);
}

uint64_t _mlx_array_is_available(BOOL *a1, mlx::core::array *this)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  is_available = mlx::core::array::is_available(this);
  result = 0;
  *a1 = is_available;
  return result;
}

uint64_t _mlx_array_wait(mlx::core::array *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::array::wait(a1);
  return 0;
}

uint64_t _mlx_array_is_contiguous(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  *a1 = *(*a2 + 168) & 1;
  return result;
}

uint64_t _mlx_array_is_row_contiguous(BOOL *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  *a1 = (*(*a2 + 168) & 2) != 0;
  return result;
}

uint64_t _mlx_array_is_col_contiguous(BOOL *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = 0;
  *a1 = (*(*a2 + 168) & 4) != 0;
  return result;
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void sub_25A866F08(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A866F78(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<unsigned char *>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A867248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25A8672EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A86735C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A8673CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<unsigned long long *>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A8676D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25A867778(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<signed char *>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A867A48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25A867AEC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<short *>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A867DF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25A867E94(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A867F04(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<long long *>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A86820C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25A8682B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A868320(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A868390(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A868400(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A868470(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx_random_bernoulli(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a3, a3 + 4 * a4, a4);
    if (a5)
    {
      v9 = a5[1];
      v16 = *a5;
      v17 = v9;
      if (v9)
      {
        v10 = (v9 + 8);
        v11 = 1;
        atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 0;
      LOBYTE(v16) = 0;
    }

    v18 = v11;
    if (a6)
    {
      v12 = *a6;
      v13 = *(a6 + 2) | 0x100000000;
      mlx::core::random::bernoulli(a2);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v14 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v14, "expected a non-empty mlx_array");
  __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_random_bits(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a2, a2 + 4 * a3, a3);
  if (a5)
  {
    v9 = a5[1];
    v13[0] = *a5;
    v13[1] = v9;
    if (v9)
    {
      v10 = (v9 + 8);
      v11 = 1;
      atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
    LOBYTE(v13[0]) = 0;
  }

  v14 = v11;
  if (a6)
  {
    mlx::core::random::bits(__p, a4, v13, *a6, *(a6 + 8) | 0x100000000);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_random_categorical_shape(uint64_t a1, uint64_t **a2, mlx::core::random *a3, uint64_t a4, unint64_t a5, uint64_t *a6, uint64_t *a7)
{
  if (a2)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a4, a4 + 4 * a5, a5);
    if (a6)
    {
      v11 = a6[1];
      v18 = *a6;
      v19 = v11;
      if (v11)
      {
        v12 = (v11 + 8);
        v13 = 1;
        atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = 0;
      LOBYTE(v18) = 0;
    }

    v20 = v13;
    if (a7)
    {
      v14 = *a7;
      v15 = *(a7 + 2) | 0x100000000;
      mlx::core::random::categorical(a2, a3, __p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v16 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v16, "expected a non-empty mlx_array");
  __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_random_categorical_num_samples(int a1, uint64_t **a2, mlx::core::random *this, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    if (a5)
    {
      v6 = a5[1];
      v13 = *a5;
      v14 = v6;
      if (v6)
      {
        v7 = (v6 + 8);
        v8 = 1;
        atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
      LOBYTE(v13) = 0;
    }

    v15 = v8;
    if (a6)
    {
      v9 = *a6;
      v10 = *(a6 + 2) | 0x100000000;
      mlx::core::random::categorical(a2, this);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v11, "expected a non-empty mlx_array");
  __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_random_categorical(int a1, uint64_t **a2, mlx::core::random *this, uint64_t *a4, uint64_t *a5)
{
  if (a2)
  {
    if (a4)
    {
      v5 = a4[1];
      v10 = *a4;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }
    }

    if (a5)
    {
      v6 = *a5;
      v7 = *(a5 + 2) | 0x100000000;
      mlx::core::random::categorical(a2, this);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v8, "expected a non-empty mlx_array");
  __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_random_gumbel(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t *a5, uint64_t *a6)
{
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a2, a2 + 4 * a3, a3);
  if (a5)
  {
    v10 = a5[1];
    v16 = *a5;
    v17 = v10;
    if (v10)
    {
      v11 = (v10 + 8);
      v12 = 1;
      atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
    LOBYTE(v16) = 0;
  }

  v18 = v12;
  if (a6)
  {
    v13 = *a6;
    v14 = *(a6 + 2) | 0x100000000;
    mlx::core::random::gumbel();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_random_laplace(uint64_t a1, uint64_t a2, unint64_t a3, int a4, void *a5, uint64_t a6)
{
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a2, a2 + 4 * a3, a3);
  if (a5)
  {
    v10 = a5[1];
    v14[0] = *a5;
    v14[1] = v10;
    if (v10)
    {
      v11 = (v10 + 8);
      v12 = 1;
      atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
    LOBYTE(v14[0]) = 0;
  }

  v15 = v12;
  if (a6)
  {
    mlx::core::random::laplace(__p, v9, v14, *a6, *(a6 + 8) | 0x100000000);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_random_multivariate_normal(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t a4, unint64_t a5, int a6, void *a7, uint64_t a8)
{
  if (a2 && a3)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a4, a4 + 4 * a5, a5);
    if (a7)
    {
      v14 = a7[1];
      v19[0] = *a7;
      v19[1] = v14;
      if (v14)
      {
        v15 = (v14 + 8);
        v16 = 1;
        atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
      LOBYTE(v19[0]) = 0;
    }

    v20 = v16;
    if (a8)
    {
      mlx::core::random::multivariate_normal(a2, a3, __p, v13, v19, *a8, *(a8 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v17 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v17, "expected a non-empty mlx_array");
  __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_random_normal(uint64_t a1, uint64_t a2, unint64_t a3, int a4, void *a5, uint64_t a6)
{
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a2, a2 + 4 * a3, a3);
  if (a5)
  {
    v10 = a5[1];
    v14[0] = *a5;
    v14[1] = v10;
    if (v10)
    {
      v11 = (v10 + 8);
      v12 = 1;
      atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
    LOBYTE(v14[0]) = 0;
  }

  v15 = v12;
  if (a6)
  {
    mlx::core::random::normal(__p, v9, v14, *a6, *(a6 + 8) | 0x100000000);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_random_permutation(uint64_t a1, uint64_t **a2, int a3, void *a4, uint64_t a5)
{
  if (a2)
  {
    if (a4)
    {
      v5 = a4[1];
      v10[0] = *a4;
      v10[1] = v5;
      if (v5)
      {
        v6 = (v5 + 8);
        v7 = 1;
        atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
      LOBYTE(v10[0]) = 0;
    }

    v11 = v7;
    if (a5)
    {
      mlx::core::random::permutation(a2, a3, v10, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v8, "expected a non-empty mlx_array");
  __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_random_permutation_arange(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3[1];
    v8[0] = *a3;
    v8[1] = v4;
    if (v4)
    {
      v5 = (v4 + 8);
      v6 = 1;
      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
    LOBYTE(v8[0]) = 0;
  }

  v9 = v6;
  if (a4)
  {
    mlx::core::random::permutation(a2, v8, *a4, *(a4 + 8) | 0x100000000);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_random_randint(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t a4, unint64_t a5, int a6, void *a7, uint64_t a8)
{
  if (a2 && a3)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a4, a4 + 4 * a5, a5);
    if (a7)
    {
      v14 = a7[1];
      v19[0] = *a7;
      v19[1] = v14;
      if (v14)
      {
        v15 = (v14 + 8);
        v16 = 1;
        atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
      LOBYTE(v19[0]) = 0;
    }

    v20 = v16;
    if (a8)
    {
      mlx::core::random::randint(a2, a3, __p, v13 & 0xFFFFFFFFFFLL, v19, *a8, *(a8 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v17 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v17, "expected a non-empty mlx_array");
  __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_random_split_num(uint64_t *a1, void *a2, int a3, uint64_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_10;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::random::split(a2, a3, *a4, *(a4 + 8) | 0x100000000);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v6 = v10;
  v10 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  mlx::core::array::~array(&v10);
  return 0;
}

uint64_t mlx_random_split(void **a1, void **a2, void *a3, uint64_t a4)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    goto LABEL_20;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
LABEL_20:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::random::split(a3, *a4, *(a4 + 8) | 0x100000000, &v16);
  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v7 = v16;
  if (*v6 != v16)
  {
    v8 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
      atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v9 = v6[1];
    *v6 = v7;
    v6[1] = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  v10 = *a2;
  if (!*a2)
  {
    operator new();
  }

  v11 = v17;
  if (*v10 != v17)
  {
    v12 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v10[1];
    *v10 = v11;
    v10[1] = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  mlx::core::array::~array(&v17);
  mlx::core::array::~array(&v16);
  return 0;
}

void mlx_random_truncated_normal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t *a7, uint64_t *a8)
{
  if (a2 && a3)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a4, a4 + 4 * a5, a5);
    if (a7)
    {
      v14 = a7[1];
      v21 = *a7;
      v22 = v14;
      if (v14)
      {
        v15 = (v14 + 8);
        v16 = 1;
        atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
      LOBYTE(v21) = 0;
    }

    v23 = v16;
    if (a8)
    {
      v17 = *a8;
      v18 = *(a8 + 2) | 0x100000000;
      mlx::core::random::truncated_normal(a2, a3, __p, v13 & 0xFFFFFFFFFFLL);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v19 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v19, "expected a non-empty mlx_array");
  __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_random_uniform(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t a4, unint64_t a5, int a6, void *a7, uint64_t a8)
{
  if (a2 && a3)
  {
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, a4, a4 + 4 * a5, a5);
    if (a7)
    {
      v14 = a7[1];
      v19[0] = *a7;
      v19[1] = v14;
      if (v14)
      {
        v15 = (v14 + 8);
        v16 = 1;
        atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
      LOBYTE(v19[0]) = 0;
    }

    v20 = v16;
    if (a8)
    {
      mlx::core::random::uniform(a2, a3, __p, v13 & 0xFFFFFFFFFFLL, v19, *a8, *(a8 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v17 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v17, "expected a non-empty mlx_array");
  __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_compile(uint64_t *a1, uint64_t a2, char a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v8, a2);
  mlx::core::compile(v8, a3, v9);
  if (!*a1)
  {
    operator new();
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator=[abi:ne200100](*a1, v9);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v9);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v8);
  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlx_detail_compile(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v15, a2);
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(__p, a5, a5 + 8 * a6, a6);
  mlx::core::detail::compile(v15, a3, a4, __p, v16);
  if (!*a1)
  {
    operator new();
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator=[abi:ne200100](*a1, v16);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v15);
  result = 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A86B358(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx_string_new_data(const char *a1)
{
  v2 = strlen(a1);
  if (v2 < 0x7FFFFFFFFFFFFFF8)
  {
    v3 = v2;
    if (v2 < 0x17)
    {
      v5 = v2;
      if (v2)
      {
        memcpy(&__dst, a1, v2);
      }

      *(&__dst + v3) = 0;
      operator new();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

uint64_t mlx_string_set(std::string **a1, std::string *__str)
{
  if (!__str)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  std::string::operator=(v2, __str);
  return 0;
}

char *mlx_string_data(char *result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

uint64_t mlx_string_free(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    MEMORY[0x25F851760](a1, 0x1012C40EC159624);
  }

  return 0;
}

void mlx_map_string_to_array_new()
{
  v0 = 0u;
  v1 = 0u;
  v2 = 1065353216;
  operator new();
}

uint64_t mlx_map_string_to_array_set(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  if (v2 != a2)
  {
    *(v2 + 32) = *(a2 + 32);
    std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *> *>>(v2, *(a2 + 16), 0);
  }

  return 0;
}

uint64_t mlx_map_string_to_array_free(uint64_t a1)
{
  if (a1)
  {
    v1 = std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::~__hash_table(a1);
    MEMORY[0x25F851760](v1, 0x10A0C408EF24B1CLL);
  }

  return 0;
}

uint64_t mlx_map_string_to_array_insert(void *a1, char *a2, uint64_t *a3)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  if (!a3)
  {
    v7 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v7, "expected a non-empty mlx_array");
    __cxa_throw(v7, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::unordered_map<std::string,mlx::core::array>::insert_or_assign[abi:ne200100]<mlx::core::array&>(a1, __p, a3);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

const void **std::unordered_map<std::string,mlx::core::array>::insert_or_assign[abi:ne200100]<mlx::core::array&>(void *a1, const void **a2, uint64_t *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__emplace_unique_key_args<std::string,std::string,mlx::core::array&>(a1, a2);
  v5 = v4;
  if ((v6 & 1) == 0)
  {
    mlx::core::array::operator=(v4 + 5, a3);
  }

  return v5;
}

uint64_t mlx_map_string_to_array_get(void **a1, void *a2, char *__s)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2, __p);
  v6 = v5;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_4;
    }

    return 2;
  }

  if (!v5)
  {
    return 2;
  }

LABEL_4:
  if (!*a1)
  {
    operator new();
  }

  mlx::core::array::operator=(*a1, v6 + 5);
  return 0;
}

void mlx_map_string_to_array_iterator_new(uint64_t a1)
{
  if (a1)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_map_string_to_array_iterator_next(void *a1, void **a2, void **a3)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_array_iterator");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = *a3;
  if (!*a3)
  {
    return 2;
  }

  v5 = (v4 + 16);
  if (*(v4 + 39) < 0)
  {
    v5 = *v5;
  }

  *a1 = v5;
  if (!*a2)
  {
    operator new();
  }

  mlx::core::array::operator=(*a2, *a3 + 5);
  result = 0;
  *a3 = **a3;
  return result;
}

uint64_t mlx_map_string_to_array_iterator_free(uint64_t a1)
{
  if (a1)
  {
    MEMORY[0x25F851760](a1, 0x20C4093837F09);
  }

  return 0;
}

void mlx_map_string_to_string_new()
{
  v0 = 0u;
  v1 = 0u;
  v2 = 1065353216;
  operator new();
}

uint64_t mlx_map_string_to_string_set(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *a1;
  if (!v2)
  {
    operator new();
  }

  if (v2 != a2)
  {
    *(v2 + 32) = *(a2 + 32);
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *> *>>(v2, *(a2 + 16), 0);
  }

  return 0;
}

uint64_t mlx_map_string_to_string_free(uint64_t a1)
{
  if (a1)
  {
    v1 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(a1);
    MEMORY[0x25F851760](v1, 0x10A0C408EF24B1CLL);
  }

  return 0;
}

uint64_t mlx_map_string_to_string_insert(void *a1, char *a2, char *a3)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(v9, a2);
  std::string::basic_string[abi:ne200100]<0>(__p, a3);
  std::unordered_map<std::string,std::string>::insert_or_assign[abi:ne200100]<std::string>(a1, v9, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  return 0;
}

const void **std::unordered_map<std::string,std::string>::insert_or_assign[abi:ne200100]<std::string>(void *a1, const void **a2, __int128 *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string,std::string>(a1, a2);
  v5 = v4;
  if ((v6 & 1) == 0)
  {
    if (*(v4 + 63) < 0)
    {
      operator delete(v4[5]);
    }

    v7 = *a3;
    v5[7] = *(a3 + 2);
    *(v5 + 5) = v7;
    *(a3 + 23) = 0;
    *a3 = 0;
  }

  return v5;
}

uint64_t mlx_map_string_to_string_get(void *a1, void *a2, char *__s)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_string");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2, __p);
  v6 = v5;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_4;
    }

    return 2;
  }

  if (!v5)
  {
    return 2;
  }

LABEL_4:
  v7 = v6 + 5;
  if (*(v6 + 63) < 0)
  {
    v7 = *v7;
  }

  result = 0;
  *a1 = v7;
  return result;
}

void mlx_map_string_to_string_iterator_new(uint64_t a1)
{
  if (a1)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_string");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_map_string_to_string_iterator_next(void *a1, void *a2, void **a3)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_map_string_to_string_iterator");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = *a3;
  if (!*a3)
  {
    return 2;
  }

  v4 = v3 + 16;
  if (v3[39] < 0)
  {
    v4 = *v4;
  }

  *a1 = v4;
  v5 = *a3 + 5;
  if (*(*a3 + 63) < 0)
  {
    v5 = *v5;
  }

  result = 0;
  *a2 = v5;
  *a3 = **a3;
  return result;
}

uint64_t mlx_map_string_to_string_iterator_free(uint64_t a1)
{
  if (a1)
  {
    MEMORY[0x25F851760](a1, 0x20C4093837F09);
  }

  return 0;
}

const void **std::__hash_table<std::__hash_value_type<std::string,mlx::core::array>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mlx::core::array>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mlx::core::array>>>::__emplace_unique_key_args<std::string,std::string,mlx::core::array&>(void *a1, const void **a2)
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

void sub_25A86CAF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,mlx::core::array>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
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

void sub_25A86CD94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::Abs::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Abs has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Add::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Add has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::AddMM::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "AddMM has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Arange::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Arange has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArcCos::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcCos has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArcCosh::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcCosh has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArcSin::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcSin has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArcSinh::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcSinh has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArcTan::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcTan has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArcTan2::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcTan2 has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArcTanh::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArcTanh has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArgPartition::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArgPartition has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArgReduce::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArgReduce has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ArgSort::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ArgSort has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::AsType::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "AsType has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::AsStrided::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "AsStrided has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::BitwiseBinary::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "BitwiseBinary has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::BitwiseInvert::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "BitwiseInvert has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::BlockMaskedMM::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "BlockMaskedMM has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Broadcast::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Broadcast has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::BroadcastAxes::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "BroadcastAxes has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Ceil::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Ceil has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Compiled::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Compiled has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Concatenate::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Concatenate has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Conjugate::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Conjugate has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Contiguous::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Contiguous has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Convolution::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Convolution has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Copy::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Copy has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Cos::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cos has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Cosh::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cosh has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::CustomTransforms::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "CustomTransforms has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Depends::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Depends has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Divide::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Divide has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::DivMod::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "DivMod has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::DynamicSlice::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "DynamicSlice has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::DynamicSliceUpdate::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "DynamicSliceUpdate has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::NumberOfElements::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NumberOfElements has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Remainder::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Remainder has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Equal::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Equal has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Erf::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Erf has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ErfInv::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ErfInv has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Exp::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Exp has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ExpandDims::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ExpandDims has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Expm1::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Expm1 has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::FFT::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "FFT has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Flatten::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Flatten has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Floor::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Floor has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Full::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Full has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Gather::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Gather has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::GatherAxis::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "GatherAxis has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::GatherMM::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "GatherMM has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::GatherQMM::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "GatherQMM has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Greater::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Greater has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::GreaterEqual::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "GreaterEqual has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Hadamard::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Hadamard has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Imag::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Imag has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Less::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Less has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::LessEqual::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LessEqual has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Load::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Load has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Log::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Log has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Log1p::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Log1p has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::LogicalNot::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LogicalNot has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::LogicalAnd::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LogicalAnd has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::LogicalOr::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LogicalOr has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::LogAddExp::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LogAddExp has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::LogSumExp::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LogSumExp has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::LUF::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LUF has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Matmul::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Matmul has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Maximum::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Maximum has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Minimum::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Minimum has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Multiply::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Multiply has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Negative::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Negative has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::NotEqual::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NotEqual has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Pad::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Pad has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Partition::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Partition has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Power::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Power has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::QRF::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "QRF has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::QuantizedMatmul::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "QuantizedMatmul has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::RandomBits::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "RandomBits has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Real::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Real has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Reduce::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Reduce has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Reshape::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Reshape has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Round::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Round has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Scan::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Scan has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Scatter::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Scatter has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::ScatterAxis::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ScatterAxis has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Select::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Select has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Sigmoid::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sigmoid has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Sign::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sign has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Sin::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sin has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Sinh::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sinh has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Slice::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Slice has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::SliceUpdate::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "SliceUpdate has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Softmax::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Softmax has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Sort::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sort has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Split::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Split has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Square::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Square has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Squeeze::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Squeeze has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Sqrt::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Sqrt has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::StopGradient::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "StopGradient has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Subtract::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Subtract has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::SVD::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "SVD has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Tan::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Tan has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Tanh::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Tanh has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Transpose::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Transpose has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Unflatten::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Unflatten has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Inverse::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Inverse has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Cholesky::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cholesky has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Eigh::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Eigh has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::View::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "View has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::LayerNorm::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LayerNorm has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::LayerNormVJP::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "LayerNormVJP has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::RMSNorm::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "RMSNorm has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::RMSNormVJP::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "RMSNormVJP has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::RoPE::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "RoPE has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::ScaledDotProductAttention::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "ScaledDotProductAttention has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::AffineQuantize::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "AffineQuantize has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::CustomKernel::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "CustomKernel has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::AllReduce::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "AllReduce has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::AllGather::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "AllGather has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::Send::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Send has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::distributed::Recv::eval_gpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Recv has no GPU implementation.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::RMSNorm::eval_cpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NYI");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::RMSNorm::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A86FA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::fast::RMSNorm::~RMSNorm(mlx::core::fast::RMSNorm *this)
{
  *this = &unk_286C09EE0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);
}

{
  *this = &unk_286C09EE0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);

  JUMPOUT(0x25F851760);
}

void mlx::core::fast::RMSNormVJP::eval_cpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NYI");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::RMSNormVJP::~RMSNormVJP(mlx::core::fast::RMSNormVJP *this)
{
  *this = &unk_286C09F58;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);
}

{
  *this = &unk_286C09F58;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);

  JUMPOUT(0x25F851760);
}

void mlx::core::fast::LayerNorm::eval_cpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NYI");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::LayerNorm::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A86FE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::fast::LayerNorm::~LayerNorm(mlx::core::fast::LayerNorm *this)
{
  *this = &unk_286C09FD0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);
}

{
  *this = &unk_286C09FD0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);

  JUMPOUT(0x25F851760);
}

void mlx::core::fast::LayerNormVJP::eval_cpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NYI");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::LayerNormVJP::~LayerNormVJP(mlx::core::fast::LayerNormVJP *this)
{
  *this = &unk_286C0A048;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);
}

{
  *this = &unk_286C0A048;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);

  JUMPOUT(0x25F851760);
}

void mlx::core::fast::RoPE::eval_cpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NYI");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::RoPE::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A8701B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::fast::RoPE::~RoPE(mlx::core::fast::RoPE *this)
{
  *this = &unk_286C0A0C0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);
}

{
  *this = &unk_286C0A0C0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);

  JUMPOUT(0x25F851760);
}

void mlx::core::fast::CustomKernel::eval_cpu()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Custom Metal kernels only run on GPU.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::fast::CustomKernel::~CustomKernel(mlx::core::fast::CustomKernel *this)
{
  *this = &unk_286C0A138;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  *this = &unk_286C0A138;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  JUMPOUT(0x25F851760);
}

void mlx::core::Fence::Fence(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_25A8704F0(void *a1)
{
  __cxa_begin_catch(a1);
  mlx::core::Fence::Fence(mlx::core::Stream)::$_0::operator()(v1);
  __cxa_rethrow();
}

void sub_25A870504(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Fence::wait(unsigned int **a1, uint64_t a2, int a3)
{
  v18 = 0;
  v19 = a2;
  v20 = a3;
  v4 = *a1;
  v5 = mlx::core::operator==(&v19 + 1, &v18);
  if (v5)
  {
    v6 = *v4;
    v8 = *a1;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    v9 = mlx::core::scheduler::scheduler(v5);
    v10 = *(v9[1] + 8 * v19);
    std::mutex::lock(v10);
    if (*(v10 + 160) != 1)
    {
      v11 = *(v10 + 72);
      v12 = *(v10 + 80);
      v13 = 16 * (v12 - v11) - 1;
      if (v12 == v11)
      {
        v13 = 0;
      }

      if (v13 == *(v10 + 104) + *(v10 + 96))
      {
        std::deque<std::function<void ()(void)>>::__add_back_capacity((v10 + 64));
        v11 = *(v10 + 72);
        v12 = *(v10 + 80);
      }

      if (v12 == v11)
      {
        v15 = 0;
      }

      else
      {
        v14 = *(v10 + 104) + *(v10 + 96);
        v15 = *(v11 + ((v14 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v14 & 0x7F);
      }

      *(v15 + 24) = 0;
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v16 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v16, "[Fence::wait] Invalid stream.");
  __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8706F8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  std::mutex::unlock(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Fence::update(unsigned int **a1, uint64_t a2, int a3)
{
  v19 = a2;
  v20 = a3;
  v4 = *a1;
  ++**a1;
  v18 = 0;
  v5 = mlx::core::operator==(&v19 + 1, &v18);
  if (v5)
  {
    v6 = *v4;
    v8 = *a1;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    v9 = mlx::core::scheduler::scheduler(v5);
    v10 = *(v9[1] + 8 * v19);
    std::mutex::lock(v10);
    if (*(v10 + 160) != 1)
    {
      v11 = *(v10 + 72);
      v12 = *(v10 + 80);
      v13 = 16 * (v12 - v11) - 1;
      if (v12 == v11)
      {
        v13 = 0;
      }

      if (v13 == *(v10 + 104) + *(v10 + 96))
      {
        std::deque<std::function<void ()(void)>>::__add_back_capacity((v10 + 64));
        v11 = *(v10 + 72);
        v12 = *(v10 + 80);
      }

      if (v12 == v11)
      {
        v15 = 0;
      }

      else
      {
        v14 = *(v10 + 104) + *(v10 + 96);
        v15 = *(v11 + ((v14 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v14 & 0x7F);
      }

      *(v15 + 24) = 0;
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v16 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v16, "[Fence::update] Invalid stream.");
  __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A870930(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  std::mutex::unlock(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t mlx::core::Fence::Fence(mlx::core::Stream)::$_0::operator()(uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::condition_variable::~condition_variable((result + 72));
    std::mutex::~mutex((v1 + 8));

    JUMPOUT(0x25F851760);
  }

  return result;
}

void std::__shared_ptr_pointer<mlx::core::FenceImpl *,mlx::core::Fence::Fence(mlx::core::Stream)::$_0,std::allocator<mlx::core::FenceImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<mlx::core::FenceImpl *,mlx::core::Fence::Fence(mlx::core::Stream)::$_0,std::allocator<mlx::core::FenceImpl>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    std::condition_variable::~condition_variable((v1 + 72));
    std::mutex::~mutex((v1 + 8));

    JUMPOUT(0x25F851760);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<mlx::core::FenceImpl *,mlx::core::Fence::Fence(mlx::core::Stream)::$_0,std::allocator<mlx::core::FenceImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C0A210;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C0A210;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C0A210;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  m = (v2 + 8);
  v5.__m_ = (v2 + 8);
  v5.__owns_ = 1;
  std::mutex::lock((v2 + 8));
  v4 = *(a1 + 8);
  if (*(v2 + 4) >= v4)
  {
    goto LABEL_5;
  }

  do
  {
    std::condition_variable::wait((v2 + 72), &v5);
  }

  while (*(v2 + 4) < v4);
  if (v5.__owns_)
  {
    m = v5.__m_;
LABEL_5:
    std::mutex::unlock(m);
  }
}

uint64_t std::__function::__func<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::wait(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C0A290;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C0A290;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C0A290;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  std::mutex::lock((v2 + 8));
  *(v2 + 4) = *(a1 + 8);
  std::condition_variable::notify_all((v2 + 72));

  std::mutex::unlock((v2 + 8));
}

uint64_t std::__function::__func<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0,std::allocator<mlx::core::Fence::update(mlx::core::Stream,mlx::core::array const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::Event::Event(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  operator new();
}

{
  mlx::core::Event::Event(a1, a2, a3);
}

void sub_25A87107C(void *a1)
{
  __cxa_begin_catch(a1);
  mlx::core::Fence::Fence(mlx::core::Stream)::$_0::operator()(v1);
  __cxa_rethrow();
}

void sub_25A871090(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Event::wait(mlx::core::Event *this)
{
  v2 = *(this + 2);
  v4.__m_ = (v2 + 8);
  v4.__owns_ = 1;
  std::mutex::lock((v2 + 8));
  v3 = *(this + 4);
  if (*v2 >= v3)
  {
    goto LABEL_4;
  }

  do
  {
    std::condition_variable::wait((v2 + 72), &v4);
  }

  while (*v2 < v3);
  if (v4.__owns_)
  {
LABEL_4:
    std::mutex::unlock(v4.__m_);
  }
}

void mlx::core::Event::wait(uint64_t *a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = *a1;
  v13 = *(a1 + 2);
  v3 = a1[2];
  v2 = a1[3];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[4];
  v5 = *(*(mlx::core::scheduler::scheduler(a1) + 1) + 8 * a2);
  std::mutex::lock(v5);
  if (*(v5 + 160) != 1)
  {
    v6 = *(v5 + 72);
    v7 = *(v5 + 80);
    v8 = 16 * (v7 - v6) - 1;
    if (v7 == v6)
    {
      v8 = 0;
    }

    if (v8 == *(v5 + 104) + *(v5 + 96))
    {
      std::deque<std::function<void ()(void)>>::__add_back_capacity((v5 + 64));
      v6 = *(v5 + 72);
      v7 = *(v5 + 80);
    }

    if (v7 == v6)
    {
      v10 = 0;
    }

    else
    {
      v9 = *(v5 + 104) + *(v5 + 96);
      v10 = *(v6 + ((v9 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v9 & 0x7F);
    }

    *(v10 + 24) = 0;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A8712FC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  std::mutex::unlock(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void mlx::core::Event::signal(uint64_t *a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = *a1;
  v13 = *(a1 + 2);
  v3 = a1[2];
  v2 = a1[3];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[4];
  v5 = *(*(mlx::core::scheduler::scheduler(a1) + 1) + 8 * a2);
  std::mutex::lock(v5);
  if (*(v5 + 160) != 1)
  {
    v6 = *(v5 + 72);
    v7 = *(v5 + 80);
    v8 = 16 * (v7 - v6) - 1;
    if (v7 == v6)
    {
      v8 = 0;
    }

    if (v8 == *(v5 + 104) + *(v5 + 96))
    {
      std::deque<std::function<void ()(void)>>::__add_back_capacity((v5 + 64));
      v6 = *(v5 + 72);
      v7 = *(v5 + 80);
    }

    if (v7 == v6)
    {
      v10 = 0;
    }

    else
    {
      v9 = *(v5 + 104) + *(v5 + 96);
      v10 = *(v6 + ((v9 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v9 & 0x7F);
    }

    *(v10 + 24) = 0;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A871510(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  std::mutex::unlock(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

BOOL mlx::core::Event::is_signaled(mlx::core::Event *this)
{
  v2 = *(this + 2);
  std::mutex::lock((v2 + 8));
  v3 = *v2 >= *(this + 4);
  std::mutex::unlock((v2 + 8));
  return v3;
}

void std::__shared_ptr_pointer<mlx::core::EventCounter *,mlx::core::Event::Event(mlx::core::Stream)::$_0,std::allocator<mlx::core::EventCounter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_pointer<mlx::core::EventCounter *,mlx::core::Event::Event(mlx::core::Stream)::$_0,std::allocator<mlx::core::EventCounter>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    std::condition_variable::~condition_variable((v1 + 72));
    std::mutex::~mutex((v1 + 8));

    JUMPOUT(0x25F851760);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<mlx::core::EventCounter *,mlx::core::Event::Event(mlx::core::Stream)::$_0,std::allocator<mlx::core::EventCounter>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx::core::Event::wait(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::wait(mlx::core::Stream)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C0A370;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx::core::Event::wait(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::wait(mlx::core::Stream)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C0A370;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx::core::Event::wait(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::wait(mlx::core::Stream)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C0A370;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(result + 40);
  return result;
}

void std::__function::__func<mlx::core::Event::wait(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::wait(mlx::core::Stream)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx::core::Event::wait(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::wait(mlx::core::Stream)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<mlx::core::Event::wait(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::wait(mlx::core::Stream)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx::core::Event::signal(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::signal(mlx::core::Stream)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C0A3F0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx::core::Event::signal(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::signal(mlx::core::Stream)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C0A3F0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx::core::Event::signal(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::signal(mlx::core::Stream)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C0A3F0;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(result + 40);
  return result;
}

void std::__function::__func<mlx::core::Event::signal(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::signal(mlx::core::Stream)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx::core::Event::signal(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::signal(mlx::core::Stream)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<mlx::core::Event::signal(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::signal(mlx::core::Stream)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  std::mutex::lock((v2 + 8));
  *v2 = *(a1 + 40);
  std::mutex::unlock((v2 + 8));

  std::condition_variable::notify_all((v2 + 72));
}

uint64_t std::__function::__func<mlx::core::Event::signal(mlx::core::Stream)::$_0,std::allocator<mlx::core::Event::signal(mlx::core::Stream)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::metal::eval(mlx::core::metal *this, mlx::core::array *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[metal::eval] Cannot eval on GPU without metal backend");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::metal::finalize()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[metal::finalize] Cannot finalize GPU without metal backend");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::metal::synchronize()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[metal::synchronize] Cannot synchronize GPU without metal backend");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::metal::device_info(mlx::core::metal *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[metal::device_info] Cannot get device info without metal backend");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void *mlx::core::allocator::common_allocator(mlx::core::allocator *this)
{
  {
    mlx::core::allocator::CommonAllocator::CommonAllocator(&mlx::core::allocator::common_allocator(void)::allocator_);
    __cxa_atexit(mlx::core::allocator::CommonAllocator::~CommonAllocator, &mlx::core::allocator::common_allocator(void)::allocator_, &dword_25A232000);
  }

  return &mlx::core::allocator::common_allocator(void)::allocator_;
}

void mlx::core::allocator::CommonAllocator::~CommonAllocator(mlx::core::allocator::CommonAllocator *this)
{
  *this = &unk_286C0A470;
  std::mutex::~mutex((this + 32));
}

{
  *this = &unk_286C0A470;
  std::mutex::~mutex((this + 32));

  JUMPOUT(0x25F851760);
}

uint64_t mlx::core::allocator::Buffer::raw_ptr(mlx::core::allocator::Buffer *this)
{
  if (*this)
  {
    return *this + 8;
  }

  else
  {
    return 0;
  }
}

void *mlx::core::allocator::CommonAllocator::malloc(mlx::core::allocator::CommonAllocator *this, uint64_t a2)
{
  v4 = malloc_type_malloc(a2 + 8, 0x100004000313F17uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a2;
  }

  std::mutex::lock((this + 32));
  v6 = *(this + 3);
  v7 = *(this + 2) + a2;
  if (v7 > v6)
  {
    v6 = *(this + 2) + a2;
  }

  *(this + 2) = v7;
  *(this + 3) = v6;
  std::mutex::unlock((this + 32));
  return v5;
}

void mlx::core::allocator::CommonAllocator::free(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 16))(a1);
  free(a2);
  std::mutex::lock((a1 + 32));
  *(a1 + 16) -= v4;

  std::mutex::unlock((a1 + 32));
}

uint64_t mlx::core::allocator::CommonAllocator::size(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return *a2;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reset_peak_memory(mlx::core *this)
{
  mlx::core::allocator::common_allocator(this);
  std::mutex::lock(&stru_27FA06080);
  qword_27FA06078 = 0;

  std::mutex::unlock(&stru_27FA06080);
}

uint64_t mlx::core::set_memory_limit(mlx::core *this)
{
  mlx::core::allocator::common_allocator(this);
  std::mutex::lock(&stru_27FA06080);
  v2 = qword_27FA06068;
  qword_27FA06068 = this;
  std::mutex::unlock(&stru_27FA06080);
  return v2;
}

mlx::core::allocator::CommonAllocator *mlx::core::allocator::CommonAllocator::CommonAllocator(mlx::core::allocator::CommonAllocator *this)
{
  *this = &unk_286C0A470;
  v4 = 8;
  v5 = 0;
  sysctlbyname("hw.memsize", &v5, &v4, 0, 0);
  v2 = (v5 * 0.8);
  *(this + 1) = v2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 850045863;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  if (!v2)
  {
    *(this + 1) = 0x200000000;
  }

  return this;
}

uint64_t sub_25A87210C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7894115;
  }

  else
  {
    v4 = 0x7961727261;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7894115;
  }

  else
  {
    v6 = 0x7961727261;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A9989E8();
  }

  return v9 & 1;
}

uint64_t sub_25A8721A8()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A872220()
{
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A872284()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8722F8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25A872358(uint64_t *a1@<X8>)
{
  v2 = 7894115;
  if (!*v1)
  {
    v2 = 0x7961727261;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A87238C()
{
  if (*v0)
  {
    result = 7894115;
  }

  else
  {
    result = 0x7961727261;
  }

  *v0;
  return result;
}

uint64_t sub_25A8723BC@<X0>(char *a1@<X8>)
{
  v2 = sub_25A9988C8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_25A872438(uint64_t a1)
{
  v2 = sub_25A872E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A872474(uint64_t a1)
{
  v2 = sub_25A872E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8724FC(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04470, &qword_25A9F7FC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A872E30();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for MorpheusArray();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 40) = sub_25A93E450(v9, 0);
    v14 = 1;
    sub_25A872ED0();
    sub_25A998938();
    *(v1 + 48) = v13[0];
    sub_25A872F24(a1, v13);
    v3 = sub_25A8963D8(v13);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A87272C@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v5 = a1;
  v6 = *(v1 + 40);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v38 = MEMORY[0x277D84F90];

    sub_25A937550(0, v7, 0);
    v8 = v38;
    result = swift_beginAccess();
    v10 = 0;
    v11 = (v6 + 40);
    v26 = v7;
    v27 = v4;
    while (v10 < *(v6 + 16))
    {
      v28 = v11;
      v29 = v10;
      v12 = v6;
      v13 = *(v11 - 1);
      v14 = *v11;
      ObjectType = swift_getObjectType();
      Strong = swift_unknownObjectWeakLoadStrong();
      v17 = *(v4 + 32);
      v18 = v3;
      v19 = *(v14 + 48);
      swift_unknownObjectRetain();
      v19(Strong, v17, ObjectType, v14);
      (*(v14 + 64))(v35, ObjectType, v14);
      v3 = v18;
      if (v18)
      {

        swift_unknownObjectRelease();
      }

      sub_25A872C84(v35, &v30);
      v6 = v12;
      if (v32)
      {
        sub_25A872CE0(&v30);
        sub_25A872C84(v35, &v30);
        v20 = v26;
        v4 = v27;
        if (v32 == 1)
        {
          v33 = v30;
          v34 = v31;
          sub_25A92DE50(&v33, v36);
          sub_25A872D84(&v33);
        }

        else
        {
          sub_25A872CE0(&v30);
          v36[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
          v21 = swift_allocObject();
          v36[0] = v21;
          *(v21 + 16) = 0u;
          *(v21 + 32) = 0u;
        }

        sub_25A872CE0(v35);
      }

      else
      {
        v33 = v30;
        v34 = v31;
        sub_25A92DE50(&v33, v36);
        sub_25A872D84(&v33);
        sub_25A872CE0(v35);
        v20 = v26;
        v4 = v27;
      }

      sub_25A92D814(v36, v37);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      v38 = v8;
      v23 = *(v8 + 16);
      v22 = *(v8 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_25A937550((v22 > 1), v23 + 1, 1);
        v8 = v38;
      }

      v10 = v29 + 1;
      *(v8 + 16) = v23 + 1;
      result = sub_25A872D74(v37, (v8 + 32 * v23 + 32));
      v11 = v28 + 2;
      if (v20 == v29 + 1)
      {

        v5 = a1;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    if (*(v4 + 48))
    {
      if (*(v4 + 48) == 1)
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
        *(v5 + 24) = result;
        *v5 = v8;
      }

      else
      {

        *v5 = 0u;
        *(v5 + 16) = 0u;
      }
    }

    else
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
      result = swift_allocObject();
      *(result + 16) = v8;
      *(v5 + 24) = v24;
      *v5 = result;
    }

    *(v5 + 32) = 0;
  }

  return result;
}

uint64_t sub_25A872A68()
{
  v1 = *(v0 + 40);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04450, "lT\a");
  v3 = MEMORY[0x25F850440](v1, v2);

  return v3;
}

uint64_t sub_25A872AD8()
{
  sub_25A872F88(v0 + 24);
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_25A872B4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25A872B6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

_DWORD *sub_25A872C20@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25A872D34()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

_OWORD *sub_25A872D74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25A872D84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25A872E30()
{
  result = qword_27FA04478;
  if (!qword_27FA04478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04478);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_25A872ED0()
{
  result = qword_27FA04480;
  if (!qword_27FA04480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04480);
  }

  return result;
}

uint64_t sub_25A872F24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_25A872FC4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MorpheusArray.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MorpheusArray.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25A873188()
{
  result = qword_27FA04490;
  if (!qword_27FA04490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04490);
  }

  return result;
}

unint64_t sub_25A8731E0()
{
  result = qword_27FA04498;
  if (!qword_27FA04498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04498);
  }

  return result;
}

unint64_t sub_25A873238()
{
  result = qword_27FA044A0;
  if (!qword_27FA044A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA044A0);
  }

  return result;
}

id NSNumber.swiftValue.getter@<X0>(uint64_t a1@<X8>)
{
  v18 = v1;
  [v18 objCType];
  v3 = v18;
  v4 = sub_25A997F88();
  v6 = v5;
  v7 = v4 == 99 && v5 == 0xE100000000000000;
  if (v7 || (v8 = v4, (sub_25A9989E8() & 1) != 0))
  {

    result = [v18 BOOLValue];
    v10 = MEMORY[0x277D839B0];
LABEL_7:
    *(a1 + 24) = v10;
    *a1 = result;
    return result;
  }

  v11 = v8 == 105 && v6 == 0xE100000000000000;
  if (v11 || (sub_25A9989E8() & 1) != 0)
  {
    goto LABEL_13;
  }

  if (v8 == 115 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    result = [v18 shortValue];
    v13 = MEMORY[0x277D84958];
LABEL_19:
    *(a1 + 24) = v13;
    *a1 = result;
    return result;
  }

  if (v8 == 108 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {
LABEL_13:

    result = [v18 intValue];
    v12 = MEMORY[0x277D849A8];
LABEL_14:
    *(a1 + 24) = v12;
    *a1 = result;
    return result;
  }

  if (v8 == 113 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    result = [v18 integerValue];
    v14 = MEMORY[0x277D83B88];
LABEL_28:
    *(a1 + 24) = v14;
    *a1 = result;
    return result;
  }

  if (v8 == 67 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    result = [v18 unsignedCharValue];
    v10 = MEMORY[0x277D84B78];
    goto LABEL_7;
  }

  if (v8 == 73 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    goto LABEL_36;
  }

  if (v8 == 83 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    result = [v18 unsignedShortValue];
    v13 = MEMORY[0x277D84C58];
    goto LABEL_19;
  }

  if (v8 == 76 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {
LABEL_36:

    result = [v18 unsignedIntValue];
    v12 = MEMORY[0x277D84CC0];
    goto LABEL_14;
  }

  if (v8 == 81 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    result = [v18 unsignedIntegerValue];
    v14 = MEMORY[0x277D83E88];
    goto LABEL_28;
  }

  if (v8 == 102 && v6 == 0xE100000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    result = [v18 floatValue];
    *(a1 + 24) = MEMORY[0x277D83A90];
    *a1 = v15;
    return result;
  }

  if (v8 == 100 && v6 == 0xE100000000000000)
  {

LABEL_57:
    result = [v18 doubleValue];
    *(a1 + 24) = MEMORY[0x277D839F8];
    *a1 = v17;
    return result;
  }

  v16 = sub_25A9989E8();

  if (v16)
  {
    goto LABEL_57;
  }

  *(a1 + 24) = sub_25A873A9C();
  *a1 = v18;

  return v18;
}

double NSNumber.attribute(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_25A873994(a1, a2, v3, sub_25A91BDDC, &v8);
  if (v9)
  {
    sub_25A872D74(&v8, v10);
    sub_25A872D74(v10, a3);
  }

  else
  {
    sub_25A872D84(&v8);
    if (a1 == 0x61765F7466697773 && a2 == 0xEB0000000065756CLL || (sub_25A9989E8() & 1) != 0)
    {
      NSNumber.swiftValue.getter(a3);
    }

    else
    {
      result = 0.0;
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  return result;
}

double sub_25A8738BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v16[0] = a3;
  v16[1] = a4;
  v8 = sub_25A91BC08();
  swift_beginAccess();
  v9 = *(v8 + 16);

  if (*(v9 + 16) && (v10 = sub_25A8F3600(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 16 * v10;
    v14 = *v12;
    v13 = *(v12 + 8);

    v14(v16);
  }

  else
  {

    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

double sub_25A873994@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  v16 = a3;
  v8 = a4();
  swift_beginAccess();
  v9 = *(v8 + 16);

  if (*(v9 + 16) && (v10 = sub_25A8F3600(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 16 * v10;
    v14 = *v12;
    v13 = *(v12 + 8);

    v14(&v16);
  }

  else
  {

    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

unint64_t sub_25A873A9C()
{
  result = qword_27FA044A8;
  if (!qword_27FA044A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA044A8);
  }

  return result;
}

uint64_t _sSo8NSNumberC8MorpheusE3has9attributeSbSS_tF_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25A91CC94(&unk_286C0D928);
  sub_25A873BC0(&unk_286C0D948);
  v5 = sub_25A9198A8(a1, a2, v4);

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = sub_25A91BDDC();
    swift_beginAccess();
    v8 = *(v7 + 16);

    if (*(v8 + 16))
    {
      sub_25A8F3600(a1, a2);
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_25A873C14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x73656D616ELL;
  }

  else
  {
    v4 = 0x656C75646F6DLL;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x73656D616ELL;
  }

  else
  {
    v6 = 0x656C75646F6DLL;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A9989E8();
  }

  return v9 & 1;
}

uint64_t sub_25A873CB4()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A873D30()
{
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A873D98()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A873E10@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25A873E70(uint64_t *a1@<X8>)
{
  v2 = 0x656C75646F6DLL;
  if (*v1)
  {
    v2 = 0x73656D616ELL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A873EA8()
{
  if (*v0)
  {
    result = 0x73656D616ELL;
  }

  else
  {
    result = 0x656C75646F6DLL;
  }

  *v0;
  return result;
}

uint64_t sub_25A873EDC@<X0>(char *a1@<X8>)
{
  v2 = sub_25A9988C8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_25A873F40(uint64_t a1)
{
  v2 = sub_25A8750CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A873F7C(uint64_t a1)
{
  v2 = sub_25A8750CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A874004(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA044B8, &qword_25A9F8208);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8750CC();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for ImportFrom();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v15[0]) = 0;
    v1[5] = sub_25A9988F8();
    v1[6] = v12;
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v1[8] = sub_25A8F4D24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA044C8, &unk_25A9F8210);
    v16 = 1;
    sub_25A875120();
    sub_25A998938();
    v1[7] = v15[0];
    sub_25A872F24(a1, v15);
    v3 = sub_25A8963D8(v15);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8742AC@<X0>(int64_t a1@<X8>)
{
  v5 = v1;
  v7 = v1[8];
  v8 = v5[5];
  v9 = v5[6];

  sub_25A98F0EC(v8, v9, v113);
  v10 = v2;

  if (v2)
  {
    return result;
  }

  v12 = v5[7];
  v93 = *(v12 + 16);
  if (!v93)
  {
LABEL_72:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return __swift_destroy_boxed_opaque_existential_0Tm(v113);
  }

  v94 = v12 + 32;

  v13 = 0;
  v90 = a1;
  v116 = v5;
  v92 = v12;
  while (1)
  {
    if (v13 >= *(v12 + 16))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v98 = v13;
    v14 = v94 + 40 * v13;
    v4 = *v14;
    ObjectType = *(v14 + 8);
    v15 = *(v14 + 32);
    if (*(v14 + 24))
    {
      v99 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (*(v14 + 32))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v24 = *(v14 + 8);

      v99 = v4;
      v16 = ObjectType;
      if (v15)
      {
LABEL_9:
        v17 = v116;
        v18 = v116[6];
        *&v104 = v116[5];
        *(&v104 + 1) = v18;
        swift_bridgeObjectRetain_n();

        MEMORY[0x25F850290](46, 0xE100000000000000);

        MEMORY[0x25F850290](v4, ObjectType);

        swift_bridgeObjectRelease_n();
        sub_25A98F0EC(v104, *(&v104 + 1), &v109);

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = v17[4];
          ObjectType = swift_getObjectType();
          v20 = *(&v110 + 1);
          v21 = __swift_project_boxed_opaque_existential_1(&v109, *(&v110 + 1));
          *(&v105 + 1) = v20;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v104);
          v23 = v21;
          a1 = v90;
          (*(*(v20 - 8) + 16))(boxed_opaque_existential_0, v23, v20);
          (*(v19 + 64))(v99, v16, &v104, ObjectType, v19);

          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0Tm(&v104);
        }

        else
        {
        }

        v12 = v92;
        goto LABEL_64;
      }
    }

    v91 = v10;
    v25 = v114;
    v26 = v115;
    __swift_project_boxed_opaque_existential_1(v113, v114);
    v27 = *(v26 + 40);
    swift_bridgeObjectRetain_n();

    v97 = v27(v25, v26);
    v28 = v4 == 42 && ObjectType == 0xE100000000000000;
    if (v28 || (sub_25A9989E8() & 1) != 0)
    {

      v29 = v116;
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_41:
        v62 = *(v97 + 32);
        swift_beginAccess();
        ObjectType = *(v62 + 16);
        v63 = 1 << *(ObjectType + 32);
        if (v63 < 64)
        {
          v64 = ~(-1 << v63);
        }

        else
        {
          v64 = -1;
        }

        v65 = v64 & *(ObjectType + 64);
        a1 = (v63 + 63) >> 6;
        v66 = *(v62 + 16);

        v67 = 0;
        while (v65)
        {
          v68 = v67;
LABEL_56:
          v70 = __clz(__rbit64(v65));
          v65 &= v65 - 1;
          v71 = v70 | (v68 << 6);
          sub_25A874FB0(*(ObjectType + 48) + 40 * v71, v102);
          sub_25A87500C(*(ObjectType + 56) + 32 * v71, v101);
          v104 = v102[0];
          v105 = v102[1];
          *&v106 = v103;
          sub_25A872D74(v101, (&v106 + 8));
          v4 = v68;
LABEL_57:
          v111[0] = v106;
          v111[1] = v107;
          v112 = v108;
          v109 = v104;
          v110 = v105;
          if (!*(&v105 + 1))
          {

            a1 = v90;
            v10 = v91;
            v12 = v92;
            v13 = v98;
            goto LABEL_5;
          }

          sub_25A872D74((v111 + 8), v102);
          v104 = v109;
          v105 = v110;
          *&v106 = *&v111[0];
          if (swift_dynamicCast())
          {
            v72 = v101[0];
            if (swift_unknownObjectWeakLoadStrong())
            {
              v73 = v116[4];
              v74 = swift_getObjectType();
              (*(v73 + 64))(v72, *(&v72 + 1), v102, v74, v73);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v102);
          v67 = v4;
        }

        if (a1 <= v67 + 1)
        {
          v69 = v67 + 1;
        }

        else
        {
          v69 = a1;
        }

        v4 = v69 - 1;
        while (1)
        {
          v68 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            break;
          }

          if (v68 >= a1)
          {
            v65 = 0;
            v108 = 0;
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            goto LABEL_57;
          }

          v65 = *(ObjectType + 64 + 8 * v68);
          ++v67;
          if (v65)
          {
            goto LABEL_56;
          }
        }

        __break(1u);
LABEL_71:

        goto LABEL_72;
      }

      v30 = v29[4];
      v31 = swift_getObjectType();
      v32 = (*(v30 + 8))(v31, v30);
      swift_unknownObjectRelease();
      swift_beginAccess();
      v33 = *(v97 + 40);
      swift_beginAccess();

      v34 = *(v32 + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(v32 + 40);
      *&v104 = v36;
      *(v32 + 40) = 0x8000000000000000;
      v37 = v33 + 64;
      v38 = -1 << *(v33 + 32);
      if (-v38 < 64)
      {
        v39 = ~(-1 << -v38);
      }

      else
      {
        v39 = -1;
      }

      v40 = v39 & *(v33 + 64);
      v88 = -1 << *(v33 + 32);
      v89 = v32;
      v41 = (63 - v38) >> 6;
      v96 = v33;

      v42 = 0;
      v95 = v33 + 64;
      while (v40)
      {
        v100 = isUniquelyReferenced_nonNull_native;
        v45 = v42;
LABEL_31:
        v47 = __clz(__rbit64(v40)) | (v45 << 6);
        v48 = (*(v96 + 48) + 16 * v47);
        ObjectType = *v48;
        v49 = v48[1];
        v4 = *(*(v96 + 56) + 8 * v47);

        v51 = sub_25A8F3600(ObjectType, v49);
        isa = v36[2].isa;
        v53 = (v50 & 1) == 0;
        v54 = isa + v53;
        if (__OFADD__(isa, v53))
        {
          goto LABEL_82;
        }

        v55 = v50;
        if (v36[3].isa >= v54)
        {
          if ((v100 & 1) == 0)
          {
            sub_25A96944C();
          }
        }

        else
        {
          sub_25A9684BC(v54, v100 & 1);
          v56 = sub_25A8F3600(ObjectType, v49);
          if ((v55 & 1) != (v57 & 1))
          {
            result = sub_25A998AA8();
            __break(1u);
            return result;
          }

          v51 = v56;
        }

        v40 &= v40 - 1;
        v36 = v104;
        if (v55)
        {

          v43 = v36[7].isa;
          v44 = *(v43 + v51);
          *(v43 + v51) = v4;
        }

        else
        {
          *(v104 + 8 * (v51 >> 6) + 64) |= 1 << v51;
          v58 = (v36[6].isa + 16 * v51);
          *v58 = ObjectType;
          v58[1] = v49;
          *(v36[7].isa + v51) = v4;
          v59 = v36[2].isa;
          v60 = __OFADD__(v59, 1);
          v61 = (v59 + 1);
          if (v60)
          {
            goto LABEL_83;
          }

          v36[2].isa = v61;
        }

        isUniquelyReferenced_nonNull_native = 1;
        v42 = v45;
        v37 = v95;
      }

      v46 = v42;
      while (1)
      {
        v45 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v45 >= v41)
        {
          sub_25A874FA8();

          *(v89 + 40) = v36;
          swift_endAccess();

          goto LABEL_41;
        }

        v40 = *(v37 + 8 * v45);
        ++v46;
        if (v40)
        {
          v100 = isUniquelyReferenced_nonNull_native;
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_79;
    }

    LexicalContext.attribute(for:)(v4, ObjectType, &v104);
    a1 = v90;
    if (!*(&v105 + 1))
    {
      break;
    }

    sub_25A872D74(&v104, &v109);
    v75 = v116;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v76 = v75[4];
      v77 = swift_getObjectType();
      (*(v76 + 64))(v99, v16, &v109, v77, v76);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v12 = v92;

LABEL_64:
    __swift_destroy_boxed_opaque_existential_0Tm(&v109);
LABEL_5:
    if (++v13 == v93)
    {
      goto LABEL_71;
    }
  }

  sub_25A872D84(&v104);
  if (qword_27FA043C0 == -1)
  {
    goto LABEL_76;
  }

LABEL_84:
  swift_once();
LABEL_76:
  v78 = sub_25A997BD8();
  __swift_project_value_buffer(v78, qword_27FA0FCE8);

  v79 = v116;

  v36 = sub_25A997BB8();
  v80 = sub_25A9983A8();

  if (os_log_type_enabled(v36, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *&v109 = v82;
    *v81 = 136315394;
    v84 = v79[5];
    v83 = v79[6];

    v85 = sub_25A98CC90(v84, v83, &v109);

    *(v81 + 4) = v85;
    *(v81 + 12) = 2080;

    v86 = sub_25A98CC90(v4, ObjectType, &v109);

    *(v81 + 14) = v86;
    _os_log_impl(&dword_25A232000, v36, v80, "Failed to from %s import %s.", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F852800](v82, -1, -1);
    MEMORY[0x25F852800](v81, -1, -1);
    goto LABEL_80;
  }

LABEL_79:

LABEL_80:

  sub_25A874F54();
  swift_allocError();
  *v87 = 115;
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_0Tm(v113);
}