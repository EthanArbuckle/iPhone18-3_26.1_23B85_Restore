void sub_25897A598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 184), 8);
  _Block_object_dispose((v34 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25897AAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25897CC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25897DB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id OUTLINED_FUNCTION_1(id a1)
{

  return a1;
}

uint64_t OUTLINED_FUNCTION_2(uint64_t result, char a2, uint64_t a3, float a4)
{
  if (a2)
  {
    v4 = v5;
  }

  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_3()
{

  return objc_opt_class();
}

void sub_258981E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_258983C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, char a27)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose(&a27, 8);
  std::__hash_table<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>>>::~__hash_table(v27 - 144);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void sub_258984010(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__hash_table<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

uint64_t std::unordered_map<long,_HDMHDomainCount * {__strong}>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>>>::__emplace_unique_key_args<long,std::pair<long const,_HDMHDomainCount * {__strong}> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>>>::__emplace_unique_key_args<long,std::pair<long const,_HDMHDomainCount * {__strong}> const&>(void *a1, unint64_t *a2)
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

void sub_2589845C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_25898571C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_258988368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2589896C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_258989A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

void sub_258989D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258989F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25898A3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25898A820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_1_0(id a1)
{

  return a1;
}

id sub_25898B298()
{
  v1 = sub_2589921D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277CC9830], v1);
  sub_2589921E4();
  (*(v2 + 8))(v5, v1);
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_generatorState] = 0;
  v6 = &v0[OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_nextStateOfMindSampleTime];
  *v6 = 0;
  v6[8] = 1;
  *&v0[OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_currentInjectionIndex] = 0;
  v7 = type metadata accessor for MentalHealthDemoDataGenerator();
  v9.receiver = v0;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_25898B41C(uint64_t a1, void *a2)
{
  swift_unknownObjectWeakAssign();
  v5 = *(v2 + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_generatorState);
  *(v2 + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_generatorState) = a2;
  v4 = a2;
}

unint64_t sub_25898B6F0()
{
  v1 = sub_2589921C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v26 - v8;
  v10 = OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_currentInjectionIndex;
  v11 = *(v0 + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_currentInjectionIndex);
  if (v11 > 3)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = (&unk_2869CD838 + 24 * v11);
  v14 = v12[5];
  v13 = v12[6];
  result = sub_258991054(0x20000000000001);
  if (result == 0x20000000000000)
  {
    if (v14 < 1.0)
    {
      return 0;
    }
  }

  else if (vcvtd_n_f64_u64(result, 0x35uLL) > v14)
  {
    return 0;
  }

  v15 = v13 * 3600.0;
  if (v15 < 0.0)
  {
    goto LABEL_20;
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_258991054(0x20000000000001);
  sub_258992184();
  sub_258992174();
  *(v0 + v10);
  vcvtd_n_f64_u64(sub_258991054(0x20000000000001), 0x35uLL);
  v16 = sub_258992334();
  v17 = *(v16 + 16);
  if (!v17)
  {
    v19 = 0;
LABEL_13:

    v20 = sub_25898BA9C();
    v22 = v21;
    (*(v2 + 16))(v6, v9, v1);
    if (v17)
    {
      sub_25898E000(0, &qword_27F96BDC8, type metadata accessor for Label, MEMORY[0x277D84560]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_258994460;
      *(v23 + 32) = v19;
      if (v22)
      {
        goto LABEL_18;
      }
    }

    else if (v22)
    {
      goto LABEL_18;
    }

    sub_25898E000(0, &qword_27F96BDC0, type metadata accessor for __HKStateOfMindDomain, MEMORY[0x277D84560]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_258994460;
    *(v24 + 32) = v20;
LABEL_18:
    sub_25898E324(0, &qword_27F96BDB8, 0x277CCDA30);
    sub_25898D7B8(MEMORY[0x277D84F90]);
    v25 = sub_2589922E4();
    (*(v2 + 8))(v9, v1);
    return v25;
  }

  v18 = v16;
  result = sub_25898D4E8(*(v16 + 16));
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  if (result < *(v18 + 16))
  {
    v19 = *(v18 + 8 * result + 32);
    goto LABEL_13;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_25898BA9C()
{
  swift_getObjectType();
  v0 = sub_258992264();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25898D574();
  if (v5 < 1)
  {
  }

  else
  {
    v7 = v5;
    result = sub_258991054(v5);
    v9 = 0;
    v10 = 0;
    v11 = 1 << *(v6 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v6 + 64);
    v14 = result + 1;
    v15 = (v11 + 63) >> 6;
    while (v13)
    {
LABEL_10:
      v17 = __clz(__rbit64(v13)) | (v10 << 6);
      v18 = *(*(v6 + 56) + 8 * v17);
      v19 = __OFADD__(v9, v18);
      v9 += v18;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      v13 &= v13 - 1;
      if (v9 >= v14)
      {
        v20 = *(*(v6 + 48) + 8 * v17);

        return v20;
      }
    }

    while (1)
    {
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v16 >= v15)
      {
        break;
      }

      v13 = *(v6 + 64 + 8 * v16);
      ++v10;
      if (v13)
      {
        v10 = v16;
        goto LABEL_10;
      }
    }

    sub_258992244();

    v21 = sub_258992254();
    v22 = sub_258992304();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = v0;
      v24 = v23;
      v25 = swift_slowAlloc();
      v31 = v1;
      v26 = v25;
      v33 = v25;
      *v24 = 136446722;
      v27 = sub_258992494();
      v29 = sub_25898F438(v27, v28, &v33);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v14;
      *(v24 + 22) = 2048;

      *(v24 + 24) = v7;

      _os_log_impl(&dword_258977000, v21, v22, "[%{public}s] Random weight out of bounds. Weight: %ld total: %ld", v24, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x259C90080](v26, -1, -1);
      MEMORY[0x259C90080](v24, -1, -1);

      (*(v31 + 8))(v4, v32);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v1 + 8))(v4, v0);
    }
  }

  return 0;
}

void sub_25898BD8C(uint64_t a1, double a2)
{
  v55 = a1;
  v4 = sub_258992154();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258992224();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25898E000(0, &unk_27F96BF70, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  v18 = sub_2589921C4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v46 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v56 = &v42 - v23;
  *(v2 + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_currentInjectionIndex) = 0;
  v24 = OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_calendar;
  v25 = *(v8 + 104);
  v47 = *MEMORY[0x277CC9968];
  v25(v11);
  v54 = v2;
  v48 = v24;
  sub_258992214();
  (*(v8 + 8))(v11, v7);
  v53 = v19;
  v26 = *(v19 + 48);
  v57 = v18;
  if (v26(v17, 1, v18) == 1)
  {
    sub_25898E064(v17, &unk_27F96BF70, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_25898E000);
    sub_25898C980(a2);
  }

  else
  {
    v43 = *(v53 + 32);
    v44 = v53 + 32;
    v43(v56, v17, v57);
    sub_25898E000(0, &qword_27F96BDA0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v27 = *(v8 + 72);
    v28 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v29 = swift_allocObject();
    v45 = v26;
    v30 = v29;
    *(v29 + 16) = xmmword_258994470;
    v31 = v29 + v28;
    (v25)(v29 + v28, v47, v7);
    (v25)(v31 + v27, *MEMORY[0x277CC9998], v7);
    v32 = v54;
    (v25)(v31 + 2 * v27, *MEMORY[0x277CC9988], v7);
    sub_25898FB9C(v30);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v33 = v50;
    sub_2589921F4();

    sub_258992144();
    v34 = v49;
    sub_258992204();
    if (v45(v34, 1, v57) == 1)
    {
      sub_25898E064(v34, &unk_27F96BF70, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_25898E000);
      v35 = sub_25898C980(a2);
      (*(v51 + 8))(v33, v52, v35);
      (*(v53 + 8))(v56, v57);
    }

    else
    {
      v36 = v46;
      v37 = v57;
      v43(v46, v34, v57);
      sub_258992194();
      v39 = v38;
      v40 = *(v53 + 8);
      v40(v36, v37);
      (*(v51 + 8))(v33, v52);
      v40(v56, v37);
      v41 = v32 + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_nextStateOfMindSampleTime;
      *v41 = v39 * 0.0000115740741 + a2;
      *(v41 + 8) = 0;
    }
  }
}

void sub_25898C3D0(uint64_t a1, double a2)
{
  sub_25898E000(0, &unk_27F96BF70, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v53 - v7;
  v9 = sub_2589921C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258992154();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  v22 = *(v2 + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_currentInjectionIndex);
  v23 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v23 <= 3)
  {
    if ((v23 & 0x8000000000000000) == 0)
    {
      v55 = OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_currentInjectionIndex;
      v56 = v13;
      v54 = v22 + 1;
      v24 = qword_2869CD8B8[3 * v23 + 4];
      v57 = OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_calendar;
      v58 = v24;
      sub_25898E000(0, &qword_27F96BDA0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
      v59 = v19;
      v25 = sub_258992224();
      v62 = v9;
      v63 = v8;
      v26 = v25;
      v27 = *(v25 - 8);
      v60 = v10;
      v28 = v27;
      v29 = a1;
      v30 = *(v27 + 72);
      v31 = *(v27 + 80);
      v64 = v2;
      v32 = (v31 + 32) & ~v31;
      v61 = v15;
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_258994470;
      v34 = v33 + v32;
      v35 = v21;
      v36 = v14;
      v37 = *(v28 + 104);
      v37(v34, *MEMORY[0x277CC9968], v26);
      v37(v34 + v30, *MEMORY[0x277CC9998], v26);
      v38 = v61;
      v37(v34 + 2 * v30, *MEMORY[0x277CC9988], v26);
      v39 = v36;
      v40 = v35;
      sub_25898FB9C(v33);
      swift_setDeallocating();
      v41 = v64;
      v42 = v62;
      swift_arrayDestroy();
      v43 = v59;
      swift_deallocClassInstance();
      v53 = v29;
      v44 = v63;
      sub_2589921F4();
      v45 = v60;

      (*(v38 + 16))(v43, v35, v39);
      sub_258992144();
      sub_258992204();
      if ((*(v45 + 48))(v44, 1, v42) == 1)
      {
        sub_25898E064(v44, &unk_27F96BF70, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_25898E000);
        v46 = sub_25898C980(a2);
        v47 = *(v38 + 8);
        v47(v43, v39, v46);
        (v47)(v35, v39);
      }

      else
      {
        v48 = v56;
        (*(v45 + 32))(v56, v44, v42);
        sub_258992194();
        v50 = v49;
        (*(v45 + 8))(v48, v42);
        v51 = *(v38 + 8);
        v51(v43, v39);
        v51(v40, v39);
        v52 = v41 + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_nextStateOfMindSampleTime;
        *v52 = v50 * 0.0000115740741 + a2;
        *(v52 + 8) = 0;
        *(v41 + v55) = v54;
      }

      return;
    }

LABEL_11:
    __break(1u);
    return;
  }

  sub_25898BD8C(a1, a2);
}

double sub_25898C980(double a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_258992264();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258992244();
  v9 = sub_258992254();
  v10 = sub_258992304();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    v13 = sub_258992494();
    v15 = sub_25898F438(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_258977000, v9, v10, "[%{public}s] Calendar math failed! Resetting to tomorrow", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x259C90080](v12, -1, -1);
    MEMORY[0x259C90080](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  HDDemoData_timeFromDateComponents();
  result = v16 + a1;
  v18 = v2 + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_nextStateOfMindSampleTime;
  *v18 = result;
  *(v18 + 8) = 0;
  return result;
}

void sub_25898CB78(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_nextStateOfMindSampleTime + 8))
  {
    v3 = 0;
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_nextStateOfMindSampleTime);
    v3 = sub_2589922D4();
  }

  v5 = sub_258992294();
  [a1 encodeObject:v3 forKey:v5];
  swift_unknownObjectRelease();

  v6 = *(v1 + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_currentInjectionIndex);
  v7 = sub_258992294();
  [a1 encodeInteger:v6 forKey:v7];
}

id MentalHealthDemoDataGenerator.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_25898DABC(a1);

  return v4;
}

id MentalHealthDemoDataGenerator.init(coder:)(void *a1)
{
  v2 = sub_25898DABC(a1);

  return v2;
}

id MentalHealthDemoDataGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MentalHealthDemoDataGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25898CE44()
{
  v1 = *v0;
  sub_258992464();
  MEMORY[0x259C8F8B0](v1);
  return sub_258992484();
}

uint64_t sub_25898CEB8()
{
  v1 = *v0;
  sub_258992464();
  MEMORY[0x259C8F8B0](v1);
  return sub_258992484();
}

void *sub_25898CF10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_25898CF2C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_258992464();
  MEMORY[0x259C8F8B0](a1);
  v4 = sub_258992484();

  return sub_25898D284(a1, v4);
}

unint64_t sub_25898CF98(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_258992464();
  sub_2589922A4();
  v6 = sub_258992484();

  return sub_25898D2F0(a1, a2, v6);
}

uint64_t sub_25898D010(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_25898E0EC();
  result = sub_2589923F4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_258992464();
      MEMORY[0x259C8F8B0](v21);
      result = sub_258992484();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

unint64_t sub_25898D284(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25898D2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_258992424())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_25898D3A8()
{
  v1 = v0;
  sub_25898E0EC();
  v2 = *v0;
  v3 = sub_2589923E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_25898D4E8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x259C90090](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x259C90090](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25898D574()
{
  v0 = sub_258992344();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v2 >= *(v0 + 16))
      {
        goto LABEL_33;
      }

      v4 = *(v0 + 32 + 8 * v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = sub_25898CF2C(v4);
      v8 = *(v3 + 16);
      v9 = (v7 & 1) == 0;
      v10 = __OFADD__(v8, v9);
      v11 = v8 + v9;
      if (v10)
      {
        goto LABEL_34;
      }

      v12 = v7;
      if (*(v3 + 24) >= v11)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v17 = v6;
          sub_25898D3A8();
          v6 = v17;
        }
      }

      else
      {
        sub_25898D010(v11, isUniquelyReferenced_nonNull_native);
        v6 = sub_25898CF2C(v4);
        if ((v12 & 1) != (v13 & 1))
        {
          goto LABEL_36;
        }
      }

      if ((v4 - 1) > 9)
      {
        v14 = 3;
        if (v12)
        {
LABEL_3:
          *(*(v3 + 56) + 8 * v6) = v14;
          goto LABEL_4;
        }
      }

      else
      {
        v14 = qword_258994680[v4 - 1];
        if (v12)
        {
          goto LABEL_3;
        }
      }

      *(v3 + 8 * (v6 >> 6) + 64) |= 1 << v6;
      *(*(v3 + 48) + 8 * v6) = v4;
      *(*(v3 + 56) + 8 * v6) = v14;
      v15 = *(v3 + 16);
      v10 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v10)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v16;
LABEL_4:
      if (v1 == ++v2)
      {
        goto LABEL_19;
      }
    }
  }

  v3 = MEMORY[0x277D84F98];
