void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v3;
  *v9 = *a2;
  *&v9[16] = *(a2 + 16);
  v4 = mlx::core::scheduler::scheduler(a1);
  if (v3)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(*(v4[1] + 8 * *a1), v9);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v4);
  *&v7 = *a1;
  DWORD2(v7) = *(a1 + 2);
  v8[0] = *v9;
  *(v8 + 9) = *&v9[9];
  v6 = mlx::core::scheduler::scheduler(v5);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v6[1] + 8 * *a1), &v7);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A7F7570(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(void *a1, __int128 *a2)
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

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13cholesky_implIfEEvRKNS3_5arrayERS8_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C03820;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13cholesky_implIfEEvRKNS3_5arrayERS8_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13cholesky_implIfEEvRKNS3_5arrayERS8_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}::operator()(char **a1)
{
  v2 = a1 + 3;
  v1 = *(a1 + 3);
  if (*(a1 + 8))
  {
    v3 = 76;
  }

  else
  {
    v3 = 85;
  }

  v21 = v3;
  v4 = a1[2];
  v5 = (v1 * v1);
  if (v4 < v5)
  {
    return;
  }

  v7 = 0;
  v19 = v4 / v5;
  do
  {
    v20 = 0;
    v8 = *a1;
    spotrf_NEWLAPACK();
    v9 = *v2;
    if (v9 < 1)
    {
      goto LABEL_16;
    }

    v10 = 0;
    v11 = *(a1 + 8);
    v12 = *a1;
    v13 = 4 * v9;
    v14 = 4 * v9 + 4;
    v15 = (*a1 + 4);
    v16 = -4;
    do
    {
      if (v11)
      {
        if (v16 == -4)
        {
          goto LABEL_14;
        }

        v17 = v12;
        v18 = v10;
      }

      else
      {
        v18 = v13 + v16;
        if (v13 + v16 < 1)
        {
          goto LABEL_14;
        }

        v17 = v15;
      }

      bzero(v17, v18);
LABEL_14:
      v16 -= 4;
      v10 += 4;
      v15 += v14;
      v12 += v13;
    }

    while (v13 != v10);
    *a1 = v12;
LABEL_16:
    ++v7;
  }

  while (v19 > v7);
}

void sub_25A7F79E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
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

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A7F7AD0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

__n128 std::__function::__func<std::__bind<void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C038A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::cholesky_impl<float>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = (*(a1 + 10) + 1) % 10;
  *(a1 + 10) = v3;
  *v9 = *a2;
  *&v9[16] = *(a2 + 16);
  v4 = mlx::core::scheduler::scheduler(a1);
  if (v3)
  {
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(*(v4[1] + 8 * *a1), v9);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v4);
  *&v7 = *a1;
  DWORD2(v7) = *(a1 + 2);
  v8[0] = *v9;
  *(v8 + 9) = *&v9[9];
  v6 = mlx::core::scheduler::scheduler(v5);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v6[1] + 8 * *a1), &v7);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A7F7EF8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(void *a1, __int128 *a2)
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

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13cholesky_implIdEEvRKNS3_5arrayERS8_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C03998;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13cholesky_implIdEEvRKNS3_5arrayERS8_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13cholesky_implIdEEvRKNS3_5arrayERS8_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}::operator()(char **a1)
{
  v2 = a1 + 3;
  v1 = *(a1 + 3);
  if (*(a1 + 8))
  {
    v3 = 76;
  }

  else
  {
    v3 = 85;
  }

  v21 = v3;
  v4 = a1[2];
  v5 = (v1 * v1);
  if (v4 < v5)
  {
    return;
  }

  v7 = 0;
  v19 = v4 / v5;
  do
  {
    v20 = 0;
    v8 = *a1;
    dpotrf_NEWLAPACK();
    v9 = *v2;
    if (v9 < 1)
    {
      goto LABEL_16;
    }

    v10 = 0;
    v11 = *(a1 + 8);
    v12 = *a1;
    v13 = 8 * v9;
    v14 = 8 * v9 + 8;
    v15 = (*a1 + 8);
    v16 = -8;
    do
    {
      if (v11)
      {
        if (v16 == -8)
        {
          goto LABEL_14;
        }

        v17 = v12;
        v18 = v10;
      }

      else
      {
        v18 = v13 + v16;
        if (v13 + v16 < 1)
        {
          goto LABEL_14;
        }

        v17 = v15;
      }

      bzero(v17, v18);
LABEL_14:
      v16 -= 8;
      v10 += 8;
      v15 += v14;
      v12 += v13;
    }

    while (v13 != v10);
    *a1 = v12;
LABEL_16:
    ++v7;
  }

  while (v19 > v7);
}

void sub_25A7F8370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
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

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A7F8458(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

__n128 std::__function::__func<std::__bind<void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C03A18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::cholesky_impl<double>(mlx::core::array const&,mlx::core::array&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::JitCompiler::build_command(uint64_t a1@<X0>, std::string *a2@<X1>, std::string *a3@<X2>, _BYTE *a4@<X8>)
{
  v22[63] = *MEMORY[0x277D85DE8];
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v15.__pn_, a2);
  std::__fs::filesystem::operator/[abi:ne200100](&v15, a1, &v16);
  if (SHIBYTE(v16.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, v16.__pn_.__r_.__value_.__l.__data_, v16.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    pn = v16.__pn_;
  }

  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v12, a3);
  std::__fs::filesystem::operator/[abi:ne200100](&v12, a1, &v13);
  if (SHIBYTE(v13.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, v13.__pn_.__r_.__value_.__l.__data_, v13.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v14 = v13.__pn_;
  }

  size = SHIBYTE(pn.__r_.__value_.__r.__words[2]);
  p_pn = &pn;
  if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_pn = pn.__r_.__value_.__r.__words[0];
  }

  if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = pn.__r_.__value_.__l.__size_;
  }

  v9 = SHIBYTE(v14.__r_.__value_.__r.__words[2]);
  v10 = &v14;
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v14.__r_.__value_.__l.__size_;
  }

  v18[0] = p_pn;
  v18[1] = size;
  v18[2] = v10;
  v18[3] = v9;
  v19 = &unk_286BF19A0;
  __p = v22;
  v21 = xmmword_25A9BF650;
  fmt::v10::detail::vformat_to<char>(&v19, "g++ -std=c++17 -O3 -Wall -fPIC -shared {0} -o {1} 2>&1", 58, 0xDDuLL, v18, 0);
  fmt::v10::to_string<char,500ul>(&v19, a4);
  if (__p != v22)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__pn_.__r_.__value_.__l.__data_);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_25A7F88EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::JitCompiler::exec@<X0>(const char *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v33 = *MEMORY[0x277D85DE8];
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v4 = popen(a1, "r");
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "popen() failed.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = v4;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  while (fgets(__s, 128, v5))
  {
    v6 = strlen(__s);
    std::string::append(a2, __s, v6);
  }

  v7 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v8 = v7;
  v9 = (a2 + v7);
  if (v8 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = (a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_);
  }

  if (v8 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2->__r_.__value_.__r.__words[0];
  }

  v12 = MEMORY[0x277D85DE0];
  while (v10 != v11)
  {
    v14 = *(v10 - 1);
    v10 = (v10 - 1);
    v13 = v14;
    if (v14 < 0)
    {
      v15 = __maskrune(v13, 0x4000uLL);
    }

    else
    {
      v15 = *(v12 + 4 * v13 + 60) & 0x4000;
    }

    if (!v15)
    {
      v11 = v10 + 1;
      break;
    }
  }

  v16 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v17 = v16;
  v18 = a2 + v16;
  if (v17 >= 0)
  {
    v19 = a2;
  }

  else
  {
    v18 = a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_;
    v19 = a2->__r_.__value_.__r.__words[0];
  }

  std::string::erase(a2, v11 - v19, v18 - v11);
  result = pclose(v5);
  if (result == -1)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v24, "pclose() failed.");
    __cxa_throw(v24, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v21 = BYTE1(result);
  if (BYTE1(result))
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    v26 = *(v2 + 23);
    v27 = *v2;
    if (v26 >= 0)
    {
      v27 = v2;
    }

    if (v26 < 0)
    {
      v26 = v2[1];
    }

    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v29 = a2->__r_.__value_.__r.__words[0];
    if (size >= 0)
    {
      v29 = a2;
    }

    if (size < 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v31[0] = v21;
    v31[1] = 0;
    v31[2] = v27;
    v31[3] = v26;
    v31[4] = v29;
    v31[5] = size;
    fmt::v10::vformat("Failed to execute command with return code {0}: {1}, the output is: {2}", 73, 0xDD1uLL, v31, v30);
    MEMORY[0x25F851100](v25, v30);
    __cxa_throw(v25, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A7F8C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      if (*(v15 + 23) < 0)
      {
        operator delete(*v15);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void mlx::core::Hadamard::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *this)
{
  v3 = *a2;
  if (*(a2 + 8) - *a2 != 16)
  {
    mlx::core::Hadamard::eval_cpu();
  }

  if ((*(*v3 + 168) & 2) != 0)
  {
    v7 = *(v3 + 1);
    if (v7)
    {
      if (!*(v7 + 8))
      {
        v20 = *(*v3 + 144);
        if (v20)
        {
          if (!*(v20 + 8))
          {
            mlx::core::array::copy_shared_buffer(this, *a2);
LABEL_8:
            v8 = mlx::core::array::shape(this, ((*(*this + 8) - **this) >> 2) - 1);
            v9 = mlx::core::decompose_hadamard(v8);
            v10 = *(*v3 + 56);
            if (v10 != 9)
            {
              if (v10 != 12)
              {
                if (v10 == 10)
                {
                  v11 = *(a1 + 20);
                  v12 = *(a1 + 8);
                  v13 = *(a1 + 16);

                  mlx::core::hadamard<float>(this, v9, SHIDWORD(v9), v12, v13, v11);
                }

                exception = __cxa_allocate_exception(0x10uLL);
                std::invalid_argument::invalid_argument[abi:ne200100](exception, "[hadamard] Unsupported type.");
                __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
              }

              v14 = *(a1 + 20);
              v15 = *(a1 + 8);
              v16 = *(a1 + 16);

              mlx::core::hadamard<mlx::core::_MLX_BFloat16>(this, v9, SHIDWORD(v9), v15, v16, v14);
            }

            v17 = *(a1 + 20);
            v18 = *(a1 + 8);
            v19 = *(a1 + 16);

            mlx::core::hadamard<half>(this, v9, SHIDWORD(v9), v18, v19, v17);
          }
        }
      }
    }

    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  mlx::core::copy(*a2, this, v6, *(a1 + 8), *(a1 + 16));
  goto LABEL_8;
}

uint64_t mlx::core::decompose_hadamard(mlx::core *this)
{
  v1 = this;
  v15 = *MEMORY[0x277D85DE8];
  if ((this ^ (this - 1)) <= this - 1)
  {
    v13[2] = xmmword_279921630;
    v13[3] = unk_279921640;
    v14 = 813;
    v13[0] = xmmword_279921610;
    v13[1] = unk_279921620;
    std::map<int,std::string_view>::map[abi:ne200100](&v11, v13, 3);
    v3 = v11;
    if (v11 == v12)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v4 = *(v3 + 8);
      if (!(v1 % v4))
      {
        break;
      }

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
      if (v6 == v12)
      {
        goto LABEL_11;
      }
    }

    if (v4 == 1)
    {
LABEL_11:
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "[hadamard] Only supports n = m*2^k where m in (1, 12, 20, 28).");
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }

    std::__tree<int>::destroy(&v11, v12[0]);
    v2 = v4 << 32;
    v1 /= v4;
  }

  else
  {
    v2 = 0x100000000;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2 | v1;
}

void mlx::core::hadamard<float>(uint64_t a1, int a2, int a3, uint64_t a4, int a5, float a6)
{
  command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
  v11 = *(*a1 + 48);
  *&v12 = *(*a1 + 152);
  *(&v12 + 1) = v11;
  v13 = a2;
  v14 = a3;
  v15 = a6;
  mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(command_encoder, &v12);
}

void mlx::core::hadamard<half>(uint64_t a1, int a2, int a3, uint64_t a4, int a5, float a6)
{
  command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
  v11 = *(*a1 + 48);
  *&v12 = *(*a1 + 152);
  *(&v12 + 1) = v11;
  v13 = a2;
  v14 = a3;
  v15 = a6;
  mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(command_encoder, &v12);
}

void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(uint64_t a1, int a2, int a3, uint64_t a4, int a5, float a6)
{
  command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
  v11 = *(*a1 + 48);
  *&v12 = *(*a1 + 152);
  *(&v12 + 1) = v11;
  v13 = a2;
  v14 = a3;
  v15 = a6;
  mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(command_encoder, &v12);
}

void mlx::core::Hadamard::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
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

void sub_25A7F91F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<int,std::string_view>::map[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      std::__tree<std::__value_type<int,std::string_view>,std::__map_value_compare<int,std::__value_type<int,std::string_view>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string_view>>>::__emplace_hint_unique_key_args<int,std::pair<int const,std::string_view> const&>(a1, v4, a2);
      a2 += 6;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<int,std::string_view>,std::__map_value_compare<int,std::__value_type<int,std::string_view>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string_view>>>::__emplace_hint_unique_key_args<int,std::pair<int const,std::string_view> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<int,std::string_view>,std::__map_value_compare<int,std::__value_type<int,std::string_view>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string_view>>>::__find_equal<int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<int,std::string_view>,std::__map_value_compare<int,std::__value_type<int,std::string_view>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string_view>>>::__find_equal<int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v10);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v5);
  *&v8[0] = *a1;
  DWORD2(v8[0]) = *(a1 + 2);
  v8[1] = v10;
  v8[2] = v11;
  v9 = v12;
  v7 = mlx::core::scheduler::scheduler(v6);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v7[1] + 8 * *a1), v8);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A7F9688(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(void *a1, __int128 *a2)
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

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8hadamardIfEEvRNS3_5arrayEiifNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISH_EEFvvEE7__cloneEPNS0_6__baseISK_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C03B98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8hadamardIfEEvRNS3_5arrayEiifNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISH_EEFvvEEclEv(uint64_t a1)
{
  std::__bind<void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8hadamardIfEEvRNS3_5arrayEiifNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISH_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 20);
  if (v3 > 1)
  {
    v2 = 1.0;
  }

  mlx::core::hadamard_n<float>(*a1, *(a1 + 16), v2, v3, *(a1 + 8));
  v4 = *(a1 + 20);
  if (v4 >= 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = *a1;
    v8 = *(a1 + 8);

    mlx::core::hadamard_m<float>(v7, v5, v4, v8, v6);
  }
}

uint64_t mlx::core::hadamard_n<float>(uint64_t result, int a2, float a3, uint64_t a4, unint64_t a5)
{
  if (a2 <= a5)
  {
    v5 = 0;
    v6 = a2 / 2;
    do
    {
      if (a2 >= 2)
      {
        for (i = 1; i < a2; i *= 2)
        {
          v8 = 0;
          v9 = 0;
          do
          {
            v10 = (result + 4 * v5 * a2 + 4 * (v8 - (v9 & (i - 1))));
            v11 = *v10;
            v12 = v10[i];
            *v10 = *v10 + v12;
            v10[i] = v11 - v12;
            if (i == v6)
            {
              *v10 = *v10 * a3;
              v10[i] = v10[i] * a3;
            }

            ++v9;
            v8 += 2;
          }

          while (v6 != v9);
        }
      }

      ++v5;
    }

    while (a5 / a2 > v5);
  }

  return result;
}

void mlx::core::hadamard_m<float>(uint64_t a1, int a2, unsigned int a3, unint64_t a4, float a5)
{
  v52 = *MEMORY[0x277D85DE8];
  v46 = a3;
  v49 = xmmword_279921630;
  v50 = unk_279921640;
  v51 = 813;
  *v47 = xmmword_279921610;
  v48 = unk_279921620;
  std::map<int,std::string_view>::map[abi:ne200100](v45, v47, 3);
  v47[0] = &v46;
  v8 = std::__tree<std::__value_type<int,std::string_view>,std::__map_value_compare<int,std::__value_type<int,std::string_view>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string_view>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v45, &v46);
  v9 = v8;
  v10 = v8[6];
  if (v10 >= 2 && (v11 = v8[5], (v12 = memchr((v11 + 1), 10, v10 - 1)) != 0))
  {
    v13 = &v12[-v11];
    v47[0] = 0;
    v47[1] = 0;
    *&v48 = 0;
    if (v13 != -1)
    {
      v14 = 1;
      do
      {
        if (v10 < v14)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        v15 = v14;
        if (v10 - v14 >= &v13[-v14])
        {
          v16 = &v13[-v14];
        }

        else
        {
          v16 = v10 - v14;
        }

        if (v16)
        {
          v17 = (v9[5] + v15);
          do
          {
            v18 = *v17++;
            LOBYTE(__p[0]) = v18 == 43;
            std::vector<BOOL>::push_back(v47, __p);
            --v16;
          }

          while (v16);
          v10 = v9[6];
        }

        v14 = v13 + 1;
        if (v10 <= v13 + 1)
        {
          break;
        }

        v19 = v9[5];
        v20 = memchr((v19 + v14), 10, v10 - v14);
        if (!v20)
        {
          break;
        }

        v13 = &v20[-v19];
      }

      while (v13 != -1);
    }
  }

  else
  {
    v47[0] = 0;
    v47[1] = 0;
    *&v48 = 0;
  }

  v21 = v46;
  if (a4 / v46 < a2)
  {
    goto LABEL_37;
  }

  v22 = 0;
  v23 = 0;
  v24 = 4 * a2;
  do
  {
    v25 = v21;
    if (a2 < 1)
    {
      goto LABEL_36;
    }

    v26 = 0;
    v27 = (a1 + v22 * v21);
    do
    {
      std::vector<float>::vector[abi:ne200100](__p, v46);
      v28 = v46;
      if (v46 <= 0)
      {
        v40 = __p[0];
        if (!__p[0])
        {
          goto LABEL_34;
        }
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v31 = v47[0];
        do
        {
          v32 = __p[0];
          v33 = *(__p[0] + v30);
          v34 = v28;
          v35 = v27;
          v36 = v29;
          do
          {
            v37 = *v35;
            if (((*&v31[(v36 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v36) & 1) == 0)
            {
              v37 = -*v35;
            }

            v33 = v33 + v37;
            v32[v30] = v33;
            ++v36;
            v35 = (v35 + v24);
            --v34;
          }

          while (v34);
          ++v30;
          v29 += v28;
        }

        while (v30 != v28);
        v38 = 0;
        v39 = 0;
        v40 = __p[0];
        v41 = 4 * v28;
        do
        {
          *(v27 + v39) = *&v40[v38] * a5;
          v39 += v24;
          v38 += 4;
        }

        while (v41 != v38);
      }

      __p[1] = v40;
      operator delete(v40);
LABEL_34:
      ++v26;
      ++v27;
    }

    while (v26 != a2);
    v21 = v46;
    v25 = v46;
LABEL_36:
    ++v23;
    v22 += 4 * a2;
  }

  while (a4 / v25 / a2 > v23);
LABEL_37:
  if (v47[0])
  {
    operator delete(v47[0]);
  }

  std::__tree<int>::destroy(v45, v45[1]);
  v42 = *MEMORY[0x277D85DE8];
}

uint64_t *std::__tree<std::__value_type<int,std::string_view>,std::__map_value_compare<int,std::__value_type<int,std::string_view>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string_view>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25A7F9F20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A7F9FDC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

__n128 std::__function::__func<std::__bind<void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C03C18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::hadamard<float>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v10);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v5);
  *&v8[0] = *a1;
  DWORD2(v8[0]) = *(a1 + 2);
  v8[1] = v10;
  v8[2] = v11;
  v9 = v12;
  v7 = mlx::core::scheduler::scheduler(v6);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v7[1] + 8 * *a1), v8);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A7FA420(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(void *a1, __int128 *a2)
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

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8hadamardIDhEEvRNS3_5arrayEiifNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISH_EEFvvEE7__cloneEPNS0_6__baseISK_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C03D10;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8hadamardIDhEEvRNS3_5arrayEiifNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISH_EEFvvEEclEv(uint64_t a1)
{
  std::__bind<void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8hadamardIDhEEvRNS3_5arrayEiifNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISH_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 20);
  if (v3 > 1)
  {
    v2 = 1.0;
  }

  mlx::core::hadamard_n<half>(*a1, *(a1 + 16), v2, v3, *(a1 + 8));
  v4 = *(a1 + 20);
  if (v4 >= 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = *a1;
    v8 = *(a1 + 8);

    mlx::core::hadamard_m<half>(v7, v5, v4, v8, v6);
  }
}

