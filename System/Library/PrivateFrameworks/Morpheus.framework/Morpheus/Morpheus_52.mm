void sub_25A539700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  std::locale::~locale(&a14);
  std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::~__hash_table(&a20);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  v29 = *(v27 - 120);
  if (v29)
  {
    *(v27 - 112) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__function::__value_func<std::string ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t mlx::core::cpu::CommandEncoder::dispatch<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>(mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1 &&)::{lambda(void)#1}::~dispatch(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 48);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8Compiled8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERSC_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(uint64_t a1)
{
  *a1 = &unk_286BF6930;
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 56);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8Compiled8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERSC_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_286BF6930;
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 56);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  return MEMORY[0x25F851760](a1, 0x10B1C4006FBAB38);
}

void sub_25A539B70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  v5 = *v3;
  if (*v3)
  {
    v2[5] = v5;
    operator delete(v5);
  }

  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8Compiled8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERSC_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF6930;
  v4 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v4;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  std::vector<void *>::__init_with_size[abi:ne200100]<void **,void **>(a2 + 32, *(a1 + 32), *(a1 + 40), (*(a1 + 40) - *(a1 + 32)) >> 3);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  std::vector<std::vector<unsigned long>>::__init_with_size[abi:ne200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(a2 + 56, *(a1 + 56), *(a1 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 64) - *(a1 + 56)) >> 3));
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 80, *(a1 + 80), *(a1 + 88), (*(a1 + 88) - *(a1 + 80)) >> 2);
}

void sub_25A539C80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8Compiled8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERSC_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 56);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8Compiled8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERSC_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 56);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8Compiled8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERSC_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  v1 = (*(a1 + 24))(*(a1 + 32));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8Compiled8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERSC_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<void *>::__init_with_size[abi:ne200100]<void **,void **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<void *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A539E54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<std::vector<unsigned long>>::__init_with_size[abi:ne200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A539F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned long>>,std::vector<unsigned long>*,std::vector<unsigned long>*,std::vector<unsigned long>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned long>>,std::vector<unsigned long>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned long>>,std::vector<unsigned long>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__function::__func<std::__bind<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>,std::allocator<std::__bind<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_286BF69B0;
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 40);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 24) = v3;
    operator delete(v3);
  }

  return a1;
}

{
  *a1 = &unk_286BF69B0;
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 40);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 24) = v3;
    operator delete(v3);
  }

  return MEMORY[0x25F851760](a1, 0x10B1C402834BF01);
}

void sub_25A53A204(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  v5 = *v3;
  if (*v3)
  {
    v2[3] = v5;
    operator delete(v5);
  }

  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>,std::allocator<std::__bind<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>>,void ()(void)>::__clone(void *a1, uint64_t a2)
{
  v4 = a1[1];
  *a2 = &unk_286BF69B0;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  std::vector<void *>::__init_with_size[abi:ne200100]<void **,void **>(a2 + 16, a1[2], a1[3], (a1[3] - a1[2]) >> 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  std::vector<std::vector<unsigned long>>::__init_with_size[abi:ne200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(a2 + 40, a1[5], a1[6], 0xAAAAAAAAAAAAAAABLL * ((a1[6] - a1[5]) >> 3));
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 64, a1[8], a1[9], (a1[9] - a1[8]) >> 2);
  *(a2 + 92) = 0;
  *(a2 + 89) = 0;
  return result;
}

void sub_25A53A308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](va);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<std::__bind<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>,std::allocator<std::__bind<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>>,void ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 40);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 24) = v3;
    operator delete(v3);
  }
}

void std::__function::__func<std::__bind<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>,std::allocator<std::__bind<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 40);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 24) = v3;
    operator delete(v3);
  }

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>,std::allocator<std::__bind<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlx::core::cpu::get_command_encoder(uint64_t a1, int a2)
{
  v4 = a1;
  v5 = a2;
  if ((atomic_load_explicit(&_MergedGlobals_2, memory_order_acquire) & 1) == 0)
  {
    mlx::core::cpu::get_command_encoder();
  }

  v2 = std::__hash_table<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<mlx::core::FunctionTable::Function>>>>::find<int>(&xmmword_27FA06008, &v4);
  if (!v2)
  {
    v2 = std::__hash_table<std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>,std::__unordered_map_hasher<int,std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>>>::__emplace_unique_key_args<int,int &,mlx::core::Stream &>(&xmmword_27FA06008, &v4);
  }

  return v2 + 3;
}

uint64_t std::__hash_table<std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>,std::__unordered_map_hasher<int,std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>,std::__unordered_map_hasher<int,std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>,std::__unordered_map_hasher<int,std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 40);
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>,std::__unordered_map_hasher<int,std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>>>::__emplace_unique_key_args<int,int &,mlx::core::Stream &>(void *a1, int *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,mlx::core::cpu::CommandEncoder>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 5;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void mlx::core::QuantizedMatmul::eval_cpu(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v15[48] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (a2[1] - *a2 == 64)
  {
    v13 = 0uLL;
    v14 = 0;
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    v12 = &v13;
    mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()(&v10, v3, &v9);
    mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()(&v10, (v3 + 16), &v8);
    mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()(&v10, (v3 + 32), &v7);
    mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()(&v10, (v3 + 48), &v6);
    v5 = mlx::core::allocator::malloc((*(*a3 + 60) * *(*a3 + 48)));
    v15[0] = &unk_286BE3468;
    v15[1] = mlx::core::allocator::free;
    v15[3] = v15;
    mlx::core::array::set_data(a3, v5);
  }

  mlx::core::QuantizedMatmul::eval_cpu();
}

void sub_25A53AF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _Unwind_Exception *exception_objecta, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, char a34, uint64_t a35, char a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_free_exception(v66);
  std::mutex::unlock(v65);
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>(mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1 &&)::{lambda(void)#1}::~dispatch(&a50);
  mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1::~$_1(&a65);
  mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1::~$_1(&a17);
  mlx::core::array::~array(&a32);
  mlx::core::array::~array(&a34);
  mlx::core::array::~array(&a36);
  mlx::core::array::~array(&a38);
  a50 = &a43;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a50);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()@<X0>(uint64_t result@<X0>, mlx::core::array *a2@<X1>, uint64_t **a3@<X8>)
{
  v5 = *a2;
  if ((*(*a2 + 168) & 2) != 0)
  {
    v10 = *(a2 + 1);
  }

  else
  {
    v6 = result;
    v7 = *(result + 16);
    v15 = 0;
    v16 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v5, v5[1], (v5[1] - *v5) >> 2);
    v8 = *(*a2 + 56);
    v12 = 0;
    v13 = 0;
    memset(v11, 0, sizeof(v11));
    mlx::core::array::array(v17, &__p, v8 & 0xFFFFFFFFFFLL, &v12, v11);
    std::vector<mlx::core::array>::push_back[abi:ne200100](v7, v17);
    mlx::core::array::~array(v17);
    v18 = v11;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v18);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    result = mlx::core::copy(a2, (*(*(v6 + 16) + 8) - 16), 2u, *v6, *(v6 + 8));
    v9 = *(*(v6 + 16) + 8);
    v5 = *(v9 - 16);
    v10 = *(v9 - 8);
  }

  *a3 = v5;
  a3[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_25A53B1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  mlx::core::array::~array((v16 - 56));
  *(v16 - 40) = &a10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v16 - 40));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1::~$_1(uint64_t a1)
{
  mlx::core::array::~array((a1 + 64));
  mlx::core::array::~array((a1 + 48));
  mlx::core::array::~array((a1 + 32));
  mlx::core::array::~array((a1 + 16));

  mlx::core::array::~array(a1);
}

void mlx::core::GatherQMM::eval_cpu(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v15[60] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (a2[1] - *a2 == 96)
  {
    v13 = 0uLL;
    v14 = 0;
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    v12 = &v13;
    mlx::core::GatherQMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()(&v10, v3, &v9);
    mlx::core::GatherQMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()(&v10, (v3 + 16), &v8);
    mlx::core::GatherQMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()(&v10, (v3 + 32), &v7);
    mlx::core::GatherQMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()(&v10, (v3 + 48), &v6);
    v5 = mlx::core::allocator::malloc((*(*a3 + 60) * *(*a3 + 48)));
    v15[0] = &unk_286BE3468;
    v15[1] = mlx::core::allocator::free;
    v15[3] = v15;
    mlx::core::array::set_data(a3, v5);
  }

  mlx::core::GatherQMM::eval_cpu();
}

void sub_25A53BA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _Unwind_Exception *exception_objecta, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, char a42, uint64_t a43, char a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  __cxa_free_exception(v59);
  std::mutex::unlock(v58);
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::GatherQMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>(mlx::core::GatherQMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1 &&)::{lambda(void)#1}::~dispatch(&a58);
  mlx::core::GatherQMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1::~$_1(&STACK[0x220]);
  mlx::core::GatherQMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1::~$_1(&a21);
  mlx::core::array::~array(&a40);
  mlx::core::array::~array(&a42);
  mlx::core::array::~array(&a44);
  mlx::core::array::~array(&a46);
  a58 = &a51;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a58);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::GatherQMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()@<X0>(uint64_t result@<X0>, mlx::core::array *a2@<X1>, uint64_t **a3@<X8>)
{
  v5 = *a2;
  v6 = **a2;
  v7 = v5[1];
  v8 = v7 - v6;
  if (v7 == v6)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v9 = (v8 >> 2) - 1;
  v10 = v5[3];
  if (*(v10 + 2 * v8 - 16) == *(v6 + 4 * v9) && *(v10 + 8 * v9) == 1)
  {
    v16 = *(a2 + 1);
    *a3 = v5;
  }

  else
  {
    v12 = result;
    v13 = *(result + 16);
    v21 = 0;
    v22 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v6, v7, v8 >> 2);
    v14 = *(*a2 + 56);
    v18 = 0;
    v19 = 0;
    memset(v17, 0, sizeof(v17));
    mlx::core::array::array(v23, &__p, v14 & 0xFFFFFFFFFFLL, &v18, v17);
    std::vector<mlx::core::array>::push_back[abi:ne200100](v13, v23);
    mlx::core::array::~array(v23);
    v24 = v17;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v24);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    result = mlx::core::copy(a2, (*(*(v12 + 16) + 8) - 16), 2u, *v12, *(v12 + 8));
    v15 = *(*(v12 + 16) + 8);
    v16 = *(v15 - 8);
    *a3 = *(v15 - 16);
  }

  a3[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_25A53BD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  mlx::core::array::~array((v16 - 56));
  *(v16 - 40) = &a10;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v16 - 40));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::GatherQMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1::~$_1(uint64_t a1)
{
  mlx::core::array::~array((a1 + 96));
  mlx::core::array::~array((a1 + 80));
  mlx::core::array::~array((a1 + 64));
  mlx::core::array::~array((a1 + 48));
  mlx::core::array::~array((a1 + 32));
  mlx::core::array::~array((a1 + 16));

  mlx::core::array::~array(a1);
}

void mlx::core::fast::AffineQuantize::eval_cpu(uint64_t a1, mlx::core::array **a2, uint64_t *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = **a2;
  if ((*(v5 + 168) & 2) != 0)
  {
    v9 = *(v4 + 1);
    *&v13 = **a2;
    *(&v13 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = 0;
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    *&v20 = 0;
    v19 = 0uLL;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v19, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 2);
    v8 = *(*v4 + 56);
    v12 = 0uLL;
    memset(v17, 0, 24);
    mlx::core::array::array(&v18, &v19, v8 & 0xFFFFFFFFFFLL, &v12, v17);
    v15 = v17;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v15);
    if (*(&v12 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
    }

    if (v19)
    {
      *(&v19 + 1) = v19;
      operator delete(v19);
    }

    mlx::core::copy(v4, &v18, 2u, v6, v7);
    v13 = v18;
    if (*(&v18 + 1))
    {
      atomic_fetch_add_explicit((*(&v18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v14 = 1;
    mlx::core::array::~array(&v18);
  }

  v10 = *a3;
  v11 = mlx::core::allocator::malloc((*(**a3 + 60) * *(**a3 + 48)));
  v16[0] = &unk_286BE3468;
  v16[1] = mlx::core::allocator::free;
  v16[3] = v16;
  mlx::core::array::set_data(v10, v11);
}

void sub_25A53C558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  __cxa_free_exception(v58);
  std::mutex::unlock(v57);
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>(mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1 &&)::{lambda(void)#1}::~dispatch(&a45);
  mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1::~$_1(&a57);
  mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1::~$_1(&a17);
  mlx::core::array::~array(&a29);
  _Unwind_Resume(a1);
}

void mlx::core::fast::AffineQuantize::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1::~$_1(uint64_t a1)
{
  mlx::core::array::~array((a1 + 48));
  mlx::core::array::~array((a1 + 32));
  mlx::core::array::~array((a1 + 16));

  mlx::core::array::~array(a1);
}

void mlx::core::fast::AffineQuantize::~AffineQuantize(mlx::core::fast::AffineQuantize *this)
{
  *this = &unk_286BF6BB8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);
}

{
  *this = &unk_286BF6BB8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 56);
  *this = &unk_286BF21A8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array>)>::~__value_func[abi:ne200100](this + 24);

  JUMPOUT(0x25F851760);
}

uint64_t mlx::core::cpu::CommandEncoder::dispatch<mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>(mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1 &&)::{lambda(void)#1}::~dispatch(uint64_t a1)
{
  mlx::core::array::~array((a1 + 80));
  mlx::core::array::~array((a1 + 64));
  mlx::core::array::~array((a1 + 48));
  mlx::core::array::~array((a1 + 32));
  mlx::core::array::~array((a1 + 16));
  return a1;
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15QuantizedMatmul8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF6C30;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 11));
  mlx::core::array::~array((a1 + 9));
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15QuantizedMatmul8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF6C30;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 11));
  mlx::core::array::~array((a1 + 9));
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15QuantizedMatmul8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BF6C30;
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

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 64);
  *(a2 + 56) = *(result + 56);
  *(a2 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(result + 80);
  *(a2 + 72) = *(result + 72);
  *(a2 + 80) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(result + 96);
  *(a2 + 88) = *(result + 88);
  *(a2 + 96) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(result + 104);
  *(a2 + 112) = *(result + 112);
  *(a2 + 104) = v8;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15QuantizedMatmul8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 88));
  mlx::core::array::~array((a1 + 72));
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15QuantizedMatmul8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 88));
  mlx::core::array::~array((a1 + 72));
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15QuantizedMatmul8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, double a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  std::__bind<mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>::operator()[abi:ne200100]<>(a1 + 24, a2, a3, a4, a5, a6, a7, a8);
  v9 = mlx::core::scheduler::scheduler(v8);

  mlx::core::scheduler::Scheduler::notify_task_completion(v9);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15QuantizedMatmul8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>::operator()[abi:ne200100]<>(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, double a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v160 = *(a1 + 84);
  v161 = *(a1 + 80);
  v159 = *(a1 + 88);
  v9 = *(a1 + 16);
  v10 = *(v9 + 56);
  switch(v10)
  {
    case 9:
      v15 = *(v9 + 8);
      if (v15 == *v9)
      {
        goto LABEL_79;
      }

      v16 = (v15 - *v9) < 5 ? 1 : *(v15 - 8);
      v154 = v16;
      v20 = *(*a1 + 8);
      if (v20 == **a1)
      {
        goto LABEL_79;
      }

      v157 = *(v15 - 4);
      v151 = *(v20 - 4);
      v21 = *(a1 + 32);
      v22 = *(a1 + 48);
      if (v21[1] - *v21 < 9uLL)
      {
        v127 = 0;
        v148 = 0;
      }

      else
      {
        if (v22[1] - *v22 <= 4uLL)
        {
          goto LABEL_79;
        }

        *v21;
        v127 = *(v21[1] - 8) * *(v21[1] - 4);
        *v22;
        v148 = *(v22[1] - 8) * *(v22[1] - 4);
      }

      if ((*(v9 + 48) / (v16 * v157)) >= 1)
      {
        v59 = 0;
        v142 = *(v9 + 152);
        v145 = *(*a1 + 152);
        v136 = v22[19];
        v139 = v21[19];
        v133 = *(*(a1 + 64) + 152);
        v130 = (*(v9 + 48) / (v16 * v157)) & 0x7FFFFFFF;
        do
        {
          v60 = *(a1 + 16);
          v61 = *v60;
          v62 = (v60[1] - *v60) >> 2;
          v63 = (v62 - 1);
          v64 = 0;
          if (v62 - 1 >= 0)
          {
            v65 = v60[3];
            quot = v157 * v59 * v154;
            do
            {
              v67 = ldiv(quot, *(v61 + 4 * v63));
              quot = v67.quot;
              v64 += *(v65 + 8 * v63--) * v67.rem;
            }

            while (v63 != -1);
          }

          v68 = *(a1 + 32);
          v69 = *v68;
          v70 = (v68[1] - *v68) >> 2;
          v71 = 0;
          v72 = (v70 - 1);
          if (v70 - 1 >= 0)
          {
            v73 = v59 * v127;
            v74 = v68[3];
            do
            {
              v75 = ldiv(v73, *(v69 + 4 * v72));
              v73 = v75.quot;
              v71 += *(v74 + 8 * v72--) * v75.rem;
            }

            while (v72 != -1);
          }

          v76 = v59 * v148;
          v77 = *(a1 + 48);
          v78 = *v77;
          v79 = (v77[1] - *v77) >> 2;
          v80 = 0;
          v81 = (v79 - 1);
          if (v79 - 1 >= 0)
          {
            v82 = v77[3];
            v83 = v59 * v148;
            do
            {
              v84 = ldiv(v83, *(v78 + 4 * v81));
              v83 = v84.quot;
              v80 += *(v82 + 8 * v81--) * v84.rem;
            }

            while (v81 != -1);
          }

          v85 = *(a1 + 64);
          v86 = *v85;
          v87 = (v85[1] - *v85) >> 2;
          v88 = 0;
          v89 = (v87 - 1);
          if (v87 - 1 >= 0)
          {
            v90 = v85[3];
            do
            {
              v91 = ldiv(v76, *(v86 + 4 * v89));
              v76 = v91.quot;
              v88 += *(v90 + 8 * v89--) * v91.rem;
            }

            while (v89 != -1);
          }

          ++v59;
        }

        while (v59 < v130);
      }

      break;
    case 12:
      v13 = *(v9 + 8);
      if (v13 == *v9)
      {
        goto LABEL_79;
      }

      v14 = (v13 - *v9) < 5 ? 1 : *(v13 - 8);
      v153 = v14;
      v17 = *(*a1 + 8);
      if (v17 == **a1)
      {
        goto LABEL_79;
      }

      v156 = *(v13 - 4);
      v150 = *(v17 - 4);
      v18 = *(a1 + 32);
      v19 = *(a1 + 48);
      if (v18[1] - *v18 < 9uLL)
      {
        v126 = 0;
        v147 = 0;
      }

      else
      {
        if (v19[1] - *v19 <= 4uLL)
        {
          goto LABEL_79;
        }

        *v18;
        v126 = *(v18[1] - 8) * *(v18[1] - 4);
        *v19;
        v147 = *(v19[1] - 8) * *(v19[1] - 4);
      }

      if ((*(v9 + 48) / (v14 * v156)) >= 1)
      {
        v26 = 0;
        v141 = *(v9 + 152);
        v144 = *(*a1 + 152);
        v135 = v19[19];
        v138 = v18[19];
        v132 = *(*(a1 + 64) + 152);
        v129 = (*(v9 + 48) / (v14 * v156)) & 0x7FFFFFFF;
        do
        {
          v27 = *(a1 + 16);
          v28 = *v27;
          v29 = (v27[1] - *v27) >> 2;
          v30 = (v29 - 1);
          v31 = 0;
          if (v29 - 1 >= 0)
          {
            v32 = v27[3];
            v33 = v156 * v26 * v153;
            do
            {
              v34 = ldiv(v33, *(v28 + 4 * v30));
              v33 = v34.quot;
              v31 += *(v32 + 8 * v30--) * v34.rem;
            }

            while (v30 != -1);
          }

          v35 = *(a1 + 32);
          v36 = *v35;
          v37 = (v35[1] - *v35) >> 2;
          v38 = 0;
          v39 = (v37 - 1);
          if (v37 - 1 >= 0)
          {
            v40 = v26 * v126;
            v41 = v35[3];
            do
            {
              v42 = ldiv(v40, *(v36 + 4 * v39));
              v40 = v42.quot;
              v38 += *(v41 + 8 * v39--) * v42.rem;
            }

            while (v39 != -1);
          }

          v43 = v26 * v147;
          v44 = *(a1 + 48);
          v45 = *v44;
          v46 = (v44[1] - *v44) >> 2;
          v47 = 0;
          v48 = (v46 - 1);
          if (v46 - 1 >= 0)
          {
            v49 = v44[3];
            v50 = v26 * v147;
            do
            {
              v51 = ldiv(v50, *(v45 + 4 * v48));
              v50 = v51.quot;
              v47 += *(v49 + 8 * v48--) * v51.rem;
            }

            while (v48 != -1);
          }

          v52 = *(a1 + 64);
          v53 = *v52;
          v54 = (v52[1] - *v52) >> 2;
          v55 = 0;
          v56 = (v54 - 1);
          if (v54 - 1 >= 0)
          {
            v57 = v52[3];
            do
            {
              v58 = ldiv(v43, *(v53 + 4 * v56));
              v43 = v58.quot;
              v55 += *(v57 + 8 * v56--) * v58.rem;
            }

            while (v56 != -1);
          }

          ++v26;
        }

        while (v26 < v129);
      }

      break;
    case 10:
      v11 = *(v9 + 8);
      if (v11 != *v9)
      {
        v12 = (v11 - *v9) < 5 ? 1 : *(v11 - 8);
        v155 = v12;
        v23 = *(*a1 + 8);
        if (v23 != **a1)
        {
          v158 = *(v11 - 4);
          v152 = *(v23 - 4);
          v24 = *(a1 + 32);
          v25 = *(a1 + 48);
          if (v24[1] - *v24 < 9uLL)
          {
            v128 = 0;
            v149 = 0;
LABEL_63:
            if ((*(v9 + 48) / (v12 * v158)) >= 1)
            {
              v92 = 0;
              v143 = *(v9 + 152);
              v146 = *(*a1 + 152);
              v137 = v25[19];
              v140 = v24[19];
              v134 = *(*(a1 + 64) + 152);
              v131 = (*(v9 + 48) / (v12 * v158)) & 0x7FFFFFFF;
              do
              {
                v93 = *(a1 + 16);
                v94 = *v93;
                v95 = (v93[1] - *v93) >> 2;
                v96 = (v95 - 1);
                v97 = 0;
                if (v95 - 1 >= 0)
                {
                  v98 = v93[3];
                  v99 = v158 * v92 * v155;
                  do
                  {
                    v100 = ldiv(v99, *(v94 + 4 * v96));
                    v99 = v100.quot;
                    v97 += *(v98 + 8 * v96--) * v100.rem;
                  }

                  while (v96 != -1);
                }

                v101 = *(a1 + 32);
                v102 = *v101;
                v103 = (v101[1] - *v101) >> 2;
                v104 = 0;
                v105 = (v103 - 1);
                if (v103 - 1 >= 0)
                {
                  v106 = v92 * v128;
                  v107 = v101[3];
                  do
                  {
                    v108 = ldiv(v106, *(v102 + 4 * v105));
                    v106 = v108.quot;
                    v104 += *(v107 + 8 * v105--) * v108.rem;
                  }

                  while (v105 != -1);
                }

                v109 = v92 * v149;
                v110 = *(a1 + 48);
                v111 = *v110;
                v112 = (v110[1] - *v110) >> 2;
                v113 = 0;
                v114 = (v112 - 1);
                if (v112 - 1 >= 0)
                {
                  v115 = v110[3];
                  v116 = v92 * v149;
                  do
                  {
                    v117 = ldiv(v116, *(v111 + 4 * v114));
                    v116 = v117.quot;
                    v113 += *(v115 + 8 * v114--) * v117.rem;
                  }

                  while (v114 != -1);
                }

                v118 = *(a1 + 64);
                v119 = *v118;
                v120 = (v118[1] - *v118) >> 2;
                v121 = 0;
                v122 = (v120 - 1);
                if (v120 - 1 >= 0)
                {
                  v123 = v118[3];
                  do
                  {
                    v124 = ldiv(v109, *(v119 + 4 * v122));
                    v109 = v124.quot;
                    v121 += *(v123 + 8 * v122--) * v124.rem;
                  }

                  while (v122 != -1);
                }

                ++v92;
              }

              while (v92 < v131);
            }

            return;
          }

          if (v25[1] - *v25 > 4uLL)
          {
            *v24;
            v128 = *(v24[1] - 8) * *(v24[1] - 4);
            *v25;
            v149 = *(v25[1] - 8) * *(v25[1] - 4);
            goto LABEL_63;
          }
        }
      }

LABEL_79:
      std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[quantized_matmul] only floating types are supported");
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }
}