LABEL_19:

  v18 = 0;
  v19 = 0;
  v20 = 1 << *(v3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v3 + 64);
  v23 = (v20 + 63) >> 6;
  while (v22)
  {
    v24 = v18;
LABEL_28:
    v25 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v26 = *(*(v3 + 56) + ((v24 << 9) | (8 * v25)));
    v10 = __OFADD__(v19, v26);
    v19 += v26;
    if (v10)
    {
      __break(1u);
      return v3;
    }
  }

  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v24 >= v23)
    {
      return v3;
    }

    v22 = *(v3 + 64 + 8 * v24);
    ++v18;
    if (v22)
    {
      v18 = v24;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  type metadata accessor for __HKStateOfMindDomain(0);
  result = sub_258992444();
  __break(1u);
  return result;
}

unint64_t sub_25898D7B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25898E19C();
    v3 = sub_258992404();
    v4 = a1 + 32;

    while (1)
    {
      sub_25898E200(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_25898CF98(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25898E2C8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_25898D8BC(uint64_t a1, void *a2, double a3)
{
  v4 = v3;
  v8 = sub_2589921C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  if (*(v4 + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_nextStateOfMindSampleTime + 8))
  {

    sub_25898BD8C(a1, a3);
    return;
  }

  if (*(v4 + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_nextStateOfMindSampleTime) > a3)
  {
    return;
  }

  v16 = *(v4 + OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_generatorState);
  if (!v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = [v16 firstSampleDate];
  if (!v17)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v18 = v17;
  sub_2589921B4();

  sub_2589921A4();
  v19 = *(v9 + 8);
  v19(v13, v8);
  v20 = sub_25898B6F0();
  if (v20)
  {
    v21 = v20;
    [a2 addObjectFromPhone_];
  }

  sub_25898C3D0(a1, a3);
  v19(v15, v8);
}

id sub_25898DABC(void *a1)
{
  v2 = v1;
  v4 = sub_2589921D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CC9830], v4);
  sub_2589921E4();
  (*(v5 + 8))(v8, v4);
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_generatorState] = 0;
  v9 = &v2[OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_nextStateOfMindSampleTime];
  *v9 = 0;
  v9[8] = 1;
  v10 = OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_currentInjectionIndex;
  *&v2[OBJC_IVAR____TtC18MentalHealthDaemon29MentalHealthDemoDataGenerator_currentInjectionIndex] = 0;
  sub_25898E000(0, &qword_27F96BDE0, sub_25898E2D8, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_258994460;
  *(v11 + 32) = sub_25898E324(0, &qword_27F96BDF0, 0x277CCABB0);
  sub_258992354();

  if (v22)
  {
    v12 = swift_dynamicCast();
    v13 = v19[1];
    if (!v12)
    {
      v13 = 0;
    }

    v14 = v12 ^ 1;
  }

  else
  {
    sub_25898E064(v21, &unk_27F96BDF8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_25898E3BC);
    v13 = 0;
    v14 = 1;
  }

  *v9 = v13;
  v9[8] = v14;
  v15 = sub_258992294();
  v16 = [a1 decodeIntegerForKey_];

  *&v2[v10] = v16;
  v17 = type metadata accessor for MentalHealthDemoDataGenerator();
  v20.receiver = v2;
  v20.super_class = v17;
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t type metadata accessor for MentalHealthDemoDataGenerator()
{
  result = qword_27F96BD88;
  if (!qword_27F96BD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25898DDF4()
{
  result = sub_258992234();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_25898E000(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_25898E064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_25898E0EC()
{
  if (!qword_27F96BDA8)
  {
    type metadata accessor for __HKStateOfMindDomain(255);
    sub_25898E440(&qword_27F96BDB0);
    v0 = sub_258992414();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96BDA8);
    }
  }
}

void sub_25898E19C()
{
  if (!qword_27F96BDD0)
  {
    v0 = sub_258992414();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96BDD0);
    }
  }
}

uint64_t sub_25898E200(uint64_t a1, uint64_t a2)
{
  sub_25898E264();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25898E264()
{
  if (!qword_27F96BDD8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96BDD8);
    }
  }
}

_OWORD *sub_25898E2C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_25898E2D8()
{
  result = qword_27F96BDE8;
  if (!qword_27F96BDE8)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F96BDE8);
  }

  return result;
}

