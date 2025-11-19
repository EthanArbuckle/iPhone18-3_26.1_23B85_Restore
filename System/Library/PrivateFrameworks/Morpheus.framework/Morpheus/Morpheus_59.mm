__n128 std::__function::__func<std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>,std::allocator<std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFE598;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>,std::allocator<std::__bind<void mlx::core::inverse_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v3;
  v4 = a2[1];
  v10 = *a2;
  v11 = v4;
  v5 = mlx::core::scheduler::scheduler(a1);
  if (v3)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v10);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v5);
  *&v8[0] = *a1;
  DWORD2(v8[0]) = *(a1 + 2);
  v8[1] = v10;
  v8[2] = v11;
  v9 = v12;
  v7 = mlx::core::scheduler::scheduler(v6);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v7[1] + 8 * *a1), v8);
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v3;
  *v9 = *a2;
  *&v9[16] = *(a2 + 16);
  v4 = mlx::core::scheduler::scheduler(a1);
  if (v3)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>>(*(v4[1] + 8 * *a1), v9);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v4);
  *&v7 = *a1;
  DWORD2(v7) = *(a1 + 2);
  v8[0] = *v9;
  *(v8 + 9) = *&v9[9];
  v6 = mlx::core::scheduler::scheduler(v5);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>(void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2} &&)::{lambda(void)#1}>(*(v6[1] + 8 * *a1), &v7);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5A2BB8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(void *a1, __int128 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = *(a2 + 6);
  *(v8 + 24) = 0;
  operator new();
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12inverse_implIdEEvRKNS3_5arrayERS8_bbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFE690;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12inverse_implIdEEvRKNS3_5arrayERS8_bbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12inverse_implIdEEvRKNS3_5arrayERS8_bbNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = 0;
    do
    {
      mlx::core::tri_inv<double>((*a1 + 8 * (*(a1 + 8) * v2++ * *(a1 + 8))), *(a1 + 8), *(a1 + 24));
    }

    while (*(a1 + 16) > v2);
  }
}

void mlx::core::tri_inv<double>(char *a1, int a2, int a3)
{
  v3 = a3;
  v15 = a2;
  if (a3)
  {
    v5 = 76;
  }

  else
  {
    v5 = 85;
  }

  v14 = v5;
  v13 = 78;
  v12 = 0;
  dtrtri_NEWLAPACK();
  if (v3)
  {
    if (v15 >= 1)
    {
      v6 = 0;
      v7 = 8 * v15;
      do
      {
        if (v6)
        {
          bzero(a1, v6);
        }

        v6 += 8;
        a1 += v7;
      }

      while (v7 != v6);
    }
  }

  else if (v15 >= 1)
  {
    v8 = 0;
    v9 = 8 * v15;
    v10 = a1 + 8;
    do
    {
      v11 = v9 + v8 - 8;
      if (v11 >= 1)
      {
        bzero(v10, v11);
      }

      v8 -= 8;
      v10 += 8 * v15 + 8;
    }

    while (v9 + v8);
  }
}

void sub_25A5A3080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
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

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5A3168(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 4);
  *(v8 + 24) = 0;
  operator new();
}

__n128 std::__function::__func<std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFE710;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>(void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>(void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5A34C0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>(void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2} &&)::{lambda(void)#1}>(void *a1, __int128 *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  *(v8 + 24) = 0;
  operator new();
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12inverse_implIdEEvRKNS3_5arrayERS8_bbNS3_6StreamEEUlvE0_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFE808;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12inverse_implIdEEvRKNS3_5arrayERS8_bbNS3_6StreamEEUlvE0_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12inverse_implIdEEvRKNS3_5arrayERS8_bbNS3_6StreamEEUlvE0_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = 0;
    do
    {
      mlx::core::general_inv<double>(*a1 + 8 * (*(a1 + 8) * v2++ * *(a1 + 8)), *(a1 + 8));
    }

    while (*(a1 + 16) > v2);
  }
}

void mlx::core::general_inv<double>(uint64_t a1, int a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = a2;
  v10[0] = &unk_286BE3468;
  v10[1] = mlx::core::allocator::free;
  v10[3] = v10;
  v11 = mlx::core::allocator::malloc((4 * a2));
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](v12, v10);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v10);
  mlx::core::allocator::Buffer::raw_ptr(&v11);
  dgetrf_NEWLAPACK();
  v4 = 0;
  dgetri_NEWLAPACK();
  v3 = 0.0;
  v7[0] = &unk_286BE3468;
  v7[1] = mlx::core::allocator::free;
  v7[3] = v7;
  v8 = mlx::core::allocator::malloc((8 * 0.0));
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::__value_func[abi:ne200100](&v9, v7);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](v7);
  mlx::core::allocator::Buffer::raw_ptr(&v11);
  mlx::core::allocator::Buffer::raw_ptr(&v8);
  dgetri_NEWLAPACK();
  mlx::core::array::Data::~Data(&v8);
  mlx::core::array::Data::~Data(&v11);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_25A5A3B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
      mlx::core::array::Data::~Data((v19 - 152));
      mlx::core::array::Data::~Data((v19 - 80));
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

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5A3CA0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>>(void *a1, __int128 *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  v9 = *a2;
  v10 = a2[1];
  *(v8 + 24) = 0;
  operator new();
}

__n128 std::__function::__func<std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>,std::allocator<std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFE888;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>,std::allocator<std::__bind<void mlx::core::inverse_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,BOOL,mlx::core::Stream)::{lambda(void)#2}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::matmul_general(mlx::core::array *a1, mlx::core::array *a2, uint64_t a3, uint64_t a4, int a5, float a6, float a7)
{
  v27 = 0uLL;
  v28 = 0;
  v24 = a4;
  v25 = a5;
  v26 = &v27;
  mlx::core::matmul_general(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::Stream,float,float)::$_0::operator()(&v24, a1, &v21);
  mlx::core::matmul_general(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::Stream,float,float)::$_0::operator()(&v24, a2, v18);
  if (v23[0][1] - *v23[0] <= 4uLL)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v14 = v20[0][1];
  if (v14 == *v20[0])
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  *v23[0];
  if (*(v23[0][1] - 8))
  {
    v15 = *(v14 - 4) == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = *(*a3 + 56);
    if (v16 > 10)
    {
      if (v16 == 11)
      {
        mlx::core::matmul_dispatch<double>(v23, v20, a3, v21, v18[0], v22, v19, a6, a7, v13, a4, a5);
      }

      if (v16 == 12)
      {
        mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(v23, v20, a3, v21, v18[0], v22, v19, a6, a7, v13, a4, a5);
      }
    }

    else
    {
      if (v16 == 9)
      {
        mlx::core::matmul_dispatch<half>(v23, v20, a3, v21, v18[0], v22, v19, a6, a7, v13, a4, a5);
      }

      if (v16 == 10)
      {
        mlx::core::matmul_dispatch<float>(v23, v20, a3, v21, v18[0], v22, v19, a6, a7, v13, a4, a5);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[Matmul::eval_cpu] Invalid type.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::array::~array(v20);
  mlx::core::array::~array(v23);
  v21 = &v27;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v21);
}

void sub_25A5A41C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  __cxa_free_exception(v18);
  mlx::core::array::~array((v20 + 16));
  mlx::core::array::~array((v19 + 16));
  a18 = v21 - 96;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::matmul_general(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::Stream,float,float)::$_0::operator()@<X0>(uint64_t result@<X0>, mlx::core::array *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = **a2;
  v7 = v5[1];
  v8 = v7 - v6;
  if (v7 == v6)
  {
    goto LABEL_21;
  }

  v9 = v8 >> 2;
  v10 = (v8 >> 2) - 2;
  v11 = (v8 >> 2) - 1;
  v12 = v5[3];
  v13 = *(v12 + 8 * v10);
  v14 = *(v12 + 8 * v11);
  if (v13 == *(v6 + 4 * v11) && v14 == 1)
  {
    *a3 = 0;
    *(a3 + 8) = v13;
    goto LABEL_11;
  }

  v16 = result;
  if (v13 == 1)
  {
    if (v9 <= 1)
    {
      goto LABEL_21;
    }

    if (v14 == *(v6 + 4 * v10))
    {
      *a3 = 1;
      *(a3 + 8) = v14;
LABEL_11:
      *(a3 + 16) = v5;
      v17 = *(a2 + 1);
      goto LABEL_18;
    }
  }

  v18 = *(result + 16);
  v28 = 0;
  v29 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v6, v7, v9);
  v19 = *(*a2 + 56);
  v25 = 0;
  v26 = 0;
  memset(v24, 0, sizeof(v24));
  mlx::core::array::array(v30, &__p, v19 & 0xFFFFFFFFFFLL, &v25, v24);
  std::vector<mlx::core::array>::push_back[abi:ne200100](v18, v30);
  mlx::core::array::~array(v30);
  v31 = v24;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v31);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  result = mlx::core::copy(a2, (*(*(v16 + 16) + 8) - 16), 2u, *v16, *(v16 + 8));
  v20 = *(*a2 + 8);
  if (v20 == **a2)
  {
LABEL_21:
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v21 = *(v20 - 4);
  v22 = *(*(v16 + 16) + 8);
  *a3 = 0;
  v23 = *(v22 - 16);
  v17 = *(v22 - 8);
  *(a3 + 8) = v21;
  *(a3 + 16) = v23;
LABEL_18:
  *(a3 + 24) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_25A5A43C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
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

void mlx::core::matmul_dispatch<float>(uint64_t **a1, uint64_t **a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, float a8, float a9, uint64_t a10, uint64_t a11, int a12)
{
  v12 = *(*a3 + 8);
  if (v12 != **a3)
  {
    v14 = *a1;
    if (((*a1)[1] - **a1) > 4)
    {
      v21 = v14[19];
      v22 = (*a2)[19];
      v23 = *(*a3 + 152);
      v24 = *(v12 - 4);
      v25 = v14[6] / (*((*a1)[1] - 4) * *((*a1)[1] - 8));
      command_encoder = mlx::core::cpu::get_command_encoder(a11, a12);
      v32[0] = v21;
      v32[1] = v22;
      v32[2] = v23;
      v33 = a4;
      v34 = a5;
      v35 = a6;
      v36 = a7;
      v37 = v24;
      v38 = a8;
      v39 = a9;
      v26 = *a1;
      v40 = v25;
      memset(v41, 0, sizeof(v41));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v41, *v26, v26[1], (v26[1] - *v26) >> 2);
      v27 = *a1;
      memset(v42, 0, sizeof(v42));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v42, v27[3], v27[4], (v27[4] - v27[3]) >> 3);
      v28 = *a2;
      memset(v43, 0, sizeof(v43));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v43, *v28, v28[1], (v28[1] - *v28) >> 2);
      v29 = *a2;
      memset(__p, 0, 24);
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, v29[3], v29[4], (v29[4] - v29[3]) >> 3);
      mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(command_encoder, v32);
    }
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void mlx::core::matmul_dispatch<half>(uint64_t **a1, uint64_t **a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, float a8, float a9, uint64_t a10, uint64_t a11, int a12)
{
  v12 = *(*a3 + 8);
  if (v12 != **a3)
  {
    v14 = *a1;
    if (((*a1)[1] - **a1) > 4)
    {
      v21 = v14[19];
      v22 = (*a2)[19];
      v23 = *(*a3 + 152);
      v24 = *(v12 - 4);
      v25 = v14[6] / (*((*a1)[1] - 4) * *((*a1)[1] - 8));
      command_encoder = mlx::core::cpu::get_command_encoder(a11, a12);
      v32[0] = v21;
      v32[1] = v22;
      v32[2] = v23;
      v33 = a4;
      v34 = a5;
      v35 = a6;
      v36 = a7;
      v37 = v24;
      v38 = a8;
      v39 = a9;
      v26 = *a1;
      v40 = v25;
      memset(v41, 0, sizeof(v41));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v41, *v26, v26[1], (v26[1] - *v26) >> 2);
      v27 = *a1;
      memset(v42, 0, sizeof(v42));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v42, v27[3], v27[4], (v27[4] - v27[3]) >> 3);
      v28 = *a2;
      memset(v43, 0, sizeof(v43));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v43, *v28, v28[1], (v28[1] - *v28) >> 2);
      v29 = *a2;
      memset(__p, 0, 24);
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, v29[3], v29[4], (v29[4] - v29[3]) >> 3);
      mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(command_encoder, v32);
    }
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(uint64_t **a1, uint64_t **a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, float a8, float a9, uint64_t a10, uint64_t a11, int a12)
{
  v12 = *(*a3 + 8);
  if (v12 != **a3)
  {
    v14 = *a1;
    if (((*a1)[1] - **a1) > 4)
    {
      v21 = v14[19];
      v22 = (*a2)[19];
      v23 = *(*a3 + 152);
      v24 = *(v12 - 4);
      v25 = v14[6] / (*((*a1)[1] - 4) * *((*a1)[1] - 8));
      command_encoder = mlx::core::cpu::get_command_encoder(a11, a12);
      v32[0] = v21;
      v32[1] = v22;
      v32[2] = v23;
      v33 = a4;
      v34 = a5;
      v35 = a6;
      v36 = a7;
      v37 = v24;
      v38 = a8;
      v39 = a9;
      v26 = *a1;
      v40 = v25;
      memset(v41, 0, sizeof(v41));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v41, *v26, v26[1], (v26[1] - *v26) >> 2);
      v27 = *a1;
      memset(v42, 0, sizeof(v42));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v42, v27[3], v27[4], (v27[4] - v27[3]) >> 3);
      v28 = *a2;
      memset(v43, 0, sizeof(v43));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v43, *v28, v28[1], (v28[1] - *v28) >> 2);
      v29 = *a2;
      memset(__p, 0, 24);
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, v29[3], v29[4], (v29[4] - v29[3]) >> 3);
      mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(command_encoder, v32);
    }
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void mlx::core::matmul_dispatch<double>(uint64_t **a1, uint64_t **a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, float a8, float a9, uint64_t a10, uint64_t a11, int a12)
{
  v12 = *(*a3 + 8);
  if (v12 != **a3)
  {
    v14 = *a1;
    if (((*a1)[1] - **a1) > 4)
    {
      v21 = v14[19];
      v22 = (*a2)[19];
      v23 = *(*a3 + 152);
      v24 = *(v12 - 4);
      v25 = v14[6] / (*((*a1)[1] - 4) * *((*a1)[1] - 8));
      command_encoder = mlx::core::cpu::get_command_encoder(a11, a12);
      v32[0] = v21;
      v32[1] = v22;
      v32[2] = v23;
      v33 = a4;
      v34 = a5;
      v35 = a6;
      v36 = a7;
      v37 = v24;
      v38 = a8;
      v39 = a9;
      v26 = *a1;
      v40 = v25;
      memset(v41, 0, sizeof(v41));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v41, *v26, v26[1], (v26[1] - *v26) >> 2);
      v27 = *a1;
      memset(v42, 0, sizeof(v42));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v42, v27[3], v27[4], (v27[4] - v27[3]) >> 3);
      v28 = *a2;
      memset(v43, 0, sizeof(v43));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v43, *v28, v28[1], (v28[1] - *v28) >> 2);
      v29 = *a2;
      memset(__p, 0, 24);
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, v29[3], v29[4], (v29[4] - v29[3]) >> 3);
      mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(command_encoder, v32);
    }
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void mlx::core::Matmul::eval_cpu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = mlx::core::allocator::malloc((*(*a3 + 60) * *(*a3 + 48)));
  v5[0] = &unk_286BE3468;
  v5[1] = mlx::core::allocator::free;
  v5[3] = v5;
  mlx::core::array::set_data(a3, v4);
}

void sub_25A5A5028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  __cxa_free_exception(v13);
  std::mutex::unlock(v12);
  _Unwind_Resume(a1);
}

void mlx::core::AddMM::eval_cpu(uint64_t a1, mlx::core::array **a2, mlx::core::array *a3)
{
  if (*(*a3 + 56) != 10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[AddMM::eval_cpu] Currently only supports float32.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = *(*a2 + 4);
  if (*(v6 + 160) == 1)
  {
    v7 = 0;
  }

  else if ((*(v6 + 168) & 2) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  mlx::core::copy((*a2 + 32), a3, v7, *(a1 + 8), *(a1 + 16));
  v8 = *a2;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 20);
  v12 = *(a1 + 24);
  v13 = (*a2 + 16);

  mlx::core::matmul_general(v8, v13, a3, v9, v10, v11, v12);
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v3;
  v4 = *(a2 + 64);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  v33 = *(a2 + 72);
  v6 = *(a2 + 88);
  v32 = v4;
  v34 = v6;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *v35 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v37 = *(a2 + 120);
  v8 = *(a2 + 136);
  v36 = v7;
  v38 = v8;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *v39 = *(a2 + 144);
  v40 = *(a2 + 160);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  if (*(a1 + 10))
  {
    v9 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>(*(v9[1] + 8 * *a1), &v28);
  }

  v10 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v10);
  v13 = *a1;
  v14 = *(a1 + 2);
  v19 = v32;
  v21 = v34;
  v23 = v36;
  v17 = v30;
  v18 = v31;
  v15 = v28;
  v16 = v29;
  *v20 = v33;
  v33 = 0uLL;
  *v22 = *v35;
  v34 = 0;
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  *v24 = v37;
  v25 = v38;
  v37 = 0uLL;
  *__p = *v39;
  v27 = v40;
  v38 = 0;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  v12 = mlx::core::scheduler::scheduler(v11);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v12[1] + 8 * *a1), &v13);
}

void sub_25A5A5400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}::~dispatch(&a9);
  std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>::~__bind(&a33);
  _Unwind_Resume(a1);
}

void *mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}::~dispatch(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[17];
  if (v3)
  {
    a1[18] = v3;
    operator delete(v3);
  }

  v4 = a1[14];
  if (v4)
  {
    a1[15] = v4;
    operator delete(v4);
  }

  v5 = a1[11];
  if (v5)
  {
    a1[12] = v5;
    operator delete(v5);
  }

  return a1;
}

void *std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>::~__bind(void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    a1[19] = v2;
    operator delete(v2);
  }

  v3 = a1[15];
  if (v3)
  {
    a1[16] = v3;
    operator delete(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    a1[13] = v4;
    operator delete(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    a1[10] = v5;
    operator delete(v5);
  }

  return a1;
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5A558C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = a2[10];
  v5 = *(a2 + 2);
  v4 = *(a2 + 1);
  *v9 = *(a2 + 11);
  v10 = a2[13];
  a2[11] = 0;
  a2[12] = 0;
  *__p = *(a2 + 7);
  v12 = a2[16];
  a2[13] = 0;
  a2[14] = 0;
  a2[15] = 0;
  a2[16] = 0;
  v13 = *(a2 + 17);
  v14 = a2[19];
  a2[17] = 0;
  a2[18] = 0;
  v15 = *(a2 + 10);
  v16 = a2[22];
  a2[19] = 0;
  a2[20] = 0;
  a2[21] = 0;
  a2[22] = 0;
  _ZNSt3__110__function12__value_funcIFvvEEC2B8ne200100IZN3mlx4core3cpu14CommandEncoder8dispatchIZNS6_15matmul_dispatchIfEEvRKNS6_5arrayESD_RSB_bbmmffNS6_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISM_EEEESI_RKT0_(a1);
}

void sub_25A5A57B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}::~dispatch(va);
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIfEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFEA90;
  v2 = a1[21];
  if (v2)
  {
    a1[22] = v2;
    operator delete(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    a1[19] = v3;
    operator delete(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIfEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFEA90;
  v2 = a1[21];
  if (v2)
  {
    a1[22] = v2;
    operator delete(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    a1[19] = v3;
    operator delete(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIfEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFEA90;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}::Stream(a2 + 24, a1 + 24);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIfEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE18destroy_deallocateEv(void *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIfEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7destroyB8ne200100Ev(a1 + 1);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIfEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  v1 = std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIfEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}::Stream(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 96, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 120, *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 2);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 144, *(a2 + 144), *(a2 + 152), (*(a2 + 152) - *(a2 + 144)) >> 3);
  return a1;
}

void sub_25A5A5C38(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[16] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[13] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[10] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function12__alloc_funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIfEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7destroyB8ne200100Ev(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[17];
  if (v3)
  {
    a1[18] = v3;
    operator delete(v3);
  }

  v4 = a1[14];
  if (v4)
  {
    a1[15] = v4;
    operator delete(v4);
  }

  v5 = a1[11];
  if (v5)
  {
    a1[12] = v5;

    operator delete(v5);
  }
}

uint64_t std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 60);
  return mlx::core::matmul<float>(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 25), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 64), (a1 + 72), (a1 + 96), (a1 + 120), (a1 + 144));
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5A5DFC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *(a2 + 8);
  v2 = *a2;
  v3 = a2[1];
  *v7 = *(a2 + 72);
  v8 = *(a2 + 11);
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *v9 = a2[6];
  v10 = *(a2 + 14);
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *__p = *(a2 + 120);
  v12 = *(a2 + 17);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  v13 = a2[9];
  v14 = *(a2 + 20);
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100]<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>>(a1);
}

void sub_25A5A6008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>::~__bind(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFEB10;
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    a1[17] = v3;
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFEB10;
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    a1[17] = v3;
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFEB10;
  result = mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}::Stream(a2 + 8, a1 + 8);
  *(a2 + 180) = 0;
  *(a2 + 177) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__alloc_func<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy[abi:ne200100](void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    a1[19] = v2;
    operator delete(v2);
  }

  v3 = a1[15];
  if (v3)
  {
    a1[16] = v3;
    operator delete(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    a1[13] = v4;
    operator delete(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    a1[10] = v5;

    operator delete(v5);
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v3;
  v4 = *(a2 + 64);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  v33 = *(a2 + 72);
  v6 = *(a2 + 88);
  v32 = v4;
  v34 = v6;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *v35 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v37 = *(a2 + 120);
  v8 = *(a2 + 136);
  v36 = v7;
  v38 = v8;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *v39 = *(a2 + 144);
  v40 = *(a2 + 160);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  if (*(a1 + 10))
  {
    v9 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>(*(v9[1] + 8 * *a1), &v28);
  }

  v10 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v10);
  v13 = *a1;
  v14 = *(a1 + 2);
  v19 = v32;
  v21 = v34;
  v23 = v36;
  v17 = v30;
  v18 = v31;
  v15 = v28;
  v16 = v29;
  *v20 = v33;
  v33 = 0uLL;
  *v22 = *v35;
  v34 = 0;
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  *v24 = v37;
  v25 = v38;
  v37 = 0uLL;
  *__p = *v39;
  v27 = v40;
  v38 = 0;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  v12 = mlx::core::scheduler::scheduler(v11);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v12[1] + 8 * *a1), &v13);
}

void sub_25A5A6648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}::~dispatch(&a9);
  std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>::~__bind(&a33);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5A670C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = a2[10];
  v5 = *(a2 + 2);
  v4 = *(a2 + 1);
  *v9 = *(a2 + 11);
  v10 = a2[13];
  a2[11] = 0;
  a2[12] = 0;
  *__p = *(a2 + 7);
  v12 = a2[16];
  a2[13] = 0;
  a2[14] = 0;
  a2[15] = 0;
  a2[16] = 0;
  v13 = *(a2 + 17);
  v14 = a2[19];
  a2[17] = 0;
  a2[18] = 0;
  v15 = *(a2 + 10);
  v16 = a2[22];
  a2[19] = 0;
  a2[20] = 0;
  a2[21] = 0;
  a2[22] = 0;
  _ZNSt3__110__function12__value_funcIFvvEEC2B8ne200100IZN3mlx4core3cpu14CommandEncoder8dispatchIZNS6_15matmul_dispatchIDhEEvRKNS6_5arrayESD_RSB_bbmmffNS6_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISM_EEEESI_RKT0_(a1);
}

void sub_25A5A6930(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}::~dispatch(va);
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIDhEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFEC08;
  v2 = a1[21];
  if (v2)
  {
    a1[22] = v2;
    operator delete(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    a1[19] = v3;
    operator delete(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIDhEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFEC08;
  v2 = a1[21];
  if (v2)
  {
    a1[22] = v2;
    operator delete(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    a1[19] = v3;
    operator delete(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIDhEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFEC08;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}::Stream(a2 + 24, a1 + 24);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIDhEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE18destroy_deallocateEv(void *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIfEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7destroyB8ne200100Ev(a1 + 1);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIDhEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIDhEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}::Stream(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 96, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 120, *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 2);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 144, *(a2 + 144), *(a2 + 152), (*(a2 + 152) - *(a2 + 144)) >> 3);
  return a1;
}

void sub_25A5A6DB8(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[16] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[13] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[10] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5A6F04(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *(a2 + 8);
  v2 = *a2;
  v3 = a2[1];
  *v7 = *(a2 + 72);
  v8 = *(a2 + 11);
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *v9 = a2[6];
  v10 = *(a2 + 14);
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *__p = *(a2 + 120);
  v12 = *(a2 + 17);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  v13 = a2[9];
  v14 = *(a2 + 20);
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100]<std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>>(a1);
}

void sub_25A5A7110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>::~__bind(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFEC88;
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    a1[17] = v3;
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFEC88;
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    a1[17] = v3;
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFEC88;
  result = mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}::Stream(a2 + 8, a1 + 8);
  *(a2 + 180) = 0;
  *(a2 + 177) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v3;
  v4 = *(a2 + 64);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  v33 = *(a2 + 72);
  v6 = *(a2 + 88);
  v32 = v4;
  v34 = v6;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *v35 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v37 = *(a2 + 120);
  v8 = *(a2 + 136);
  v36 = v7;
  v38 = v8;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *v39 = *(a2 + 144);
  v40 = *(a2 + 160);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  if (*(a1 + 10))
  {
    v9 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>(*(v9[1] + 8 * *a1), &v28);
  }

  v10 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v10);
  v13 = *a1;
  v14 = *(a1 + 2);
  v19 = v32;
  v21 = v34;
  v23 = v36;
  v17 = v30;
  v18 = v31;
  v15 = v28;
  v16 = v29;
  *v20 = v33;
  v33 = 0uLL;
  *v22 = *v35;
  v34 = 0;
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  *v24 = v37;
  v25 = v38;
  v37 = 0uLL;
  *__p = *v39;
  v27 = v40;
  v38 = 0;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  v12 = mlx::core::scheduler::scheduler(v11);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v12[1] + 8 * *a1), &v13);
}

void sub_25A5A76D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}::~dispatch(&a9);
  std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>::~__bind(&a33);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5A779C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = a2[10];
  v5 = *(a2 + 2);
  v4 = *(a2 + 1);
  *v9 = *(a2 + 11);
  v10 = a2[13];
  a2[11] = 0;
  a2[12] = 0;
  *__p = *(a2 + 7);
  v12 = a2[16];
  a2[13] = 0;
  a2[14] = 0;
  a2[15] = 0;
  a2[16] = 0;
  v13 = *(a2 + 17);
  v14 = a2[19];
  a2[17] = 0;
  a2[18] = 0;
  v15 = *(a2 + 10);
  v16 = a2[22];
  a2[19] = 0;
  a2[20] = 0;
  a2[21] = 0;
  a2[22] = 0;
  _ZNSt3__110__function12__value_funcIFvvEEC2B8ne200100IZN3mlx4core3cpu14CommandEncoder8dispatchIZNS6_15matmul_dispatchINS6_13_MLX_BFloat16EEEvRKNS6_5arrayESE_RSC_bbmmffNS6_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISN_EEEESJ_RKT0_(a1);
}

void sub_25A5A79C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}::~dispatch(va);
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESB_RS9_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFED80;
  v2 = a1[21];
  if (v2)
  {
    a1[22] = v2;
    operator delete(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    a1[19] = v3;
    operator delete(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESB_RS9_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFED80;
  v2 = a1[21];
  if (v2)
  {
    a1[22] = v2;
    operator delete(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    a1[19] = v3;
    operator delete(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESB_RS9_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFED80;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}::Stream(a2 + 24, a1 + 24);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESB_RS9_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE18destroy_deallocateEv(void *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIfEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7destroyB8ne200100Ev(a1 + 1);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESB_RS9_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEEclEv(uint64_t a1)
{
  std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESB_RS9_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}::Stream(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 96, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 120, *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 2);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 144, *(a2 + 144), *(a2 + 152), (*(a2 + 152) - *(a2 + 144)) >> 3);
  return a1;
}

void sub_25A5A7E48(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[16] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[13] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[10] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5A7F94(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *(a2 + 8);
  v2 = *a2;
  v3 = a2[1];
  *v7 = *(a2 + 72);
  v8 = *(a2 + 11);
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *v9 = a2[6];
  v10 = *(a2 + 14);
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *__p = *(a2 + 120);
  v12 = *(a2 + 17);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  v13 = a2[9];
  v14 = *(a2 + 20);
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100]<std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>>(a1);
}

void sub_25A5A81A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>::~__bind(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFEE00;
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    a1[17] = v3;
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFEE00;
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    a1[17] = v3;
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFEE00;
  result = mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}::Stream(a2 + 8, a1 + 8);
  *(a2 + 180) = 0;
  *(a2 + 177) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v3;
  v4 = *(a2 + 64);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  v33 = *(a2 + 72);
  v6 = *(a2 + 88);
  v32 = v4;
  v34 = v6;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *v35 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v37 = *(a2 + 120);
  v8 = *(a2 + 136);
  v36 = v7;
  v38 = v8;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *v39 = *(a2 + 144);
  v40 = *(a2 + 160);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  if (*(a1 + 10))
  {
    v9 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>(*(v9[1] + 8 * *a1), &v28);
  }

  v10 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v10);
  v13 = *a1;
  v14 = *(a1 + 2);
  v19 = v32;
  v21 = v34;
  v23 = v36;
  v17 = v30;
  v18 = v31;
  v15 = v28;
  v16 = v29;
  *v20 = v33;
  v33 = 0uLL;
  *v22 = *v35;
  v34 = 0;
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  *v24 = v37;
  v25 = v38;
  v37 = 0uLL;
  *__p = *v39;
  v27 = v40;
  v38 = 0;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  v12 = mlx::core::scheduler::scheduler(v11);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v12[1] + 8 * *a1), &v13);
}