uint64_t mlx::core::hadamard_n<half>(uint64_t result, int a2, float a3, uint64_t a4, unint64_t a5)
{
  if (a2 <= a5)
  {
    v5 = 0;
    v6 = a2 / 2;
    do
    {
      if (a2 >= 2)
      {
        for (i = 1; i < a2; i *= 2)
        {
          v8 = 0;
          v9 = 0;
          do
          {
            v10 = (result + 2 * v5 * a2 + 2 * (v8 - (v9 & (i - 1))));
            v11 = *v10;
            v12 = v10[i];
            *v10 = *v10 + v12;
            v10[i] = v11 - v12;
            if (i == v6)
            {
              _H1 = *v10;
              __asm { FCVT            S1, H1 }

              _S1 = _S1 * a3;
              __asm { FCVT            H1, S1 }

              *v10 = *&_S1;
              *&_S1 = v10[i];
              __asm { FCVT            S1, H1 }

              _S1 = _S1 * a3;
              __asm { FCVT            H1, S1 }

              v10[i] = *&_S1;
            }

            ++v9;
            v8 += 2;
          }

          while (v6 != v9);
        }
      }

      ++v5;
    }

    while (a5 / a2 > v5);
  }

  return result;
}

void mlx::core::hadamard_m<half>(uint64_t a1, int a2, unsigned int a3, unint64_t a4, float a5)
{
  v57 = *MEMORY[0x277D85DE8];
  v51 = a3;
  v54 = xmmword_279921630;
  v55 = unk_279921640;
  v56 = 813;
  *v52 = xmmword_279921610;
  v53 = unk_279921620;
  std::map<int,std::string_view>::map[abi:ne200100](v50, v52, 3);
  v52[0] = &v51;
  v8 = std::__tree<std::__value_type<int,std::string_view>,std::__map_value_compare<int,std::__value_type<int,std::string_view>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string_view>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v50, &v51);
  v9 = v8;
  v10 = v8[6];
  if (v10 >= 2 && (v11 = v8[5], (v12 = memchr((v11 + 1), 10, v10 - 1)) != 0))
  {
    v13 = &v12[-v11];
    v52[0] = 0;
    v52[1] = 0;
    *&v53 = 0;
    if (v13 != -1)
    {
      v14 = 1;
      do
      {
        if (v10 < v14)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        v15 = v14;
        if (v10 - v14 >= &v13[-v14])
        {
          v16 = &v13[-v14];
        }

        else
        {
          v16 = v10 - v14;
        }

        if (v16)
        {
          v17 = (v9[5] + v15);
          do
          {
            v18 = *v17++;
            LOBYTE(__p[0]) = v18 == 43;
            std::vector<BOOL>::push_back(v52, __p);
            --v16;
          }

          while (v16);
          v10 = v9[6];
        }

        v14 = v13 + 1;
        if (v10 <= v13 + 1)
        {
          break;
        }

        v19 = v9[5];
        v20 = memchr((v19 + v14), 10, v10 - v14);
        if (!v20)
        {
          break;
        }

        v13 = &v20[-v19];
      }

      while (v13 != -1);
    }
  }

  else
  {
    v52[0] = 0;
    v52[1] = 0;
    *&v53 = 0;
  }

  v21 = v51;
  if (a4 / v51 < a2)
  {
    goto LABEL_37;
  }

  v22 = 0;
  v23 = 0;
  v24 = 2 * a2;
  do
  {
    v25 = v21;
    if (a2 < 1)
    {
      goto LABEL_36;
    }

    v26 = 0;
    v27 = (a1 + v22 * v21);
    do
    {
      std::vector<float>::vector[abi:ne200100](__p, v51);
      v28 = v51;
      if (v51 <= 0)
      {
        v44 = __p[0];
        if (!__p[0])
        {
          goto LABEL_34;
        }
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v31 = v52[0];
        do
        {
          v32 = *(__p[0] + v30);
          v33 = v28;
          v34 = v27;
          v35 = v29;
          do
          {
            _H1 = *v34;
            __asm { FCVT            S1, H1 }

            if (((*&v31[(v35 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v35) & 1) == 0)
            {
              _S1 = -_S1;
            }

            v32 = v32 + _S1;
            ++v35;
            v34 = (v34 + v24);
            --v33;
          }

          while (v33);
          *(__p[0] + v30++) = v32;
          v29 += v28;
        }

        while (v30 != v28);
        v42 = 0;
        v43 = 0;
        v44 = __p[0];
        v45 = 4 * v28;
        do
        {
          _S0 = *&v44[v42] * a5;
          __asm { FCVT            H0, S0 }

          *(v27 + v43) = LOWORD(_S0);
          v43 += v24;
          v42 += 4;
        }

        while (v45 != v42);
      }

      __p[1] = v44;
      operator delete(v44);
LABEL_34:
      ++v26;
      ++v27;
    }

    while (v26 != a2);
    v21 = v51;
    v25 = v51;
LABEL_36:
    ++v23;
    v22 += 2 * a2;
  }

  while (a4 / v25 / a2 > v23);
LABEL_37:
  if (v52[0])
  {
    operator delete(v52[0]);
  }

  std::__tree<int>::destroy(v50, v50[1]);
  v47 = *MEMORY[0x277D85DE8];
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A7FAC40(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

__n128 std::__function::__func<std::__bind<void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C03D90;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::hadamard<half>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v10);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v5);
  *&v8[0] = *a1;
  DWORD2(v8[0]) = *(a1 + 2);
  v8[1] = v10;
  v8[2] = v11;
  v9 = v12;
  v7 = mlx::core::scheduler::scheduler(v6);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v7[1] + 8 * *a1), v8);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A7FB084(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(void *a1, __int128 *a2)
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

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8hadamardINS3_13_MLX_BFloat16EEEvRNS3_5arrayEiifNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE7__cloneEPNS0_6__baseISL_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C03E88;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8hadamardINS3_13_MLX_BFloat16EEEvRNS3_5arrayEiifNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEEclEv(uint64_t a1)
{
  std::__bind<void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8hadamardINS3_13_MLX_BFloat16EEEvRNS3_5arrayEiifNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISI_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 20);
  if (v3 > 1)
  {
    v2 = 1.0;
  }

  mlx::core::hadamard_n<mlx::core::_MLX_BFloat16>(*a1, *(a1 + 16), v2, v3, *(a1 + 8));
  v4 = *(a1 + 20);
  if (v4 >= 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = *a1;
    v8 = *(a1 + 8);

    mlx::core::hadamard_m<mlx::core::_MLX_BFloat16>(v7, v5, v4, v8, v6);
  }
}

uint64_t mlx::core::hadamard_n<mlx::core::_MLX_BFloat16>(uint64_t result, int a2, float a3, uint64_t a4, unint64_t a5)
{
  if (a2 <= a5)
  {
    v5 = 0;
    v6 = a2 / 2;
    v7 = a5 / a2;
    do
    {
      if (a2 >= 2)
      {
        for (i = 1; i < a2; i *= 2)
        {
          v9 = 0;
          v10 = 0;
          do
          {
            v11 = (result + 2 * v5 * a2 + 2 * (v9 - (v10 & (i - 1))));
            LODWORD(v12) = *v11 << 16;
            LODWORD(v13) = v11[i] << 16;
            *v11 = (COERCE_INT(v12 + v13) + (HIWORD(COERCE_UNSIGNED_INT(v12 + v13)) & 1) + 0x7FFF) >> 16;
            v11[i] = (COERCE_INT(v12 - v13) + (HIWORD(COERCE_UNSIGNED_INT(v12 - v13)) & 1) + 0x7FFF) >> 16;
            if (i == v6)
            {
              *v11 = (COERCE_INT(COERCE_FLOAT(*v11 << 16) * a3) + (HIWORD(COERCE_UNSIGNED_INT(COERCE_FLOAT(*v11 << 16) * a3)) & 1) + 0x7FFF) >> 16;
              v14 = COERCE_FLOAT(v11[i] << 16) * a3;
              v11[i] = (LODWORD(v14) + (HIWORD(LODWORD(v14)) & 1u) + 0x7FFF) >> 16;
            }

            ++v10;
            v9 += 2;
          }

          while (v6 != v10);
        }
      }

      ++v5;
    }

    while (v7 > v5);
  }

  return result;
}

void mlx::core::hadamard_m<mlx::core::_MLX_BFloat16>(uint64_t a1, int a2, unsigned int a3, unint64_t a4, float a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v48 = xmmword_279921630;
  v49 = unk_279921640;
  v50 = 813;
  *v46 = xmmword_279921610;
  v47 = unk_279921620;
  std::map<int,std::string_view>::map[abi:ne200100](v44, v46, 3);
  v46[0] = &v45;
  v7 = std::__tree<std::__value_type<int,std::string_view>,std::__map_value_compare<int,std::__value_type<int,std::string_view>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string_view>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v44, &v45);
  v8 = v7;
  v9 = v7[6];
  if (v9 >= 2 && (v10 = v7[5], (v11 = memchr((v10 + 1), 10, v9 - 1)) != 0))
  {
    v12 = &v11[-v10];
    v46[0] = 0;
    v46[1] = 0;
    *&v47 = 0;
    if (v12 != -1)
    {
      v13 = 1;
      do
      {
        if (v9 < v13)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        v14 = v13;
        if (v9 - v13 >= &v12[-v13])
        {
          v15 = &v12[-v13];
        }

        else
        {
          v15 = v9 - v13;
        }

        if (v15)
        {
          v16 = (v8[5] + v14);
          do
          {
            v17 = *v16++;
            LOBYTE(__p[0]) = v17 == 43;
            std::vector<BOOL>::push_back(v46, __p);
            --v15;
          }

          while (v15);
          v9 = v8[6];
        }

        v13 = v12 + 1;
        if (v9 <= v12 + 1)
        {
          break;
        }

        v18 = v8[5];
        v19 = memchr((v18 + v13), 10, v9 - v13);
        if (!v19)
        {
          break;
        }

        v12 = &v19[-v18];
      }

      while (v12 != -1);
    }
  }

  else
  {
    v46[0] = 0;
    v46[1] = 0;
    *&v47 = 0;
  }

  v20 = v45;
  if (a4 / v45 < a2)
  {
    goto LABEL_37;
  }

  v21 = 0;
  v22 = 0;
  v23 = 2 * a2;
  do
  {
    v24 = v20;
    if (a2 < 1)
    {
      goto LABEL_36;
    }

    v25 = 0;
    v26 = (a1 + v21 * v20);
    do
    {
      std::vector<float>::vector[abi:ne200100](__p, v45);
      v27 = v45;
      if (v45 <= 0)
      {
        v38 = __p[0];
        if (!__p[0])
        {
          goto LABEL_34;
        }
      }

      else
      {
        v28 = 0;
        v29 = 0;
        v30 = v46[0];
        do
        {
          v31 = *(__p[0] + v29);
          v32 = v27;
          v33 = v26;
          v34 = v28;
          do
          {
            LODWORD(v35) = *v33 << 16;
            if (((*&v30[(v34 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v34) & 1) == 0)
            {
              v35 = -v35;
            }

            v31 = v31 + v35;
            ++v34;
            v33 = (v33 + v23);
            --v32;
          }

          while (v32);
          *(__p[0] + v29++) = v31;
          v28 += v27;
        }

        while (v29 != v27);
        v36 = 0;
        v37 = 0;
        v38 = __p[0];
        v39 = 4 * v27;
        do
        {
          *(v26 + v37) = (COERCE_INT(*&v38[v36] * a5) + (HIWORD(COERCE_UNSIGNED_INT(*&v38[v36] * a5)) & 1) + 0x7FFF) >> 16;
          v37 += v23;
          v36 += 4;
        }

        while (v39 != v36);
      }

      __p[1] = v38;
      operator delete(v38);
LABEL_34:
      ++v25;
      ++v26;
    }

    while (v25 != a2);
    v20 = v45;
    v24 = v45;
LABEL_36:
    ++v22;
    v21 += 2 * a2;
  }

  while (a4 / v24 / a2 > v22);
LABEL_37:
  if (v46[0])
  {
    operator delete(v46[0]);
  }

  std::__tree<int>::destroy(v44, v44[1]);
  v40 = *MEMORY[0x277D85DE8];
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A7FB96C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

__n128 std::__function::__func<std::__bind<void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C03F08;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::hadamard<mlx::core::_MLX_BFloat16>(mlx::core::array &,int,int,float,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::nd_loop()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_25A7FBCFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(int,int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(int,int)>::operator()(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void mlx::core::Reduce::eval_cpu(uint64_t a1, void *a2, uint64_t a3)
{
  v5[36] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    v4 = mlx::core::allocator::malloc((*(*a3 + 60) * *(*a3 + 48)));
    v5[0] = &unk_286BE3468;
    v5[1] = mlx::core::allocator::free;
    v5[3] = v5;
    mlx::core::array::set_data(a3, v4);
  }

  mlx::core::Reduce::eval_cpu();
}

void sub_25A7FC310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  __cxa_free_exception(v38);
  std::mutex::unlock(v37);
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>(mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0 &&)::{lambda(void)#1}::~dispatch(&a26);
  mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::~$_0(&a37);
  mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::~$_0(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::~$_0(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  mlx::core::array::~array((a1 + 2));

  mlx::core::array::~array(a1);
}

void *mlx::core::Reduce::print(void *result, void *a2)
{
  v2 = *(result + 5);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Prod", 4);
      case 4:
        v3 = "Min";
        return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v3, 3);
      case 5:
        v3 = "Max";
        return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v3, 3);
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = "And";
        return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v3, 3);
      case 1:
        return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Or", 2);
      case 2:
        v3 = "Sum";
        return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v3, 3);
    }
  }

  return result;
}