uint64_t sub_25898E324(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_25898E3BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25898E440(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for __HKStateOfMindDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25898E5DC(uint64_t a1, void *a2)
{
  swift_unknownObjectWeakAssign();
  v5 = *(v2 + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_generatorState);
  *(v2 + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_generatorState) = a2;
  v4 = a2;
}

void sub_25898E8FC(uint64_t a1, double a2)
{
  v53 = a1;
  v4 = sub_258992154();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258992224();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258990FF0(0, &unk_27F96BF70, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v48 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v44 - v16;
  v18 = sub_2589921C4();
  v56 = *(v18 - 8);
  v19 = *(v56 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v46 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v49 = v44 - v22;
  v23 = sub_25898D4E8(0x15uLL);
  v55 = OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_calendar;
  v24 = *MEMORY[0x277CC9968];
  v25 = *(v8 + 104);
  v25(v11, v24, v7);
  if (__OFSUB__(70, v23))
  {
    __break(1u);
  }

  else
  {
    v54 = v2;
    sub_258992214();
    (*(v8 + 8))(v11, v7);
    v26 = *(v56 + 48);
    if (v26(v17, 1, v18) == 1)
    {
      sub_258990F40(v17, &unk_27F96BF70, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_258990FF0);
      sub_25898EF5C(a2);
    }

    else
    {
      v27 = *(v56 + 32);
      v47 = v18;
      v28 = v49;
      v44[0] = v27;
      v44[1] = v56 + 32;
      v27(v49, v17, v47);
      sub_258990FF0(0, &qword_27F96BDA0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
      v29 = *(v8 + 72);
      v30 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v31 = swift_allocObject();
      v45 = v26;
      v32 = v31;
      *(v31 + 16) = xmmword_258994470;
      v33 = v31 + v30;
      v25(v33, v24, v7);
      v25((v33 + v29), *MEMORY[0x277CC9998], v7);
      v34 = v28;
      v35 = v47;
      v25((v33 + 2 * v29), *MEMORY[0x277CC9988], v7);
      sub_25898FB9C(v32);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v36 = v50;
      sub_2589921F4();

      sub_258992144();
      v37 = v48;
      sub_258992204();
      if (v45(v37, 1, v35) == 1)
      {
        sub_258990F40(v37, &unk_27F96BF70, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_258990FF0);
        v38 = sub_25898EF5C(a2);
        (*(v51 + 8))(v36, v52, v38);
        (*(v56 + 8))(v34, v35);
      }

      else
      {
        v39 = v46;
        (v44[0])(v46, v37, v35);
        sub_258992194();
        v41 = v40;
        v42 = *(v56 + 8);
        v42(v39, v35);
        (*(v51 + 8))(v36, v52);
        v42(v34, v35);
        v43 = v54 + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_nextSampleTime;
        *v43 = v41 * 0.0000115740741 + a2;
        *(v43 + 8) = 0;
      }
    }
  }
}

double sub_25898EF5C(double a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_258992264();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258992244();
  v9 = sub_258992254();
  v10 = sub_258992304();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    v13 = sub_258992494();
    v15 = sub_25898F438(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_258977000, v9, v10, "[%{public}s] Calendar math failed! Resetting to 60 days from now", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x259C90080](v12, -1, -1);
    MEMORY[0x259C90080](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  result = a1 + 60.0;
  v17 = v2 + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_nextSampleTime;
  *v17 = a1 + 60.0;
  *(v17 + 8) = 0;
  return result;
}

void sub_25898F14C(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_nextSampleTime + 8))
  {
    v3 = 0;
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_nextSampleTime);
    v3 = sub_2589922D4();
  }

  v5 = sub_258992294();
  [a1 encodeObject:v3 forKey:v5];
  swift_unknownObjectRelease();
}

id MentalHealthAssessmentsDemoDataGenerator.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2589909C4(a1);

  return v4;
}

id MentalHealthAssessmentsDemoDataGenerator.init(coder:)(void *a1)
{
  v2 = sub_2589909C4(a1);

  return v2;
}

id MentalHealthAssessmentsDemoDataGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MentalHealthAssessmentsDemoDataGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25898F438(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25898F504(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_258990E1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25898F504(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25898F610(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2589923B4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_25898F610(uint64_t a1, unint64_t a2)
{
  v4 = sub_25898F65C(a1, a2);
  sub_25898F78C(&unk_2869CD810);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25898F65C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25898F878(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2589923B4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2589922B4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25898F878(v10, 0);
        result = sub_2589923A4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25898F78C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25898F904(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25898F878(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_258990FA0(0, &qword_27F96BF68, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25898F904(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_258990FA0(0, &qword_27F96BF68, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_25898FA10(char *a1, int64_t a2, char a3)
{
  result = sub_25898FA88(a1, a2, a3, *v3, &qword_27F96BFC0, _s3__C6AnswerOMa_0);
  *v3 = result;
  return result;
}

char *sub_25898FA4C(char *a1, int64_t a2, char a3)
{
  result = sub_25898FA88(a1, a2, a3, *v3, &qword_27F96BFC8, type metadata accessor for Answer);
  *v3 = result;
  return result;
}

char *sub_25898FA88(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_258990FF0(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

uint64_t sub_25898FB9C(uint64_t a1)
{
  v2 = sub_258992224();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_258990E7C();
    v10 = sub_258992384();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_258990EFC(&qword_27F96BF88);
      v18 = sub_258992274();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_258990EFC(&unk_27F96BF90);
          v25 = sub_258992284();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_25898FE88()
{
  v48[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v1 = sub_258992264();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v45 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_258992244();
    v11 = sub_258992254();
    v12 = sub_2589922F4();
    v13 = os_log_type_enabled(v11, v12);
    v47 = ObjectType;
    if (v13)
    {
      v14 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48[0] = v46;
      *v14 = 136446210;
      v15 = sub_258992494();
      v17 = v10;
      v18 = v6;
      v19 = v1;
      v20 = v2;
      v21 = sub_25898F438(v15, v16, v48);

      *(v14 + 4) = v21;
      v2 = v20;
      v1 = v19;
      v6 = v18;
      v10 = v17;
      _os_log_impl(&dword_258977000, v11, v12, "[%{public}s] Hello!", v14, 0xCu);
      v22 = v46;
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x259C90080](v22, -1, -1);
      MEMORY[0x259C90080](v14, -1, -1);
    }

    v23 = v2[1];
    v23(v8, v1);
    v24 = [objc_opt_self() hdmh:v10 mentalHealthSyncedDefaultsDomainWithProfile:?];
    sub_25898E324(0, &qword_27F96BDF0, 0x277CCABB0);
    v25 = sub_258992364();
    v26 = *MEMORY[0x277D28068];
    v48[0] = 0;
    v27 = [v24 setNumber:v25 forKey:v26 error:v48];

    if (v27)
    {
      v28 = v48[0];
    }

    else
    {
      v29 = v48[0];
      v30 = sub_258992164();

      swift_willThrow();
      sub_258992244();
      v31 = v30;
      v32 = sub_258992254();
      v33 = sub_2589922F4();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v46 = v2;
        v35 = v34;
        v45 = swift_slowAlloc();
        v48[0] = v45;
        *v35 = 136446466;
        v36 = sub_258992494();
        v38 = sub_25898F438(v36, v37, v48);
        v47 = v23;
        v39 = v38;

        *(v35 + 4) = v39;
        *(v35 + 12) = 2080;
        swift_getErrorValue();
        v40 = sub_258992454();
        v42 = sub_25898F438(v40, v41, v48);

        *(v35 + 14) = v42;
        _os_log_impl(&dword_258977000, v32, v33, "[%{public}s] Couldn't set the age confirmation for mental health assessments with error: %s", v35, 0x16u);
        v43 = v45;
        swift_arrayDestroy();
        MEMORY[0x259C90080](v43, -1, -1);
        MEMORY[0x259C90080](v35, -1, -1);

        v47(v6, v1);
      }

      else
      {

        v23(v6, v1);
      }
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

uint64_t sub_258990320()
{
  v0 = sub_2589921C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  sub_25898D4E8(0x20000000000001uLL);
  sub_258992184();
  sub_258992174();
  v26 = v1;
  v10 = *(v1 + 16);
  v28 = v9;
  v29 = v0;
  v10(v7, v9, v0);
  v31 = MEMORY[0x277D84F90];
  sub_25898FA4C(0, 7, 0);
  v11 = 0;
  v12 = v31;
  do
  {
    do
    {
      v30 = 0;
      MEMORY[0x259C90090](&v30, 8);
    }

    while (!(3 * v30));
    v13 = qword_2869CD938[((v30 * 3uLL) >> 64) + 4];
    v31 = v12;
    v15 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_25898FA4C((v14 > 1), v15 + 1, 1);
      v12 = v31;
    }

    ++v11;
    *(v12 + 16) = v15 + 1;
    *(v12 + 8 * v15 + 32) = v13;
  }

  while (v11 != 7);
  sub_25898E324(0, &qword_27F96BFA8, 0x277CCD470);
  v16 = MEMORY[0x277D84F90];
  sub_25898D7B8(MEMORY[0x277D84F90]);
  v17 = sub_258992314();
  v10(v27, v28, v29);
  v31 = v16;
  sub_25898FA10(0, 9, 0);
  v18 = 0;
  v19 = v31;
  do
  {
    do
    {
      v30 = 0;
      MEMORY[0x259C90090](&v30, 8);
    }

    while (!(3 * v30));
    v20 = qword_2869CD970[((v30 * 3uLL) >> 64) + 4];
    v31 = v19;
    v22 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_25898FA10((v21 > 1), v22 + 1, 1);
      v19 = v31;
    }

    ++v18;
    *(v19 + 16) = v22 + 1;
    *(v19 + 8 * v22 + 32) = v20;
  }

  while (v18 != 9);
  sub_25898E324(0, &qword_27F96BFB0, 0x277CCD770);
  sub_25898D7B8(MEMORY[0x277D84F90]);
  v23 = sub_258992324();
  sub_258990FA0(0, &qword_27F96BFB8, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2589946D0;
  *(v24 + 32) = v23;
  *(v24 + 40) = v17;
  (*(v26 + 8))(v28, v29);
  return v24;
}

void sub_2589906E8(uint64_t a1, void *a2, double a3)
{
  v7 = sub_2589921C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  if ((*(v3 + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_nextSampleTime + 8) & 1) == 0)
  {
    if (*(v3 + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_nextSampleTime) > a3)
    {
      return;
    }

    v15 = *(v3 + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_generatorState);
    if (v15)
    {
      v16 = [v15 firstSampleDate];
      if (v16)
      {
        v17 = v16;
        sub_2589921B4();

        sub_2589921A4();
        v18 = *(v8 + 8);
        v18(v12, v7);
        v19 = sub_258990320();
        if (v19 >> 62)
        {
          v21[1] = v19;
          if (sub_2589923D4())
          {
            sub_25898E324(0, &qword_27F96BFA0, 0x277CCD6F0);
            sub_2589923C4();
            goto LABEL_11;
          }
        }

        else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

          sub_258992434();
          sub_25898E324(0, &qword_27F96BFA0, 0x277CCD6F0);
LABEL_11:

          sub_25898E324(0, &qword_27F96BFA0, 0x277CCD6F0);
          v20 = sub_2589922C4();

          [a2 addObjectsFromPhone_];

LABEL_15:
          sub_25898E8FC(a1, a3);
          v18(v14, v7);
          return;
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_25898E8FC(a1, a3);
}

id sub_2589909C4(void *a1)
{
  v3 = sub_2589921D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277CC9830], v3);
  sub_2589921E4();
  (*(v4 + 8))(v7, v3);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_generatorState] = 0;
  v8 = &v1[OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_nextSampleTime];
  *v8 = 0;
  v8[8] = 1;
  v9 = sub_258992294();
  v10 = [a1 decodeObjectForKey_];

  if (v10)
  {
    sub_258992374();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    v11 = swift_dynamicCast();
    v12 = v16[1];
    if (!v11)
    {
      v12 = 0;
    }

    v13 = v11 ^ 1;
  }

  else
  {
    sub_258990F40(v20, &unk_27F96BDF8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_258990FA0);
    v12 = 0;
    v13 = 1;
  }

  *v8 = v12;
  v8[8] = v13;
  v14 = type metadata accessor for MentalHealthAssessmentsDemoDataGenerator();
  v17.receiver = v1;
  v17.super_class = v14;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t type metadata accessor for MentalHealthAssessmentsDemoDataGenerator()
{
  result = qword_27F96BF58;
  if (!qword_27F96BF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258990C74()
{
  result = sub_258992234();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_258990E1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_258990E7C()
{
  if (!qword_27F96BF80)
  {
    sub_258992224();
    sub_258990EFC(&qword_27F96BF88);
    v0 = sub_258992394();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96BF80);
    }
  }
}

uint64_t sub_258990EFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_258992224();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258990F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_258990FA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258990FF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}