void sub_25A5A8768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}::~dispatch(&a9);
  std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>::~__bind(&a33);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5A882C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = a2[10];
  v5 = *(a2 + 2);
  v4 = *(a2 + 1);
  *v9 = *(a2 + 11);
  v10 = a2[13];
  a2[11] = 0;
  a2[12] = 0;
  *__p = *(a2 + 7);
  v12 = a2[16];
  a2[13] = 0;
  a2[14] = 0;
  a2[15] = 0;
  a2[16] = 0;
  v13 = *(a2 + 17);
  v14 = a2[19];
  a2[17] = 0;
  a2[18] = 0;
  v15 = *(a2 + 10);
  v16 = a2[22];
  a2[19] = 0;
  a2[20] = 0;
  a2[21] = 0;
  a2[22] = 0;
  _ZNSt3__110__function12__value_funcIFvvEEC2B8ne200100IZN3mlx4core3cpu14CommandEncoder8dispatchIZNS6_15matmul_dispatchIdEEvRKNS6_5arrayESD_RSB_bbmmffNS6_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISM_EEEESI_RKT0_(a1);
}

void sub_25A5A8A50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}::~dispatch(va);
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIdEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFEEF8;
  v2 = a1[21];
  if (v2)
  {
    a1[22] = v2;
    operator delete(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    a1[19] = v3;
    operator delete(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIdEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFEEF8;
  v2 = a1[21];
  if (v2)
  {
    a1[22] = v2;
    operator delete(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    a1[19] = v3;
    operator delete(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIdEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFEEF8;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}::Stream(a2 + 24, a1 + 24);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIdEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE18destroy_deallocateEv(void *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIfEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7destroyB8ne200100Ev(a1 + 1);

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIdEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  v1 = std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_15matmul_dispatchIdEEvRKNS3_5arrayESA_RS8_bbmmffNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}::Stream(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 96, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 120, *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 2);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1 + 144, *(a2 + 144), *(a2 + 152), (*(a2 + 152) - *(a2 + 144)) >> 3);
  return a1;
}

void sub_25A5A8ED8(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[16] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[13] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[10] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 60);
  return mlx::core::matmul<double>(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 25), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 64), (a1 + 72), (a1 + 96), (a1 + 120), (a1 + 144));
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5A9024(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *(a2 + 8);
  v2 = *a2;
  v3 = a2[1];
  *v7 = *(a2 + 72);
  v8 = *(a2 + 11);
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *v9 = a2[6];
  v10 = *(a2 + 14);
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *__p = *(a2 + 120);
  v12 = *(a2 + 17);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  v13 = a2[9];
  v14 = *(a2 + 20);
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100]<std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>>(a1);
}

void sub_25A5A9230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>::~__bind(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFEF78;
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    a1[17] = v3;
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFEF78;
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    a1[17] = v3;
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFEF78;
  result = mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}::Stream(a2 + 8, a1 + 8);
  *(a2 + 180) = 0;
  *(a2 + 177) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::matmul_dispatch<double>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,BOOL,BOOL,unsigned long,unsigned long,float,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6Matmul8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFF070;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6Matmul8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  bzero(*(a1 + 24), *(a1 + 32));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6Matmul8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<mlx::core::Matmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Matmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFF0F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 25) = 0;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<mlx::core::Matmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Matmul::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::FFT::eval_cpu(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v21[60] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = **a2;
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  v19[1] = 0;
  v20 = 0;
  v19[0] = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<std::__wrap_iter<long long const*>,std::__wrap_iter<long long const*>>(v19, v6, v7, (v7 - v6) >> 3);
  v8 = v19[0];
  v9 = v19[1];
  if (v19[0] != v19[1])
  {
    v10 = *v4;
    do
    {
      *v8++ *= *(v10 + 60);
    }

    while (v8 != v9);
  }

  v11 = *(*a3 + 24);
  v12 = *(*a3 + 32);
  v17[1] = 0;
  v18 = 0;
  v17[0] = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<std::__wrap_iter<long long const*>,std::__wrap_iter<long long const*>>(v17, v11, v12, (v12 - v11) >> 3);
  v13 = v17[0];
  v14 = v17[1];
  v15 = *a3;
  while (v13 != v14)
  {
    *v13++ *= *(v15 + 60);
  }

  v16 = mlx::core::allocator::malloc((*(v15 + 60) * *(v15 + 48)));
  v21[0] = &unk_286BE3468;
  v21[1] = mlx::core::allocator::free;
  v21[3] = v21;
  mlx::core::array::set_data(a3, v16);
}