void mlx::core::anonymous namespace::_qmm_dispatch_typed<float>(float *a1, float *a2, unsigned __int8 *a3, float *a4, float *a5, int a6, int a7, int a8, float32x4_t a9, double a10, double a11, double a12, float32x4_t a13, int a14, int a15, char a16)
{
  v18 = a5;
  v532 = *MEMORY[0x277D85DE8];
  v511 = a6;
  if (a15 <= 3)
  {
    if (a15 == 2)
    {
      switch(a14)
      {
        case 128:
          if (a16)
          {
            if (a6 >= 1)
            {
              for (i = 0; i != a6; ++i)
              {
                if (a7 >= 1)
                {
                  v191 = 0;
                  v192 = a5;
                  v193 = a4;
                  v194 = a3;
                  do
                  {
                    if (a8 < 1)
                    {
                      v196 = 0.0;
                    }

                    else
                    {
                      v195 = 0;
                      v196 = 0.0;
                      v197 = a2;
                      do
                      {
                        v198 = 0;
                        v201 = v197;
                        do
                        {
                          v202 = v194[v198];
                          v199 = *v193;
                          v200 = *v192;
                          v196 = (((v196 + (*v201 * (v200 + (v199 * (v202 & 3))))) + (v201[1] * (v200 + (v199 * ((v202 >> 2) & 3))))) + (v201[2] * (v200 + (v199 * ((v202 >> 4) & 3))))) + (v201[3] * (v200 + (v199 * (v202 >> 6))));
                          v201 += 4;
                          ++v198;
                        }

                        while (v198 != 32);
                        v194 += 32;
                        ++v193;
                        ++v192;
                        v197 += 128;
                        v195 += 128;
                      }

                      while (v195 < a8);
                    }

                    *a1++ = v196;
                    ++v191;
                  }

                  while (v191 != a7);
                }

                a2 += a8;
              }
            }
          }

          else if (a6 >= 1)
          {
            for (j = 0; j != a6; ++j)
            {
              if (a7 >= 1)
              {
                v381 = a2;
                bzero(a1, 4 * a7);
                a6 = v511;
                a2 = v381;
              }

              if (a8 >= 1)
              {
                v382 = 0;
                v383 = v18;
                v384 = a4;
                v385 = a3;
                do
                {
                  v386 = *a2++;
                  a9.f32[0] = v386;
                  if (a7 >= 1)
                  {
                    v387 = 0;
                    a9 = vdupq_lane_s32(*a9.f32, 0);
                    v388 = a1;
                    do
                    {
                      v389 = vld1q_dup_f32(v384);
                      v390 = vld1q_dup_f32(v383);
                      v391 = 32;
                      do
                      {
                        v392 = *v385++;
                        a13.i16[0] = v392;
                        a13.i16[1] = v392 >> 2;
                        a13.i16[2] = v392 >> 4;
                        v393 = vand_s8(*a13.f32, 0x3000300030003);
                        v393.i16[3] = vshr_n_u16(vdup_n_s16(v392), 6uLL).i16[3];
                        a13 = vmlaq_f32(v390, vcvtq_f32_u32(vmovl_u16(v393)), v389);
                        *v388 = vmlaq_f32(*v388, a13, a9);
                        ++v388;
                        --v391;
                      }

                      while (v391);
                      ++v384;
                      ++v383;
                      v387 += 128;
                    }

                    while (v387 < a7);
                  }

                  ++v382;
                }

                while (v382 != a8);
              }

              a1 += a7;
            }
          }

          goto LABEL_456;
        case 64:
          if (a16)
          {
            if (a6 >= 1)
            {
              for (k = 0; k != a6; ++k)
              {
                if (a7 >= 1)
                {
                  v157 = 0;
                  v158 = a5;
                  v159 = a4;
                  v160 = a3;
                  do
                  {
                    if (a8 < 1)
                    {
                      v162 = 0.0;
                    }

                    else
                    {
                      v161 = 0;
                      v162 = 0.0;
                      v163 = a2;
                      do
                      {
                        v164 = 0;
                        v167 = v163;
                        do
                        {
                          v168 = v160[v164];
                          v165 = *v159;
                          v166 = *v158;
                          v162 = (((v162 + (*v167 * (v166 + (v165 * (v168 & 3))))) + (v167[1] * (v166 + (v165 * ((v168 >> 2) & 3))))) + (v167[2] * (v166 + (v165 * ((v168 >> 4) & 3))))) + (v167[3] * (v166 + (v165 * (v168 >> 6))));
                          v167 += 4;
                          ++v164;
                        }

                        while (v164 != 16);
                        v160 += 16;
                        ++v159;
                        ++v158;
                        v163 += 64;
                        v161 += 64;
                      }

                      while (v161 < a8);
                    }

                    *a1++ = v162;
                    ++v157;
                  }

                  while (v157 != a7);
                }

                a2 += a8;
              }
            }
          }

          else if (a6 >= 1)
          {
            for (m = 0; m != a6; ++m)
            {
              if (a7 >= 1)
              {
                v335 = a2;
                bzero(a1, 4 * a7);
                a6 = v511;
                a2 = v335;
              }

              if (a8 >= 1)
              {
                v336 = 0;
                v337 = v18;
                v338 = a4;
                v339 = a3;
                do
                {
                  v340 = *a2++;
                  a9.i32[0] = v340;
                  if (a7 >= 1)
                  {
                    v341 = 0;
                    a9 = vdupq_lane_s32(*a9.f32, 0);
                    v342 = a1;
                    do
                    {
                      v343 = vld1q_dup_f32(v338);
                      v344 = vld1q_dup_f32(v337);
                      v345 = 16;
                      do
                      {
                        v346 = *v339++;
                        a13.i16[0] = v346;
                        a13.i16[1] = v346 >> 2;
                        a13.i16[2] = v346 >> 4;
                        v347 = vand_s8(*a13.f32, 0x3000300030003);
                        v347.i16[3] = vshr_n_u16(vdup_n_s16(v346), 6uLL).i16[3];
                        a13 = vmlaq_f32(v344, vcvtq_f32_u32(vmovl_u16(v347)), v343);
                        *v342 = vmlaq_f32(*v342, a13, a9);
                        ++v342;
                        --v345;
                      }

                      while (v345);
                      ++v338;
                      ++v337;
                      v341 += 64;
                    }

                    while (v341 < a7);
                  }

                  ++v336;
                }

                while (v336 != a8);
              }

              a1 += a7;
            }
          }

          goto LABEL_456;
        case 32:
          if (a16)
          {
            if (a6 >= 1)
            {
              for (n = 0; n != a6; ++n)
              {
                if (a7 >= 1)
                {
                  v86 = 0;
                  v87 = a5;
                  v88 = a4;
                  v89 = a3;
                  do
                  {
                    if (a8 < 1)
                    {
                      v91 = 0.0;
                    }

                    else
                    {
                      v90 = 0;
                      v91 = 0.0;
                      v92 = a2;
                      do
                      {
                        v93 = 0;
                        v96 = v92;
                        do
                        {
                          v97 = v89[v93];
                          v94 = *v88;
                          v95 = *v87;
                          v91 = (((v91 + (*v96 * (v95 + (v94 * (v97 & 3))))) + (v96[1] * (v95 + (v94 * ((v97 >> 2) & 3))))) + (v96[2] * (v95 + (v94 * ((v97 >> 4) & 3))))) + (v96[3] * (v95 + (v94 * (v97 >> 6))));
                          v96 += 4;
                          ++v93;
                        }

                        while (v93 != 8);
                        v89 += 8;
                        ++v88;
                        ++v87;
                        v92 += 32;
                        v90 += 32;
                      }

                      while (v90 < a8);
                    }

                    *a1++ = v91;
                    ++v86;
                  }

                  while (v86 != a7);
                }

                a2 += a8;
              }
            }
          }

          else if (a6 >= 1)
          {
            for (ii = 0; ii != a6; ++ii)
            {
              if (a7 >= 1)
              {
                v395 = a2;
                bzero(a1, 4 * a7);
                a6 = v511;
                a2 = v395;
              }

              if (a8 >= 1)
              {
                v396 = 0;
                v397 = v18;
                v398 = a4;
                v399 = a3;
                do
                {
                  v400 = *a2++;
                  a9.i32[0] = v400;
                  if (a7 >= 1)
                  {
                    v401 = 0;
                    a9 = vdupq_lane_s32(*a9.f32, 0);
                    v402 = a1;
                    do
                    {
                      v403 = vld1q_dup_f32(v398);
                      v404 = vld1q_dup_f32(v397);
                      v405 = 8;
                      do
                      {
                        v406 = *v399++;
                        a13.i16[0] = v406;
                        a13.i16[1] = v406 >> 2;
                        a13.i16[2] = v406 >> 4;
                        v407 = vand_s8(*a13.f32, 0x3000300030003);
                        v407.i16[3] = vshr_n_u16(vdup_n_s16(v406), 6uLL).i16[3];
                        a13 = vmlaq_f32(v404, vcvtq_f32_u32(vmovl_u16(v407)), v403);
                        *v402 = vmlaq_f32(*v402, a13, a9);
                        ++v402;
                        --v405;
                      }

                      while (v405);
                      ++v398;
                      ++v397;
                      v401 += 32;
                    }

                    while (v401 < a7);
                  }

                  ++v396;
                }

                while (v396 != a8);
              }

              a1 += a7;
            }
          }

          goto LABEL_456;
      }
    }

    else
    {
      if (a15 != 3)
      {
        goto LABEL_457;
      }

      v509 = a4;
      switch(a14)
      {
        case 128:
          if (a16)
          {
            if (a6 >= 1)
            {
              v236 = 0;
              v498 = a8;
              do
              {
                v504 = v236;
                if (a7 >= 1)
                {
                  v237 = 0;
                  v238 = v18;
                  v239 = a4;
                  v240 = a3;
                  v514 = a2;
                  do
                  {
                    v520 = a1;
                    if (a8 < 1)
                    {
                      v242 = 0.0;
                    }

                    else
                    {
                      v241 = 0;
                      v242 = 0.0;
                      v243 = a2;
                      do
                      {
                        v244 = 0;
                        v245 = *v239;
                        v246 = *v238;
                        do
                        {
                          v247 = &v243[v244];
                          v242 = (((((((v242 + (*v247 * (v246 + (v245 * v524)))) + (v247[1] * (v246 + (v245 * v525)))) + (v247[2] * (v246 + (v245 * v526)))) + (v247[3] * (v246 + (v245 * v527)))) + (v247[4] * (v246 + (v245 * v528)))) + (v247[5] * (v246 + (v245 * v529)))) + (v247[6] * (v246 + (v245 * v530)))) + (v247[7] * (v246 + (v245 * v531)));
                          v240 += 3;
                          v244 += 8;
                        }

                        while ((v244 * 4) != 512);
                        ++v239;
                        ++v238;
                        v243 += 128;
                        v241 += 128;
                      }

                      while (v241 < a8);
                    }

                    a2 = v514;
                    *v520 = v242;
                    a1 = v520 + 1;
                    ++v237;
                  }

                  while (v237 != a7);
                }

                a2 += v498;
                v236 = v504 + 1;
                a4 = v509;
                v18 = a5;
              }

              while (v504 + 1 != v511);
            }
          }

          else if (a6 >= 1)
          {
            v458 = 0;
            v500 = 4 * a7;
            v506 = a7;
            do
            {
              if (a7 >= 1)
              {
                v459 = a2;
                bzero(a1, v500);
                a2 = v459;
              }

              v516 = v458;
              v522 = a1;
              if (a8 >= 1)
              {
                v460 = 0;
                v461 = v18;
                v462 = a4;
                v463 = a3;
                do
                {
                  v464 = *a2;
                  v465 = a2 + 1;
                  if (a7 >= 1)
                  {
                    v466 = 0;
                    v467 = v522;
                    do
                    {
                      v468 = *v462;
                      v469 = *v461;
                      v470 = 16;
                      do
                      {
                        v471 = v467[1];
                        *v467 = *v467 + (v464 * (v469 + (v468 * v524)));
                        v467[1] = v471 + (v464 * (v469 + (v468 * v525)));
                        v472 = v467[3];
                        v467[2] = v467[2] + (v464 * (v469 + (v468 * v526)));
                        v467[3] = v472 + (v464 * (v469 + (v468 * v527)));
                        v473 = v467[5];
                        v467[4] = v467[4] + (v464 * (v469 + (v468 * v528)));
                        v467[5] = v473 + (v464 * (v469 + (v468 * v529)));
                        v474 = v467[7];
                        v467[6] = v467[6] + (v464 * (v469 + (v468 * v530)));
                        v475 = v467 + 8;
                        v467[7] = v474 + (v464 * (v469 + (v468 * v531)));
                        v463 += 3;
                        v467 += 8;
                        --v470;
                      }

                      while (v470);
                      ++v462;
                      ++v461;
                      v466 += 128;
                      v467 = v475;
                    }

                    while (v466 < a7);
                  }

                  ++v460;
                  a2 = v465;
                }

                while (v460 != a8);
              }

              a1 = &v522[v506];
              v458 = v516 + 1;
              a4 = v509;
              v18 = a5;
            }

            while (v516 + 1 != v511);
          }

          goto LABEL_456;
        case 64:
          if (a16)
          {
            if (a6 >= 1)
            {
              v224 = 0;
              v497 = a8;
              do
              {
                v503 = v224;
                if (a7 >= 1)
                {
                  v225 = 0;
                  v226 = v18;
                  v227 = a4;
                  v228 = a3;
                  v513 = a2;
                  do
                  {
                    v519 = a1;
                    if (a8 < 1)
                    {
                      v230 = 0.0;
                    }

                    else
                    {
                      v229 = 0;
                      v230 = 0.0;
                      v231 = a2;
                      do
                      {
                        v232 = 0;
                        v233 = *v227;
                        v234 = *v226;
                        do
                        {
                          v235 = &v231[v232];
                          v230 = (((((((v230 + (*v235 * (v234 + (v233 * v524)))) + (v235[1] * (v234 + (v233 * v525)))) + (v235[2] * (v234 + (v233 * v526)))) + (v235[3] * (v234 + (v233 * v527)))) + (v235[4] * (v234 + (v233 * v528)))) + (v235[5] * (v234 + (v233 * v529)))) + (v235[6] * (v234 + (v233 * v530)))) + (v235[7] * (v234 + (v233 * v531)));
                          v228 += 3;
                          v232 += 8;
                        }

                        while ((v232 * 4) != 256);
                        ++v227;
                        ++v226;
                        v231 += 64;
                        v229 += 64;
                      }

                      while (v229 < a8);
                    }

                    a2 = v513;
                    *v519 = v230;
                    a1 = v519 + 1;
                    ++v225;
                  }

                  while (v225 != a7);
                }

                a2 += v497;
                v224 = v503 + 1;
                a4 = v509;
                v18 = a5;
              }

              while (v503 + 1 != v511);
            }
          }

          else if (a6 >= 1)
          {
            v424 = 0;
            v499 = 4 * a7;
            v505 = a7;
            do
            {
              if (a7 >= 1)
              {
                v425 = a2;
                bzero(a1, v499);
                a2 = v425;
              }

              v515 = v424;
              v521 = a1;
              if (a8 >= 1)
              {
                v426 = 0;
                v427 = v18;
                v428 = a4;
                v429 = a3;
                do
                {
                  v430 = *a2;
                  v431 = a2 + 1;
                  if (a7 >= 1)
                  {
                    v432 = 0;
                    v433 = v521;
                    do
                    {
                      v434 = *v428;
                      v435 = *v427;
                      v436 = 8;
                      do
                      {
                        v437 = v433[1];
                        *v433 = *v433 + (v430 * (v435 + (v434 * v524)));
                        v433[1] = v437 + (v430 * (v435 + (v434 * v525)));
                        v438 = v433[3];
                        v433[2] = v433[2] + (v430 * (v435 + (v434 * v526)));
                        v433[3] = v438 + (v430 * (v435 + (v434 * v527)));
                        v439 = v433[5];
                        v433[4] = v433[4] + (v430 * (v435 + (v434 * v528)));
                        v433[5] = v439 + (v430 * (v435 + (v434 * v529)));
                        v440 = v433[7];
                        v433[6] = v433[6] + (v430 * (v435 + (v434 * v530)));
                        v441 = v433 + 8;
                        v433[7] = v440 + (v430 * (v435 + (v434 * v531)));
                        v429 += 3;
                        v433 += 8;
                        --v436;
                      }

                      while (v436);
                      ++v428;
                      ++v427;
                      v432 += 64;
                      v433 = v441;
                    }

                    while (v432 < a7);
                  }

                  ++v426;
                  a2 = v431;
                }

                while (v426 != a8);
              }

              a1 = &v521[v505];
              v424 = v515 + 1;
              a4 = v509;
              v18 = a5;
            }

            while (v515 + 1 != v511);
          }

          goto LABEL_456;
        case 32:
          if (a16)
          {
            if (a6 >= 1)
            {
              v44 = 0;
              v496 = a8;
              do
              {
                v502 = v44;
                if (a7 >= 1)
                {
                  v45 = 0;
                  v46 = v18;
                  v47 = a4;
                  v48 = a3;
                  v512 = a2;
                  do
                  {
                    v518 = a1;
                    if (a8 < 1)
                    {
                      v50 = 0.0;
                    }

                    else
                    {
                      v49 = 0;
                      v50 = 0.0;
                      v51 = a2;
                      do
                      {
                        v52 = 0;
                        v53 = *v47;
                        v54 = *v46;
                        do
                        {
                          v55 = &v51[v52];
                          v50 = (((((((v50 + (*v55 * (v54 + (v53 * v524)))) + (v55[1] * (v54 + (v53 * v525)))) + (v55[2] * (v54 + (v53 * v526)))) + (v55[3] * (v54 + (v53 * v527)))) + (v55[4] * (v54 + (v53 * v528)))) + (v55[5] * (v54 + (v53 * v529)))) + (v55[6] * (v54 + (v53 * v530)))) + (v55[7] * (v54 + (v53 * v531)));
                          v48 += 3;
                          v52 += 8;
                        }

                        while ((v52 * 4) != 128);
                        ++v47;
                        ++v46;
                        v51 += 32;
                        v49 += 32;
                      }

                      while (v49 < a8);
                    }

                    a2 = v512;
                    *v518 = v50;
                    a1 = v518 + 1;
                    ++v45;
                  }

                  while (v45 != a7);
                }

                a2 += v496;
                v44 = v502 + 1;
                a4 = v509;
                v18 = a5;
              }

              while (v502 + 1 != v511);
            }
          }

          else if (a6 >= 1)
          {
            v476 = 0;
            v501 = 4 * a7;
            v507 = a7;
            do
            {
              if (a7 >= 1)
              {
                v477 = a2;
                bzero(a1, v501);
                a2 = v477;
              }

              v517 = v476;
              v523 = a1;
              if (a8 >= 1)
              {
                v478 = 0;
                v479 = v18;
                v480 = a4;
                v481 = a3;
                do
                {
                  v482 = *a2;
                  v483 = a2 + 1;
                  if (a7 >= 1)
                  {
                    v484 = 0;
                    v485 = v523;
                    do
                    {
                      v486 = *v480;
                      v487 = *v479;
                      v488 = 4;
                      do
                      {
                        v489 = v485[1];
                        *v485 = *v485 + (v482 * (v487 + (v486 * v524)));
                        v485[1] = v489 + (v482 * (v487 + (v486 * v525)));
                        v490 = v485[3];
                        v485[2] = v485[2] + (v482 * (v487 + (v486 * v526)));
                        v485[3] = v490 + (v482 * (v487 + (v486 * v527)));
                        v491 = v485[5];
                        v485[4] = v485[4] + (v482 * (v487 + (v486 * v528)));
                        v485[5] = v491 + (v482 * (v487 + (v486 * v529)));
                        v492 = v485[7];
                        v485[6] = v485[6] + (v482 * (v487 + (v486 * v530)));
                        v493 = v485 + 8;
                        v485[7] = v492 + (v482 * (v487 + (v486 * v531)));
                        v481 += 3;
                        v485 += 8;
                        --v488;
                      }

                      while (v488);
                      ++v480;
                      ++v479;
                      v484 += 32;
                      v485 = v493;
                    }

                    while (v484 < a7);
                  }

                  ++v478;
                  a2 = v483;
                }

                while (v478 != a8);
              }

              a1 = &v523[v507];
              v476 = v517 + 1;
              a4 = v509;
              v18 = a5;
            }

            while (v517 + 1 != v511);
          }

          goto LABEL_456;
      }
    }

LABEL_458:
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Quantization group size must be 32, 64 or 128.");
LABEL_459:
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  if (a15 == 4)
  {
    switch(a14)
    {
      case 128:
        if (a16)
        {
          if (a6 >= 1)
          {
            v115 = 0;
            v116.i64[0] = 0xF0000000FLL;
            v116.i64[1] = 0xF0000000FLL;
            do
            {
              if (a7 >= 1)
              {
                v117 = 0;
                v118 = a5;
                v119 = a4;
                v120 = a3;
                do
                {
                  if (a8 < 1)
                  {
                    v122 = 0uLL;
                    v124 = 0uLL;
                  }

                  else
                  {
                    v121 = 0;
                    v122 = 0uLL;
                    v123 = a2;
                    v124 = 0uLL;
                    do
                    {
                      v125 = 0;
                      v126 = vld1q_dup_f32(v119);
                      v127 = vld1q_dup_f32(v118);
                      do
                      {
                        v128 = &v123[8 * v125];
                        v129 = &v120[4 * v125];
                        v130 = vld1q_dup_f32(v129);
                        v124 = vaddq_f32(v124, vmulq_f32(v128[1], vaddq_f32(v127, vmulq_f32(v126, vcvtq_f32_u32(vandq_s8(vshlq_u32(v130, xmmword_25A9CD6F0), v116))))));
                        v122 = vaddq_f32(v122, vmulq_f32(*v128, vaddq_f32(v127, vmulq_f32(v126, vcvtq_f32_u32(vandq_s8(vshlq_u32(v130, xmmword_25A9CD700), v116))))));
                        ++v125;
                      }

                      while (v125 != 16);
                      v120 += 64;
                      ++v119;
                      ++v118;
                      v123 += 128;
                      v121 += 128;
                    }

                    while (v121 < a8);
                  }

                  v131 = vaddq_f32(v122, v124);
                  *a1++ = vaddv_f32(vadd_f32(*v131.i8, *&vextq_s8(v131, v131, 8uLL)));
                  ++v117;
                }

                while (v117 != a7);
              }

              a2 += a8;
              ++v115;
            }

            while (v115 != a6);
          }
        }

        else if (a6 >= 1)
        {
          for (jj = 0; jj != a6; ++jj)
          {
            if (a7 >= 1)
            {
              v267 = a1;
              v268 = a1;
              v269 = a2;
              bzero(v267, 4 * a7);
              a6 = v511;
              a2 = v269;
              a1 = v268;
            }

            if (a8 >= 1)
            {
              v270 = 0;
              v271 = v18;
              v272 = a4;
              v273 = a3;
              do
              {
                v274 = *a2++;
                v275 = v274;
                if (a7 >= 1)
                {
                  v276 = 0;
                  v277 = a1;
                  do
                  {
                    v278 = *v272;
                    v279 = *v271;
                    v280 = 64;
                    do
                    {
                      v281 = *v273++;
                      v282 = v277[1] + (v275 * (v279 + (v278 * (v281 >> 4))));
                      v283 = v277 + 2;
                      *v277 = *v277 + (v275 * (v279 + (v278 * (v281 & 0xF))));
                      v277[1] = v282;
                      v277 += 2;
                      --v280;
                    }

                    while (v280);
                    ++v272;
                    ++v271;
                    v276 += 128;
                    v277 = v283;
                  }

                  while (v276 < a7);
                }

                ++v270;
              }

              while (v270 != a8);
            }

            a1 += a7;
          }
        }

        goto LABEL_456;
      case 64:
        if (a16)
        {
          if (a6 >= 1)
          {
            v98 = 0;
            v99.i64[0] = 0xF0000000FLL;
            v99.i64[1] = 0xF0000000FLL;
            do
            {
              if (a7 >= 1)
              {
                v100 = 0;
                v101 = a5;
                v102 = a4;
                v103 = a3;
                do
                {
                  if (a8 < 1)
                  {
                    v105 = 0uLL;
                    v107 = 0uLL;
                  }

                  else
                  {
                    v104 = 0;
                    v105 = 0uLL;
                    v106 = a2;
                    v107 = 0uLL;
                    do
                    {
                      v108 = 0;
                      v109 = vld1q_dup_f32(v102);
                      v110 = vld1q_dup_f32(v101);
                      do
                      {
                        v111 = &v106[8 * v108];
                        v112 = &v103[4 * v108];
                        v113 = vld1q_dup_f32(v112);
                        v107 = vaddq_f32(v107, vmulq_f32(v111[1], vaddq_f32(v110, vmulq_f32(v109, vcvtq_f32_u32(vandq_s8(vshlq_u32(v113, xmmword_25A9CD6F0), v99))))));
                        v105 = vaddq_f32(v105, vmulq_f32(*v111, vaddq_f32(v110, vmulq_f32(v109, vcvtq_f32_u32(vandq_s8(vshlq_u32(v113, xmmword_25A9CD700), v99))))));
                        ++v108;
                      }

                      while (v108 != 8);
                      v103 += 32;
                      ++v102;
                      ++v101;
                      v106 += 64;
                      v104 += 64;
                    }

                    while (v104 < a8);
                  }

                  v114 = vaddq_f32(v105, v107);
                  *a1++ = vaddv_f32(vadd_f32(*v114.i8, *&vextq_s8(v114, v114, 8uLL)));
                  ++v100;
                }

                while (v100 != a7);
              }

              a2 += a8;
              ++v98;
            }

            while (v98 != a6);
          }
        }

        else if (a6 >= 1)
        {
          for (kk = 0; kk != a6; ++kk)
          {
            if (a7 >= 1)
            {
              v249 = a1;
              v250 = a1;
              v251 = a2;
              bzero(v249, 4 * a7);
              a6 = v511;
              a2 = v251;
              a1 = v250;
            }

            if (a8 >= 1)
            {
              v252 = 0;
              v253 = v18;
              v254 = a4;
              v255 = a3;
              do
              {
                v256 = *a2++;
                v257 = v256;
                if (a7 >= 1)
                {
                  v258 = 0;
                  v259 = a1;
                  do
                  {
                    v260 = *v254;
                    v261 = *v253;
                    v262 = 32;
                    do
                    {
                      v263 = *v255++;
                      v264 = v259[1] + (v257 * (v261 + (v260 * (v263 >> 4))));
                      v265 = v259 + 2;
                      *v259 = *v259 + (v257 * (v261 + (v260 * (v263 & 0xF))));
                      v259[1] = v264;
                      v259 += 2;
                      --v262;
                    }

                    while (v262);
                    ++v254;
                    ++v253;
                    v258 += 64;
                    v259 = v265;
                  }

                  while (v258 < a7);
                }

                ++v252;
              }

              while (v252 != a8);
            }

            a1 += a7;
          }
        }

        goto LABEL_456;
      case 32:
        if (a16)
        {
          if (a6 >= 1)
          {
            v56 = 0;
            v57.i64[0] = 0xF0000000FLL;
            v57.i64[1] = 0xF0000000FLL;
            do
            {
              if (a7 >= 1)
              {
                v58 = 0;
                v59 = a5;
                v60 = a4;
                v61 = a3;
                do
                {
                  if (a8 < 1)
                  {
                    v63 = 0uLL;
                    v65 = 0uLL;
                  }

                  else
                  {
                    v62 = 0;
                    v63 = 0uLL;
                    v64 = a2;
                    v65 = 0uLL;
                    do
                    {
                      v66 = 0;
                      v67 = vld1q_dup_f32(v60);
                      v68 = vld1q_dup_f32(v59);
                      do
                      {
                        v69 = &v64[8 * v66];
                        v70 = &v61[4 * v66];
                        v71 = vld1q_dup_f32(v70);
                        v65 = vaddq_f32(v65, vmulq_f32(v69[1], vaddq_f32(v68, vmulq_f32(v67, vcvtq_f32_u32(vandq_s8(vshlq_u32(v71, xmmword_25A9CD6F0), v57))))));
                        v63 = vaddq_f32(v63, vmulq_f32(*v69, vaddq_f32(v68, vmulq_f32(v67, vcvtq_f32_u32(vandq_s8(vshlq_u32(v71, xmmword_25A9CD700), v57))))));
                        ++v66;
                      }

                      while (v66 != 4);
                      v61 += 16;
                      ++v60;
                      ++v59;
                      v64 += 32;
                      v62 += 32;
                    }

                    while (v62 < a8);
                  }

                  v72 = vaddq_f32(v63, v65);
                  *a1++ = vaddv_f32(vadd_f32(*v72.i8, *&vextq_s8(v72, v72, 8uLL)));
                  ++v58;
                }

                while (v58 != a7);
              }

              a2 += a8;
              ++v56;
            }

            while (v56 != a6);
          }
        }

        else if (a6 >= 1)
        {
          for (mm = 0; mm != a6; ++mm)
          {
            if (a7 >= 1)
            {
              v301 = a1;
              v302 = a1;
              v303 = a2;
              bzero(v301, 4 * a7);
              a6 = v511;
              a2 = v303;
              a1 = v302;
            }

            if (a8 >= 1)
            {
              v304 = 0;
              v305 = v18;
              v306 = a4;
              v307 = a3;
              do
              {
                v308 = *a2++;
                v309 = v308;
                if (a7 >= 1)
                {
                  v310 = 0;
                  v311 = a1;
                  do
                  {
                    v312 = *v306;
                    v313 = *v305;
                    v314 = 16;
                    do
                    {
                      v315 = *v307++;
                      v316 = v311[1] + (v309 * (v313 + (v312 * (v315 >> 4))));
                      v317 = v311 + 2;
                      *v311 = *v311 + (v309 * (v313 + (v312 * (v315 & 0xF))));
                      v311[1] = v316;
                      v311 += 2;
                      --v314;
                    }

                    while (v314);
                    ++v306;
                    ++v305;
                    v310 += 32;
                    v311 = v317;
                  }

                  while (v310 < a7);
                }

                ++v304;
              }

              while (v304 != a8);
            }

            a1 += a7;
          }
        }

        goto LABEL_456;
    }

    goto LABEL_458;
  }

  if (a15 == 6)
  {
    switch(a14)
    {
      case 128:
        if (a16)
        {
          if (a6 >= 1)
          {
            for (nn = 0; nn != a6; ++nn)
            {
              if (a7 >= 1)
              {
                v145 = 0;
                v146 = a5;
                v147 = a4;
                v148 = a3;
                do
                {
                  if (a8 < 1)
                  {
                    v150 = 0.0;
                  }

                  else
                  {
                    v149 = 0;
                    v150 = 0.0;
                    v151 = a2;
                    do
                    {
                      v152 = 0;
                      v154 = v151;
                      do
                      {
                        v155 = v148[v152];
                        v153 = *v147;
                        v150 = (((v150 + (*v154 * (*v146 + (v153 * (v155 & 0x3F))))) + (v154[1] * (*v146 + (v153 * ((v155 >> 6) & 0xFFFFFFC3 | (4 * (v148[v152 + 1] & 0xF))))))) + (v154[2] * (*v146 + (v153 * ((v148[v152 + 1] >> 4) & 0xFFFFFFCF | (16 * (v148[v152 + 2] & 3))))))) + (v154[3] * (*v146 + (v153 * (v148[v152 + 2] >> 2))));
                        v154 += 4;
                        v152 += 3;
                      }

                      while (v152 != 96);
                      v148 += 96;
                      ++v147;
                      ++v146;
                      v151 += 128;
                      v149 += 128;
                    }

                    while (v149 < a8);
                  }

                  *a1++ = v150;
                  ++v145;
                }

                while (v145 != a7);
              }

              a2 += a8;
            }
          }
        }

        else if (a6 >= 1)
        {
          for (i1 = 0; i1 != a6; ++i1)
          {
            if (a7 >= 1)
            {
              v319 = a2;
              bzero(a1, 4 * a7);
              a6 = v511;
              a2 = v319;
            }

            if (a8 >= 1)
            {
              v320 = 0;
              v321 = v18;
              v322 = a4;
              v323 = a3;
              do
              {
                v324 = *a2++;
                a9.i32[0] = v324;
                if (a7 >= 1)
                {
                  v325 = 0;
                  a9 = vdupq_lane_s32(*a9.f32, 0);
                  v326 = a1;
                  do
                  {
                    v327 = vld1q_dup_f32(v322);
                    v328 = vld1q_dup_f32(v321);
                    v329 = 32;
                    do
                    {
                      v330 = *v323;
                      v331 = v323[1];
                      v332 = v323[2];
                      v333.i16[0] = v330 & 0x3F;
                      v333.i16[1] = (v330 >> 6) & 0xFFC3 | (4 * (v331 & 0xF));
                      v333.i16[2] = (v331 >> 4) & 0xFFCF | (16 * (v332 & 3));
                      v333.i16[3] = v332 >> 2;
                      *v326 = vmlaq_f32(*v326, vmlaq_f32(v328, vcvtq_f32_u32(vmovl_u16(v333)), v327), a9);
                      ++v326;
                      v323 += 3;
                      --v329;
                    }

                    while (v329);
                    ++v322;
                    ++v321;
                    v325 += 128;
                  }

                  while (v325 < a7);
                }

                ++v320;
              }

              while (v320 != a8);
            }

            a1 += a7;
          }
        }

        goto LABEL_456;
      case 64:
        if (a16)
        {
          if (a6 >= 1)
          {
            for (i2 = 0; i2 != a6; ++i2)
            {
              if (a7 >= 1)
              {
                v133 = 0;
                v134 = a5;
                v135 = a4;
                v136 = a3;
                do
                {
                  if (a8 < 1)
                  {
                    v138 = 0.0;
                  }

                  else
                  {
                    v137 = 0;
                    v138 = 0.0;
                    v139 = a2;
                    do
                    {
                      v140 = 0;
                      v142 = v139;
                      do
                      {
                        v143 = v136[v140];
                        v141 = *v135;
                        v138 = (((v138 + (*v142 * (*v134 + (v141 * (v143 & 0x3F))))) + (v142[1] * (*v134 + (v141 * ((v143 >> 6) & 0xFFFFFFC3 | (4 * (v136[v140 + 1] & 0xF))))))) + (v142[2] * (*v134 + (v141 * ((v136[v140 + 1] >> 4) & 0xFFFFFFCF | (16 * (v136[v140 + 2] & 3))))))) + (v142[3] * (*v134 + (v141 * (v136[v140 + 2] >> 2))));
                        v142 += 4;
                        v140 += 3;
                      }

                      while (v140 != 48);
                      v136 += 48;
                      ++v135;
                      ++v134;
                      v139 += 64;
                      v137 += 64;
                    }

                    while (v137 < a8);
                  }

                  *a1++ = v138;
                  ++v133;
                }

                while (v133 != a7);
              }

              a2 += a8;
            }
          }
        }

        else if (a6 >= 1)
        {
          for (i3 = 0; i3 != a6; ++i3)
          {
            if (a7 >= 1)
            {
              v285 = a2;
              bzero(a1, 4 * a7);
              a6 = v511;
              a2 = v285;
            }

            if (a8 >= 1)
            {
              v286 = 0;
              v287 = v18;
              v288 = a4;
              v289 = a3;
              do
              {
                v290 = *a2++;
                a9.i32[0] = v290;
                if (a7 >= 1)
                {
                  v291 = 0;
                  a9 = vdupq_lane_s32(*a9.f32, 0);
                  v292 = a1;
                  do
                  {
                    v293 = vld1q_dup_f32(v288);
                    v294 = vld1q_dup_f32(v287);
                    v295 = 16;
                    do
                    {
                      v296 = *v289;
                      v297 = v289[1];
                      v298 = v289[2];
                      v299.i16[0] = v296 & 0x3F;
                      v299.i16[1] = (v296 >> 6) & 0xFFC3 | (4 * (v297 & 0xF));
                      v299.i16[2] = (v297 >> 4) & 0xFFCF | (16 * (v298 & 3));
                      v299.i16[3] = v298 >> 2;
                      *v292 = vmlaq_f32(*v292, vmlaq_f32(v294, vcvtq_f32_u32(vmovl_u16(v299)), v293), a9);
                      ++v292;
                      v289 += 3;
                      --v295;
                    }

                    while (v295);
                    ++v288;
                    ++v287;
                    v291 += 64;
                  }

                  while (v291 < a7);
                }

                ++v286;
              }

              while (v286 != a8);
            }

            a1 += a7;
          }
        }

        goto LABEL_456;
      case 32:
        if (a16)
        {
          if (a6 >= 1)
          {
            for (i4 = 0; i4 != a6; ++i4)
            {
              if (a7 >= 1)
              {
                v74 = 0;
                v75 = a5;
                v76 = a4;
                v77 = a3;
                do
                {
                  if (a8 < 1)
                  {
                    v79 = 0.0;
                  }

                  else
                  {
                    v78 = 0;
                    v79 = 0.0;
                    v80 = a2;
                    do
                    {
                      v81 = 0;
                      v83 = v80;
                      do
                      {
                        v84 = v77[v81];
                        v82 = *v76;
                        v79 = (((v79 + (*v83 * (*v75 + (v82 * (v84 & 0x3F))))) + (v83[1] * (*v75 + (v82 * ((v84 >> 6) & 0xFFFFFFC3 | (4 * (v77[v81 + 1] & 0xF))))))) + (v83[2] * (*v75 + (v82 * ((v77[v81 + 1] >> 4) & 0xFFFFFFCF | (16 * (v77[v81 + 2] & 3))))))) + (v83[3] * (*v75 + (v82 * (v77[v81 + 2] >> 2))));
                        v83 += 4;
                        v81 += 3;
                      }

                      while (v81 != 24);
                      v77 += 24;
                      ++v76;
                      ++v75;
                      v80 += 32;
                      v78 += 32;
                    }

                    while (v78 < a8);
                  }

                  *a1++ = v79;
                  ++v74;
                }

                while (v74 != a7);
              }

              a2 += a8;
            }
          }
        }

        else if (a6 >= 1)
        {
          for (i5 = 0; i5 != a6; ++i5)
          {
            if (a7 >= 1)
            {
              v349 = a2;
              bzero(a1, 4 * a7);
              a6 = v511;
              a2 = v349;
            }

            if (a8 >= 1)
            {
              v350 = 0;
              v351 = v18;
              v352 = a4;
              v353 = a3;
              do
              {
                v354 = *a2++;
                a9.i32[0] = v354;
                if (a7 >= 1)
                {
                  v355 = 0;
                  a9 = vdupq_lane_s32(*a9.f32, 0);
                  v356 = a1;
                  do
                  {
                    v357 = vld1q_dup_f32(v352);
                    v358 = vld1q_dup_f32(v351);
                    v359 = 8;
                    do
                    {
                      v360 = *v353;
                      v361 = v353[1];
                      v362 = v353[2];
                      v363.i16[0] = v360 & 0x3F;
                      v363.i16[1] = (v360 >> 6) & 0xFFC3 | (4 * (v361 & 0xF));
                      v363.i16[2] = (v361 >> 4) & 0xFFCF | (16 * (v362 & 3));
                      v363.i16[3] = v362 >> 2;
                      *v356 = vmlaq_f32(*v356, vmlaq_f32(v358, vcvtq_f32_u32(vmovl_u16(v363)), v357), a9);
                      ++v356;
                      v353 += 3;
                      --v359;
                    }

                    while (v359);
                    ++v352;
                    ++v351;
                    v355 += 32;
                  }

                  while (v355 < a7);
                }

                ++v350;
              }

              while (v350 != a8);
            }

            a1 += a7;
          }
        }

        goto LABEL_456;
    }

    goto LABEL_458;
  }

  if (a15 != 8)
  {
LABEL_457:
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Quantization bits must be 2, 3, 4, 6 or 8.");
    goto LABEL_459;
  }

  switch(a14)
  {
    case 128:
      if (a16)
      {
        if (a6 >= 1)
        {
          v203 = 0;
          v204.i64[0] = 0xFF000000FFLL;
          v204.i64[1] = 0xFF000000FFLL;
          do
          {
            if (a7 >= 1)
            {
              v205 = 0;
              v206 = a5;
              v207 = a4;
              v208 = a3;
              do
              {
                if (a8 < 1)
                {
                  v210 = 0uLL;
                  v212 = 0uLL;
                }

                else
                {
                  v209 = 0;
                  v210 = 0uLL;
                  v211 = a2;
                  v212 = 0uLL;
                  do
                  {
                    v213 = vld1q_dup_f32(v207);
                    v214 = vld1q_dup_f32(v206);
                    v215 = -2;
                    v216 = v211;
                    v217 = v208;
                    do
                    {
                      v218 = v217;
                      v219 = vld1q_dup_f32(v218++);
                      v220 = vld1q_dup_f32(v218);
                      v221 = *v216;
                      v222 = v216[1];
                      v216 += 2;
                      v210 = vaddq_f32(v210, vmulq_f32(v221, vaddq_f32(v214, vmulq_f32(v213, vcvtq_f32_u32(vandq_s8(vshlq_u32(v219, xmmword_25A9CD6E0), v204))))));
                      v212 = vaddq_f32(v212, vmulq_f32(v222, vaddq_f32(v214, vmulq_f32(v213, vcvtq_f32_u32(vandq_s8(vshlq_u32(v220, xmmword_25A9CD6E0), v204))))));
                      v215 += 2;
                      v217 += 2;
                    }

                    while (v215 < 0x1E);
                    v208 += 128;
                    ++v207;
                    ++v206;
                    v211 += 128;
                    v209 += 128;
                  }

                  while (v209 < a8);
                }

                v223 = vaddq_f32(v210, v212);
                *a1++ = vaddv_f32(vadd_f32(*v223.i8, *&vextq_s8(v223, v223, 8uLL)));
                ++v205;
              }

              while (v205 != a7);
            }

            a2 += a8;
            ++v203;
          }

          while (v203 != a6);
        }
      }

      else if (a6 >= 1)
      {
        for (i6 = 0; i6 != a6; ++i6)
        {
          if (a7 >= 1)
          {
            v409 = a1;
            v410 = a1;
            v411 = a2;
            bzero(v409, 4 * a7);
            a6 = v511;
            a2 = v411;
            a1 = v410;
          }

          if (a8 >= 1)
          {
            v412 = 0;
            v413 = v18;
            v414 = a4;
            v415 = a3;
            do
            {
              v416 = *a2++;
              v417 = v416;
              if (a7 >= 1)
              {
                v418 = 0;
                v419 = a1;
                do
                {
                  v420 = *v414;
                  v421 = *v413;
                  v422 = 128;
                  do
                  {
                    v423 = *v415++;
                    *v419 = *v419 + (v417 * (v421 + (v420 * v423)));
                    ++v419;
                    --v422;
                  }

                  while (v422);
                  ++v414;
                  ++v413;
                  v418 += 128;
                }

                while (v418 < a7);
              }

              ++v412;
            }

            while (v412 != a8);
          }

          a1 += a7;
        }
      }

      break;
    case 64:
      if (a16)
      {
        if (a6 >= 1)
        {
          v169 = 0;
          v170.i64[0] = 0xFF000000FFLL;
          v170.i64[1] = 0xFF000000FFLL;
          do
          {
            if (a7 >= 1)
            {
              v171 = 0;
              v172 = a5;
              v173 = a4;
              v174 = a3;
              do
              {
                if (a8 < 1)
                {
                  v176 = 0uLL;
                  v178 = 0uLL;
                }

                else
                {
                  v175 = 0;
                  v176 = 0uLL;
                  v177 = a2;
                  v178 = 0uLL;
                  do
                  {
                    v179 = vld1q_dup_f32(v173);
                    v180 = vld1q_dup_f32(v172);
                    v181 = -2;
                    v182 = v177;
                    v183 = v174;
                    do
                    {
                      v184 = v183;
                      v185 = vld1q_dup_f32(v184++);
                      v186 = vld1q_dup_f32(v184);
                      v187 = *v182;
                      v188 = v182[1];
                      v182 += 2;
                      v176 = vaddq_f32(v176, vmulq_f32(v187, vaddq_f32(v180, vmulq_f32(v179, vcvtq_f32_u32(vandq_s8(vshlq_u32(v185, xmmword_25A9CD6E0), v170))))));
                      v178 = vaddq_f32(v178, vmulq_f32(v188, vaddq_f32(v180, vmulq_f32(v179, vcvtq_f32_u32(vandq_s8(vshlq_u32(v186, xmmword_25A9CD6E0), v170))))));
                      v181 += 2;
                      v183 += 2;
                    }

                    while (v181 < 0xE);
                    v174 += 64;
                    ++v173;
                    ++v172;
                    v177 += 64;
                    v175 += 64;
                  }

                  while (v175 < a8);
                }

                v189 = vaddq_f32(v176, v178);
                *a1++ = vaddv_f32(vadd_f32(*v189.i8, *&vextq_s8(v189, v189, 8uLL)));
                ++v171;
              }

              while (v171 != a7);
            }

            a2 += a8;
            ++v169;
          }

          while (v169 != a6);
        }
      }

      else if (a6 >= 1)
      {
        for (i7 = 0; i7 != a6; ++i7)
        {
          if (a7 >= 1)
          {
            v365 = a1;
            v366 = a1;
            v367 = a2;
            bzero(v365, 4 * a7);
            a6 = v511;
            a2 = v367;
            a1 = v366;
          }

          if (a8 >= 1)
          {
            v368 = 0;
            v369 = v18;
            v370 = a4;
            v371 = a3;
            do
            {
              v372 = *a2++;
              v373 = v372;
              if (a7 >= 1)
              {
                v374 = 0;
                v375 = a1;
                do
                {
                  v376 = *v370;
                  v377 = *v369;
                  v378 = 64;
                  do
                  {
                    v379 = *v371++;
                    *v375 = *v375 + (v373 * (v377 + (v376 * v379)));
                    ++v375;
                    --v378;
                  }

                  while (v378);
                  ++v370;
                  ++v369;
                  v374 += 64;
                }

                while (v374 < a7);
              }

              ++v368;
            }

            while (v368 != a8);
          }

          a1 += a7;
        }
      }

      break;
    case 32:
      if (a16)
      {
        if (a6 >= 1)
        {
          v23 = 0;
          v24.i64[0] = 0xFF000000FFLL;
          v24.i64[1] = 0xFF000000FFLL;
          do
          {
            if (a7 >= 1)
            {
              v25 = 0;
              v26 = a5;
              v27 = a4;
              v28 = a3;
              do
              {
                if (a8 < 1)
                {
                  v30 = 0uLL;
                  v32 = 0uLL;
                }

                else
                {
                  v29 = 0;
                  v30 = 0uLL;
                  v31 = a2;
                  v32 = 0uLL;
                  do
                  {
                    v33 = vld1q_dup_f32(v27);
                    v34 = vld1q_dup_f32(v26);
                    v35 = -2;
                    v36 = v31;
                    v37 = v28;
                    do
                    {
                      v38 = v37;
                      v39 = vld1q_dup_f32(v38++);
                      v40 = vld1q_dup_f32(v38);
                      v41 = *v36;
                      v42 = v36[1];
                      v36 += 2;
                      v30 = vaddq_f32(v30, vmulq_f32(v41, vaddq_f32(v34, vmulq_f32(v33, vcvtq_f32_u32(vandq_s8(vshlq_u32(v39, xmmword_25A9CD6E0), v24))))));
                      v32 = vaddq_f32(v32, vmulq_f32(v42, vaddq_f32(v34, vmulq_f32(v33, vcvtq_f32_u32(vandq_s8(vshlq_u32(v40, xmmword_25A9CD6E0), v24))))));
                      v35 += 2;
                      v37 += 2;
                    }

                    while (v35 < 6);
                    v28 += 32;
                    ++v27;
                    ++v26;
                    v31 += 32;
                    v29 += 32;
                  }

                  while (v29 < a8);
                }

                v43 = vaddq_f32(v30, v32);
                *a1++ = vaddv_f32(vadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)));
                ++v25;
              }

              while (v25 != a7);
            }

            a2 += a8;
            ++v23;
          }

          while (v23 != a6);
        }
      }

      else if (a6 >= 1)
      {
        for (i8 = 0; i8 != a6; ++i8)
        {
          if (a7 >= 1)
          {
            v443 = a1;
            v444 = a1;
            v445 = a2;
            bzero(v443, 4 * a7);
            a6 = v511;
            a2 = v445;
            a1 = v444;
          }

          if (a8 >= 1)
          {
            v446 = 0;
            v447 = v18;
            v448 = a4;
            v449 = a3;
            do
            {
              v450 = *a2++;
              v451 = v450;
              if (a7 >= 1)
              {
                v452 = 0;
                v453 = a1;
                do
                {
                  v454 = *v448;
                  v455 = *v447;
                  v456 = 32;
                  do
                  {
                    v457 = *v449++;
                    *v453 = *v453 + (v451 * (v455 + (v454 * v457)));
                    ++v453;
                    --v456;
                  }

                  while (v456);
                  ++v448;
                  ++v447;
                  v452 += 32;
                }

                while (v452 < a7);
              }

              ++v446;
            }

            while (v446 != a8);
          }

          a1 += a7;
        }
      }

      break;
    default:
      goto LABEL_458;
  }