void mlx::core::Reduce::~Reduce(mlx::core::Reduce *this)
{
  *this = &unk_286C04000;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286C04000;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__value_func<void ()(int,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<mlx::core::nd_loop(std::function<void ()(int)>,std::vector<int> const&,std::vector<long long> const&)::$_0,std::allocator<mlx::core::nd_loop(std::function<void ()(int)>,std::vector<int> const&,std::vector<long long> const&)::$_0>,void ()(int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04088;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<mlx::core::nd_loop(std::function<void ()(int)>,std::vector<int> const&,std::vector<long long> const&)::$_0,std::allocator<mlx::core::nd_loop(std::function<void ()(int)>,std::vector<int> const&,std::vector<long long> const&)::$_0>,void ()(int,int)>::operator()(uint64_t result, int *a2, int *a3)
{
  v3 = result;
  v4 = *a2;
  v5 = *a3;
  v6 = **(result + 8);
  v7 = *(v6 + 4 * v4);
  if (((*(*(result + 8) + 8) - v6) >> 2) - 1 <= v4)
  {
    if (v7 >= 1)
    {
      v9 = *(**(result + 16) + 8 * v4);
      do
      {
        result = std::function<void ()(int)>::operator()(*(v3 + 32), v5);
        v5 += v9;
        --v7;
      }

      while (v7);
    }
  }

  else if (v7 >= 1)
  {
    v8 = *(**(result + 16) + 8 * v4);
    do
    {
      result = std::function<void ()(int,int)>::operator()(*(v3 + 24), v4 + 1, v5);
      v5 += v8;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t std::__function::__func<mlx::core::nd_loop(std::function<void ()(int)>,std::vector<int> const&,std::vector<long long> const&)::$_0,std::allocator<mlx::core::nd_loop(std::function<void ()(int)>,std::vector<int> const&,std::vector<long long> const&)::$_0>,void ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<void ()(int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *std::__function::__value_func<void ()(int,int)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_25A7FCA68(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *mlx::core::cpu::CommandEncoder::dispatch<mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>(mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0 &&)::{lambda(void)#1}::~dispatch(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  mlx::core::array::~array((a1 + 4));
  mlx::core::array::~array((a1 + 2));
  return a1;
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6Reduce8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286C04118;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6Reduce8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286C04118;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

void sub_25A7FCC68(_Unwind_Exception *a1)
{
  mlx::core::array::~array(v3);
  mlx::core::array::~array(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6Reduce8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04118;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  v3 = *(a1 + 32);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  *(a2 + 64) = 0;
  *(a2 + 56) = v5;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 64, *(a1 + 64), *(a1 + 72), (*(a1 + 72) - *(a1 + 64)) >> 2);
}

void sub_25A7FCD3C(_Unwind_Exception *a1)
{
  mlx::core::array::~array(v2);
  mlx::core::array::~array(v1);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6Reduce8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  mlx::core::array::~array((a1 + 5));

  mlx::core::array::~array((a1 + 3));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6Reduce8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6Reduce8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1, double a2)
{
  std::__bind<mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::operator()[abi:ne200100]<>(a1 + 24, a2);
  v3 = mlx::core::scheduler::scheduler(v2);

  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6Reduce8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::operator()[abi:ne200100]<>(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  if (v2 <= 5)
  {
    if (((1 << v2) & 3) != 0)
    {
      switch(*(*a1 + 56))
      {
        case 0:
        case 1:
        case 5:
          mlx::core::reduce_dispatch_and_or<signed char>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 2:
        case 6:
        case 9:
        case 0xC:
          mlx::core::reduce_dispatch_and_or<short>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 3:
        case 7:
        case 0xA:
          mlx::core::reduce_dispatch_and_or<int>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 4:
        case 8:
        case 0xB:
        case 0xD:
          mlx::core::reduce_dispatch_and_or<long long>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        default:
          return;
      }
    }

    else if (((1 << v2) & 0xC) != 0)
    {
      switch(*(*a1 + 56))
      {
        case 0:
        case 1:
        case 5:
          mlx::core::reduce_dispatch_sum_prod<signed char>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 2:
        case 6:
          mlx::core::reduce_dispatch_sum_prod<short>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 3:
        case 7:
          mlx::core::reduce_dispatch_sum_prod<int>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 4:
        case 8:
          mlx::core::reduce_dispatch_sum_prod<long long>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 9:
          mlx::core::reduce_dispatch_sum_prod<half>(a1, (a1 + 16), v2, (a1 + 40), *&a2);
          break;
        case 0xA:
          mlx::core::reduce_dispatch_sum_prod<float>(a1, (a1 + 16), v2, (a1 + 40), a2);
          break;
        case 0xB:
          mlx::core::reduce_dispatch_sum_prod<double>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 0xC:
          mlx::core::reduce_dispatch_sum_prod<mlx::core::_MLX_BFloat16>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 0xD:
          mlx::core::reduce_dispatch_sum_prod<mlx::core::complex64_t>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        default:
          return;
      }
    }

    else
    {
      switch(*(*a1 + 56))
      {
        case 0:
          mlx::core::reduce_dispatch_min_max<BOOL>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 1:
        case 5:
          mlx::core::reduce_dispatch_min_max<unsigned char>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 2:
        case 6:
          mlx::core::reduce_dispatch_min_max<unsigned short>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 3:
          mlx::core::reduce_dispatch_min_max<unsigned int>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 4:
          mlx::core::reduce_dispatch_min_max<unsigned long long>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 7:
          mlx::core::reduce_dispatch_min_max<int>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 8:
          mlx::core::reduce_dispatch_min_max<long long>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 9:
          mlx::core::reduce_dispatch_min_max<half>(a1, (a1 + 16), v2, (a1 + 40), *&a2);
          break;
        case 0xA:
          mlx::core::reduce_dispatch_min_max<float>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 0xB:
          mlx::core::reduce_dispatch_min_max<double>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 0xC:
          mlx::core::reduce_dispatch_min_max<mlx::core::_MLX_BFloat16>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        case 0xD:
          mlx::core::reduce_dispatch_min_max<mlx::core::complex64_t>(a1, (a1 + 16), v2, (a1 + 40));
          break;
        default:
          return;
      }
    }
  }
}

void mlx::core::reduce_dispatch_and_or<signed char>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3)
  {
    mlx::core::reduction_op<signed char,BOOL,mlx::core::OrReduce>(a1, a2, a4, 0);
  }

  else
  {
    mlx::core::reduction_op<signed char,BOOL,mlx::core::AndReduce>(a1, a2, a4, 1);
  }
}

void mlx::core::reduce_dispatch_and_or<short>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3)
  {
    mlx::core::reduction_op<short,BOOL,mlx::core::OrReduce>(a1, a2, a4, 0);
  }

  else
  {
    mlx::core::reduction_op<short,BOOL,mlx::core::AndReduce>(a1, a2, a4, 1);
  }
}

void mlx::core::reduce_dispatch_and_or<int>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3)
  {
    mlx::core::reduction_op<int,BOOL,mlx::core::OrReduce>(a1, a2, a4, 0);
  }

  else
  {
    mlx::core::reduction_op<int,BOOL,mlx::core::AndReduce>(a1, a2, a4, 1);
  }
}

void mlx::core::reduce_dispatch_and_or<long long>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3)
  {
    mlx::core::reduction_op<long long,BOOL,mlx::core::OrReduce>(a1, a2, a4, 0);
  }

  else
  {
    mlx::core::reduction_op<long long,BOOL,mlx::core::AndReduce>(a1, a2, a4, 1);
  }
}

void mlx::core::reduce_dispatch_sum_prod<signed char>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 2)
  {
    mlx::core::reduction_op<signed char,int,mlx::core::SumReduce>(a1, a2, a4, 0);
  }

  else
  {
    mlx::core::reduction_op<signed char,int,mlx::core::ProdReduce>(a1, a2, a4, 1u);
  }
}

void mlx::core::reduce_dispatch_sum_prod<short>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 2)
  {
    mlx::core::reduction_op<short,int,mlx::core::SumReduce>(a1, a2, a4, 0);
  }

  else
  {
    mlx::core::reduction_op<short,int,mlx::core::ProdReduce>(a1, a2, a4, 1u);
  }
}

void mlx::core::reduce_dispatch_sum_prod<int>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 2)
  {
    mlx::core::reduction_op<int,int,mlx::core::SumReduce>(a1, a2, a4, 0);
  }

  else
  {
    mlx::core::reduction_op<int,int,mlx::core::ProdReduce>(a1, a2, a4, 1u);
  }
}

void mlx::core::reduce_dispatch_sum_prod<long long>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 2)
  {
    mlx::core::reduction_op<long long,long long,mlx::core::SumReduce>(a1, a2, a4, 0);
  }

  else
  {
    mlx::core::reduction_op<long long,long long,mlx::core::ProdReduce>(a1, a2, a4, 1);
  }
}

void mlx::core::reduce_dispatch_sum_prod<half>(uint64_t **a1, uint64_t *a2, int a3, int **a4, int16x4_t a5)
{
  if (a3 == 2)
  {
    mlx::core::reduction_op<half,half,mlx::core::SumReduce>(a1, a2, a4, 0);
  }

  else
  {
    a5.i16[0] = COERCE_UNSIGNED_INT(1.0);
    mlx::core::reduction_op<half,half,mlx::core::ProdReduce>(a1, a2, a4, a5);
  }
}

void mlx::core::reduce_dispatch_sum_prod<mlx::core::_MLX_BFloat16>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 2)
  {
    mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::SumReduce>(a1, a2, a4, 0);
  }

  else
  {
    mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ProdReduce>(a1, a2, a4, 0x3F80u);
  }
}

void mlx::core::reduce_dispatch_sum_prod<float>(uint64_t **a1, uint64_t *a2, int a3, int **a4, double a5)
{
  if (a3 == 2)
  {
    mlx::core::reduction_op<float,float,mlx::core::SumReduce>(a1, a2, a4, 0.0);
  }

  else
  {
    LODWORD(a5) = 1.0;
    mlx::core::reduction_op<float,float,mlx::core::ProdReduce>(a1, a2, a4, a5);
  }
}

void mlx::core::reduce_dispatch_sum_prod<double>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 2)
  {
    mlx::core::reduction_op<double,double,mlx::core::SumReduce>(a1, a2, a4, 0.0);
  }

  else
  {
    mlx::core::reduction_op<double,double,mlx::core::ProdReduce>(a1, a2, a4, 1.0);
  }
}

void mlx::core::reduce_dispatch_sum_prod<mlx::core::complex64_t>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 2)
  {
    mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(a1, a2, a4, 0.0, 0.0);
  }

  else
  {
    mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(a1, a2, a4, 1.0, 0.0);
  }
}

void mlx::core::reduce_dispatch_min_max<BOOL>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 5)
  {
    mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(a1, a2, a4, 0);
  }

  else
  {
    mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(a1, a2, a4, 1);
  }
}

void mlx::core::reduce_dispatch_min_max<unsigned char>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 5)
  {
    mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(a1, a2, a4, 0);
  }

  else
  {
    mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(a1, a2, a4, 0xFFu);
  }
}

void mlx::core::reduce_dispatch_min_max<unsigned short>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 5)
  {
    mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(a1, a2, a4, 0);
  }

  else
  {
    mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(a1, a2, a4, 0xFFFFu);
  }
}

void mlx::core::reduce_dispatch_min_max<unsigned int>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 5)
  {
    mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(a1, a2, a4, 0);
  }

  else
  {
    mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(a1, a2, a4, 0xFFFFFFFF);
  }
}

void mlx::core::reduce_dispatch_min_max<unsigned long long>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 5)
  {
    mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(a1, a2, a4, 0);
  }

  else
  {
    mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(a1, a2, a4, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void mlx::core::reduce_dispatch_min_max<int>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 5)
  {
    mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(a1, a2, a4, 0x80000000);
  }

  else
  {
    mlx::core::reduction_op<int,int,mlx::core::MinReduce>(a1, a2, a4, 0x7FFFFFFF);
  }
}

void mlx::core::reduce_dispatch_min_max<long long>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 5)
  {
    mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(a1, a2, a4, 0x8000000000000000);
  }

  else
  {
    mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(a1, a2, a4, 0x7FFFFFFFFFFFFFFFLL);
  }
}

void mlx::core::reduce_dispatch_min_max<half>(uint64_t **a1, uint64_t *a2, int a3, int **a4, float a5)
{
  if (a3 == 5)
  {
    LOWORD(a5) = -1024;
    mlx::core::reduction_op<half,half,mlx::core::MaxReduce>(a1, a2, a4, a5);
  }

  else
  {
    LOWORD(a5) = 31744;
    mlx::core::reduction_op<half,half,mlx::core::MinReduce>(a1, a2, a4, a5);
  }
}

void mlx::core::reduce_dispatch_min_max<float>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 5)
  {
    mlx::core::reduction_op<float,float,mlx::core::MaxReduce>(a1, a2, a4, -INFINITY);
  }

  else
  {
    mlx::core::reduction_op<float,float,mlx::core::MinReduce>(a1, a2, a4, INFINITY);
  }
}

void mlx::core::reduce_dispatch_min_max<double>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 5)
  {
    mlx::core::reduction_op<double,double,mlx::core::MaxReduce>(a1, a2, a4, -INFINITY);
  }

  else
  {
    mlx::core::reduction_op<double,double,mlx::core::MinReduce>(a1, a2, a4, INFINITY);
  }
}

void mlx::core::reduce_dispatch_min_max<mlx::core::_MLX_BFloat16>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 5)
  {
    v7 = mlx::core::Limits<mlx::core::_MLX_BFloat16>::min();

    mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(a1, a2, a4, v7);
  }

  else
  {
    v8 = mlx::core::Limits<mlx::core::_MLX_BFloat16>::max();

    mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(a1, a2, a4, v8);
  }
}

void mlx::core::reduce_dispatch_min_max<mlx::core::complex64_t>(uint64_t **a1, uint64_t *a2, int a3, int **a4)
{
  if (a3 == 5)
  {
    v7 = mlx::core::Limits<mlx::core::complex64_t>::min();

    mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(a1, a2, a4, v7, v8);
  }

  else
  {
    v9 = mlx::core::Limits<mlx::core::complex64_t>::max();

    mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(a1, a2, a4, v9, v10);
  }
}

void mlx::core::reduction_op<signed char,BOOL,mlx::core::AndReduce>(uint64_t **a1, uint64_t *a2, int **a3, int a4)
{
  v107 = *MEMORY[0x277D85DE8];
  v103 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v98);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  __b = v11;
  v97 = v9;
  if (v98 == 1)
  {
    v16 = v100;
    if (v100 - v99 != 4)
    {
      goto LABEL_21;
    }

    v17 = *(v10 + 48);
    if (v17)
    {
      v18 = 0;
      v19 = *v99;
      do
      {
        *v11 = a4;
        v20 = a4;
        if (v19 >= 1)
        {
          v21 = v19 + 1;
          v22 = v9;
          v20 = a4;
          do
          {
            if (!*v22++)
            {
              v20 = 0;
            }

            --v21;
          }

          while (v21 > 1);
        }

        *v11++ = v20 & a4;
        ++v18;
        v9 += v19;
        __b = v11;
        v97 = v9;
      }

      while (v18 != v17);
    }
  }

  else
  {
    if (!v98)
    {
      *v11 = a4;
      v12 = *(v8 + 12);
      if (v12 < 1)
      {
        v14 = a4;
      }

      else
      {
        v13 = v12 + 1;
        v14 = a4;
        do
        {
          if (!*v9++)
          {
            v14 = 0;
          }

          --v13;
        }

        while (v13 > 1);
      }

      *v11 = v14 & a4;
      goto LABEL_98;
    }

    if ((v98 & 0xFFFFFFFD) == 1)
    {
      v16 = v100;
LABEL_21:
      v24 = *(v16 - 1);
      v100 = v16 - 4;
      v102 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v92);
      v25 = *(*a2 + 48);
      if (v100 == v99)
      {
        if (v25)
        {
          v34 = 0;
          v35 = v92;
          v36 = ((v93 - v92) >> 2) - 1;
          v37 = __p;
          v38 = __b;
          v90 = v97;
          do
          {
            if ((v36 & 0x80000000) != 0)
            {
              v43 = 0;
            }

            else
            {
              v39 = 0;
              v40 = v36;
              quot = v34;
              do
              {
                v42 = ldiv(quot, v35[v40]);
                quot = v42.quot;
                v39 += v37[v40--] * v42.rem;
              }

              while (v40 != -1);
              v43 = v39;
            }

            *v38 = a4;
            v44 = a4;
            if (v24 >= 1)
            {
              v45 = &v90[v43];
              v46 = v24 + 1;
              v44 = a4;
              do
              {
                if (!*v45++)
                {
                  v44 = 0;
                }

                --v46;
              }

              while (v46 > 1);
            }

            *v38++ = v44 & a4;
            ++v34;
            __b = v38;
          }

          while (v34 != v25);
        }
      }

      else if (v25)
      {
        v26 = v92;
        v27 = (v93 - v92) >> 2;
        v28 = (v27 - 1);
        if (v27 - 1 >= 0)
        {
          v29 = 0;
          v30 = __p;
          v31 = 0;
          do
          {
            v32 = ldiv(v31, v26[v28]);
            v31 = v32.quot;
            v29 += v30[v28--] * v32.rem;
          }

          while (v28 != -1);
        }

        *__b = v103;
        v106 = 0;
        operator new();
      }

      goto LABEL_94;
    }

    if (v98 != 2)
    {
      if (v98 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v92);
        if (*(*a2 + 48))
        {
          v48 = v92;
          v49 = (v93 - v92) >> 2;
          v50 = (v49 - 1);
          if (v49 - 1 >= 0)
          {
            v51 = 0;
            v52 = __p;
            v53 = 0;
            do
            {
              v54 = ldiv(v53, v48[v50]);
              v53 = v54.quot;
              v51 += v52[v50--] * v54.rem;
            }

            while (v50 != -1);
          }

          v104 = 0;
          operator new();
        }

        goto LABEL_94;
      }

      if (v98 != 4)
      {
        goto LABEL_98;
      }

      v33 = v100;
      goto LABEL_67;
    }

    v33 = v100;
    if (v100 - v99 != 4)
    {
LABEL_67:
      v64 = *(v33 - 1);
      v65 = *(v102 - 1);
      v100 = v33 - 4;
      v102 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v92);
      v66 = *(*a2 + 48);
      if (v100 != v99)
      {
        if (v66)
        {
          v67 = v92;
          v68 = (v93 - v92) >> 2;
          v69 = (v68 - 1);
          if (v68 - 1 >= 0)
          {
            v70 = 0;
            v71 = __p;
            v72 = 0;
            do
            {
              v73 = ldiv(v72, v67[v69]);
              v72 = v73.quot;
              v70 += v71[v69--] * v73.rem;
            }

            while (v69 != -1);
          }

          if (v65)
          {
            memset(__b, a4, v65);
          }

          v105 = 0;
          operator new();
        }

        goto LABEL_94;
      }

      if (!v66)
      {
LABEL_94:
        if (__p)
        {
          v95 = __p;
          operator delete(__p);
        }

        if (v92)
        {
          v93 = v92;
          operator delete(v92);
        }

        goto LABEL_98;
      }

      v74 = 0;
      v75 = v92;
      v76 = ((v93 - v92) >> 2) - 1;
      v77 = __p;
      v78 = __b;
      v89 = v97;
      v91 = v76;
      while (1)
      {
        if ((v76 & 0x80000000) != 0)
        {
          v82 = 0;
          if (!v65)
          {
            goto LABEL_82;
          }
        }

        else
        {
          v79 = 0;
          v80 = v74;
          do
          {
            v81 = ldiv(v80, v75[v76]);
            v80 = v81.quot;
            v79 += v77[v76--] * v81.rem;
          }

          while (v76 != -1);
          v82 = v79;
          if (!v65)
          {
            goto LABEL_82;
          }
        }

        memset(v78, a4, v65);
LABEL_82:
        if (v64 >= 1)
        {
          v83 = 0;
          v84 = &v89[v82];
          do
          {
            if (v65)
            {
              for (i = 0; i != v65; ++i)
              {
                v86 = *v84++;
                v87 = v78[i] & 1;
                if (!v86)
                {
                  v87 = 0;
                }

                v78[i] = v87;
              }
            }

            ++v83;
          }

          while (v83 != v64);
        }

        v78 += v65;
        __b = v78;
        v74 += v65;
        v76 = v91;
        if (v66 <= v74)
        {
          goto LABEL_94;
        }
      }
    }

    v55 = *(v100 - 1);
    v56 = *(v102 - 1);
    v100 -= 4;
    v102 -= 8;
    v57 = *(v10 + 48);
    if (v57)
    {
      LODWORD(v58) = 0;
      do
      {
        if (v56)
        {
          memset(v11, a4, v56);
        }

        if (v55 >= 1)
        {
          v59 = 0;
          v60 = v9;
          do
          {
            if (v56)
            {
              for (j = 0; j != v56; ++j)
              {
                v62 = *v60++;
                v63 = v11[j] & 1;
                if (!v62)
                {
                  v63 = 0;
                }

                v11[j] = v63;
              }
            }

            ++v59;
          }

          while (v59 != v55);
        }

        v9 += v56 * v55;
        v11 += v56;
        __b = v11;
        v97 = v9;
        v58 = v58 + v56;
      }

      while (v58 < v57);
    }
  }