void sub_25A5AA824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_free_exception(v68);
  std::mutex::unlock(v67);
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>(mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1 &&)::{lambda(void)#1}::~dispatch(&a48);
  std::tuple<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL>::~tuple(&a67);
  std::tuple<std::vector<int>,std::vector<int>,std::vector<int>,std::vector<int>,int,BOOL>::~tuple(&a17);
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  if (a37)
  {
    a38 = a37;
    operator delete(a37);
  }

  if (a41)
  {
    a42 = a41;
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

void mlx::core::FFT::~FFT(mlx::core::FFT *this)
{
  *this = &unk_286BFF1E8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286BFF1E8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::vector<long>::__init_with_size[abi:ne200100]<std::__wrap_iter<long long const*>,std::__wrap_iter<long long const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A5AABA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(void *a1, char *__src, int *a3, int *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if (a5 <= (v10 - v9) >> 3)
  {
    v16 = (v9 - __src) >> 3;
    if (v16 >= a5)
    {
      v20 = &__src[8 * a5];
      v21 = &v9[-8 * a5];
      v22 = a1[1];
      while (v21 < v9)
      {
        v23 = *v21;
        v21 += 8;
        *v22++ = v23;
      }

      a1[1] = v22;
      if (v9 != v20)
      {
        memmove(&__src[8 * a5], __src, v9 - v20);
      }

      v24 = &v7[a5];
      v25 = __src;
      do
      {
        v26 = *v7++;
        *v25++ = v26;
      }

      while (v7 != v24);
    }

    else
    {
      v17 = (a3 + ((v9 - __src) >> 1));
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v36 = (a3 + ((v9 - __src) >> 1));
        v19 = a1[1];
        do
        {
          v37 = *v36++;
          *v19 = v37;
          v19 += 8;
          ++v18;
        }

        while (v36 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v38 = &__src[8 * a5];
        v39 = &v18[-a5];
        v40 = v18;
        while (v39 < v9)
        {
          v41 = *v39;
          v39 += 8;
          *v40++ = v41;
        }

        a1[1] = v40;
        if (v19 != v38)
        {
          memmove(&__src[8 * a5], __src, v18 - v38);
        }

        v42 = __src;
        do
        {
          v43 = *v7++;
          *v42++ = v43;
        }

        while (v7 != v17);
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + (&v9[-*a1] >> 3);
  if (v12 >> 61)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v13 = __src - v11;
  v14 = v10 - v11;
  if (v14 >> 2 > v12)
  {
    v12 = v14 >> 2;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(a1, v15);
  }

  v27 = 8 * (v13 >> 3);
  v28 = 8 * a5;
  v29 = v27;
  do
  {
    v30 = *v7++;
    *v29++ = v30;
    v28 -= 8;
  }

  while (v28);
  memcpy((v27 + 8 * a5), __src, a1[1] - __src);
  v31 = *a1;
  v32 = v27 + 8 * a5 + a1[1] - __src;
  a1[1] = __src;
  v33 = (__src - v31);
  v34 = (v27 - (__src - v31));
  memcpy(v34, v31, v33);
  v35 = *a1;
  *a1 = v34;
  a1[1] = v32;
  a1[2] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  return v27;
}

void *mlx::core::cpu::CommandEncoder::dispatch<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>(mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1 &&)::{lambda(void)#1}::~dispatch(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    a1[3] = v5;
    operator delete(v5);
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFF270;
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFF270;
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFF270;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>::__bind(a2 + 24, a1 + 24);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;

    operator delete(v5);
  }
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[12];
  if (v2)
  {
    __p[13] = v2;
    operator delete(v2);
  }

  v3 = __p[9];
  if (v3)
  {
    __p[10] = v3;
    operator delete(v3);
  }

  v4 = __p[6];
  if (v4)
  {
    __p[7] = v4;
    operator delete(v4);
  }

  v5 = __p[3];
  if (v5)
  {
    __p[4] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  pocketfft::detail::c2c<float>((a1 + 24), (a1 + 48), (a1 + 72), (a1 + 96), (*(a1 + 120) & 1) == 0, *(a1 + 128), *(a1 + 136), 1uLL, *(a1 + 144));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__1JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>::__bind(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1 + 48, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 3);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 3);
  v4 = *(a2 + 96);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 96) = v4;
  return a1;
}

void sub_25A5AB274(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A5AB320(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void pocketfft::detail::c2c<float>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t **a4, char a5, uint64_t a6, uint64_t a7, unint64_t a8, float a9)
{
  v18 = *a1;
  v19 = a1[1];
  if (*a1 == v19)
  {
    goto LABEL_5;
  }

  v20 = 1;
  do
  {
    v21 = *v18++;
    v20 *= v21;
  }

  while (v18 != v19);
  if (v20)
  {
LABEL_5:
    pocketfft::detail::util::sanity_check(a1, a2, a3, a6 == a7, a4);
    pocketfft::detail::arr_info::arr_info(v27, a1, a2);
    v30 = a6;
    pocketfft::detail::arr_info::arr_info(v23, a1, a3);
    v26 = a7;
    v22 = a5;
    pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(v27, v23, a4, a8, &v22, 1, a9);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    if (v23[0])
    {
      v23[1] = v23[0];
      operator delete(v23[0]);
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    if (v27[0])
    {
      v27[1] = v27[0];
      operator delete(v27[0]);
    }
  }
}

void sub_25A5AB470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(va);
  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(va1);
  _Unwind_Resume(a1);
}

void pocketfft::detail::util::sanity_check(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t **a5)
{
  pocketfft::detail::util::sanity_check(a1, a2, a3, a4);
  v7 = (a1[1] - *a1) >> 3;
  std::vector<unsigned long>::vector[abi:ne200100](__p, v7);
  v8 = *a5;
  v9 = a5[1];
  if (*a5 != v9)
  {
    v10 = __p[0];
    while (1)
    {
      v11 = *v8;
      if (*v8 >= v7)
      {
        break;
      }

      v12 = v10[v11] + 1;
      v10[v11] = v12;
      if (v12 >= 2)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "axis specified repeatedly");
        goto LABEL_11;
      }

      if (++v8 == v9)
      {
        goto LABEL_6;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "bad axis number");
LABEL_11:
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

LABEL_6:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_25A5AB5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  __cxa_free_exception(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(uint64_t **a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, char a6, float a7)
{
  v21 = a7;
  v20 = a6;
  v19 = 0uLL;
  v18 = 0;
  v7 = *a3;
  if (a3[1] != *a3)
  {
    v13 = 0;
    do
    {
      v14 = (*a1)[*(v7 + 8 * v13)];
      v17 = v14;
      if (!v19 || v14 != *(v19 + 16))
      {
        v22 = v14;
        std::allocate_shared[abi:ne200100]<pocketfft::detail::pocketfft_c<float>,std::allocator<pocketfft::detail::pocketfft_c<float>>,unsigned long &,0>();
      }

      v15 = pocketfft::detail::util::thread_count(a4, a1, *(v7 + 8 * v13), 1);
      v16[0] = a1;
      v16[1] = &v17;
      v16[2] = &v18;
      v16[3] = a2;
      v16[4] = a3;
      v16[5] = a5;
      v16[6] = &v19;
      v16[7] = &v21;
      v16[8] = &v20;
      pocketfft::detail::threading::thread_map<void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1}>(v15, v16);
      v21 = 1.0;
      v13 = v18 + 1;
      v18 = v13;
      v7 = *a3;
    }

    while (v13 < (a3[1] - *a3) >> 3);
    if (*(&v19 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
    }
  }
}

void sub_25A5AB724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

const void *pocketfft::detail::util::sanity_check(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a1[1];
  v6 = v5 - *a1;
  if (v5 == *a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "ndim must be >= 1");
    goto LABEL_10;
  }

  result = *a2;
  if (*(a2 + 8) - *a2 != v6 || *(a3 + 8) - *a3 != v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "stride dimension mismatch");
    goto LABEL_10;
  }

  if (a4)
  {
    result = memcmp(result, *a3, v6);
    if (result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "stride mismatch");
LABEL_10:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25A5AB8E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *pocketfft::detail::arr_info::arr_info(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  return a1;
}

void sub_25A5AB95C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v3 = pocketfft::detail::threading::max_threads(0);
  }

  if (v3 == 1)
  {
    v4 = *MEMORY[0x277D85DE8];

    pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1}::operator()(a2);
  }

  else
  {
    {
      if (v6)
      {
        v7 = pocketfft::detail::threading::max_threads(v6);
        pocketfft::detail::threading::thread_pool::thread_pool(&pocketfft::detail::threading::get_pool(void)::pool, v7);
        __cxa_atexit(pocketfft::detail::threading::thread_pool::~thread_pool, &pocketfft::detail::threading::get_pool(void)::pool, &dword_25A232000);
      }
    }

    v11 = v3;
    v12.__m_.__sig = 850045863;
    memset(v12.__m_.__opaque, 0, sizeof(v12.__m_.__opaque));
    v13.__cv_.__sig = 1018212795;
    memset(v13.__cv_.__opaque, 0, sizeof(v13.__cv_.__opaque));
    v8.__ptr_ = 0;
    v10.__m_.__sig = 850045863;
    memset(v10.__m_.__opaque, 0, sizeof(v10.__m_.__opaque));
    if (v3)
    {
      v9 = 0;
      operator new();
    }

    pocketfft::detail::threading::latch::wait(&v11);
    std::mutex::~mutex(&v10);
    std::exception_ptr::~exception_ptr(&v8);
    std::condition_variable::~condition_variable(&v13);
    std::mutex::~mutex(&v12);
    v5 = *MEMORY[0x277D85DE8];
  }
}

unint64_t pocketfft::detail::util::thread_count(unint64_t result, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {
    v4 = a2[1];
    v5 = 1;
    if (*a2 != v4)
    {
      v6 = *a2;
      do
      {
        v7 = *v6++;
        v5 *= v7;
      }

      while (v6 != v4);
    }

    v8 = (*a2)[a3];
    v9 = v5 / (v8 * a4);
    if (v8 >= 0x3E8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 >> 2;
    }

    if (!result)
    {
      result = std::thread::hardware_concurrency();
    }

    if (result >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = result;
    }

    if (v11 <= 1)
    {
      return 1;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

void *std::__shared_ptr_emplace<pocketfft::detail::pocketfft_c<float>>::__shared_ptr_emplace[abi:ne200100]<unsigned long &,std::allocator<pocketfft::detail::pocketfft_c<float>>,0>(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BFF2E0;
  pocketfft::detail::pocketfft_c<float>::pocketfft_c(a1 + 3, *a2);
  return a1;
}

void std::__shared_ptr_emplace<pocketfft::detail::pocketfft_c<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BFF2E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t *std::__shared_ptr_emplace<pocketfft::detail::pocketfft_c<float>>::__on_zero_shared(uint64_t a1)
{
  std::unique_ptr<pocketfft::detail::fftblue<float>>::reset[abi:ne200100]((a1 + 32), 0);

  return std::unique_ptr<pocketfft::detail::cfftp<float>>::reset[abi:ne200100]((a1 + 24), 0);
}

void pocketfft::detail::pocketfft_c<float>::pocketfft_c(void *a1, pocketfft::detail::util *this)
{
  a1[1] = 0;
  *a1 = 0;
  a1[2] = this;
  if (this)
  {
    if (this >= 0x32)
    {
      v3 = pocketfft::detail::util::largest_prime_factor(this);
    }

    else
    {
      v3 = 0;
    }

    if (v3 * v3 > this)
    {
      v4 = pocketfft::detail::util::cost_guess(this);
      v5 = pocketfft::detail::util::good_size_cmplx(2 * this - 1);
      v6 = pocketfft::detail::util::cost_guess(v5);
      if ((v6 + v6) * 1.5 < v4)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "zero-length FFT requested");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5ABFCC(_Unwind_Exception *a1)
{
  MEMORY[0x25F851760](v3, 0x1020C409D20112CLL);
  std::unique_ptr<pocketfft::detail::fftblue<float>>::reset[abi:ne200100](v2, 0);
  std::unique_ptr<pocketfft::detail::cfftp<float>>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

unint64_t pocketfft::detail::util::largest_prime_factor(unint64_t this)
{
  v1 = 1;
  do
  {
    v2 = v1;
    v3 = this;
    this >>= 1;
    v1 = 2;
  }

  while ((v3 & 1) == 0);
  if (v3 >= 9)
  {
    v4 = 3;
    do
    {
      if (!(v3 % v4))
      {
        do
        {
          v3 /= v4;
        }

        while (!(v3 % v4));
        v2 = v4;
      }

      v4 += 2;
    }

    while (v4 * v4 <= v3);
  }

  if (v3 <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

double pocketfft::detail::util::cost_guess(pocketfft::detail::util *this)
{
  v1 = 0.0;
  v2 = this;
  if ((this & 1) == 0)
  {
    v3 = this;
    do
    {
      v1 = v1 + 2.0;
      v2 = v3 >> 1;
      v4 = v3;
      v3 >>= 1;
    }

    while ((v4 & 2) == 0);
  }

  if (v2 >= 9)
  {
    v5 = 3;
    do
    {
      if (!(v2 % v5))
      {
        v6 = v5;
        if (v5 >= 6)
        {
          v6 = v5 * 1.1;
        }

        do
        {
          v1 = v6 + v1;
          v2 /= v5;
        }

        while (!(v2 % v5));
      }

      v5 += 2;
    }

    while (v5 * v5 <= v2);
  }

  if (v2 > 1)
  {
    v7 = v2;
    if (v2 >= 6)
    {
      v7 = v2 * 1.1;
    }

    v1 = v1 + v7;
  }

  return v1 * this;
}

pocketfft::detail::util *pocketfft::detail::util::good_size_cmplx(unint64_t this)
{
  if (this < 0xD)
  {
    return this;
  }

  result = (2 * this);
  if (2 * this)
  {
    v3 = 1;
LABEL_5:
    v4 = v3;
LABEL_6:
    v5 = v4;
LABEL_7:
    v6 = v5;
    do
    {
      v7 = v6;
      v6 *= 2;
    }

    while (v7 < this);
    while (1)
    {
      while (v7 < this)
      {
        v7 *= 3;
      }

      if (v7 <= this)
      {
        return this;
      }

      if (v7 < result)
      {
        result = v7;
      }

      if (v7)
      {
        v5 *= 5;
        if (v5 < result)
        {
          goto LABEL_7;
        }

        v4 *= 7;
        if (v4 < result)
        {
          goto LABEL_6;
        }

        v3 *= 11;
        if (v3 < result)
        {
          goto LABEL_5;
        }

        return result;
      }

      v7 >>= 1;
    }
  }

  return result;
}

uint64_t pocketfft::detail::cfftp<float>::cfftp(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  v3 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  if (a2 != 1)
  {
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "zero-length FFT requested");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    pocketfft::detail::cfftp<float>::factorize(a1);
    v4 = pocketfft::detail::cfftp<float>::twsize(a1);
    pocketfft::detail::arr<pocketfft::detail::cmplx<float>>::resize(v3, v4);
    pocketfft::detail::cfftp<float>::comp_twiddle(a1);
  }

  return a1;
}

void sub_25A5AC298(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  v5 = *(v2 + 24);
  if (v5)
  {
    *(v2 + 32) = v5;
    operator delete(v5);
  }

  free(*v1);
  _Unwind_Resume(a1);
}

void pocketfft::detail::cfftp<float>::factorize(unint64_t *a1)
{
  v2 = *a1;
  if ((*a1 & 7) != 0)
  {
    v3 = *a1;
  }

  else
  {
    do
    {
      pocketfft::detail::cfftp<float>::add_factor(a1, 8);
      v3 = v2 >> 3;
      v4 = (v2 & 0x38) == 0;
      v2 >>= 3;
    }

    while (v4);
  }

  if ((v3 & 3) != 0)
  {
    v5 = v3;
  }

  else
  {
    do
    {
      pocketfft::detail::cfftp<float>::add_factor(a1, 4);
      v5 = v3 >> 2;
      v4 = (v3 & 0xC) == 0;
      v3 >>= 2;
    }

    while (v4);
  }

  if ((v5 & 1) == 0)
  {
    v5 >>= 1;
    pocketfft::detail::cfftp<float>::add_factor(a1, 2);
    v6 = a1[3];
    v7 = a1[4];
    v8 = *v6;
    *v6 = *(v7 - 24);
    *(v7 - 24) = v8;
  }

  if (v5 >= 9)
  {
    v9 = 3;
    do
    {
      while (!(v5 % v9))
      {
        pocketfft::detail::cfftp<float>::add_factor(a1, v9);
        v5 /= v9;
      }

      v9 += 2;
    }

    while (v9 * v9 <= v5);
  }

  if (v5 > 1)
  {

    pocketfft::detail::cfftp<float>::add_factor(a1, v5);
  }
}

void *pocketfft::detail::arr<pocketfft::detail::cmplx<float>>::resize(void *result, void *a2)
{
  if (result[1] != a2)
  {
    v3 = result;
    free(*result);
    result = pocketfft::detail::arr<pocketfft::detail::cmplx<float>>::ralloc(a2);
    *v3 = result;
    v3[1] = a2;
  }

  return result;
}

uint64_t pocketfft::detail::cfftp<float>::twsize(unint64_t *a1)
{
  v1 = a1[3];
  v2 = a1[4] - v1;
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 3);
  v6 = *a1;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v7 = 1;
  do
  {
    v9 = *v1;
    v1 += 3;
    v8 = v9;
    v7 *= v9;
    v10 = v9 - 1;
    if (v9 <= 0xB)
    {
      v8 = 0;
    }

    result += v8 + (v6 / v7 - 1) * v10;
    --v5;
  }

  while (v5);
  return result;
}

void pocketfft::detail::cfftp<float>::comp_twiddle(void *a1)
{
  pocketfft::detail::sincos_2pibyn<float>::sincos_2pibyn(v26, *a1);
  v2 = a1[3];
  if (a1[4] != v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = (v2 + 24 * v4);
      v7 = *v6;
      v8 = *v6 * v5;
      v9 = *a1 / v8;
      v6[1] = a1[1] + 8 * v3;
      v3 += (v9 - 1) * (v7 - 1);
      if (v7 >= 2)
      {
        v23 = v3;
        v24 = v8;
        v10 = v5;
        v11 = 1;
        v25 = v5;
        do
        {
          if (v9 >= 2)
          {
            v12 = v10;
            for (i = 1; i < v9; ++i)
            {
              v14 = pocketfft::detail::sincos_2pibyn<float>::operator[](v26, v12);
              v2 = a1[3];
              v15 = *(v2 + 24 * v4 + 8) + 8 * (v11 - 1) * (v9 - 1) + 8 * i;
              *(v15 - 8) = v14;
              *(v15 - 4) = v16;
              v12 += v10;
            }

            v5 = v25;
          }

          ++v11;
          v10 += v5;
        }

        while (v11 != v7);
        v3 = v23;
        v8 = v24;
        if (v7 > 0xB)
        {
          v17 = 0;
          v18 = 0;
          *(v2 + 24 * v4 + 16) = a1[1] + 8 * v23;
          v3 = v23 + v7;
          v19 = v9 * v5;
          do
          {
            v20 = pocketfft::detail::sincos_2pibyn<float>::operator[](v26, v19 * v18);
            v2 = a1[3];
            v21 = *(v2 + 24 * v4 + 16) + v17;
            *v21 = v20;
            *(v21 + 4) = v22;
            ++v18;
            v17 += 8;
            --v7;
          }

          while (v7);
          v8 = v24;
        }
      }

      ++v4;
      v5 = v8;
    }

    while (v4 < 0xAAAAAAAAAAAAAAABLL * ((a1[4] - v2) >> 3));
  }

  free(v26[5]);
  free(v26[3]);
}

void sub_25A5AC650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19)
{
  free(a19);
  free(a17);
  _Unwind_Resume(a1);
}

void pocketfft::detail::cfftp<float>::add_factor(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = a1[5];
  if (v4 >= v5)
  {
    v7 = a1[3];
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pocketfft::detail::cfftp<float>::fctdata>>((a1 + 3), v11);
    }

    v12 = 24 * v8;
    v6 = 24 * v8 + 24;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *v12 = a2;
    v13 = a1[3];
    v14 = a1[4] - v13;
    v15 = v12 - v14;
    memcpy((v12 - v14), v13, v14);
    v16 = a1[3];
    a1[3] = v15;
    a1[4] = v6;
    a1[5] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = (v4 + 3);
    v4[1] = 0;
    v4[2] = 0;
    *v4 = a2;
  }

  a1[4] = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pocketfft::detail::cfftp<float>::fctdata>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *pocketfft::detail::arr<pocketfft::detail::cmplx<float>>::ralloc(void *result)
{
  if (result)
  {
    result = malloc_type_aligned_alloc(0x40uLL, (8 * result + 63) & 0xFFFFFFFFFFFFFFC0, 0x900E4C1uLL);
    if (!result)
    {
      exception = __cxa_allocate_exception(8uLL);
      v2 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v2, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  return result;
}

float pocketfft::detail::sincos_2pibyn<float>::operator[](void *a1, unint64_t a2)
{
  if (*a1 >= 2 * a2)
  {
    v6 = (a1[3] + 16 * (a1[1] & a2));
    v7 = *v6;
    v8 = v6[1];
    v9 = (a1[5] + 16 * (a2 >> a1[2]));
    return v7 * *v9 - v8 * v9[1];
  }

  else
  {
    v2 = *a1 - a2;
    v3 = (a1[3] + 16 * (a1[1] & v2));
    v4 = (a1[5] + 16 * (v2 >> a1[2]));
    return *v3 * *v4 - v3[1] * v4[1];
  }
}

unint64_t *pocketfft::detail::sincos_2pibyn<float>::sincos_2pibyn(unint64_t *a1, unint64_t a2)
{
  v4 = 0;
  *(a1 + 3) = 0u;
  *(a1 + 5) = 0u;
  v5 = a1 + 5;
  *a1 = a2;
  v6 = a2;
  v7 = (a2 + 2) >> 1;
  do
  {
    v8 = 1 << ++v4;
  }

  while (1 << v4 << v4 < v7);
  a1[1] = v8 - 1;
  a1[2] = v4;
  pocketfft::detail::arr<pocketfft::detail::cmplx<double>>::resize(a1 + 3, v8);
  v9 = a1[4];
  *a1[3] = xmmword_25A9DF900;
  v10 = 0.785398163 / v6;
  if (v9 >= 2)
  {
    v11 = 0;
    for (i = 1; i < v14; ++i)
    {
      v13 = pocketfft::detail::sincos_2pibyn<float>::calc(i, a2, v10);
      v14 = a1[4];
      v15 = a1[3] + v11;
      *(v15 + 16) = v13;
      *(v15 + 24) = v16;
      v11 += 16;
    }
  }

  pocketfft::detail::arr<pocketfft::detail::cmplx<double>>::resize(v5, (a1[1] + v7) / (a1[1] + 1));
  v17 = a1[6];
  *a1[5] = xmmword_25A9DF900;
  if (v17 >= 2)
  {
    v18 = 0;
    for (j = 1; j < v21; ++j)
    {
      v20 = pocketfft::detail::sincos_2pibyn<float>::calc(j + j * a1[1], a2, v10);
      v21 = a1[6];
      v22 = a1[5] + v18;
      *(v22 + 16) = v20;
      *(v22 + 24) = v23;
      v18 += 16;
    }
  }

  return a1;
}

void sub_25A5ACA14(_Unwind_Exception *a1)
{
  free(*v2);
  free(*v1);
  _Unwind_Resume(a1);
}

void *pocketfft::detail::arr<pocketfft::detail::cmplx<double>>::resize(void *result, uint64_t a2)
{
  if (result[1] != a2)
  {
    v3 = result;
    free(*result);
    if (a2)
    {
      result = malloc_type_aligned_alloc(0x40uLL, (16 * a2 + 63) & 0xFFFFFFFFFFFFFFC0, 0x900E4C1uLL);
      if (!result)
      {
        exception = __cxa_allocate_exception(8uLL);
        v5 = std::bad_alloc::bad_alloc(exception);
        __cxa_throw(v5, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
      }
    }

    else
    {
      result = 0;
    }

    *v3 = result;
    v3[1] = a2;
  }

  return result;
}

double pocketfft::detail::sincos_2pibyn<float>::calc(uint64_t a1, unint64_t a2, double a3)
{
  v3 = 8 * a1;
  if (8 * a1 >= 4 * a2)
  {
    v6 = 8 * (a2 - a1);
    v7 = 2 * a2;
    if (v6 >= 2 * a2)
    {
      v9 = v6 - v7;
      if (v9 >= a2)
      {
        return -__sincos_stret((v7 - v9) * a3).__cosval;
      }

      else
      {
        return -__sincos_stret(v9 * a3).__sinval;
      }
    }

    else if (v6 >= a2)
    {
      *&result = *&__sincos_stret((v7 - v6) * a3);
    }

    else
    {
      return __sincos_stret(v6 * a3).__cosval;
    }
  }

  else
  {
    v4 = 2 * a2;
    if (v3 >= 2 * a2)
    {
      v8 = v3 - v4;
      if (v8 >= a2)
      {
        return -__sincos_stret((v4 - v8) * a3).__cosval;
      }

      else
      {
        return -__sincos_stret(v8 * a3).__sinval;
      }
    }

    else if (v3 >= a2)
    {
      *&result = *&__sincos_stret((v4 - v3) * a3);
    }

    else
    {
      return __sincos_stret(v3 * a3).__cosval;
    }
  }

  return result;
}

uint64_t *std::unique_ptr<pocketfft::detail::cfftp<float>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 32) = v3;
      operator delete(v3);
    }

    free(*(v2 + 8));

    JUMPOUT(0x25F851760);
  }

  return result;
}

uint64_t pocketfft::detail::cfftp<float>::~cfftp(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  free(*(a1 + 8));
  return a1;
}

unint64_t *pocketfft::detail::fftblue<float>::fftblue(unint64_t *a1, unint64_t a2)
{
  *a1 = a2;
  v3 = pocketfft::detail::util::good_size_cmplx(2 * a2 - 1);
  a1[1] = v3;
  pocketfft::detail::cfftp<float>::cfftp(a1 + 2, v3);
  v4 = (*a1 + (a1[1] >> 1) + 1);
  v5 = pocketfft::detail::arr<pocketfft::detail::cmplx<float>>::ralloc(v4);
  a1[8] = v5;
  a1[9] = v4;
  v6 = *a1;
  v7 = &v5[8 * *a1];
  a1[10] = v5;
  a1[11] = v7;
  pocketfft::detail::sincos_2pibyn<float>::sincos_2pibyn(v30, 2 * v6);
  *a1[10] = 1065353216;
  v8 = *a1;
  if (*a1 >= 2)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      if (v10 + v9 + 1 >= 2 * v8)
      {
        v12 = 2 * v8;
      }

      else
      {
        v12 = 0;
      }

      v13 = pocketfft::detail::sincos_2pibyn<float>::operator[](v30, v9 + v10 - v12 + 1);
      v10 += ~v12 + 2 * v11;
      v14 = a1[10] + 4 * v9;
      *(v14 + 8) = v13;
      *(v14 + 12) = v15;
      ++v11;
      v8 = *a1;
      v9 += 2;
    }

    while (v11 < *a1);
  }

  v16 = pocketfft::detail::arr<pocketfft::detail::cmplx<float>>::ralloc(a1[1]);
  v17 = v16;
  v18 = *a1;
  v19 = a1[1];
  v20 = 1.0 / v19;
  *v16 = vmul_n_f32(*a1[10], v20);
  if (v18 >= 2)
  {
    v21 = -1;
    v22 = 1;
    do
    {
      v23 = vmul_n_f32(*(a1[10] + 8 * v22), v20);
      v16[v21 + a1[1]] = v23;
      v16[v22++] = v23;
      v18 = *a1;
      --v21;
    }

    while (v22 < *a1);
    v19 = a1[1];
  }

  v24 = v19 - v18;
  if (v18 <= v24)
  {
    v25 = &v16[v18];
    v26 = v24 + 1;
    if (v26 <= v18 + 1)
    {
      v26 = v18 + 1;
    }

    bzero(v25, 8 * (v26 - v18));
  }

  pocketfft::detail::cfftp<float>::pass_all<true,pocketfft::detail::cmplx<float>>(a1 + 2, v17, 1.0);
  v27 = 0;
  do
  {
    *(a1[11] + 8 * v27) = v17[v27];
  }

  while (v27++ < a1[1] >> 1);
  free(v17);
  free(v30[5]);
  free(v30[3]);
  return a1;
}

void sub_25A5ACE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15)
{
  free(v16);
  free(a15);
  free(a13);
  free(*(v15 + 64));
  pocketfft::detail::cfftp<float>::~cfftp(v15 + 16);
  _Unwind_Resume(a1);
}

void pocketfft::detail::cfftp<float>::pass_all<true,pocketfft::detail::cmplx<float>>(void *a1, float32x2_t *a2, float a3)
{
  v3 = a2;
  v5 = *a1;
  if (v5 == 1)
  {
    *a2 = vmul_n_f32(*a2, a3);
    return;
  }

  v6 = pocketfft::detail::arr<pocketfft::detail::cmplx<float>>::ralloc(v5);
  v7 = v6;
  v8 = a1[3];
  if (a1[4] == v8)
  {
    goto LABEL_29;
  }

  v9 = 0;
  v10 = 0;
  v11 = 1;
  v12 = v6;
  v13 = v3;
  do
  {
    v14 = *(v8 + v9);
    v15 = v14 * v11;
    v16 = *a1 / (v14 * v11);
    if (v14 <= 4)
    {
      if (v14 == 2)
      {
        pocketfft::detail::cfftp<float>::pass2<true,pocketfft::detail::cmplx<float>>(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
        v17 = v13;
        v13 = v12;
        goto LABEL_22;
      }

      if (v14 != 3)
      {
        if (v14 == 4)
        {
          pocketfft::detail::cfftp<float>::pass4<true,pocketfft::detail::cmplx<float>>(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
          v17 = v13;
          v13 = v12;
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      pocketfft::detail::cfftp<float>::pass3<true,pocketfft::detail::cmplx<float>>(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
      v17 = v13;
      v13 = v12;
    }

    else if (v14 > 7)
    {
      if (v14 != 8)
      {
        if (v14 == 11)
        {
          pocketfft::detail::cfftp<float>::pass11<true,pocketfft::detail::cmplx<float>>(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
          v17 = v13;
          v13 = v12;
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      pocketfft::detail::cfftp<float>::pass8<true,pocketfft::detail::cmplx<float>>(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
      v17 = v13;
      v13 = v12;
    }

    else
    {
      if (v14 != 5)
      {
        if (v14 == 7)
        {
          pocketfft::detail::cfftp<float>::pass7<true,pocketfft::detail::cmplx<float>>(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
          v17 = v13;
          v13 = v12;
          goto LABEL_22;
        }

LABEL_18:
        pocketfft::detail::cfftp<float>::passg<true,pocketfft::detail::cmplx<float>>(a1, v16, v14, v11, v13, v12, *(v8 + v9 + 8), *(v8 + v9 + 16));
        v17 = v12;
        goto LABEL_22;
      }

      pocketfft::detail::cfftp<float>::pass5<true,pocketfft::detail::cmplx<float>>(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
      v17 = v13;
      v13 = v12;
    }

LABEL_22:
    ++v10;
    v8 = a1[3];
    v9 += 24;
    v11 = v15;
    v12 = v17;
  }

  while (v10 < 0xAAAAAAAAAAAAAAABLL * ((a1[4] - v8) >> 3));
  if (v13 != v3)
  {
    v18 = *a1;
    if (a3 == 1.0)
    {
      if (v18)
      {
        memmove(v3, v13, 8 * v18);
      }
    }

    else if (v18)
    {
      v19 = v7;
      do
      {
        v20 = *v19++;
        *v3++ = vmul_n_f32(v20, a3);
        --v18;
      }

      while (v18);
    }

    goto LABEL_35;
  }

LABEL_29:
  if (a3 != 1.0)
  {
    v21 = *a1;
    if (*a1)
    {
      do
      {
        *v3 = vmul_n_f32(*v3, a3);
        ++v3;
        --v21;
      }

      while (v21);
    }
  }

LABEL_35:

  free(v7);
}

void pocketfft::detail::cfftp<float>::pass_all<false,pocketfft::detail::cmplx<float>>(void *a1, float32x2_t *a2, float a3)
{
  v3 = a2;
  v5 = *a1;
  if (v5 == 1)
  {
    *a2 = vmul_n_f32(*a2, a3);
    return;
  }

  v6 = pocketfft::detail::arr<pocketfft::detail::cmplx<float>>::ralloc(v5);
  v7 = v6;
  v8 = a1[3];
  if (a1[4] == v8)
  {
    goto LABEL_29;
  }

  v9 = 0;
  v10 = 0;
  v11 = 1;
  v12 = v6;
  v13 = v3;
  do
  {
    v14 = *(v8 + v9);
    v15 = v14 * v11;
    v16 = *a1 / (v14 * v11);
    if (v14 <= 4)
    {
      if (v14 == 2)
      {
        pocketfft::detail::cfftp<float>::pass2<false,pocketfft::detail::cmplx<float>>(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
        v17 = v13;
        v13 = v12;
        goto LABEL_22;
      }

      if (v14 != 3)
      {
        if (v14 == 4)
        {
          pocketfft::detail::cfftp<float>::pass4<false,pocketfft::detail::cmplx<float>>(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
          v17 = v13;
          v13 = v12;
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      pocketfft::detail::cfftp<float>::pass3<false,pocketfft::detail::cmplx<float>>(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
      v17 = v13;
      v13 = v12;
    }

    else if (v14 > 7)
    {
      if (v14 != 8)
      {
        if (v14 == 11)
        {
          pocketfft::detail::cfftp<float>::pass11<false,pocketfft::detail::cmplx<float>>(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
          v17 = v13;
          v13 = v12;
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      pocketfft::detail::cfftp<float>::pass8<false,pocketfft::detail::cmplx<float>>(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
      v17 = v13;
      v13 = v12;
    }

    else
    {
      if (v14 != 5)
      {
        if (v14 == 7)
        {
          pocketfft::detail::cfftp<float>::pass7<false,pocketfft::detail::cmplx<float>>(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
          v17 = v13;
          v13 = v12;
          goto LABEL_22;
        }

LABEL_18:
        pocketfft::detail::cfftp<float>::passg<false,pocketfft::detail::cmplx<float>>(a1, v16, v14, v11, v13, v12, *(v8 + v9 + 8), *(v8 + v9 + 16));
        v17 = v12;
        goto LABEL_22;
      }

      pocketfft::detail::cfftp<float>::pass5<false,pocketfft::detail::cmplx<float>>(a1, v16, v11, v13, v12, *(v8 + v9 + 8));
      v17 = v13;
      v13 = v12;
    }

LABEL_22:
    ++v10;
    v8 = a1[3];
    v9 += 24;
    v11 = v15;
    v12 = v17;
  }

  while (v10 < 0xAAAAAAAAAAAAAAABLL * ((a1[4] - v8) >> 3));
  if (v13 != v3)
  {
    v18 = *a1;
    if (a3 == 1.0)
    {
      if (v18)
      {
        memmove(v3, v13, 8 * v18);
      }
    }

    else if (v18)
    {
      v19 = v7;
      do
      {
        v20 = *v19++;
        *v3++ = vmul_n_f32(v20, a3);
        --v18;
      }

      while (v18);
    }

    goto LABEL_35;
  }

LABEL_29:
  if (a3 != 1.0)
  {
    v21 = *a1;
    if (*a1)
    {
      do
      {
        *v3 = vmul_n_f32(*v3, a3);
        ++v3;
        --v21;
      }

      while (v21);
    }
  }

LABEL_35:

  free(v7);
}

void pocketfft::detail::cfftp<float>::pass4<true,pocketfft::detail::cmplx<float>>(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, uint64_t a6)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = 2 * a3;
      v7 = a4 + 2;
      v8 = &a5[3 * a3] + 1;
      v9 = &a5[a3] + 1;
      do
      {
        v10 = v7[-2];
        v11 = v7[-1];
        v12 = *v7;
        v13 = v7[1];
        v7 += 4;
        v14 = vadd_f32(v10, v12);
        v15 = vsub_f32(v10, v12);
        v16 = vadd_f32(v11, v13);
        v17 = vsub_f32(v11, v13);
        *a5 = vadd_f32(v14, v16);
        a5[v6] = vsub_f32(v14, v16);
        *(v9 - 1) = v15.f32[0] + v17.f32[1];
        *v9 = v15.f32[1] - v17.f32[0];
        *(v8 - 1) = v15.f32[0] - v17.f32[1];
        *v8 = v15.f32[1] + v17.f32[0];
        v8 += 2;
        v9 += 2;
        ++a5;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v18 = 0;
    v19 = a4 + 1;
    v20 = 32 * a2;
    v21 = 8 * a2;
    v22 = &a4[a2 + 1];
    v23 = &a4[2 * a2 + 1];
    v24 = &a4[3 * a2 + 1];
    v25 = a5 + 1;
    v26 = &a5[3 * a3 * a2 + 1];
    v27 = a6 + 16 * (a2 - 1);
    v28 = &a5[2 * a3 * a2 + 1];
    v29 = a6 + 8 * a2 - 8;
    v30 = &a5[a3 * a2 + 1];
    do
    {
      v31 = a4[4 * v18 * a2];
      v32 = a4[((4 * v18) | 2) * a2];
      v33 = vadd_f32(v31, v32);
      v34 = vsub_f32(v31, v32);
      v35 = a4[((4 * v18) | 1) * a2];
      v36 = a4[((4 * v18) | 3) * a2];
      v37 = vadd_f32(v35, v36);
      v38 = vsub_f32(v35, v36);
      a5[v18 * a2] = vadd_f32(v33, v37);
      a5[(v18 + 2 * a3) * a2] = vsub_f32(v33, v37);
      v39 = &a5[(v18 + a3) * a2];
      v40 = &a5[(v18 + 3 * a3) * a2];
      *v39 = v34.f32[0] + v38.f32[1];
      v39[1] = v34.f32[1] - v38.f32[0];
      *v40 = v34.f32[0] - v38.f32[1];
      v40[1] = v34.f32[1] + v38.f32[0];
      if (a2)
      {
        v41 = 0;
        v42 = a2 - 1;
        do
        {
          v43 = v19[v41 / 8];
          v44 = *(v22 + v41);
          v45 = *(v23 + v41);
          v46 = *(v24 + v41);
          v47 = vadd_f32(v43, v45);
          v48 = vadd_f32(v44, v46);
          v25[v41 / 8] = vadd_f32(v47, v48);
          v49 = *(v29 + v41);
          v50 = *(v29 + v41 + 4);
          v51 = vsub_f32(v43, v45);
          v52 = vrev64_s32(vsub_f32(v44, v46));
          v53 = vadd_f32(v51, v52);
          v54 = vsub_f32(v51, v52);
          v55 = __PAIR64__(v53.u32[1], v54.u32[0]);
          v56.i32[0] = vdup_lane_s32(v53, 1).u32[0];
          v53.i32[1] = v54.i32[1];
          v57.i32[0] = vdup_lane_s32(v54, 1).u32[0];
          v57.f32[1] = -v53.f32[0];
          v46.i32[0] = *(v27 + v41);
          v58 = *(v27 + v41 + 4);
          *(v30 + v41) = vmla_n_f32(vmul_n_f32(v57, *(a6 + v41 + 4)), v53, *(a6 + v41));
          v59 = vsub_f32(v47, v48);
          v60.i32[0] = vdup_lane_s32(v59, 1).u32[0];
          v60.f32[1] = -v59.f32[0];
          *(v28 + v41) = vmla_n_f32(vmul_n_f32(v60, v50), v59, v49);
          v56.f32[1] = -*v54.i32;
          *(v26 + v41) = vmla_n_f32(vmul_n_f32(v56, v58), v55, v46.f32[0]);
          v41 += 8;
          --v42;
        }

        while (v42);
      }

      ++v18;
      v19 = (v19 + v20);
      v22 += v20;
      v23 += v20;
      v24 += v20;
      v25 = (v25 + v21);
      v26 += v21;
      v28 += v21;
      v30 += v21;
    }

    while (v18 != a3);
  }
}

void pocketfft::detail::cfftp<float>::pass8<true,pocketfft::detail::cmplx<float>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t a6)
{
  v261 = a4;
  v6 = a3;
  v248 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v7 = (a4 + 32);
      do
      {
        v8 = *(v7 - 6);
        v9 = *(v7 - 5);
        v10 = v7[2];
        v11 = v7[3];
        v12 = v8 + v10;
        v13 = v9 + v11;
        v14 = v8 - v10;
        v15 = v9 - v11;
        v16 = *(v7 - 2);
        v17 = *(v7 - 1);
        v18 = v7[6];
        v19 = v7[7];
        v20 = v16 + v18;
        v21 = v17 + v19;
        v22 = v16 - v18;
        v23 = v17 - v19;
        v24 = v12 + v20;
        v25 = v13 + v21;
        v26 = v12 - v20;
        v27 = v13 - v21;
        v28 = v14 + v23;
        v29 = v15 - v22;
        v30 = v14 - v23;
        v31 = v15 + v22;
        v32 = (v29 + v28) * 0.70711;
        v33 = (v29 - v28) * 0.70711;
        v34 = (v31 - v30) * 0.70711;
        v35 = (-v30 - v31) * 0.70711;
        v36 = *(v7 - 8);
        v37 = *(v7 - 7);
        v38 = v7[1];
        v39 = v36 + *v7;
        v40 = v37 + v38;
        v41 = v36 - *v7;
        v42 = v37 - v38;
        v43 = *(v7 - 4);
        v44 = *(v7 - 3);
        v45 = v7[4];
        v46 = v7[5];
        v47 = v43 + v45;
        v48 = v44 + v46;
        v49 = v43 - v45;
        v50 = v44 - v46;
        v51 = &a5[8 * a3];
        *a5 = v24 + (v39 + v47);
        a5[1] = v25 + (v40 + v48);
        *v51 = (v39 + v47) - v24;
        v51[1] = (v40 + v48) - v25;
        v52 = &a5[4 * a3];
        v53 = (a5 + ((48 * a3) | 4));
        *v52 = v27 + (v39 - v47);
        v52[1] = (v40 - v48) - v26;
        *(v53 - 1) = (v39 - v47) - v27;
        *v53 = v26 + (v40 - v48);
        v54 = &a5[2 * a3];
        v55 = (a5 + ((40 * a3) | 4));
        *v54 = v32 + (v41 + v50);
        v54[1] = v33 + (v42 - v49);
        *(v55 - 1) = (v41 + v50) - v32;
        *v55 = (v42 - v49) - v33;
        v56 = (a5 + ((24 * a3) | 4));
        v57 = (a5 + ((56 * a3) | 4));
        v58 = v41 - v50;
        *(v56 - 1) = v34 + v58;
        *v56 = v35 + (v42 + v49);
        *(v57 - 1) = v58 - v34;
        *v57 = (v42 + v49) - v35;
        v7 += 16;
        a5 += 2;
        --v6;
      }

      while (v6);
    }
  }

  else if (a3)
  {
    v59 = 0;
    v255 = 2 * a3;
    v256 = 4 * a3;
    v254 = 3 * a3;
    v252 = 5 * a3;
    v253 = 6 * a3;
    v251 = 7 * a3;
    v60 = &a5[14 * a3 * a2];
    v250 = 8 * a2;
    v61 = a4 + 8 * a2 + 12;
    v249 = a2 << 6;
    v62 = a4 + 40 * a2 + 12;
    v63 = &a5[6 * a3 * a2];
    v64 = a4 + 24 * a2 + 12;
    v65 = a4 + 56 * a2 + 12;
    v66 = &a5[10 * a3 * a2];
    v67 = a4 + 32 * a2;
    v68 = a4 + 16 * a2;
    v69 = a4 + 48 * a2;
    v70 = &a5[2 * a3 * a2];
    v71 = a6 + 48 * a2 - 48;
    v72 = a6 + 16 * v248;
    v73 = &a5[12 * a3 * a2];
    v74 = a6 + 32 * v248;
    v75 = a6 + 24 * a2 - 20;
    v76 = a6 + 8 * a2 - 8;
    v77 = &a5[4 * a3 * a2];
    v78 = a5;
    v79 = &a5[8 * a3 * a2];
    v258 = a5;
    v80 = a6 + 40 * a2 - 40;
    do
    {
      v81 = (v261 + 8 * ((8 * v59) | 1) * a2);
      v82 = *v81;
      v83 = v81[1];
      v84 = (v261 + 8 * ((8 * v59) | 5) * a2);
      v85 = v84[1];
      v86 = v82 + *v84;
      v87 = v83 + v85;
      v88 = v82 - *v84;
      v89 = v83 - v85;
      v90 = (v261 + 8 * ((8 * v59) | 3) * a2);
      v91 = *v90;
      v92 = v90[1];
      v93 = (v261 + 8 * ((8 * v59) | 7) * a2);
      v94 = v93[1];
      v95 = v91 + *v93;
      v96 = v92 + v94;
      v97 = v91 - *v93;
      v98 = v92 - v94;
      v99 = v86 + v95;
      v100 = v87 + v96;
      v101 = v86 - v95;
      v102 = v87 - v96;
      v103 = v89 - v97;
      v104 = v88 - v98;
      v105 = v89 + v97;
      v106 = (v103 + (v88 + v98)) * 0.70711;
      v107 = (v103 - (v88 + v98)) * 0.70711;
      v108 = (v105 - v104) * 0.70711;
      v109 = (-v104 - v105) * 0.70711;
      v110 = (v261 + 8 * 8 * v59 * a2);
      v111 = *v110;
      v112 = v110[1];
      v113 = (v261 + 8 * ((8 * v59) | 4) * a2);
      v114 = v113[1];
      v115 = v111 + *v113;
      v116 = v112 + v114;
      v117 = v111 - *v113;
      v118 = v112 - v114;
      v119 = (v261 + 8 * ((8 * v59) | 2) * a2);
      v120 = *v119;
      v121 = v119[1];
      v122 = (v261 + 8 * ((8 * v59) | 6) * a2);
      v123 = v122[1];
      v124 = v120 + *v122;
      v125 = v121 + v123;
      v126 = v120 - *v122;
      v127 = v121 - v123;
      v128 = &a5[2 * v59 * a2];
      v129 = &a5[2 * (v59 + v256) * a2];
      *v128 = v99 + (v115 + v124);
      v128[1] = v100 + (v116 + v125);
      *v129 = (v115 + v124) - v99;
      v129[1] = (v116 + v125) - v100;
      v130 = &a5[2 * (v59 + v255) * a2];
      v131 = &a5[2 * (v59 + v253) * a2];
      *v130 = v102 + (v115 - v124);
      v130[1] = (v116 - v125) - v101;
      *v131 = (v115 - v124) - v102;
      v131[1] = v101 + (v116 - v125);
      v132 = &a5[2 * (v59 + v6) * a2];
      v133 = &a5[2 * (v59 + v252) * a2];
      *v132 = v106 + (v117 + v127);
      v132[1] = v107 + (v118 - v126);
      *v133 = (v117 + v127) - v106;
      v133[1] = (v118 - v126) - v107;
      v134 = &a5[2 * (v59 + v254) * a2];
      v262 = v59;
      v135 = &a5[2 * (v59 + v251) * a2];
      *v134 = v108 + (v117 - v127);
      v134[1] = v109 + (v118 + v126);
      *v135 = (v117 - v127) - v108;
      v135[1] = (v118 + v126) - v109;
      if (a2)
      {
        v136 = 0;
        v137 = v248;
        do
        {
          v138 = *(v61 + v136 - 4);
          v139 = *(v61 + v136);
          v140 = *(v62 + v136 - 4);
          v141 = *(v62 + v136);
          v142 = v138 + v140;
          v143 = v139 + v141;
          v144 = v138 - v140;
          v145 = v139 - v141;
          v146 = *(v64 + v136 - 4);
          v147 = *(v64 + v136);
          v148 = *(v65 + v136 - 4);
          v149 = *(v65 + v136);
          v150 = v146 + v148;
          v151 = v147 + v149;
          v152 = v146 - v148;
          v153 = v147 - v149;
          v154 = v142 + v150;
          v155 = v143 + (v147 + v149);
          v156 = v142 - v150;
          v157 = v143 - v151;
          v158 = v144 + v153;
          v159 = v145 - v152;
          v160 = v144 - v153;
          v161 = v145 + v152;
          v162 = v159 + v158;
          v163 = v159 - v158;
          v164 = v161 - v160;
          v165 = *(a4 + v136 + 8);
          v166 = *(a4 + v136 + 12);
          v167 = *(v67 + v136 + 8);
          v168 = *(v67 + v136 + 12);
          v169 = v165 + v167;
          v170 = v166 + v168;
          v171 = v165 - v167;
          v172 = -v160 - v161;
          v173 = v166 - v168;
          v174 = *(v68 + v136 + 8);
          v175 = *(v68 + v136 + 12);
          v176 = v162 * 0.70711;
          v177 = *(v69 + v136 + 8);
          v178 = *(v69 + v136 + 12);
          v179 = v174 + v177;
          v180 = v175 + v178;
          v181 = v174 - v177;
          v182 = v163 * 0.70711;
          v183 = v175 - v178;
          v184 = v169 + v179;
          v185 = v170 + v180;
          v186 = v169 - v179;
          v187 = v170 - v180;
          v188 = v164 * 0.70711;
          v189 = v154 + v184;
          v190 = &v78[v136 / 4];
          v191 = v184 - v154;
          v190[2] = v189;
          v190[3] = v155 + v185;
          v192 = v185 - v155;
          v193 = *(v75 + v136 - 4);
          v194 = *(v75 + v136);
          v195 = v172 * 0.70711;
          v196 = (v192 * v194) + (v191 * v193);
          v197 = v187 - v156;
          v198 = (v192 * v193) - (v191 * v194);
          v199 = *(v76 + v136);
          v200 = *(v76 + v136 + 4);
          v201 = (v187 - v156) * v200;
          v202 = -((v157 + v186) * v200);
          v203 = v201 + ((v157 + v186) * v199);
          v204 = &v79[v136 / 4];
          v205 = v76;
          v206 = v75;
          v207 = v74;
          v208 = v72;
          v209 = v71;
          v210 = &v77[v136 / 4];
          v211 = v186 - v157;
          v212 = v156 + v187;
          v213 = v202 + (v197 * v199);
          v214 = *(v80 + v136);
          v215 = *(v80 + v136 + 4);
          v216 = &v73[v136 / 4];
          v204[2] = v196;
          v204[3] = v198;
          v217 = (v212 * v215) + (v211 * v214);
          v218 = (v212 * v214) - (v211 * v215);
          v219 = v171 + v183;
          v210[2] = v203;
          v210[3] = v213;
          v71 = v209;
          v72 = v208;
          v74 = v207;
          v75 = v206;
          v76 = v205;
          v220 = v173 - v181;
          v221 = v171 - v183;
          v222 = v173 + v181;
          v216[2] = v217;
          v216[3] = v218;
          v223 = *(a6 + v136);
          v224 = *(a6 + v136 + 4);
          v225 = &v70[v136 / 4];
          v226 = ((v182 + v220) * v224) + ((v176 + v219) * v223);
          v227 = -((v176 + v219) * v224);
          v228 = v219 - v176;
          v229 = v220 - v182;
          v230 = v227 + ((v182 + v220) * v223);
          v231 = *(v74 + v136);
          v232 = *(v74 + v136 + 4);
          v233 = &v66[v136 / 4];
          v234 = v229 * v232;
          v235 = -(v228 * v232);
          v236 = v234 + (v228 * v231);
          v237 = *(v72 + v136);
          v238 = *(v72 + v136 + 4);
          v239 = &v63[v136 / 4];
          v240 = v235 + (v229 * v231);
          v241 = ((v195 + v222) * v238) + ((v188 + v221) * v237);
          v242 = ((v195 + v222) * v237) - ((v188 + v221) * v238);
          v225[2] = v226;
          v225[3] = v230;
          v243 = v221 - v188;
          v244 = v222 - v195;
          v233[2] = v236;
          v233[3] = v240;
          v246 = *(v71 + v136);
          v245 = *(v71 + v136 + 4);
          v247 = &v60[v136 / 4];
          v239[2] = v241;
          v239[3] = v242;
          v247[2] = (v244 * v245) + (v243 * v246);
          v247[3] = (v244 * v246) - (v243 * v245);
          v136 += 8;
          --v137;
        }

        while (v137);
      }

      v59 = v262 + 1;
      v60 = (v60 + v250);
      v61 += v249;
      v62 += v249;
      v63 = (v63 + v250);
      v64 += v249;
      v65 += v249;
      v66 = (v66 + v250);
      a4 += v249;
      v67 += v249;
      v68 += v249;
      v69 += v249;
      v78 = (v78 + v250);
      v70 = (v70 + v250);
      v73 = (v73 + v250);
      v77 = (v77 + v250);
      v79 = (v79 + v250);
      v6 = a3;
      a5 = v258;
    }

    while (v262 + 1 != a3);
  }
}

uint64_t pocketfft::detail::cfftp<float>::pass2<true,pocketfft::detail::cmplx<float>>(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, uint64_t a6)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = a4 + 1;
      v7 = a3;
      do
      {
        v8 = v6[-1];
        v9 = *v6;
        *a5 = vadd_f32(v8, *v6);
        a5[a3] = vsub_f32(v8, v9);
        ++a5;
        v6 += 2;
        --v7;
      }

      while (v7);
    }
  }

  else if (a3)
  {
    v10 = 0;
    v11 = a4 + 1;
    v12 = 16 * a2;
    v13 = 8 * a2;
    v14 = &a4[a2 + 1];
    v15 = a5 + 1;
    v16 = &a5[a3 * a2 + 1];
    do
    {
      result = v10 * a2;
      v18 = a4[2 * v10 * a2];
      v19 = a4[((2 * v10) | 1) * a2];
      a5[v10 * a2] = vadd_f32(v18, v19);
      a5[(v10 + a3) * a2] = vsub_f32(v18, v19);
      if (a2)
      {
        v20 = 0;
        v21 = a2 - 1;
        do
        {
          v22 = v11[v20 / 8];
          v23 = *(v14 + v20);
          v15[v20 / 8] = vadd_f32(v22, v23);
          result = a6 + v20;
          v24 = vsub_f32(v22, v23);
          v25.i32[0] = vdup_lane_s32(v24, 1).u32[0];
          v25.f32[1] = -v24.f32[0];
          *(v16 + v20) = vmla_n_f32(vmul_n_f32(v25, *(a6 + v20 + 4)), v24, *(a6 + v20));
          v20 += 8;
          --v21;
        }

        while (v21);
      }

      ++v10;
      v11 = (v11 + v12);
      v14 += v12;
      v15 = (v15 + v13);
      v16 += v13;
    }

    while (v10 != a3);
  }

  return result;
}

void pocketfft::detail::cfftp<float>::pass3<true,pocketfft::detail::cmplx<float>>(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, uint64_t a6)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = a4 + 2;
      v7 = a3;
      do
      {
        v8 = v6[-2];
        v9 = v6[-1];
        v10 = *v6;
        v6 += 3;
        v11 = vadd_f32(v9, v10);
        *a5 = vadd_f32(v8, v11);
        v12 = vadd_f32(v8, vmul_f32(v11, 0xBF000000BF000000));
        v13 = vrev64_s32(vmul_f32(vsub_f32(v9, v10), 0x3F5DB3D7BF5DB3D7));
        a5[a3] = vadd_f32(v13, v12);
        a5[2 * a3] = vsub_f32(v12, v13);
        ++a5;
        --v7;
      }

      while (v7);
    }
  }

  else if (a3)
  {
    v14 = 0;
    v15 = a4 + 1;
    v16 = 24 * a2;
    v17 = 8 * a2;
    v18 = &a4[a2 + 1];
    v19 = &a4[2 * a2 + 1];
    v20 = a5 + 1;
    v21 = &a5[2 * a3 * a2 + 1];
    v22 = a6 + 8 * a2 - 8;
    v23 = &a5[a3 * a2 + 1];
    do
    {
      v24 = 3 * v14 * a2;
      v25 = a4[v24];
      v26 = a4[a2 + v24];
      v27 = a4[(3 * v14 + 2) * a2];
      v28 = vadd_f32(v26, v27);
      a5[v14 * a2] = vadd_f32(v25, v28);
      v29 = vadd_f32(v25, vmul_f32(v28, 0xBF000000BF000000));
      v30 = vrev64_s32(vmul_f32(vsub_f32(v26, v27), 0x3F5DB3D7BF5DB3D7));
      a5[(v14 + a3) * a2] = vadd_f32(v30, v29);
      a5[(v14 + 2 * a3) * a2] = vsub_f32(v29, v30);
      if (a2)
      {
        v31 = 0;
        v32 = a2 - 1;
        do
        {
          v33 = v15[v31 / 8];
          v34 = *(v18 + v31);
          v35 = *(v19 + v31);
          v36 = vadd_f32(v34, v35);
          v20[v31 / 8] = vadd_f32(v33, v36);
          v37 = *(v22 + v31);
          v38 = *(v22 + v31 + 4);
          v39 = vadd_f32(v33, vmul_f32(v36, 0xBF000000BF000000));
          v40 = vrev64_s32(vmul_f32(vsub_f32(v34, v35), 0x3F5DB3D7BF5DB3D7));
          v41 = vadd_f32(v40, v39);
          v42.i32[0] = vdup_lane_s32(v41, 1).u32[0];
          v42.f32[1] = -v41.f32[0];
          *(v23 + v31) = vmla_n_f32(vmul_n_f32(v42, *(a6 + v31 + 4)), v41, *(a6 + v31));
          v43 = vsub_f32(v39, v40);
          v41.i32[0] = vdup_lane_s32(v43, 1).u32[0];
          v41.f32[1] = -v43.f32[0];
          *(v21 + v31) = vmla_n_f32(vmul_n_f32(v41, v38), v43, v37);
          v31 += 8;
          --v32;
        }

        while (v32);
      }

      ++v14;
      v15 = (v15 + v16);
      v18 += v16;
      v19 += v16;
      v20 = (v20 + v17);
      v21 += v17;
      v23 += v17;
    }

    while (v14 != a3);
  }
}

void pocketfft::detail::cfftp<float>::pass5<true,pocketfft::detail::cmplx<float>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v7 = (a5 + 4);
      v8 = 2 * a3;
      v9 = (a5 + 4 + 24 * a3);
      v10 = (a4 + 20);
      v11 = (a5 + 4 + 32 * a3);
      v12 = (a5 + 4 + 16 * a3);
      do
      {
        v13 = *(v10 - 5);
        v14 = *(v10 - 4);
        v15 = *(v10 - 3);
        v16 = *(v10 - 2);
        v17 = v10[3];
        v18 = v10[4];
        v19 = v15 + v17;
        v20 = v16 + v18;
        v21 = v15 - v17;
        v22 = v16 - v18;
        v23 = *(v10 - 1);
        v24 = v10[1];
        v25 = v10[2];
        v26 = v23 + v24;
        v27 = *v10 + v25;
        v28 = v23 - v24;
        v29 = *v10 - v25;
        *(v7 - 1) = (v13 + v19) + v26;
        *v7 = (v14 + v20) + v27;
        v30 = (v13 + (v19 * 0.30902)) + (v26 * -0.80902);
        v31 = (v14 + (v20 * 0.30902)) + (v27 * -0.80902);
        v32 = (v28 * -0.58779) + (v21 * -0.95106);
        v33 = (v29 * -0.58779) + (v22 * -0.95106);
        v34 = &v7[v8];
        *(v34 - 1) = v30 - v33;
        *v34 = v31 + v32;
        *(v11 - 1) = v30 + v33;
        *v11 = v31 - v32;
        v35 = (v13 + (v19 * -0.80902)) + (v26 * 0.30902);
        v36 = (v14 + (v20 * -0.80902)) + (v27 * 0.30902);
        v37 = (v28 * 0.95106) + (v21 * -0.58779);
        v38 = (v29 * 0.95106) + (v22 * -0.58779);
        *(v12 - 1) = v35 - v38;
        *v12 = v36 + v37;
        v7 += 2;
        v11 += 2;
        *(v9 - 1) = v35 + v38;
        *v9 = v36 - v37;
        v12 += 2;
        v9 += 2;
        v10 += 10;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v39 = 0;
    v40 = a4 + 8;
    v102 = 40 * a2;
    v41 = 8 * a2;
    v42 = a4 + 8 + 8 * a2;
    v43 = a4 + 8 + 32 * a2;
    v44 = a4 + 8 + 16 * a2;
    v45 = a4 + 8 + 24 * a2;
    v46 = a5 + 8;
    v47 = a5 + 8 + 24 * a3 * a2;
    v48 = a6 + 16 * (a2 - 1);
    v49 = a5 + 8 + 16 * a3 * a2;
    v50 = a6 + 24 * a2 - 24;
    v51 = vdup_n_s32(0x3E9E377Au);
    v52 = a5 + 8 + 32 * a3 * a2;
    v53 = vdup_n_s32(0xBF4F1BBD);
    v54 = vdup_n_s32(0xBF167918);
    v55 = vdup_n_s32(0xBF737871);
    v56 = vdup_n_s32(0x3F737871u);
    v57 = a6 + 8 * a2 - 8;
    v58 = a5 + 8 + 8 * a3 * a2;
    do
    {
      v59 = 5 * v39 * a2;
      v60 = *(a4 + 8 * v59);
      v61 = *(a4 + 8 * (a2 + v59));
      v62 = *(a4 + 8 * (5 * v39 + 4) * a2);
      v63 = vadd_f32(v61, v62);
      v64 = *(a4 + 8 * (5 * v39 + 2) * a2);
      v65 = vsub_f32(v61, v62);
      v66 = *(a4 + 8 * (5 * v39 + 3) * a2);
      v67 = vadd_f32(v64, v66);
      v68 = vsub_f32(v64, v66);
      *(a5 + 8 * v39 * a2) = vadd_f32(vadd_f32(v60, v63), v67);
      v69 = vmla_f32(vmla_f32(v60, v51, v63), v53, v67);
      v70 = vrev64_s32(vmla_f32(vmul_f32(v68, v54), v55, v65));
      *&v6 = vsub_f32(v69, v70);
      v71 = vadd_f32(v69, v70);
      v72 = v6;
      DWORD1(v72) = v71.i32[1];
      *(a5 + 8 * (v39 + a3) * a2) = v72;
      v71.i32[1] = DWORD1(v6);
      *(a5 + 8 * (v39 + 4 * a3) * a2) = v71;
      v73 = vmla_f32(vmla_f32(v60, v53, v63), v51, v67);
      v74 = vrev64_s32(vmla_f32(vmul_f32(v68, v56), v54, v65));
      v75 = vsub_f32(v73, v74);
      v76 = vadd_f32(v73, v74);
      *(a5 + 8 * (v39 + 2 * a3) * a2) = __PAIR64__(v76.u32[1], v75.u32[0]);
      v76.i32[1] = v75.i32[1];
      *(a5 + 8 * (v39 + 3 * a3) * a2) = v76;
      if (a2)
      {
        v77 = 0;
        v78 = a2 - 1;
        do
        {
          v79 = *(v40 + v77);
          v80 = *(v42 + v77);
          v81 = *(v43 + v77);
          v82 = vadd_f32(v80, v81);
          *&v72 = *(v44 + v77);
          v83 = *(v45 + v77);
          v84 = vadd_f32(*&v72, v83);
          *(v46 + v77) = vadd_f32(vadd_f32(v79, v82), v84);
          v85 = *(v50 + v77);
          v86 = *(v50 + v77 + 4);
          v87 = vsub_f32(v80, v81);
          v88 = vsub_f32(*&v72, v83);
          *&v72 = vmla_f32(vmla_f32(v79, v51, v82), v53, v84);
          v89 = vrev64_s32(vmla_f32(vmul_f32(v88, v54), v55, v87));
          v90 = vsub_f32(*&v72, v89);
          *&v72 = vadd_f32(*&v72, v89);
          v6 = v72;
          DWORD1(v6) = v90.i32[1];
          v91.i32[0] = vdup_lane_s32(v90, 1).u32[0];
          v90.i32[1] = DWORD1(v72);
          v92.i32[0] = vdup_lane_s32(*&v72, 1).u32[0];
          v92.f32[1] = -v90.f32[0];
          v93 = *(v57 + v77);
          v94 = *(v57 + v77 + 4);
          *(v58 + v77) = vmla_n_f32(vmul_n_f32(v92, *(a6 + v77 + 4)), v90, *(a6 + v77));
          v91.f32[1] = -*&v72;
          *(v52 + v77) = vmla_n_f32(vmul_n_f32(v91, v86), *&v6, v85);
          v95 = vmla_f32(vmla_f32(v79, v53, v82), v51, v84);
          v96 = vrev64_s32(vmla_f32(vmul_f32(v88, v56), v54, v87));
          v97 = vsub_f32(v95, v96);
          v98 = vadd_f32(v95, v96);
          v99 = __PAIR64__(v97.u32[1], v98.u32[0]);
          v100.i32[0] = vdup_lane_s32(v97, 1).u32[0];
          v97.i32[1] = v98.i32[1];
          v88.i32[0] = *(v48 + v77);
          v101 = *(v48 + v77 + 4);
          LODWORD(v6) = vdup_lane_s32(v98, 1).u32[0];
          *(&v6 + 1) = -v97.f32[0];
          *(v49 + v77) = vmla_n_f32(vmul_n_f32(*&v6, v94), v97, v93);
          v100.f32[1] = -*v98.i32;
          *(v47 + v77) = vmla_n_f32(vmul_n_f32(v100, v101), v99, v88.f32[0]);
          v77 += 8;
          --v78;
        }

        while (v78);
      }

      ++v39;
      v40 += v102;
      v42 += v102;
      v43 += v102;
      v44 += v102;
      v45 += v102;
      v46 += v41;
      v47 += v41;
      v49 += v41;
      v52 += v41;
      v58 += v41;
    }

    while (v39 != a3);
  }
}

void pocketfft::detail::cfftp<float>::pass7<true,pocketfft::detail::cmplx<float>>(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, uint64_t a5, uint64_t a6)
{
  v129 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = 0;
      v7 = vdup_n_s32(0x3F1F9D07u);
      v8 = vdup_n_s32(0xBE63DC87);
      v9 = vdup_n_s32(0xBF66A5E5);
      v10 = vdup_n_s32(0xBF7994E0);
      v11 = vdup_n_s32(0xBF48261C);
      v12 = vdup_n_s32(0xBEDE2602);
      v13 = vdup_n_s32(0x3EDE2602u);
      v14 = vdup_n_s32(0x3F48261Cu);
      v15 = a4 + 3;
      do
      {
        v16 = v15[-3];
        v17 = v15[-2];
        v19 = v15[2];
        v18 = v15[3];
        v20 = vadd_f32(v17, v18);
        v21 = vsub_f32(v17, v18);
        v22 = v15[-1];
        v23 = v15[1];
        v24 = vadd_f32(v22, v19);
        v25 = vsub_f32(v22, v19);
        v26 = vadd_f32(*v15, v23);
        v27 = vsub_f32(*v15, v23);
        v28 = vmla_f32(vmla_f32(vmla_f32(v16, v7, v20), v8, v24), v9, v26);
        *(a5 + 8 * v6) = vadd_f32(vadd_f32(vadd_f32(v16, v20), v24), v26);
        v29 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v25, v10), v11, v21), v12, v27));
        v30 = vsub_f32(v28, v29);
        v31 = vadd_f32(v28, v29);
        v32 = __PAIR64__(v31.u32[1], v30.u32[0]);
        v33 = vmla_f32(vmla_f32(vmla_f32(v16, v8, v20), v9, v24), v7, v26);
        v34 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v25, v13), v10, v21), v14, v27));
        v35 = vsub_f32(v33, v34);
        v31.i32[1] = v30.i32[1];
        v36 = vadd_f32(v33, v34);
        v37 = __PAIR64__(v36.u32[1], v35.u32[0]);
        *(a5 + 8 * a3 + 8 * v6) = v32;
        v36.i32[1] = v35.i32[1];
        *(a5 + 48 * a3 + 8 * v6) = v31;
        v38 = vmla_f32(vmla_f32(vmla_f32(v16, v9, v20), v7, v24), v8, v26);
        *(a5 + 16 * a3 + 8 * v6) = v37;
        v39 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v25, v14), v12, v21), v10, v27));
        v40 = vsub_f32(v38, v39);
        v41 = vadd_f32(v38, v39);
        v42 = __PAIR64__(v41.u32[1], v40.u32[0]);
        *(a5 + 40 * a3 + 8 * v6) = v36;
        v41.i32[1] = v40.i32[1];
        *(a5 + 24 * a3 + 8 * v6) = v42;
        *(a5 + 32 * a3 + 8 * v6++) = v41;
        v15 += 7;
      }

      while (a3 != v6);
    }
  }

  else if (a3)
  {
    v43 = a3;
    v44 = 0;
    v136 = 3 * a3;
    v134 = 2 * a3;
    v135 = 6 * a3;
    v132 = 4 * a3;
    v133 = 5 * a3;
    v45 = a4 + 1;
    v131 = 56 * a2;
    v130 = 8 * a2;
    v46 = &a4[a2 + 1];
    v47 = &a4[6 * a2 + 1];
    v48 = &a4[2 * a2 + 1];
    v49 = a5 + 8;
    v50 = &a4[5 * a2 + 1];
    v51 = &a4[3 * a2 + 1];
    v52 = a5 + 8 + 24 * a3 * a2;
    v53 = &a4[4 * a2 + 1];
    v54 = a5 + 8 + 40 * a3 * a2;
    v55 = a5 + 8 + 32 * a3 * a2;
    v56 = vdup_n_s32(0x3F1F9D07u);
    v57 = vdup_n_s32(0xBE63DC87);
    v58 = a5 + 8 + 48 * a3 * a2;
    v59 = vdup_n_s32(0xBF66A5E5);
    v60 = vdup_n_s32(0xBF7994E0);
    v61 = a5 + 8 + 16 * a3 * a2;
    v62 = vdup_n_s32(0xBF48261C);
    v63 = vdup_n_s32(0xBEDE2602);
    v64 = vdup_n_s32(0x3EDE2602u);
    v65 = vdup_n_s32(0x3F48261Cu);
    v66 = a5 + 8 + 8 * a3 * a2;
    do
    {
      v67 = 7 * v44 * a2;
      v139 = v44;
      v68 = a4[v67];
      v69 = a4[a2 + v67];
      v70 = a4[(7 * v44 + 6) * a2];
      v71 = vadd_f32(v69, v70);
      v72 = vsub_f32(v69, v70);
      v73 = a4[(7 * v44 + 2) * a2];
      v74 = a4[(7 * v44 + 5) * a2];
      v75 = vadd_f32(v73, v74);
      v76 = vsub_f32(v73, v74);
      v77 = a4[(7 * v44 + 3) * a2];
      v78 = a4[(7 * v44 + 4) * a2];
      v79 = vadd_f32(v77, v78);
      v80 = vsub_f32(v77, v78);
      *(a5 + 8 * v44 * a2) = vadd_f32(vadd_f32(vadd_f32(v68, v71), v75), v79);
      v81 = vmla_f32(vmla_f32(vmla_f32(v68, v56, v71), v57, v75), v59, v79);
      v82 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v76, v60), v62, v72), v63, v80));
      v83 = vsub_f32(v81, v82);
      v84 = vadd_f32(v81, v82);
      *(a5 + 8 * (v44 + v43) * a2) = __PAIR64__(v84.u32[1], v83.u32[0]);
      v84.i32[1] = v83.i32[1];
      *(a5 + 8 * (v44 + v135) * a2) = v84;
      v85 = vmla_f32(vmla_f32(vmla_f32(v68, v57, v71), v59, v75), v56, v79);
      v86 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v76, v64), v60, v72), v65, v80));
      v87 = vsub_f32(v85, v86);
      v88 = vadd_f32(v85, v86);
      *(a5 + 8 * (v44 + v134) * a2) = __PAIR64__(v88.u32[1], v87.u32[0]);
      v88.i32[1] = v87.i32[1];
      *(a5 + 8 * (v44 + v133) * a2) = v88;
      v89 = vmla_f32(vmla_f32(vmla_f32(v68, v59, v71), v56, v75), v57, v79);
      v90 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v76, v65), v63, v72), v60, v80));
      v91 = vsub_f32(v89, v90);
      v92 = vadd_f32(v89, v90);
      *(a5 + 8 * (v44 + v136) * a2) = __PAIR64__(v92.u32[1], v91.u32[0]);
      v92.i32[1] = v91.i32[1];
      *(a5 + 8 * (v44 + v132) * a2) = v92;
      if (a2)
      {
        v93 = 0;
        v94 = v129;
        do
        {
          v95 = v45[v93 / 8];
          v96 = *(v46 + v93);
          v97 = *(v47 + v93);
          v98 = *(v48 + v93);
          v99 = vadd_f32(v96, v97);
          v100 = *(v50 + v93);
          v101 = vadd_f32(v98, v100);
          v102 = *(v51 + v93);
          v103 = *(v53 + v93);
          v104 = vadd_f32(v102, v103);
          v105 = vsub_f32(v96, v97);
          v106 = vsub_f32(v98, v100);
          v107 = vsub_f32(v102, v103);
          v108 = vmla_f32(vmla_f32(vmla_f32(v95, v56, v99), v57, v101), v59, v104);
          v109 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v106, v60), v62, v105), v63, v107));
          v110 = vadd_f32(v108, v109);
          v111 = vsub_f32(v108, v109);
          v112.i32[0] = vdup_lane_s32(v110, 1).u32[0];
          v112.f32[1] = -v111.f32[0];
          v113 = vmla_n_f32(vmul_n_f32(v112, *(a6 + v93 + 4)), __PAIR64__(v110.u32[1], v111.u32[0]), *(a6 + v93));
          v110.i32[1] = v111.i32[1];
          v111.i32[0] = vdup_lane_s32(v111, 1).u32[0];
          v111.f32[1] = -v110.f32[0];
          v114 = vmla_n_f32(vmul_n_f32(v111, *(a6 + 40 * a2 - 40 + v93 + 4)), v110, *(a6 + 40 * a2 - 40 + v93));
          v115 = vmla_f32(vmla_f32(vmla_f32(v95, v57, v99), v59, v101), v56, v104);
          v116 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v106, v64), v60, v105), v65, v107));
          v117 = vadd_f32(v115, v116);
          v118 = vsub_f32(v115, v116);
          v119.i32[0] = vdup_lane_s32(v117, 1).u32[0];
          v119.f32[1] = -v118.f32[0];
          v120 = vmla_n_f32(vmul_n_f32(v119, *(a6 + 8 * a2 - 8 + v93 + 4)), __PAIR64__(v117.u32[1], v118.u32[0]), *(a6 + 8 * a2 - 8 + v93));
          v117.i32[1] = v118.i32[1];
          v118.i32[0] = vdup_lane_s32(v118, 1).u32[0];
          v118.f32[1] = -v117.f32[0];
          v121 = vmla_n_f32(vmul_n_f32(v118, *(a6 + 32 * v129 + v93 + 4)), v117, *(a6 + 32 * v129 + v93));
          v122 = vadd_f32(v95, v99);
          v123 = vmla_f32(vmla_f32(vmla_f32(v95, v59, v99), v56, v101), v57, v104);
          v124 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v106, v65), v63, v105), v60, v107));
          v125 = vadd_f32(v123, v124);
          v126 = vsub_f32(v123, v124);
          v107.i32[0] = vdup_lane_s32(v125, 1).u32[0];
          v107.f32[1] = -v126.f32[0];
          v127 = vmla_n_f32(vmul_n_f32(v107, *(a6 + 16 * v129 + v93 + 4)), __PAIR64__(v125.u32[1], v126.u32[0]), *(a6 + 16 * v129 + v93));
          v125.i32[1] = v126.i32[1];
          v126.i32[0] = vdup_lane_s32(v126, 1).u32[0];
          v126.f32[1] = -v125.f32[0];
          v128 = vmla_n_f32(vmul_n_f32(v126, *(a6 + 24 * a2 - 24 + v93 + 4)), v125, *(a6 + 24 * a2 - 24 + v93));
          *(v49 + v93) = vadd_f32(vadd_f32(v122, v101), v104);
          *(v66 + v93) = v113;
          *(v58 + v93) = v114;
          *(v61 + v93) = v120;
          *(v54 + v93) = v121;
          *(v52 + v93) = v127;
          *(v55 + v93) = v128;
          v93 += 8;
          --v94;
        }

        while (v94);
      }

      ++v44;
      v45 = (v45 + v131);
      v46 += v131;
      v47 += v131;
      v48 += v131;
      v50 += v131;
      v51 += v131;
      v53 += v131;
      v49 += v130;
      v55 += v130;
      v52 += v130;
      v54 += v130;
      v61 += v130;
      v58 += v130;
      v66 += v130;
      v43 = a3;
    }

    while (v139 + 1 != a3);
  }
}