LABEL_456:
  v494 = *MEMORY[0x277D85DE8];
}

float mlx::core::anonymous namespace::extract_bits<float,3>(unsigned __int8 *a1, float *a2)
{
  *a2 = (*a1 & 7);
  a2[1] = ((*a1 >> 3) & 7);
  a2[2] = ((*a1 >> 6) & 0xFFFFFFFB | (4 * (a1[1] & 1)));
  a2[3] = ((a1[1] >> 1) & 7);
  a2[4] = ((a1[1] >> 4) & 7);
  a2[5] = ((a1[1] >> 7) & 0xFFFFFFF9 | (2 * (a1[2] & 3)));
  a2[6] = ((a1[2] >> 2) & 7);
  result = (a1[2] >> 5);
  a2[7] = result;
  return result;
}

void mlx::core::anonymous namespace::_qmm_dispatch_typed<half>(float16x4_t *a1, unsigned __int16 *a2, unsigned __int8 *a3, unsigned __int16 *a4, __int16 *a5, int a6, int a7, int a8, float32x4_t _Q0, float32x4_t _Q1, float32x4_t _Q2, double a12, float32x4_t a13, float32x4_t _Q5, float32x4_t _Q6, int a16, int a17, char a18)
{
  v21 = a4;
  v826 = *MEMORY[0x277D85DE8];
  v808 = a6;
  if (a17 <= 3)
  {
    if (a17 == 2)
    {
      switch(a16)
      {
        case 128:
          if (a18)
          {
            if (a6 >= 1)
            {
              for (i = 0; i != a6; ++i)
              {
                if (a7 >= 1)
                {
                  v314 = 0;
                  v315 = a5;
                  v316 = a4;
                  v317 = a3;
                  do
                  {
                    if (a8 < 1)
                    {
                      _H0 = 0;
                    }

                    else
                    {
                      v318 = 0;
                      _H0 = 0;
                      v320 = a2;
                      do
                      {
                        v321 = 0;
                        _H1 = *v316;
                        _H2 = *v315;
                        __asm
                        {
                          FCVT            S1, H1
                          FCVT            S2, H2
                        }

                        v326 = v320;
                        do
                        {
                          v327 = v317[v321];
                          _H3 = *v326;
                          __asm
                          {
                            FCVT            S3, H3
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S3 * (_S2 + (_S1 * (v327 & 3))));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S3) = v326[1];
                          __asm
                          {
                            FCVT            S3, H3
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S3 * (_S2 + (_S1 * ((v327 >> 2) & 3))));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S3) = v326[2];
                          __asm
                          {
                            FCVT            S3, H3
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S3 * (_S2 + (_S1 * ((v327 >> 4) & 3))));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S3) = v326[3];
                          __asm
                          {
                            FCVT            S3, H3
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S3 * (_S2 + (_S1 * (v327 >> 6))));
                          __asm { FCVT            H0, S0 }

                          v326 += 4;
                          ++v321;
                        }

                        while (v321 != 32);
                        v317 += 32;
                        ++v316;
                        ++v315;
                        v320 += 128;
                        v318 += 128;
                      }

                      while (v318 < a8);
                    }

                    a1->i16[0] = _H0;
                    a1 = (a1 + 2);
                    ++v314;
                  }

                  while (v314 != a7);
                }

                a2 += a8;
              }
            }
          }

          else if (a6 >= 1)
          {
            for (j = 0; j != a6; ++j)
            {
              if (a7 >= 1)
              {
                v599 = a2;
                bzero(a1, 2 * a7);
                a6 = v808;
                a2 = v599;
              }

              if (a8 >= 1)
              {
                v600 = 0;
                v601 = a5;
                v602 = v21;
                v603 = a3;
                do
                {
                  if (a7 >= 1)
                  {
                    v604 = 0;
                    _Q0.i16[0] = *a2;
                    __asm { FCVT            S0, H0 }

                    _Q0 = vdupq_lane_s32(*_Q0.f32, 0);
                    v605 = a1;
                    do
                    {
                      _Q1.i16[0] = *v602;
                      _Q2.i16[0] = *v601;
                      __asm
                      {
                        FCVT            S1, H1
                        FCVT            S2, H2
                      }

                      _Q1 = vdupq_lane_s32(*_Q1.f32, 0);
                      _Q2 = vdupq_lane_s32(*_Q2.f32, 0);
                      v606 = 32;
                      do
                      {
                        v607 = *v603++;
                        a13.i16[0] = v607;
                        a13.i16[1] = v607 >> 2;
                        a13.i16[2] = v607 >> 4;
                        v608 = vand_s8(*a13.f32, 0x3000300030003);
                        v608.i16[3] = vshr_n_u16(vdup_n_s16(v607), 6uLL).i16[3];
                        a13 = vmlaq_f32(_Q2, vcvtq_f32_u32(vmovl_u16(v608)), _Q1);
                        *v605 = vcvt_f16_f32(vmlaq_f32(vcvtq_f32_f16(*v605), a13, _Q0));
                        ++v605;
                        --v606;
                      }

                      while (v606);
                      ++v602;
                      ++v601;
                      v604 += 128;
                    }

                    while (v604 < a7);
                  }

                  ++a2;
                  ++v600;
                }

                while (v600 != a8);
              }

              a1 = (a1 + 2 * a7);
            }
          }

          goto LABEL_462;
        case 64:
          if (a18)
          {
            if (a6 >= 1)
            {
              for (k = 0; k != a6; ++k)
              {
                if (a7 >= 1)
                {
                  v266 = 0;
                  v267 = a5;
                  v268 = a4;
                  v269 = a3;
                  do
                  {
                    if (a8 < 1)
                    {
                      _H0 = 0;
                    }

                    else
                    {
                      v270 = 0;
                      _H0 = 0;
                      v272 = a2;
                      do
                      {
                        v273 = 0;
                        _H1 = *v268;
                        _H2 = *v267;
                        __asm
                        {
                          FCVT            S1, H1
                          FCVT            S2, H2
                        }

                        v278 = v272;
                        do
                        {
                          v279 = v269[v273];
                          _H3 = *v278;
                          __asm
                          {
                            FCVT            S3, H3
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S3 * (_S2 + (_S1 * (v279 & 3))));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S3) = v278[1];
                          __asm
                          {
                            FCVT            S3, H3
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S3 * (_S2 + (_S1 * ((v279 >> 2) & 3))));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S3) = v278[2];
                          __asm
                          {
                            FCVT            S3, H3
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S3 * (_S2 + (_S1 * ((v279 >> 4) & 3))));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S3) = v278[3];
                          __asm
                          {
                            FCVT            S3, H3
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S3 * (_S2 + (_S1 * (v279 >> 6))));
                          __asm { FCVT            H0, S0 }

                          v278 += 4;
                          ++v273;
                        }

                        while (v273 != 16);
                        v269 += 16;
                        ++v268;
                        ++v267;
                        v272 += 64;
                        v270 += 64;
                      }

                      while (v270 < a8);
                    }

                    a1->i16[0] = _H0;
                    a1 = (a1 + 2);
                    ++v266;
                  }

                  while (v266 != a7);
                }

                a2 += a8;
              }
            }
          }

          else if (a6 >= 1)
          {
            for (m = 0; m != a6; ++m)
            {
              if (a7 >= 1)
              {
                v554 = a2;
                bzero(a1, 2 * a7);
                a6 = v808;
                a2 = v554;
              }

              if (a8 >= 1)
              {
                v555 = 0;
                v556 = a5;
                v557 = v21;
                v558 = a3;
                do
                {
                  if (a7 >= 1)
                  {
                    v559 = 0;
                    _Q0.i16[0] = *a2;
                    __asm { FCVT            S0, H0 }

                    _Q0 = vdupq_lane_s32(*_Q0.f32, 0);
                    v560 = a1;
                    do
                    {
                      _Q1.i16[0] = *v557;
                      _Q2.i16[0] = *v556;
                      __asm
                      {
                        FCVT            S1, H1
                        FCVT            S2, H2
                      }

                      _Q1 = vdupq_lane_s32(*_Q1.f32, 0);
                      _Q2 = vdupq_lane_s32(*_Q2.f32, 0);
                      v561 = 16;
                      do
                      {
                        v562 = *v558++;
                        a13.i16[0] = v562;
                        a13.i16[1] = v562 >> 2;
                        a13.i16[2] = v562 >> 4;
                        v563 = vand_s8(*a13.f32, 0x3000300030003);
                        v563.i16[3] = vshr_n_u16(vdup_n_s16(v562), 6uLL).i16[3];
                        a13 = vmlaq_f32(_Q2, vcvtq_f32_u32(vmovl_u16(v563)), _Q1);
                        *v560 = vcvt_f16_f32(vmlaq_f32(vcvtq_f32_f16(*v560), a13, _Q0));
                        ++v560;
                        --v561;
                      }

                      while (v561);
                      ++v557;
                      ++v556;
                      v559 += 64;
                    }

                    while (v559 < a7);
                  }

                  ++a2;
                  ++v555;
                }

                while (v555 != a8);
              }

              a1 = (a1 + 2 * a7);
            }
          }

          goto LABEL_462;
        case 32:
          if (a18)
          {
            if (a6 >= 1)
            {
              for (n = 0; n != a6; ++n)
              {
                if (a7 >= 1)
                {
                  v144 = 0;
                  v145 = a5;
                  v146 = a4;
                  v147 = a3;
                  do
                  {
                    if (a8 < 1)
                    {
                      _H0 = 0;
                    }

                    else
                    {
                      v148 = 0;
                      _H0 = 0;
                      v150 = a2;
                      do
                      {
                        v151 = 0;
                        _H1 = *v146;
                        _H2 = *v145;
                        __asm
                        {
                          FCVT            S1, H1
                          FCVT            S2, H2
                        }

                        v156 = v150;
                        do
                        {
                          v157 = v147[v151];
                          _H3 = *v156;
                          __asm
                          {
                            FCVT            S3, H3
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S3 * (_S2 + (_S1 * (v157 & 3))));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S3) = v156[1];
                          __asm
                          {
                            FCVT            S3, H3
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S3 * (_S2 + (_S1 * ((v157 >> 2) & 3))));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S3) = v156[2];
                          __asm
                          {
                            FCVT            S3, H3
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S3 * (_S2 + (_S1 * ((v157 >> 4) & 3))));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S3) = v156[3];
                          __asm
                          {
                            FCVT            S3, H3
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S3 * (_S2 + (_S1 * (v157 >> 6))));
                          __asm { FCVT            H0, S0 }

                          v156 += 4;
                          ++v151;
                        }

                        while (v151 != 8);
                        v147 += 8;
                        ++v146;
                        ++v145;
                        v150 += 32;
                        v148 += 32;
                      }

                      while (v148 < a8);
                    }

                    a1->i16[0] = _H0;
                    a1 = (a1 + 2);
                    ++v144;
                  }

                  while (v144 != a7);
                }

                a2 += a8;
              }
            }
          }

          else if (a6 >= 1)
          {
            for (ii = 0; ii != a6; ++ii)
            {
              if (a7 >= 1)
              {
                v610 = a2;
                bzero(a1, 2 * a7);
                a6 = v808;
                a2 = v610;
              }

              if (a8 >= 1)
              {
                v611 = 0;
                v612 = a5;
                v613 = v21;
                v614 = a3;
                do
                {
                  if (a7 >= 1)
                  {
                    v615 = 0;
                    _Q0.i16[0] = *a2;
                    __asm { FCVT            S0, H0 }

                    _Q0 = vdupq_lane_s32(*_Q0.f32, 0);
                    v616 = a1;
                    do
                    {
                      _Q1.i16[0] = *v613;
                      _Q2.i16[0] = *v612;
                      __asm
                      {
                        FCVT            S1, H1
                        FCVT            S2, H2
                      }

                      _Q1 = vdupq_lane_s32(*_Q1.f32, 0);
                      _Q2 = vdupq_lane_s32(*_Q2.f32, 0);
                      v617 = 8;
                      do
                      {
                        v618 = *v614++;
                        a13.i16[0] = v618;
                        a13.i16[1] = v618 >> 2;
                        a13.i16[2] = v618 >> 4;
                        v619 = vand_s8(*a13.f32, 0x3000300030003);
                        v619.i16[3] = vshr_n_u16(vdup_n_s16(v618), 6uLL).i16[3];
                        a13 = vmlaq_f32(_Q2, vcvtq_f32_u32(vmovl_u16(v619)), _Q1);
                        *v616 = vcvt_f16_f32(vmlaq_f32(vcvtq_f32_f16(*v616), a13, _Q0));
                        ++v616;
                        --v617;
                      }

                      while (v617);
                      ++v613;
                      ++v612;
                      v615 += 32;
                    }

                    while (v615 < a7);
                  }

                  ++a2;
                  ++v611;
                }

                while (v611 != a8);
              }

              a1 = (a1 + 2 * a7);
            }
          }

          goto LABEL_462;
      }
    }

    else
    {
      if (a17 != 3)
      {
        goto LABEL_463;
      }

      v807 = a5;
      switch(a16)
      {
        case 128:
          if (a18)
          {
            if (a6 >= 1)
            {
              v408 = 0;
              v795 = a8;
              do
              {
                v801 = v408;
                if (a7 >= 1)
                {
                  v409 = 0;
                  v410 = a5;
                  v411 = v21;
                  v412 = a3;
                  v811 = a2;
                  do
                  {
                    if (a8 < 1)
                    {
                      _H10 = 0;
                    }

                    else
                    {
                      v413 = 0;
                      _H10 = 0;
                      v415 = a2;
                      do
                      {
                        v416 = 0;
                        _H0 = *v411;
                        _H1 = *v410;
                        __asm
                        {
                          FCVT            S8, H0
                          FCVT            S9, H1
                        }

                        do
                        {
                          _H0 = v415[v416];
                          __asm { FCVT            S0, H0 }

                          _H1 = v818;
                          __asm
                          {
                            FCVT            S1, H1
                            FCVT            S2, H10
                          }

                          _S0 = _S2 + (_S0 * (_S9 + (_S8 * _S1)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v415[v416 + 1];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v819;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v415[v416 + 2];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v820;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v415[v416 + 3];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v821;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v415[v416 + 4];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v822;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v415[v416 + 5];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v823;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v415[v416 + 6];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v824;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v415[v416 + 7];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v825;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H10, S0 }

                          v412 += 3;
                          v416 += 8;
                        }

                        while ((v416 * 2) != 256);
                        ++v411;
                        ++v410;
                        v415 += 128;
                        v413 += 128;
                      }

                      while (v413 < a8);
                    }

                    a2 = v811;
                    a1->i16[0] = _H10;
                    a1 = (a1 + 2);
                    ++v409;
                  }

                  while (v409 != a7);
                }

                a2 += v795;
                v408 = v801 + 1;
                v21 = a4;
                a5 = v807;
              }

              while (v801 + 1 != v808);
            }
          }

          else if (a6 >= 1)
          {
            v705 = 0;
            v797 = 2 * a7;
            v803 = a7;
            do
            {
              if (a7 >= 1)
              {
                v706 = a2;
                bzero(a1, v797);
                a2 = v706;
              }

              v813 = v705;
              v816 = a1;
              if (a8 >= 1)
              {
                v707 = 0;
                v708 = a5;
                v709 = v21;
                v710 = a3;
                do
                {
                  if (a7 < 1)
                  {
                    v712 = a2;
                  }

                  else
                  {
                    v711 = 0;
                    v712 = a2;
                    _H0 = *a2;
                    __asm { FCVT            S8, H0 }

                    v715 = v816;
                    do
                    {
                      _H0 = *v709;
                      _H1 = *v708;
                      __asm
                      {
                        FCVT            S9, H0
                        FCVT            S10, H1
                      }

                      v720 = 16;
                      do
                      {
                        _H0 = v818;
                        __asm { FCVT            S0, H0 }

                        _H1 = v715->i16[0];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v715->i16[0] = LOWORD(_S0);
                        LOWORD(_S0) = v819;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v715->i16[1];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v715->i16[1] = LOWORD(_S0);
                        LOWORD(_S0) = v820;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v715->i16[2];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v715->i16[2] = LOWORD(_S0);
                        LOWORD(_S0) = v821;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v715->i16[3];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v715->i16[3] = LOWORD(_S0);
                        LOWORD(_S0) = v822;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v715[1].i16[0];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v715[1].i16[0] = LOWORD(_S0);
                        LOWORD(_S0) = v823;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v715[1].i16[1];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v715[1].i16[1] = LOWORD(_S0);
                        LOWORD(_S0) = v824;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v715[1].i16[2];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v715[1].i16[2] = LOWORD(_S0);
                        LOWORD(_S0) = v825;
                        __asm { FCVT            S0, H0 }

                        v745 = v715 + 2;
                        LOWORD(_S1) = v715[1].i16[3];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v715[1].i16[3] = LOWORD(_S0);
                        v710 += 3;
                        v715 += 2;
                        --v720;
                      }

                      while (v720);
                      ++v709;
                      ++v708;
                      v711 += 128;
                      v715 = v745;
                    }

                    while (v711 < a7);
                  }

                  a2 = v712 + 1;
                  ++v707;
                }

                while (v707 != a8);
              }

              a1 = (v816 + 2 * v803);
              v705 = v813 + 1;
              v21 = a4;
              a5 = v807;
            }

            while (v813 + 1 != v808);
          }

          goto LABEL_462;
        case 64:
          if (a18)
          {
            if (a6 >= 1)
            {
              v361 = 0;
              v794 = a8;
              do
              {
                v800 = v361;
                if (a7 >= 1)
                {
                  v362 = 0;
                  v363 = a5;
                  v364 = v21;
                  v365 = a3;
                  v810 = a2;
                  do
                  {
                    if (a8 < 1)
                    {
                      _H10 = 0;
                    }

                    else
                    {
                      v366 = 0;
                      _H10 = 0;
                      v368 = a2;
                      do
                      {
                        v369 = 0;
                        _H0 = *v364;
                        _H1 = *v363;
                        __asm
                        {
                          FCVT            S8, H0
                          FCVT            S9, H1
                        }

                        do
                        {
                          _H0 = v368[v369];
                          __asm { FCVT            S0, H0 }

                          _H1 = v818;
                          __asm
                          {
                            FCVT            S1, H1
                            FCVT            S2, H10
                          }

                          _S0 = _S2 + (_S0 * (_S9 + (_S8 * _S1)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v368[v369 + 1];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v819;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v368[v369 + 2];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v820;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v368[v369 + 3];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v821;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v368[v369 + 4];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v822;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v368[v369 + 5];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v823;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v368[v369 + 6];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v824;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v368[v369 + 7];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v825;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H10, S0 }

                          v365 += 3;
                          v369 += 8;
                        }

                        while ((v369 * 2) != 128);
                        ++v364;
                        ++v363;
                        v368 += 64;
                        v366 += 64;
                      }

                      while (v366 < a8);
                    }

                    a2 = v810;
                    a1->i16[0] = _H10;
                    a1 = (a1 + 2);
                    ++v362;
                  }

                  while (v362 != a7);
                }

                a2 += v794;
                v361 = v800 + 1;
                v21 = a4;
                a5 = v807;
              }

              while (v800 + 1 != v808);
            }
          }

          else if (a6 >= 1)
          {
            v641 = 0;
            v796 = 2 * a7;
            v802 = a7;
            do
            {
              if (a7 >= 1)
              {
                v642 = a2;
                bzero(a1, v796);
                a2 = v642;
              }

              v812 = v641;
              v815 = a1;
              if (a8 >= 1)
              {
                v643 = 0;
                v644 = a5;
                v645 = v21;
                v646 = a3;
                do
                {
                  if (a7 < 1)
                  {
                    v648 = a2;
                  }

                  else
                  {
                    v647 = 0;
                    v648 = a2;
                    _H0 = *a2;
                    __asm { FCVT            S8, H0 }

                    v651 = v815;
                    do
                    {
                      _H0 = *v645;
                      _H1 = *v644;
                      __asm
                      {
                        FCVT            S9, H0
                        FCVT            S10, H1
                      }

                      v656 = 8;
                      do
                      {
                        _H0 = v818;
                        __asm { FCVT            S0, H0 }

                        _H1 = v651->i16[0];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v651->i16[0] = LOWORD(_S0);
                        LOWORD(_S0) = v819;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v651->i16[1];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v651->i16[1] = LOWORD(_S0);
                        LOWORD(_S0) = v820;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v651->i16[2];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v651->i16[2] = LOWORD(_S0);
                        LOWORD(_S0) = v821;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v651->i16[3];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v651->i16[3] = LOWORD(_S0);
                        LOWORD(_S0) = v822;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v651[1].i16[0];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v651[1].i16[0] = LOWORD(_S0);
                        LOWORD(_S0) = v823;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v651[1].i16[1];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v651[1].i16[1] = LOWORD(_S0);
                        LOWORD(_S0) = v824;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v651[1].i16[2];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v651[1].i16[2] = LOWORD(_S0);
                        LOWORD(_S0) = v825;
                        __asm { FCVT            S0, H0 }

                        v681 = v651 + 2;
                        LOWORD(_S1) = v651[1].i16[3];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v651[1].i16[3] = LOWORD(_S0);
                        v646 += 3;
                        v651 += 2;
                        --v656;
                      }

                      while (v656);
                      ++v645;
                      ++v644;
                      v647 += 64;
                      v651 = v681;
                    }

                    while (v647 < a7);
                  }

                  a2 = v648 + 1;
                  ++v643;
                }

                while (v643 != a8);
              }

              a1 = (v815 + 2 * v802);
              v641 = v812 + 1;
              v21 = a4;
              a5 = v807;
            }

            while (v812 + 1 != v808);
          }

          goto LABEL_462;
        case 32:
          if (a18)
          {
            if (a6 >= 1)
            {
              v49 = 0;
              v793 = a8;
              do
              {
                v799 = v49;
                if (a7 >= 1)
                {
                  v50 = 0;
                  v51 = a5;
                  v52 = v21;
                  v53 = a3;
                  v809 = a2;
                  do
                  {
                    if (a8 < 1)
                    {
                      _H10 = 0;
                    }

                    else
                    {
                      v54 = 0;
                      _H10 = 0;
                      v56 = a2;
                      do
                      {
                        v57 = 0;
                        _H0 = *v52;
                        _H1 = *v51;
                        __asm
                        {
                          FCVT            S8, H0
                          FCVT            S9, H1
                        }

                        do
                        {
                          _H0 = v56[v57];
                          __asm { FCVT            S0, H0 }

                          _H1 = v818;
                          __asm
                          {
                            FCVT            S1, H1
                            FCVT            S2, H10
                          }

                          _S0 = _S2 + (_S0 * (_S9 + (_S8 * _S1)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v56[v57 + 1];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v819;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v56[v57 + 2];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v820;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v56[v57 + 3];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v821;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v56[v57 + 4];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v822;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v56[v57 + 5];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v823;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v56[v57 + 6];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v824;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H0, S0 }

                          LOWORD(_S1) = v56[v57 + 7];
                          __asm { FCVT            S1, H1 }

                          LOWORD(_S2) = v825;
                          __asm
                          {
                            FCVT            S2, H2
                            FCVT            S0, H0
                          }

                          _S0 = _S0 + (_S1 * (_S9 + (_S8 * _S2)));
                          __asm { FCVT            H10, S0 }

                          v53 += 3;
                          v57 += 8;
                        }

                        while ((v57 * 2) != 64);
                        ++v52;
                        ++v51;
                        v56 += 32;
                        v54 += 32;
                      }

                      while (v54 < a8);
                    }

                    a2 = v809;
                    a1->i16[0] = _H10;
                    a1 = (a1 + 2);
                    ++v50;
                  }

                  while (v50 != a7);
                }

                a2 += v793;
                v49 = v799 + 1;
                v21 = a4;
                a5 = v807;
              }

              while (v799 + 1 != v808);
            }
          }

          else if (a6 >= 1)
          {
            v748 = 0;
            v798 = 2 * a7;
            v804 = a7;
            do
            {
              if (a7 >= 1)
              {
                v749 = a2;
                bzero(a1, v798);
                a2 = v749;
              }

              v814 = v748;
              v817 = a1;
              if (a8 >= 1)
              {
                v750 = 0;
                v751 = a5;
                v752 = v21;
                v753 = a3;
                do
                {
                  if (a7 < 1)
                  {
                    v755 = a2;
                  }

                  else
                  {
                    v754 = 0;
                    v755 = a2;
                    _H0 = *a2;
                    __asm { FCVT            S8, H0 }

                    v758 = v817;
                    do
                    {
                      _H0 = *v752;
                      _H1 = *v751;
                      __asm
                      {
                        FCVT            S9, H0
                        FCVT            S10, H1
                      }

                      v763 = 4;
                      do
                      {
                        _H0 = v818;
                        __asm { FCVT            S0, H0 }

                        _H1 = v758->i16[0];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v758->i16[0] = LOWORD(_S0);
                        LOWORD(_S0) = v819;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v758->i16[1];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v758->i16[1] = LOWORD(_S0);
                        LOWORD(_S0) = v820;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v758->i16[2];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v758->i16[2] = LOWORD(_S0);
                        LOWORD(_S0) = v821;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v758->i16[3];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v758->i16[3] = LOWORD(_S0);
                        LOWORD(_S0) = v822;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v758[1].i16[0];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v758[1].i16[0] = LOWORD(_S0);
                        LOWORD(_S0) = v823;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v758[1].i16[1];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v758[1].i16[1] = LOWORD(_S0);
                        LOWORD(_S0) = v824;
                        __asm { FCVT            S0, H0 }

                        LOWORD(_S1) = v758[1].i16[2];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v758[1].i16[2] = LOWORD(_S0);
                        LOWORD(_S0) = v825;
                        __asm { FCVT            S0, H0 }

                        v788 = v758 + 2;
                        LOWORD(_S1) = v758[1].i16[3];
                        __asm { FCVT            S1, H1 }

                        _S0 = _S1 + (_S8 * (_S10 + (_S9 * _S0)));
                        __asm { FCVT            H0, S0 }

                        v758[1].i16[3] = LOWORD(_S0);
                        v753 += 3;
                        v758 += 2;
                        --v763;
                      }

                      while (v763);
                      ++v752;
                      ++v751;
                      v754 += 32;
                      v758 = v788;
                    }

                    while (v754 < a7);
                  }

                  a2 = v755 + 1;
                  ++v750;
                }

                while (v750 != a8);
              }

              a1 = (v817 + 2 * v804);
              v748 = v814 + 1;
              v21 = a4;
              a5 = v807;
            }

            while (v814 + 1 != v808);
          }

          goto LABEL_462;
      }
    }

LABEL_464:
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Quantization group size must be 32, 64 or 128.");
LABEL_465:
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  if (a17 == 4)
  {
    switch(a16)
    {
      case 128:
        if (a18)
        {
          if (a6 >= 1)
          {
            v188 = 0;
            v189.i64[0] = 0xF0000000FLL;
            v189.i64[1] = 0xF0000000FLL;
            do
            {
              if (a7 >= 1)
              {
                v190 = 0;
                v191 = a5;
                v192 = a4;
                v193 = a3;
                do
                {
                  if (a8 < 1)
                  {
                    v195 = 0uLL;
                    v197 = 0uLL;
                  }

                  else
                  {
                    v194 = 0;
                    v195 = 0uLL;
                    v196 = a2;
                    v197 = 0uLL;
                    do
                    {
                      v198 = 0;
                      _H5 = *v192;
                      _Q6.i16[0] = *v191;
                      __asm
                      {
                        FCVT            S5, H5
                        FCVT            S6, H6
                      }

                      _Q6 = vdupq_lane_s32(*_Q6.f32, 0);
                      do
                      {
                        v201 = &v193[4 * v198];
                        v202 = vld1q_dup_f32(v201);
                        v203 = *&v196[8 * v198];
                        v197 = vaddq_f32(v197, vmulq_f32(vaddq_f32(_Q6, vmulq_n_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v202, xmmword_25A9CD6F0), v189)), _S5)), vcvt_hight_f32_f16(v203)));
                        v195 = vaddq_f32(v195, vmulq_f32(vaddq_f32(_Q6, vmulq_n_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v202, xmmword_25A9CD700), v189)), _S5)), vcvtq_f32_f16(*v203.i8)));
                        ++v198;
                      }

                      while (v198 != 16);
                      v193 += 64;
                      ++v192;
                      ++v191;
                      v196 += 128;
                      v194 += 128;
                    }

                    while (v194 < a8);
                  }

                  _Q3 = vaddq_f32(v195, v197);
                  *_Q3.i32 = vaddv_f32(vadd_f32(*_Q3.i8, *&vextq_s8(_Q3, _Q3, 8uLL)));
                  __asm { FCVT            H3, S3 }

                  a1->i16[0] = _Q3.i16[0];
                  a1 = (a1 + 2);
                  ++v190;
                }

                while (v190 != a7);
              }

              a2 += a8;
              ++v188;
            }

            while (v188 != a6);
          }
        }

        else if (a6 >= 1)
        {
          for (jj = 0; jj != a6; ++jj)
          {
            if (a7 >= 1)
            {
              v480 = a1;
              v481 = a1;
              v482 = a2;
              bzero(v480, 2 * a7);
              a6 = v808;
              a2 = v482;
              a1 = v481;
            }

            if (a8 >= 1)
            {
              v483 = 0;
              v484 = a5;
              v485 = v21;
              v486 = a3;
              do
              {
                if (a7 >= 1)
                {
                  v487 = 0;
                  _H0 = *a2;
                  __asm { FCVT            S0, H0 }

                  v490 = a1;
                  do
                  {
                    _H1 = *v485;
                    _H2 = *v484;
                    __asm
                    {
                      FCVT            S1, H1
                      FCVT            S2, H2
                    }

                    v495 = 64;
                    do
                    {
                      v496 = *v486++;
                      _H4 = v490->i16[0];
                      __asm { FCVT            S4, H4 }

                      _S3 = _S4 + (_S0 * (_S2 + (_S1 * (v496 & 0xF))));
                      __asm { FCVT            H3, S3 }

                      v490->i16[0] = LOWORD(_S3);
                      v500 = (v490 + 4);
                      LOWORD(_S4) = v490->i16[1];
                      __asm { FCVT            S4, H4 }

                      _S3 = _S4 + (_S0 * (_S2 + (_S1 * (v496 >> 4))));
                      __asm { FCVT            H3, S3 }

                      v490->i16[1] = LOWORD(_S3);
                      v490 = (v490 + 4);
                      --v495;
                    }

                    while (v495);
                    ++v485;
                    ++v484;
                    v487 += 128;
                    v490 = v500;
                  }

                  while (v487 < a7);
                }

                ++a2;
                ++v483;
              }

              while (v483 != a8);
            }

            a1 = (a1 + 2 * a7);
          }
        }

        goto LABEL_462;
      case 64:
        if (a18)
        {
          if (a6 >= 1)
          {
            v171 = 0;
            v172.i64[0] = 0xF0000000FLL;
            v172.i64[1] = 0xF0000000FLL;
            do
            {
              if (a7 >= 1)
              {
                v173 = 0;
                v174 = a5;
                v175 = a4;
                v176 = a3;
                do
                {
                  if (a8 < 1)
                  {
                    v178 = 0uLL;
                    v180 = 0uLL;
                  }

                  else
                  {
                    v177 = 0;
                    v178 = 0uLL;
                    v179 = a2;
                    v180 = 0uLL;
                    do
                    {
                      v181 = 0;
                      _H5 = *v175;
                      _Q6.i16[0] = *v174;
                      __asm
                      {
                        FCVT            S5, H5
                        FCVT            S6, H6
                      }

                      _Q6 = vdupq_lane_s32(*_Q6.f32, 0);
                      do
                      {
                        v184 = &v176[4 * v181];
                        v185 = vld1q_dup_f32(v184);
                        v186 = *&v179[8 * v181];
                        v180 = vaddq_f32(v180, vmulq_f32(vaddq_f32(_Q6, vmulq_n_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v185, xmmword_25A9CD6F0), v172)), _S5)), vcvt_hight_f32_f16(v186)));
                        v178 = vaddq_f32(v178, vmulq_f32(vaddq_f32(_Q6, vmulq_n_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v185, xmmword_25A9CD700), v172)), _S5)), vcvtq_f32_f16(*v186.i8)));
                        ++v181;
                      }

                      while (v181 != 8);
                      v176 += 32;
                      ++v175;
                      ++v174;
                      v179 += 64;
                      v177 += 64;
                    }

                    while (v177 < a8);
                  }

                  _Q3 = vaddq_f32(v178, v180);
                  *_Q3.i32 = vaddv_f32(vadd_f32(*_Q3.i8, *&vextq_s8(_Q3, _Q3, 8uLL)));
                  __asm { FCVT            H3, S3 }

                  a1->i16[0] = _Q3.i16[0];
                  a1 = (a1 + 2);
                  ++v173;
                }

                while (v173 != a7);
              }

              a2 += a8;
              ++v171;
            }

            while (v171 != a6);
          }
        }

        else if (a6 >= 1)
        {
          for (kk = 0; kk != a6; ++kk)
          {
            if (a7 >= 1)
            {
              v456 = a1;
              v457 = a1;
              v458 = a2;
              bzero(v456, 2 * a7);
              a6 = v808;
              a2 = v458;
              a1 = v457;
            }

            if (a8 >= 1)
            {
              v459 = 0;
              v460 = a5;
              v461 = v21;
              v462 = a3;
              do
              {
                if (a7 >= 1)
                {
                  v463 = 0;
                  _H0 = *a2;
                  __asm { FCVT            S0, H0 }

                  v466 = a1;
                  do
                  {
                    _H1 = *v461;
                    _H2 = *v460;
                    __asm
                    {
                      FCVT            S1, H1
                      FCVT            S2, H2
                    }

                    v471 = 32;
                    do
                    {
                      v472 = *v462++;
                      _H4 = v466->i16[0];
                      __asm { FCVT            S4, H4 }

                      _S3 = _S4 + (_S0 * (_S2 + (_S1 * (v472 & 0xF))));
                      __asm { FCVT            H3, S3 }

                      v466->i16[0] = LOWORD(_S3);
                      v476 = (v466 + 4);
                      LOWORD(_S4) = v466->i16[1];
                      __asm { FCVT            S4, H4 }

                      _S3 = _S4 + (_S0 * (_S2 + (_S1 * (v472 >> 4))));
                      __asm { FCVT            H3, S3 }

                      v466->i16[1] = LOWORD(_S3);
                      v466 = (v466 + 4);
                      --v471;
                    }

                    while (v471);
                    ++v461;
                    ++v460;
                    v463 += 64;
                    v466 = v476;
                  }

                  while (v463 < a7);
                }

                ++a2;
                ++v459;
              }

              while (v459 != a8);
            }

            a1 = (a1 + 2 * a7);
          }
        }

        goto LABEL_462;
      case 32:
        if (a18)
        {
          if (a6 >= 1)
          {
            v96 = 0;
            v97.i64[0] = 0xF0000000FLL;
            v97.i64[1] = 0xF0000000FLL;
            do
            {
              if (a7 >= 1)
              {
                v98 = 0;
                v99 = a5;
                v100 = a4;
                v101 = a3;
                do
                {
                  if (a8 < 1)
                  {
                    v103 = 0uLL;
                    v105 = 0uLL;
                  }

                  else
                  {
                    v102 = 0;
                    v103 = 0uLL;
                    v104 = a2;
                    v105 = 0uLL;
                    do
                    {
                      v106 = 0;
                      _H5 = *v100;
                      _Q6.i16[0] = *v99;
                      __asm
                      {
                        FCVT            S5, H5
                        FCVT            S6, H6
                      }

                      _Q6 = vdupq_lane_s32(*_Q6.f32, 0);
                      do
                      {
                        v109 = &v101[4 * v106];
                        v110 = vld1q_dup_f32(v109);
                        v111 = *&v104[8 * v106];
                        v105 = vaddq_f32(v105, vmulq_f32(vaddq_f32(_Q6, vmulq_n_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v110, xmmword_25A9CD6F0), v97)), _S5)), vcvt_hight_f32_f16(v111)));
                        v103 = vaddq_f32(v103, vmulq_f32(vaddq_f32(_Q6, vmulq_n_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v110, xmmword_25A9CD700), v97)), _S5)), vcvtq_f32_f16(*v111.i8)));
                        ++v106;
                      }

                      while (v106 != 4);
                      v101 += 16;
                      ++v100;
                      ++v99;
                      v104 += 32;
                      v102 += 32;
                    }

                    while (v102 < a8);
                  }

                  _Q3 = vaddq_f32(v103, v105);
                  *_Q3.i32 = vaddv_f32(vadd_f32(*_Q3.i8, *&vextq_s8(_Q3, _Q3, 8uLL)));
                  __asm { FCVT            H3, S3 }

                  a1->i16[0] = _Q3.i16[0];
                  a1 = (a1 + 2);
                  ++v98;
                }

                while (v98 != a7);
              }

              a2 += a8;
              ++v96;
            }

            while (v96 != a6);
          }
        }

        else if (a6 >= 1)
        {
          for (mm = 0; mm != a6; ++mm)
          {
            if (a7 >= 1)
            {
              v517 = a1;
              v518 = a1;
              v519 = a2;
              bzero(v517, 2 * a7);
              a6 = v808;
              a2 = v519;
              a1 = v518;
            }

            if (a8 >= 1)
            {
              v520 = 0;
              v521 = a5;
              v522 = v21;
              v523 = a3;
              do
              {
                if (a7 >= 1)
                {
                  v524 = 0;
                  _H0 = *a2;
                  __asm { FCVT            S0, H0 }

                  v527 = a1;
                  do
                  {
                    _H1 = *v522;
                    _H2 = *v521;
                    __asm
                    {
                      FCVT            S1, H1
                      FCVT            S2, H2
                    }

                    v532 = 16;
                    do
                    {
                      v533 = *v523++;
                      _H4 = v527->i16[0];
                      __asm { FCVT            S4, H4 }

                      _S3 = _S4 + (_S0 * (_S2 + (_S1 * (v533 & 0xF))));
                      __asm { FCVT            H3, S3 }

                      v527->i16[0] = LOWORD(_S3);
                      v537 = (v527 + 4);
                      LOWORD(_S4) = v527->i16[1];
                      __asm { FCVT            S4, H4 }

                      _S3 = _S4 + (_S0 * (_S2 + (_S1 * (v533 >> 4))));
                      __asm { FCVT            H3, S3 }

                      v527->i16[1] = LOWORD(_S3);
                      v527 = (v527 + 4);
                      --v532;
                    }

                    while (v532);
                    ++v522;
                    ++v521;
                    v524 += 32;
                    v527 = v537;
                  }

                  while (v524 < a7);
                }

                ++a2;
                ++v520;
              }

              while (v520 != a8);
            }

            a1 = (a1 + 2 * a7);
          }
        }

        goto LABEL_462;
    }

    goto LABEL_464;
  }

  if (a17 == 6)
  {
    switch(a16)
    {
      case 128:
        if (a18)
        {
          if (a6 >= 1)
          {
            for (nn = 0; nn != a6; ++nn)
            {
              if (a7 >= 1)
              {
                v236 = 0;
                v237 = a5;
                v238 = v21;
                v239 = a3;
                do
                {
                  if (a8 < 1)
                  {
                    _H0 = 0;
                  }

                  else
                  {
                    v240 = 0;
                    _H0 = 0;
                    v242 = a2;
                    do
                    {
                      v243 = 0;
                      _H1 = *v238;
                      _H2 = *v237;
                      __asm
                      {
                        FCVT            S1, H1
                        FCVT            S2, H2
                      }

                      v248 = v242;
                      do
                      {
                        v249 = v239[v243];
                        v250 = v239[v243 + 1];
                        v251 = v239[v243 + 2];
                        _H3 = *v248;
                        __asm
                        {
                          FCVT            S3, H3
                          FCVT            S0, H0
                        }

                        _S0 = _S0 + (_S3 * (_S2 + (_S1 * (v249 & 0x3F))));
                        __asm { FCVT            H0, S0 }

                        LOWORD(_S3) = v248[1];
                        __asm
                        {
                          FCVT            S3, H3
                          FCVT            S0, H0
                        }

                        _S0 = _S0 + (_S3 * (_S2 + (_S1 * ((v249 >> 6) & 0xFFFFFFC3 | (4 * (v250 & 0xF))))));
                        __asm { FCVT            H0, S0 }

                        LOWORD(_S3) = v248[2];
                        __asm
                        {
                          FCVT            S3, H3
                          FCVT            S0, H0
                        }

                        _S0 = _S0 + (_S3 * (_S2 + (_S1 * ((v250 >> 4) & 0xFFFFFFCF | (16 * (v251 & 3))))));
                        __asm { FCVT            H0, S0 }

                        LOWORD(_S3) = v248[3];
                        __asm
                        {
                          FCVT            S3, H3
                          FCVT            S0, H0
                        }

                        _S0 = _S0 + (_S3 * (_S2 + (_S1 * (v251 >> 2))));
                        __asm { FCVT            H0, S0 }

                        v248 += 4;
                        v243 += 3;
                      }

                      while (v243 != 96);
                      v239 += 96;
                      ++v238;
                      ++v237;
                      v242 += 128;
                      v240 += 128;
                    }

                    while (v240 < a8);
                  }

                  a1->i16[0] = _H0;
                  a1 = (a1 + 2);
                  ++v236;
                }

                while (v236 != a7);
              }

              a2 += a8;
            }
          }
        }

        else if (a6 >= 1)
        {
          for (i1 = 0; i1 != a6; ++i1)
          {
            if (a7 >= 1)
            {
              v541 = a2;
              bzero(a1, 2 * a7);
              a6 = v808;
              a2 = v541;
            }

            if (a8 >= 1)
            {
              v542 = 0;
              v543 = a5;
              v544 = v21;
              v545 = a3;
              do
              {
                if (a7 >= 1)
                {
                  v546 = 0;
                  _Q0.i16[0] = *a2;
                  __asm { FCVT            S0, H0 }

                  _Q0 = vdupq_lane_s32(*_Q0.f32, 0);
                  v547 = a1;
                  do
                  {
                    _Q1.i16[0] = *v544;
                    _Q2.i16[0] = *v543;
                    __asm
                    {
                      FCVT            S1, H1
                      FCVT            S2, H2
                    }

                    _Q1 = vdupq_lane_s32(*_Q1.f32, 0);
                    _Q2 = vdupq_lane_s32(*_Q2.f32, 0);
                    v548 = 32;
                    do
                    {
                      v549 = *v545;
                      v550 = v545[1];
                      v551 = v545[2];
                      v552.i16[0] = v549 & 0x3F;
                      v552.i16[1] = (v549 >> 6) & 0xFFC3 | (4 * (v550 & 0xF));
                      v552.i16[2] = (v550 >> 4) & 0xFFCF | (16 * (v551 & 3));
                      v552.i16[3] = v551 >> 2;
                      *v547 = vcvt_f16_f32(vmlaq_f32(vcvtq_f32_f16(*v547), vmlaq_f32(_Q2, vcvtq_f32_u32(vmovl_u16(v552)), _Q1), _Q0));
                      ++v547;
                      v545 += 3;
                      --v548;
                    }

                    while (v548);
                    ++v544;
                    ++v543;
                    v546 += 128;
                  }

                  while (v546 < a7);
                }

                ++a2;
                ++v542;
              }

              while (v542 != a8);
            }

            a1 = (a1 + 2 * a7);
          }
        }

        goto LABEL_462;
      case 64:
        if (a18)
        {
          if (a6 >= 1)
          {
            for (i2 = 0; i2 != a6; ++i2)
            {
              if (a7 >= 1)
              {
                v206 = 0;
                v207 = a5;
                v208 = v21;
                v209 = a3;
                do
                {
                  if (a8 < 1)
                  {
                    _H0 = 0;
                  }

                  else
                  {
                    v210 = 0;
                    _H0 = 0;
                    v212 = a2;
                    do
                    {
                      v213 = 0;
                      _H1 = *v208;
                      _H2 = *v207;
                      __asm
                      {
                        FCVT            S1, H1
                        FCVT            S2, H2
                      }

                      v218 = v212;
                      do
                      {
                        v219 = v209[v213];
                        v220 = v209[v213 + 1];
                        v221 = v209[v213 + 2];
                        _H3 = *v218;
                        __asm
                        {
                          FCVT            S3, H3
                          FCVT            S0, H0
                        }

                        _S0 = _S0 + (_S3 * (_S2 + (_S1 * (v219 & 0x3F))));
                        __asm { FCVT            H0, S0 }

                        LOWORD(_S3) = v218[1];
                        __asm
                        {
                          FCVT            S3, H3
                          FCVT            S0, H0
                        }

                        _S0 = _S0 + (_S3 * (_S2 + (_S1 * ((v219 >> 6) & 0xFFFFFFC3 | (4 * (v220 & 0xF))))));
                        __asm { FCVT            H0, S0 }

                        LOWORD(_S3) = v218[2];
                        __asm
                        {
                          FCVT            S3, H3
                          FCVT            S0, H0
                        }

                        _S0 = _S0 + (_S3 * (_S2 + (_S1 * ((v220 >> 4) & 0xFFFFFFCF | (16 * (v221 & 3))))));
                        __asm { FCVT            H0, S0 }

                        LOWORD(_S3) = v218[3];
                        __asm
                        {
                          FCVT            S3, H3
                          FCVT            S0, H0
                        }

                        _S0 = _S0 + (_S3 * (_S2 + (_S1 * (v221 >> 2))));
                        __asm { FCVT            H0, S0 }

                        v218 += 4;
                        v213 += 3;
                      }

                      while (v213 != 48);
                      v209 += 48;
                      ++v208;
                      ++v207;
                      v212 += 64;
                      v210 += 64;
                    }

                    while (v210 < a8);
                  }

                  a1->i16[0] = _H0;
                  a1 = (a1 + 2);
                  ++v206;
                }

                while (v206 != a7);
              }

              a2 += a8;
            }
          }
        }

        else if (a6 >= 1)
        {
          for (i3 = 0; i3 != a6; ++i3)
          {
            if (a7 >= 1)
            {
              v504 = a2;
              bzero(a1, 2 * a7);
              a6 = v808;
              a2 = v504;
            }

            if (a8 >= 1)
            {
              v505 = 0;
              v506 = a5;
              v507 = v21;
              v508 = a3;
              do
              {
                if (a7 >= 1)
                {
                  v509 = 0;
                  _Q0.i16[0] = *a2;
                  __asm { FCVT            S0, H0 }

                  _Q0 = vdupq_lane_s32(*_Q0.f32, 0);
                  v510 = a1;
                  do
                  {
                    _Q1.i16[0] = *v507;
                    _Q2.i16[0] = *v506;
                    __asm
                    {
                      FCVT            S1, H1
                      FCVT            S2, H2
                    }

                    _Q1 = vdupq_lane_s32(*_Q1.f32, 0);
                    _Q2 = vdupq_lane_s32(*_Q2.f32, 0);
                    v511 = 16;
                    do
                    {
                      v512 = *v508;
                      v513 = v508[1];
                      v514 = v508[2];
                      v515.i16[0] = v512 & 0x3F;
                      v515.i16[1] = (v512 >> 6) & 0xFFC3 | (4 * (v513 & 0xF));
                      v515.i16[2] = (v513 >> 4) & 0xFFCF | (16 * (v514 & 3));
                      v515.i16[3] = v514 >> 2;
                      *v510 = vcvt_f16_f32(vmlaq_f32(vcvtq_f32_f16(*v510), vmlaq_f32(_Q2, vcvtq_f32_u32(vmovl_u16(v515)), _Q1), _Q0));
                      ++v510;
                      v508 += 3;
                      --v511;
                    }

                    while (v511);
                    ++v507;
                    ++v506;
                    v509 += 64;
                  }

                  while (v509 < a7);
                }

                ++a2;
                ++v505;
              }

              while (v505 != a8);
            }

            a1 = (a1 + 2 * a7);
          }
        }

        goto LABEL_462;
      case 32:
        if (a18)
        {
          if (a6 >= 1)
          {
            for (i4 = 0; i4 != a6; ++i4)
            {
              if (a7 >= 1)
              {
                v114 = 0;
                v115 = a5;
                v116 = v21;
                v117 = a3;
                do
                {
                  if (a8 < 1)
                  {
                    _H0 = 0;
                  }

                  else
                  {
                    v118 = 0;
                    _H0 = 0;
                    v120 = a2;
                    do
                    {
                      v121 = 0;
                      _H1 = *v116;
                      _H2 = *v115;
                      __asm
                      {
                        FCVT            S1, H1
                        FCVT            S2, H2
                      }

                      v126 = v120;
                      do
                      {
                        v127 = v117[v121];
                        v128 = v117[v121 + 1];
                        v129 = v117[v121 + 2];
                        _H3 = *v126;
                        __asm
                        {
                          FCVT            S3, H3
                          FCVT            S0, H0
                        }

                        _S0 = _S0 + (_S3 * (_S2 + (_S1 * (v127 & 0x3F))));
                        __asm { FCVT            H0, S0 }

                        LOWORD(_S3) = v126[1];
                        __asm
                        {
                          FCVT            S3, H3
                          FCVT            S0, H0
                        }

                        _S0 = _S0 + (_S3 * (_S2 + (_S1 * ((v127 >> 6) & 0xFFFFFFC3 | (4 * (v128 & 0xF))))));
                        __asm { FCVT            H0, S0 }

                        LOWORD(_S3) = v126[2];
                        __asm
                        {
                          FCVT            S3, H3
                          FCVT            S0, H0
                        }

                        _S0 = _S0 + (_S3 * (_S2 + (_S1 * ((v128 >> 4) & 0xFFFFFFCF | (16 * (v129 & 3))))));
                        __asm { FCVT            H0, S0 }

                        LOWORD(_S3) = v126[3];
                        __asm
                        {
                          FCVT            S3, H3
                          FCVT            S0, H0
                        }

                        _S0 = _S0 + (_S3 * (_S2 + (_S1 * (v129 >> 2))));
                        __asm { FCVT            H0, S0 }

                        v126 += 4;
                        v121 += 3;
                      }

                      while (v121 != 24);
                      v117 += 24;
                      ++v116;
                      ++v115;
                      v120 += 32;
                      v118 += 32;
                    }

                    while (v118 < a8);
                  }

                  a1->i16[0] = _H0;
                  a1 = (a1 + 2);
                  ++v114;
                }

                while (v114 != a7);
              }

              a2 += a8;
            }
          }
        }

        else if (a6 >= 1)
        {
          for (i5 = 0; i5 != a6; ++i5)
          {
            if (a7 >= 1)
            {
              v565 = a2;
              bzero(a1, 2 * a7);
              a6 = v808;
              a2 = v565;
            }

            if (a8 >= 1)
            {
              v566 = 0;
              v567 = a5;
              v568 = v21;
              v569 = a3;
              do
              {
                if (a7 >= 1)
                {
                  v570 = 0;
                  _Q0.i16[0] = *a2;
                  __asm { FCVT            S0, H0 }

                  _Q0 = vdupq_lane_s32(*_Q0.f32, 0);
                  v571 = a1;
                  do
                  {
                    _Q1.i16[0] = *v568;
                    _Q2.i16[0] = *v567;
                    __asm
                    {
                      FCVT            S1, H1
                      FCVT            S2, H2
                    }

                    _Q1 = vdupq_lane_s32(*_Q1.f32, 0);
                    _Q2 = vdupq_lane_s32(*_Q2.f32, 0);
                    v572 = 8;
                    do
                    {
                      v573 = *v569;
                      v574 = v569[1];
                      v575 = v569[2];
                      v576.i16[0] = v573 & 0x3F;
                      v576.i16[1] = (v573 >> 6) & 0xFFC3 | (4 * (v574 & 0xF));
                      v576.i16[2] = (v574 >> 4) & 0xFFCF | (16 * (v575 & 3));
                      v576.i16[3] = v575 >> 2;
                      *v571 = vcvt_f16_f32(vmlaq_f32(vcvtq_f32_f16(*v571), vmlaq_f32(_Q2, vcvtq_f32_u32(vmovl_u16(v576)), _Q1), _Q0));
                      ++v571;
                      v569 += 3;
                      --v572;
                    }

                    while (v572);
                    ++v568;
                    ++v567;
                    v570 += 32;
                  }

                  while (v570 < a7);
                }

                ++a2;
                ++v566;
              }

              while (v566 != a8);
            }

            a1 = (a1 + 2 * a7);
          }
        }

        goto LABEL_462;
    }

    goto LABEL_464;
  }

  if (a17 != 8)
  {
LABEL_463:
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Quantization bits must be 2, 3, 4, 6 or 8.");
    goto LABEL_465;
  }

  switch(a16)
  {
    case 128:
      if (a18)
      {
        if (a6 >= 1)
        {
          v341 = 0;
          v342.i64[0] = 0xFF000000FFLL;
          v342.i64[1] = 0xFF000000FFLL;
          do
          {
            if (a7 >= 1)
            {
              v343 = 0;
              v344 = a5;
              v345 = a4;
              v346 = a3;
              do
              {
                if (a8 < 1)
                {
                  v348 = 0uLL;
                  v350 = 0uLL;
                }

                else
                {
                  v347 = 0;
                  v348 = 0uLL;
                  v349 = a2;
                  v350 = 0uLL;
                  do
                  {
                    _H4 = *v345;
                    _Q5.i16[0] = *v344;
                    __asm
                    {
                      FCVT            S4, H4
                      FCVT            S5, H5
                    }

                    _Q5 = vdupq_lane_s32(*_Q5.f32, 0);
                    v353 = -2;
                    v354 = v349;
                    v355 = v346;
                    do
                    {
                      v356 = v355;
                      v357 = vld1q_dup_f32(v356++);
                      v358 = vld1q_dup_f32(v356);
                      v359 = *v354++;
                      v348 = vaddq_f32(v348, vmulq_f32(vaddq_f32(_Q5, vmulq_n_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v357, xmmword_25A9CD6E0), v342)), _S4)), vcvtq_f32_f16(*v359.i8)));
                      v350 = vaddq_f32(v350, vmulq_f32(vaddq_f32(_Q5, vmulq_n_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v358, xmmword_25A9CD6E0), v342)), _S4)), vcvt_hight_f32_f16(v359)));
                      v353 += 2;
                      v355 += 2;
                    }

                    while (v353 < 0x1E);
                    v346 += 128;
                    ++v345;
                    ++v344;
                    v349 += 128;
                    v347 += 128;
                  }

                  while (v347 < a8);
                }

                _Q2 = vaddq_f32(v348, v350);
                *_Q2.i32 = vaddv_f32(vadd_f32(*_Q2.i8, *&vextq_s8(_Q2, _Q2, 8uLL)));
                __asm { FCVT            H2, S2 }

                a1->i16[0] = _Q2.i16[0];
                a1 = (a1 + 2);
                ++v343;
              }

              while (v343 != a7);
            }

            a2 += a8;
            ++v341;
          }

          while (v341 != a6);
        }
      }

      else if (a6 >= 1)
      {
        for (i6 = 0; i6 != a6; ++i6)
        {
          if (a7 >= 1)
          {
            v621 = a1;
            v622 = a1;
            v623 = a2;
            bzero(v621, 2 * a7);
            a6 = v808;
            a2 = v623;
            a1 = v622;
          }

          if (a8 >= 1)
          {
            v624 = 0;
            v625 = a5;
            v626 = v21;
            v627 = a3;
            do
            {
              if (a7 >= 1)
              {
                v628 = 0;
                _H0 = *a2;
                __asm { FCVT            S0, H0 }

                v631 = a1;
                do
                {
                  _H1 = *v626;
                  _H2 = *v625;
                  __asm
                  {
                    FCVT            S1, H1
                    FCVT            S2, H2
                  }

                  v636 = 128;
                  do
                  {
                    v637 = *v627++;
                    _H4 = v631->i16[0];
                    __asm { FCVT            S4, H4 }

                    _S3 = _S4 + (_S0 * (_S2 + (_S1 * v637)));
                    __asm { FCVT            H3, S3 }

                    v631->i16[0] = LOWORD(_S3);
                    v631 = (v631 + 2);
                    --v636;
                  }

                  while (v636);
                  ++v626;
                  ++v625;
                  v628 += 128;
                }

                while (v628 < a7);
              }

              ++a2;
              ++v624;
            }

            while (v624 != a8);
          }

          a1 = (a1 + 2 * a7);
        }
      }

      break;
    case 64:
      if (a18)
      {
        if (a6 >= 1)
        {
          v293 = 0;
          v294.i64[0] = 0xFF000000FFLL;
          v294.i64[1] = 0xFF000000FFLL;
          do
          {
            if (a7 >= 1)
            {
              v295 = 0;
              v296 = a5;
              v297 = a4;
              v298 = a3;
              do
              {
                if (a8 < 1)
                {
                  v300 = 0uLL;
                  v302 = 0uLL;
                }

                else
                {
                  v299 = 0;
                  v300 = 0uLL;
                  v301 = a2;
                  v302 = 0uLL;
                  do
                  {
                    _H4 = *v297;
                    _Q5.i16[0] = *v296;
                    __asm
                    {
                      FCVT            S4, H4
                      FCVT            S5, H5
                    }

                    _Q5 = vdupq_lane_s32(*_Q5.f32, 0);
                    v305 = -2;
                    v306 = v301;
                    v307 = v298;
                    do
                    {
                      v308 = v307;
                      v309 = vld1q_dup_f32(v308++);
                      v310 = vld1q_dup_f32(v308);
                      v311 = *v306++;
                      v300 = vaddq_f32(v300, vmulq_f32(vaddq_f32(_Q5, vmulq_n_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v309, xmmword_25A9CD6E0), v294)), _S4)), vcvtq_f32_f16(*v311.i8)));
                      v302 = vaddq_f32(v302, vmulq_f32(vaddq_f32(_Q5, vmulq_n_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v310, xmmword_25A9CD6E0), v294)), _S4)), vcvt_hight_f32_f16(v311)));
                      v305 += 2;
                      v307 += 2;
                    }

                    while (v305 < 0xE);
                    v298 += 64;
                    ++v297;
                    ++v296;
                    v301 += 64;
                    v299 += 64;
                  }

                  while (v299 < a8);
                }

                _Q2 = vaddq_f32(v300, v302);
                *_Q2.i32 = vaddv_f32(vadd_f32(*_Q2.i8, *&vextq_s8(_Q2, _Q2, 8uLL)));
                __asm { FCVT            H2, S2 }

                a1->i16[0] = _Q2.i16[0];
                a1 = (a1 + 2);
                ++v295;
              }

              while (v295 != a7);
            }

            a2 += a8;
            ++v293;
          }

          while (v293 != a6);
        }
      }

      else if (a6 >= 1)
      {
        for (i7 = 0; i7 != a6; ++i7)
        {
          if (a7 >= 1)
          {
            v578 = a1;
            v579 = a1;
            v580 = a2;
            bzero(v578, 2 * a7);
            a6 = v808;
            a2 = v580;
            a1 = v579;
          }

          if (a8 >= 1)
          {
            v581 = 0;
            v582 = a5;
            v583 = v21;
            v584 = a3;
            do
            {
              if (a7 >= 1)
              {
                v585 = 0;
                _H0 = *a2;
                __asm { FCVT            S0, H0 }

                v588 = a1;
                do
                {
                  _H1 = *v583;
                  _H2 = *v582;
                  __asm
                  {
                    FCVT            S1, H1
                    FCVT            S2, H2
                  }

                  v593 = 64;
                  do
                  {
                    v594 = *v584++;
                    _H4 = v588->i16[0];
                    __asm { FCVT            S4, H4 }

                    _S3 = _S4 + (_S0 * (_S2 + (_S1 * v594)));
                    __asm { FCVT            H3, S3 }

                    v588->i16[0] = LOWORD(_S3);
                    v588 = (v588 + 2);
                    --v593;
                  }

                  while (v593);
                  ++v583;
                  ++v582;
                  v585 += 64;
                }

                while (v585 < a7);
              }

              ++a2;
              ++v581;
            }

            while (v581 != a8);
          }

          a1 = (a1 + 2 * a7);
        }
      }

      break;
    case 32:
      if (a18)
      {
        if (a6 >= 1)
        {
          v25 = 0;
          v26.i64[0] = 0xFF000000FFLL;
          v26.i64[1] = 0xFF000000FFLL;
          do
          {
            if (a7 >= 1)
            {
              v27 = 0;
              v28 = a5;
              v29 = a4;
              v30 = a3;
              do
              {
                if (a8 < 1)
                {
                  v32 = 0uLL;
                  v34 = 0uLL;
                }

                else
                {
                  v31 = 0;
                  v32 = 0uLL;
                  v33 = a2;
                  v34 = 0uLL;
                  do
                  {
                    _H4 = *v29;
                    _Q5.i16[0] = *v28;
                    __asm
                    {
                      FCVT            S4, H4
                      FCVT            S5, H5
                    }

                    _Q5 = vdupq_lane_s32(*_Q5.f32, 0);
                    v41 = -2;
                    v42 = v33;
                    v43 = v30;
                    do
                    {
                      v44 = v43;
                      v45 = vld1q_dup_f32(v44++);
                      v46 = vld1q_dup_f32(v44);
                      v47 = *v42++;
                      v32 = vaddq_f32(v32, vmulq_f32(vaddq_f32(_Q5, vmulq_n_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v45, xmmword_25A9CD6E0), v26)), _S4)), vcvtq_f32_f16(*v47.i8)));
                      v34 = vaddq_f32(v34, vmulq_f32(vaddq_f32(_Q5, vmulq_n_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v46, xmmword_25A9CD6E0), v26)), _S4)), vcvt_hight_f32_f16(v47)));
                      v41 += 2;
                      v43 += 2;
                    }

                    while (v41 < 6);
                    v30 += 32;
                    ++v29;
                    ++v28;
                    v33 += 32;
                    v31 += 32;
                  }

                  while (v31 < a8);
                }

                _Q2 = vaddq_f32(v32, v34);
                *_Q2.i32 = vaddv_f32(vadd_f32(*_Q2.i8, *&vextq_s8(_Q2, _Q2, 8uLL)));
                __asm { FCVT            H2, S2 }

                a1->i16[0] = _Q2.i16[0];
                a1 = (a1 + 2);
                ++v27;
              }

              while (v27 != a7);
            }

            a2 += a8;
            ++v25;
          }

          while (v25 != a6);
        }
      }

      else if (a6 >= 1)
      {
        for (i8 = 0; i8 != a6; ++i8)
        {
          if (a7 >= 1)
          {
            v685 = a1;
            v686 = a1;
            v687 = a2;
            bzero(v685, 2 * a7);
            a6 = v808;
            a2 = v687;
            a1 = v686;
          }

          if (a8 >= 1)
          {
            v688 = 0;
            v689 = a5;
            v690 = v21;
            v691 = a3;
            do
            {
              if (a7 >= 1)
              {
                v692 = 0;
                _H0 = *a2;
                __asm { FCVT            S0, H0 }

                v695 = a1;
                do
                {
                  _H1 = *v690;
                  _H2 = *v689;
                  __asm
                  {
                    FCVT            S1, H1
                    FCVT            S2, H2
                  }

                  v700 = 32;
                  do
                  {
                    v701 = *v691++;
                    _H4 = v695->i16[0];
                    __asm { FCVT            S4, H4 }

                    _S3 = _S4 + (_S0 * (_S2 + (_S1 * v701)));
                    __asm { FCVT            H3, S3 }

                    v695->i16[0] = LOWORD(_S3);
                    v695 = (v695 + 2);
                    --v700;
                  }

                  while (v700);
                  ++v690;
                  ++v689;
                  v692 += 32;
                }

                while (v692 < a7);
              }

              ++a2;
              ++v688;
            }

            while (v688 != a8);
          }

          a1 = (a1 + 2 * a7);
        }
      }

      break;
    default:
      goto LABEL_464;
  }