LABEL_98:
  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  v88 = *MEMORY[0x277D85DE8];
}

void sub_25A7FDCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<signed char,BOOL,mlx::core::OrReduce>(uint64_t **a1, uint64_t *a2, int **a3, int a4)
{
  v105 = *MEMORY[0x277D85DE8];
  v101 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v96);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  __b = v11;
  v95 = v9;
  if (v96 == 1)
  {
    v16 = v98;
    if (v98 - v97 != 4)
    {
      goto LABEL_17;
    }

    v17 = *(v10 + 48);
    if (v17)
    {
      v18 = 0;
      v19 = *v97;
      do
      {
        *v11 = a4;
        v20 = a4;
        if (v19 >= 1)
        {
          v21 = v19 + 1;
          v22 = v9;
          v20 = a4;
          do
          {
            v23 = *v22++;
            v20 |= v23 != 0;
            --v21;
          }

          while (v21 > 1);
        }

        *v11++ = v20 | a4;
        ++v18;
        v9 += v19;
        __b = v11;
        v95 = v9;
      }

      while (v18 != v17);
    }
  }

  else
  {
    if (!v96)
    {
      *v11 = a4;
      v12 = *(v8 + 12);
      if (v12 < 1)
      {
        v14 = a4;
      }

      else
      {
        v13 = v12 + 1;
        v14 = a4;
        do
        {
          v15 = *v9++;
          v14 |= v15 != 0;
          --v13;
        }

        while (v13 > 1);
      }

      *v11 = v14 | a4;
      goto LABEL_88;
    }

    if ((v96 & 0xFFFFFFFD) == 1)
    {
      v16 = v98;
LABEL_17:
      v24 = *(v16 - 1);
      v98 = v16 - 4;
      v100 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v90);
      v25 = *(*a2 + 48);
      if (v98 == v97)
      {
        if (v25)
        {
          v34 = 0;
          v35 = v90;
          v36 = ((v91 - v90) >> 2) - 1;
          v37 = __p;
          v38 = __b;
          v88 = v95;
          do
          {
            if ((v36 & 0x80000000) != 0)
            {
              v43 = 0;
            }

            else
            {
              v39 = 0;
              v40 = v36;
              quot = v34;
              do
              {
                v42 = ldiv(quot, v35[v40]);
                quot = v42.quot;
                v39 += v37[v40--] * v42.rem;
              }

              while (v40 != -1);
              v43 = v39;
            }

            *v38 = a4;
            v44 = a4;
            if (v24 >= 1)
            {
              v45 = &v88[v43];
              v46 = v24 + 1;
              v44 = a4;
              do
              {
                v47 = *v45++;
                v44 |= v47 != 0;
                --v46;
              }

              while (v46 > 1);
            }

            *v38++ = v44 | a4;
            ++v34;
            __b = v38;
          }

          while (v34 != v25);
        }
      }

      else if (v25)
      {
        v26 = v90;
        v27 = (v91 - v90) >> 2;
        v28 = (v27 - 1);
        if (v27 - 1 >= 0)
        {
          v29 = 0;
          v30 = __p;
          v31 = 0;
          do
          {
            v32 = ldiv(v31, v26[v28]);
            v31 = v32.quot;
            v29 += v30[v28--] * v32.rem;
          }

          while (v28 != -1);
        }

        *__b = v101;
        v104 = 0;
        operator new();
      }

      goto LABEL_84;
    }

    if (v96 != 2)
    {
      if (v96 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v90);
        if (*(*a2 + 48))
        {
          v48 = v90;
          v49 = (v91 - v90) >> 2;
          v50 = (v49 - 1);
          if (v49 - 1 >= 0)
          {
            v51 = 0;
            v52 = __p;
            v53 = 0;
            do
            {
              v54 = ldiv(v53, v48[v50]);
              v53 = v54.quot;
              v51 += v52[v50--] * v54.rem;
            }

            while (v50 != -1);
          }

          v102 = 0;
          operator new();
        }

        goto LABEL_84;
      }

      if (v96 != 4)
      {
        goto LABEL_88;
      }

      v33 = v98;
      goto LABEL_59;
    }

    v33 = v98;
    if (v98 - v97 != 4)
    {
LABEL_59:
      v63 = *(v33 - 1);
      v64 = *(v100 - 1);
      v98 = v33 - 4;
      v100 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v90);
      v65 = *(*a2 + 48);
      if (v98 != v97)
      {
        if (v65)
        {
          v66 = v90;
          v67 = (v91 - v90) >> 2;
          v68 = (v67 - 1);
          if (v67 - 1 >= 0)
          {
            v69 = 0;
            v70 = __p;
            v71 = 0;
            do
            {
              v72 = ldiv(v71, v66[v68]);
              v71 = v72.quot;
              v69 += v70[v68--] * v72.rem;
            }

            while (v68 != -1);
          }

          if (v64)
          {
            memset(__b, a4, v64);
          }

          v103 = 0;
          operator new();
        }

        goto LABEL_84;
      }

      if (!v65)
      {
LABEL_84:
        if (__p)
        {
          v93 = __p;
          operator delete(__p);
        }

        if (v90)
        {
          v91 = v90;
          operator delete(v90);
        }

        goto LABEL_88;
      }

      v73 = 0;
      v74 = v90;
      v75 = ((v91 - v90) >> 2) - 1;
      v76 = __p;
      v77 = __b;
      v87 = v95;
      v89 = v75;
      while (1)
      {
        if ((v75 & 0x80000000) != 0)
        {
          v81 = 0;
          if (!v64)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v78 = 0;
          v79 = v73;
          do
          {
            v80 = ldiv(v79, v74[v75]);
            v79 = v80.quot;
            v78 += v76[v75--] * v80.rem;
          }

          while (v75 != -1);
          v81 = v78;
          if (!v64)
          {
            goto LABEL_74;
          }
        }

        memset(v77, a4, v64);
LABEL_74:
        if (v63 >= 1)
        {
          v82 = 0;
          v83 = &v87[v81];
          do
          {
            if (v64)
            {
              for (i = 0; i != v64; ++i)
              {
                v85 = *v83++;
                v77[i] = (v85 != 0) | v77[i] & 1;
              }
            }

            ++v82;
          }

          while (v82 != v63);
        }

        v77 += v64;
        __b = v77;
        v73 += v64;
        v75 = v89;
        if (v65 <= v73)
        {
          goto LABEL_84;
        }
      }
    }

    v55 = *(v98 - 1);
    v56 = *(v100 - 1);
    v98 -= 4;
    v100 -= 8;
    v57 = *(v10 + 48);
    if (v57)
    {
      LODWORD(v58) = 0;
      do
      {
        if (v56)
        {
          memset(v11, a4, v56);
        }

        if (v55 >= 1)
        {
          v59 = 0;
          v60 = v9;
          do
          {
            if (v56)
            {
              for (j = 0; j != v56; ++j)
              {
                v62 = *v60++;
                v11[j] = (v62 != 0) | v11[j] & 1;
              }
            }

            ++v59;
          }

          while (v59 != v55);
        }

        v9 += v56 * v55;
        v11 += v56;
        __b = v11;
        v95 = v9;
        v58 = v58 + v56;
      }

      while (v58 < v57);
    }
  }

LABEL_88:
  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  v86 = *MEMORY[0x277D85DE8];
}

void sub_25A7FE518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::ReductionPlan::~ReductionPlan(mlx::core::ReductionPlan *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<signed char,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<signed char,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04188;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<signed char,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<signed char,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__invoke_void_return_wrapper<void,true>::__call[abi:ne200100]<void mlx::core::reduction_op<signed char,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1} &,int>(uint64_t result, int *a2)
{
  v2 = **(result + 24);
  v3 = **(result + 32);
  if (v2 >= 1)
  {
    v4 = (**result + **(result + 8) + *a2);
    v5 = v2 + 1;
    do
    {
      if (!*v4++)
      {
        v3 = 0;
      }

      --v5;
    }

    while (v5 > 1);
  }

  ***(result + 16) &= v3;
  return result;
}