void pocketfft::detail::cfftp<float>::pass11<true,pocketfft::detail::cmplx<float>>(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, uint64_t a5, uint64_t a6)
{
  v204 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = 0;
      v234 = vdup_n_s32(0xBF68DDA4);
      v236 = vdup_n_s32(0xBF7D64F0);
      v232 = vdup_n_s32(0x3E903F40u);
      v229 = vdup_n_s32(0x3F68DDA4u);
      v7 = a4 + 5;
      v9 = vdup_n_s32(0x3ED4B147u);
      v8 = vdup_n_s32(0x3F575C64u);
      v11 = vdup_n_s32(0x3F27A4F4u);
      v10 = vdup_n_s32(0x3E11BAFBu);
      v12 = vdup_n_s32(0xBF4178CE);
      v13 = vdup_n_s32(0x3F75A155u);
      v15 = vdup_n_s32(0xBE903F40);
      v14 = vdup_n_s32(0xBF0A6770);
      v16 = vdup_n_s32(0x3F0A6770u);
      v17 = vdup_n_s32(0x3F7D64F0u);
      do
      {
        v19 = v7[-5];
        v18 = v7[-4];
        v21 = v7[4];
        v20 = v7[5];
        v22 = vadd_f32(v18, v20);
        v23 = vsub_f32(v18, v20);
        v25 = v7[-3];
        v24 = v7[-2];
        v27 = v7[2];
        v26 = v7[3];
        v28 = vadd_f32(v25, v21);
        v29 = vsub_f32(v25, v21);
        v30 = vadd_f32(v24, v26);
        v31 = vsub_f32(v24, v26);
        v32 = v7[-1];
        v33 = v7[1];
        v34 = vadd_f32(v32, v27);
        v35 = vsub_f32(v32, v27);
        v36 = vadd_f32(*v7, v33);
        v37 = vsub_f32(*v7, v33);
        v38 = vsub_f32(vsub_f32(vsub_f32(vadd_f32(vadd_f32(v19, vmul_f32(v22, v8)), vmul_f32(v28, v9)), vmul_f32(v30, v10)), vmul_f32(v34, v11)), vmul_f32(v36, v13));
        *(a5 + 8 * v6) = vadd_f32(vadd_f32(vadd_f32(vadd_f32(vadd_f32(v19, v22), v28), v30), v34), v36);
        v39 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v29, v234), v14, v23), v236, v31), v12, v35), v15, v37));
        v40 = vsub_f32(v38, v39);
        v41 = vadd_f32(vsub_f32(vsub_f32(vsub_f32(vadd_f32(v19, vmul_f32(v22, v9)), vmul_f32(v28, v11)), vmul_f32(v30, v13)), vmul_f32(v34, v10)), vmul_f32(v36, v8));
        v42 = vadd_f32(v38, v39);
        v43 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v29, v12), v234, v23), v232, v31), v17, v35), v16, v37));
        v44 = vsub_f32(v41, v43);
        v45 = vadd_f32(v41, v43);
        v46 = __PAIR64__(v42.u32[1], v40.u32[0]);
        v47 = __PAIR64__(v45.u32[1], v44.u32[0]);
        v48 = vsub_f32(vadd_f32(vadd_f32(vsub_f32(vsub_f32(v19, vmul_f32(v22, v10)), vmul_f32(v28, v13)), vmul_f32(v30, v9)), vmul_f32(v34, v8)), vmul_f32(v36, v11));
        v42.i32[1] = v40.i32[1];
        v49 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v29, v232), v236, v23), v229, v31), v14, v35), v12, v37));
        v50 = vsub_f32(v48, v49);
        v51 = vadd_f32(v48, v49);
        v52 = __PAIR64__(v51.u32[1], v50.u32[0]);
        v45.i32[1] = v44.i32[1];
        v53 = vadd_f32(vsub_f32(vadd_f32(vsub_f32(vsub_f32(v19, vmul_f32(v22, v11)), vmul_f32(v28, v10)), vmul_f32(v30, v8)), vmul_f32(v34, v13)), vmul_f32(v36, v9));
        v51.i32[1] = v50.i32[1];
        *(a5 + 8 * a3 + 8 * v6) = v46;
        v54 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v29, v17), v12, v23), v14, v31), v15, v35), v229, v37));
        v55 = vsub_f32(v53, v54);
        v56 = vadd_f32(v53, v54);
        v57 = __PAIR64__(v56.u32[1], v55.u32[0]);
        *(a5 + 80 * a3 + 8 * v6) = v42;
        v56.i32[1] = v55.i32[1];
        *(a5 + 16 * a3 + 8 * v6) = v47;
        *(a5 + 72 * a3 + 8 * v6) = v45;
        *(a5 + 24 * a3 + 8 * v6) = v52;
        v58 = vsub_f32(vadd_f32(vsub_f32(vadd_f32(vsub_f32(v19, vmul_f32(v22, v13)), vmul_f32(v28, v8)), vmul_f32(v30, v11)), vmul_f32(v34, v9)), vmul_f32(v36, v10));
        *(a5 + (a3 << 6) + 8 * v6) = v51;
        *(a5 + 32 * a3 + 8 * v6) = v57;
        v59 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v29, v16), v15, v23), v12, v31), v229, v35), v236, v37));
        v60 = vsub_f32(v58, v59);
        v61 = vadd_f32(v58, v59);
        v62 = __PAIR64__(v61.u32[1], v60.u32[0]);
        *(a5 + 56 * a3 + 8 * v6) = v56;
        v61.i32[1] = v60.i32[1];
        *(a5 + 40 * a3 + 8 * v6) = v62;
        *(a5 + 48 * a3 + 8 * v6++) = v61;
        v7 += 11;
      }

      while (a3 != v6);
    }
  }

  else if (a3)
  {
    v63 = 0;
    v216 = 9 * a3;
    v64 = a4 + 1;
    v65 = &a4[9 * a2 + 1];
    v66 = &a4[3 * a2 + 1];
    v223 = &a4[5 * a2 + 1];
    v67 = &a4[6 * a2 + 1];
    v214 = 88 * a2;
    v221 = &a4[7 * a2 + 1];
    v222 = &a4[10 * a2 + 1];
    v68 = a5 + 8;
    v69 = a5 + 8 + 48 * a3 * a2;
    v224 = a6 + 40 * a2 - 40;
    v217 = 5 * a3;
    v70 = a3;
    v213 = 10 * a3;
    v71 = a5 + 8 + 40 * a3 * a2;
    v72 = a5 + 8 + 56 * a3 * a2;
    v211 = a6 + 48 * a2 - 48;
    v212 = 2 * a3;
    v73 = a5 + 8 + 32 * a3 * a2;
    v210 = a6 + 24 * a2 - 24;
    v74 = a5 + 8 + ((a3 * a2) << 6);
    v75 = a5 + 8 + 24 * a3 * a2;
    v76 = a5 + 8 + 72 * a3 * a2;
    v77 = a5 + 8 + 16 * a3 * a2;
    v78 = a5 + 8 + 80 * a3 * a2;
    v79 = a5 + 8 + 8 * a3 * a2;
    v80 = vdup_n_s32(0x3F575C64u);
    v81 = vdup_n_s32(0x3ED4B147u);
    v82 = vdup_n_s32(0x3E11BAFBu);
    v83 = vdup_n_s32(0x3F27A4F4u);
    v84 = vdup_n_s32(0x3F75A155u);
    v85 = vdup_n_s32(0xBF68DDA4);
    v86 = vdup_n_s32(0xBF0A6770);
    v87 = vdup_n_s32(0xBF7D64F0);
    v88 = vdup_n_s32(0xBF4178CE);
    v89 = vdup_n_s32(0xBE903F40);
    v90 = vdup_n_s32(0x3E903F40u);
    v91 = vdup_n_s32(0x3F7D64F0u);
    v92 = vdup_n_s32(0x3F0A6770u);
    v93 = vdup_n_s32(0x3F68DDA4u);
    v209 = 8 * a3;
    v207 = 7 * a3;
    v208 = 4 * a3;
    v215 = 3 * a3;
    v205 = 8 * a2;
    v206 = 6 * a3;
    v94 = &a4[a2 + 1];
    v95 = &a4[2 * a2 + 1];
    v96 = &a4[8 * a2 + 1];
    v97 = &a4[4 * a2 + 1];
    v218 = v70;
    v219 = a5;
    v228 = v90;
    v230 = v85;
    v226 = v86;
    v227 = v91;
    v235 = v92;
    v237 = v87;
    v233 = v89;
    do
    {
      v231 = v96;
      v98 = 11 * v63 * a2;
      v99 = a4[v98];
      v100 = a4[a2 + v98];
      v101 = a4[(11 * v63 + 10) * a2];
      v102 = a4[(11 * v63 + 2) * a2];
      v103 = a4[(11 * v63 + 9) * a2];
      v104 = a4[(11 * v63 + 3) * a2];
      v105 = a4[(11 * v63 + 8) * a2];
      v106 = a4[(11 * v63 + 4) * a2];
      v107 = a4[(11 * v63 + 7) * a2];
      v108 = a4[(11 * v63 + 5) * a2];
      v109 = vadd_f32(v100, v101);
      v110 = vsub_f32(v100, v101);
      v111 = vadd_f32(v102, v103);
      v112 = vsub_f32(v102, v103);
      v113 = a4[(11 * v63 + 6) * a2];
      v114 = vadd_f32(v104, v105);
      v115 = vadd_f32(v106, v107);
      v116 = vadd_f32(v108, v113);
      *(a5 + 8 * v63 * a2) = vadd_f32(vadd_f32(vadd_f32(vadd_f32(vadd_f32(v99, v109), v111), v114), v115), v116);
      v117 = vsub_f32(v104, v105);
      v118 = vsub_f32(v106, v107);
      v119 = vsub_f32(v108, v113);
      v120 = vsub_f32(vsub_f32(vsub_f32(vadd_f32(vadd_f32(v99, vmul_f32(v109, v80)), vmul_f32(v111, v81)), vmul_f32(v114, v82)), vmul_f32(v115, v83)), vmul_f32(v116, v84));
      v121 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v112, v85), v86, v110), v87, v117), v88, v118), v89, v119));
      v122 = vsub_f32(v120, v121);
      v123 = vadd_f32(v120, v121);
      *(a5 + 8 * (v63 + v70) * a2) = __PAIR64__(v123.u32[1], v122.u32[0]);
      v123.i32[1] = v122.i32[1];
      *(a5 + 8 * (v63 + v213) * a2) = v123;
      v124 = vadd_f32(vsub_f32(vsub_f32(vsub_f32(vadd_f32(v99, vmul_f32(v109, v81)), vmul_f32(v111, v83)), vmul_f32(v114, v84)), vmul_f32(v115, v82)), vmul_f32(v116, v80));
      v125 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v112, v88), v85, v110), v90, v117), v91, v118), v92, v119));
      v126 = vsub_f32(v124, v125);
      v127 = vadd_f32(v124, v125);
      *(a5 + 8 * (v63 + v212) * a2) = __PAIR64__(v127.u32[1], v126.u32[0]);
      v127.i32[1] = v126.i32[1];
      *(a5 + 8 * (v63 + v216) * a2) = v127;
      v128 = vsub_f32(vadd_f32(vadd_f32(vsub_f32(vsub_f32(v99, vmul_f32(v109, v82)), vmul_f32(v111, v84)), vmul_f32(v114, v81)), vmul_f32(v115, v80)), vmul_f32(v116, v83));
      v129 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v112, v90), v87, v110), v93, v117), v86, v118), v88, v119));
      v130 = vsub_f32(v128, v129);
      v131 = vadd_f32(v128, v129);
      *(a5 + 8 * (v63 + v215) * a2) = __PAIR64__(v131.u32[1], v130.u32[0]);
      v131.i32[1] = v130.i32[1];
      *(a5 + 8 * (v63 + v209) * a2) = v131;
      v132 = vadd_f32(vsub_f32(vadd_f32(vsub_f32(vsub_f32(v99, vmul_f32(v109, v83)), vmul_f32(v111, v82)), vmul_f32(v114, v80)), vmul_f32(v115, v84)), vmul_f32(v116, v81));
      v133 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v112, v91), v88, v110), v86, v117), v89, v118), v93, v119));
      v134 = vsub_f32(v132, v133);
      v135 = vadd_f32(v132, v133);
      *(a5 + 8 * (v63 + v208) * a2) = __PAIR64__(v135.u32[1], v134.u32[0]);
      v135.i32[1] = v134.i32[1];
      *(a5 + 8 * (v63 + v207) * a2) = v135;
      v136 = vsub_f32(vadd_f32(vsub_f32(vadd_f32(vsub_f32(v99, vmul_f32(v109, v84)), vmul_f32(v111, v80)), vmul_f32(v114, v83)), vmul_f32(v115, v81)), vmul_f32(v116, v82));
      v137 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v112, v92), v89, v110), v88, v117), v93, v118), v87, v119));
      v138 = vsub_f32(v136, v137);
      v139 = vadd_f32(v136, v137);
      *(a5 + 8 * (v63 + v217) * a2) = __PAIR64__(v139.u32[1], v138.u32[0]);
      v220 = v63;
      v139.i32[1] = v138.i32[1];
      *(a5 + 8 * (v63 + v206) * a2) = v139;
      v140 = v87;
      v141 = v92;
      v142 = v93;
      v143 = v82;
      v144 = v88;
      if (a2)
      {
        v145 = 0;
        v146 = a2 - 1;
        do
        {
          v147 = v64[v145 / 8];
          v148 = *(v94 + v145);
          v149 = v142;
          v150 = *(v222 + v145);
          v151 = vadd_f32(v148, v150);
          v152 = *(v95 + v145);
          v153 = *(v65 + v145);
          v154 = vadd_f32(v152, v153);
          v155 = *(v66 + v145);
          v156 = *(v231 + v145);
          v157 = vadd_f32(v155, v156);
          v158 = *(v97 + v145);
          v159 = *(v221 + v145);
          v160 = *(v223 + v145);
          v161 = vadd_f32(v158, v159);
          v162 = *(v67 + v145);
          v163 = vadd_f32(v160, v162);
          v164 = v144;
          v165 = vsub_f32(v148, v150);
          v166 = vsub_f32(v152, v153);
          v167 = vsub_f32(v155, v156);
          v168 = vsub_f32(v158, v159);
          v169 = vsub_f32(v160, v162);
          v170 = vsub_f32(vsub_f32(vsub_f32(vadd_f32(vadd_f32(v147, vmul_f32(v151, v80)), vmul_f32(v154, v81)), vmul_f32(v157, v143)), vmul_f32(v161, v83)), vmul_f32(v163, v84));
          v171 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v166, v230), v226, v165), v237, v167), v164, v168), v233, v169));
          v172 = vadd_f32(v170, v171);
          v173 = vsub_f32(v170, v171);
          v160.i32[0] = vdup_lane_s32(v172, 1).u32[0];
          v160.f32[1] = -v173.f32[0];
          v174 = vmla_n_f32(vmul_n_f32(v160, *(a6 + v145 + 4)), __PAIR64__(v172.u32[1], v173.u32[0]), *(a6 + v145));
          v172.i32[1] = v173.i32[1];
          v173.i32[0] = vdup_lane_s32(v173, 1).u32[0];
          v173.f32[1] = -v172.f32[0];
          v175 = vmla_n_f32(vmul_n_f32(v173, *(a6 + 72 * a2 - 72 + v145 + 4)), v172, *(a6 + 72 * a2 - 72 + v145));
          v176 = vadd_f32(vsub_f32(vsub_f32(vsub_f32(vadd_f32(v147, vmul_f32(v151, v81)), vmul_f32(v154, v83)), vmul_f32(v157, v84)), vmul_f32(v161, v143)), vmul_f32(v163, v80));
          v177 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v166, v164), v230, v165), v228, v167), v227, v168), v235, v169));
          v178 = vadd_f32(v176, v177);
          v179 = vsub_f32(v176, v177);
          v172.i32[0] = vdup_lane_s32(v178, 1).u32[0];
          v172.f32[1] = -v179.f32[0];
          v180 = vmla_n_f32(vmul_n_f32(v172, *(a6 + 8 * a2 - 8 + v145 + 4)), __PAIR64__(v178.u32[1], v179.u32[0]), *(a6 + 8 * a2 - 8 + v145));
          v178.i32[1] = v179.i32[1];
          v179.i32[0] = vdup_lane_s32(v179, 1).u32[0];
          v179.f32[1] = -v178.f32[0];
          v181 = vmla_n_f32(vmul_n_f32(v179, *(a6 + (v204 << 6) + v145 + 4)), v178, *(a6 + (v204 << 6) + v145));
          v182 = vsub_f32(vadd_f32(vadd_f32(vsub_f32(vsub_f32(v147, vmul_f32(v151, v143)), vmul_f32(v154, v84)), vmul_f32(v157, v81)), vmul_f32(v161, v80)), vmul_f32(v163, v83));
          v183 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v166, v228), v237, v165), v149, v167), v226, v168), v164, v169));
          v184 = vadd_f32(v182, v183);
          v185 = vsub_f32(v182, v183);
          v160.i32[0] = vdup_lane_s32(v184, 1).u32[0];
          v160.f32[1] = -v185.f32[0];
          v186 = vmla_n_f32(vmul_n_f32(v160, *(a6 + 16 * v204 + v145 + 4)), __PAIR64__(v184.u32[1], v185.u32[0]), *(a6 + 16 * v204 + v145));
          v184.i32[1] = v185.i32[1];
          v185.i32[0] = vdup_lane_s32(v185, 1).u32[0];
          v185.f32[1] = -v184.f32[0];
          v187 = vmla_n_f32(vmul_n_f32(v185, *(56 * a2 + a6 - 56 + v145 + 4)), v184, *(56 * a2 + a6 - 56 + v145));
          v188 = vadd_f32(vsub_f32(vadd_f32(vsub_f32(vsub_f32(v147, vmul_f32(v151, v83)), vmul_f32(v154, v143)), vmul_f32(v157, v80)), vmul_f32(v161, v84)), vmul_f32(v163, v81));
          v189 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v166, v227), v164, v165), v226, v167), v233, v168), v149, v169));
          v190 = vadd_f32(v188, v189);
          v191 = vsub_f32(v188, v189);
          v189.i32[0] = vdup_lane_s32(v190, 1).u32[0];
          v189.f32[1] = -v191.f32[0];
          v192 = vmla_n_f32(vmul_n_f32(v189, *(v210 + v145 + 4)), __PAIR64__(v190.u32[1], v191.u32[0]), *(v210 + v145));
          v190.i32[1] = v191.i32[1];
          v191.i32[0] = vdup_lane_s32(v191, 1).u32[0];
          v191.f32[1] = -v190.f32[0];
          v193 = vmla_n_f32(vmul_n_f32(v191, *(v211 + v145 + 4)), v190, *(v211 + v145));
          v194 = vsub_f32(vadd_f32(vsub_f32(vadd_f32(vsub_f32(v147, vmul_f32(v151, v84)), vmul_f32(v154, v80)), vmul_f32(v157, v83)), vmul_f32(v161, v81)), vmul_f32(v163, v143));
          v195 = vmul_f32(v166, v235);
          v89 = v233;
          v141 = v235;
          v196 = vmla_f32(v195, v233, v165);
          v144 = v164;
          v197 = vmla_f32(v196, v164, v167);
          v140 = v237;
          v198 = vmla_f32(v197, v149, v168);
          v142 = v149;
          v199 = vrev64_s32(vmla_f32(v198, v237, v169));
          v200 = vadd_f32(v194, v199);
          v201 = vsub_f32(v194, v199);
          v160.i32[0] = vdup_lane_s32(v200, 1).u32[0];
          v160.f32[1] = -v201.f32[0];
          v202 = vmla_n_f32(vmul_n_f32(v160, *(a6 + 32 * v204 + v145 + 4)), __PAIR64__(v200.u32[1], v201.u32[0]), *(a6 + 32 * v204 + v145));
          v200.i32[1] = v201.i32[1];
          v201.i32[0] = vdup_lane_s32(v201, 1).u32[0];
          v201.f32[1] = -v200.f32[0];
          v203 = vmla_n_f32(vmul_n_f32(v201, *(v224 + v145 + 4)), v200, *(v224 + v145));
          *(v68 + v145) = vadd_f32(vadd_f32(vadd_f32(vadd_f32(vadd_f32(v147, v151), v154), v157), v161), v163);
          *(v79 + v145) = v174;
          *(v78 + v145) = v175;
          *(v77 + v145) = v180;
          *(v76 + v145) = v181;
          *(v75 + v145) = v186;
          *(v74 + v145) = v187;
          *(v73 + v145) = v192;
          *(v72 + v145) = v193;
          *(v71 + v145) = v202;
          *(v69 + v145) = v203;
          v145 += 8;
          --v146;
        }

        while (v146);
      }

      ++v63;
      v64 = (v64 + v214);
      v94 += v214;
      v222 += v214;
      v66 += v214;
      v96 = v231 + v214;
      v97 += v214;
      v221 += v214;
      v223 += v214;
      v67 += v214;
      v68 += v205;
      v69 += v205;
      v71 += v205;
      v72 += v205;
      v73 += v205;
      v74 += v205;
      v75 += v205;
      v76 += v205;
      v77 += v205;
      v78 += v205;
      v79 += v205;
      v70 = v218;
      a5 = v219;
      v65 += v214;
      v90 = v228;
      v85 = v230;
      v82 = v143;
      v86 = v226;
      v91 = v227;
      v87 = v140;
      v92 = v141;
      v93 = v142;
      v88 = v144;
      v95 += v214;
    }

    while (v220 + 1 != v218);
  }
}