LABEL_462:
  v791 = *MEMORY[0x277D85DE8];
}

__int16 mlx::core::anonymous namespace::extract_bits<half,3>@<H0>(unsigned __int8 *a1@<X0>, short float *a2@<X1>)
{
  *a2 = (*a1 & 7);
  a2[1] = ((*a1 >> 3) & 7);
  a2[2] = ((*a1 >> 6) & 0xFFFFFFFB | (4 * (a1[1] & 1)));
  a2[3] = ((a1[1] >> 1) & 7);
  a2[4] = ((a1[1] >> 4) & 7);
  a2[5] = ((a1[1] >> 7) & 0xFFFFFFF9 | (2 * (a1[2] & 3)));
  a2[6] = ((a1[2] >> 2) & 7);
  *&result = (a1[2] >> 5);
  a2[7] = *&result;
  return result;
}

void mlx::core::anonymous namespace::_qmm_dispatch_typed<mlx::core::_MLX_BFloat16>(_WORD *a1, unsigned __int16 *a2, unsigned __int8 *a3, unsigned __int16 *a4, unsigned __int16 *a5, int a6, int a7, int a8, double a9, double a10, float a11, int a12, int a13, char a14)
{
  v913 = *MEMORY[0x277D85DE8];
  if (a13 <= 3)
  {
    if (a13 == 2)
    {
      switch(a12)
      {
        case 128:
          v319 = a1;
          if (a14)
          {
            if (a6 >= 1)
            {
              for (i = 0; i != a6; ++i)
              {
                if (a7 >= 1)
                {
                  v321 = 0;
                  v322 = a3;
                  v323 = a4;
                  v324 = a5;
                  do
                  {
                    if (a8 < 1)
                    {
                      LOWORD(v326) = 0;
                    }

                    else
                    {
                      v325 = 0;
                      v326 = 0;
                      v327 = a2;
                      do
                      {
                        v328 = 0;
                        LODWORD(v329) = *v323 << 16;
                        LODWORD(v330) = *v324 << 16;
                        v331 = v327;
                        do
                        {
                          v332 = v322[v328];
                          v333 = v329 * COERCE_FLOAT((COERCE_INT((v332 & 3)) + (HIWORD(COERCE_UNSIGNED_INT((v332 & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                          LODWORD(v334) = (LODWORD(v333) + (HIWORD(LODWORD(v333)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v335) = (COERCE_INT(v334 + v330) + (HIWORD(COERCE_UNSIGNED_INT(v334 + v330)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v336) = (COERCE_INT(v335 * COERCE_FLOAT(*v331 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v335 * COERCE_FLOAT(*v331 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v337) = (COERCE_INT(v336 + COERCE_FLOAT(v326 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v336 + COERCE_FLOAT(v326 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          v338 = v329 * COERCE_FLOAT((COERCE_INT(((v332 >> 2) & 3)) + (HIWORD(COERCE_UNSIGNED_INT(((v332 >> 2) & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                          LODWORD(v339) = (LODWORD(v338) + (HIWORD(LODWORD(v338)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v340) = (COERCE_INT(v339 + v330) + (HIWORD(COERCE_UNSIGNED_INT(v339 + v330)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v341) = (COERCE_INT(v340 * COERCE_FLOAT(v331[1] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v340 * COERCE_FLOAT(v331[1] << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v342) = (COERCE_INT(v337 + v341) + (HIWORD(COERCE_UNSIGNED_INT(v337 + v341)) & 1) + 0x7FFF) & 0xFFFF0000;
                          v343 = v329 * COERCE_FLOAT((COERCE_INT(((v332 >> 4) & 3)) + (HIWORD(COERCE_UNSIGNED_INT(((v332 >> 4) & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                          LODWORD(v344) = (LODWORD(v343) + (HIWORD(LODWORD(v343)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v345) = (COERCE_INT(v344 + v330) + (HIWORD(COERCE_UNSIGNED_INT(v344 + v330)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v346) = (COERCE_INT(v345 * COERCE_FLOAT(v331[2] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v345 * COERCE_FLOAT(v331[2] << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v347) = (COERCE_INT(v342 + v346) + (HIWORD(COERCE_UNSIGNED_INT(v342 + v346)) & 1) + 0x7FFF) & 0xFFFF0000;
                          v348 = v329 * COERCE_FLOAT((COERCE_INT((v332 >> 6)) + (HIWORD(COERCE_UNSIGNED_INT((v332 >> 6))) & 1) + 0x7FFF) & 0xFFFF0000);
                          LODWORD(v349) = (LODWORD(v348) + (HIWORD(LODWORD(v348)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v350) = (COERCE_INT(v349 + v330) + (HIWORD(COERCE_UNSIGNED_INT(v349 + v330)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v351) = (COERCE_INT(v350 * COERCE_FLOAT(v331[3] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v350 * COERCE_FLOAT(v331[3] << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          v326 = (COERCE_INT(v347 + v351) + (HIWORD(COERCE_UNSIGNED_INT(v347 + v351)) & 1) + 0x7FFF) >> 16;
                          v331 += 4;
                          ++v328;
                        }

                        while (v328 != 32);
                        v322 += 32;
                        ++v323;
                        ++v324;
                        v327 += 128;
                        v325 += 128;
                      }

                      while (v325 < a8);
                    }

                    *v319++ = v326;
                    ++v321;
                  }

                  while (v321 != a7);
                }

                a2 += a8;
              }
            }
          }

          else if (a6 >= 1)
          {
            for (j = 0; j != a6; ++j)
            {
              if (a7 >= 1)
              {
                bzero(v319, 2 * a7);
              }

              if (a8 >= 1)
              {
                v646 = 0;
                v647 = a3;
                v648 = a4;
                v649 = a5;
                do
                {
                  if (a7 >= 1)
                  {
                    v650 = 0;
                    LODWORD(v651) = *a2 << 16;
                    v652 = v319;
                    do
                    {
                      LODWORD(v653) = *v648 << 16;
                      LODWORD(v654) = *v649 << 16;
                      v655 = 32;
                      do
                      {
                        v656 = *v647;
                        v657 = v653 * COERCE_FLOAT((COERCE_INT((v656 & 3)) + (HIWORD(COERCE_UNSIGNED_INT((v656 & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v658) = (LODWORD(v657) + (HIWORD(LODWORD(v657)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v659) = (COERCE_INT(v658 + v654) + (HIWORD(COERCE_UNSIGNED_INT(v658 + v654)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v660) = (COERCE_INT(v659 * v651) + (HIWORD(COERCE_UNSIGNED_INT(v659 * v651)) & 1) + 0x7FFF) & 0xFFFF0000;
                        *v652 = (COERCE_INT(v660 + COERCE_FLOAT(*v652 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v660 + COERCE_FLOAT(*v652 << 16))) & 1) + 0x7FFF) >> 16;
                        v661 = v653 * COERCE_FLOAT((COERCE_INT(((v656 >> 2) & 3)) + (HIWORD(COERCE_UNSIGNED_INT(((v656 >> 2) & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v662) = (LODWORD(v661) + (HIWORD(LODWORD(v661)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v663) = (COERCE_INT(v662 + v654) + (HIWORD(COERCE_UNSIGNED_INT(v662 + v654)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v664) = (COERCE_INT(v663 * v651) + (HIWORD(COERCE_UNSIGNED_INT(v663 * v651)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v652[1] = (COERCE_INT(v664 + COERCE_FLOAT(v652[1] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v664 + COERCE_FLOAT(v652[1] << 16))) & 1) + 0x7FFF) >> 16;
                        v665 = v653 * COERCE_FLOAT((COERCE_INT(((v656 >> 4) & 3)) + (HIWORD(COERCE_UNSIGNED_INT(((v656 >> 4) & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v666) = (LODWORD(v665) + (HIWORD(LODWORD(v665)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v667) = (COERCE_INT(v666 + v654) + (HIWORD(COERCE_UNSIGNED_INT(v666 + v654)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v668) = (COERCE_INT(v667 * v651) + (HIWORD(COERCE_UNSIGNED_INT(v667 * v651)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v652[2] = (COERCE_INT(v668 + COERCE_FLOAT(v652[2] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v668 + COERCE_FLOAT(v652[2] << 16))) & 1) + 0x7FFF) >> 16;
                        v669 = v653 * COERCE_FLOAT((COERCE_INT((v656 >> 6)) + (HIWORD(COERCE_UNSIGNED_INT((v656 >> 6))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v670) = (LODWORD(v669) + (HIWORD(LODWORD(v669)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v671) = (COERCE_INT(v670 + v654) + (HIWORD(COERCE_UNSIGNED_INT(v670 + v654)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v672 = COERCE_FLOAT((COERCE_INT(v671 * v651) + (HIWORD(COERCE_UNSIGNED_INT(v671 * v651)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v652[3] << 16);
                        v673 = v652 + 4;
                        v652[3] = (LODWORD(v672) + (HIWORD(LODWORD(v672)) & 1u) + 0x7FFF) >> 16;
                        ++v647;
                        v652 += 4;
                        --v655;
                      }

                      while (v655);
                      ++v648;
                      ++v649;
                      v650 += 128;
                      v652 = v673;
                    }

                    while (v650 < a7);
                  }

                  ++a2;
                  ++v646;
                }

                while (v646 != a8);
              }

              v319 += a7;
            }
          }

          goto LABEL_456;
        case 64:
          v271 = a1;
          if (a14)
          {
            if (a6 >= 1)
            {
              for (k = 0; k != a6; ++k)
              {
                if (a7 >= 1)
                {
                  v273 = 0;
                  v274 = a3;
                  v275 = a4;
                  v276 = a5;
                  do
                  {
                    if (a8 < 1)
                    {
                      LOWORD(v278) = 0;
                    }

                    else
                    {
                      v277 = 0;
                      v278 = 0;
                      v279 = a2;
                      do
                      {
                        v280 = 0;
                        LODWORD(v281) = *v275 << 16;
                        LODWORD(v282) = *v276 << 16;
                        v283 = v279;
                        do
                        {
                          v284 = v274[v280];
                          v285 = v281 * COERCE_FLOAT((COERCE_INT((v284 & 3)) + (HIWORD(COERCE_UNSIGNED_INT((v284 & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                          LODWORD(v286) = (LODWORD(v285) + (HIWORD(LODWORD(v285)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v287) = (COERCE_INT(v286 + v282) + (HIWORD(COERCE_UNSIGNED_INT(v286 + v282)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v288) = (COERCE_INT(v287 * COERCE_FLOAT(*v283 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v287 * COERCE_FLOAT(*v283 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v289) = (COERCE_INT(v288 + COERCE_FLOAT(v278 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v288 + COERCE_FLOAT(v278 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          v290 = v281 * COERCE_FLOAT((COERCE_INT(((v284 >> 2) & 3)) + (HIWORD(COERCE_UNSIGNED_INT(((v284 >> 2) & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                          LODWORD(v291) = (LODWORD(v290) + (HIWORD(LODWORD(v290)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v292) = (COERCE_INT(v291 + v282) + (HIWORD(COERCE_UNSIGNED_INT(v291 + v282)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v293) = (COERCE_INT(v292 * COERCE_FLOAT(v283[1] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v292 * COERCE_FLOAT(v283[1] << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v294) = (COERCE_INT(v289 + v293) + (HIWORD(COERCE_UNSIGNED_INT(v289 + v293)) & 1) + 0x7FFF) & 0xFFFF0000;
                          v295 = v281 * COERCE_FLOAT((COERCE_INT(((v284 >> 4) & 3)) + (HIWORD(COERCE_UNSIGNED_INT(((v284 >> 4) & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                          LODWORD(v296) = (LODWORD(v295) + (HIWORD(LODWORD(v295)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v297) = (COERCE_INT(v296 + v282) + (HIWORD(COERCE_UNSIGNED_INT(v296 + v282)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v298) = (COERCE_INT(v297 * COERCE_FLOAT(v283[2] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v297 * COERCE_FLOAT(v283[2] << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v299) = (COERCE_INT(v294 + v298) + (HIWORD(COERCE_UNSIGNED_INT(v294 + v298)) & 1) + 0x7FFF) & 0xFFFF0000;
                          v300 = v281 * COERCE_FLOAT((COERCE_INT((v284 >> 6)) + (HIWORD(COERCE_UNSIGNED_INT((v284 >> 6))) & 1) + 0x7FFF) & 0xFFFF0000);
                          LODWORD(v301) = (LODWORD(v300) + (HIWORD(LODWORD(v300)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v302) = (COERCE_INT(v301 + v282) + (HIWORD(COERCE_UNSIGNED_INT(v301 + v282)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v303) = (COERCE_INT(v302 * COERCE_FLOAT(v283[3] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v302 * COERCE_FLOAT(v283[3] << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          v278 = (COERCE_INT(v299 + v303) + (HIWORD(COERCE_UNSIGNED_INT(v299 + v303)) & 1) + 0x7FFF) >> 16;
                          v283 += 4;
                          ++v280;
                        }

                        while (v280 != 16);
                        v274 += 16;
                        ++v275;
                        ++v276;
                        v279 += 64;
                        v277 += 64;
                      }

                      while (v277 < a8);
                    }

                    *v271++ = v278;
                    ++v273;
                  }

                  while (v273 != a7);
                }

                a2 += a8;
              }
            }
          }

          else if (a6 >= 1)
          {
            for (m = 0; m != a6; ++m)
            {
              if (a7 >= 1)
              {
                bzero(v271, 2 * a7);
              }

              if (a8 >= 1)
              {
                v577 = 0;
                v578 = a3;
                v579 = a4;
                v580 = a5;
                do
                {
                  if (a7 >= 1)
                  {
                    v581 = 0;
                    LODWORD(v582) = *a2 << 16;
                    v583 = v271;
                    do
                    {
                      LODWORD(v584) = *v579 << 16;
                      LODWORD(v585) = *v580 << 16;
                      v586 = 16;
                      do
                      {
                        v587 = *v578;
                        v588 = v584 * COERCE_FLOAT((COERCE_INT((v587 & 3)) + (HIWORD(COERCE_UNSIGNED_INT((v587 & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v589) = (LODWORD(v588) + (HIWORD(LODWORD(v588)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v590) = (COERCE_INT(v589 + v585) + (HIWORD(COERCE_UNSIGNED_INT(v589 + v585)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v591) = (COERCE_INT(v590 * v582) + (HIWORD(COERCE_UNSIGNED_INT(v590 * v582)) & 1) + 0x7FFF) & 0xFFFF0000;
                        *v583 = (COERCE_INT(v591 + COERCE_FLOAT(*v583 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v591 + COERCE_FLOAT(*v583 << 16))) & 1) + 0x7FFF) >> 16;
                        v592 = v584 * COERCE_FLOAT((COERCE_INT(((v587 >> 2) & 3)) + (HIWORD(COERCE_UNSIGNED_INT(((v587 >> 2) & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v593) = (LODWORD(v592) + (HIWORD(LODWORD(v592)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v594) = (COERCE_INT(v593 + v585) + (HIWORD(COERCE_UNSIGNED_INT(v593 + v585)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v595) = (COERCE_INT(v594 * v582) + (HIWORD(COERCE_UNSIGNED_INT(v594 * v582)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v583[1] = (COERCE_INT(v595 + COERCE_FLOAT(v583[1] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v595 + COERCE_FLOAT(v583[1] << 16))) & 1) + 0x7FFF) >> 16;
                        v596 = v584 * COERCE_FLOAT((COERCE_INT(((v587 >> 4) & 3)) + (HIWORD(COERCE_UNSIGNED_INT(((v587 >> 4) & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v597) = (LODWORD(v596) + (HIWORD(LODWORD(v596)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v598) = (COERCE_INT(v597 + v585) + (HIWORD(COERCE_UNSIGNED_INT(v597 + v585)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v599) = (COERCE_INT(v598 * v582) + (HIWORD(COERCE_UNSIGNED_INT(v598 * v582)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v583[2] = (COERCE_INT(v599 + COERCE_FLOAT(v583[2] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v599 + COERCE_FLOAT(v583[2] << 16))) & 1) + 0x7FFF) >> 16;
                        v600 = v584 * COERCE_FLOAT((COERCE_INT((v587 >> 6)) + (HIWORD(COERCE_UNSIGNED_INT((v587 >> 6))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v601) = (LODWORD(v600) + (HIWORD(LODWORD(v600)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v602) = (COERCE_INT(v601 + v585) + (HIWORD(COERCE_UNSIGNED_INT(v601 + v585)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v603 = COERCE_FLOAT((COERCE_INT(v602 * v582) + (HIWORD(COERCE_UNSIGNED_INT(v602 * v582)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v583[3] << 16);
                        v604 = v583 + 4;
                        v583[3] = (LODWORD(v603) + (HIWORD(LODWORD(v603)) & 1u) + 0x7FFF) >> 16;
                        ++v578;
                        v583 += 4;
                        --v586;
                      }

                      while (v586);
                      ++v579;
                      ++v580;
                      v581 += 64;
                      v583 = v604;
                    }

                    while (v581 < a7);
                  }

                  ++a2;
                  ++v577;
                }

                while (v577 != a8);
              }

              v271 += a7;
            }
          }

          goto LABEL_456;
        case 32:
          v134 = a1;
          if (a14)
          {
            if (a6 >= 1)
            {
              for (n = 0; n != a6; ++n)
              {
                if (a7 >= 1)
                {
                  v136 = 0;
                  v137 = a3;
                  v138 = a4;
                  v139 = a5;
                  do
                  {
                    if (a8 < 1)
                    {
                      LOWORD(v141) = 0;
                    }

                    else
                    {
                      v140 = 0;
                      v141 = 0;
                      v142 = a2;
                      do
                      {
                        v143 = 0;
                        LODWORD(v144) = *v138 << 16;
                        LODWORD(v145) = *v139 << 16;
                        v146 = v142;
                        do
                        {
                          v147 = v137[v143];
                          v148 = v144 * COERCE_FLOAT((COERCE_INT((v147 & 3)) + (HIWORD(COERCE_UNSIGNED_INT((v147 & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                          LODWORD(v149) = (LODWORD(v148) + (HIWORD(LODWORD(v148)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v150) = (COERCE_INT(v149 + v145) + (HIWORD(COERCE_UNSIGNED_INT(v149 + v145)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v151) = (COERCE_INT(v150 * COERCE_FLOAT(*v146 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v150 * COERCE_FLOAT(*v146 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v152) = (COERCE_INT(v151 + COERCE_FLOAT(v141 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v151 + COERCE_FLOAT(v141 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          v153 = v144 * COERCE_FLOAT((COERCE_INT(((v147 >> 2) & 3)) + (HIWORD(COERCE_UNSIGNED_INT(((v147 >> 2) & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                          LODWORD(v154) = (LODWORD(v153) + (HIWORD(LODWORD(v153)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v155) = (COERCE_INT(v154 + v145) + (HIWORD(COERCE_UNSIGNED_INT(v154 + v145)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v156) = (COERCE_INT(v155 * COERCE_FLOAT(v146[1] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v155 * COERCE_FLOAT(v146[1] << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v157) = (COERCE_INT(v152 + v156) + (HIWORD(COERCE_UNSIGNED_INT(v152 + v156)) & 1) + 0x7FFF) & 0xFFFF0000;
                          v158 = v144 * COERCE_FLOAT((COERCE_INT(((v147 >> 4) & 3)) + (HIWORD(COERCE_UNSIGNED_INT(((v147 >> 4) & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                          LODWORD(v159) = (LODWORD(v158) + (HIWORD(LODWORD(v158)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v160) = (COERCE_INT(v159 + v145) + (HIWORD(COERCE_UNSIGNED_INT(v159 + v145)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v161) = (COERCE_INT(v160 * COERCE_FLOAT(v146[2] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v160 * COERCE_FLOAT(v146[2] << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v162) = (COERCE_INT(v157 + v161) + (HIWORD(COERCE_UNSIGNED_INT(v157 + v161)) & 1) + 0x7FFF) & 0xFFFF0000;
                          v163 = v144 * COERCE_FLOAT((COERCE_INT((v147 >> 6)) + (HIWORD(COERCE_UNSIGNED_INT((v147 >> 6))) & 1) + 0x7FFF) & 0xFFFF0000);
                          LODWORD(v164) = (LODWORD(v163) + (HIWORD(LODWORD(v163)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v165) = (COERCE_INT(v164 + v145) + (HIWORD(COERCE_UNSIGNED_INT(v164 + v145)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v166) = (COERCE_INT(v165 * COERCE_FLOAT(v146[3] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v165 * COERCE_FLOAT(v146[3] << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          v141 = (COERCE_INT(v162 + v166) + (HIWORD(COERCE_UNSIGNED_INT(v162 + v166)) & 1) + 0x7FFF) >> 16;
                          v146 += 4;
                          ++v143;
                        }

                        while (v143 != 8);
                        v137 += 8;
                        ++v138;
                        ++v139;
                        v142 += 32;
                        v140 += 32;
                      }

                      while (v140 < a8);
                    }

                    *v134++ = v141;
                    ++v136;
                  }

                  while (v136 != a7);
                }

                a2 += a8;
              }
            }
          }

          else if (a6 >= 1)
          {
            for (ii = 0; ii != a6; ++ii)
            {
              if (a7 >= 1)
              {
                bzero(v134, 2 * a7);
              }

              if (a8 >= 1)
              {
                v675 = 0;
                v676 = a3;
                v677 = a4;
                v678 = a5;
                do
                {
                  if (a7 >= 1)
                  {
                    v679 = 0;
                    LODWORD(v680) = *a2 << 16;
                    v681 = v134;
                    do
                    {
                      LODWORD(v682) = *v677 << 16;
                      LODWORD(v683) = *v678 << 16;
                      v684 = 8;
                      do
                      {
                        v685 = *v676;
                        v686 = v682 * COERCE_FLOAT((COERCE_INT((v685 & 3)) + (HIWORD(COERCE_UNSIGNED_INT((v685 & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v687) = (LODWORD(v686) + (HIWORD(LODWORD(v686)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v688) = (COERCE_INT(v687 + v683) + (HIWORD(COERCE_UNSIGNED_INT(v687 + v683)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v689) = (COERCE_INT(v688 * v680) + (HIWORD(COERCE_UNSIGNED_INT(v688 * v680)) & 1) + 0x7FFF) & 0xFFFF0000;
                        *v681 = (COERCE_INT(v689 + COERCE_FLOAT(*v681 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v689 + COERCE_FLOAT(*v681 << 16))) & 1) + 0x7FFF) >> 16;
                        v690 = v682 * COERCE_FLOAT((COERCE_INT(((v685 >> 2) & 3)) + (HIWORD(COERCE_UNSIGNED_INT(((v685 >> 2) & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v691) = (LODWORD(v690) + (HIWORD(LODWORD(v690)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v692) = (COERCE_INT(v691 + v683) + (HIWORD(COERCE_UNSIGNED_INT(v691 + v683)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v693) = (COERCE_INT(v692 * v680) + (HIWORD(COERCE_UNSIGNED_INT(v692 * v680)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v681[1] = (COERCE_INT(v693 + COERCE_FLOAT(v681[1] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v693 + COERCE_FLOAT(v681[1] << 16))) & 1) + 0x7FFF) >> 16;
                        v694 = v682 * COERCE_FLOAT((COERCE_INT(((v685 >> 4) & 3)) + (HIWORD(COERCE_UNSIGNED_INT(((v685 >> 4) & 3))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v695) = (LODWORD(v694) + (HIWORD(LODWORD(v694)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v696) = (COERCE_INT(v695 + v683) + (HIWORD(COERCE_UNSIGNED_INT(v695 + v683)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v697) = (COERCE_INT(v696 * v680) + (HIWORD(COERCE_UNSIGNED_INT(v696 * v680)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v681[2] = (COERCE_INT(v697 + COERCE_FLOAT(v681[2] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v697 + COERCE_FLOAT(v681[2] << 16))) & 1) + 0x7FFF) >> 16;
                        v698 = v682 * COERCE_FLOAT((COERCE_INT((v685 >> 6)) + (HIWORD(COERCE_UNSIGNED_INT((v685 >> 6))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v699) = (LODWORD(v698) + (HIWORD(LODWORD(v698)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v700) = (COERCE_INT(v699 + v683) + (HIWORD(COERCE_UNSIGNED_INT(v699 + v683)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v701 = COERCE_FLOAT((COERCE_INT(v700 * v680) + (HIWORD(COERCE_UNSIGNED_INT(v700 * v680)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v681[3] << 16);
                        v702 = v681 + 4;
                        v681[3] = (LODWORD(v701) + (HIWORD(LODWORD(v701)) & 1u) + 0x7FFF) >> 16;
                        ++v676;
                        v681 += 4;
                        --v684;
                      }

                      while (v684);
                      ++v677;
                      ++v678;
                      v679 += 32;
                      v681 = v702;
                    }

                    while (v679 < a7);
                  }

                  ++a2;
                  ++v675;
                }

                while (v675 != a8);
              }

              v134 += a7;
            }
          }

          goto LABEL_456;
      }
    }

    else
    {
      if (a13 != 3)
      {
        goto LABEL_457;
      }

      v888 = a1;
      switch(a12)
      {
        case 128:
          if (a14)
          {
            if (a6 >= 1)
            {
              v416 = 0;
              v853 = a8;
              do
              {
                v865 = v416;
                v895 = a2;
                if (a7 >= 1)
                {
                  v417 = 0;
                  v419 = a3;
                  v418 = a4;
                  v420 = a5;
                  do
                  {
                    v881 = v417;
                    if (a8 < 1)
                    {
                      LOWORD(v422) = 0;
                    }

                    else
                    {
                      v421 = 0;
                      v422 = 0;
                      v423 = v895;
                      do
                      {
                        v424 = 0;
                        LODWORD(v425) = *v418 << 16;
                        LODWORD(v426) = *v420 << 16;
                        do
                        {
                          LODWORD(v427) = (COERCE_INT(v425 * COERCE_FLOAT(v905 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v425 * COERCE_FLOAT(v905 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v428) = (COERCE_INT(v427 + v426) + (HIWORD(COERCE_UNSIGNED_INT(v427 + v426)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v429) = (COERCE_INT(v428 * COERCE_FLOAT(*(v423 + v424) << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v428 * COERCE_FLOAT(*(v423 + v424) << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v430) = (COERCE_INT(v429 + COERCE_FLOAT(v422 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v429 + COERCE_FLOAT(v422 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v431) = (COERCE_INT(v425 * COERCE_FLOAT(v906 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v425 * COERCE_FLOAT(v906 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v432) = (COERCE_INT(v431 + v426) + (HIWORD(COERCE_UNSIGNED_INT(v431 + v426)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v433) = *(v423 + v424 + 2) << 16;
                          LODWORD(v434) = (COERCE_INT(v432 * v433) + (HIWORD(COERCE_UNSIGNED_INT(v432 * v433)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v435) = (COERCE_INT(v430 + v434) + (HIWORD(COERCE_UNSIGNED_INT(v430 + v434)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v436) = (COERCE_INT(v425 * COERCE_FLOAT(v907 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v425 * COERCE_FLOAT(v907 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v437) = (COERCE_INT(v436 + v426) + (HIWORD(COERCE_UNSIGNED_INT(v436 + v426)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v438) = *(v423 + v424 + 4) << 16;
                          LODWORD(v439) = (COERCE_INT(v437 * v438) + (HIWORD(COERCE_UNSIGNED_INT(v437 * v438)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v440) = (COERCE_INT(v435 + v439) + (HIWORD(COERCE_UNSIGNED_INT(v435 + v439)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v441) = (COERCE_INT(v425 * COERCE_FLOAT(v908 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v425 * COERCE_FLOAT(v908 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v442) = (COERCE_INT(v441 + v426) + (HIWORD(COERCE_UNSIGNED_INT(v441 + v426)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v443) = *(v423 + v424 + 6) << 16;
                          LODWORD(v444) = (COERCE_INT(v442 * v443) + (HIWORD(COERCE_UNSIGNED_INT(v442 * v443)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v445) = (COERCE_INT(v440 + v444) + (HIWORD(COERCE_UNSIGNED_INT(v440 + v444)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v446) = (COERCE_INT(v425 * COERCE_FLOAT(v909 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v425 * COERCE_FLOAT(v909 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v447) = (COERCE_INT(v446 + v426) + (HIWORD(COERCE_UNSIGNED_INT(v446 + v426)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v448) = *(v423 + v424 + 8) << 16;
                          LODWORD(v449) = (COERCE_INT(v447 * v448) + (HIWORD(COERCE_UNSIGNED_INT(v447 * v448)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v450) = (COERCE_INT(v445 + v449) + (HIWORD(COERCE_UNSIGNED_INT(v445 + v449)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v451) = (COERCE_INT(v425 * COERCE_FLOAT(v910 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v425 * COERCE_FLOAT(v910 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v452) = (COERCE_INT(v451 + v426) + (HIWORD(COERCE_UNSIGNED_INT(v451 + v426)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v453) = *(v423 + v424 + 10) << 16;
                          LODWORD(v454) = (COERCE_INT(v452 * v453) + (HIWORD(COERCE_UNSIGNED_INT(v452 * v453)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v455) = (COERCE_INT(v450 + v454) + (HIWORD(COERCE_UNSIGNED_INT(v450 + v454)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v456) = (COERCE_INT(v425 * COERCE_FLOAT(v911 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v425 * COERCE_FLOAT(v911 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v457) = (COERCE_INT(v456 + v426) + (HIWORD(COERCE_UNSIGNED_INT(v456 + v426)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v458) = *(v423 + v424 + 12) << 16;
                          LODWORD(v459) = (COERCE_INT(v457 * v458) + (HIWORD(COERCE_UNSIGNED_INT(v457 * v458)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v460) = (COERCE_INT(v455 + v459) + (HIWORD(COERCE_UNSIGNED_INT(v455 + v459)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v461) = (COERCE_INT(v425 * COERCE_FLOAT(v912 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v425 * COERCE_FLOAT(v912 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v462) = (COERCE_INT(v461 + v426) + (HIWORD(COERCE_UNSIGNED_INT(v461 + v426)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v463) = *(v423 + v424 + 14) << 16;
                          v464 = v460 + COERCE_FLOAT((COERCE_INT(v462 * v463) + (HIWORD(COERCE_UNSIGNED_INT(v462 * v463)) & 1) + 0x7FFF) & 0xFFFF0000);
                          v422 = (LODWORD(v464) + (HIWORD(LODWORD(v464)) & 1u) + 0x7FFF) >> 16;
                          v419 += 3;
                          v424 += 16;
                        }

                        while (v424 != 256);
                        ++v418;
                        ++v420;
                        v423 += 256;
                        v421 += 128;
                      }

                      while (v421 < a8);
                    }

                    *v888++ = v422;
                    v417 = v881 + 1;
                  }

                  while (v881 + 1 != a7);
                }

                a2 = (v895 + 2 * v853);
                v416 = v865 + 1;
              }

              while (v865 + 1 != a6);
            }
          }

          else if (a6 >= 1)
          {
            v771 = 0;
            v858 = 2 * a7;
            v870 = a7;
            do
            {
              if (a7 >= 1)
              {
                bzero(v888, v858);
              }

              v886 = v771;
              v903 = a2;
              if (a8 >= 1)
              {
                v772 = 0;
                v774 = a3;
                v773 = a4;
                v775 = a5;
                do
                {
                  if (a7 >= 1)
                  {
                    v776 = 0;
                    v777 = v888;
                    LODWORD(v778) = *v903 << 16;
                    do
                    {
                      LODWORD(v779) = *v773 << 16;
                      LODWORD(v780) = *v775 << 16;
                      v781 = 16;
                      do
                      {
                        LODWORD(v782) = (COERCE_INT(v779 * COERCE_FLOAT(v905 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v779 * COERCE_FLOAT(v905 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v783) = (COERCE_INT(v782 + v780) + (HIWORD(COERCE_UNSIGNED_INT(v782 + v780)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v784) = (COERCE_INT(v783 * v778) + (HIWORD(COERCE_UNSIGNED_INT(v783 * v778)) & 1) + 0x7FFF) & 0xFFFF0000;
                        *v777 = (COERCE_INT(v784 + COERCE_FLOAT(*v777 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v784 + COERCE_FLOAT(*v777 << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v785) = (COERCE_INT(v779 * COERCE_FLOAT(v906 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v779 * COERCE_FLOAT(v906 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v786) = (COERCE_INT(v785 + v780) + (HIWORD(COERCE_UNSIGNED_INT(v785 + v780)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v787) = (COERCE_INT(v786 * v778) + (HIWORD(COERCE_UNSIGNED_INT(v786 * v778)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v777[1] = (COERCE_INT(v787 + COERCE_FLOAT(v777[1] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v787 + COERCE_FLOAT(v777[1] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v788) = (COERCE_INT(v779 * COERCE_FLOAT(v907 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v779 * COERCE_FLOAT(v907 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v789) = (COERCE_INT(v788 + v780) + (HIWORD(COERCE_UNSIGNED_INT(v788 + v780)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v790) = (COERCE_INT(v789 * v778) + (HIWORD(COERCE_UNSIGNED_INT(v789 * v778)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v777[2] = (COERCE_INT(v790 + COERCE_FLOAT(v777[2] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v790 + COERCE_FLOAT(v777[2] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v791) = (COERCE_INT(v779 * COERCE_FLOAT(v908 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v779 * COERCE_FLOAT(v908 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v792) = (COERCE_INT(v791 + v780) + (HIWORD(COERCE_UNSIGNED_INT(v791 + v780)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v793) = (COERCE_INT(v792 * v778) + (HIWORD(COERCE_UNSIGNED_INT(v792 * v778)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v777[3] = (COERCE_INT(v793 + COERCE_FLOAT(v777[3] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v793 + COERCE_FLOAT(v777[3] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v794) = (COERCE_INT(v779 * COERCE_FLOAT(v909 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v779 * COERCE_FLOAT(v909 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v795) = (COERCE_INT(v794 + v780) + (HIWORD(COERCE_UNSIGNED_INT(v794 + v780)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v796) = (COERCE_INT(v795 * v778) + (HIWORD(COERCE_UNSIGNED_INT(v795 * v778)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v777[4] = (COERCE_INT(v796 + COERCE_FLOAT(v777[4] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v796 + COERCE_FLOAT(v777[4] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v797) = (COERCE_INT(v779 * COERCE_FLOAT(v910 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v779 * COERCE_FLOAT(v910 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v798) = (COERCE_INT(v797 + v780) + (HIWORD(COERCE_UNSIGNED_INT(v797 + v780)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v799) = (COERCE_INT(v798 * v778) + (HIWORD(COERCE_UNSIGNED_INT(v798 * v778)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v777[5] = (COERCE_INT(v799 + COERCE_FLOAT(v777[5] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v799 + COERCE_FLOAT(v777[5] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v800) = (COERCE_INT(v779 * COERCE_FLOAT(v911 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v779 * COERCE_FLOAT(v911 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v801) = (COERCE_INT(v800 + v780) + (HIWORD(COERCE_UNSIGNED_INT(v800 + v780)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v802) = (COERCE_INT(v801 * v778) + (HIWORD(COERCE_UNSIGNED_INT(v801 * v778)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v777[6] = (COERCE_INT(v802 + COERCE_FLOAT(v777[6] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v802 + COERCE_FLOAT(v777[6] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v803) = (COERCE_INT(v779 * COERCE_FLOAT(v912 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v779 * COERCE_FLOAT(v912 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v804) = (COERCE_INT(v803 + v780) + (HIWORD(COERCE_UNSIGNED_INT(v803 + v780)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v805 = COERCE_FLOAT((COERCE_INT(v804 * v778) + (HIWORD(COERCE_UNSIGNED_INT(v804 * v778)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v777[7] << 16);
                        v806 = v777 + 8;
                        v777[7] = (LODWORD(v805) + (HIWORD(LODWORD(v805)) & 1u) + 0x7FFF) >> 16;
                        v774 += 3;
                        v777 += 8;
                        --v781;
                      }

                      while (v781);
                      ++v773;
                      ++v775;
                      v776 += 128;
                      v777 = v806;
                    }

                    while (v776 < a7);
                  }

                  ++v903;
                  ++v772;
                }

                while (v772 != a8);
              }

              a2 = v903;
              v888 += v870;
              v771 = v886 + 1;
            }

            while (v886 + 1 != a6);
          }

          goto LABEL_456;
        case 64:
          if (a14)
          {
            if (a6 >= 1)
            {
              v367 = 0;
              v852 = a8;
              do
              {
                v864 = v367;
                v894 = a2;
                if (a7 >= 1)
                {
                  v368 = 0;
                  v370 = a3;
                  v369 = a4;
                  v371 = a5;
                  do
                  {
                    v880 = v368;
                    if (a8 < 1)
                    {
                      LOWORD(v373) = 0;
                    }

                    else
                    {
                      v372 = 0;
                      v373 = 0;
                      v374 = v894;
                      do
                      {
                        v375 = 0;
                        LODWORD(v376) = *v369 << 16;
                        LODWORD(v377) = *v371 << 16;
                        do
                        {
                          LODWORD(v378) = (COERCE_INT(v376 * COERCE_FLOAT(v905 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v376 * COERCE_FLOAT(v905 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v379) = (COERCE_INT(v378 + v377) + (HIWORD(COERCE_UNSIGNED_INT(v378 + v377)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v380) = (COERCE_INT(v379 * COERCE_FLOAT(*(v374 + v375) << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v379 * COERCE_FLOAT(*(v374 + v375) << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v381) = (COERCE_INT(v380 + COERCE_FLOAT(v373 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v380 + COERCE_FLOAT(v373 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v382) = (COERCE_INT(v376 * COERCE_FLOAT(v906 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v376 * COERCE_FLOAT(v906 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v383) = (COERCE_INT(v382 + v377) + (HIWORD(COERCE_UNSIGNED_INT(v382 + v377)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v384) = *(v374 + v375 + 2) << 16;
                          LODWORD(v385) = (COERCE_INT(v383 * v384) + (HIWORD(COERCE_UNSIGNED_INT(v383 * v384)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v386) = (COERCE_INT(v381 + v385) + (HIWORD(COERCE_UNSIGNED_INT(v381 + v385)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v387) = (COERCE_INT(v376 * COERCE_FLOAT(v907 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v376 * COERCE_FLOAT(v907 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v388) = (COERCE_INT(v387 + v377) + (HIWORD(COERCE_UNSIGNED_INT(v387 + v377)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v389) = *(v374 + v375 + 4) << 16;
                          LODWORD(v390) = (COERCE_INT(v388 * v389) + (HIWORD(COERCE_UNSIGNED_INT(v388 * v389)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v391) = (COERCE_INT(v386 + v390) + (HIWORD(COERCE_UNSIGNED_INT(v386 + v390)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v392) = (COERCE_INT(v376 * COERCE_FLOAT(v908 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v376 * COERCE_FLOAT(v908 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v393) = (COERCE_INT(v392 + v377) + (HIWORD(COERCE_UNSIGNED_INT(v392 + v377)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v394) = *(v374 + v375 + 6) << 16;
                          LODWORD(v395) = (COERCE_INT(v393 * v394) + (HIWORD(COERCE_UNSIGNED_INT(v393 * v394)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v396) = (COERCE_INT(v391 + v395) + (HIWORD(COERCE_UNSIGNED_INT(v391 + v395)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v397) = (COERCE_INT(v376 * COERCE_FLOAT(v909 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v376 * COERCE_FLOAT(v909 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v398) = (COERCE_INT(v397 + v377) + (HIWORD(COERCE_UNSIGNED_INT(v397 + v377)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v399) = *(v374 + v375 + 8) << 16;
                          LODWORD(v400) = (COERCE_INT(v398 * v399) + (HIWORD(COERCE_UNSIGNED_INT(v398 * v399)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v401) = (COERCE_INT(v396 + v400) + (HIWORD(COERCE_UNSIGNED_INT(v396 + v400)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v402) = (COERCE_INT(v376 * COERCE_FLOAT(v910 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v376 * COERCE_FLOAT(v910 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v403) = (COERCE_INT(v402 + v377) + (HIWORD(COERCE_UNSIGNED_INT(v402 + v377)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v404) = *(v374 + v375 + 10) << 16;
                          LODWORD(v405) = (COERCE_INT(v403 * v404) + (HIWORD(COERCE_UNSIGNED_INT(v403 * v404)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v406) = (COERCE_INT(v401 + v405) + (HIWORD(COERCE_UNSIGNED_INT(v401 + v405)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v407) = (COERCE_INT(v376 * COERCE_FLOAT(v911 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v376 * COERCE_FLOAT(v911 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v408) = (COERCE_INT(v407 + v377) + (HIWORD(COERCE_UNSIGNED_INT(v407 + v377)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v409) = *(v374 + v375 + 12) << 16;
                          LODWORD(v410) = (COERCE_INT(v408 * v409) + (HIWORD(COERCE_UNSIGNED_INT(v408 * v409)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v411) = (COERCE_INT(v406 + v410) + (HIWORD(COERCE_UNSIGNED_INT(v406 + v410)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v412) = (COERCE_INT(v376 * COERCE_FLOAT(v912 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v376 * COERCE_FLOAT(v912 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v413) = (COERCE_INT(v412 + v377) + (HIWORD(COERCE_UNSIGNED_INT(v412 + v377)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v414) = *(v374 + v375 + 14) << 16;
                          v415 = v411 + COERCE_FLOAT((COERCE_INT(v413 * v414) + (HIWORD(COERCE_UNSIGNED_INT(v413 * v414)) & 1) + 0x7FFF) & 0xFFFF0000);
                          v373 = (LODWORD(v415) + (HIWORD(LODWORD(v415)) & 1u) + 0x7FFF) >> 16;
                          v370 += 3;
                          v375 += 16;
                        }

                        while (v375 != 128);
                        ++v369;
                        ++v371;
                        v374 += 128;
                        v372 += 64;
                      }

                      while (v372 < a8);
                    }

                    *v888++ = v373;
                    v368 = v880 + 1;
                  }

                  while (v880 + 1 != a7);
                }

                a2 = (v894 + 2 * v852);
                v367 = v864 + 1;
              }

              while (v864 + 1 != a6);
            }
          }

          else if (a6 >= 1)
          {
            v719 = 0;
            v857 = 2 * a7;
            v869 = a7;
            do
            {
              if (a7 >= 1)
              {
                bzero(v888, v857);
              }

              v885 = v719;
              v902 = a2;
              if (a8 >= 1)
              {
                v720 = 0;
                v722 = a3;
                v721 = a4;
                v723 = a5;
                do
                {
                  if (a7 >= 1)
                  {
                    v724 = 0;
                    v725 = v888;
                    LODWORD(v726) = *v902 << 16;
                    do
                    {
                      LODWORD(v727) = *v721 << 16;
                      LODWORD(v728) = *v723 << 16;
                      v729 = 8;
                      do
                      {
                        LODWORD(v730) = (COERCE_INT(v727 * COERCE_FLOAT(v905 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v727 * COERCE_FLOAT(v905 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v731) = (COERCE_INT(v730 + v728) + (HIWORD(COERCE_UNSIGNED_INT(v730 + v728)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v732) = (COERCE_INT(v731 * v726) + (HIWORD(COERCE_UNSIGNED_INT(v731 * v726)) & 1) + 0x7FFF) & 0xFFFF0000;
                        *v725 = (COERCE_INT(v732 + COERCE_FLOAT(*v725 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v732 + COERCE_FLOAT(*v725 << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v733) = (COERCE_INT(v727 * COERCE_FLOAT(v906 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v727 * COERCE_FLOAT(v906 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v734) = (COERCE_INT(v733 + v728) + (HIWORD(COERCE_UNSIGNED_INT(v733 + v728)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v735) = (COERCE_INT(v734 * v726) + (HIWORD(COERCE_UNSIGNED_INT(v734 * v726)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v725[1] = (COERCE_INT(v735 + COERCE_FLOAT(v725[1] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v735 + COERCE_FLOAT(v725[1] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v736) = (COERCE_INT(v727 * COERCE_FLOAT(v907 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v727 * COERCE_FLOAT(v907 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v737) = (COERCE_INT(v736 + v728) + (HIWORD(COERCE_UNSIGNED_INT(v736 + v728)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v738) = (COERCE_INT(v737 * v726) + (HIWORD(COERCE_UNSIGNED_INT(v737 * v726)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v725[2] = (COERCE_INT(v738 + COERCE_FLOAT(v725[2] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v738 + COERCE_FLOAT(v725[2] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v739) = (COERCE_INT(v727 * COERCE_FLOAT(v908 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v727 * COERCE_FLOAT(v908 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v740) = (COERCE_INT(v739 + v728) + (HIWORD(COERCE_UNSIGNED_INT(v739 + v728)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v741) = (COERCE_INT(v740 * v726) + (HIWORD(COERCE_UNSIGNED_INT(v740 * v726)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v725[3] = (COERCE_INT(v741 + COERCE_FLOAT(v725[3] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v741 + COERCE_FLOAT(v725[3] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v742) = (COERCE_INT(v727 * COERCE_FLOAT(v909 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v727 * COERCE_FLOAT(v909 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v743) = (COERCE_INT(v742 + v728) + (HIWORD(COERCE_UNSIGNED_INT(v742 + v728)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v744) = (COERCE_INT(v743 * v726) + (HIWORD(COERCE_UNSIGNED_INT(v743 * v726)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v725[4] = (COERCE_INT(v744 + COERCE_FLOAT(v725[4] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v744 + COERCE_FLOAT(v725[4] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v745) = (COERCE_INT(v727 * COERCE_FLOAT(v910 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v727 * COERCE_FLOAT(v910 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v746) = (COERCE_INT(v745 + v728) + (HIWORD(COERCE_UNSIGNED_INT(v745 + v728)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v747) = (COERCE_INT(v746 * v726) + (HIWORD(COERCE_UNSIGNED_INT(v746 * v726)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v725[5] = (COERCE_INT(v747 + COERCE_FLOAT(v725[5] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v747 + COERCE_FLOAT(v725[5] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v748) = (COERCE_INT(v727 * COERCE_FLOAT(v911 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v727 * COERCE_FLOAT(v911 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v749) = (COERCE_INT(v748 + v728) + (HIWORD(COERCE_UNSIGNED_INT(v748 + v728)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v750) = (COERCE_INT(v749 * v726) + (HIWORD(COERCE_UNSIGNED_INT(v749 * v726)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v725[6] = (COERCE_INT(v750 + COERCE_FLOAT(v725[6] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v750 + COERCE_FLOAT(v725[6] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v751) = (COERCE_INT(v727 * COERCE_FLOAT(v912 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v727 * COERCE_FLOAT(v912 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v752) = (COERCE_INT(v751 + v728) + (HIWORD(COERCE_UNSIGNED_INT(v751 + v728)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v753 = COERCE_FLOAT((COERCE_INT(v752 * v726) + (HIWORD(COERCE_UNSIGNED_INT(v752 * v726)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v725[7] << 16);
                        v754 = v725 + 8;
                        v725[7] = (LODWORD(v753) + (HIWORD(LODWORD(v753)) & 1u) + 0x7FFF) >> 16;
                        v722 += 3;
                        v725 += 8;
                        --v729;
                      }

                      while (v729);
                      ++v721;
                      ++v723;
                      v724 += 64;
                      v725 = v754;
                    }

                    while (v724 < a7);
                  }

                  ++v902;
                  ++v720;
                }

                while (v720 != a8);
              }

              a2 = v902;
              v888 += v869;
              v719 = v885 + 1;
            }

            while (v885 + 1 != a6);
          }

          goto LABEL_456;
        case 32:
          if (a14)
          {
            if (a6 >= 1)
            {
              v33 = 0;
              v848 = a8;
              do
              {
                v860 = v33;
                v890 = a2;
                if (a7 >= 1)
                {
                  v34 = 0;
                  v36 = a3;
                  v35 = a4;
                  v37 = a5;
                  do
                  {
                    v876 = v34;
                    if (a8 < 1)
                    {
                      LOWORD(v39) = 0;
                    }

                    else
                    {
                      v38 = 0;
                      v39 = 0;
                      v40 = v890;
                      do
                      {
                        v41 = 0;
                        LODWORD(v42) = *v35 << 16;
                        LODWORD(v43) = *v37 << 16;
                        do
                        {
                          LODWORD(v44) = (COERCE_INT(v42 * COERCE_FLOAT(v905 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v42 * COERCE_FLOAT(v905 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v45) = (COERCE_INT(v44 + v43) + (HIWORD(COERCE_UNSIGNED_INT(v44 + v43)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v46) = (COERCE_INT(v45 * COERCE_FLOAT(*(v40 + v41) << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v45 * COERCE_FLOAT(*(v40 + v41) << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v47) = (COERCE_INT(v46 + COERCE_FLOAT(v39 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v46 + COERCE_FLOAT(v39 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v48) = (COERCE_INT(v42 * COERCE_FLOAT(v906 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v42 * COERCE_FLOAT(v906 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v49) = (COERCE_INT(v48 + v43) + (HIWORD(COERCE_UNSIGNED_INT(v48 + v43)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v50) = *(v40 + v41 + 2) << 16;
                          LODWORD(v51) = (COERCE_INT(v49 * v50) + (HIWORD(COERCE_UNSIGNED_INT(v49 * v50)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v52) = (COERCE_INT(v47 + v51) + (HIWORD(COERCE_UNSIGNED_INT(v47 + v51)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v53) = (COERCE_INT(v42 * COERCE_FLOAT(v907 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v42 * COERCE_FLOAT(v907 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v54) = (COERCE_INT(v53 + v43) + (HIWORD(COERCE_UNSIGNED_INT(v53 + v43)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v55) = *(v40 + v41 + 4) << 16;
                          LODWORD(v56) = (COERCE_INT(v54 * v55) + (HIWORD(COERCE_UNSIGNED_INT(v54 * v55)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v57) = (COERCE_INT(v52 + v56) + (HIWORD(COERCE_UNSIGNED_INT(v52 + v56)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v58) = (COERCE_INT(v42 * COERCE_FLOAT(v908 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v42 * COERCE_FLOAT(v908 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v59) = (COERCE_INT(v58 + v43) + (HIWORD(COERCE_UNSIGNED_INT(v58 + v43)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v60) = *(v40 + v41 + 6) << 16;
                          LODWORD(v61) = (COERCE_INT(v59 * v60) + (HIWORD(COERCE_UNSIGNED_INT(v59 * v60)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v62) = (COERCE_INT(v57 + v61) + (HIWORD(COERCE_UNSIGNED_INT(v57 + v61)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v63) = (COERCE_INT(v42 * COERCE_FLOAT(v909 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v42 * COERCE_FLOAT(v909 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v64) = (COERCE_INT(v63 + v43) + (HIWORD(COERCE_UNSIGNED_INT(v63 + v43)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v65) = *(v40 + v41 + 8) << 16;
                          LODWORD(v66) = (COERCE_INT(v64 * v65) + (HIWORD(COERCE_UNSIGNED_INT(v64 * v65)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v67) = (COERCE_INT(v62 + v66) + (HIWORD(COERCE_UNSIGNED_INT(v62 + v66)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v68) = (COERCE_INT(v42 * COERCE_FLOAT(v910 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v42 * COERCE_FLOAT(v910 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v69) = (COERCE_INT(v68 + v43) + (HIWORD(COERCE_UNSIGNED_INT(v68 + v43)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v70) = *(v40 + v41 + 10) << 16;
                          LODWORD(v71) = (COERCE_INT(v69 * v70) + (HIWORD(COERCE_UNSIGNED_INT(v69 * v70)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v72) = (COERCE_INT(v67 + v71) + (HIWORD(COERCE_UNSIGNED_INT(v67 + v71)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v73) = (COERCE_INT(v42 * COERCE_FLOAT(v911 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v42 * COERCE_FLOAT(v911 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v74) = (COERCE_INT(v73 + v43) + (HIWORD(COERCE_UNSIGNED_INT(v73 + v43)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v75) = *(v40 + v41 + 12) << 16;
                          LODWORD(v76) = (COERCE_INT(v74 * v75) + (HIWORD(COERCE_UNSIGNED_INT(v74 * v75)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v77) = (COERCE_INT(v72 + v76) + (HIWORD(COERCE_UNSIGNED_INT(v72 + v76)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v78) = (COERCE_INT(v42 * COERCE_FLOAT(v912 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v42 * COERCE_FLOAT(v912 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v79) = (COERCE_INT(v78 + v43) + (HIWORD(COERCE_UNSIGNED_INT(v78 + v43)) & 1) + 0x7FFF) & 0xFFFF0000;
                          LODWORD(v80) = *(v40 + v41 + 14) << 16;
                          v81 = v77 + COERCE_FLOAT((COERCE_INT(v79 * v80) + (HIWORD(COERCE_UNSIGNED_INT(v79 * v80)) & 1) + 0x7FFF) & 0xFFFF0000);
                          v39 = (LODWORD(v81) + (HIWORD(LODWORD(v81)) & 1u) + 0x7FFF) >> 16;
                          v36 += 3;
                          v41 += 16;
                        }

                        while (v41 != 64);
                        ++v35;
                        ++v37;
                        v40 += 64;
                        v38 += 32;
                      }

                      while (v38 < a8);
                    }

                    *v888++ = v39;
                    v34 = v876 + 1;
                  }

                  while (v876 + 1 != a7);
                }

                a2 = (v890 + 2 * v848);
                v33 = v860 + 1;
              }

              while (v860 + 1 != a6);
            }
          }

          else if (a6 >= 1)
          {
            v807 = 0;
            v859 = 2 * a7;
            v871 = a7;
            do
            {
              if (a7 >= 1)
              {
                bzero(v888, v859);
              }

              v887 = v807;
              v904 = a2;
              if (a8 >= 1)
              {
                v808 = 0;
                v810 = a3;
                v809 = a4;
                v811 = a5;
                do
                {
                  if (a7 >= 1)
                  {
                    v812 = 0;
                    v813 = v888;
                    LODWORD(v814) = *v904 << 16;
                    do
                    {
                      LODWORD(v815) = *v809 << 16;
                      LODWORD(v816) = *v811 << 16;
                      v817 = 4;
                      do
                      {
                        LODWORD(v818) = (COERCE_INT(v815 * COERCE_FLOAT(v905 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v815 * COERCE_FLOAT(v905 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v819) = (COERCE_INT(v818 + v816) + (HIWORD(COERCE_UNSIGNED_INT(v818 + v816)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v820) = (COERCE_INT(v819 * v814) + (HIWORD(COERCE_UNSIGNED_INT(v819 * v814)) & 1) + 0x7FFF) & 0xFFFF0000;
                        *v813 = (COERCE_INT(v820 + COERCE_FLOAT(*v813 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v820 + COERCE_FLOAT(*v813 << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v821) = (COERCE_INT(v815 * COERCE_FLOAT(v906 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v815 * COERCE_FLOAT(v906 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v822) = (COERCE_INT(v821 + v816) + (HIWORD(COERCE_UNSIGNED_INT(v821 + v816)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v823) = (COERCE_INT(v822 * v814) + (HIWORD(COERCE_UNSIGNED_INT(v822 * v814)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v813[1] = (COERCE_INT(v823 + COERCE_FLOAT(v813[1] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v823 + COERCE_FLOAT(v813[1] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v824) = (COERCE_INT(v815 * COERCE_FLOAT(v907 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v815 * COERCE_FLOAT(v907 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v825) = (COERCE_INT(v824 + v816) + (HIWORD(COERCE_UNSIGNED_INT(v824 + v816)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v826) = (COERCE_INT(v825 * v814) + (HIWORD(COERCE_UNSIGNED_INT(v825 * v814)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v813[2] = (COERCE_INT(v826 + COERCE_FLOAT(v813[2] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v826 + COERCE_FLOAT(v813[2] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v827) = (COERCE_INT(v815 * COERCE_FLOAT(v908 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v815 * COERCE_FLOAT(v908 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v828) = (COERCE_INT(v827 + v816) + (HIWORD(COERCE_UNSIGNED_INT(v827 + v816)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v829) = (COERCE_INT(v828 * v814) + (HIWORD(COERCE_UNSIGNED_INT(v828 * v814)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v813[3] = (COERCE_INT(v829 + COERCE_FLOAT(v813[3] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v829 + COERCE_FLOAT(v813[3] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v830) = (COERCE_INT(v815 * COERCE_FLOAT(v909 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v815 * COERCE_FLOAT(v909 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v831) = (COERCE_INT(v830 + v816) + (HIWORD(COERCE_UNSIGNED_INT(v830 + v816)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v832) = (COERCE_INT(v831 * v814) + (HIWORD(COERCE_UNSIGNED_INT(v831 * v814)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v813[4] = (COERCE_INT(v832 + COERCE_FLOAT(v813[4] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v832 + COERCE_FLOAT(v813[4] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v833) = (COERCE_INT(v815 * COERCE_FLOAT(v910 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v815 * COERCE_FLOAT(v910 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v834) = (COERCE_INT(v833 + v816) + (HIWORD(COERCE_UNSIGNED_INT(v833 + v816)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v835) = (COERCE_INT(v834 * v814) + (HIWORD(COERCE_UNSIGNED_INT(v834 * v814)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v813[5] = (COERCE_INT(v835 + COERCE_FLOAT(v813[5] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v835 + COERCE_FLOAT(v813[5] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v836) = (COERCE_INT(v815 * COERCE_FLOAT(v911 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v815 * COERCE_FLOAT(v911 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v837) = (COERCE_INT(v836 + v816) + (HIWORD(COERCE_UNSIGNED_INT(v836 + v816)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v838) = (COERCE_INT(v837 * v814) + (HIWORD(COERCE_UNSIGNED_INT(v837 * v814)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v813[6] = (COERCE_INT(v838 + COERCE_FLOAT(v813[6] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v838 + COERCE_FLOAT(v813[6] << 16))) & 1) + 0x7FFF) >> 16;
                        LODWORD(v839) = (COERCE_INT(v815 * COERCE_FLOAT(v912 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v815 * COERCE_FLOAT(v912 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v840) = (COERCE_INT(v839 + v816) + (HIWORD(COERCE_UNSIGNED_INT(v839 + v816)) & 1) + 0x7FFF) & 0xFFFF0000;
                        v841 = COERCE_FLOAT((COERCE_INT(v840 * v814) + (HIWORD(COERCE_UNSIGNED_INT(v840 * v814)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v813[7] << 16);
                        v842 = v813 + 8;
                        v813[7] = (LODWORD(v841) + (HIWORD(LODWORD(v841)) & 1u) + 0x7FFF) >> 16;
                        v810 += 3;
                        v813 += 8;
                        --v817;
                      }

                      while (v817);
                      ++v809;
                      ++v811;
                      v812 += 32;
                      v813 = v842;
                    }

                    while (v812 < a7);
                  }

                  ++v904;
                  ++v808;
                }

                while (v808 != a8);
              }

              a2 = v904;
              v888 += v871;
              v807 = v887 + 1;
            }

            while (v887 + 1 != a6);
          }

          goto LABEL_456;
      }
    }

LABEL_458:
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Quantization group size must be 32, 64 or 128.");
LABEL_459:
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  if (a13 == 4)
  {
    switch(a12)
    {
      case 128:
        v190 = a1;
        if (a14)
        {
          if (a6 >= 1)
          {
            for (jj = 0; jj != a6; ++jj)
            {
              if (a7 >= 1)
              {
                v192 = 0;
                v193 = a3;
                v194 = a4;
                v195 = a5;
                do
                {
                  if (a8 < 1)
                  {
                    LOWORD(v197) = 0;
                  }

                  else
                  {
                    v196 = 0;
                    v197 = 0;
                    v198 = a2;
                    do
                    {
                      v199 = 0;
                      LODWORD(v200) = *v194 << 16;
                      LODWORD(v201) = *v195 << 16;
                      v202 = v198;
                      do
                      {
                        v203 = v193[v199];
                        v204 = v200 * COERCE_FLOAT((COERCE_INT((v203 & 0xF)) + (HIWORD(COERCE_UNSIGNED_INT((v203 & 0xF))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v205) = (LODWORD(v204) + (HIWORD(LODWORD(v204)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v206) = (COERCE_INT(v205 + v201) + (HIWORD(COERCE_UNSIGNED_INT(v205 + v201)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v207) = (COERCE_INT(v206 * COERCE_FLOAT(*v202 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v206 * COERCE_FLOAT(*v202 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v208) = (COERCE_INT(v207 + COERCE_FLOAT(v197 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v207 + COERCE_FLOAT(v197 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        v209 = v200 * COERCE_FLOAT((COERCE_INT((v203 >> 4)) + (HIWORD(COERCE_UNSIGNED_INT((v203 >> 4))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v210) = (LODWORD(v209) + (HIWORD(LODWORD(v209)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v211) = (COERCE_INT(v210 + v201) + (HIWORD(COERCE_UNSIGNED_INT(v210 + v201)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v212) = (COERCE_INT(v211 * COERCE_FLOAT(v202[1] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v211 * COERCE_FLOAT(v202[1] << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        v197 = (COERCE_INT(v208 + v212) + (HIWORD(COERCE_UNSIGNED_INT(v208 + v212)) & 1) + 0x7FFF) >> 16;
                        v202 += 2;
                        ++v199;
                      }

                      while (v199 != 64);
                      v193 += 64;
                      ++v194;
                      ++v195;
                      v198 += 128;
                      v196 += 128;
                    }

                    while (v196 < a8);
                  }

                  *v190++ = v197;
                  ++v192;
                }

                while (v192 != a7);
              }

              a2 += a8;
            }
          }
        }

        else if (a6 >= 1)
        {
          v486 = 0;
          v897 = 2 * a7;
          do
          {
            if (a7 >= 1)
            {
              bzero(v190, v897);
            }

            if (a8 >= 1)
            {
              v487 = 0;
              v488 = a3;
              v489 = a4;
              v490 = a5;
              do
              {
                if (a7 >= 1)
                {
                  v491 = 0;
                  LODWORD(v492) = *a2 << 16;
                  v493 = v190;
                  do
                  {
                    LODWORD(v494) = *v489 << 16;
                    LODWORD(v495) = *v490 << 16;
                    v496 = 64;
                    do
                    {
                      v497 = *v488;
                      v498 = v494 * COERCE_FLOAT((COERCE_INT((v497 & 0xF)) + (HIWORD(COERCE_UNSIGNED_INT((v497 & 0xF))) & 1) + 0x7FFF) & 0xFFFF0000);
                      LODWORD(v499) = (LODWORD(v498) + (HIWORD(LODWORD(v498)) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v500) = (COERCE_INT(v499 + v495) + (HIWORD(COERCE_UNSIGNED_INT(v499 + v495)) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v501) = (COERCE_INT(v500 * v492) + (HIWORD(COERCE_UNSIGNED_INT(v500 * v492)) & 1) + 0x7FFF) & 0xFFFF0000;
                      *v493 = (COERCE_INT(v501 + COERCE_FLOAT(*v493 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v501 + COERCE_FLOAT(*v493 << 16))) & 1) + 0x7FFF) >> 16;
                      v502 = v494 * COERCE_FLOAT((COERCE_INT((v497 >> 4)) + (HIWORD(COERCE_UNSIGNED_INT((v497 >> 4))) & 1) + 0x7FFF) & 0xFFFF0000);
                      LODWORD(v503) = (LODWORD(v502) + (HIWORD(LODWORD(v502)) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v504) = (COERCE_INT(v503 + v495) + (HIWORD(COERCE_UNSIGNED_INT(v503 + v495)) & 1) + 0x7FFF) & 0xFFFF0000;
                      v505 = COERCE_FLOAT((COERCE_INT(v504 * v492) + (HIWORD(COERCE_UNSIGNED_INT(v504 * v492)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v493[1] << 16);
                      v506 = v493 + 2;
                      v493[1] = (LODWORD(v505) + (HIWORD(LODWORD(v505)) & 1u) + 0x7FFF) >> 16;
                      ++v488;
                      v493 += 2;
                      --v496;
                    }

                    while (v496);
                    ++v489;
                    ++v490;
                    v491 += 128;
                    v493 = v506;
                  }

                  while (v491 < a7);
                }

                ++a2;
                ++v487;
              }

              while (v487 != a8);
            }

            v190 += a7;
            ++v486;
          }

          while (v486 != a6);
        }

        goto LABEL_456;
      case 64:
        v167 = a1;
        if (a14)
        {
          if (a6 >= 1)
          {
            for (kk = 0; kk != a6; ++kk)
            {
              if (a7 >= 1)
              {
                v169 = 0;
                v170 = a3;
                v171 = a4;
                v172 = a5;
                do
                {
                  if (a8 < 1)
                  {
                    LOWORD(v174) = 0;
                  }

                  else
                  {
                    v173 = 0;
                    v174 = 0;
                    v175 = a2;
                    do
                    {
                      v176 = 0;
                      LODWORD(v177) = *v171 << 16;
                      LODWORD(v178) = *v172 << 16;
                      v179 = v175;
                      do
                      {
                        v180 = v170[v176];
                        v181 = v177 * COERCE_FLOAT((COERCE_INT((v180 & 0xF)) + (HIWORD(COERCE_UNSIGNED_INT((v180 & 0xF))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v182) = (LODWORD(v181) + (HIWORD(LODWORD(v181)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v183) = (COERCE_INT(v182 + v178) + (HIWORD(COERCE_UNSIGNED_INT(v182 + v178)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v184) = (COERCE_INT(v183 * COERCE_FLOAT(*v179 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v183 * COERCE_FLOAT(*v179 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v185) = (COERCE_INT(v184 + COERCE_FLOAT(v174 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v184 + COERCE_FLOAT(v174 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        v186 = v177 * COERCE_FLOAT((COERCE_INT((v180 >> 4)) + (HIWORD(COERCE_UNSIGNED_INT((v180 >> 4))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v187) = (LODWORD(v186) + (HIWORD(LODWORD(v186)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v188) = (COERCE_INT(v187 + v178) + (HIWORD(COERCE_UNSIGNED_INT(v187 + v178)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v189) = (COERCE_INT(v188 * COERCE_FLOAT(v179[1] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v188 * COERCE_FLOAT(v179[1] << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        v174 = (COERCE_INT(v185 + v189) + (HIWORD(COERCE_UNSIGNED_INT(v185 + v189)) & 1) + 0x7FFF) >> 16;
                        v179 += 2;
                        ++v176;
                      }

                      while (v176 != 32);
                      v170 += 32;
                      ++v171;
                      ++v172;
                      v175 += 64;
                      v173 += 64;
                    }

                    while (v173 < a8);
                  }

                  *v167++ = v174;
                  ++v169;
                }

                while (v169 != a7);
              }

              a2 += a8;
            }
          }
        }

        else if (a6 >= 1)
        {
          v465 = 0;
          v896 = 2 * a7;
          do
          {
            if (a7 >= 1)
            {
              bzero(v167, v896);
            }

            if (a8 >= 1)
            {
              v466 = 0;
              v467 = a3;
              v468 = a4;
              v469 = a5;
              do
              {
                if (a7 >= 1)
                {
                  v470 = 0;
                  LODWORD(v471) = *a2 << 16;
                  v472 = v167;
                  do
                  {
                    LODWORD(v473) = *v468 << 16;
                    LODWORD(v474) = *v469 << 16;
                    v475 = 32;
                    do
                    {
                      v476 = *v467;
                      v477 = v473 * COERCE_FLOAT((COERCE_INT((v476 & 0xF)) + (HIWORD(COERCE_UNSIGNED_INT((v476 & 0xF))) & 1) + 0x7FFF) & 0xFFFF0000);
                      LODWORD(v478) = (LODWORD(v477) + (HIWORD(LODWORD(v477)) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v479) = (COERCE_INT(v478 + v474) + (HIWORD(COERCE_UNSIGNED_INT(v478 + v474)) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v480) = (COERCE_INT(v479 * v471) + (HIWORD(COERCE_UNSIGNED_INT(v479 * v471)) & 1) + 0x7FFF) & 0xFFFF0000;
                      *v472 = (COERCE_INT(v480 + COERCE_FLOAT(*v472 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v480 + COERCE_FLOAT(*v472 << 16))) & 1) + 0x7FFF) >> 16;
                      v481 = v473 * COERCE_FLOAT((COERCE_INT((v476 >> 4)) + (HIWORD(COERCE_UNSIGNED_INT((v476 >> 4))) & 1) + 0x7FFF) & 0xFFFF0000);
                      LODWORD(v482) = (LODWORD(v481) + (HIWORD(LODWORD(v481)) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v483) = (COERCE_INT(v482 + v474) + (HIWORD(COERCE_UNSIGNED_INT(v482 + v474)) & 1) + 0x7FFF) & 0xFFFF0000;
                      v484 = COERCE_FLOAT((COERCE_INT(v483 * v471) + (HIWORD(COERCE_UNSIGNED_INT(v483 * v471)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v472[1] << 16);
                      v485 = v472 + 2;
                      v472[1] = (LODWORD(v484) + (HIWORD(LODWORD(v484)) & 1u) + 0x7FFF) >> 16;
                      ++v467;
                      v472 += 2;
                      --v475;
                    }

                    while (v475);
                    ++v468;
                    ++v469;
                    v470 += 64;
                    v472 = v485;
                  }

                  while (v470 < a7);
                }

                ++a2;
                ++v466;
              }

              while (v466 != a8);
            }

            v167 += a7;
            ++v465;
          }

          while (v465 != a6);
        }

        goto LABEL_456;
      case 32:
        v82 = a1;
        if (a14)
        {
          if (a6 >= 1)
          {
            for (mm = 0; mm != a6; ++mm)
            {
              if (a7 >= 1)
              {
                v84 = 0;
                v85 = a3;
                v86 = a4;
                v87 = a5;
                do
                {
                  if (a8 < 1)
                  {
                    LOWORD(v89) = 0;
                  }

                  else
                  {
                    v88 = 0;
                    v89 = 0;
                    v90 = a2;
                    do
                    {
                      v91 = 0;
                      LODWORD(v92) = *v86 << 16;
                      LODWORD(v93) = *v87 << 16;
                      v94 = v90;
                      do
                      {
                        v95 = v85[v91];
                        v96 = v92 * COERCE_FLOAT((COERCE_INT((v95 & 0xF)) + (HIWORD(COERCE_UNSIGNED_INT((v95 & 0xF))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v97) = (LODWORD(v96) + (HIWORD(LODWORD(v96)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v98) = (COERCE_INT(v97 + v93) + (HIWORD(COERCE_UNSIGNED_INT(v97 + v93)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v99) = (COERCE_INT(v98 * COERCE_FLOAT(*v94 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v98 * COERCE_FLOAT(*v94 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v100) = (COERCE_INT(v99 + COERCE_FLOAT(v89 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v99 + COERCE_FLOAT(v89 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        v101 = v92 * COERCE_FLOAT((COERCE_INT((v95 >> 4)) + (HIWORD(COERCE_UNSIGNED_INT((v95 >> 4))) & 1) + 0x7FFF) & 0xFFFF0000);
                        LODWORD(v102) = (LODWORD(v101) + (HIWORD(LODWORD(v101)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v103) = (COERCE_INT(v102 + v93) + (HIWORD(COERCE_UNSIGNED_INT(v102 + v93)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v104) = (COERCE_INT(v103 * COERCE_FLOAT(v94[1] << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v103 * COERCE_FLOAT(v94[1] << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        v89 = (COERCE_INT(v100 + v104) + (HIWORD(COERCE_UNSIGNED_INT(v100 + v104)) & 1) + 0x7FFF) >> 16;
                        v94 += 2;
                        ++v91;
                      }

                      while (v91 != 16);
                      v85 += 16;
                      ++v86;
                      ++v87;
                      v90 += 32;
                      v88 += 32;
                    }

                    while (v88 < a8);
                  }

                  *v82++ = v89;
                  ++v84;
                }

                while (v84 != a7);
              }

              a2 += a8;
            }
          }
        }

        else if (a6 >= 1)
        {
          v531 = 0;
          v899 = 2 * a7;
          do
          {
            if (a7 >= 1)
            {
              bzero(v82, v899);
            }

            if (a8 >= 1)
            {
              v532 = 0;
              v533 = a3;
              v534 = a4;
              v535 = a5;
              do
              {
                if (a7 >= 1)
                {
                  v536 = 0;
                  LODWORD(v537) = *a2 << 16;
                  v538 = v82;
                  do
                  {
                    LODWORD(v539) = *v534 << 16;
                    LODWORD(v540) = *v535 << 16;
                    v541 = 16;
                    do
                    {
                      v542 = *v533;
                      v543 = v539 * COERCE_FLOAT((COERCE_INT((v542 & 0xF)) + (HIWORD(COERCE_UNSIGNED_INT((v542 & 0xF))) & 1) + 0x7FFF) & 0xFFFF0000);
                      LODWORD(v544) = (LODWORD(v543) + (HIWORD(LODWORD(v543)) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v545) = (COERCE_INT(v544 + v540) + (HIWORD(COERCE_UNSIGNED_INT(v544 + v540)) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v546) = (COERCE_INT(v545 * v537) + (HIWORD(COERCE_UNSIGNED_INT(v545 * v537)) & 1) + 0x7FFF) & 0xFFFF0000;
                      *v538 = (COERCE_INT(v546 + COERCE_FLOAT(*v538 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v546 + COERCE_FLOAT(*v538 << 16))) & 1) + 0x7FFF) >> 16;
                      v547 = v539 * COERCE_FLOAT((COERCE_INT((v542 >> 4)) + (HIWORD(COERCE_UNSIGNED_INT((v542 >> 4))) & 1) + 0x7FFF) & 0xFFFF0000);
                      LODWORD(v548) = (LODWORD(v547) + (HIWORD(LODWORD(v547)) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v549) = (COERCE_INT(v548 + v540) + (HIWORD(COERCE_UNSIGNED_INT(v548 + v540)) & 1) + 0x7FFF) & 0xFFFF0000;
                      v550 = COERCE_FLOAT((COERCE_INT(v549 * v537) + (HIWORD(COERCE_UNSIGNED_INT(v549 * v537)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v538[1] << 16);
                      v551 = v538 + 2;
                      v538[1] = (LODWORD(v550) + (HIWORD(LODWORD(v550)) & 1u) + 0x7FFF) >> 16;
                      ++v533;
                      v538 += 2;
                      --v541;
                    }

                    while (v541);
                    ++v534;
                    ++v535;
                    v536 += 32;
                    v538 = v551;
                  }

                  while (v536 < a7);
                }

                ++a2;
                ++v532;
              }

              while (v532 != a8);
            }

            v82 += a7;
            ++v531;
          }

          while (v531 != a6);
        }

        goto LABEL_456;
    }

    goto LABEL_458;
  }

  if (a13 == 6)
  {
    v889 = a1;
    switch(a12)
    {
      case 128:
        if (a14)
        {
          if (a6 >= 1)
          {
            v242 = 0;
            v851 = a8;
            do
            {
              v863 = v242;
              v893 = a2;
              if (a7 >= 1)
              {
                v243 = 0;
                v245 = a3;
                v244 = a4;
                v246 = a5;
                do
                {
                  v879 = v243;
                  if (a8 < 1)
                  {
                    LOWORD(v248) = 0;
                  }

                  else
                  {
                    v247 = 0;
                    v248 = 0;
                    v249 = v893;
                    do
                    {
                      v250 = 0;
                      LODWORD(v251) = *v244 << 16;
                      LODWORD(v252) = *v246 << 16;
                      do
                      {
                        LODWORD(v253) = (COERCE_INT(v251 * COERCE_FLOAT(v905 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v251 * COERCE_FLOAT(v905 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v254) = (COERCE_INT(v253 + v252) + (HIWORD(COERCE_UNSIGNED_INT(v253 + v252)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v255) = (COERCE_INT(v254 * COERCE_FLOAT(*(v249 + v250) << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v254 * COERCE_FLOAT(*(v249 + v250) << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v256) = (COERCE_INT(v255 + COERCE_FLOAT(v248 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v255 + COERCE_FLOAT(v248 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v257) = (COERCE_INT(v251 * COERCE_FLOAT(v906 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v251 * COERCE_FLOAT(v906 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v258) = (COERCE_INT(v257 + v252) + (HIWORD(COERCE_UNSIGNED_INT(v257 + v252)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v259) = *(v249 + v250 + 2) << 16;
                        LODWORD(v260) = (COERCE_INT(v258 * v259) + (HIWORD(COERCE_UNSIGNED_INT(v258 * v259)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v261) = (COERCE_INT(v256 + v260) + (HIWORD(COERCE_UNSIGNED_INT(v256 + v260)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v262) = (COERCE_INT(v251 * COERCE_FLOAT(v907 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v251 * COERCE_FLOAT(v907 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v263) = (COERCE_INT(v262 + v252) + (HIWORD(COERCE_UNSIGNED_INT(v262 + v252)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v264) = *(v249 + v250 + 4) << 16;
                        LODWORD(v265) = (COERCE_INT(v263 * v264) + (HIWORD(COERCE_UNSIGNED_INT(v263 * v264)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v266) = (COERCE_INT(v261 + v265) + (HIWORD(COERCE_UNSIGNED_INT(v261 + v265)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v267) = (COERCE_INT(v251 * COERCE_FLOAT(v908 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v251 * COERCE_FLOAT(v908 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v268) = (COERCE_INT(v267 + v252) + (HIWORD(COERCE_UNSIGNED_INT(v267 + v252)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v269) = *(v249 + v250 + 6) << 16;
                        v270 = v266 + COERCE_FLOAT((COERCE_INT(v268 * v269) + (HIWORD(COERCE_UNSIGNED_INT(v268 * v269)) & 1) + 0x7FFF) & 0xFFFF0000);
                        v248 = (LODWORD(v270) + (HIWORD(LODWORD(v270)) & 1u) + 0x7FFF) >> 16;
                        v245 += 3;
                        v250 += 8;
                      }

                      while (v250 != 256);
                      ++v244;
                      ++v246;
                      v249 += 256;
                      v247 += 128;
                    }

                    while (v247 < a8);
                  }

                  *v889++ = v248;
                  v243 = v879 + 1;
                }

                while (v879 + 1 != a7);
              }

              a2 = (v893 + 2 * v851);
              v242 = v863 + 1;
            }

            while (v863 + 1 != a6);
          }
        }

        else if (a6 >= 1)
        {
          v552 = 0;
          v846 = 2 * a7;
          v855 = a7;
          do
          {
            if (a7 >= 1)
            {
              bzero(v889, v846);
            }

            v867 = v552;
            v900 = a2;
            if (a8 >= 1)
            {
              v553 = 0;
              v555 = a3;
              v554 = a4;
              v556 = a5;
              do
              {
                v883 = v553;
                if (a7 >= 1)
                {
                  v557 = 0;
                  v558 = v889;
                  LODWORD(v559) = *v900 << 16;
                  do
                  {
                    LODWORD(v560) = *v554 << 16;
                    LODWORD(v561) = *v556 << 16;
                    v562 = 32;
                    do
                    {
                      LODWORD(v563) = (COERCE_INT(v560 * COERCE_FLOAT(v905 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v560 * COERCE_FLOAT(v905 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v564) = (COERCE_INT(v563 + v561) + (HIWORD(COERCE_UNSIGNED_INT(v563 + v561)) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v565) = (COERCE_INT(v564 * v559) + (HIWORD(COERCE_UNSIGNED_INT(v564 * v559)) & 1) + 0x7FFF) & 0xFFFF0000;
                      *v558 = (COERCE_INT(v565 + COERCE_FLOAT(*v558 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v565 + COERCE_FLOAT(*v558 << 16))) & 1) + 0x7FFF) >> 16;
                      LODWORD(v566) = (COERCE_INT(v560 * COERCE_FLOAT(v906 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v560 * COERCE_FLOAT(v906 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v567) = (COERCE_INT(v566 + v561) + (HIWORD(COERCE_UNSIGNED_INT(v566 + v561)) & 1) + 0x7FFF) & 0xFFFF0000;
                      v568 = COERCE_FLOAT((COERCE_INT(v567 * v559) + (HIWORD(COERCE_UNSIGNED_INT(v567 * v559)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v558[1] << 16);
                      v558[1] = (LODWORD(v568) + (HIWORD(LODWORD(v568)) & 1u) + 0x7FFF) >> 16;
                      LODWORD(v569) = (COERCE_INT(v560 * COERCE_FLOAT(v907 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v560 * COERCE_FLOAT(v907 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v570) = (COERCE_INT(v569 + v561) + (HIWORD(COERCE_UNSIGNED_INT(v569 + v561)) & 1) + 0x7FFF) & 0xFFFF0000;
                      v571 = COERCE_FLOAT((COERCE_INT(v570 * v559) + (HIWORD(COERCE_UNSIGNED_INT(v570 * v559)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v558[2] << 16);
                      v558[2] = (LODWORD(v571) + (HIWORD(LODWORD(v571)) & 1u) + 0x7FFF) >> 16;
                      LODWORD(v572) = (COERCE_INT(v560 * COERCE_FLOAT(v908 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v560 * COERCE_FLOAT(v908 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v573) = (COERCE_INT(v572 + v561) + (HIWORD(COERCE_UNSIGNED_INT(v572 + v561)) & 1) + 0x7FFF) & 0xFFFF0000;
                      v574 = COERCE_FLOAT((COERCE_INT(v573 * v559) + (HIWORD(COERCE_UNSIGNED_INT(v573 * v559)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v558[3] << 16);
                      v575 = v558 + 4;
                      v558[3] = (LODWORD(v574) + (HIWORD(LODWORD(v574)) & 1u) + 0x7FFF) >> 16;
                      v555 += 3;
                      v558 += 4;
                      --v562;
                    }

                    while (v562);
                    ++v554;
                    ++v556;
                    v557 += 128;
                    v558 = v575;
                  }

                  while (v557 < a7);
                }

                ++v900;
                v553 = v883 + 1;
              }

              while (v883 + 1 != a8);
            }

            a2 = v900;
            v889 += v855;
            v552 = v867 + 1;
          }

          while (v867 + 1 != a6);
        }

        goto LABEL_456;
      case 64:
        if (a14)
        {
          if (a6 >= 1)
          {
            v213 = 0;
            v850 = a8;
            do
            {
              v862 = v213;
              v892 = a2;
              if (a7 >= 1)
              {
                v214 = 0;
                v216 = a3;
                v215 = a4;
                v217 = a5;
                do
                {
                  v878 = v214;
                  if (a8 < 1)
                  {
                    LOWORD(v219) = 0;
                  }

                  else
                  {
                    v218 = 0;
                    v219 = 0;
                    v220 = v892;
                    do
                    {
                      v221 = 0;
                      LODWORD(v222) = *v215 << 16;
                      LODWORD(v223) = *v217 << 16;
                      do
                      {
                        LODWORD(v224) = (COERCE_INT(v222 * COERCE_FLOAT(v905 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v222 * COERCE_FLOAT(v905 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v225) = (COERCE_INT(v224 + v223) + (HIWORD(COERCE_UNSIGNED_INT(v224 + v223)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v226) = (COERCE_INT(v225 * COERCE_FLOAT(*(v220 + v221) << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v225 * COERCE_FLOAT(*(v220 + v221) << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v227) = (COERCE_INT(v226 + COERCE_FLOAT(v219 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v226 + COERCE_FLOAT(v219 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v228) = (COERCE_INT(v222 * COERCE_FLOAT(v906 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v222 * COERCE_FLOAT(v906 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v229) = (COERCE_INT(v228 + v223) + (HIWORD(COERCE_UNSIGNED_INT(v228 + v223)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v230) = *(v220 + v221 + 2) << 16;
                        LODWORD(v231) = (COERCE_INT(v229 * v230) + (HIWORD(COERCE_UNSIGNED_INT(v229 * v230)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v232) = (COERCE_INT(v227 + v231) + (HIWORD(COERCE_UNSIGNED_INT(v227 + v231)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v233) = (COERCE_INT(v222 * COERCE_FLOAT(v907 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v222 * COERCE_FLOAT(v907 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v234) = (COERCE_INT(v233 + v223) + (HIWORD(COERCE_UNSIGNED_INT(v233 + v223)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v235) = *(v220 + v221 + 4) << 16;
                        LODWORD(v236) = (COERCE_INT(v234 * v235) + (HIWORD(COERCE_UNSIGNED_INT(v234 * v235)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v237) = (COERCE_INT(v232 + v236) + (HIWORD(COERCE_UNSIGNED_INT(v232 + v236)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v238) = (COERCE_INT(v222 * COERCE_FLOAT(v908 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v222 * COERCE_FLOAT(v908 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v239) = (COERCE_INT(v238 + v223) + (HIWORD(COERCE_UNSIGNED_INT(v238 + v223)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v240) = *(v220 + v221 + 6) << 16;
                        v241 = v237 + COERCE_FLOAT((COERCE_INT(v239 * v240) + (HIWORD(COERCE_UNSIGNED_INT(v239 * v240)) & 1) + 0x7FFF) & 0xFFFF0000);
                        v219 = (LODWORD(v241) + (HIWORD(LODWORD(v241)) & 1u) + 0x7FFF) >> 16;
                        v216 += 3;
                        v221 += 8;
                      }

                      while (v221 != 128);
                      ++v215;
                      ++v217;
                      v220 += 128;
                      v218 += 64;
                    }

                    while (v218 < a8);
                  }

                  *v889++ = v219;
                  v214 = v878 + 1;
                }

                while (v878 + 1 != a7);
              }

              a2 = (v892 + 2 * v850);
              v213 = v862 + 1;
            }

            while (v862 + 1 != a6);
          }
        }

        else if (a6 >= 1)
        {
          v507 = 0;
          v845 = 2 * a7;
          v854 = a7;
          do
          {
            if (a7 >= 1)
            {
              bzero(v889, v845);
            }

            v866 = v507;
            v898 = a2;
            if (a8 >= 1)
            {
              v508 = 0;
              v510 = a3;
              v509 = a4;
              v511 = a5;
              do
              {
                v882 = v508;
                if (a7 >= 1)
                {
                  v512 = 0;
                  v513 = v889;
                  LODWORD(v514) = *v898 << 16;
                  do
                  {
                    LODWORD(v515) = *v509 << 16;
                    LODWORD(v516) = *v511 << 16;
                    v517 = 16;
                    do
                    {
                      LODWORD(v518) = (COERCE_INT(v515 * COERCE_FLOAT(v905 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v515 * COERCE_FLOAT(v905 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v519) = (COERCE_INT(v518 + v516) + (HIWORD(COERCE_UNSIGNED_INT(v518 + v516)) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v520) = (COERCE_INT(v519 * v514) + (HIWORD(COERCE_UNSIGNED_INT(v519 * v514)) & 1) + 0x7FFF) & 0xFFFF0000;
                      *v513 = (COERCE_INT(v520 + COERCE_FLOAT(*v513 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v520 + COERCE_FLOAT(*v513 << 16))) & 1) + 0x7FFF) >> 16;
                      LODWORD(v521) = (COERCE_INT(v515 * COERCE_FLOAT(v906 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v515 * COERCE_FLOAT(v906 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v522) = (COERCE_INT(v521 + v516) + (HIWORD(COERCE_UNSIGNED_INT(v521 + v516)) & 1) + 0x7FFF) & 0xFFFF0000;
                      v523 = COERCE_FLOAT((COERCE_INT(v522 * v514) + (HIWORD(COERCE_UNSIGNED_INT(v522 * v514)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v513[1] << 16);
                      v513[1] = (LODWORD(v523) + (HIWORD(LODWORD(v523)) & 1u) + 0x7FFF) >> 16;
                      LODWORD(v524) = (COERCE_INT(v515 * COERCE_FLOAT(v907 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v515 * COERCE_FLOAT(v907 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v525) = (COERCE_INT(v524 + v516) + (HIWORD(COERCE_UNSIGNED_INT(v524 + v516)) & 1) + 0x7FFF) & 0xFFFF0000;
                      v526 = COERCE_FLOAT((COERCE_INT(v525 * v514) + (HIWORD(COERCE_UNSIGNED_INT(v525 * v514)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v513[2] << 16);
                      v513[2] = (LODWORD(v526) + (HIWORD(LODWORD(v526)) & 1u) + 0x7FFF) >> 16;
                      LODWORD(v527) = (COERCE_INT(v515 * COERCE_FLOAT(v908 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v515 * COERCE_FLOAT(v908 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v528) = (COERCE_INT(v527 + v516) + (HIWORD(COERCE_UNSIGNED_INT(v527 + v516)) & 1) + 0x7FFF) & 0xFFFF0000;
                      v529 = COERCE_FLOAT((COERCE_INT(v528 * v514) + (HIWORD(COERCE_UNSIGNED_INT(v528 * v514)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v513[3] << 16);
                      v530 = v513 + 4;
                      v513[3] = (LODWORD(v529) + (HIWORD(LODWORD(v529)) & 1u) + 0x7FFF) >> 16;
                      v510 += 3;
                      v513 += 4;
                      --v517;
                    }

                    while (v517);
                    ++v509;
                    ++v511;
                    v512 += 64;
                    v513 = v530;
                  }

                  while (v512 < a7);
                }

                ++v898;
                v508 = v882 + 1;
              }

              while (v882 + 1 != a8);
            }

            a2 = v898;
            v889 += v854;
            v507 = v866 + 1;
          }

          while (v866 + 1 != a6);
        }

        goto LABEL_456;
      case 32:
        if (a14)
        {
          if (a6 >= 1)
          {
            v105 = 0;
            v849 = a8;
            do
            {
              v861 = v105;
              v891 = a2;
              if (a7 >= 1)
              {
                v106 = 0;
                v108 = a3;
                v107 = a4;
                v109 = a5;
                do
                {
                  v877 = v106;
                  if (a8 < 1)
                  {
                    LOWORD(v111) = 0;
                  }

                  else
                  {
                    v110 = 0;
                    v111 = 0;
                    v112 = v891;
                    do
                    {
                      v113 = 0;
                      LODWORD(v114) = *v107 << 16;
                      LODWORD(v115) = *v109 << 16;
                      do
                      {
                        LODWORD(v116) = (COERCE_INT(v114 * COERCE_FLOAT(v905 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v114 * COERCE_FLOAT(v905 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v117) = (COERCE_INT(v116 + v115) + (HIWORD(COERCE_UNSIGNED_INT(v116 + v115)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v118) = (COERCE_INT(v117 * COERCE_FLOAT(*(v112 + v113) << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v117 * COERCE_FLOAT(*(v112 + v113) << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v119) = (COERCE_INT(v118 + COERCE_FLOAT(v111 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v118 + COERCE_FLOAT(v111 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v120) = (COERCE_INT(v114 * COERCE_FLOAT(v906 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v114 * COERCE_FLOAT(v906 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v121) = (COERCE_INT(v120 + v115) + (HIWORD(COERCE_UNSIGNED_INT(v120 + v115)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v122) = *(v112 + v113 + 2) << 16;
                        LODWORD(v123) = (COERCE_INT(v121 * v122) + (HIWORD(COERCE_UNSIGNED_INT(v121 * v122)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v124) = (COERCE_INT(v119 + v123) + (HIWORD(COERCE_UNSIGNED_INT(v119 + v123)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v125) = (COERCE_INT(v114 * COERCE_FLOAT(v907 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v114 * COERCE_FLOAT(v907 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v126) = (COERCE_INT(v125 + v115) + (HIWORD(COERCE_UNSIGNED_INT(v125 + v115)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v127) = *(v112 + v113 + 4) << 16;
                        LODWORD(v128) = (COERCE_INT(v126 * v127) + (HIWORD(COERCE_UNSIGNED_INT(v126 * v127)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v129) = (COERCE_INT(v124 + v128) + (HIWORD(COERCE_UNSIGNED_INT(v124 + v128)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v130) = (COERCE_INT(v114 * COERCE_FLOAT(v908 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v114 * COERCE_FLOAT(v908 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v131) = (COERCE_INT(v130 + v115) + (HIWORD(COERCE_UNSIGNED_INT(v130 + v115)) & 1) + 0x7FFF) & 0xFFFF0000;
                        LODWORD(v132) = *(v112 + v113 + 6) << 16;
                        v133 = v129 + COERCE_FLOAT((COERCE_INT(v131 * v132) + (HIWORD(COERCE_UNSIGNED_INT(v131 * v132)) & 1) + 0x7FFF) & 0xFFFF0000);
                        v111 = (LODWORD(v133) + (HIWORD(LODWORD(v133)) & 1u) + 0x7FFF) >> 16;
                        v108 += 3;
                        v113 += 8;
                      }

                      while (v113 != 64);
                      ++v107;
                      ++v109;
                      v112 += 64;
                      v110 += 32;
                    }

                    while (v110 < a8);
                  }

                  *v889++ = v111;
                  v106 = v877 + 1;
                }

                while (v877 + 1 != a7);
              }

              a2 = (v891 + 2 * v849);
              v105 = v861 + 1;
            }

            while (v861 + 1 != a6);
          }
        }

        else if (a6 >= 1)
        {
          v605 = 0;
          v847 = 2 * a7;
          v856 = a7;
          do
          {
            if (a7 >= 1)
            {
              bzero(v889, v847);
            }

            v868 = v605;
            v901 = a2;
            if (a8 >= 1)
            {
              v606 = 0;
              v608 = a3;
              v607 = a4;
              v609 = a5;
              do
              {
                v884 = v606;
                if (a7 >= 1)
                {
                  v610 = 0;
                  v611 = v889;
                  LODWORD(v612) = *v901 << 16;
                  do
                  {
                    LODWORD(v613) = *v607 << 16;
                    LODWORD(v614) = *v609 << 16;
                    v615 = 8;
                    do
                    {
                      LODWORD(v616) = (COERCE_INT(v613 * COERCE_FLOAT(v905 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v613 * COERCE_FLOAT(v905 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v617) = (COERCE_INT(v616 + v614) + (HIWORD(COERCE_UNSIGNED_INT(v616 + v614)) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v618) = (COERCE_INT(v617 * v612) + (HIWORD(COERCE_UNSIGNED_INT(v617 * v612)) & 1) + 0x7FFF) & 0xFFFF0000;
                      *v611 = (COERCE_INT(v618 + COERCE_FLOAT(*v611 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v618 + COERCE_FLOAT(*v611 << 16))) & 1) + 0x7FFF) >> 16;
                      LODWORD(v619) = (COERCE_INT(v613 * COERCE_FLOAT(v906 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v613 * COERCE_FLOAT(v906 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v620) = (COERCE_INT(v619 + v614) + (HIWORD(COERCE_UNSIGNED_INT(v619 + v614)) & 1) + 0x7FFF) & 0xFFFF0000;
                      v621 = COERCE_FLOAT((COERCE_INT(v620 * v612) + (HIWORD(COERCE_UNSIGNED_INT(v620 * v612)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v611[1] << 16);
                      v611[1] = (LODWORD(v621) + (HIWORD(LODWORD(v621)) & 1u) + 0x7FFF) >> 16;
                      LODWORD(v622) = (COERCE_INT(v613 * COERCE_FLOAT(v907 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v613 * COERCE_FLOAT(v907 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v623) = (COERCE_INT(v622 + v614) + (HIWORD(COERCE_UNSIGNED_INT(v622 + v614)) & 1) + 0x7FFF) & 0xFFFF0000;
                      v624 = COERCE_FLOAT((COERCE_INT(v623 * v612) + (HIWORD(COERCE_UNSIGNED_INT(v623 * v612)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v611[2] << 16);
                      v611[2] = (LODWORD(v624) + (HIWORD(LODWORD(v624)) & 1u) + 0x7FFF) >> 16;
                      LODWORD(v625) = (COERCE_INT(v613 * COERCE_FLOAT(v908 << 16)) + (HIWORD(COERCE_UNSIGNED_INT(v613 * COERCE_FLOAT(v908 << 16))) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v626) = (COERCE_INT(v625 + v614) + (HIWORD(COERCE_UNSIGNED_INT(v625 + v614)) & 1) + 0x7FFF) & 0xFFFF0000;
                      v627 = COERCE_FLOAT((COERCE_INT(v626 * v612) + (HIWORD(COERCE_UNSIGNED_INT(v626 * v612)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v611[3] << 16);
                      v628 = v611 + 4;
                      v611[3] = (LODWORD(v627) + (HIWORD(LODWORD(v627)) & 1u) + 0x7FFF) >> 16;
                      v608 += 3;
                      v611 += 4;
                      --v615;
                    }

                    while (v615);
                    ++v607;
                    ++v609;
                    v610 += 32;
                    v611 = v628;
                  }

                  while (v610 < a7);
                }

                ++v901;
                v606 = v884 + 1;
              }

              while (v884 + 1 != a8);
            }

            a2 = v901;
            v889 += v856;
            v605 = v868 + 1;
          }

          while (v868 + 1 != a6);
        }

        goto LABEL_456;
    }

    goto LABEL_458;
  }

  if (a13 != 8)
  {
LABEL_457:
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Quantization bits must be 2, 3, 4, 6 or 8.");
    goto LABEL_459;
  }

  switch(a12)
  {
    case 128:
      v352 = a1;
      if (a14)
      {
        if (a6 >= 1)
        {
          for (nn = 0; nn != a6; ++nn)
          {
            if (a7 >= 1)
            {
              v354 = 0;
              v355 = a3;
              v356 = a4;
              v357 = a5;
              do
              {
                if (a8 < 1)
                {
                  LOWORD(v359) = 0;
                }

                else
                {
                  v358 = 0;
                  v359 = 0;
                  v360 = a2;
                  do
                  {
                    v361 = 0;
                    v362 = *v357 << 16;
                    do
                    {
                      LOBYTE(a11) = v355[v361];
                      v363 = COERCE_FLOAT(*v356 << 16) * COERCE_FLOAT((COERCE_INT(LODWORD(a11)) + (HIWORD(COERCE_UNSIGNED_INT(LODWORD(a11))) & 1) + 0x7FFF) & 0xFFFF0000);
                      v364 = COERCE_FLOAT((LODWORD(v363) + (HIWORD(LODWORD(v363)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(*v357 << 16);
                      LODWORD(v365) = (LODWORD(v364) + (HIWORD(LODWORD(v364)) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v366) = v360[v361++] << 16;
                      a11 = COERCE_FLOAT((COERCE_INT(v365 * v366) + (HIWORD(COERCE_UNSIGNED_INT(v365 * v366)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v359 << 16);
                      v359 = (LODWORD(a11) + (HIWORD(LODWORD(a11)) & 1u) + 0x7FFF) >> 16;
                    }

                    while (v361 != 128);
                    v355 += 128;
                    ++v356;
                    ++v357;
                    v360 += 128;
                    v358 += 128;
                  }

                  while (v358 < a8);
                }

                *v352++ = v359;
                ++v354;
              }

              while (v354 != a7);
            }

            a2 += a8;
          }
        }
      }

      else if (a6 >= 1)
      {
        for (i1 = 0; i1 != a6; ++i1)
        {
          if (a7 >= 1)
          {
            bzero(v352, 2 * a7);
          }

          if (a8 >= 1)
          {
            v704 = 0;
            v705 = a3;
            v706 = a4;
            v707 = a5;
            do
            {
              if (a7 >= 1)
              {
                v708 = 0;
                LODWORD(v709) = *a2 << 16;
                v710 = v352;
                do
                {
                  LODWORD(v711) = *v706 << 16;
                  LODWORD(v712) = *v707 << 16;
                  v713 = 128;
                  v714 = v710;
                  do
                  {
                    v715 = *v705++;
                    v716 = v711 * COERCE_FLOAT((COERCE_INT(v715) + (HIWORD(COERCE_UNSIGNED_INT(v715)) & 1) + 0x7FFF) & 0xFFFF0000);
                    v717 = COERCE_FLOAT((LODWORD(v716) + (HIWORD(LODWORD(v716)) & 1) + 0x7FFF) & 0xFFFF0000) + v712;
                    v710 = v714 + 1;
                    v718 = COERCE_FLOAT((COERCE_INT(COERCE_FLOAT((LODWORD(v717) + (HIWORD(LODWORD(v717)) & 1) + 0x7FFF) & 0xFFFF0000) * v709) + (HIWORD(COERCE_UNSIGNED_INT(COERCE_FLOAT((LODWORD(v717) + (HIWORD(LODWORD(v717)) & 1) + 0x7FFF) & 0xFFFF0000) * v709)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(*v714 << 16);
                    *v714++ = (LODWORD(v718) + (HIWORD(LODWORD(v718)) & 1u) + 0x7FFF) >> 16;
                    --v713;
                  }

                  while (v713);
                  ++v706;
                  ++v707;
                  v708 += 128;
                }

                while (v708 < a7);
              }

              ++a2;
              ++v704;
            }

            while (v704 != a8);
          }

          v352 += a7;
        }
      }

      break;
    case 64:
      v304 = a1;
      if (a14)
      {
        if (a6 >= 1)
        {
          for (i2 = 0; i2 != a6; ++i2)
          {
            if (a7 >= 1)
            {
              v306 = 0;
              v307 = a3;
              v308 = a4;
              v309 = a5;
              do
              {
                if (a8 < 1)
                {
                  LOWORD(v311) = 0;
                }

                else
                {
                  v310 = 0;
                  v311 = 0;
                  v312 = a2;
                  do
                  {
                    v313 = 0;
                    v314 = *v309 << 16;
                    do
                    {
                      LOBYTE(a11) = v307[v313];
                      v315 = COERCE_FLOAT(*v308 << 16) * COERCE_FLOAT((COERCE_INT(LODWORD(a11)) + (HIWORD(COERCE_UNSIGNED_INT(LODWORD(a11))) & 1) + 0x7FFF) & 0xFFFF0000);
                      v316 = COERCE_FLOAT((LODWORD(v315) + (HIWORD(LODWORD(v315)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(*v309 << 16);
                      LODWORD(v317) = (LODWORD(v316) + (HIWORD(LODWORD(v316)) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v318) = v312[v313++] << 16;
                      a11 = COERCE_FLOAT((COERCE_INT(v317 * v318) + (HIWORD(COERCE_UNSIGNED_INT(v317 * v318)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v311 << 16);
                      v311 = (LODWORD(a11) + (HIWORD(LODWORD(a11)) & 1u) + 0x7FFF) >> 16;
                    }

                    while (v313 != 64);
                    v307 += 64;
                    ++v308;
                    ++v309;
                    v312 += 64;
                    v310 += 64;
                  }

                  while (v310 < a8);
                }

                *v304++ = v311;
                ++v306;
              }

              while (v306 != a7);
            }

            a2 += a8;
          }
        }
      }

      else if (a6 >= 1)
      {
        for (i3 = 0; i3 != a6; ++i3)
        {
          if (a7 >= 1)
          {
            bzero(v304, 2 * a7);
          }

          if (a8 >= 1)
          {
            v630 = 0;
            v631 = a3;
            v632 = a4;
            v633 = a5;
            do
            {
              if (a7 >= 1)
              {
                v634 = 0;
                LODWORD(v635) = *a2 << 16;
                v636 = v304;
                do
                {
                  LODWORD(v637) = *v632 << 16;
                  LODWORD(v638) = *v633 << 16;
                  v639 = 64;
                  v640 = v636;
                  do
                  {
                    v641 = *v631++;
                    v642 = v637 * COERCE_FLOAT((COERCE_INT(v641) + (HIWORD(COERCE_UNSIGNED_INT(v641)) & 1) + 0x7FFF) & 0xFFFF0000);
                    v643 = COERCE_FLOAT((LODWORD(v642) + (HIWORD(LODWORD(v642)) & 1) + 0x7FFF) & 0xFFFF0000) + v638;
                    v636 = v640 + 1;
                    v644 = COERCE_FLOAT((COERCE_INT(COERCE_FLOAT((LODWORD(v643) + (HIWORD(LODWORD(v643)) & 1) + 0x7FFF) & 0xFFFF0000) * v635) + (HIWORD(COERCE_UNSIGNED_INT(COERCE_FLOAT((LODWORD(v643) + (HIWORD(LODWORD(v643)) & 1) + 0x7FFF) & 0xFFFF0000) * v635)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(*v640 << 16);
                    *v640++ = (LODWORD(v644) + (HIWORD(LODWORD(v644)) & 1u) + 0x7FFF) >> 16;
                    --v639;
                  }

                  while (v639);
                  ++v632;
                  ++v633;
                  v634 += 64;
                }

                while (v634 < a7);
              }

              ++a2;
              ++v630;
            }

            while (v630 != a8);
          }

          v304 += a7;
        }
      }

      break;
    case 32:
      v18 = a1;
      if (a14)
      {
        if (a6 >= 1)
        {
          for (i4 = 0; i4 != a6; ++i4)
          {
            if (a7 >= 1)
            {
              v20 = 0;
              v21 = a3;
              v22 = a4;
              v23 = a5;
              do
              {
                if (a8 < 1)
                {
                  LOWORD(v25) = 0;
                }

                else
                {
                  v24 = 0;
                  v25 = 0;
                  v26 = a2;
                  do
                  {
                    v27 = 0;
                    v28 = *v23 << 16;
                    do
                    {
                      LOBYTE(a11) = v21[v27];
                      v29 = COERCE_FLOAT(*v22 << 16) * COERCE_FLOAT((COERCE_INT(LODWORD(a11)) + (HIWORD(COERCE_UNSIGNED_INT(LODWORD(a11))) & 1) + 0x7FFF) & 0xFFFF0000);
                      v30 = COERCE_FLOAT((LODWORD(v29) + (HIWORD(LODWORD(v29)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(*v23 << 16);
                      LODWORD(v31) = (LODWORD(v30) + (HIWORD(LODWORD(v30)) & 1) + 0x7FFF) & 0xFFFF0000;
                      LODWORD(v32) = v26[v27++] << 16;
                      a11 = COERCE_FLOAT((COERCE_INT(v31 * v32) + (HIWORD(COERCE_UNSIGNED_INT(v31 * v32)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(v25 << 16);
                      v25 = (LODWORD(a11) + (HIWORD(LODWORD(a11)) & 1u) + 0x7FFF) >> 16;
                    }

                    while (v27 != 32);
                    v21 += 32;
                    ++v22;
                    ++v23;
                    v26 += 32;
                    v24 += 32;
                  }

                  while (v24 < a8);
                }

                *v18++ = v25;
                ++v20;
              }

              while (v20 != a7);
            }

            a2 += a8;
          }
        }
      }

      else if (a6 >= 1)
      {
        for (i5 = 0; i5 != a6; ++i5)
        {
          if (a7 >= 1)
          {
            bzero(v18, 2 * a7);
          }

          if (a8 >= 1)
          {
            v756 = 0;
            v757 = a3;
            v758 = a4;
            v759 = a5;
            do
            {
              if (a7 >= 1)
              {
                v760 = 0;
                LODWORD(v761) = *a2 << 16;
                v762 = v18;
                do
                {
                  LODWORD(v763) = *v758 << 16;
                  LODWORD(v764) = *v759 << 16;
                  v765 = 32;
                  v766 = v762;
                  do
                  {
                    v767 = *v757++;
                    v768 = v763 * COERCE_FLOAT((COERCE_INT(v767) + (HIWORD(COERCE_UNSIGNED_INT(v767)) & 1) + 0x7FFF) & 0xFFFF0000);
                    v769 = COERCE_FLOAT((LODWORD(v768) + (HIWORD(LODWORD(v768)) & 1) + 0x7FFF) & 0xFFFF0000) + v764;
                    v762 = v766 + 1;
                    v770 = COERCE_FLOAT((COERCE_INT(COERCE_FLOAT((LODWORD(v769) + (HIWORD(LODWORD(v769)) & 1) + 0x7FFF) & 0xFFFF0000) * v761) + (HIWORD(COERCE_UNSIGNED_INT(COERCE_FLOAT((LODWORD(v769) + (HIWORD(LODWORD(v769)) & 1) + 0x7FFF) & 0xFFFF0000) * v761)) & 1) + 0x7FFF) & 0xFFFF0000) + COERCE_FLOAT(*v766 << 16);
                    *v766++ = (LODWORD(v770) + (HIWORD(LODWORD(v770)) & 1u) + 0x7FFF) >> 16;
                    --v765;
                  }

                  while (v765);
                  ++v758;
                  ++v759;
                  v760 += 32;
                }

                while (v760 < a7);
              }

              ++a2;
              ++v756;
            }

            while (v756 != a8);
          }

          v18 += a7;
        }
      }

      break;
    default:
      goto LABEL_458;
  }

LABEL_456:
  v843 = *MEMORY[0x277D85DE8];
}

float mlx::core::anonymous namespace::extract_bits<mlx::core::_MLX_BFloat16,3>(unsigned __int8 *a1, _WORD *a2)
{
  *a2 = (COERCE_INT((*a1 & 7)) + (HIWORD(COERCE_UNSIGNED_INT((*a1 & 7))) & 1) + 0x7FFF) >> 16;
  v2 = ((*a1 >> 3) & 7);
  a2[1] = (LODWORD(v2) + (HIWORD(LODWORD(v2)) & 1u) + 0x7FFF) >> 16;
  v3 = ((*a1 >> 6) & 0xFFFFFFFB | (4 * (a1[1] & 1)));
  a2[2] = (LODWORD(v3) + (HIWORD(LODWORD(v3)) & 1u) + 0x7FFF) >> 16;
  v4 = ((a1[1] >> 1) & 7);
  a2[3] = (LODWORD(v4) + (HIWORD(LODWORD(v4)) & 1u) + 0x7FFF) >> 16;
  v5 = ((a1[1] >> 4) & 7);
  a2[4] = (LODWORD(v5) + (HIWORD(LODWORD(v5)) & 1u) + 0x7FFF) >> 16;
  v6 = ((a1[1] >> 7) & 0xFFFFFFF9 | (2 * (a1[2] & 3)));
  a2[5] = (LODWORD(v6) + (HIWORD(LODWORD(v6)) & 1u) + 0x7FFF) >> 16;
  v7 = ((a1[2] >> 2) & 7);
  a2[6] = (LODWORD(v7) + (HIWORD(LODWORD(v7)) & 1u) + 0x7FFF) >> 16;
  result = (a1[2] >> 5);
  a2[7] = (LODWORD(result) + (HIWORD(LODWORD(result)) & 1u) + 0x7FFF) >> 16;
  return result;
}

float mlx::core::anonymous namespace::extract_bits<mlx::core::_MLX_BFloat16,6>(unsigned __int8 *a1, _WORD *a2)
{
  *a2 = (COERCE_INT((*a1 & 0x3F)) + (HIWORD(COERCE_UNSIGNED_INT((*a1 & 0x3F))) & 1) + 0x7FFF) >> 16;
  v2 = ((*a1 >> 6) & 0xFFFFFFC3 | (4 * (a1[1] & 0xF)));
  a2[1] = (LODWORD(v2) + (HIWORD(LODWORD(v2)) & 1u) + 0x7FFF) >> 16;
  v3 = ((a1[1] >> 4) & 0xFFFFFFCF | (16 * (a1[2] & 3)));
  a2[2] = (LODWORD(v3) + (HIWORD(LODWORD(v3)) & 1u) + 0x7FFF) >> 16;
  result = (a1[2] >> 2);
  a2[3] = (LODWORD(result) + (HIWORD(LODWORD(result)) & 1u) + 0x7FFF) >> 16;
  return result;
}

void *std::__function::__func<std::__bind<mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,std::allocator<std::__bind<mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF6CB0;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 9));
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,std::allocator<std::__bind<mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF6CB0;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 9));
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,std::allocator<std::__bind<mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BF6CB0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(result + 64);
  *(a2 + 56) = *(result + 56);
  *(a2 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(result + 80);
  *(a2 + 72) = *(result + 72);
  *(a2 + 80) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(result + 88);
  *(a2 + 96) = *(result + 96);
  *(a2 + 88) = v8;
  *(a2 + 105) = 0;
  *(a2 + 108) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,std::allocator<std::__bind<mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 72));
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,std::allocator<std::__bind<mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 72));
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,std::allocator<std::__bind<mlx::core::QuantizedMatmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::cpu::CommandEncoder::dispatch<mlx::core::GatherQMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>(mlx::core::GatherQMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1 &&)::{lambda(void)#1}::~dispatch(uint64_t a1)
{
  mlx::core::array::~array((a1 + 112));
  mlx::core::array::~array((a1 + 96));
  mlx::core::array::~array((a1 + 80));
  mlx::core::array::~array((a1 + 64));
  mlx::core::array::~array((a1 + 48));
  mlx::core::array::~array((a1 + 32));
  mlx::core::array::~array((a1 + 16));
  return a1;
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9GatherQMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF6DA8;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 15));
  mlx::core::array::~array((a1 + 13));
  mlx::core::array::~array((a1 + 11));
  mlx::core::array::~array((a1 + 9));
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9GatherQMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF6DA8;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 15));
  mlx::core::array::~array((a1 + 13));
  mlx::core::array::~array((a1 + 11));
  mlx::core::array::~array((a1 + 9));
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9GatherQMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BF6DA8;
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

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 64);
  *(a2 + 56) = *(result + 56);
  *(a2 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(result + 80);
  *(a2 + 72) = *(result + 72);
  *(a2 + 80) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(result + 96);
  *(a2 + 88) = *(result + 88);
  *(a2 + 96) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(result + 112);
  *(a2 + 104) = *(result + 104);
  *(a2 + 112) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(result + 128);
  *(a2 + 120) = *(result + 120);
  *(a2 + 128) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(result + 136);
  *(a2 + 144) = *(result + 144);
  *(a2 + 136) = v10;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9GatherQMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 120));
  mlx::core::array::~array((a1 + 104));
  mlx::core::array::~array((a1 + 88));
  mlx::core::array::~array((a1 + 72));
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9GatherQMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 120));
  mlx::core::array::~array((a1 + 104));
  mlx::core::array::~array((a1 + 88));
  mlx::core::array::~array((a1 + 72));
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9GatherQMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, double a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  std::__bind<mlx::core::GatherQMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>::operator()[abi:ne200100]<>((a1 + 24), a2, a3, a4, a5, a6, a7, a8);
  v9 = mlx::core::scheduler::scheduler(v8);

  mlx::core::scheduler::Scheduler::notify_task_completion(v9);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9GatherQMM8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<mlx::core::GatherQMM::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>::operator()[abi:ne200100]<>(uint64_t *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, double a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v238 = *(a1 + 29);
  v239 = *(a1 + 28);
  v237 = *(a1 + 120);
  v9 = a1[2];
  v10 = *(v9 + 56);
  switch(v10)
  {
    case 9:
      v133 = *(v9 + 8);
      if (v133 == *v9)
      {
        goto LABEL_91;
      }

      if ((v133 - *v9) <= 4)
      {
        goto LABEL_91;
      }

      v134 = *a1;
      v135 = *(*a1 + 8);
      if (v135 == **a1)
      {
        goto LABEL_91;
      }

      v136 = a1[4];
      v137 = v136[1];
      v138 = v137 - *v136;
      if (v137 == *v136)
      {
        goto LABEL_91;
      }

      if (v138 <= 4)
      {
        goto LABEL_91;
      }

      v139 = a1[6];
      v140 = v139[1];
      v141 = v140 - *v139;
      if (v140 == *v139 || v141 <= 4)
      {
        goto LABEL_91;
      }

      v142 = a1[10];
      if (v142[6])
      {
        v143 = 0;
        v144 = *(v133 - 8);
        v200 = *(*v136 + v138 - 8) * *(*v136 + v138 - 4);
        v227 = *(*v139 + v141 - 8) * *(*v139 + v141 - 4);
        v230 = *(v135 - 4);
        v221 = *(v9 + 152);
        v224 = *(v134 + 152);
        v215 = v139[19];
        v218 = v136[19];
        v212 = *(a1[8] + 152);
        v209 = v230 * v144;
        v206 = v142[19];
        v233 = v144;
        v236 = *(v133 - 4);
        v197 = v144 * v236;
        v203 = *(a1[12] + 152);
        do
        {
          v145 = *v142;
          v146 = (v142[1] - *v142) >> 2;
          v147 = 0;
          v148 = (v146 - 1);
          if (v146 - 1 >= 0)
          {
            v149 = v142[3];
            quot = v143;
            do
            {
              v151 = ldiv(quot, *(v145 + 4 * v148));
              quot = v151.quot;
              v147 += *(v149 + 8 * v148--) * v151.rem;
            }

            while (v148 != -1);
          }

          v152 = *(v206 + 4 * v147);
          v153 = a1[12];
          v154 = *v153;
          v155 = (v153[1] - *v153) >> 2;
          v156 = 0;
          v157 = (v155 - 1);
          if (v155 - 1 >= 0)
          {
            v158 = v153[3];
            v159 = v143;
            do
            {
              v160 = ldiv(v159, *(v154 + 4 * v157));
              v159 = v160.quot;
              v156 += *(v158 + 8 * v157--) * v160.rem;
            }

            while (v157 != -1);
          }

          v161 = *(v203 + 4 * v156);
          v162 = a1[2];
          v163 = *v162;
          v164 = (v162[1] - *v162) >> 2;
          v165 = 0;
          v166 = (v164 - 1);
          if (v164 - 1 >= 0)
          {
            v167 = v197 * v152;
            v168 = v162[3];
            do
            {
              v169 = ldiv(v167, *(v163 + 4 * v166));
              v167 = v169.quot;
              v165 += *(v168 + 8 * v166--) * v169.rem;
            }

            while (v166 != -1);
          }

          v170 = a1[4];
          v171 = *v170;
          v172 = (v170[1] - *v170) >> 2;
          v173 = 0;
          v174 = (v172 - 1);
          if (v172 - 1 >= 0)
          {
            v175 = v200 * v161;
            v176 = v170[3];
            do
            {
              v177 = ldiv(v175, *(v171 + 4 * v174));
              v175 = v177.quot;
              v173 += *(v176 + 8 * v174--) * v177.rem;
            }

            while (v174 != -1);
          }

          v178 = v227 * v161;
          v179 = a1[6];
          v180 = *v179;
          v181 = (v179[1] - *v179) >> 2;
          v182 = 0;
          v183 = (v181 - 1);
          if (v181 - 1 >= 0)
          {
            v184 = v179[3];
            v185 = v178;
            do
            {
              v186 = ldiv(v185, *(v180 + 4 * v183));
              v185 = v186.quot;
              v182 += *(v184 + 8 * v183--) * v186.rem;
            }

            while (v183 != -1);
          }

          v187 = a1[8];
          v188 = *v187;
          v189 = (v187[1] - *v187) >> 2;
          v190 = 0;
          v191 = (v189 - 1);
          if (v189 - 1 >= 0)
          {
            v192 = v187[3];
            do
            {
              v193 = ldiv(v178, *(v188 + 4 * v191));
              v190 += *(v192 + 8 * v191--) * v193.rem;
              v178 = v193.quot;
            }

            while (v191 != -1);
          }

          v142 = a1[10];
        }

        while (v142[6] > v143);
      }

      break;
    case 12:
      v72 = *(v9 + 8);
      if (v72 == *v9)
      {
        goto LABEL_91;
      }

      if ((v72 - *v9) <= 4)
      {
        goto LABEL_91;
      }

      v73 = *a1;
      v74 = *(*a1 + 8);
      if (v74 == **a1)
      {
        goto LABEL_91;
      }

      v75 = a1[4];
      v76 = v75[1];
      v77 = v76 - *v75;
      if (v76 == *v75)
      {
        goto LABEL_91;
      }

      if (v77 <= 4)
      {
        goto LABEL_91;
      }

      v78 = a1[6];
      v79 = v78[1];
      v80 = v79 - *v78;
      if (v79 == *v78 || v80 <= 4)
      {
        goto LABEL_91;
      }

      v81 = a1[10];
      if (v81[6])
      {
        v82 = 0;
        v83 = *(v72 - 8);
        v199 = *(*v75 + v77 - 8) * *(*v75 + v77 - 4);
        v226 = *(*v78 + v80 - 8) * *(*v78 + v80 - 4);
        v229 = *(v74 - 4);
        v220 = *(v9 + 152);
        v223 = *(v73 + 152);
        v214 = v78[19];
        v217 = v75[19];
        v211 = *(a1[8] + 152);
        v208 = v229 * v83;
        v205 = v81[19];
        v232 = v83;
        v235 = *(v72 - 4);
        v196 = v83 * v235;
        v202 = *(a1[12] + 152);
        do
        {
          v84 = *v81;
          v85 = (v81[1] - *v81) >> 2;
          v86 = 0;
          v87 = (v85 - 1);
          if (v85 - 1 >= 0)
          {
            v88 = v81[3];
            v89 = v82;
            do
            {
              v90 = ldiv(v89, *(v84 + 4 * v87));
              v89 = v90.quot;
              v86 += *(v88 + 8 * v87--) * v90.rem;
            }

            while (v87 != -1);
          }

          v91 = *(v205 + 4 * v86);
          v92 = a1[12];
          v93 = *v92;
          v94 = (v92[1] - *v92) >> 2;
          v95 = 0;
          v96 = (v94 - 1);
          if (v94 - 1 >= 0)
          {
            v97 = v92[3];
            v98 = v82;
            do
            {
              v99 = ldiv(v98, *(v93 + 4 * v96));
              v98 = v99.quot;
              v95 += *(v97 + 8 * v96--) * v99.rem;
            }

            while (v96 != -1);
          }

          v100 = *(v202 + 4 * v95);
          v101 = a1[2];
          v102 = *v101;
          v103 = (v101[1] - *v101) >> 2;
          v104 = 0;
          v105 = (v103 - 1);
          if (v103 - 1 >= 0)
          {
            v106 = v196 * v91;
            v107 = v101[3];
            do
            {
              v108 = ldiv(v106, *(v102 + 4 * v105));
              v106 = v108.quot;
              v104 += *(v107 + 8 * v105--) * v108.rem;
            }

            while (v105 != -1);
          }

          v109 = a1[4];
          v110 = *v109;
          v111 = (v109[1] - *v109) >> 2;
          v112 = 0;
          v113 = (v111 - 1);
          if (v111 - 1 >= 0)
          {
            v114 = v199 * v100;
            v115 = v109[3];
            do
            {
              v116 = ldiv(v114, *(v110 + 4 * v113));
              v114 = v116.quot;
              v112 += *(v115 + 8 * v113--) * v116.rem;
            }

            while (v113 != -1);
          }

          v117 = v226 * v100;
          v118 = a1[6];
          v119 = *v118;
          v120 = (v118[1] - *v118) >> 2;
          v121 = 0;
          v122 = (v120 - 1);
          if (v120 - 1 >= 0)
          {
            v123 = v118[3];
            v124 = v117;
            do
            {
              v125 = ldiv(v124, *(v119 + 4 * v122));
              v124 = v125.quot;
              v121 += *(v123 + 8 * v122--) * v125.rem;
            }

            while (v122 != -1);
          }

          v126 = a1[8];
          v127 = *v126;
          v128 = (v126[1] - *v126) >> 2;
          v129 = 0;
          v130 = (v128 - 1);
          if (v128 - 1 >= 0)
          {
            v131 = v126[3];
            do
            {
              v132 = ldiv(v117, *(v127 + 4 * v130));
              v129 += *(v131 + 8 * v130--) * v132.rem;
              v117 = v132.quot;
            }

            while (v130 != -1);
          }

          v81 = a1[10];
        }

        while (v81[6] > v82);
      }

      break;
    case 10:
      v11 = *(v9 + 8);
      if (v11 != *v9 && (v11 - *v9) > 4)
      {
        v12 = *a1;
        v13 = *(*a1 + 8);
        if (v13 != **a1)
        {
          v14 = a1[4];
          v15 = v14[1];
          v16 = v15 - *v14;
          if (v15 != *v14 && v16 > 4)
          {
            v17 = a1[6];
            v18 = v17[1];
            v19 = v18 - *v17;
            if (v18 != *v17 && v19 > 4)
            {
              v20 = a1[10];
              if (v20[6])
              {
                v21 = 0;
                v22 = *(v11 - 8);
                v198 = *(*v14 + v16 - 8) * *(*v14 + v16 - 4);
                v225 = *(*v17 + v19 - 8) * *(*v17 + v19 - 4);
                v228 = *(v13 - 4);
                v219 = *(v9 + 152);
                v222 = *(v12 + 152);
                v213 = v17[19];
                v216 = v14[19];
                v210 = *(a1[8] + 152);
                v207 = v228 * v22;
                v204 = v20[19];
                v231 = v22;
                v234 = *(v11 - 4);
                v195 = v22 * v234;
                v201 = *(a1[12] + 152);
                do
                {
                  v23 = *v20;
                  v24 = (v20[1] - *v20) >> 2;
                  v25 = 0;
                  v26 = (v24 - 1);
                  if (v24 - 1 >= 0)
                  {
                    v27 = v20[3];
                    v28 = v21;
                    do
                    {
                      v29 = ldiv(v28, *(v23 + 4 * v26));
                      v28 = v29.quot;
                      v25 += *(v27 + 8 * v26--) * v29.rem;
                    }

                    while (v26 != -1);
                  }

                  v30 = *(v204 + 4 * v25);
                  v31 = a1[12];
                  v32 = *v31;
                  v33 = (v31[1] - *v31) >> 2;
                  v34 = 0;
                  v35 = (v33 - 1);
                  if (v33 - 1 >= 0)
                  {
                    v36 = v31[3];
                    v37 = v21;
                    do
                    {
                      v38 = ldiv(v37, *(v32 + 4 * v35));
                      v37 = v38.quot;
                      v34 += *(v36 + 8 * v35--) * v38.rem;
                    }

                    while (v35 != -1);
                  }

                  v39 = *(v201 + 4 * v34);
                  v40 = a1[2];
                  v41 = *v40;
                  v42 = (v40[1] - *v40) >> 2;
                  v43 = 0;
                  v44 = (v42 - 1);
                  if (v42 - 1 >= 0)
                  {
                    v45 = v195 * v30;
                    v46 = v40[3];
                    do
                    {
                      v47 = ldiv(v45, *(v41 + 4 * v44));
                      v45 = v47.quot;
                      v43 += *(v46 + 8 * v44--) * v47.rem;
                    }

                    while (v44 != -1);
                  }

                  v48 = a1[4];
                  v49 = *v48;
                  v50 = (v48[1] - *v48) >> 2;
                  v51 = 0;
                  v52 = (v50 - 1);
                  if (v50 - 1 >= 0)
                  {
                    v53 = v198 * v39;
                    v54 = v48[3];
                    do
                    {
                      v55 = ldiv(v53, *(v49 + 4 * v52));
                      v53 = v55.quot;
                      v51 += *(v54 + 8 * v52--) * v55.rem;
                    }

                    while (v52 != -1);
                  }

                  v56 = v225 * v39;
                  v57 = a1[6];
                  v58 = *v57;
                  v59 = (v57[1] - *v57) >> 2;
                  v60 = 0;
                  v61 = (v59 - 1);
                  if (v59 - 1 >= 0)
                  {
                    v62 = v57[3];
                    v63 = v56;
                    do
                    {
                      v64 = ldiv(v63, *(v58 + 4 * v61));
                      v63 = v64.quot;
                      v60 += *(v62 + 8 * v61--) * v64.rem;
                    }

                    while (v61 != -1);
                  }

                  v65 = a1[8];
                  v66 = *v65;
                  v67 = (v65[1] - *v65) >> 2;
                  v68 = 0;
                  v69 = (v67 - 1);
                  if (v67 - 1 >= 0)
                  {
                    v70 = v65[3];
                    do
                    {
                      v71 = ldiv(v56, *(v66 + 4 * v69));
                      v68 += *(v70 + 8 * v69--) * v71.rem;
                      v56 = v71.quot;
                    }

                    while (v69 != -1);
                  }

                  v20 = a1[10];
                }

                while (v20[6] > v21);
              }

              return;
            }
          }
        }
      }

LABEL_91:
      std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[quantized_matmul] only floating types are supported");
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }
}