uint64_t std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<void mlx::core::reduction_op<signed char,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<signed char,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04218;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<signed char,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<signed char,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = **(result + 32);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = **(result + 24);
    v5 = **(result + 40);
    v6 = (**(result + 8) + **(result + 16) + *a2);
    do
    {
      if (v5)
      {
        v7 = v4;
        v8 = v5;
        do
        {
          v9 = *v6++;
          v10 = *v7 & 1;
          if (!v9)
          {
            v10 = 0;
          }

          *v7++ = v10;
          --v8;
        }

        while (v8);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<signed char,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<signed char,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<signed char,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<signed char,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04298;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<signed char,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<signed char,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<signed char,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<signed char,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04318;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<signed char,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<signed char,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__invoke_void_return_wrapper<void,true>::__call[abi:ne200100]<void mlx::core::reduction_op<signed char,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1} &,int>(uint64_t result, int *a2)
{
  v2 = **(result + 24);
  v3 = **(result + 32);
  if (v2 >= 1)
  {
    v4 = (**result + **(result + 8) + *a2);
    v5 = v2 + 1;
    do
    {
      v6 = *v4++;
      v3 |= v6 != 0;
      --v5;
    }

    while (v5 > 1);
  }

  ***(result + 16) |= v3;
  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<signed char,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<signed char,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04398;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<signed char,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<signed char,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = **(result + 32);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = **(result + 24);
    v5 = **(result + 40);
    v6 = (**(result + 8) + **(result + 16) + *a2);
    do
    {
      if (v5)
      {
        v7 = v4;
        v8 = v5;
        do
        {
          v9 = *v6++;
          *v7 = (v9 != 0) | *v7 & 1;
          ++v7;
          --v8;
        }

        while (v8);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<signed char,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<signed char,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<signed char,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<signed char,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04418;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<signed char,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<signed char,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<short,BOOL,mlx::core::AndReduce>(uint64_t **a1, uint64_t *a2, int **a3, int a4)
{
  v106 = *MEMORY[0x277D85DE8];
  v102 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v97);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  __b = v11;
  v96 = v9;
  if (v97 == 1)
  {
    v16 = v99;
    if (v99 - v98 != 4)
    {
LABEL_21:
      v24 = *(v16 - 1);
      v99 = v16 - 4;
      v101 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v91);
      v25 = *(*a2 + 48);
      if (v99 != v98)
      {
        if (v25)
        {
          v26 = v91;
          v27 = (v92 - v91) >> 2;
          v28 = (v27 - 1);
          if (v27 - 1 >= 0)
          {
            v29 = 0;
            v30 = __p;
            quot = 0;
            do
            {
              v32 = ldiv(quot, v26[v28]);
              quot = v32.quot;
              v29 += v30[v28--] * v32.rem;
            }

            while (v28 != -1);
          }

          *__b = v102;
          v105 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      v34 = __b;
      if (v25)
      {
        v35 = 0;
        v36 = v91;
        v37 = ((v92 - v91) >> 2) - 1;
        v38 = __p;
        v89 = v96;
        do
        {
          if ((v37 & 0x80000000) != 0)
          {
            v43 = 0;
          }

          else
          {
            v39 = 0;
            v40 = v37;
            v41 = v35;
            do
            {
              v42 = ldiv(v41, v36[v40]);
              v41 = v42.quot;
              v39 += v38[v40--] * v42.rem;
            }

            while (v40 != -1);
            v43 = v39;
          }

          *v34 = a4;
          v44 = a4;
          if (v24 >= 1)
          {
            v45 = &v89[v43];
            v46 = v24 + 1;
            v44 = a4;
            do
            {
              if (!*v45++)
              {
                v44 = 0;
              }

              --v46;
            }

            while (v46 > 1);
          }

          *v34++ = v44 & a4;
          ++v35;
        }

        while (v35 != v25);
      }

LABEL_46:
      __b = v34;
LABEL_47:
      if (__p)
      {
        v94 = __p;
        operator delete(__p);
      }

      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      goto LABEL_51;
    }

    v17 = *(v10 + 48);
    if (v17)
    {
      v18 = 0;
      v19 = *v98;
      do
      {
        *v11 = a4;
        v20 = a4;
        if (v19 >= 1)
        {
          v21 = v19 + 1;
          v22 = v9;
          v20 = a4;
          do
          {
            if (!*v22++)
            {
              v20 = 0;
            }

            --v21;
          }

          while (v21 > 1);
        }

        *v11++ = v20 & a4;
        ++v18;
        v9 += v19;
      }

      while (v18 != v17);
    }
  }

  else
  {
    if (!v97)
    {
      *v11 = a4;
      v12 = *(v8 + 12);
      if (v12 < 1)
      {
        v14 = a4;
      }

      else
      {
        v13 = v12 + 1;
        v14 = a4;
        do
        {
          if (!*v9++)
          {
            v14 = 0;
          }

          --v13;
        }

        while (v13 > 1);
      }

      *v11 = v14 & a4;
      goto LABEL_51;
    }

    if ((v97 & 0xFFFFFFFD) == 1)
    {
      v16 = v99;
      goto LABEL_21;
    }

    if (v97 != 2)
    {
      if (v97 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v91);
        if (*(*a2 + 48))
        {
          v49 = v91;
          v50 = (v92 - v91) >> 2;
          v51 = (v50 - 1);
          if (v50 - 1 >= 0)
          {
            v52 = 0;
            v53 = __p;
            v54 = 0;
            do
            {
              v55 = ldiv(v54, v49[v51]);
              v54 = v55.quot;
              v52 += v53[v51--] * v55.rem;
            }

            while (v51 != -1);
          }

          v103 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      if (v97 != 4)
      {
        goto LABEL_51;
      }

      v33 = v99;
      goto LABEL_76;
    }

    v33 = v99;
    if (v99 - v98 != 4)
    {
LABEL_76:
      v65 = *(v33 - 1);
      v66 = *(v101 - 1);
      v99 = v33 - 4;
      v101 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v91);
      v67 = *(*a2 + 48);
      if (v99 != v98)
      {
        if (v67)
        {
          v68 = v91;
          v69 = (v92 - v91) >> 2;
          v70 = (v69 - 1);
          if (v69 - 1 >= 0)
          {
            v71 = 0;
            v72 = __p;
            v73 = 0;
            do
            {
              v74 = ldiv(v73, v68[v70]);
              v73 = v74.quot;
              v71 += v72[v70--] * v74.rem;
            }

            while (v70 != -1);
          }

          if (v66)
          {
            memset(__b, a4, v66);
          }

          v104 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      v34 = __b;
      if (!v67)
      {
        goto LABEL_46;
      }

      v75 = 0;
      v76 = v91;
      v77 = ((v92 - v91) >> 2) - 1;
      v78 = __p;
      v88 = v96;
      v90 = v77;
      while (1)
      {
        if ((v77 & 0x80000000) != 0)
        {
          v82 = 0;
          if (!v66)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v79 = 0;
          v80 = v75;
          do
          {
            v81 = ldiv(v80, v76[v77]);
            v80 = v81.quot;
            v79 += v78[v77--] * v81.rem;
          }

          while (v77 != -1);
          v82 = v79;
          if (!v66)
          {
            goto LABEL_91;
          }
        }

        memset(v34, a4, v66);
LABEL_91:
        if (v65 >= 1)
        {
          v83 = 0;
          v84 = &v88[v82];
          do
          {
            if (v66)
            {
              for (i = 0; i != v66; ++i)
              {
                v86 = *v84++;
                v87 = v34[i] & 1;
                if (!v86)
                {
                  v87 = 0;
                }

                v34[i] = v87;
              }
            }

            ++v83;
          }

          while (v83 != v65);
        }

        v34 += v66;
        v75 += v66;
        v77 = v90;
        if (v67 <= v75)
        {
          goto LABEL_46;
        }
      }
    }

    v56 = *(v99 - 1);
    v57 = *(v101 - 1);
    v99 -= 4;
    v101 -= 8;
    v58 = *(v10 + 48);
    if (v58)
    {
      LODWORD(v59) = 0;
      do
      {
        if (v57)
        {
          memset(v11, a4, v57);
        }

        if (v56 >= 1)
        {
          v60 = 0;
          v61 = v9;
          do
          {
            if (v57)
            {
              for (j = 0; j != v57; ++j)
              {
                v63 = *v61++;
                v64 = v11[j] & 1;
                if (!v63)
                {
                  v64 = 0;
                }

                v11[j] = v64;
              }
            }

            ++v60;
          }

          while (v60 != v56);
        }

        v9 += v57 * v56;
        v11 += v57;
        v59 = v59 + v57;
      }

      while (v59 < v58);
    }
  }

LABEL_51:
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_25A7FF66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<short,BOOL,mlx::core::OrReduce>(uint64_t **a1, uint64_t *a2, int **a3, int a4)
{
  v104 = *MEMORY[0x277D85DE8];
  v100 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v95);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  __b = v11;
  v94 = v9;
  if (v95 == 1)
  {
    v16 = v97;
    if (v97 - v96 != 4)
    {
LABEL_17:
      v24 = *(v16 - 1);
      v97 = v16 - 4;
      v99 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v89);
      v25 = *(*a2 + 48);
      if (v97 != v96)
      {
        if (v25)
        {
          v26 = v89;
          v27 = (v90 - v89) >> 2;
          v28 = (v27 - 1);
          if (v27 - 1 >= 0)
          {
            v29 = 0;
            v30 = __p;
            quot = 0;
            do
            {
              v32 = ldiv(quot, v26[v28]);
              quot = v32.quot;
              v29 += v30[v28--] * v32.rem;
            }

            while (v28 != -1);
          }

          *__b = v100;
          v103 = 0;
          operator new();
        }

        goto LABEL_41;
      }

      v34 = __b;
      if (v25)
      {
        v35 = 0;
        v36 = v89;
        v37 = ((v90 - v89) >> 2) - 1;
        v38 = __p;
        v87 = v94;
        do
        {
          if ((v37 & 0x80000000) != 0)
          {
            v43 = 0;
          }

          else
          {
            v39 = 0;
            v40 = v37;
            v41 = v35;
            do
            {
              v42 = ldiv(v41, v36[v40]);
              v41 = v42.quot;
              v39 += v38[v40--] * v42.rem;
            }

            while (v40 != -1);
            v43 = v39;
          }

          *v34 = a4;
          v44 = a4;
          if (v24 >= 1)
          {
            v45 = &v87[v43];
            v46 = v24 + 1;
            v44 = a4;
            do
            {
              v47 = *v45++;
              v44 |= v47 != 0;
              --v46;
            }

            while (v46 > 1);
          }

          *v34++ = v44 | a4;
          ++v35;
        }

        while (v35 != v25);
      }

LABEL_40:
      __b = v34;
LABEL_41:
      if (__p)
      {
        v92 = __p;
        operator delete(__p);
      }

      if (v89)
      {
        v90 = v89;
        operator delete(v89);
      }

      goto LABEL_45;
    }

    v17 = *(v10 + 48);
    if (v17)
    {
      v18 = 0;
      v19 = *v96;
      do
      {
        *v11 = a4;
        v20 = a4;
        if (v19 >= 1)
        {
          v21 = v19 + 1;
          v22 = v9;
          v20 = a4;
          do
          {
            v23 = *v22++;
            v20 |= v23 != 0;
            --v21;
          }

          while (v21 > 1);
        }

        *v11++ = v20 | a4;
        ++v18;
        v9 += v19;
      }

      while (v18 != v17);
    }
  }

  else
  {
    if (!v95)
    {
      *v11 = a4;
      v12 = *(v8 + 12);
      if (v12 < 1)
      {
        v14 = a4;
      }

      else
      {
        v13 = v12 + 1;
        v14 = a4;
        do
        {
          v15 = *v9++;
          v14 |= v15 != 0;
          --v13;
        }

        while (v13 > 1);
      }

      *v11 = v14 | a4;
      goto LABEL_45;
    }

    if ((v95 & 0xFFFFFFFD) == 1)
    {
      v16 = v97;
      goto LABEL_17;
    }

    if (v95 != 2)
    {
      if (v95 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v89);
        if (*(*a2 + 48))
        {
          v49 = v89;
          v50 = (v90 - v89) >> 2;
          v51 = (v50 - 1);
          if (v50 - 1 >= 0)
          {
            v52 = 0;
            v53 = __p;
            v54 = 0;
            do
            {
              v55 = ldiv(v54, v49[v51]);
              v54 = v55.quot;
              v52 += v53[v51--] * v55.rem;
            }

            while (v51 != -1);
          }

          v101 = 0;
          operator new();
        }

        goto LABEL_41;
      }

      if (v95 != 4)
      {
        goto LABEL_45;
      }

      v33 = v97;
      goto LABEL_68;
    }

    v33 = v97;
    if (v97 - v96 != 4)
    {
LABEL_68:
      v64 = *(v33 - 1);
      v65 = *(v99 - 1);
      v97 = v33 - 4;
      v99 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v89);
      v66 = *(*a2 + 48);
      if (v97 != v96)
      {
        if (v66)
        {
          v67 = v89;
          v68 = (v90 - v89) >> 2;
          v69 = (v68 - 1);
          if (v68 - 1 >= 0)
          {
            v70 = 0;
            v71 = __p;
            v72 = 0;
            do
            {
              v73 = ldiv(v72, v67[v69]);
              v72 = v73.quot;
              v70 += v71[v69--] * v73.rem;
            }

            while (v69 != -1);
          }

          if (v65)
          {
            memset(__b, a4, v65);
          }

          v102 = 0;
          operator new();
        }

        goto LABEL_41;
      }

      v34 = __b;
      if (!v66)
      {
        goto LABEL_40;
      }

      v74 = 0;
      v75 = v89;
      v76 = ((v90 - v89) >> 2) - 1;
      v77 = __p;
      v86 = v94;
      v88 = v76;
      while (1)
      {
        if ((v76 & 0x80000000) != 0)
        {
          v81 = 0;
          if (!v65)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v78 = 0;
          v79 = v74;
          do
          {
            v80 = ldiv(v79, v75[v76]);
            v79 = v80.quot;
            v78 += v77[v76--] * v80.rem;
          }

          while (v76 != -1);
          v81 = v78;
          if (!v65)
          {
            goto LABEL_83;
          }
        }

        memset(v34, a4, v65);
LABEL_83:
        if (v64 >= 1)
        {
          v82 = 0;
          v83 = &v86[v81];
          do
          {
            if (v65)
            {
              for (i = 0; i != v65; ++i)
              {
                v85 = *v83++;
                v34[i] = (v85 != 0) | v34[i] & 1;
              }
            }

            ++v82;
          }

          while (v82 != v64);
        }

        v34 += v65;
        v74 += v65;
        v76 = v88;
        if (v66 <= v74)
        {
          goto LABEL_40;
        }
      }
    }

    v56 = *(v97 - 1);
    v57 = *(v99 - 1);
    v97 -= 4;
    v99 -= 8;
    v58 = *(v10 + 48);
    if (v58)
    {
      LODWORD(v59) = 0;
      do
      {
        if (v57)
        {
          memset(v11, a4, v57);
        }

        if (v56 >= 1)
        {
          v60 = 0;
          v61 = v9;
          do
          {
            if (v57)
            {
              for (j = 0; j != v57; ++j)
              {
                v63 = *v61++;
                v11[j] = (v63 != 0) | v11[j] & 1;
              }
            }

            ++v60;
          }

          while (v60 != v56);
        }

        v9 += v57 * v56;
        v11 += v57;
        v59 = v59 + v57;
      }

      while (v59 < v58);
    }
  }

LABEL_45:
  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_25A7FFEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<void mlx::core::reduction_op<short,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<short,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04498;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<short,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<short,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__invoke_void_return_wrapper<void,true>::__call[abi:ne200100]<void mlx::core::reduction_op<short,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1} &,int>(uint64_t result, int *a2)
{
  v2 = **(result + 24);
  v3 = **(result + 32);
  if (v2 >= 1)
  {
    v4 = (**result + 2 * **(result + 8) + 2 * *a2);
    v5 = v2 + 1;
    do
    {
      if (!*v4++)
      {
        v3 = 0;
      }

      --v5;
    }

    while (v5 > 1);
  }

  ***(result + 16) &= v3;
  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<short,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<short,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04518;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<short,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<short,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = **(result + 32);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = **(result + 24);
    v5 = **(result + 40);
    v6 = (**(result + 8) + 2 * **(result + 16) + 2 * *a2);
    do
    {
      if (v5)
      {
        v7 = v4;
        v8 = v5;
        do
        {
          v9 = *v6++;
          v10 = *v7 & 1;
          if (!v9)
          {
            v10 = 0;
          }

          *v7++ = v10;
          --v8;
        }

        while (v8);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<short,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<short,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<short,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<short,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04598;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<short,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<short,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<short,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<short,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04618;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<short,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<short,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__invoke_void_return_wrapper<void,true>::__call[abi:ne200100]<void mlx::core::reduction_op<short,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1} &,int>(uint64_t result, int *a2)
{
  v2 = **(result + 24);
  v3 = **(result + 32);
  if (v2 >= 1)
  {
    v4 = (**result + 2 * **(result + 8) + 2 * *a2);
    v5 = v2 + 1;
    do
    {
      v6 = *v4++;
      v3 |= v6 != 0;
      --v5;
    }

    while (v5 > 1);
  }

  ***(result + 16) |= v3;
  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<short,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<short,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04698;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<short,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<short,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = **(result + 32);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = **(result + 24);
    v5 = **(result + 40);
    v6 = (**(result + 8) + 2 * **(result + 16) + 2 * *a2);
    do
    {
      if (v5)
      {
        v7 = v4;
        v8 = v5;
        do
        {
          v9 = *v6++;
          *v7 = (v9 != 0) | *v7 & 1;
          ++v7;
          --v8;
        }

        while (v8);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<short,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<short,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<short,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<short,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04718;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<short,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<short,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<int,BOOL,mlx::core::AndReduce>(uint64_t **a1, uint64_t *a2, int **a3, int a4)
{
  v106 = *MEMORY[0x277D85DE8];
  v102 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v97);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  __b = v11;
  v96 = v9;
  if (v97 == 1)
  {
    v16 = v99;
    if (v99 - v98 != 4)
    {
LABEL_21:
      v24 = *(v16 - 1);
      v99 = v16 - 4;
      v101 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v91);
      v25 = *(*a2 + 48);
      if (v99 != v98)
      {
        if (v25)
        {
          v26 = v91;
          v27 = (v92 - v91) >> 2;
          v28 = (v27 - 1);
          if (v27 - 1 >= 0)
          {
            v29 = 0;
            v30 = __p;
            quot = 0;
            do
            {
              v32 = ldiv(quot, v26[v28]);
              quot = v32.quot;
              v29 += v30[v28--] * v32.rem;
            }

            while (v28 != -1);
          }

          *__b = v102;
          v105 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      v34 = __b;
      if (v25)
      {
        v35 = 0;
        v36 = v91;
        v37 = ((v92 - v91) >> 2) - 1;
        v38 = __p;
        v89 = v96;
        do
        {
          if ((v37 & 0x80000000) != 0)
          {
            v43 = 0;
          }

          else
          {
            v39 = 0;
            v40 = v37;
            v41 = v35;
            do
            {
              v42 = ldiv(v41, v36[v40]);
              v41 = v42.quot;
              v39 += v38[v40--] * v42.rem;
            }

            while (v40 != -1);
            v43 = v39;
          }

          *v34 = a4;
          v44 = a4;
          if (v24 >= 1)
          {
            v45 = &v89[v43];
            v46 = v24 + 1;
            v44 = a4;
            do
            {
              if (!*v45++)
              {
                v44 = 0;
              }

              --v46;
            }

            while (v46 > 1);
          }

          *v34++ = v44 & a4;
          ++v35;
        }

        while (v35 != v25);
      }

LABEL_46:
      __b = v34;
LABEL_47:
      if (__p)
      {
        v94 = __p;
        operator delete(__p);
      }

      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      goto LABEL_51;
    }

    v17 = *(v10 + 48);
    if (v17)
    {
      v18 = 0;
      v19 = *v98;
      do
      {
        *v11 = a4;
        v20 = a4;
        if (v19 >= 1)
        {
          v21 = v19 + 1;
          v22 = v9;
          v20 = a4;
          do
          {
            if (!*v22++)
            {
              v20 = 0;
            }

            --v21;
          }

          while (v21 > 1);
        }

        *v11++ = v20 & a4;
        ++v18;
        v9 += v19;
      }

      while (v18 != v17);
    }
  }

  else
  {
    if (!v97)
    {
      *v11 = a4;
      v12 = *(v8 + 12);
      if (v12 < 1)
      {
        v14 = a4;
      }

      else
      {
        v13 = v12 + 1;
        v14 = a4;
        do
        {
          if (!*v9++)
          {
            v14 = 0;
          }

          --v13;
        }

        while (v13 > 1);
      }

      *v11 = v14 & a4;
      goto LABEL_51;
    }

    if ((v97 & 0xFFFFFFFD) == 1)
    {
      v16 = v99;
      goto LABEL_21;
    }

    if (v97 != 2)
    {
      if (v97 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v91);
        if (*(*a2 + 48))
        {
          v49 = v91;
          v50 = (v92 - v91) >> 2;
          v51 = (v50 - 1);
          if (v50 - 1 >= 0)
          {
            v52 = 0;
            v53 = __p;
            v54 = 0;
            do
            {
              v55 = ldiv(v54, v49[v51]);
              v54 = v55.quot;
              v52 += v53[v51--] * v55.rem;
            }

            while (v51 != -1);
          }

          v103 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      if (v97 != 4)
      {
        goto LABEL_51;
      }

      v33 = v99;
      goto LABEL_76;
    }

    v33 = v99;
    if (v99 - v98 != 4)
    {
LABEL_76:
      v65 = *(v33 - 1);
      v66 = *(v101 - 1);
      v99 = v33 - 4;
      v101 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v91);
      v67 = *(*a2 + 48);
      if (v99 != v98)
      {
        if (v67)
        {
          v68 = v91;
          v69 = (v92 - v91) >> 2;
          v70 = (v69 - 1);
          if (v69 - 1 >= 0)
          {
            v71 = 0;
            v72 = __p;
            v73 = 0;
            do
            {
              v74 = ldiv(v73, v68[v70]);
              v73 = v74.quot;
              v71 += v72[v70--] * v74.rem;
            }

            while (v70 != -1);
          }

          if (v66)
          {
            memset(__b, a4, v66);
          }

          v104 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      v34 = __b;
      if (!v67)
      {
        goto LABEL_46;
      }

      v75 = 0;
      v76 = v91;
      v77 = ((v92 - v91) >> 2) - 1;
      v78 = __p;
      v88 = v96;
      v90 = v77;
      while (1)
      {
        if ((v77 & 0x80000000) != 0)
        {
          v82 = 0;
          if (!v66)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v79 = 0;
          v80 = v75;
          do
          {
            v81 = ldiv(v80, v76[v77]);
            v80 = v81.quot;
            v79 += v78[v77--] * v81.rem;
          }

          while (v77 != -1);
          v82 = v79;
          if (!v66)
          {
            goto LABEL_91;
          }
        }

        memset(v34, a4, v66);
LABEL_91:
        if (v65 >= 1)
        {
          v83 = 0;
          v84 = &v88[v82];
          do
          {
            if (v66)
            {
              for (i = 0; i != v66; ++i)
              {
                v86 = *v84++;
                v87 = v34[i] & 1;
                if (!v86)
                {
                  v87 = 0;
                }

                v34[i] = v87;
              }
            }

            ++v83;
          }

          while (v83 != v65);
        }

        v34 += v66;
        v75 += v66;
        v77 = v90;
        if (v67 <= v75)
        {
          goto LABEL_46;
        }
      }
    }

    v56 = *(v99 - 1);
    v57 = *(v101 - 1);
    v99 -= 4;
    v101 -= 8;
    v58 = *(v10 + 48);
    if (v58)
    {
      LODWORD(v59) = 0;
      do
      {
        if (v57)
        {
          memset(v11, a4, v57);
        }

        if (v56 >= 1)
        {
          v60 = 0;
          v61 = v9;
          do
          {
            if (v57)
            {
              for (j = 0; j != v57; ++j)
              {
                v63 = *v61++;
                v64 = v11[j] & 1;
                if (!v63)
                {
                  v64 = 0;
                }

                v11[j] = v64;
              }
            }

            ++v60;
          }

          while (v60 != v56);
        }

        v9 += v57 * v56;
        v11 += v57;
        v59 = v59 + v57;
      }

      while (v59 < v58);
    }
  }

LABEL_51:
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_25A800F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<int,BOOL,mlx::core::OrReduce>(uint64_t **a1, uint64_t *a2, int **a3, int a4)
{
  v104 = *MEMORY[0x277D85DE8];
  v100 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v95);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  __b = v11;
  v94 = v9;
  if (v95 == 1)
  {
    v16 = v97;
    if (v97 - v96 != 4)
    {
LABEL_17:
      v24 = *(v16 - 1);
      v97 = v16 - 4;
      v99 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v89);
      v25 = *(*a2 + 48);
      if (v97 != v96)
      {
        if (v25)
        {
          v26 = v89;
          v27 = (v90 - v89) >> 2;
          v28 = (v27 - 1);
          if (v27 - 1 >= 0)
          {
            v29 = 0;
            v30 = __p;
            quot = 0;
            do
            {
              v32 = ldiv(quot, v26[v28]);
              quot = v32.quot;
              v29 += v30[v28--] * v32.rem;
            }

            while (v28 != -1);
          }

          *__b = v100;
          v103 = 0;
          operator new();
        }

        goto LABEL_41;
      }

      v34 = __b;
      if (v25)
      {
        v35 = 0;
        v36 = v89;
        v37 = ((v90 - v89) >> 2) - 1;
        v38 = __p;
        v87 = v94;
        do
        {
          if ((v37 & 0x80000000) != 0)
          {
            v43 = 0;
          }

          else
          {
            v39 = 0;
            v40 = v37;
            v41 = v35;
            do
            {
              v42 = ldiv(v41, v36[v40]);
              v41 = v42.quot;
              v39 += v38[v40--] * v42.rem;
            }

            while (v40 != -1);
            v43 = v39;
          }

          *v34 = a4;
          v44 = a4;
          if (v24 >= 1)
          {
            v45 = &v87[v43];
            v46 = v24 + 1;
            v44 = a4;
            do
            {
              v47 = *v45++;
              v44 |= v47 != 0;
              --v46;
            }

            while (v46 > 1);
          }

          *v34++ = v44 | a4;
          ++v35;
        }

        while (v35 != v25);
      }

LABEL_40:
      __b = v34;
LABEL_41:
      if (__p)
      {
        v92 = __p;
        operator delete(__p);
      }

      if (v89)
      {
        v90 = v89;
        operator delete(v89);
      }

      goto LABEL_45;
    }

    v17 = *(v10 + 48);
    if (v17)
    {
      v18 = 0;
      v19 = *v96;
      do
      {
        *v11 = a4;
        v20 = a4;
        if (v19 >= 1)
        {
          v21 = v19 + 1;
          v22 = v9;
          v20 = a4;
          do
          {
            v23 = *v22++;
            v20 |= v23 != 0;
            --v21;
          }

          while (v21 > 1);
        }

        *v11++ = v20 | a4;
        ++v18;
        v9 += v19;
      }

      while (v18 != v17);
    }
  }

  else
  {
    if (!v95)
    {
      *v11 = a4;
      v12 = *(v8 + 12);
      if (v12 < 1)
      {
        v14 = a4;
      }

      else
      {
        v13 = v12 + 1;
        v14 = a4;
        do
        {
          v15 = *v9++;
          v14 |= v15 != 0;
          --v13;
        }

        while (v13 > 1);
      }

      *v11 = v14 | a4;
      goto LABEL_45;
    }

    if ((v95 & 0xFFFFFFFD) == 1)
    {
      v16 = v97;
      goto LABEL_17;
    }

    if (v95 != 2)
    {
      if (v95 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v89);
        if (*(*a2 + 48))
        {
          v49 = v89;
          v50 = (v90 - v89) >> 2;
          v51 = (v50 - 1);
          if (v50 - 1 >= 0)
          {
            v52 = 0;
            v53 = __p;
            v54 = 0;
            do
            {
              v55 = ldiv(v54, v49[v51]);
              v54 = v55.quot;
              v52 += v53[v51--] * v55.rem;
            }

            while (v51 != -1);
          }

          v101 = 0;
          operator new();
        }

        goto LABEL_41;
      }

      if (v95 != 4)
      {
        goto LABEL_45;
      }

      v33 = v97;
      goto LABEL_68;
    }

    v33 = v97;
    if (v97 - v96 != 4)
    {
LABEL_68:
      v64 = *(v33 - 1);
      v65 = *(v99 - 1);
      v97 = v33 - 4;
      v99 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v89);
      v66 = *(*a2 + 48);
      if (v97 != v96)
      {
        if (v66)
        {
          v67 = v89;
          v68 = (v90 - v89) >> 2;
          v69 = (v68 - 1);
          if (v68 - 1 >= 0)
          {
            v70 = 0;
            v71 = __p;
            v72 = 0;
            do
            {
              v73 = ldiv(v72, v67[v69]);
              v72 = v73.quot;
              v70 += v71[v69--] * v73.rem;
            }

            while (v69 != -1);
          }

          if (v65)
          {
            memset(__b, a4, v65);
          }

          v102 = 0;
          operator new();
        }

        goto LABEL_41;
      }

      v34 = __b;
      if (!v66)
      {
        goto LABEL_40;
      }

      v74 = 0;
      v75 = v89;
      v76 = ((v90 - v89) >> 2) - 1;
      v77 = __p;
      v86 = v94;
      v88 = v76;
      while (1)
      {
        if ((v76 & 0x80000000) != 0)
        {
          v81 = 0;
          if (!v65)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v78 = 0;
          v79 = v74;
          do
          {
            v80 = ldiv(v79, v75[v76]);
            v79 = v80.quot;
            v78 += v77[v76--] * v80.rem;
          }

          while (v76 != -1);
          v81 = v78;
          if (!v65)
          {
            goto LABEL_83;
          }
        }

        memset(v34, a4, v65);
LABEL_83:
        if (v64 >= 1)
        {
          v82 = 0;
          v83 = &v86[v81];
          do
          {
            if (v65)
            {
              for (i = 0; i != v65; ++i)
              {
                v85 = *v83++;
                v34[i] = (v85 != 0) | v34[i] & 1;
              }
            }

            ++v82;
          }

          while (v82 != v64);
        }

        v34 += v65;
        v74 += v65;
        v76 = v88;
        if (v66 <= v74)
        {
          goto LABEL_40;
        }
      }
    }

    v56 = *(v97 - 1);
    v57 = *(v99 - 1);
    v97 -= 4;
    v99 -= 8;
    v58 = *(v10 + 48);
    if (v58)
    {
      LODWORD(v59) = 0;
      do
      {
        if (v57)
        {
          memset(v11, a4, v57);
        }

        if (v56 >= 1)
        {
          v60 = 0;
          v61 = v9;
          do
          {
            if (v57)
            {
              for (j = 0; j != v57; ++j)
              {
                v63 = *v61++;
                v11[j] = (v63 != 0) | v11[j] & 1;
              }
            }

            ++v60;
          }

          while (v60 != v56);
        }

        v9 += v57 * v56;
        v11 += v57;
        v59 = v59 + v57;
      }

      while (v59 < v58);
    }
  }

LABEL_45:
  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_25A801764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04798;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__invoke_void_return_wrapper<void,true>::__call[abi:ne200100]<void mlx::core::reduction_op<int,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1} &,int>(uint64_t result, int *a2)
{
  v2 = **(result + 24);
  v3 = **(result + 32);
  if (v2 >= 1)
  {
    v4 = (**result + 4 * **(result + 8) + 4 * *a2);
    v5 = v2 + 1;
    do
    {
      if (!*v4++)
      {
        v3 = 0;
      }

      --v5;
    }

    while (v5 > 1);
  }

  ***(result + 16) &= v3;
  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04818;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = **(result + 32);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = **(result + 24);
    v5 = **(result + 40);
    v6 = (**(result + 8) + 4 * **(result + 16) + 4 * *a2);
    do
    {
      if (v5)
      {
        v7 = v4;
        v8 = v5;
        do
        {
          v9 = *v6++;
          v10 = *v7 & 1;
          if (!v9)
          {
            v10 = 0;
          }

          *v7++ = v10;
          --v8;
        }

        while (v8);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04898;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04918;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__invoke_void_return_wrapper<void,true>::__call[abi:ne200100]<void mlx::core::reduction_op<int,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1} &,int>(uint64_t result, int *a2)
{
  v2 = **(result + 24);
  v3 = **(result + 32);
  if (v2 >= 1)
  {
    v4 = (**result + 4 * **(result + 8) + 4 * *a2);
    v5 = v2 + 1;
    do
    {
      v6 = *v4++;
      v3 |= v6 != 0;
      --v5;
    }

    while (v5 > 1);
  }

  ***(result + 16) |= v3;
  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04998;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = **(result + 32);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = **(result + 24);
    v5 = **(result + 40);
    v6 = (**(result + 8) + 4 * **(result + 16) + 4 * *a2);
    do
    {
      if (v5)
      {
        v7 = v4;
        v8 = v5;
        do
        {
          v9 = *v6++;
          *v7 = (v9 != 0) | *v7 & 1;
          ++v7;
          --v8;
        }

        while (v8);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04A18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<long long,BOOL,mlx::core::AndReduce>(uint64_t **a1, uint64_t *a2, int **a3, int a4)
{
  v106 = *MEMORY[0x277D85DE8];
  v102 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v97);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  __b = v11;
  v96 = v9;
  if (v97 == 1)
  {
    v16 = v99;
    if (v99 - v98 != 4)
    {
LABEL_21:
      v24 = *(v16 - 1);
      v99 = v16 - 4;
      v101 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v91);
      v25 = *(*a2 + 48);
      if (v99 != v98)
      {
        if (v25)
        {
          v26 = v91;
          v27 = (v92 - v91) >> 2;
          v28 = (v27 - 1);
          if (v27 - 1 >= 0)
          {
            v29 = 0;
            v30 = __p;
            quot = 0;
            do
            {
              v32 = ldiv(quot, v26[v28]);
              quot = v32.quot;
              v29 += v30[v28--] * v32.rem;
            }

            while (v28 != -1);
          }

          *__b = v102;
          v105 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      v34 = __b;
      if (v25)
      {
        v35 = 0;
        v36 = v91;
        v37 = ((v92 - v91) >> 2) - 1;
        v38 = __p;
        v89 = v96;
        do
        {
          if ((v37 & 0x80000000) != 0)
          {
            v43 = 0;
          }

          else
          {
            v39 = 0;
            v40 = v37;
            v41 = v35;
            do
            {
              v42 = ldiv(v41, v36[v40]);
              v41 = v42.quot;
              v39 += v38[v40--] * v42.rem;
            }

            while (v40 != -1);
            v43 = v39;
          }

          *v34 = a4;
          v44 = a4;
          if (v24 >= 1)
          {
            v45 = &v89[v43];
            v46 = v24 + 1;
            v44 = a4;
            do
            {
              if (!*v45++)
              {
                v44 = 0;
              }

              --v46;
            }

            while (v46 > 1);
          }

          *v34++ = v44 & a4;
          ++v35;
        }

        while (v35 != v25);
      }

LABEL_46:
      __b = v34;
LABEL_47:
      if (__p)
      {
        v94 = __p;
        operator delete(__p);
      }

      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      goto LABEL_51;
    }

    v17 = *(v10 + 48);
    if (v17)
    {
      v18 = 0;
      v19 = *v98;
      do
      {
        *v11 = a4;
        v20 = a4;
        if (v19 >= 1)
        {
          v21 = v19 + 1;
          v22 = v9;
          v20 = a4;
          do
          {
            if (!*v22++)
            {
              v20 = 0;
            }

            --v21;
          }

          while (v21 > 1);
        }

        *v11++ = v20 & a4;
        ++v18;
        v9 += v19;
      }

      while (v18 != v17);
    }
  }

  else
  {
    if (!v97)
    {
      *v11 = a4;
      v12 = *(v8 + 12);
      if (v12 < 1)
      {
        v14 = a4;
      }

      else
      {
        v13 = v12 + 1;
        v14 = a4;
        do
        {
          if (!*v9++)
          {
            v14 = 0;
          }

          --v13;
        }

        while (v13 > 1);
      }

      *v11 = v14 & a4;
      goto LABEL_51;
    }

    if ((v97 & 0xFFFFFFFD) == 1)
    {
      v16 = v99;
      goto LABEL_21;
    }

    if (v97 != 2)
    {
      if (v97 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v91);
        if (*(*a2 + 48))
        {
          v49 = v91;
          v50 = (v92 - v91) >> 2;
          v51 = (v50 - 1);
          if (v50 - 1 >= 0)
          {
            v52 = 0;
            v53 = __p;
            v54 = 0;
            do
            {
              v55 = ldiv(v54, v49[v51]);
              v54 = v55.quot;
              v52 += v53[v51--] * v55.rem;
            }

            while (v51 != -1);
          }

          v103 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      if (v97 != 4)
      {
        goto LABEL_51;
      }

      v33 = v99;
      goto LABEL_76;
    }

    v33 = v99;
    if (v99 - v98 != 4)
    {
LABEL_76:
      v65 = *(v33 - 1);
      v66 = *(v101 - 1);
      v99 = v33 - 4;
      v101 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v91);
      v67 = *(*a2 + 48);
      if (v99 != v98)
      {
        if (v67)
        {
          v68 = v91;
          v69 = (v92 - v91) >> 2;
          v70 = (v69 - 1);
          if (v69 - 1 >= 0)
          {
            v71 = 0;
            v72 = __p;
            v73 = 0;
            do
            {
              v74 = ldiv(v73, v68[v70]);
              v73 = v74.quot;
              v71 += v72[v70--] * v74.rem;
            }

            while (v70 != -1);
          }

          if (v66)
          {
            memset(__b, a4, v66);
          }

          v104 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      v34 = __b;
      if (!v67)
      {
        goto LABEL_46;
      }

      v75 = 0;
      v76 = v91;
      v77 = ((v92 - v91) >> 2) - 1;
      v78 = __p;
      v88 = v96;
      v90 = v77;
      while (1)
      {
        if ((v77 & 0x80000000) != 0)
        {
          v82 = 0;
          if (!v66)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v79 = 0;
          v80 = v75;
          do
          {
            v81 = ldiv(v80, v76[v77]);
            v80 = v81.quot;
            v79 += v78[v77--] * v81.rem;
          }

          while (v77 != -1);
          v82 = v79;
          if (!v66)
          {
            goto LABEL_91;
          }
        }

        memset(v34, a4, v66);
LABEL_91:
        if (v65 >= 1)
        {
          v83 = 0;
          v84 = &v88[v82];
          do
          {
            if (v66)
            {
              for (i = 0; i != v66; ++i)
              {
                v86 = *v84++;
                v87 = v34[i] & 1;
                if (!v86)
                {
                  v87 = 0;
                }

                v34[i] = v87;
              }
            }

            ++v83;
          }

          while (v83 != v65);
        }

        v34 += v66;
        v75 += v66;
        v77 = v90;
        if (v67 <= v75)
        {
          goto LABEL_46;
        }
      }
    }

    v56 = *(v99 - 1);
    v57 = *(v101 - 1);
    v99 -= 4;
    v101 -= 8;
    v58 = *(v10 + 48);
    if (v58)
    {
      LODWORD(v59) = 0;
      do
      {
        if (v57)
        {
          memset(v11, a4, v57);
        }

        if (v56 >= 1)
        {
          v60 = 0;
          v61 = v9;
          do
          {
            if (v57)
            {
              for (j = 0; j != v57; ++j)
              {
                v63 = *v61++;
                v64 = v11[j] & 1;
                if (!v63)
                {
                  v64 = 0;
                }

                v11[j] = v64;
              }
            }

            ++v60;
          }

          while (v60 != v56);
        }

        v9 += v57 * v56;
        v11 += v57;
        v59 = v59 + v57;
      }

      while (v59 < v58);
    }
  }

LABEL_51:
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_25A8027F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<long long,BOOL,mlx::core::OrReduce>(uint64_t **a1, uint64_t *a2, int **a3, int a4)
{
  v104 = *MEMORY[0x277D85DE8];
  v100 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v95);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  __b = v11;
  v94 = v9;
  if (v95 == 1)
  {
    v16 = v97;
    if (v97 - v96 != 4)
    {
LABEL_17:
      v24 = *(v16 - 1);
      v97 = v16 - 4;
      v99 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v89);
      v25 = *(*a2 + 48);
      if (v97 != v96)
      {
        if (v25)
        {
          v26 = v89;
          v27 = (v90 - v89) >> 2;
          v28 = (v27 - 1);
          if (v27 - 1 >= 0)
          {
            v29 = 0;
            v30 = __p;
            quot = 0;
            do
            {
              v32 = ldiv(quot, v26[v28]);
              quot = v32.quot;
              v29 += v30[v28--] * v32.rem;
            }

            while (v28 != -1);
          }

          *__b = v100;
          v103 = 0;
          operator new();
        }

        goto LABEL_41;
      }

      v34 = __b;
      if (v25)
      {
        v35 = 0;
        v36 = v89;
        v37 = ((v90 - v89) >> 2) - 1;
        v38 = __p;
        v87 = v94;
        do
        {
          if ((v37 & 0x80000000) != 0)
          {
            v43 = 0;
          }

          else
          {
            v39 = 0;
            v40 = v37;
            v41 = v35;
            do
            {
              v42 = ldiv(v41, v36[v40]);
              v41 = v42.quot;
              v39 += v38[v40--] * v42.rem;
            }

            while (v40 != -1);
            v43 = v39;
          }

          *v34 = a4;
          v44 = a4;
          if (v24 >= 1)
          {
            v45 = &v87[v43];
            v46 = v24 + 1;
            v44 = a4;
            do
            {
              v47 = *v45++;
              v44 |= v47 != 0;
              --v46;
            }

            while (v46 > 1);
          }

          *v34++ = v44 | a4;
          ++v35;
        }

        while (v35 != v25);
      }

LABEL_40:
      __b = v34;
LABEL_41:
      if (__p)
      {
        v92 = __p;
        operator delete(__p);
      }

      if (v89)
      {
        v90 = v89;
        operator delete(v89);
      }

      goto LABEL_45;
    }

    v17 = *(v10 + 48);
    if (v17)
    {
      v18 = 0;
      v19 = *v96;
      do
      {
        *v11 = a4;
        v20 = a4;
        if (v19 >= 1)
        {
          v21 = v19 + 1;
          v22 = v9;
          v20 = a4;
          do
          {
            v23 = *v22++;
            v20 |= v23 != 0;
            --v21;
          }

          while (v21 > 1);
        }

        *v11++ = v20 | a4;
        ++v18;
        v9 += v19;
      }

      while (v18 != v17);
    }
  }

  else
  {
    if (!v95)
    {
      *v11 = a4;
      v12 = *(v8 + 12);
      if (v12 < 1)
      {
        v14 = a4;
      }

      else
      {
        v13 = v12 + 1;
        v14 = a4;
        do
        {
          v15 = *v9++;
          v14 |= v15 != 0;
          --v13;
        }

        while (v13 > 1);
      }

      *v11 = v14 | a4;
      goto LABEL_45;
    }

    if ((v95 & 0xFFFFFFFD) == 1)
    {
      v16 = v97;
      goto LABEL_17;
    }

    if (v95 != 2)
    {
      if (v95 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v89);
        if (*(*a2 + 48))
        {
          v49 = v89;
          v50 = (v90 - v89) >> 2;
          v51 = (v50 - 1);
          if (v50 - 1 >= 0)
          {
            v52 = 0;
            v53 = __p;
            v54 = 0;
            do
            {
              v55 = ldiv(v54, v49[v51]);
              v54 = v55.quot;
              v52 += v53[v51--] * v55.rem;
            }

            while (v51 != -1);
          }

          v101 = 0;
          operator new();
        }

        goto LABEL_41;
      }

      if (v95 != 4)
      {
        goto LABEL_45;
      }

      v33 = v97;
      goto LABEL_68;
    }

    v33 = v97;
    if (v97 - v96 != 4)
    {
LABEL_68:
      v64 = *(v33 - 1);
      v65 = *(v99 - 1);
      v97 = v33 - 4;
      v99 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v89);
      v66 = *(*a2 + 48);
      if (v97 != v96)
      {
        if (v66)
        {
          v67 = v89;
          v68 = (v90 - v89) >> 2;
          v69 = (v68 - 1);
          if (v68 - 1 >= 0)
          {
            v70 = 0;
            v71 = __p;
            v72 = 0;
            do
            {
              v73 = ldiv(v72, v67[v69]);
              v72 = v73.quot;
              v70 += v71[v69--] * v73.rem;
            }

            while (v69 != -1);
          }

          if (v65)
          {
            memset(__b, a4, v65);
          }

          v102 = 0;
          operator new();
        }

        goto LABEL_41;
      }

      v34 = __b;
      if (!v66)
      {
        goto LABEL_40;
      }

      v74 = 0;
      v75 = v89;
      v76 = ((v90 - v89) >> 2) - 1;
      v77 = __p;
      v86 = v94;
      v88 = v76;
      while (1)
      {
        if ((v76 & 0x80000000) != 0)
        {
          v81 = 0;
          if (!v65)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v78 = 0;
          v79 = v74;
          do
          {
            v80 = ldiv(v79, v75[v76]);
            v79 = v80.quot;
            v78 += v77[v76--] * v80.rem;
          }

          while (v76 != -1);
          v81 = v78;
          if (!v65)
          {
            goto LABEL_83;
          }
        }

        memset(v34, a4, v65);
LABEL_83:
        if (v64 >= 1)
        {
          v82 = 0;
          v83 = &v86[v81];
          do
          {
            if (v65)
            {
              for (i = 0; i != v65; ++i)
              {
                v85 = *v83++;
                v34[i] = (v85 != 0) | v34[i] & 1;
              }
            }

            ++v82;
          }

          while (v82 != v64);
        }

        v34 += v65;
        v74 += v65;
        v76 = v88;
        if (v66 <= v74)
        {
          goto LABEL_40;
        }
      }
    }

    v56 = *(v97 - 1);
    v57 = *(v99 - 1);
    v97 -= 4;
    v99 -= 8;
    v58 = *(v10 + 48);
    if (v58)
    {
      LODWORD(v59) = 0;
      do
      {
        if (v57)
        {
          memset(v11, a4, v57);
        }

        if (v56 >= 1)
        {
          v60 = 0;
          v61 = v9;
          do
          {
            if (v57)
            {
              for (j = 0; j != v57; ++j)
              {
                v63 = *v61++;
                v11[j] = (v63 != 0) | v11[j] & 1;
              }
            }

            ++v60;
          }

          while (v60 != v56);
        }

        v9 += v57 * v56;
        v11 += v57;
        v59 = v59 + v57;
      }

      while (v59 < v58);
    }
  }

LABEL_45:
  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_25A803028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04A98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__invoke_void_return_wrapper<void,true>::__call[abi:ne200100]<void mlx::core::reduction_op<long long,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1} &,int>(uint64_t result, int *a2)
{
  v2 = **(result + 24);
  v3 = **(result + 32);
  if (v2 >= 1)
  {
    v4 = (**result + 8 * **(result + 8) + 8 * *a2);
    v5 = v2 + 1;
    do
    {
      if (!*v4++)
      {
        v3 = 0;
      }

      --v5;
    }

    while (v5 > 1);
  }

  ***(result + 16) &= v3;
  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04B18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = **(result + 32);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = **(result + 24);
    v5 = **(result + 40);
    v6 = (**(result + 8) + 8 * **(result + 16) + 8 * *a2);
    do
    {
      if (v5)
      {
        v7 = v4;
        v8 = v5;
        do
        {
          v9 = *v6++;
          v10 = *v7 & 1;
          if (!v9)
          {
            v10 = 0;
          }

          *v7++ = v10;
          --v8;
        }

        while (v8);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04B98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,BOOL,mlx::core::AndReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04C18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__invoke_void_return_wrapper<void,true>::__call[abi:ne200100]<void mlx::core::reduction_op<long long,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1} &,int>(uint64_t result, int *a2)
{
  v2 = **(result + 24);
  v3 = **(result + 32);
  if (v2 >= 1)
  {
    v4 = (**result + 8 * **(result + 8) + 8 * *a2);
    v5 = v2 + 1;
    do
    {
      v6 = *v4++;
      v3 |= v6 != 0;
      --v5;
    }

    while (v5 > 1);
  }

  ***(result + 16) |= v3;
  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04C98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = **(result + 32);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = **(result + 24);
    v5 = **(result + 40);
    v6 = (**(result + 8) + 8 * **(result + 16) + 8 * *a2);
    do
    {
      if (v5)
      {
        v7 = v4;
        v8 = v5;
        do
        {
          v9 = *v6++;
          *v7 = (v9 != 0) | *v7 & 1;
          ++v7;
          --v8;
        }

        while (v8);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04D18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,BOOL,mlx::core::OrReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<signed char,int,mlx::core::SumReduce>(uint64_t **a1, uint64_t *a2, int **a3, unsigned int a4)
{
  v138 = *MEMORY[0x277D85DE8];
  v134 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v129);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v127 = v11;
  v128 = v9;
  if (v129 == 1)
  {
    v19 = v131;
    if (v131 - v130 != 4)
    {
      goto LABEL_19;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v130;
      v23 = vdupq_n_s32(a4);
      do
      {
        v24 = v23;
        v11->i32[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 8)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27++;
            v30 = vmovl_s8(v29);
            v25 = vaddw_high_s16(v25, v30);
            v24 = vaddw_s16(v24, *v30.i8);
            v26 = v28 - 8;
            v18 = v28 > 0xF;
            v28 -= 8;
          }

          while (v18);
        }

        v31 = vaddvq_s32(vaddq_s32(v24, v25)) + a4;
        v11->i32[0] = v31;
        if (v26 >= 1)
        {
          v32 = v26 + 1;
          do
          {
            v33 = v27->i8[0];
            v27 = (v27 + 1);
            v31 += v33;
            v11->i32[0] = v31;
            --v32;
          }

          while (v32 > 1);
        }

        ++v21;
        v11 = (v11 + 4);
        v9 = (v9 + v22);
        v127 = v11;
        v128 = v9;
      }

      while (v21 != v20);
    }
  }

  else
  {
    if (!v129)
    {
      v11->i32[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_n_s32(a4);
      v14 = v13;
      if (v12 < 8)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9++;
          v16 = vmovl_s8(v15);
          v14 = vaddw_high_s16(v14, v16);
          v13 = vaddw_s16(v13, *v16.i8);
          v17 = v12 - 8;
          v18 = v12 > 0xF;
          v12 -= 8;
        }

        while (v18);
      }

      v43 = vaddvq_s32(vaddq_s32(v13, v14)) + a4;
      v11->i32[0] = v43;
      if (v17 >= 1)
      {
        v44 = v17 + 1;
        do
        {
          v45 = v9->i8[0];
          v9 = (v9 + 1);
          v43 += v45;
          v11->i32[0] = v43;
          --v44;
        }

        while (v44 > 1);
      }

      goto LABEL_107;
    }

    if ((v129 & 0xFFFFFFFD) == 1)
    {
      v19 = v131;
LABEL_19:
      v34 = *(v19 - 1);
      v131 = v19 - 4;
      v133 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v123);
      v35 = *(*a2 + 48);
      if (v131 == v130)
      {
        if (v35)
        {
          v47 = 0;
          v48 = v123;
          v49 = ((v124 - v123) >> 2) - 1;
          v50 = __p;
          v51 = v127;
          v119 = v128;
          v120 = vdupq_n_s32(a4);
          do
          {
            if ((v49 & 0x80000000) != 0)
            {
              v56 = 0;
            }

            else
            {
              v52 = 0;
              v53 = v49;
              quot = v47;
              do
              {
                v55 = ldiv(quot, v48[v53]);
                quot = v55.quot;
                v52 += v50[v53--] * v55.rem;
              }

              while (v53 != -1);
              v56 = v52;
            }

            *v51 = a4;
            v57 = (v119 + v56);
            if (v34 < 8)
            {
              v59 = v120;
              v60 = v120;
              v63 = v34;
            }

            else
            {
              v58 = v34;
              v59 = v120;
              v60 = v120;
              do
              {
                v61 = *v57++;
                v62 = vmovl_s8(v61);
                v59 = vaddw_high_s16(v59, v62);
                v60 = vaddw_s16(v60, *v62.i8);
                v63 = v58 - 8;
                v18 = v58 > 0xF;
                v58 -= 8;
              }

              while (v18);
            }

            v64 = vaddvq_s32(vaddq_s32(v60, v59)) + a4;
            *v51 = v64;
            if (v63 >= 1)
            {
              v65 = v63 + 1;
              do
              {
                v66 = v57->i8[0];
                v57 = (v57 + 1);
                v64 += v66;
                *v51 = v64;
                --v65;
              }

              while (v65 > 1);
            }

            ++v47;
            v127 = ++v51;
          }

          while (v47 != v35);
        }
      }

      else if (v35)
      {
        v36 = v123;
        v37 = (v124 - v123) >> 2;
        v38 = (v37 - 1);
        if (v37 - 1 >= 0)
        {
          v39 = 0;
          v40 = __p;
          v41 = 0;
          do
          {
            v42 = ldiv(v41, v36[v38]);
            v41 = v42.quot;
            v39 += v40[v38--] * v42.rem;
          }

          while (v38 != -1);
        }

        v127->i32[0] = v134;
        v137 = 0;
        operator new();
      }

LABEL_103:
      if (__p)
      {
        v126 = __p;
        operator delete(__p);
      }

      if (v123)
      {
        v124 = v123;
        operator delete(v123);
      }

      goto LABEL_107;
    }

    if (v129 != 2)
    {
      if (v129 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v123);
        if (*(*a2 + 48))
        {
          v67 = v123;
          v68 = (v124 - v123) >> 2;
          v69 = (v68 - 1);
          if (v68 - 1 >= 0)
          {
            v70 = 0;
            v71 = __p;
            v72 = 0;
            do
            {
              v73 = ldiv(v72, v67[v69]);
              v72 = v73.quot;
              v70 += v71[v69--] * v73.rem;
            }

            while (v69 != -1);
          }

          v135 = 0;
          operator new();
        }

        goto LABEL_103;
      }

      if (v129 != 4)
      {
        goto LABEL_107;
      }

      v46 = v131;
      goto LABEL_70;
    }

    v46 = v131;
    if (v131 - v130 != 4)
    {
LABEL_70:
      v83 = *(v46 - 1);
      v84 = *(v133 - 1);
      v131 = v46 - 4;
      v133 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v123);
      v85 = *(*a2 + 48);
      if (v131 == v130)
      {
        if (v85)
        {
          v100 = 0;
          v101 = vdupq_n_s64(v84 - 1);
          v102 = xmmword_25A99B0C0;
          v103 = xmmword_25A99B0D0;
          v122 = v101;
          do
          {
            v104 = v123;
            v105 = (v124 - v123) >> 2;
            v106 = (v105 - 1);
            if (v105 - 1 < 0)
            {
              v111 = 0;
            }

            else
            {
              v107 = 0;
              v108 = __p;
              v109 = v100;
              do
              {
                v110 = ldiv(v109, v104[v106]);
                v109 = v110.quot;
                v107 += v108[v106--] * v110.rem;
              }

              while (v106 != -1);
              v111 = v107;
              v102 = xmmword_25A99B0C0;
              v101 = v122;
              v103 = xmmword_25A99B0D0;
            }

            v112 = v127;
            if (v84)
            {
              v113 = 0;
              v114 = &v127->u32[2];
              do
              {
                v115 = vdupq_n_s64(v113);
                v116 = vmovn_s64(vcgeq_u64(v101, vorrq_s8(v115, v103)));
                if (vuzp1_s16(v116, *v115.i8).u8[0])
                {
                  *(v114 - 2) = a4;
                }

                if (vuzp1_s16(v116, *&v115).i8[2])
                {
                  *(v114 - 1) = a4;
                }

                v117 = vmovn_s64(vcgeq_u64(v101, vorrq_s8(v115, v102)));
                if (vuzp1_s16(v117, v117).i32[1])
                {
                  *v114 = a4;
                  v114[1] = a4;
                }

                v113 += 4;
                v114 += 4;
              }

              while (((v84 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v113);
            }

            mlx::core::strided_reduce<signed char,int,mlx::core::SumReduce>((v128 + v111), v112, v83, v84);
            v127 = (v127 + 4 * v84);
            v100 += v84;
            v102 = xmmword_25A99B0C0;
            v101 = v122;
            v103 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v100);
        }
      }

      else if (v85)
      {
        v86 = xmmword_25A99B0C0;
        v87 = xmmword_25A99B0D0;
        v88 = v123;
        v89 = (v124 - v123) >> 2;
        v90 = (v89 - 1);
        if (v89 - 1 >= 0)
        {
          v91 = 0;
          v92 = __p;
          v93 = 0;
          do
          {
            v94 = ldiv(v93, v88[v90]);
            v93 = v94.quot;
            v91 += v92[v90--] * v94.rem;
          }

          while (v90 != -1);
          v87 = xmmword_25A99B0D0;
          v86 = xmmword_25A99B0C0;
        }

        if (v84)
        {
          v95 = 0;
          v96 = vdupq_n_s64(v84 - 1);
          v97 = &v127->u32[2];
          do
          {
            v98 = vdupq_n_s64(v95);
            v99 = vmovn_s64(vcgeq_u64(v96, vorrq_s8(v98, v87)));
            if (vuzp1_s16(v99, *v96.i8).u8[0])
            {
              *(v97 - 2) = a4;
            }

            if (vuzp1_s16(v99, *&v96).i8[2])
            {
              *(v97 - 1) = a4;
            }

            if (vuzp1_s16(*&v96, vmovn_s64(vcgeq_u64(v96, vorrq_s8(v98, v86)))).i32[1])
            {
              *v97 = a4;
              v97[1] = a4;
            }

            v95 += 4;
            v97 += 4;
          }

          while (((v84 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v95);
        }

        v136 = 0;
        operator new();
      }

      goto LABEL_103;
    }

    v74 = *(v131 - 1);
    v75 = *(v133 - 1);
    v131 -= 4;
    v133 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v76) = 0;
      v77 = v75 * v74;
      v121 = vdupq_n_s64(v75 - 1);
      do
      {
        if (v75)
        {
          v78 = 0;
          v79 = &v11->u32[2];
          do
          {
            v80 = vdupq_n_s64(v78);
            v81 = vmovn_s64(vcgeq_u64(v121, vorrq_s8(v80, xmmword_25A99B0D0)));
            if (vuzp1_s16(v81, *v80.i8).u8[0])
            {
              *(v79 - 2) = a4;
            }

            if (vuzp1_s16(v81, *&v80).i8[2])
            {
              *(v79 - 1) = a4;
            }

            v82 = vmovn_s64(vcgeq_u64(v121, vorrq_s8(v80, xmmword_25A99B0C0)));
            if (vuzp1_s16(v82, v82).i32[1])
            {
              *v79 = a4;
              v79[1] = a4;
            }

            v78 += 4;
            v79 += 4;
          }

          while (((v75 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v78);
        }

        mlx::core::strided_reduce<signed char,int,mlx::core::SumReduce>(v9, v11, v74, v75);
        v9 = (v128 + v77);
        v11 = (v127 + 4 * v75);
        v127 = v11;
        v128 = (v128 + v77);
        v76 = v76 + v75;
      }

      while (v76 < *(*a2 + 48));
    }
  }

LABEL_107:
  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  v118 = *MEMORY[0x277D85DE8];
}

void mlx::core::reduction_op<signed char,int,mlx::core::ProdReduce>(uint64_t **a1, uint64_t *a2, int **a3, unsigned int a4)
{
  v105 = *MEMORY[0x277D85DE8];
  v101 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v96);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v94 = v11;
  v95 = v9;
  if (v96 == 1)
  {
    v12 = v98;
    if (v98 - v97 != 4)
    {
      goto LABEL_11;
    }

    if (*(v10 + 48))
    {
      v13 = 0;
      v14 = *v97;
      do
      {
        v11->i32[0] = a4;
        mlx::core::contiguous_reduce<signed char,int,mlx::core::ProdReduce>(v9, v11, v14, a4);
        ++v13;
        v11 = (v94->i64 + 4);
        v9 = (v95 + v14);
        v94 = (v94 + 4);
        v95 = (v95 + v14);
      }

      while (*(*a2 + 48) > v13);
    }
  }

  else
  {
    if (!v96)
    {
      v11->i32[0] = a4;
      mlx::core::contiguous_reduce<signed char,int,mlx::core::ProdReduce>(v9, v11, *(v8 + 12), a4);
      goto LABEL_86;
    }

    if ((v96 & 0xFFFFFFFD) == 1)
    {
      v12 = v98;
LABEL_11:
      v15 = *(v12 - 1);
      v98 = v12 - 4;
      v100 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v90);
      v16 = *(*a2 + 48);
      if (v98 == v97)
      {
        if (v16)
        {
          v25 = 0;
          do
          {
            v26 = v90;
            v27 = (v91 - v90) >> 2;
            v28 = (v27 - 1);
            if (v27 - 1 < 0)
            {
              v34 = 0;
              v32 = a2;
            }

            else
            {
              v29 = 0;
              v30 = __p;
              quot = v25;
              v32 = a2;
              do
              {
                v33 = ldiv(quot, v26[v28]);
                quot = v33.quot;
                v29 += v30[v28--] * v33.rem;
              }

              while (v28 != -1);
              v34 = v29;
            }

            v35 = v94;
            v94->i32[0] = a4;
            mlx::core::contiguous_reduce<signed char,int,mlx::core::ProdReduce>((v95 + v34), v35, v15, a4);
            ++v25;
            v94 = (v94 + 4);
          }

          while (*(*v32 + 48) > v25);
        }
      }

      else if (v16)
      {
        v17 = v90;
        v18 = (v91 - v90) >> 2;
        v19 = (v18 - 1);
        if (v18 - 1 >= 0)
        {
          v20 = 0;
          v21 = __p;
          v22 = 0;
          do
          {
            v23 = ldiv(v22, v17[v19]);
            v22 = v23.quot;
            v20 += v21[v19--] * v23.rem;
          }

          while (v19 != -1);
        }

        v94->i32[0] = v101;
        v104 = 0;
        operator new();
      }

LABEL_82:
      if (__p)
      {
        v93 = __p;
        operator delete(__p);
      }

      if (v90)
      {
        v91 = v90;
        operator delete(v90);
      }

      goto LABEL_86;
    }

    if (v96 != 2)
    {
      if (v96 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v90);
        if (*(*a2 + 48))
        {
          v36 = v90;
          v37 = (v91 - v90) >> 2;
          v38 = (v37 - 1);
          if (v37 - 1 >= 0)
          {
            v39 = 0;
            v40 = __p;
            v41 = 0;
            do
            {
              v42 = ldiv(v41, v36[v38]);
              v41 = v42.quot;
              v39 += v40[v38--] * v42.rem;
            }

            while (v38 != -1);
          }

          v102 = 0;
          operator new();
        }

        goto LABEL_82;
      }

      if (v96 != 4)
      {
        goto LABEL_86;
      }

      v24 = v98;
      goto LABEL_49;
    }

    v24 = v98;
    if (v98 - v97 != 4)
    {
LABEL_49:
      v52 = *(v24 - 1);
      v53 = *(v100 - 1);
      v98 = v24 - 4;
      v100 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v90);
      v54 = *(*a2 + 48);
      if (v98 == v97)
      {
        if (v54)
        {
          v69 = 0;
          v70 = vdupq_n_s64(v53 - 1);
          v71 = xmmword_25A99B0C0;
          v72 = xmmword_25A99B0D0;
          v89 = v70;
          do
          {
            v73 = v90;
            v74 = (v91 - v90) >> 2;
            v75 = (v74 - 1);
            if (v74 - 1 < 0)
            {
              v80 = 0;
            }

            else
            {
              v76 = 0;
              v77 = __p;
              v78 = v69;
              do
              {
                v79 = ldiv(v78, v73[v75]);
                v78 = v79.quot;
                v76 += v77[v75--] * v79.rem;
              }

              while (v75 != -1);
              v80 = v76;
              v71 = xmmword_25A99B0C0;
              v70 = v89;
              v72 = xmmword_25A99B0D0;
            }

            v81 = v94;
            if (v53)
            {
              v82 = 0;
              v83 = &v94->u32[2];
              do
              {
                v84 = vdupq_n_s64(v82);
                v85 = vmovn_s64(vcgeq_u64(v70, vorrq_s8(v84, v72)));
                if (vuzp1_s16(v85, *v84.i8).u8[0])
                {
                  *(v83 - 2) = a4;
                }

                if (vuzp1_s16(v85, *&v84).i8[2])
                {
                  *(v83 - 1) = a4;
                }

                v86 = vmovn_s64(vcgeq_u64(v70, vorrq_s8(v84, v71)));
                if (vuzp1_s16(v86, v86).i32[1])
                {
                  *v83 = a4;
                  v83[1] = a4;
                }

                v82 += 4;
                v83 += 4;
              }

              while (((v53 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v82);
            }

            mlx::core::strided_reduce<signed char,int,mlx::core::ProdReduce>((v95 + v80), v81, v52, v53);
            v94 = (v94 + 4 * v53);
            v69 += v53;
            v71 = xmmword_25A99B0C0;
            v70 = v89;
            v72 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v69);
        }
      }

      else if (v54)
      {
        v55 = xmmword_25A99B0C0;
        v56 = xmmword_25A99B0D0;
        v57 = v90;
        v58 = (v91 - v90) >> 2;
        v59 = (v58 - 1);
        if (v58 - 1 >= 0)
        {
          v60 = 0;
          v61 = __p;
          v62 = 0;
          do
          {
            v63 = ldiv(v62, v57[v59]);
            v62 = v63.quot;
            v60 += v61[v59--] * v63.rem;
          }

          while (v59 != -1);
          v56 = xmmword_25A99B0D0;
          v55 = xmmword_25A99B0C0;
        }

        if (v53)
        {
          v64 = 0;
          v65 = vdupq_n_s64(v53 - 1);
          v66 = &v94->u32[2];
          do
          {
            v67 = vdupq_n_s64(v64);
            v68 = vmovn_s64(vcgeq_u64(v65, vorrq_s8(v67, v56)));
            if (vuzp1_s16(v68, *v65.i8).u8[0])
            {
              *(v66 - 2) = a4;
            }

            if (vuzp1_s16(v68, *&v65).i8[2])
            {
              *(v66 - 1) = a4;
            }

            if (vuzp1_s16(*&v65, vmovn_s64(vcgeq_u64(v65, vorrq_s8(v67, v55)))).i32[1])
            {
              *v66 = a4;
              v66[1] = a4;
            }

            v64 += 4;
            v66 += 4;
          }

          while (((v53 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v64);
        }

        v103 = 0;
        operator new();
      }

      goto LABEL_82;
    }

    v43 = *(v98 - 1);
    v44 = *(v100 - 1);
    v98 -= 4;
    v100 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v45) = 0;
      v46 = v44 * v43;
      v88 = vdupq_n_s64(v44 - 1);
      do
      {
        if (v44)
        {
          v47 = 0;
          v48 = &v11->u32[2];
          do
          {
            v49 = vdupq_n_s64(v47);
            v50 = vmovn_s64(vcgeq_u64(v88, vorrq_s8(v49, xmmword_25A99B0D0)));
            if (vuzp1_s16(v50, *v49.i8).u8[0])
            {
              *(v48 - 2) = a4;
            }

            if (vuzp1_s16(v50, *&v49).i8[2])
            {
              *(v48 - 1) = a4;
            }

            v51 = vmovn_s64(vcgeq_u64(v88, vorrq_s8(v49, xmmword_25A99B0C0)));
            if (vuzp1_s16(v51, v51).i32[1])
            {
              *v48 = a4;
              v48[1] = a4;
            }

            v47 += 4;
            v48 += 4;
          }

          while (((v44 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v47);
        }

        mlx::core::strided_reduce<signed char,int,mlx::core::ProdReduce>(v9, v11, v43, v44);
        v9 = (v95 + v46);
        v11 = (v94 + 4 * v44);
        v94 = v11;
        v95 = (v95 + v46);
        v45 = v45 + v44;
      }

      while (v45 < *(*a2 + 48));
    }
  }

LABEL_86:
  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  v87 = *MEMORY[0x277D85DE8];
}

int8x8_t *mlx::core::strided_reduce<signed char,int,mlx::core::SumReduce>(int8x8_t *result, int32x4_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 8)
      {
        do
        {
          v7 = *result++;
          v8 = vmovl_s8(v7);
          v9 = vaddw_high_s16(v5[1], v8);
          *v5 = vaddw_s16(*v5, *v8.i8);
          v5[1] = v9;
          v5 += 2;
          v6 -= 8;
        }

        while (v6 > 7);
      }

      for (; v6; --v6)
      {
        v10 = result->i8[0];
        result = (result + 1);
        v5->i32[0] += v10;
        v5 = (v5 + 4);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<signed char,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<signed char,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04D98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<signed char,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<signed char,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + **(result + 16) + *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_f32(v5);
  v7 = v6;
  if (v4 < 8)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2++;
      v9 = vmovl_s8(v8);
      v7 = vaddw_high_s16(v7, v9);
      v6 = vaddw_s16(v6, *v9.i8);
      v10 = v4 - 8;
      v11 = v4 > 0xF;
      v4 -= 8;
    }

    while (v11);
  }

  v12 = vaddvq_s32(vaddq_s32(v6, v7)) + *v3;
  *v3 = v12;
  if (v10 >= 1)
  {
    v13 = v10 + 1;
    do
    {
      v14 = v2->i8[0];
      v2 = (v2 + 1);
      v12 += v14;
      *v3 = v12;
      --v13;
    }

    while (v13 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<signed char,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<signed char,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<signed char,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<signed char,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04E18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<signed char,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<signed char,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<signed char,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<signed char,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04E98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<signed char,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<signed char,int,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int8x8_t *mlx::core::contiguous_reduce<signed char,int,mlx::core::ProdReduce>(int8x8_t *result, unsigned __int32 *a2, int a3, unsigned int a4)
{
  v4 = vdupq_n_s32(a4);
  v5 = v4;
  if (a3 < 8)
  {
    v8 = a3;
  }

  else
  {
    do
    {
      v6 = *result++;
      v7 = vmovl_s8(v6);
      v5 = vmulq_s32(v5, vmovl_high_s16(v7));
      v4 = vmulq_s32(v4, vmovl_s16(*v7.i8));
      v8 = a3 - 8;
      v9 = a3 > 0xF;
      a3 -= 8;
    }

    while (v9);
  }

  v10 = vmulq_s32(v5, v4);
  *v10.i8 = vmul_s32(*&vextq_s8(v10, v10, 8uLL), *v10.i8);
  v11 = vmul_lane_s32(*v10.i8, *v10.i8, 1).u32[0] * *a2;
  *a2 = v11;
  if (v8 >= 1)
  {
    v12 = v8 + 1;
    do
    {
      v13 = result->i8[0];
      result = (result + 1);
      v11 *= v13;
      *a2 = v11;
      --v12;
    }

    while (v12 > 1);
  }

  return result;
}

int8x8_t *mlx::core::strided_reduce<signed char,int,mlx::core::ProdReduce>(int8x8_t *result, int32x4_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 8)
      {
        do
        {
          v7 = *result++;
          v8 = vmovl_s8(v7);
          v9 = vmulq_s32(v5[1], vmovl_high_s16(v8));
          *v5 = vmulq_s32(*v5, vmovl_s16(*v8.i8));
          v5[1] = v9;
          v5 += 2;
          v6 -= 8;
        }

        while (v6 > 7);
      }

      for (; v6; --v6)
      {
        v10 = result->i8[0];
        result = (result + 1);
        v5->i32[0] *= v10;
        v5 = (v5 + 4);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<signed char,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<signed char,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04F18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<signed char,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<signed char,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<signed char,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<signed char,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C04F98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<signed char,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<signed char,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<signed char,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<signed char,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C05018;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<signed char,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<signed char,int,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<short,int,mlx::core::SumReduce>(uint64_t **a1, uint64_t *a2, int **a3, unsigned int a4)
{
  v134 = *MEMORY[0x277D85DE8];
  v130 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v125);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v123 = v11;
  v124 = v9;
  if (v125 == 1)
  {
    v18 = v127;
    if (v127 - v126 != 4)
    {
      goto LABEL_20;
    }

    v19 = *(v10 + 48);
    if (v19)
    {
      v20 = 0;
      v21 = *v126;
      v22 = vdupq_n_s32(a4);
      do
      {
        v23 = v22;
        v11->i32[0] = a4;
        v24 = v22;
        v25 = v21;
        v26 = v9;
        if (v21 >= 8)
        {
          v26 = v9;
          v27 = v21;
          v23 = v22;
          v24 = v22;
          do
          {
            v28 = *v26++;
            v24 = vaddw_high_s16(v24, v28);
            v23 = vaddw_s16(v23, *v28.i8);
            v25 = v27 - 8;
            v17 = v27 > 0xF;
            v27 -= 8;
          }

          while (v17);
        }

        v29 = vaddvq_s32(vaddq_s32(v23, v24)) + a4;
        v11->i32[0] = v29;
        if (v25 >= 1)
        {
          v30 = v25 + 1;
          do
          {
            v31 = v26->i16[0];
            v26 = (v26 + 2);
            v29 += v31;
            --v30;
          }

          while (v30 > 1);
          v11->i32[0] = v29;
        }

        ++v20;
        v11 = (v11 + 4);
        v9 = (v9 + 2 * v21);
      }

      while (v20 != v19);
    }

    v123 = v11;
    v124 = v9;
  }

  else
  {
    if (!v125)
    {
      v11->i32[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_n_s32(a4);
      v14 = v13;
      if (v12 < 8)
      {
        v16 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9++;
          v14 = vaddw_high_s16(v14, v15);
          v13 = vaddw_s16(v13, *v15.i8);
          v16 = v12 - 8;
          v17 = v12 > 0xF;
          v12 -= 8;
        }

        while (v17);
      }

      v41 = vaddvq_s32(vaddq_s32(v13, v14)) + a4;
      v11->i32[0] = v41;
      if (v16 >= 1)
      {
        v42 = v16 + 1;
        do
        {
          v43 = v9->i16[0];
          v9 = (v9 + 2);
          v41 += v43;
          --v42;
        }

        while (v42 > 1);
        v11->i32[0] = v41;
      }

      goto LABEL_57;
    }

    if ((v125 & 0xFFFFFFFD) == 1)
    {
      v18 = v127;
LABEL_20:
      v32 = *(v18 - 1);
      v127 = v18 - 4;
      v129 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v119);
      v33 = *(*a2 + 48);
      if (v127 == v126)
      {
        v45 = v123;
        if (v33)
        {
          v46 = 0;
          v47 = v119;
          v48 = ((v120 - v119) >> 2) - 1;
          v49 = __p;
          v115 = v124;
          v116 = vdupq_n_s32(a4);
          do
          {
            if ((v48 & 0x80000000) != 0)
            {
              v54 = 0;
            }

            else
            {
              v50 = 0;
              v51 = v48;
              quot = v46;
              do
              {
                v53 = ldiv(quot, v47[v51]);
                quot = v53.quot;
                v50 += v49[v51--] * v53.rem;
              }

              while (v51 != -1);
              v54 = 2 * v50;
            }

            *v45 = a4;
            v55 = (v115 + v54);
            if (v32 < 8)
            {
              v57 = v116;
              v58 = v116;
              v60 = v32;
            }

            else
            {
              v56 = v32;
              v57 = v116;
              v58 = v116;
              do
              {
                v59 = *v55++;
                v57 = vaddw_high_s16(v57, v59);
                v58 = vaddw_s16(v58, *v59.i8);
                v60 = v56 - 8;
                v17 = v56 > 0xF;
                v56 -= 8;
              }

              while (v17);
            }

            v61 = vaddvq_s32(vaddq_s32(v58, v57)) + a4;
            *v45 = v61;
            if (v60 >= 1)
            {
              v62 = v60 + 1;
              do
              {
                v63 = v55->i16[0];
                v55 = (v55 + 2);
                v61 += v63;
                --v62;
              }

              while (v62 > 1);
              *v45 = v61;
            }

            ++v46;
            ++v45;
          }

          while (v46 != v33);
        }

        v123 = v45;
      }

      else if (v33)
      {
        v34 = v119;
        v35 = (v120 - v119) >> 2;
        v36 = (v35 - 1);
        if (v35 - 1 >= 0)
        {
          v37 = 0;
          v38 = __p;
          v39 = 0;
          do
          {
            v40 = ldiv(v39, v34[v36]);
            v39 = v40.quot;
            v37 += v38[v36--] * v40.rem;
          }

          while (v36 != -1);
        }

        v123->i32[0] = v130;
        v133 = 0;
        operator new();
      }

LABEL_53:
      if (__p)
      {
        v122 = __p;
        operator delete(__p);
      }

      if (v119)
      {
        v120 = v119;
        operator delete(v119);
      }

      goto LABEL_57;
    }

    if (v125 != 2)
    {
      if (v125 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v119);
        if (*(*a2 + 48))
        {
          v65 = v119;
          v66 = (v120 - v119) >> 2;
          v67 = (v66 - 1);
          if (v66 - 1 >= 0)
          {
            v68 = 0;
            v69 = __p;
            v70 = 0;
            do
            {
              v71 = ldiv(v70, v65[v67]);
              v70 = v71.quot;
              v68 += v69[v67--] * v71.rem;
            }

            while (v67 != -1);
          }

          v131 = 0;
          operator new();
        }

        goto LABEL_53;
      }

      if (v125 != 4)
      {
        goto LABEL_57;
      }

      v44 = v127;
      goto LABEL_81;
    }

    v44 = v127;
    if (v127 - v126 != 4)
    {
LABEL_81:
      v80 = *(v44 - 1);
      v81 = *(v129 - 1);
      v127 = v44 - 4;
      v129 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v119);
      v82 = *(*a2 + 48);
      if (v127 == v126)
      {
        if (v82)
        {
          v97 = 0;
          v98 = vdupq_n_s64(v81 - 1);
          v99 = xmmword_25A99B0C0;
          v100 = xmmword_25A99B0D0;
          v118 = v98;
          do
          {
            v101 = v119;
            v102 = (v120 - v119) >> 2;
            v103 = (v102 - 1);
            if (v102 - 1 < 0)
            {
              v108 = 0;
            }

            else
            {
              v104 = 0;
              v105 = __p;
              v106 = v97;
              do
              {
                v107 = ldiv(v106, v101[v103]);
                v106 = v107.quot;
                v104 += v105[v103--] * v107.rem;
              }

              while (v103 != -1);
              v108 = 2 * v104;
              v99 = xmmword_25A99B0C0;
              v98 = v118;
              v100 = xmmword_25A99B0D0;
            }

            v109 = v123;
            if (v81)
            {
              v110 = 0;
              v111 = &v123->u32[2];
              do
              {
                v112 = vdupq_n_s64(v110);
                v113 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(v112, v100)));
                if (vuzp1_s16(v113, *v112.i8).u8[0])
                {
                  *(v111 - 2) = a4;
                }

                if (vuzp1_s16(v113, *&v112).i8[2])
                {
                  *(v111 - 1) = a4;
                }

                v114 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(v112, v99)));
                if (vuzp1_s16(v114, v114).i32[1])
                {
                  *v111 = a4;
                  v111[1] = a4;
                }

                v110 += 4;
                v111 += 4;
              }

              while (((v81 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v110);
            }

            mlx::core::strided_reduce<short,int,mlx::core::SumReduce>((v124 + v108), v109, v80, v81);
            v123 = (v123 + 4 * v81);
            v97 += v81;
            v99 = xmmword_25A99B0C0;
            v98 = v118;
            v100 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v97);
        }
      }

      else if (v82)
      {
        v83 = xmmword_25A99B0C0;
        v84 = xmmword_25A99B0D0;
        v85 = v119;
        v86 = (v120 - v119) >> 2;
        v87 = (v86 - 1);
        if (v86 - 1 >= 0)
        {
          v88 = 0;
          v89 = __p;
          v90 = 0;
          do
          {
            v91 = ldiv(v90, v85[v87]);
            v90 = v91.quot;
            v88 += v89[v87--] * v91.rem;
          }

          while (v87 != -1);
          v84 = xmmword_25A99B0D0;
          v83 = xmmword_25A99B0C0;
        }

        if (v81)
        {
          v92 = 0;
          v93 = vdupq_n_s64(v81 - 1);
          v94 = &v123->u32[2];
          do
          {
            v95 = vdupq_n_s64(v92);
            v96 = vmovn_s64(vcgeq_u64(v93, vorrq_s8(v95, v84)));
            if (vuzp1_s16(v96, *v93.i8).u8[0])
            {
              *(v94 - 2) = a4;
            }

            if (vuzp1_s16(v96, *&v93).i8[2])
            {
              *(v94 - 1) = a4;
            }

            if (vuzp1_s16(*&v93, vmovn_s64(vcgeq_u64(v93, vorrq_s8(v95, v83)))).i32[1])
            {
              *v94 = a4;
              v94[1] = a4;
            }

            v92 += 4;
            v94 += 4;
          }

          while (((v81 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v92);
        }

        v132 = 0;
        operator new();
      }

      goto LABEL_53;
    }

    v72 = *(v127 - 1);
    v73 = *(v129 - 1);
    v127 -= 4;
    v129 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v74) = 0;
      v117 = vdupq_n_s64(v73 - 1);
      do
      {
        if (v73)
        {
          v75 = 0;
          v76 = &v11->u32[2];
          do
          {
            v77 = vdupq_n_s64(v75);
            v78 = vmovn_s64(vcgeq_u64(v117, vorrq_s8(v77, xmmword_25A99B0D0)));
            if (vuzp1_s16(v78, *v77.i8).u8[0])
            {
              *(v76 - 2) = a4;
            }

            if (vuzp1_s16(v78, *&v77).i8[2])
            {
              *(v76 - 1) = a4;
            }

            v79 = vmovn_s64(vcgeq_u64(v117, vorrq_s8(v77, xmmword_25A99B0C0)));
            if (vuzp1_s16(v79, v79).i32[1])
            {
              *v76 = a4;
              v76[1] = a4;
            }

            v75 += 4;
            v76 += 4;
          }

          while (((v73 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v75);
        }

        mlx::core::strided_reduce<short,int,mlx::core::SumReduce>(v9, v11, v72, v73);
        v9 = (v124 + 2 * v73 * v72);
        v11 = (v123 + 4 * v73);
        v123 = v11;
        v124 = v9;
        v74 = v74 + v73;
      }

      while (v74 < *(*a2 + 48));
    }
  }

LABEL_57:
  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

  v64 = *MEMORY[0x277D85DE8];
}