void pocketfft::detail::cfftp<float>::passg<true,pocketfft::detail::cmplx<float>>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, float32x2_t *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v13 = pocketfft::detail::arr<pocketfft::detail::cmplx<float>>::ralloc(a3);
  v14 = v13;
  *v13 = 1065353216;
  if (a3 >= 2)
  {
    v15 = a3 - 1;
    v16 = (a8 + 12);
    v17 = v13 + 3;
    do
    {
      v18 = *(v16 - 1);
      v19 = *v16;
      v16 += 2;
      *(v17 - 1) = v18;
      *v17 = -v19;
      v17 += 2;
      --v15;
    }

    while (v15);
  }

  v20 = a3 + 1;
  v21 = 8 * a2;
  if (a4)
  {
    v22 = a4;
    v23 = a6;
    v24 = a5;
    do
    {
      if (a2)
      {
        memcpy(v23, v24, 8 * a2);
      }

      v24 += a3 * a2;
      v23 += v21;
      --v22;
    }

    while (v22);
  }

  v25 = a4 * a2;
  v26 = v20 >> 1;
  v143 = a3 - 1;
  if (v20 >= 4)
  {
    v27 = &a6[8 * v25];
    v28 = &a6[8 * v25 * v143];
    v29 = &a5[a2];
    v30 = 8 * a3 * a2;
    v31 = &a5[a2 * v143];
    v32 = 1;
    do
    {
      if (a4)
      {
        v33 = 0;
        v34 = v31;
        v35 = v29;
        v36 = v28;
        v37 = v27;
        do
        {
          v38 = v34;
          v39 = v35;
          v40 = v36;
          v41 = v37;
          for (i = a2; i; --i)
          {
            v43 = *v39++;
            v44 = v43;
            v45 = *v38++;
            *v41++ = vadd_f32(v44, v45);
            *v40++ = vsub_f32(v44, v45);
          }

          ++v33;
          v37 = (v37 + v21);
          v36 = (v36 + v21);
          v35 = (v35 + v30);
          v34 = (v34 + v30);
        }

        while (v33 != a4);
      }

      ++v32;
      v27 += v25;
      v28 -= v25;
      v29 = (v29 + v21);
      v31 -= a2;
    }

    while (v32 != v26);
  }

  if (a4)
  {
    v46 = 0;
    v47 = &a6[8 * v25];
    do
    {
      if (a2)
      {
        v48 = 0;
        v49 = v47;
        do
        {
          v50 = *&a6[8 * v46 * a2 + 8 * v48];
          v51 = v49;
          v52 = v26 - 1;
          if (v20 >= 4)
          {
            do
            {
              v50 = vadd_f32(v50, *v51);
              v51 += v25;
              --v52;
            }

            while (v52);
          }

          a5[v46 * a2 + v48++] = v50;
          ++v49;
        }

        while (v48 != a2);
      }

      ++v46;
      v47 = (v47 + v21);
    }

    while (v46 != a4);
  }

  if (v20 >= 4)
  {
    v53 = 16 * v25;
    v54 = v26 - 1;
    v55 = 8 * v25;
    v56 = &a5[v25];
    v57 = &a5[v25 * v143];
    v58 = 1;
    do
    {
      if (v25)
      {
        v59 = 0;
        v60 = &v14[2 * v58];
        v61 = vld1_dup_f32(v60++);
        v62 = &v14[4 * v58];
        v64.f32[0] = *v60;
        v63 = vld1_dup_f32(v62++);
        v65.f32[0] = *v62;
        v64.f32[1] = -*v60;
        v65.f32[1] = -*v62;
        do
        {
          v56[v59] = vmla_f32(vmla_f32(*&a6[8 * v59], *&a6[8 * v25 + 8 * v59], v61), *&a6[16 * v25 + 8 * v59], v63);
          v57[v59] = vrev64_s32(vmla_f32(vmul_f32(*&a6[8 * v25 * (a3 - 2) + 8 * v59], v65), *&a6[8 * v25 * v143 + 8 * v59], v64));
          ++v59;
        }

        while (v25 != v59);
      }

      v66 = 2 * v58;
      if (v54 < 4)
      {
        v70 = a3 - 3;
        v72 = 3;
      }

      else
      {
        v67 = &a6[8 * v25 * (a3 - 4)];
        v69 = &a6[8 * v25 * (a3 - 3)];
        v68 = &a6[32 * v25];
        v71 = &a6[24 * v25];
        v70 = a3 - 3;
        v72 = 3;
        do
        {
          v73 = v66 + v58;
          if (v66 + v58 <= a3)
          {
            v74 = 0;
          }

          else
          {
            v74 = a3;
          }

          v75 = v73 - v74;
          v76 = v73 - v74 + v58;
          if (v76 <= a3)
          {
            v77 = 0;
          }

          else
          {
            v77 = a3;
          }

          v66 = v76 - v77;
          if (v25)
          {
            v78 = 0;
            v79 = &v14[2 * v75];
            v80 = vld1_dup_f32(v79++);
            v81 = vld1_dup_f32(v79);
            v82 = &v14[2 * v66];
            v83 = vld1_dup_f32(v82++);
            v84 = vld1_dup_f32(v82);
            do
            {
              v56[v78] = vadd_f32(v56[v78], vmla_f32(vmul_f32(v83, *&v68[8 * v78]), v80, *&v71[8 * v78]));
              v85 = vrev64_s32(vmla_f32(vmul_f32(v84, *&v67[8 * v78]), v81, *&v69[8 * v78]));
              v86 = v57[v78];
              v87.i32[0] = vsub_f32(v86, v85).u32[0];
              v87.i32[1] = vadd_f32(v86, v85).i32[1];
              v57[v78++] = v87;
            }

            while (v25 != v78);
          }

          v72 += 2;
          v70 -= 2;
          v71 += v53;
          v68 += v53;
          v69 -= 16 * v25;
          v67 -= 16 * v25;
        }

        while (v72 < v54);
      }

      if (v72 < v26)
      {
        v88 = &a6[v55 * v72];
        v89 = &a6[v55 * v70 + 4];
        do
        {
          v90 = v66 + v58;
          if (v66 + v58 <= a3)
          {
            v91 = 0;
          }

          else
          {
            v91 = a3;
          }

          v66 = v90 - v91;
          if (v25)
          {
            v92 = 0;
            v93 = &v14[2 * v66];
            v94 = v93[1];
            v95 = vld1_dup_f32(v93);
            v96 = a4 * a2;
            do
            {
              v56[v92] = vmla_f32(v56[v92], v95, *&v88[v92 * 8]);
              v97 = &v57[v92];
              v98 = v57[v92].f32[1] + (*(v89 + v92 * 8 - 4) * v94);
              *v97 = v57[v92].f32[0] - (*(v89 + v92 * 8) * v94);
              v97[1] = v98;
              ++v92;
              --v96;
            }

            while (v96);
          }

          ++v72;
          v88 += v55;
          v89 -= 8 * v25;
        }

        while (v72 != v26);
      }

      ++v58;
      v56 = (v56 + v55);
      v57 -= v25;
    }

    while (v58 != v26);
    if (a2 == 1)
    {
      v99 = &a5[v25 * v143] + 4;
      v100 = &a5[v25] + 4;
      v101 = 1;
      do
      {
        v102 = v100;
        v103 = v99;
        for (j = a4; j; --j)
        {
          v105 = *(v102 - 1);
          v106 = *v102;
          v107 = *(v103 - 1);
          v108 = *v103;
          v109 = *v102 + *v103;
          *(v102 - 1) = v105 + v107;
          *v102 = v109;
          *(v103 - 1) = v105 - v107;
          *v103 = v106 - v108;
          v103 += 2;
          v102 += 2;
        }

        ++v101;
        v99 -= 8 * v25;
        v100 += v55;
      }

      while (v101 != v26);
    }

    else
    {
      v110 = &a5[v25 + 1] + 4;
      v111 = 1;
      v112 = (a7 + 4);
      v113 = a3 - 1;
      do
      {
        if (a4)
        {
          v114 = 0;
          v115 = v113 * a4;
          v116 = v113 - 1;
          v117 = &a5[1] + v55 * v113 + 4;
          v118 = v110;
          do
          {
            v119 = &a5[(v114 + v111 * a4) * a2];
            v120 = *v119;
            v121 = v119[1];
            v122 = &a5[(v114 + v115) * a2];
            v123 = *v122;
            v124 = v122[1];
            *v119 = *v119 + *v122;
            v119[1] = v121 + v124;
            v125 = (a7 + 4 + 8 * (a2 - 1) * v116);
            *v122 = v120 - v123;
            v122[1] = v121 - v124;
            v126 = v118;
            v127 = v112;
            v128 = v117;
            v129 = a2 - 1;
            if (a2)
            {
              do
              {
                v130 = *(v126 - 1);
                v131 = *(v128 - 1);
                v132 = v130 + v131;
                v133 = *v126 + *v128;
                v134 = v130 - v131;
                v135 = *v126 - *v128;
                v136 = *(v127 - 1);
                v137 = (v133 * *v127) + (v132 * v136);
                v138 = (v133 * v136) - (v132 * *v127);
                *(v126 - 1) = v137;
                *v126 = v138;
                v139 = *(v125 - 1);
                v140 = (v135 * *v125) + (v134 * v139);
                v141 = (v135 * v139) - (v134 * *v125);
                *(v128 - 1) = v140;
                *v128 = v141;
                v128 += 2;
                v127 += 2;
                v126 += 2;
                v125 += 2;
                --v129;
              }

              while (v129);
            }

            ++v114;
            v117 += v21;
            v118 = (v118 + v21);
          }

          while (v114 != a4);
        }

        else
        {
          v116 = v113 - 1;
        }

        ++v111;
        v112 = (v112 + v21 - 8);
        v110 += v55;
        v113 = v116;
      }

      while (v111 != v26);
    }
  }

  free(v14);
}

void pocketfft::detail::cfftp<float>::pass4<false,pocketfft::detail::cmplx<float>>(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, uint64_t a6)
{
  v6 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v7 = 2 * a3;
      v8 = a4 + 2;
      v9 = &a5[3 * a3] + 1;
      v10 = &a5[a3] + 1;
      do
      {
        v11 = v8[-2];
        v12 = v8[-1];
        v13 = *v8;
        v14 = v8[1];
        v8 += 4;
        v15 = vadd_f32(v11, v13);
        v16 = vsub_f32(v11, v13);
        v17 = vadd_f32(v12, v14);
        v18 = vsub_f32(v12, v14);
        *a5 = vadd_f32(v15, v17);
        a5[v7] = vsub_f32(v15, v17);
        *(v10 - 1) = v16.f32[0] - v18.f32[1];
        *v10 = v16.f32[1] + v18.f32[0];
        *(v9 - 1) = v16.f32[0] + v18.f32[1];
        *v9 = v16.f32[1] - v18.f32[0];
        v9 += 2;
        v10 += 2;
        ++a5;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v19 = 0;
    v20 = 8 * a2;
    v21 = a4 + 1;
    v22 = 32 * a2;
    v23 = &a4[a2 + 1];
    v24 = &a4[2 * a2 + 1];
    v25 = &a4[3 * a2 + 1];
    v26 = a5 + 1;
    v27 = &a5[a3 * a2 + 1];
    v28 = &a5[3 * a3 * a2 + 1];
    v29 = &a5[2 * a3 * a2 + 1];
    do
    {
      v30 = a4[4 * v19 * a2];
      v31 = a4[((4 * v19) | 2) * a2];
      v32 = vadd_f32(v30, v31);
      v33 = vsub_f32(v30, v31);
      v34 = a4[((4 * v19) | 1) * a2];
      v35 = a4[((4 * v19) | 3) * a2];
      v36 = vadd_f32(v34, v35);
      v37 = vsub_f32(v34, v35);
      a5[v19 * a2] = vadd_f32(v32, v36);
      a5[(v19 + 2 * a3) * a2] = vsub_f32(v32, v36);
      v38 = &a5[(v19 + a3) * a2];
      v39 = &a5[(v19 + 3 * a3) * a2];
      *v38 = v33.f32[0] - v37.f32[1];
      v38[1] = v33.f32[1] + v37.f32[0];
      *v39 = v33.f32[0] + v37.f32[1];
      v39[1] = v33.f32[1] - v37.f32[0];
      if (a2)
      {
        v40 = 0;
        do
        {
          v41 = v21[v40];
          v42 = *(v23 + 8 * v40);
          v43 = *(v24 + 8 * v40);
          v44 = *(v25 + 8 * v40);
          v45 = vadd_f32(v41, v43);
          v46 = vadd_f32(v42, v44);
          v47 = vsub_f32(vext_s8(v41, v42, 4uLL), vext_s8(v43, v44, 4uLL));
          v41.i32[1] = v42.i32[1];
          v43.i32[1] = v44.i32[1];
          v48 = vsub_f32(v41, v43);
          v26[v40] = vadd_f32(v45, v46);
          v44.f32[0] = vaddv_f32(v47);
          v44.f32[1] = -v44.f32[0];
          *(v27 + 8 * v40) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 8 * v40), v44)), *(a6 + 8 * v40), v48.f32[0] - v48.f32[1]);
          v49 = *(a6 + 8 * a2 - 8 + 8 * v40);
          v50 = vsub_f32(v45, v46);
          *(v29 + 8 * v40) = vmla_n_f32(vmul_f32(vrev64_s32(v49), vext_s8(vneg_f32(v50), vdup_lane_s32(v50, 1), 4uLL)), v49, v50.f32[0]);
          v49.f32[0] = v47.f32[0] - v47.f32[1];
          v51 = *(a6 + 16 * v6 + 8 * v40);
          v49.f32[1] = -(v47.f32[0] - v47.f32[1]);
          *(v28 + 8 * v40++) = vmla_n_f32(vrev64_s32(vmul_f32(v51, v49)), v51, vaddv_f32(v48));
        }

        while (v6 != v40);
      }

      ++v19;
      v21 = (v21 + v22);
      v23 += v22;
      v24 += v22;
      v25 += v22;
      v26 = (v26 + v20);
      v27 += v20;
      v29 += v20;
      v28 += v20;
    }

    while (v19 != a3);
  }
}

void pocketfft::detail::cfftp<float>::pass8<false,pocketfft::detail::cmplx<float>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t a6)
{
  v6 = a5;
  v207 = a4;
  v198 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v7 = 8 * a3;
      v8 = 4 * a3;
      v9 = (a4 + 32);
      v10 = (56 * a3) | 4;
      v11 = (24 * a3) | 4;
      v12 = (40 * a3) | 4;
      v13 = 2 * a3;
      v14 = (48 * a3) | 4;
      do
      {
        v15 = *(v9 - 6);
        v16 = *(v9 - 5);
        v17 = v9[2];
        v18 = v9[3];
        v19 = v15 + v17;
        v20 = v16 + v18;
        v21 = v15 - v17;
        v22 = v16 - v18;
        v23 = *(v9 - 2);
        v24 = *(v9 - 1);
        v25 = v9[6];
        v26 = v9[7];
        v27 = v23 + v25;
        v28 = v24 + v26;
        v29 = v23 - v25;
        v30 = v24 - v26;
        v31 = v19 + v27;
        v32 = v20 + v28;
        v33 = v19 - v27;
        v34 = v20 - v28;
        v35 = v21 - v30;
        v36 = v22 + v29;
        v37 = v21 + v30;
        v38 = v22 - v29;
        v39 = (v35 - v36) * 0.70711;
        v40 = (v36 + v35) * 0.70711;
        v41 = (-v37 - v38) * 0.70711;
        v42 = (v37 - v38) * 0.70711;
        v43 = *(v9 - 8);
        v44 = *(v9 - 7);
        v45 = v9[1];
        v46 = v43 + *v9;
        v47 = v44 + v45;
        v48 = v43 - *v9;
        v49 = v44 - v45;
        v50 = *(v9 - 4);
        v51 = *(v9 - 3);
        v52 = v9[4];
        v53 = v9[5];
        v54 = v50 + v52;
        v55 = v51 + v53;
        v56 = v50 - v52;
        v57 = v51 - v53;
        v58 = &v6[v7];
        *v6 = v31 + (v46 + v54);
        v6[1] = v32 + (v47 + v55);
        *v58 = (v46 + v54) - v31;
        v58[1] = (v47 + v55) - v32;
        v59 = &v6[v8];
        v60 = (v6 + v14);
        *v59 = (v46 - v54) - v34;
        v59[1] = v33 + (v47 - v55);
        *(v60 - 1) = v34 + (v46 - v54);
        *v60 = (v47 - v55) - v33;
        v61 = &v6[v13];
        v62 = (v6 + v12);
        *v61 = v39 + (v48 - v57);
        v61[1] = v40 + (v49 + v56);
        *(v62 - 1) = (v48 - v57) - v39;
        *v62 = (v49 + v56) - v40;
        v63 = (v6 + v11);
        v64 = (v6 + v10);
        v65 = v48 + v57;
        *(v63 - 1) = v41 + v65;
        *v63 = v42 + (v49 - v56);
        *(v64 - 1) = v65 - v41;
        *v64 = (v49 - v56) - v42;
        v9 += 16;
        v6 += 2;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v66 = 0;
    v205 = 5 * a3;
    v204 = 7 * a3;
    v203 = 4 * a3;
    v67 = &a5[14 * a3 * a2 + 2];
    v68 = a4 + 8 * a2 + 12;
    v202 = 2 * a3;
    v206 = 3 * a3;
    v201 = 6 * a3;
    v69 = &a5[6 * a3 * a2 + 2];
    v70 = a4 + 40 * a2 + 12;
    v199 = a2 << 6;
    v200 = 8 * a2;
    v71 = &a5[10 * a3 * a2 + 2];
    v72 = a4 + 24 * a2 + 12;
    v73 = &a5[2 * a3 * a2 + 2];
    v74 = a4 + 56 * a2 + 12;
    v75 = &a5[12 * a3 * a2 + 2];
    v76 = a4 + 32 * a2;
    v77 = &a5[4 * a3 * a2 + 2];
    v78 = &a5[8 * a3 * a2 + 2];
    v79 = a4 + 16 * a2;
    v80 = a4 + 48 * a2;
    v208 = a3;
    do
    {
      v81 = (v207 + 8 * ((8 * v66) | 1) * a2);
      v82 = *v81;
      v83 = v81[1];
      v84 = (v207 + 8 * ((8 * v66) | 5) * a2);
      v85 = v84[1];
      v86 = v82 + *v84;
      v87 = v83 + v85;
      v88 = v82 - *v84;
      v89 = v83 - v85;
      v90 = (v207 + 8 * ((8 * v66) | 3) * a2);
      v91 = *v90;
      v92 = v90[1];
      v93 = (v207 + 8 * ((8 * v66) | 7) * a2);
      v94 = v93[1];
      v95 = v91 + *v93;
      v96 = v92 + v94;
      v97 = v91 - *v93;
      v98 = v92 - v94;
      v99 = v86 + v95;
      v100 = v87 + v96;
      v101 = v86 - v95;
      v102 = v87 - v96;
      v103 = v89 + v97;
      v104 = v88 + v98;
      v105 = v89 - v97;
      v106 = ((v88 - v98) - v103) * 0.70711;
      v107 = (v103 + (v88 - v98)) * 0.70711;
      v108 = (-v104 - v105) * 0.70711;
      v109 = (v104 - v105) * 0.70711;
      v110 = (v207 + 8 * 8 * v66 * a2);
      v111 = *v110;
      v112 = v110[1];
      v113 = (v207 + 8 * ((8 * v66) | 4) * a2);
      v114 = v113[1];
      v115 = v111 + *v113;
      v116 = v112 + v114;
      v117 = v111 - *v113;
      v118 = v112 - v114;
      v119 = (v207 + 8 * ((8 * v66) | 2) * a2);
      v120 = *v119;
      v121 = v119[1];
      v122 = (v207 + 8 * ((8 * v66) | 6) * a2);
      v123 = v122[1];
      v124 = v120 + *v122;
      v125 = v121 + v123;
      v126 = v120 - *v122;
      v127 = v121 - v123;
      v128 = &v6[2 * v66 * a2];
      v129 = &v6[2 * (v66 + v203) * a2];
      *v128 = v99 + (v115 + v124);
      v128[1] = v100 + (v116 + v125);
      *v129 = (v115 + v124) - v99;
      v129[1] = (v116 + v125) - v100;
      v130 = &v6[2 * (v66 + v202) * a2];
      v131 = &v6[2 * (v66 + v201) * a2];
      *v130 = (v115 - v124) - v102;
      v130[1] = v101 + (v116 - v125);
      *v131 = v102 + (v115 - v124);
      v131[1] = (v116 - v125) - v101;
      v132 = &v6[2 * (v66 + v208) * a2];
      v133 = &v6[2 * (v66 + v205) * a2];
      *v132 = v106 + (v117 - v127);
      v132[1] = v107 + (v118 + v126);
      *v133 = (v117 - v127) - v106;
      v133[1] = (v118 + v126) - v107;
      v134 = &v6[2 * (v66 + v206) * a2];
      v135 = &v6[2 * (v66 + v204) * a2];
      *v134 = v108 + (v117 + v127);
      v134[1] = v109 + (v118 - v126);
      *v135 = (v117 + v127) - v108;
      v135[1] = (v118 - v126) - v109;
      if (a2)
      {
        v136 = 0;
        v137 = a2 - 1;
        do
        {
          v138 = *(v68 + v136 - 4);
          v139 = *(v68 + v136);
          v140 = *(v70 + v136 - 4);
          v141 = *(v70 + v136);
          v142 = v138 + v140;
          v143 = v139 + v141;
          v144 = v138 - v140;
          v145 = v139 - v141;
          v146 = *(v72 + v136 - 4);
          v147 = *(v72 + v136);
          v148 = *(v74 + v136 - 4);
          v149 = *(v74 + v136);
          v150 = v146 + v148;
          v151 = v147 + v149;
          v152 = v146 - v148;
          v153 = v147 - v149;
          v154 = v142 + v150;
          v155 = v143 + v151;
          v156 = v142 - v150;
          v157 = v143 - v151;
          v158 = v145 + v152;
          v159 = v144 + v153;
          v160 = v145 - v152;
          v161 = ((v144 - v153) - v158) * 0.70711;
          v162 = (v158 + (v144 - v153)) * 0.70711;
          v163 = (-v159 - v160) * 0.70711;
          v164 = (v159 - v160) * 0.70711;
          v165 = *(a4 + v136 + 8);
          v166 = *(a4 + v136 + 12);
          v167 = *(v76 + v136 + 8);
          v168 = *(v76 + v136 + 12);
          v169 = v165 + v167;
          v170 = v166 + v168;
          v171 = v165 - v167;
          v172 = v166 - v168;
          v173 = *(v79 + v136 + 8);
          v174 = *(v79 + v136 + 12);
          v175 = *(v80 + v136 + 8);
          v176 = *(v80 + v136 + 12);
          v177 = v173 + v175;
          v178 = v174 + v176;
          v179 = v173 - v175;
          v180 = v174 - v176;
          v181 = v169 + v177;
          v182 = v170 + v178;
          v183 = v169 - v177;
          v184 = v170 - v178;
          v185 = &a5[v136 / 4];
          v185[2] = v154 + v181;
          v185[3] = v155 + v182;
          v186.f32[0] = v182 - v155;
          v187 = *(a6 + 24 * a2 - 24 + v136);
          v186.f32[1] = -v186.f32[0];
          *(v78 + v136) = vmla_n_f32(vrev64_s32(vmul_f32(v187, v186)), v187, v181 - v154);
          v188.f32[0] = v156 + v184;
          v189 = *(a6 + 8 * a2 - 8 + v136);
          v188.f32[1] = -(v156 + v184);
          *(v77 + v136) = vmla_n_f32(vrev64_s32(vmul_f32(v189, v188)), v189, v183 - v157);
          v190.f32[0] = v184 - v156;
          v191 = *(a6 + 40 * a2 - 40 + v136);
          v190.f32[1] = -v190.f32[0];
          *(v75 + v136) = vmla_n_f32(vrev64_s32(vmul_f32(v191, v190)), v191, v157 + v183);
          v192 = v171 - v180;
          v190.f32[0] = v172 + v179;
          v193 = v171 + v180;
          v194 = v172 - v179;
          v195.f32[0] = v162 + v190.f32[0];
          v195.f32[1] = -(v162 + v190.f32[0]);
          *(v73 + v136) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + v136), v195)), *(a6 + v136), v161 + v192);
          v196.f32[0] = v190.f32[0] - v162;
          v196.f32[1] = -v196.f32[0];
          *(v71 + v136) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 32 * v198 + v136), v196)), *(a6 + 32 * v198 + v136), v192 - v161);
          v196.f32[0] = v164 + v194;
          v196.f32[1] = -(v164 + v194);
          *(v69 + v136) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 16 * v198 + v136), v196)), *(a6 + 16 * v198 + v136), v163 + v193);
          v197.f32[0] = v194 - v164;
          v197.f32[1] = -v197.f32[0];
          *(v67 + v136) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 48 * a2 - 48 + v136), v197)), *(a6 + 48 * a2 - 48 + v136), v193 - v163);
          v136 += 8;
          --v137;
        }

        while (v137);
      }

      ++v66;
      v67 += v200;
      v68 += v199;
      v69 += v200;
      v70 += v199;
      v71 += v200;
      v72 += v199;
      v73 += v200;
      v74 += v199;
      v75 += v200;
      a4 += v199;
      v76 += v199;
      v79 += v199;
      v80 += v199;
      v77 += v200;
      a5 = (a5 + v200);
      v78 += v200;
    }

    while (v66 != v208);
  }
}

uint64_t pocketfft::detail::cfftp<float>::pass2<false,pocketfft::detail::cmplx<float>>(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, uint64_t a6)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = a4 + 1;
      v7 = a3;
      do
      {
        v8 = v6[-1];
        v9 = *v6;
        *a5 = vadd_f32(v8, *v6);
        a5[a3] = vsub_f32(v8, v9);
        ++a5;
        v6 += 2;
        --v7;
      }

      while (v7);
    }
  }

  else if (a3)
  {
    v10 = 0;
    v11 = a4 + 1;
    v12 = 16 * a2;
    v13 = 8 * a2;
    v14 = &a4[a2 + 1];
    v15 = a5 + 1;
    v16 = &a5[a3 * a2 + 1];
    do
    {
      result = v10 * a2;
      v18 = a4[2 * v10 * a2];
      v19 = a4[((2 * v10) | 1) * a2];
      a5[v10 * a2] = vadd_f32(v18, v19);
      a5[(v10 + a3) * a2] = vsub_f32(v18, v19);
      if (a2)
      {
        v20 = 0;
        do
        {
          v21 = v11[v20];
          v22 = *(v14 + 8 * v20);
          v15[v20] = vadd_f32(v21, v22);
          v23 = vsub_f32(v21, v22);
          *(v16 + 8 * v20) = vmla_n_f32(vmul_f32(vrev64_s32(*(a6 + 8 * v20)), vext_s8(vneg_f32(v23), vdup_lane_s32(v23, 1), 4uLL)), *(a6 + 8 * v20), v23.f32[0]);
          ++v20;
        }

        while (a2 - 1 != v20);
      }

      ++v10;
      v11 = (v11 + v12);
      v14 += v12;
      v15 = (v15 + v13);
      v16 += v13;
    }

    while (v10 != a3);
  }

  return result;
}

void pocketfft::detail::cfftp<float>::pass3<false,pocketfft::detail::cmplx<float>>(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, uint64_t a6)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = a4 + 2;
      v7 = a3;
      do
      {
        v8 = v6[-2];
        v9 = v6[-1];
        v10 = *v6;
        v6 += 3;
        v11 = vadd_f32(v9, v10);
        *a5 = vadd_f32(v8, v11);
        v12 = vadd_f32(v8, vmul_f32(v11, 0xBF000000BF000000));
        v13 = vrev64_s32(vmul_f32(vsub_f32(v9, v10), 0xBF5DB3D73F5DB3D7));
        a5[a3] = vadd_f32(v13, v12);
        a5[2 * a3] = vsub_f32(v12, v13);
        ++a5;
        --v7;
      }

      while (v7);
    }
  }

  else if (a3)
  {
    v14 = 0;
    v15 = 8 * a2;
    v16 = a4 + 1;
    v17 = 24 * a2;
    v18 = &a4[a2 + 1];
    v19 = &a4[2 * a2 + 1];
    v20 = a5 + 1;
    v21 = &a5[a3 * a2 + 1];
    v22 = &a5[2 * a3 * a2 + 1];
    do
    {
      v23 = 3 * v14 * a2;
      v24 = a4[v23];
      v25 = a4[a2 + v23];
      v26 = a4[(3 * v14 + 2) * a2];
      v27 = vadd_f32(v25, v26);
      a5[v14 * a2] = vadd_f32(v24, v27);
      v28 = vadd_f32(v24, vmul_f32(v27, 0xBF000000BF000000));
      v29 = vrev64_s32(vmul_f32(vsub_f32(v25, v26), 0xBF5DB3D73F5DB3D7));
      a5[(v14 + a3) * a2] = vadd_f32(v29, v28);
      a5[(v14 + 2 * a3) * a2] = vsub_f32(v28, v29);
      if (a2)
      {
        v30 = 0;
        do
        {
          v31 = v16[v30];
          v32 = *(v18 + 8 * v30);
          v33 = *(v19 + 8 * v30);
          v34 = vadd_f32(v32, v33);
          v35 = vsub_f32(v32, v33);
          v20[v30] = vadd_f32(v31, v34);
          v33.f32[0] = v31.f32[0] - (0.5 * v34.f32[0]);
          v31.f32[0] = v31.f32[1] - vmuls_lane_f32(0.5, v34, 1);
          v34.f32[0] = vmuls_lane_f32(-0.86603, v35, 1);
          v35.f32[0] = 0.86603 * v35.f32[0];
          v36.f32[0] = v35.f32[0] + v31.f32[0];
          v36.f32[1] = -(v35.f32[0] + v31.f32[0]);
          *(v21 + 8 * v30) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 8 * v30), v36)), *(a6 + 8 * v30), v33.f32[0] + v34.f32[0]);
          v33.f32[0] = v33.f32[0] - v34.f32[0];
          v31.f32[0] = v31.f32[0] - v35.f32[0];
          v37 = *(a6 + 8 * a2 - 8 + 8 * v30);
          v31.f32[1] = -v31.f32[0];
          *(v22 + 8 * v30++) = vmla_n_f32(vrev64_s32(vmul_f32(v37, v31)), v37, v33.f32[0]);
        }

        while (a2 - 1 != v30);
      }

      ++v14;
      v16 = (v16 + v17);
      v18 += v17;
      v19 += v17;
      v20 = (v20 + v15);
      v21 += v15;
      v22 += v15;
    }

    while (v14 != a3);
  }
}

uint64_t pocketfft::detail::cfftp<float>::pass5<false,pocketfft::detail::cmplx<float>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v7 = (a5 + 4);
      v8 = 2 * a3;
      v9 = (a5 + 4 + 24 * a3);
      v10 = (a4 + 20);
      v11 = (a5 + 4 + 32 * a3);
      v12 = (a5 + 4 + 16 * a3);
      do
      {
        v13 = *(v10 - 5);
        v14 = *(v10 - 4);
        v15 = *(v10 - 3);
        v16 = *(v10 - 2);
        v17 = v10[3];
        v18 = v10[4];
        v19 = v15 + v17;
        v20 = v16 + v18;
        v21 = v15 - v17;
        v22 = v16 - v18;
        v23 = *(v10 - 1);
        v24 = v10[1];
        v25 = v10[2];
        v26 = v23 + v24;
        v27 = *v10 + v25;
        v28 = v23 - v24;
        v29 = *v10 - v25;
        *(v7 - 1) = (v13 + v19) + v26;
        *v7 = (v14 + v20) + v27;
        v30 = (v13 + (v19 * 0.30902)) + (v26 * -0.80902);
        v31 = (v14 + (v20 * 0.30902)) + (v27 * -0.80902);
        v32 = (v28 * 0.58779) + (v21 * 0.95106);
        v33 = (v29 * 0.58779) + (v22 * 0.95106);
        v34 = &v7[v8];
        *(v34 - 1) = v30 - v33;
        *v34 = v31 + v32;
        *(v11 - 1) = v30 + v33;
        *v11 = v31 - v32;
        v35 = (v13 + (v19 * -0.80902)) + (v26 * 0.30902);
        v36 = (v14 + (v20 * -0.80902)) + (v27 * 0.30902);
        v37 = (v28 * -0.95106) + (v21 * 0.58779);
        v38 = (v29 * -0.95106) + (v22 * 0.58779);
        *(v12 - 1) = v35 - v38;
        *v12 = v36 + v37;
        v7 += 2;
        v11 += 2;
        *(v9 - 1) = v35 + v38;
        *v9 = v36 - v37;
        v12 += 2;
        v9 += 2;
        v10 += 10;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v39 = 0;
    v102 = 8 * a2;
    v40 = a4 + 8;
    v101 = 40 * a2;
    v41 = a5 + 8;
    v42 = a4 + 8 + 8 * a2;
    v43 = vdup_n_s32(0x3E9E377Au);
    v44 = vdup_n_s32(0xBF4F1BBD);
    v45 = a4 + 8 + 32 * a2;
    v46 = vdup_n_s32(0x3F167918u);
    v47 = a4 + 8 + 16 * a2;
    v48 = vdup_n_s32(0x3F737871u);
    v49 = vdup_n_s32(0xBF737871);
    v50 = a4 + 8 + 24 * a2;
    _S5 = 1050556282;
    _S6 = -1085334595;
    v53 = a5 + 8 + 8 * a3 * a2;
    _S7 = 1058437400;
    _S16 = 1064532081;
    v56 = a5 + 8 + 32 * a3 * a2;
    v57 = a5 + 8 + 24 * a3 * a2;
    v58 = a5 + 8 + 16 * a3 * a2;
    do
    {
      v59 = 5 * v39 * a2;
      result = a4;
      v61 = *(a4 + 8 * v59);
      v62 = *(a4 + 8 * (a2 + v59));
      v63 = *(a4 + 8 * (5 * v39 + 4) * a2);
      v64 = vadd_f32(v62, v63);
      v65 = *(a4 + 8 * (5 * v39 + 2) * a2);
      v66 = vsub_f32(v62, v63);
      v67 = *(a4 + 8 * (5 * v39 + 3) * a2);
      v68 = vadd_f32(v65, v67);
      v69 = vsub_f32(v65, v67);
      *(a5 + 8 * v39 * a2) = vadd_f32(vadd_f32(v61, v64), v68);
      v70 = vmla_f32(vmla_f32(v61, v43, v64), v44, v68);
      v71 = vrev64_s32(vmla_f32(vmul_f32(v69, v46), v48, v66));
      v72 = vsub_f32(v70, v71);
      v73 = vadd_f32(v70, v71);
      *(a5 + 8 * (v39 + a3) * a2) = __PAIR64__(v73.u32[1], v72.u32[0]);
      v73.i32[1] = v72.i32[1];
      *(a5 + 8 * (v39 + 4 * a3) * a2) = v73;
      v74 = vmla_f32(vmla_f32(v61, v44, v64), v43, v68);
      v75 = vrev64_s32(vmla_f32(vmul_f32(v69, v49), v46, v66));
      v76 = vsub_f32(v74, v75);
      v77 = vadd_f32(v74, v75);
      *(a5 + 8 * (v39 + 2 * a3) * a2) = __PAIR64__(v77.u32[1], v76.u32[0]);
      v77.i32[1] = v76.i32[1];
      *(a5 + 8 * (v39 + 3 * a3) * a2) = v77;
      if (a2)
      {
        v78 = 0;
        do
        {
          v79 = *(v40 + 8 * v78);
          v80 = *(v42 + 8 * v78);
          v81 = *(v45 + 8 * v78);
          _D21 = vadd_f32(v80, v81);
          _D19 = vsub_f32(v80, v81);
          _D18 = *(v47 + 8 * v78);
          _D22 = *(v50 + 8 * v78);
          _D23 = vadd_f32(_D18, _D22);
          _D22.f32[0] = vsub_f32(_D18, _D22).f32[0];
          *(v41 + 8 * v78) = vadd_f32(vadd_f32(v79, _D21), _D23);
          v87 = (v79.f32[0] + (_D21.f32[0] * 0.30902)) + (_D23.f32[0] * -0.80902);
          __asm
          {
            FMLA            S25, S5, V21.S[1]
            FMLA            S25, S6, V23.S[1]
          }

          v94 = (0.58779 * _D22.f32[0]) + (_D19.f32[0] * 0.95106);
          __asm { FMLA            S27, S16, V19.S[1] }

          v96.f32[0] = _S25 + v94;
          v96.f32[1] = -(_S25 + v94);
          *(v53 + 8 * v78) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 8 * v78), v96)), *(a6 + 8 * v78), v87 - _S27);
          v97.f32[0] = _S25 - v94;
          v98 = *(a6 + 24 * a2 - 24 + 8 * v78);
          v97.f32[1] = -v97.f32[0];
          *(v56 + 8 * v78) = vmla_n_f32(vrev64_s32(vmul_f32(v98, v97)), v98, v87 + _S27);
          v79.f32[0] = (v79.f32[0] + (_D21.f32[0] * -0.80902)) + (_D23.f32[0] * 0.30902);
          __asm
          {
            FMLA            S18, S6, V21.S[1]
            FMLA            S18, S5, V23.S[1]
          }

          _D21.f32[0] = (-0.95106 * _D22.f32[0]) + (_D19.f32[0] * 0.58779);
          __asm { FMLA            S22, S7, V19.S[1] }

          _D23.f32[0] = _D18.f32[0] + _D21.f32[0];
          v99 = *(a6 + 8 * a2 - 8 + 8 * v78);
          _D23.f32[1] = -(_D18.f32[0] + _D21.f32[0]);
          *(v58 + 8 * v78) = vmla_n_f32(vrev64_s32(vmul_f32(v99, _D23)), v99, v79.f32[0] - _D22.f32[0]);
          _D18.f32[0] = _D18.f32[0] - _D21.f32[0];
          v100 = *(a6 + 16 * v6 + 8 * v78);
          _D18.f32[1] = -_D18.f32[0];
          *(v57 + 8 * v78++) = vmla_n_f32(vrev64_s32(vmul_f32(v100, _D18)), v100, v79.f32[0] + _D22.f32[0]);
        }

        while (v6 != v78);
      }

      ++v39;
      v40 += v101;
      v42 += v101;
      v45 += v101;
      v47 += v101;
      v50 += v101;
      v41 += v102;
      v53 += v102;
      v56 += v102;
      v58 += v102;
      v57 += v102;
    }

    while (v39 != a3);
  }

  return result;
}

void pocketfft::detail::cfftp<float>::pass7<false,pocketfft::detail::cmplx<float>>(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = a3;
  v136 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v7 = 0;
      v8 = vdup_n_s32(0x3F1F9D07u);
      v9 = vdup_n_s32(0xBE63DC87);
      v10 = vdup_n_s32(0xBF66A5E5);
      v11 = vdup_n_s32(0x3F7994E0u);
      v12 = vdup_n_s32(0x3F48261Cu);
      v13 = vdup_n_s32(0x3EDE2602u);
      v14 = vdup_n_s32(0xBEDE2602);
      v15 = vdup_n_s32(0xBF48261C);
      v16 = a4 + 3;
      do
      {
        v17 = v16[-3];
        v18 = v16[-2];
        v20 = v16[2];
        v19 = v16[3];
        v21 = vadd_f32(v18, v19);
        v22 = vsub_f32(v18, v19);
        v23 = v16[-1];
        v24 = v16[1];
        v25 = vadd_f32(v23, v20);
        v26 = vsub_f32(v23, v20);
        v27 = vadd_f32(*v16, v24);
        v28 = vsub_f32(*v16, v24);
        v29 = vmla_f32(vmla_f32(vmla_f32(v17, v8, v21), v9, v25), v10, v27);
        *(a5 + 8 * v7) = vadd_f32(vadd_f32(vadd_f32(v17, v21), v25), v27);
        v30 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v26, v11), v12, v22), v13, v28));
        v31 = vsub_f32(v29, v30);
        v32 = vadd_f32(v29, v30);
        v33 = __PAIR64__(v32.u32[1], v31.u32[0]);
        v34 = vmla_f32(vmla_f32(vmla_f32(v17, v9, v21), v10, v25), v8, v27);
        v35 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v26, v14), v11, v22), v15, v28));
        v36 = vsub_f32(v34, v35);
        v32.i32[1] = v31.i32[1];
        v37 = vadd_f32(v34, v35);
        v38 = __PAIR64__(v37.u32[1], v36.u32[0]);
        *(a5 + 8 * a3 + 8 * v7) = v33;
        v37.i32[1] = v36.i32[1];
        *(a5 + 48 * a3 + 8 * v7) = v32;
        v39 = vmla_f32(vmla_f32(vmla_f32(v17, v10, v21), v8, v25), v9, v27);
        *(a5 + 16 * a3 + 8 * v7) = v38;
        v40 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v26, v15), v13, v22), v11, v28));
        v41 = vsub_f32(v39, v40);
        v42 = vadd_f32(v39, v40);
        v43 = __PAIR64__(v42.u32[1], v41.u32[0]);
        *(a5 + 40 * a3 + 8 * v7) = v37;
        v42.i32[1] = v41.i32[1];
        *(a5 + 24 * a3 + 8 * v7) = v43;
        *(a5 + 32 * a3 + 8 * v7++) = v42;
        v16 += 7;
      }

      while (a3 != v7);
    }
  }

  else if (a3)
  {
    v44 = 0;
    v133 = 56 * a2;
    v45 = a4 + 1;
    v46 = &a4[6 * a2 + 1];
    v47 = a5 + 8;
    v48 = a5 + 8 + 48 * a3 * a2;
    v49 = a5 + 8 + 40 * a3 * a2;
    v132 = 8 * a2;
    v50 = vdup_n_s32(0x3F1F9D07u);
    v51 = vdup_n_s32(0xBE63DC87);
    v52 = &a4[a2 + 1];
    v53 = vdup_n_s32(0xBF66A5E5);
    v54 = vdup_n_s32(0x3F7994E0u);
    v55 = &a4[2 * a2 + 1];
    v56 = vdup_n_s32(0x3F48261Cu);
    v57 = a5 + 8 + 24 * a3 * a2;
    v58 = &a4[5 * a2 + 1];
    v59 = vdup_n_s32(0x3EDE2602u);
    v60 = vdup_n_s32(0xBEDE2602);
    v61 = &a4[3 * a2 + 1];
    v62 = "7_RS5_bbmmffNS2_6StreamEEUlvE_Lb0EEE";
    v63 = a5 + 8 + 8 * a3 * a2;
    v64 = a5 + 8 + 16 * a3 * a2;
    v65 = vdup_n_s32(0xBF48261C);
    v66 = a5 + 8 + 32 * a3 * a2;
    v67 = &a4[4 * a2 + 1];
    do
    {
      v68 = v62;
      v69 = 7 * v44 * a2;
      v70 = a2 + v69;
      v134 = v44;
      v71 = a4[v69];
      v62 = v68;
      v72 = a4[v70];
      v73 = a4[(7 * v44 + 6) * a2];
      v74 = vadd_f32(v72, v73);
      v75 = vsub_f32(v72, v73);
      v76 = a4[(7 * v44 + 2) * a2];
      v77 = a4[(7 * v44 + 5) * a2];
      v78 = vadd_f32(v76, v77);
      v79 = vsub_f32(v76, v77);
      v80 = a4[(7 * v44 + 3) * a2];
      v81 = a4[(7 * v44 + 4) * a2];
      v82 = vadd_f32(v80, v81);
      v83 = vsub_f32(v80, v81);
      *(a5 + 8 * v44 * a2) = vadd_f32(vadd_f32(vadd_f32(v71, v74), v78), v82);
      v84 = vmla_f32(vmla_f32(vmla_f32(v71, v50, v74), v51, v78), v53, v82);
      v85 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v79, v54), v56, v75), v59, v83));
      v86 = vsub_f32(v84, v85);
      v87 = vadd_f32(v84, v85);
      *(a5 + 8 * (v44 + v6) * a2) = __PAIR64__(v87.u32[1], v86.u32[0]);
      v87.i32[1] = v86.i32[1];
      *(a5 + 8 * (v44 + 6 * a3) * a2) = v87;
      v88 = vmla_f32(vmla_f32(vmla_f32(v71, v51, v74), v53, v78), v50, v82);
      v89 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v79, v60), v54, v75), v65, v83));
      v90 = vsub_f32(v88, v89);
      v91 = vadd_f32(v88, v89);
      *(a5 + 8 * (v44 + 2 * a3) * a2) = __PAIR64__(v91.u32[1], v90.u32[0]);
      v91.i32[1] = v90.i32[1];
      *(a5 + 8 * (v44 + 5 * a3) * a2) = v91;
      v92 = vmla_f32(vmla_f32(vmla_f32(v71, v53, v74), v50, v78), v51, v82);
      v93 = vrev64_s32(vmla_f32(vmla_f32(vmul_f32(v79, v65), v59, v75), v54, v83));
      v94 = vsub_f32(v92, v93);
      v95 = vadd_f32(v92, v93);
      *(a5 + 8 * (v44 + 3 * a3) * a2) = __PAIR64__(v95.u32[1], v94.u32[0]);
      v95.i32[1] = v94.i32[1];
      *(a5 + 8 * (v44 + 4 * a3) * a2) = v95;
      if (a2)
      {
        v96 = 0;
        do
        {
          v97 = v45[v96];
          v98 = *(v52 + 8 * v96);
          v99 = *(v46 + 8 * v96);
          _D17 = vadd_f32(v98, v99);
          v101 = *(v55 + 8 * v96);
          _D16 = vsub_f32(v98, v99);
          _D18 = *(v58 + 8 * v96);
          _D21 = vadd_f32(v101, _D18);
          _D22 = *(v61 + 8 * v96);
          _D18.f32[0] = vsub_f32(v101, _D18).f32[0];
          v106 = *(v67 + 8 * v96);
          _D23 = vadd_f32(_D22, v106);
          _D19 = vsub_f32(_D22, v106);
          *(v47 + 8 * v96) = vadd_f32(vadd_f32(vadd_f32(v97, _D17), _D21), _D23);
          _S24 = *(v68 + 599);
          _S25 = -1100751737;
          _S27 = -1083791899;
          v112 = ((v97.f32[0] + (_D17.f32[0] * _S24)) + (_D21.f32[0] * -0.22252)) + (_D23.f32[0] * -0.90097);
          __asm
          {
            FMLA            S30, S24, V17.S[1]
            FMLA            S30, S25, V21.S[1]
            FMLA            S30, S27, V23.S[1]
          }

          _S26 = 1064932576;
          _S31 = 1061692956;
          _S28 = 1054746114;
          v123 = ((0.97493 * _D18.f32[0]) + (_D16.f32[0] * 0.78183)) + (_D19.f32[0] * 0.43388);
          __asm
          {
            FMLA            S9, S31, V16.S[1]
            FMLA            S9, S28, V19.S[1]
          }

          _D31.f32[0] = v123 + _S30;
          _D31.f32[1] = -(v123 + _S30);
          *(v63 + 8 * v96) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 8 * v96), _D31)), *(a6 + 8 * v96), v112 - _S9);
          _D30.f32[0] = _S30 - v123;
          _D30.f32[1] = -_D30.f32[0];
          *(v48 + 8 * v96) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 40 * a2 - 40 + 8 * v96), _D30)), *(a6 + 40 * a2 - 40 + 8 * v96), v112 + _S9);
          v128 = ((v97.f32[0] + (_D17.f32[0] * -0.22252)) + (_D21.f32[0] * -0.90097)) + (_D23.f32[0] * _S24);
          __asm
          {
            FMLA            S30, S25, V17.S[1]
            FMLA            S30, S27, V21.S[1]
            FMLA            S30, S24, V23.S[1]
          }

          _S9 = -1085790692;
          v130 = ((-0.43388 * _D18.f32[0]) + (_D16.f32[0] * 0.97493)) + (_D19.f32[0] * -0.78183);
          __asm
          {
            FMLA            S31, S26, V16.S[1]
            FMLA            S31, S9, V19.S[1]
          }

          v131.f32[0] = v130 + _D30.f32[0];
          v131.f32[1] = -(v130 + _D30.f32[0]);
          _D30.f32[0] = _D30.f32[0] - v130;
          *(v64 + 8 * v96) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 8 * a2 - 8 + 8 * v96), v131)), *(a6 + 8 * a2 - 8 + 8 * v96), v128 - _D31.f32[0]);
          _D30.f32[1] = -_D30.f32[0];
          *(v49 + 8 * v96) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 32 * v136 + 8 * v96), _D30)), *(a6 + 32 * v136 + 8 * v96), v128 + _D31.f32[0]);
          v97.f32[0] = ((v97.f32[0] + (_D17.f32[0] * -0.90097)) + (_D21.f32[0] * _S24)) + (_D23.f32[0] * -0.22252);
          __asm
          {
            FMLA            S22, S27, V17.S[1]
            FMLA            S22, S24, V21.S[1]
            FMLA            S22, S25, V23.S[1]
          }

          _D17.f32[0] = ((-0.78183 * _D18.f32[0]) + (_D16.f32[0] * 0.43388)) + (_D19.f32[0] * 0.97493);
          __asm
          {
            FMLA            S18, S28, V16.S[1]
            FMLA            S18, S26, V19.S[1]
          }

          _D19.f32[0] = _D17.f32[0] + _D22.f32[0];
          _D19.f32[1] = -(_D17.f32[0] + _D22.f32[0]);
          _D17.f32[0] = _D22.f32[0] - _D17.f32[0];
          *(v57 + 8 * v96) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 16 * v136 + 8 * v96), _D19)), *(a6 + 16 * v136 + 8 * v96), v97.f32[0] - _D18.f32[0]);
          _D17.f32[1] = -_D17.f32[0];
          *(v66 + 8 * v96) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 24 * a2 - 24 + 8 * v96), _D17)), *(a6 + 24 * a2 - 24 + 8 * v96), v97.f32[0] + _D18.f32[0]);
          ++v96;
        }

        while (v136 != v96);
      }

      ++v44;
      v45 = (v45 + v133);
      v52 += v133;
      v46 += v133;
      v55 += v133;
      v58 += v133;
      v61 += v133;
      v67 += v133;
      v47 += v132;
      v63 += v132;
      v48 += v132;
      v64 += v132;
      v49 += v132;
      v57 += v132;
      v66 += v132;
      v6 = a3;
    }

    while (v134 + 1 != a3);
  }
}

void pocketfft::detail::cfftp<float>::pass11<false,pocketfft::detail::cmplx<float>>(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, uint64_t a5, uint64_t a6)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = 0;
      v212 = vdup_n_s32(0x3F68DDA4u);
      v213 = vdup_n_s32(0x3F7D64F0u);
      v211 = vdup_n_s32(0xBE903F40);
      v207 = vdup_n_s32(0xBF68DDA4);
      v7 = a4 + 5;
      v8 = vdup_n_s32(0x3F575C64u);
      v9 = vdup_n_s32(0x3E11BAFBu);
      v10 = vdup_n_s32(0x3ED4B147u);
      v12 = vdup_n_s32(0x3F75A155u);
      v11 = vdup_n_s32(0x3F27A4F4u);
      v13 = vdup_n_s32(0x3F0A6770u);
      v14 = vdup_n_s32(0xBF0A6770);
      v15 = vdup_n_s32(0x3F4178CEu);
      v16 = vdup_n_s32(0x3E903F40u);
      v17 = vdup_n_s32(0xBF7D64F0);
      do
      {
        v19 = v7[-5];
        v18 = v7[-4];
        v21 = v7[4];
        v20 = v7[5];
        v22 = vadd_f32(v18, v20);
        v23 = vsub_f32(v18, v20);
        v25 = v7[-3];
        v24 = v7[-2];
        v27 = v7[2];
        v26 = v7[3];
        v28 = vadd_f32(v25, v21);
        v29 = vsub_f32(v25, v21);
        v30 = vadd_f32(v24, v26);
        v31 = vsub_f32(v24, v26);
        v32 = v7[-1];
        v33 = v7[1];
        v34 = vadd_f32(v32, v27);
        v35 = vsub_f32(v32, v27);
        v36 = vadd_f32(*v7, v33);
        v37 = vsub_f32(*v7, v33);
        v38 = vsub_f32(vsub_f32(vsub_f32(vadd_f32(vadd_f32(v19, vmul_f32(v22, v8)), vmul_f32(v28, v10)), vmul_f32(v30, v9)), vmul_f32(v34, v11)), vmul_f32(v36, v12));
        *(a5 + 8 * v6) = vadd_f32(vadd_f32(vadd_f32(vadd_f32(vadd_f32(v19, v22), v28), v30), v34), v36);
        v39 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v29, v212), v13, v23), v213, v31), v15, v35), v16, v37));
        v40 = vsub_f32(v38, v39);
        v41 = vadd_f32(vsub_f32(vsub_f32(vsub_f32(vadd_f32(v19, vmul_f32(v22, v10)), vmul_f32(v28, v11)), vmul_f32(v30, v12)), vmul_f32(v34, v9)), vmul_f32(v36, v8));
        v42 = vadd_f32(v38, v39);
        v43 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v29, v15), v212, v23), v211, v31), v17, v35), v14, v37));
        v44 = vsub_f32(v41, v43);
        v45 = vadd_f32(v41, v43);
        v46 = __PAIR64__(v42.u32[1], v40.u32[0]);
        v47 = __PAIR64__(v45.u32[1], v44.u32[0]);
        v48 = vsub_f32(vadd_f32(vadd_f32(vsub_f32(vsub_f32(v19, vmul_f32(v22, v9)), vmul_f32(v28, v12)), vmul_f32(v30, v10)), vmul_f32(v34, v8)), vmul_f32(v36, v11));
        v42.i32[1] = v40.i32[1];
        v49 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v29, v211), v213, v23), v207, v31), v13, v35), v15, v37));
        v50 = vsub_f32(v48, v49);
        v51 = vadd_f32(v48, v49);
        v52 = __PAIR64__(v51.u32[1], v50.u32[0]);
        v45.i32[1] = v44.i32[1];
        v53 = vadd_f32(vsub_f32(vadd_f32(vsub_f32(vsub_f32(v19, vmul_f32(v22, v11)), vmul_f32(v28, v9)), vmul_f32(v30, v8)), vmul_f32(v34, v12)), vmul_f32(v36, v10));
        v51.i32[1] = v50.i32[1];
        *(a5 + 8 * a3 + 8 * v6) = v46;
        v54 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v29, v17), v15, v23), v13, v31), v16, v35), v207, v37));
        v55 = vsub_f32(v53, v54);
        v56 = vadd_f32(v53, v54);
        v57 = __PAIR64__(v56.u32[1], v55.u32[0]);
        *(a5 + 80 * a3 + 8 * v6) = v42;
        v56.i32[1] = v55.i32[1];
        *(a5 + 16 * a3 + 8 * v6) = v47;
        *(a5 + 72 * a3 + 8 * v6) = v45;
        *(a5 + 24 * a3 + 8 * v6) = v52;
        v58 = vsub_f32(vadd_f32(vsub_f32(vadd_f32(vsub_f32(v19, vmul_f32(v22, v12)), vmul_f32(v28, v8)), vmul_f32(v30, v11)), vmul_f32(v34, v10)), vmul_f32(v36, v9));
        *(a5 + (a3 << 6) + 8 * v6) = v51;
        *(a5 + 32 * a3 + 8 * v6) = v57;
        v59 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v29, v14), v16, v23), v15, v31), v207, v35), v213, v37));
        v60 = vsub_f32(v58, v59);
        v61 = vadd_f32(v58, v59);
        v62 = __PAIR64__(v61.u32[1], v60.u32[0]);
        *(a5 + 56 * a3 + 8 * v6) = v56;
        v61.i32[1] = v60.i32[1];
        *(a5 + 40 * a3 + 8 * v6) = v62;
        *(a5 + 48 * a3 + 8 * v6++) = v61;
        v7 += 11;
      }

      while (a3 != v6);
    }
  }

  else
  {
    v203 = a2 - 1;
    if (a3)
    {
      v63 = 0;
      v202 = 9 * a3;
      v64 = a4 + 1;
      v65 = &a4[9 * a2 + 1];
      v66 = &a4[3 * a2 + 1];
      v209 = &a4[5 * a2 + 1];
      v67 = &a4[6 * a2 + 1];
      v68 = a5 + 8;
      v69 = a5 + 8 + 8 * a3 * a2;
      v70 = a5 + 8 + 16 * a3 * a2;
      v71 = a5 + 8 + ((a3 * a2) << 6);
      v200 = a6 + 72 * a2 - 72;
      v201 = a6 + 8 * a2 - 8;
      v199 = 56 * a2 + a6 - 56;
      v198 = a6 + 24 * a2 - 24;
      v197 = a6 + 48 * a2 - 48;
      v196 = a6 + 40 * a2 - 40;
      v195 = 88 * a2;
      v72 = a5 + 8 + 72 * a3 * a2;
      v73 = a5 + 8 + 24 * a3 * a2;
      v74 = a5 + 8 + 56 * a3 * a2;
      v75 = a5 + 8 + 32 * a3 * a2;
      v193 = vdup_n_s32(0x3ED4B147u);
      v194 = vdup_n_s32(0x3F575C64u);
      v191 = vdup_n_s32(0x3F27A4F4u);
      v192 = vdup_n_s32(0x3E11BAFBu);
      v76 = vdup_n_s32(0x3F75A155u);
      v189 = vdup_n_s32(0x3F0A6770u);
      v190 = vdup_n_s32(0x3F68DDA4u);
      v77 = vdup_n_s32(0x3F4178CEu);
      v187 = vdup_n_s32(0x3E903F40u);
      v188 = vdup_n_s32(0x3F7D64F0u);
      v185 = vdup_n_s32(0xBF7D64F0);
      v186 = vdup_n_s32(0xBE903F40);
      v78 = a5 + 8 + 40 * a3 * a2;
      v183 = vdup_n_s32(0xBF68DDA4);
      v184 = vdup_n_s32(0xBF0A6770);
      v79 = a5 + 8 + 48 * a3 * a2;
      v80 = a5 + 8 + 80 * a3 * a2;
      v81 = &a4[10 * a2 + 1];
      v208 = &a4[7 * a2 + 1];
      v82 = &a4[a2 + 1];
      v83 = &a4[2 * a2 + 1];
      v182 = 8 * a2;
      v84 = &a4[8 * a2 + 1];
      v85 = &a4[4 * a2 + 1];
      do
      {
        v86 = 11 * v63 * a2;
        v87 = a4[v86];
        v88 = a4[a2 + v86];
        v89 = a4[(11 * v63 + 10) * a2];
        v90 = a4[(11 * v63 + 2) * a2];
        v91 = a4[(11 * v63 + 9) * a2];
        v92 = a4[(11 * v63 + 3) * a2];
        v93 = a4[(11 * v63 + 8) * a2];
        v94 = a4[(11 * v63 + 4) * a2];
        v95 = a4[(11 * v63 + 7) * a2];
        v96 = a4[(11 * v63 + 5) * a2];
        v97 = vadd_f32(v88, v89);
        v98 = vsub_f32(v88, v89);
        v99 = vadd_f32(v90, v91);
        v100 = vsub_f32(v90, v91);
        v101 = a4[(11 * v63 + 6) * a2];
        v102 = vadd_f32(v92, v93);
        v103 = vadd_f32(v94, v95);
        v104 = vadd_f32(v96, v101);
        *(a5 + 8 * v63 * a2) = vadd_f32(vadd_f32(vadd_f32(vadd_f32(vadd_f32(v87, v97), v99), v102), v103), v104);
        v105 = vsub_f32(v92, v93);
        v106 = vsub_f32(v94, v95);
        v107 = vsub_f32(v96, v101);
        v108 = vsub_f32(vsub_f32(vsub_f32(vadd_f32(vadd_f32(v87, vmul_f32(v97, v194)), vmul_f32(v99, v193)), vmul_f32(v102, v192)), vmul_f32(v103, v191)), vmul_f32(v104, v76));
        v109 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v100, v190), v189, v98), v188, v105), v77, v106), v187, v107));
        v110 = vsub_f32(v108, v109);
        v111 = vadd_f32(v108, v109);
        *(a5 + 8 * (v63 + a3) * a2) = __PAIR64__(v111.u32[1], v110.u32[0]);
        v111.i32[1] = v110.i32[1];
        *(a5 + 8 * (v63 + 10 * a3) * a2) = v111;
        v112 = vadd_f32(vsub_f32(vsub_f32(vsub_f32(vadd_f32(v87, vmul_f32(v97, v193)), vmul_f32(v99, v191)), vmul_f32(v102, v76)), vmul_f32(v103, v192)), vmul_f32(v104, v194));
        v113 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v100, v77), v190, v98), v186, v105), v185, v106), v184, v107));
        v114 = vsub_f32(v112, v113);
        v115 = vadd_f32(v112, v113);
        *(a5 + 8 * (v63 + 2 * a3) * a2) = __PAIR64__(v115.u32[1], v114.u32[0]);
        v115.i32[1] = v114.i32[1];
        *(a5 + 8 * (v63 + v202) * a2) = v115;
        v116 = vsub_f32(vadd_f32(vadd_f32(vsub_f32(vsub_f32(v87, vmul_f32(v97, v192)), vmul_f32(v99, v76)), vmul_f32(v102, v193)), vmul_f32(v103, v194)), vmul_f32(v104, v191));
        v117 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v100, v186), v188, v98), v183, v105), v189, v106), v77, v107));
        v118 = vsub_f32(v116, v117);
        v119 = vadd_f32(v116, v117);
        *(a5 + 8 * (v63 + 3 * a3) * a2) = __PAIR64__(v119.u32[1], v118.u32[0]);
        v119.i32[1] = v118.i32[1];
        *(a5 + 8 * (v63 + 8 * a3) * a2) = v119;
        v120 = vadd_f32(vsub_f32(vadd_f32(vsub_f32(vsub_f32(v87, vmul_f32(v97, v191)), vmul_f32(v99, v192)), vmul_f32(v102, v194)), vmul_f32(v103, v76)), vmul_f32(v104, v193));
        v121 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v100, v185), v77, v98), v189, v105), v187, v106), v183, v107));
        v122 = vsub_f32(v120, v121);
        v123 = vadd_f32(v120, v121);
        *(a5 + 8 * (v63 + 4 * a3) * a2) = __PAIR64__(v123.u32[1], v122.u32[0]);
        v123.i32[1] = v122.i32[1];
        *(a5 + 8 * (v63 + 7 * a3) * a2) = v123;
        v124 = vsub_f32(vadd_f32(vsub_f32(vadd_f32(vsub_f32(v87, vmul_f32(v97, v76)), vmul_f32(v99, v194)), vmul_f32(v102, v191)), vmul_f32(v103, v193)), vmul_f32(v104, v192));
        v125 = vrev64_s32(vmla_f32(vmla_f32(vmla_f32(vmla_f32(vmul_f32(v100, v184), v187, v98), v77, v105), v183, v106), v188, v107));
        v126 = vsub_f32(v124, v125);
        v127 = vadd_f32(v124, v125);
        *(a5 + 8 * (v63 + 5 * a3) * a2) = __PAIR64__(v127.u32[1], v126.u32[0]);
        v206 = v63;
        v127.i32[1] = v126.i32[1];
        *(a5 + 8 * (v63 + 6 * a3) * a2) = v127;
        if (a2)
        {
          v128 = 0;
          do
          {
            v129 = *(v82 + 8 * v128);
            v130 = *(v81 + 8 * v128);
            v131 = vadd_f32(v129, v130);
            _D22 = vsub_f32(v129, v130);
            v133 = *(v83 + 8 * v128);
            v134 = *(v65 + 8 * v128);
            v135 = vadd_f32(v133, v134);
            v136 = vsub_f32(v133, v134).f32[0];
            v137 = *(v66 + 8 * v128);
            v138 = *(v84 + 8 * v128);
            v139 = vadd_f32(v137, v138);
            _D24 = vsub_f32(v137, v138);
            v141 = *(v85 + 8 * v128);
            v142 = *(v208 + 8 * v128);
            v143 = vadd_f32(v141, v142);
            _D25 = vsub_f32(v141, v142);
            v145 = *(v209 + 8 * v128);
            _D6 = *(v67 + 8 * v128);
            v147 = vadd_f32(v145, _D6);
            _D26 = vsub_f32(v145, _D6);
            v149 = v64[v128];
            *(v68 + 8 * v128) = vadd_f32(vadd_f32(vadd_f32(vadd_f32(vadd_f32(v149, v131), v135), v139), v143), v147);
            v150 = ((((v149.f32[0] + (0.84125 * v131.f32[0])) + (0.41542 * v135.f32[0])) - (0.14231 * v139.f32[0])) - (0.65486 * v143.f32[0])) - (0.95949 * v147.f32[0]);
            v151 = ((((v149.f32[1] + vmuls_lane_f32(0.84125, v131, 1)) + vmuls_lane_f32(0.41542, v135, 1)) - vmuls_lane_f32(0.14231, v139, 1)) - vmuls_lane_f32(0.65486, v143, 1)) - vmuls_lane_f32(0.95949, v147, 1);
            _D6.i32[0] = 1063837092;
            _S19 = 1057646448;
            _S12 = 1065182448;
            _S14 = 1061255374;
            _S15 = 1049640768;
            v156 = ((((0.90963 * v136) + (_D22.f32[0] * 0.54064)) + (_D24.f32[0] * 0.98982)) + (_D25.f32[0] * 0.75575)) + (_D26.f32[0] * 0.28173);
            __asm
            {
              FMLA            S21, S19, V22.S[1]
              FMLA            S21, S12, V24.S[1]
              FMLA            S21, S14, V25.S[1]
              FMLA            S21, S15, V26.S[1]
            }

            v165.f32[0] = v156 + v151;
            v165.f32[1] = -(v156 + v151);
            *(v69 + 8 * v128) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 8 * v128), v165)), *(a6 + 8 * v128), v150 - _S21);
            v165.f32[0] = v151 - v156;
            v165.f32[1] = -(v151 - v156);
            *(v80 + 8 * v128) = vmla_n_f32(vrev64_s32(vmul_f32(*(v200 + 8 * v128), v165)), *(v200 + 8 * v128), v150 + _S21);
            v165.f32[0] = ((((v149.f32[0] + (0.41542 * v131.f32[0])) - (0.65486 * v135.f32[0])) - (0.95949 * v139.f32[0])) - (0.14231 * v143.f32[0])) + (0.84125 * v147.f32[0]);
            v166 = ((((v149.f32[1] + vmuls_lane_f32(0.41542, v131, 1)) - vmuls_lane_f32(0.65486, v135, 1)) - vmuls_lane_f32(0.95949, v139, 1)) - vmuls_lane_f32(0.14231, v143, 1)) + vmuls_lane_f32(0.84125, v147, 1);
            _S17 = -1097842880;
            _S7 = -1082301200;
            _S20 = -1089837200;
            v170 = ((((0.75575 * v136) + (_D22.f32[0] * 0.90963)) + (_D24.f32[0] * -0.28173)) + (_D25.f32[0] * -0.98982)) + (_D26.f32[0] * -0.54064);
            __asm
            {
              FMLA            S21, S6, V22.S[1]
              FMLA            S21, S17, V24.S[1]
              FMLA            S21, S7, V25.S[1]
              FMLA            S21, S20, V26.S[1]
            }

            _D3.f32[0] = v170 + v166;
            v176.f32[0] = v166 - v170;
            _D3.f32[1] = -_D3.f32[0];
            *(v70 + 8 * v128) = vmla_n_f32(vrev64_s32(vmul_f32(*(v201 + 8 * v128), _D3)), *(v201 + 8 * v128), v165.f32[0] - _S21);
            v176.f32[1] = -v176.f32[0];
            *(v72 + 8 * v128) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + (v203 << 6) + 8 * v128), v176)), *(a6 + (v203 << 6) + 8 * v128), v165.f32[0] + _S21);
            v165.f32[0] = ((((v149.f32[0] - (0.14231 * v131.f32[0])) - (0.95949 * v135.f32[0])) + (0.41542 * v139.f32[0])) + (0.84125 * v143.f32[0])) - (0.65486 * v147.f32[0]);
            v176.f32[0] = ((((v149.f32[1] - vmuls_lane_f32(0.14231, v131, 1)) - vmuls_lane_f32(0.95949, v135, 1)) + vmuls_lane_f32(0.41542, v139, 1)) + vmuls_lane_f32(0.84125, v143, 1)) - vmuls_lane_f32(0.65486, v147, 1);
            _D6.i32[0] = -1083646556;
            v177 = ((((-0.28173 * v136) + (_D22.f32[0] * 0.98982)) + (_D24.f32[0] * -0.90963)) + (_D25.f32[0] * 0.54064)) + (_D26.f32[0] * 0.75575);
            __asm
            {
              FMLA            S3, S12, V22.S[1]
              FMLA            S3, S6, V24.S[1]
              FMLA            S3, S19, V25.S[1]
              FMLA            S3, S14, V26.S[1]
            }

            v178.f32[0] = v177 + v176.f32[0];
            v178.f32[1] = -(v177 + v176.f32[0]);
            v176.f32[0] = v176.f32[0] - v177;
            *(v73 + 8 * v128) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 16 * v203 + 8 * v128), v178)), *(a6 + 16 * v203 + 8 * v128), v165.f32[0] - _D3.f32[0]);
            v176.f32[1] = -v176.f32[0];
            *(v71 + 8 * v128) = vmla_n_f32(vrev64_s32(vmul_f32(*(v199 + 8 * v128), v176)), *(v199 + 8 * v128), v165.f32[0] + _D3.f32[0]);
            v165.f32[0] = ((((v149.f32[0] - (0.65486 * v131.f32[0])) - (0.14231 * v135.f32[0])) + (0.84125 * v139.f32[0])) - (0.95949 * v143.f32[0])) + (0.41542 * v147.f32[0]);
            v176.f32[0] = ((((v149.f32[1] - vmuls_lane_f32(0.65486, v131, 1)) - vmuls_lane_f32(0.14231, v135, 1)) + vmuls_lane_f32(0.84125, v139, 1)) - vmuls_lane_f32(0.95949, v143, 1)) + vmuls_lane_f32(0.41542, v147, 1);
            v179 = ((((-0.98982 * v136) + (_D22.f32[0] * 0.75575)) + (_D24.f32[0] * 0.54064)) + (_D25.f32[0] * 0.28173)) + (_D26.f32[0] * -0.90963);
            __asm
            {
              FMLA            S3, S14, V22.S[1]
              FMLA            S3, S19, V24.S[1]
              FMLA            S3, S15, V25.S[1]
              FMLA            S3, S6, V26.S[1]
            }

            v180.f32[0] = v179 + v176.f32[0];
            v180.f32[1] = -(v179 + v176.f32[0]);
            v176.f32[0] = v176.f32[0] - v179;
            *(v75 + 8 * v128) = vmla_n_f32(vrev64_s32(vmul_f32(*(v198 + 8 * v128), v180)), *(v198 + 8 * v128), v165.f32[0] - _D3.f32[0]);
            v176.f32[1] = -v176.f32[0];
            *(v74 + 8 * v128) = vmla_n_f32(vrev64_s32(vmul_f32(*(v197 + 8 * v128), v176)), *(v197 + 8 * v128), v165.f32[0] + _D3.f32[0]);
            v165.f32[0] = ((((v149.f32[0] - (0.95949 * v131.f32[0])) + (0.84125 * v135.f32[0])) - (0.65486 * v139.f32[0])) + (0.41542 * v143.f32[0])) - (0.14231 * v147.f32[0]);
            v176.f32[0] = ((((v149.f32[1] - vmuls_lane_f32(0.95949, v131, 1)) + vmuls_lane_f32(0.84125, v135, 1)) - vmuls_lane_f32(0.65486, v139, 1)) + vmuls_lane_f32(0.41542, v143, 1)) - vmuls_lane_f32(0.14231, v147, 1);
            v181 = ((((-0.54064 * v136) + (_D22.f32[0] * 0.28173)) + (_D24.f32[0] * 0.75575)) + (_D25.f32[0] * -0.90963)) + (_D26.f32[0] * 0.98982);
            __asm
            {
              FMLA            S3, S15, V22.S[1]
              FMLA            S3, S14, V24.S[1]
              FMLA            S3, S6, V25.S[1]
              FMLA            S3, S12, V26.S[1]
            }

            _D6.f32[0] = v181 + v176.f32[0];
            _D6.f32[1] = -(v181 + v176.f32[0]);
            v176.f32[0] = v176.f32[0] - v181;
            *(v78 + 8 * v128) = vmla_n_f32(vrev64_s32(vmul_f32(*(a6 + 32 * v203 + 8 * v128), _D6)), *(a6 + 32 * v203 + 8 * v128), v165.f32[0] - _D3.f32[0]);
            v176.f32[1] = -v176.f32[0];
            *(v79 + 8 * v128) = vmla_n_f32(vrev64_s32(vmul_f32(*(v196 + 8 * v128), v176)), *(v196 + 8 * v128), v165.f32[0] + _D3.f32[0]);
            ++v128;
          }

          while (v203 != v128);
        }

        ++v63;
        v81 += v195;
        v65 += v195;
        v208 += v195;
        v209 += v195;
        v67 += v195;
        v68 += v182;
        v69 += v182;
        v80 += v182;
        v70 += v182;
        v72 += v182;
        v73 += v182;
        v71 += v182;
        v75 += v182;
        v74 += v182;
        v78 += v182;
        v79 += v182;
        v64 = (v64 + v195);
        v82 += v195;
        v83 += v195;
        v66 += v195;
        v84 += v195;
        v85 += v195;
      }

      while (v206 + 1 != a3);
    }
  }
}

void pocketfft::detail::cfftp<float>::passg<false,pocketfft::detail::cmplx<float>>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, float32x2_t *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v13 = pocketfft::detail::arr<pocketfft::detail::cmplx<float>>::ralloc(a3);
  v14 = v13;
  *v13 = 1065353216;
  if (a3 >= 2)
  {
    v15 = a3 - 1;
    v16 = (a8 + 8);
    v17 = v13 + 1;
    do
    {
      v18 = *v16++;
      *v17++ = v18;
      --v15;
    }

    while (v15);
  }

  v19 = a3 + 1;
  v20 = 8 * a2;
  if (a4)
  {
    v21 = a4;
    v22 = a6;
    v23 = a5;
    do
    {
      if (a2)
      {
        memcpy(v22, v23, 8 * a2);
      }

      v23 += a3 * a2;
      v22 += v20;
      --v21;
    }

    while (v21);
  }

  v24 = a4 * a2;
  v25 = v19 >> 1;
  v134 = a3 - 1;
  if (v19 >= 4)
  {
    v26 = &a6[8 * v24];
    v27 = &a6[8 * v24 * v134];
    v28 = &a5[a2];
    v29 = 8 * a3 * a2;
    v30 = &a5[a2 * v134];
    v31 = 1;
    do
    {
      if (a4)
      {
        v32 = 0;
        v33 = v30;
        v34 = v28;
        v35 = v27;
        v36 = v26;
        do
        {
          v37 = v33;
          v38 = v34;
          v39 = v35;
          v40 = v36;
          for (i = a2; i; --i)
          {
            v42 = *v38++;
            v43 = v42;
            v44 = *v37++;
            *v40++ = vadd_f32(v43, v44);
            *v39++ = vsub_f32(v43, v44);
          }

          ++v32;
          v36 = (v36 + v20);
          v35 = (v35 + v20);
          v34 = (v34 + v29);
          v33 = (v33 + v29);
        }

        while (v32 != a4);
      }

      ++v31;
      v26 += v24;
      v27 -= v24;
      v28 = (v28 + v20);
      v30 -= a2;
    }

    while (v31 != v25);
  }

  if (a4)
  {
    v45 = 0;
    v46 = &a6[8 * v24];
    do
    {
      if (a2)
      {
        v47 = 0;
        v48 = v46;
        do
        {
          v49 = *&a6[8 * v45 * a2 + 8 * v47];
          v50 = v48;
          v51 = v25 - 1;
          if (v19 >= 4)
          {
            do
            {
              v49 = vadd_f32(v49, *v50);
              v50 += v24;
              --v51;
            }

            while (v51);
          }

          a5[v45 * a2 + v47++] = v49;
          ++v48;
        }

        while (v47 != a2);
      }

      ++v45;
      v46 = (v46 + v20);
    }

    while (v45 != a4);
  }

  if (v19 >= 4)
  {
    v52 = 16 * v24;
    v53 = v25 - 1;
    v54 = 8 * v24;
    v55 = &a5[v24 * v134];
    v56 = 1;
    v57 = &a5[v24];
    do
    {
      if (v24)
      {
        v58 = 0;
        v59 = &v14[8 * v56];
        v60 = vld1_dup_f32(v59++);
        v61 = &v14[16 * v56];
        v63.f32[0] = *v59;
        v62 = vld1_dup_f32(v61++);
        v64.f32[0] = *v61;
        v63.f32[1] = -*v59;
        v64.f32[1] = -*v61;
        do
        {
          v57[v58] = vmla_f32(vmla_f32(*&a6[8 * v58], *&a6[8 * v24 + 8 * v58], v60), *&a6[16 * v24 + 8 * v58], v62);
          v55[v58] = vrev64_s32(vmla_f32(vmul_f32(*&a6[8 * v24 * (a3 - 2) + 8 * v58], v64), *&a6[8 * v24 * v134 + 8 * v58], v63));
          ++v58;
        }

        while (v24 != v58);
      }

      v65 = 2 * v56;
      if (v53 < 4)
      {
        v69 = a3 - 3;
        v71 = 3;
      }

      else
      {
        v66 = &a6[8 * v24 * (a3 - 4)];
        v68 = &a6[8 * v24 * (a3 - 3)];
        v67 = &a6[32 * v24];
        v70 = &a6[24 * v24];
        v69 = a3 - 3;
        v71 = 3;
        do
        {
          v72 = v65 + v56;
          if (v65 + v56 <= a3)
          {
            v73 = 0;
          }

          else
          {
            v73 = a3;
          }

          v74 = v72 - v73;
          v75 = v72 - v73 + v56;
          if (v75 <= a3)
          {
            v76 = 0;
          }

          else
          {
            v76 = a3;
          }

          v65 = v75 - v76;
          if (v24)
          {
            v77 = 0;
            v78 = &v14[8 * v74];
            v79 = vld1_dup_f32(v78++);
            v80 = vld1_dup_f32(v78);
            v81 = &v14[8 * v65];
            v82 = vld1_dup_f32(v81++);
            v83 = vld1_dup_f32(v81);
            do
            {
              v57[v77] = vadd_f32(v57[v77], vmla_f32(vmul_f32(v82, *&v67[8 * v77]), v79, *&v70[8 * v77]));
              v84 = vrev64_s32(vmla_f32(vmul_f32(v83, *&v66[8 * v77]), v80, *&v68[8 * v77]));
              v85 = v55[v77];
              v86.i32[0] = vsub_f32(v85, v84).u32[0];
              v86.i32[1] = vadd_f32(v85, v84).i32[1];
              v55[v77++] = v86;
            }

            while (v24 != v77);
          }

          v71 += 2;
          v69 -= 2;
          v70 += v52;
          v67 += v52;
          v68 -= 16 * v24;
          v66 -= 16 * v24;
        }

        while (v71 < v53);
      }

      if (v71 < v25)
      {
        v87 = &a6[v54 * v71];
        v88 = &a6[v54 * v69 + 4];
        do
        {
          v89 = v65 + v56;
          if (v65 + v56 <= a3)
          {
            v90 = 0;
          }

          else
          {
            v90 = a3;
          }

          v65 = v89 - v90;
          if (v24)
          {
            v91 = 0;
            v92 = &v14[8 * v65];
            v93 = v92[1];
            v94 = vld1_dup_f32(v92);
            v95 = a4 * a2;
            do
            {
              v57[v91] = vmla_f32(v57[v91], v94, *&v87[v91 * 8]);
              v96 = &v55[v91];
              v97 = v55[v91].f32[1] + (*(v88 + v91 * 8 - 4) * v93);
              *v96 = v55[v91].f32[0] - (*(v88 + v91 * 8) * v93);
              v96[1] = v97;
              ++v91;
              --v95;
            }

            while (v95);
          }

          ++v71;
          v87 += v54;
          v88 -= 8 * v24;
        }

        while (v71 != v25);
      }

      ++v56;
      v57 = (v57 + v54);
      v55 -= v24;
    }

    while (v56 != v25);
    if (a2 == 1)
    {
      v98 = &a5[v24 * v134] + 4;
      v99 = &a5[v24] + 4;
      v100 = 1;
      do
      {
        v101 = v99;
        v102 = v98;
        for (j = a4; j; --j)
        {
          v104 = *(v101 - 1);
          v105 = *v101;
          v106 = *(v102 - 1);
          v107 = *v102;
          v108 = *v101 + *v102;
          *(v101 - 1) = v104 + v106;
          *v101 = v108;
          *(v102 - 1) = v104 - v106;
          *v102 = v105 - v107;
          v102 += 2;
          v101 += 2;
        }

        ++v100;
        v98 -= 8 * v24;
        v99 += v54;
      }

      while (v100 != v25);
    }

    else
    {
      v109 = 1;
      v110 = a3 - 1;
      v111 = a7;
      v112 = &a5[v24];
      do
      {
        if (a4)
        {
          v113 = 0;
          v114 = v110 * a4;
          v115 = v110 - 1;
          v116 = a7 + 8 * (a2 - 1) * (v110 - 1);
          v117 = v112;
          v118 = a5 + v54 * v110;
          do
          {
            v119 = &a5[(v113 + v109 * a4) * a2];
            v120 = *v119;
            v121 = v119[1];
            v122 = &a5[(v113 + v114) * a2];
            v123 = *v122;
            v124 = v122[1];
            *v119 = *v119 + *v122;
            v119[1] = v121 + v124;
            *v122 = v120 - v123;
            v122[1] = v121 - v124;
            if (a2)
            {
              v125 = 0;
              v126 = a2 - 1;
              do
              {
                v127 = v117[v125 / 8 + 1].f32[0];
                v128 = v117[v125 / 8 + 1].f32[1];
                v129 = *&v118[v125 + 8];
                v130 = *&v118[v125 + 12];
                v131.f32[0] = v128 + v130;
                v132.f32[0] = v128 - v130;
                v131.f32[1] = -v131.f32[0];
                v117[v125 / 8 + 1] = vmla_n_f32(vrev64_s32(vmul_f32(*(v111 + v125), v131)), *(v111 + v125), v127 + v129);
                v132.f32[1] = -v132.f32[0];
                *&v118[v125 + 8] = vmla_n_f32(vrev64_s32(vmul_f32(*(v116 + v125), v132)), *(v116 + v125), v127 - v129);
                v125 += 8;
                --v126;
              }

              while (v126);
            }

            ++v113;
            v117 = (v117 + v20);
            v118 += v20;
          }

          while (v113 != a4);
        }

        else
        {
          v115 = v110 - 1;
        }

        ++v109;
        v111 += v20 - 8;
        v112 = (v112 + v54);
        v110 = v115;
      }

      while (v109 != v25);
    }
  }

  free(v14);
}

uint64_t *std::unique_ptr<pocketfft::detail::fftblue<float>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    free(*(v2 + 64));
    v3 = *(v2 + 40);
    if (v3)
    {
      *(v2 + 48) = v3;
      operator delete(v3);
    }

    free(*(v2 + 24));

    JUMPOUT(0x25F851760);
  }

  return result;
}

uint64_t pocketfft::detail::threading::max_threads(pocketfft::detail::threading *this)
{
  if ((atomic_load_explicit(&qword_27FA06038, memory_order_acquire) & 1) == 0)
  {
    pocketfft::detail::threading::max_threads();
  }

  return _MergedGlobals_3;
}

void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1}::operator()(uint64_t a1)
{
  pocketfft::detail::alloc_tmp<float>(*a1, **(a1 + 8), 8, &v10);
  v2 = **(a1 + 16);
  v3 = 24;
  if (!v2)
  {
    v3 = 0;
  }

  v4 = *(a1 + v3);
  pocketfft::detail::multi_iter<4ul>::multi_iter(__p, v4, *(a1 + 24), *(**(a1 + 32) + 8 * v2));
  while (v9 > 3)
  {
    pocketfft::detail::multi_iter<4ul>::advance(__p, 4uLL);
    _ZNK9pocketfft6detail7ExecC2CclIfNS0_5cmplxIDv4_fEELm4EEEvRKNS0_10multi_iterIXT1_EEERKNS0_6cndarrINS3_IT_EEEERNS0_5ndarrISC_EEPT0_RKNS0_11pocketfft_cISB_EESB_(*(a1 + 40), __p, v4, *(a1 + 24), v10, **(a1 + 48), **(a1 + 56));
  }

  while (v9)
  {
    pocketfft::detail::multi_iter<4ul>::advance(__p, 1uLL);
    if (**(a1 + 64) == 1 && __p[16] == 8)
    {
      v7 = *(a1 + 24);
      v6 = (__p[12] + *(v7 + 48));
    }

    else
    {
      v6 = v10;
      v7 = *(a1 + 24);
    }

    pocketfft::detail::ExecC2C::operator()<float,pocketfft::detail::cmplx<float>,4ul>(*(a1 + 40), __p, v4, v7, v6, **(a1 + 48), **(a1 + 56));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  free(v10);
}

void pocketfft::detail::threading::thread_pool::submit(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 120));
  v4 = atomic_load((a1 + 208));
  if (v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Work item submitted after shutdown");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  atomic_fetch_add((a1 + 216), 1uLL);
  v6 = *(a1 + 184);
  v5 = *(a1 + 192);
  if (v6 == v5)
  {
LABEL_6:
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v11, a2);
    pocketfft::detail::threading::concurrent_queue<std::function<void ()(void)>>::push(a1, v11);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11);
  }

  else
  {
    v7 = v6 + 128;
    while ((atomic_exchange((v7 - 8), 1u) & 1) != 0)
    {
      v8 = v7 + 64;
      v7 += 192;
      if (v8 == v5)
      {
        goto LABEL_6;
      }
    }

    atomic_fetch_add((a1 + 216), 0xFFFFFFFFFFFFFFFFLL);
    std::mutex::lock((v7 - 72));
    std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v7, a2);
    std::mutex::unlock((v7 - 72));
    std::condition_variable::notify_one((v7 - 120));
  }

  std::mutex::unlock((a1 + 120));
  v9 = *MEMORY[0x277D85DE8];
}

void sub_25A5B3300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pocketfft::detail::threading::latch::wait(pocketfft::detail::threading::latch *this)
{
  v3.__m_ = (this + 8);
  v3.__owns_ = 1;
  std::mutex::lock((this + 8));
  while (atomic_load(this))
  {
    std::condition_variable::wait((this + 72), &v3);
  }

  if (v3.__owns_)
  {
    std::mutex::unlock(v3.__m_);
  }
}

void *pocketfft::detail::alloc_tmp<float>@<X0>(uint64_t **a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = 1;
  while (v5 != a1[1])
  {
    v7 = *v5++;
    v6 *= v7;
  }

  v8 = (a2 << (2 * (v6 / a2 > 3))) * a3;
  if (v8)
  {
    result = malloc_type_aligned_alloc(0x40uLL, (v8 + 63) & 0xFFFFFFFFFFFFFFC0, 0x900E4C1uLL);
    if (!result)
    {
      exception = __cxa_allocate_exception(8uLL);
      v11 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v11, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  else
  {
    result = 0;
  }

  *a4 = result;
  a4[1] = v8;
  return result;
}

uint64_t *pocketfft::detail::multi_iter<4ul>::advance(uint64_t *result, unint64_t a2)
{
  v2 = result[18];
  if (v2 < a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "underrun");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = result;
  if (a2)
  {
    v5 = result + 12;
    v6 = a2;
    do
    {
      *(v5 - 6) = v4[5];
      *v5++ = v4[11];
      result = pocketfft::detail::multi_iter<4ul>::advance_i(v4);
      --v6;
    }

    while (v6);
    v2 = v4[18];
  }

  v4[18] = v2 - a2;
  return result;
}

void _ZNK9pocketfft6detail7ExecC2CclIfNS0_5cmplxIDv4_fEELm4EEEvRKNS0_10multi_iterIXT1_EEERKNS0_6cndarrINS3_IT_EEEERNS0_5ndarrISC_EEPT0_RKNS0_11pocketfft_cISB_EESB_(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, uint64_t a6, float a7)
{
  v10 = *(**(a2 + 24) + 8 * *(a2 + 136));
  if (v10)
  {
    v11 = 0;
    v12 = *(a2 + 80);
    v13 = *(a3 + 48);
    do
    {
      v14 = 0;
      v15 = &a5[2 * v11];
      v16 = *v15;
      v17 = v15[1];
      do
      {
        v18 = (v13 + v11 * v12 + *(a2 + 48 + 8 * v14));
        v19 = *v18;
        v33 = v16;
        *(&v33 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) = v19;
        v16 = v33;
        v20 = v18[1];
        v34 = v17;
        *(&v34 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) = v20;
        v17 = v34;
        ++v14;
      }

      while (v14 != 4);
      *v15 = v16;
      v15[1] = v17;
      ++v11;
    }

    while (v11 != v10);
  }

  _ZNK9pocketfft6detail11pocketfft_cIfE4execIDv4_fEEvPNS0_5cmplxIT_EEfb(a6, a5, *a1, a7);
  v21 = *(**(a2 + 32) + 8 * *(a2 + 136));
  if (v21)
  {
    v22 = 0;
    v23 = *(a2 + 128);
    v24 = *(a4 + 48);
    do
    {
      v25 = 0;
      v26 = &a5[2 * v22];
      v27 = *v26;
      v28 = v26[1];
      do
      {
        v29 = *(a2 + 96 + 8 * v25);
        v31 = v27;
        LODWORD(v30) = *(&v31 & 0xFFFFFFFFFFFFFFF3 | (4 * (v25 & 3)));
        v32 = v28;
        HIDWORD(v30) = *(&v32 & 0xFFFFFFFFFFFFFFF3 | (4 * (v25 & 3)));
        *(v24 + v22 * v23 + v29) = v30;
        ++v25;
      }

      while (v25 != 4);
      ++v22;
    }

    while (v22 != v21);
  }
}

uint64_t pocketfft::detail::ExecC2C::operator()<float,pocketfft::detail::cmplx<float>,4ul>(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, float32x2_t *a5, void **a6, float a7)
{
  pocketfft::detail::copy_input<pocketfft::detail::cmplx<float>,4ul>(a2, a3, a5);
  pocketfft::detail::pocketfft_c<float>::exec<float>(a6, a5, *a1, a7);

  return pocketfft::detail::copy_output<pocketfft::detail::cmplx<float>,4ul>(a2, a5, a4);
}

uint64_t *pocketfft::detail::multi_iter<4ul>::multi_iter(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v8 = std::vector<unsigned long>::vector[abi:ne200100](a1, a2[1] - *a2);
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = 0;
  v8[10] = a2[3][a4];
  v8[11] = 0;
  v8[16] = *(*(a3 + 24) + 8 * a4);
  v8[17] = a4;
  v9 = a2[1];
  v10 = 1;
  if (*a2 != v9)
  {
    v11 = *a2;
    do
    {
      v12 = *v11++;
      v10 *= v12;
    }

    while (v11 != v9);
  }

  a1[18] = v10 / (*a2)[a4];
  v13 = pocketfft::detail::threading::num_threads(void)::num_threads_();
  if (*v13 != 1)
  {
    if (!*v13)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "can't run with zero threads");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v19 = *pocketfft::detail::threading::thread_id(void)::thread_id_();
    if (v19 >= v18)
    {
      v32 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v32, "impossible share requested");
      __cxa_throw(v32, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v20 = v17 / v18;
    v21 = v17 % v18;
    if (v19 >= v17 % v18)
    {
      v22 = v17 / v18;
    }

    else
    {
      v22 = v20 + 1;
    }

    v23 = *a1;
    v24 = a1[1];
    v25 = v24 - *a1;
    if (v24 != *a1)
    {
      v26 = 0;
      v27 = v25 >> 3;
      if (v19 < v21)
      {
        v21 = v19;
      }

      v28 = v21 + v20 * v19;
      if (v27 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = v27;
      }

      do
      {
        if (v26 != a1[17])
        {
          v17 /= *(v16 + 8 * v26);
          *(v23 + 8 * v26) += v28 / v17;
          a1[5] += *(v14 + 8 * v26) * (v28 / v17);
          a1[11] += *(v15 + 8 * v26) * (v28 / v17);
          v28 %= v17;
        }

        ++v26;
      }

      while (v29 != v26);
    }

    a1[18] = v22;
  }

  return a1;
}

void sub_25A5B38CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pocketfft::detail::multi_iter<4ul>::advance_i(uint64_t *result)
{
  v1 = *result;
  v2 = result[1] - *result;
  if ((v2 >> 3) >= 1)
  {
    v3 = ((v2 >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      if (v3 != result[17])
      {
        v5 = result[3];
        v4 = result[4];
        v6 = v5[3];
        result[5] += *(v6 + 8 * v3);
        v7 = v4[3];
        result[11] += *(v7 + 8 * v3);
        v8 = *(v1 + 8 * v3) + 1;
        *(v1 + 8 * v3) = v8;
        v9 = *v5;
        if (v8 < *(v9 + 8 * v3))
        {
          return result;
        }

        *(v1 + 8 * v3) = 0;
        result[5] -= *(v6 + 8 * v3) * *(v9 + 8 * v3);
        result[11] -= *(v7 + 8 * v3) * *(*v4 + 8 * v3);
      }

      v10 = v3-- + 1;
    }

    while (v10 > 1);
  }

  return result;
}

void _ZNK9pocketfft6detail11pocketfft_cIfE4execIDv4_fEEvPNS0_5cmplxIT_EEfb(uint64_t a1, float32x4_t *a2, int a3, float a4)
{
  v5 = *a1;
  if (v5)
  {
    if (a3)
    {
      _ZNK9pocketfft6detail5cfftpIfE8pass_allILb1ENS0_5cmplxIDv4_fEEEEvPT0_f(v5, a2, a4);
    }

    else
    {
      _ZNK9pocketfft6detail5cfftpIfE8pass_allILb0ENS0_5cmplxIDv4_fEEEEvPT0_f(v5, a2, a4);
    }
  }

  else
  {
    v6 = *(a1 + 8);
    if (a3)
    {
      _ZNK9pocketfft6detail7fftblueIfE3fftILb1EDv4_fEEvPNS0_5cmplxIT0_EEf(v6, a2, a4);
    }

    else
    {
      _ZNK9pocketfft6detail7fftblueIfE3fftILb0EDv4_fEEvPNS0_5cmplxIT0_EEf(v6, a2, a4);
    }
  }
}

void _ZNK9pocketfft6detail5cfftpIfE8pass_allILb1ENS0_5cmplxIDv4_fEEEEvPT0_f(uint64_t *a1, float32x4_t *a2, float a3)
{
  if (*a1 == 1)
  {
    v4 = vmulq_n_f32(a2[1], a3);
    *a2 = vmulq_n_f32(*a2, a3);
    a2[1] = v4;
    return;
  }

  _ZN9pocketfft6detail3arrINS0_5cmplxIDv4_fEEEC1Em(&v25, *a1);
  v6 = a1[3];
  if (a1[4] == v6)
  {
    goto LABEL_29;
  }

  v7 = 0;
  v8 = 0;
  v9 = v25;
  v10 = 1;
  v11 = a2;
  do
  {
    v12 = *(v6 + v7);
    v13 = v12 * v10;
    v14 = *a1 / (v12 * v10);
    if (v12 <= 4)
    {
      if (v12 == 2)
      {
        _ZNK9pocketfft6detail5cfftpIfE5pass2ILb1ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(a1, v14, v10, v11, v9, *(v6 + v7 + 8));
        v15 = v11;
        v11 = v9;
        goto LABEL_22;
      }

      if (v12 != 3)
      {
        if (v12 == 4)
        {
          _ZNK9pocketfft6detail5cfftpIfE5pass4ILb1ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(a1, v14, v10, v11, v9, *(v6 + v7 + 8));
          v15 = v11;
          v11 = v9;
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      _ZNK9pocketfft6detail5cfftpIfE5pass3ILb1ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(a1, v14, v10, v11, v9, *(v6 + v7 + 8));
      v15 = v11;
      v11 = v9;
    }

    else if (v12 > 7)
    {
      if (v12 != 8)
      {
        if (v12 == 11)
        {
          _ZNK9pocketfft6detail5cfftpIfE6pass11ILb1ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(a1, v14, v10, v11, v9, *(v6 + v7 + 8));
          v15 = v11;
          v11 = v9;
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      _ZNK9pocketfft6detail5cfftpIfE5pass8ILb1ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(a1, v14, v10, v11, v9, *(v6 + v7 + 8));
      v15 = v11;
      v11 = v9;
    }

    else
    {
      if (v12 != 5)
      {
        if (v12 == 7)
        {
          _ZNK9pocketfft6detail5cfftpIfE5pass7ILb1ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(a1, v14, v10, v11, v9, *(v6 + v7 + 8));
          v15 = v11;
          v11 = v9;
          goto LABEL_22;
        }

LABEL_18:
        _ZNK9pocketfft6detail5cfftpIfE5passgILb1ENS0_5cmplxIDv4_fEEEEvmmmPT0_S8_PKNS4_IfEESB_(a1, v14, v12, v10, v11, v9, *(v6 + v7 + 8), *(v6 + v7 + 16));
        v15 = v9;
        goto LABEL_22;
      }

      _ZNK9pocketfft6detail5cfftpIfE5pass5ILb1ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(a1, v14, v10, v11, v9, *(v6 + v7 + 8));
      v15 = v11;
      v11 = v9;
    }

LABEL_22:
    ++v8;
    v6 = a1[3];
    v7 += 24;
    v10 = v13;
    v9 = v15;
  }

  while (v8 < 0xAAAAAAAAAAAAAAABLL * ((a1[4] - v6) >> 3));
  if (v11 != a2)
  {
    v16 = *a1;
    if (a3 == 1.0)
    {
      if (v16)
      {
        memmove(a2, v11, 32 * v16);
      }
    }

    else if (v16)
    {
      v17 = 0;
      v18 = a2 + 1;
      v19 = (v25 + 16);
      do
      {
        v20 = vmulq_n_f32(*v19, a3);
        v18[-1] = vmulq_n_f32(v19[-1], a3);
        *v18 = v20;
        ++v17;
        v18 += 2;
        v19 += 2;
      }

      while (v17 < *a1);
    }

    goto LABEL_36;
  }

LABEL_29:
  if (a3 != 1.0 && *a1)
  {
    v21 = 0;
    v22 = a2 + 1;
    do
    {
      v23 = vmulq_n_f32(*v22, a3);
      v22[-1] = vmulq_n_f32(v22[-1], a3);
      *v22 = v23;
      ++v21;
      v22 += 2;
    }

    while (v21 < *a1);
  }

LABEL_36:
  free(v25);
}

void _ZNK9pocketfft6detail5cfftpIfE8pass_allILb0ENS0_5cmplxIDv4_fEEEEvPT0_f(uint64_t *a1, float32x4_t *a2, float a3)
{
  if (*a1 == 1)
  {
    v4 = vmulq_n_f32(a2[1], a3);
    *a2 = vmulq_n_f32(*a2, a3);
    a2[1] = v4;
    return;
  }

  _ZN9pocketfft6detail3arrINS0_5cmplxIDv4_fEEEC1Em(&v25, *a1);
  v6 = a1[3];
  if (a1[4] == v6)
  {
    goto LABEL_29;
  }

  v7 = 0;
  v8 = 0;
  v9 = v25;
  v10 = 1;
  v11 = a2;
  do
  {
    v12 = *(v6 + v7);
    v13 = v12 * v10;
    v14 = *a1 / (v12 * v10);
    if (v12 <= 4)
    {
      if (v12 == 2)
      {
        _ZNK9pocketfft6detail5cfftpIfE5pass2ILb0ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(a1, v14, v10, v11, v9, *(v6 + v7 + 8));
        v15 = v11;
        v11 = v9;
        goto LABEL_22;
      }

      if (v12 != 3)
      {
        if (v12 == 4)
        {
          _ZNK9pocketfft6detail5cfftpIfE5pass4ILb0ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(a1, v14, v10, v11, v9, *(v6 + v7 + 8));
          v15 = v11;
          v11 = v9;
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      _ZNK9pocketfft6detail5cfftpIfE5pass3ILb0ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(a1, v14, v10, v11, v9, *(v6 + v7 + 8));
      v15 = v11;
      v11 = v9;
    }

    else if (v12 > 7)
    {
      if (v12 != 8)
      {
        if (v12 == 11)
        {
          _ZNK9pocketfft6detail5cfftpIfE6pass11ILb0ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(a1, v14, v10, v11, v9, *(v6 + v7 + 8));
          v15 = v11;
          v11 = v9;
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      _ZNK9pocketfft6detail5cfftpIfE5pass8ILb0ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(a1, v14, v10, v11, v9, *(v6 + v7 + 8));
      v15 = v11;
      v11 = v9;
    }

    else
    {
      if (v12 != 5)
      {
        if (v12 == 7)
        {
          _ZNK9pocketfft6detail5cfftpIfE5pass7ILb0ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(a1, v14, v10, v11, v9, *(v6 + v7 + 8));
          v15 = v11;
          v11 = v9;
          goto LABEL_22;
        }

LABEL_18:
        _ZNK9pocketfft6detail5cfftpIfE5passgILb0ENS0_5cmplxIDv4_fEEEEvmmmPT0_S8_PKNS4_IfEESB_(a1, v14, v12, v10, v11, v9, *(v6 + v7 + 8), *(v6 + v7 + 16));
        v15 = v9;
        goto LABEL_22;
      }

      _ZNK9pocketfft6detail5cfftpIfE5pass5ILb0ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(a1, v14, v10, v11, v9, *(v6 + v7 + 8));
      v15 = v11;
      v11 = v9;
    }

LABEL_22:
    ++v8;
    v6 = a1[3];
    v7 += 24;
    v10 = v13;
    v9 = v15;
  }

  while (v8 < 0xAAAAAAAAAAAAAAABLL * ((a1[4] - v6) >> 3));
  if (v11 != a2)
  {
    v16 = *a1;
    if (a3 == 1.0)
    {
      if (v16)
      {
        memmove(a2, v11, 32 * v16);
      }
    }

    else if (v16)
    {
      v17 = 0;
      v18 = a2 + 1;
      v19 = (v25 + 16);
      do
      {
        v20 = vmulq_n_f32(*v19, a3);
        v18[-1] = vmulq_n_f32(v19[-1], a3);
        *v18 = v20;
        ++v17;
        v18 += 2;
        v19 += 2;
      }

      while (v17 < *a1);
    }

    goto LABEL_36;
  }

LABEL_29:
  if (a3 != 1.0 && *a1)
  {
    v21 = 0;
    v22 = a2 + 1;
    do
    {
      v23 = vmulq_n_f32(*v22, a3);
      v22[-1] = vmulq_n_f32(v22[-1], a3);
      *v22 = v23;
      ++v21;
      v22 += 2;
    }

    while (v21 < *a1);
  }

LABEL_36:
  free(v25);
}

void *_ZN9pocketfft6detail3arrINS0_5cmplxIDv4_fEEEC1Em(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = malloc_type_aligned_alloc(0x40uLL, (32 * a2 + 63) & 0xFFFFFFFFFFFFFFC0, 0x900E4C1uLL);
    if (!v4)
    {
      exception = __cxa_allocate_exception(8uLL);
      v6 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v6, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  a1[1] = a2;
  return a1;
}

void _ZNK9pocketfft6detail5cfftpIfE5pass4ILb1ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = a3 << 6;
      v7 = a4 + 4;
      v8 = a5 + 1;
      v9 = &a5[6 * a3 + 1];
      v10 = &a5[2 * a3 + 1];
      do
      {
        v11 = v7[-4];
        v12 = v7[-3];
        v13 = v7[1];
        v14 = vaddq_f32(v11, *v7);
        v15 = vaddq_f32(v12, v13);
        v16 = vsubq_f32(v11, *v7);
        v17 = vsubq_f32(v12, v13);
        v18 = v7[-2];
        v19 = v7[-1];
        v20 = v7[2];
        v21 = v7[3];
        v22 = vaddq_f32(v18, v20);
        v23 = vaddq_f32(v19, v21);
        v24 = vsubq_f32(v18, v20);
        v25 = vsubq_f32(v19, v21);
        v26 = (v8 + v6);
        v8[-1] = vaddq_f32(v14, v22);
        *v8 = vaddq_f32(v15, v23);
        v26[-1] = vsubq_f32(v14, v22);
        *v26 = vsubq_f32(v15, v23);
        v10[-1] = vaddq_f32(v16, v25);
        *v10 = vsubq_f32(v17, v24);
        v7 += 8;
        v9[-1] = vsubq_f32(v16, v25);
        *v9 = vaddq_f32(v17, v24);
        v9 += 2;
        v10 += 2;
        v8 += 2;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v27 = 0;
    v28 = a4 + 2;
    v29 = 32 * a2;
    v30 = &a5[6 * a3 * a2];
    v31 = (a6 + 16 * (a2 - 1));
    v32 = &a5[4 * a3 * a2];
    v33 = a6 + 8 * a2 - 8;
    v34 = (a6 + 4);
    v35 = a5;
    v36 = &a5[2 * a3 * a2];
    do
    {
      v37 = &a4[2 * 4 * v27 * a2];
      v38 = *v37;
      v39 = v37[1];
      v40 = &a4[2 * ((4 * v27) | 2) * a2];
      v41 = v40[1];
      v42 = vaddq_f32(v38, *v40);
      v43 = vaddq_f32(v39, v41);
      v44 = vsubq_f32(v38, *v40);
      v45 = vsubq_f32(v39, v41);
      v46 = &a4[2 * ((4 * v27) | 1) * a2];
      v47 = *v46;
      v48 = v46[1];
      v49 = &a4[2 * ((4 * v27) | 3) * a2];
      v50 = v49[1];
      v51 = vaddq_f32(v47, *v49);
      v52 = vaddq_f32(v48, v50);
      v53 = vsubq_f32(v47, *v49);
      v54 = vsubq_f32(v48, v50);
      v55 = &a5[2 * v27 * a2];
      v56 = &a5[2 * (v27 + 2 * a3) * a2];
      *v55 = vaddq_f32(v42, v51);
      v55[1] = vaddq_f32(v43, v52);
      *v56 = vsubq_f32(v42, v51);
      v56[1] = vsubq_f32(v43, v52);
      v57 = &a5[2 * (v27 + a3) * a2];
      v58 = &a5[2 * (v27 + 3 * a3) * a2];
      *v57 = vaddq_f32(v44, v54);
      v57[1] = vsubq_f32(v45, v53);
      *v58 = vsubq_f32(v44, v54);
      v58[1] = vaddq_f32(v45, v53);
      if (a2)
      {
        v59 = 0;
        v60 = v34;
        v61 = v33;
        v62 = v31;
        v63 = a2 - 1;
        do
        {
          v64 = v28[v59];
          v65 = v28[v59 + 1];
          v66 = &v28[v59 + v29 / 0x10];
          v67 = *v66;
          v68 = v66[1];
          v69 = &v66[v29 / 0x10];
          v70 = v69[2 * a2];
          v71 = v69[v29 / 0x10 + 1];
          v72 = v69[1];
          v73 = vaddq_f32(v64, *v69);
          v74 = vaddq_f32(v65, v72);
          v75 = vsubq_f32(v64, *v69);
          v76 = vsubq_f32(v65, v72);
          v77 = vaddq_f32(v67, v70);
          v78 = vaddq_f32(v68, v71);
          v79 = vsubq_f32(v67, v70);
          v80 = vsubq_f32(v68, v71);
          v81 = &v35[v59];
          v82 = vaddq_f32(v75, v80);
          v83 = vsubq_f32(v76, v79);
          v84 = *(v60 - 1);
          v85 = *v60;
          v86 = &v36[v59];
          v81[2] = vaddq_f32(v73, v77);
          v81[3] = vaddq_f32(v74, v78);
          v86[2] = vmlaq_n_f32(vmulq_n_f32(v83, v85), v82, v84);
          v86[3] = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v82), v85), v83, v84);
          v87 = v61;
          v88 = vld1q_dup_f32(v87++);
          v89 = vsubq_f32(v73, v77);
          v90 = vsubq_f32(v74, v78);
          v78.f32[0] = *v87;
          v91 = &v32[v59];
          v92 = vsubq_f32(v75, v80);
          v93 = vaddq_f32(v76, v79);
          v91[2] = vmlaq_f32(vmulq_n_f32(v90, v78.f32[0]), v88, v89);
          v91[3] = vmlaq_f32(vmulq_n_f32(vnegq_f32(v89), v78.f32[0]), v88, v90);
          v94 = v62;
          v95 = vld1q_dup_f32(v94++);
          v80.f32[0] = *v94;
          v96 = &v30[v59];
          v59 += 2;
          v96[2] = vmlaq_f32(vmulq_n_f32(v93, v80.f32[0]), v95, v92);
          v96[3] = vmlaq_f32(vmulq_n_f32(vnegq_f32(v92), v80.f32[0]), v95, v93);
          v62 += 2;
          v61 += 2;
          v60 += 2;
          --v63;
        }

        while (v63);
      }

      ++v27;
      v28 += 8 * a2;
      v30 = (v30 + v29);
      v35 = (v35 + v29);
      v32 = (v32 + v29);
      v36 = (v36 + v29);
    }

    while (v27 != a3);
  }
}