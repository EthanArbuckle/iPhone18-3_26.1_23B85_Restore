void sub_25A56DAD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcTanh>(unsigned __int16 *a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
    v7 = 2 * a4;
    do
    {
      v8 = atanhf(COERCE_FLOAT(*a1 << 16));
      *a2++ = (LODWORD(v8) + (HIWORD(LODWORD(v8)) & 1u) + 0x7FFF) >> 16;
      a1 = (a1 + v7);
      --v4;
    }

    while (v4);
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A56DC18(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A56DDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFB900;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFB900;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFB900;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v14 = v3;
  v15 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::BitwiseInvert&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A56E19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::BitwiseInvert&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::BitwiseInvert&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A56E270(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::BitwiseInvert&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::BitwiseInvert&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::BitwiseInvert&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 2);
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A56E454(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9unary_intINS3_6detail13BitwiseInvertEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFB9F8;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9unary_intINS3_6detail13BitwiseInvertEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFB9F8;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9unary_intINS3_6detail13BitwiseInvertEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFB9F8;
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

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9unary_intINS3_6detail13BitwiseInvertEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9unary_intINS3_6detail13BitwiseInvertEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9unary_intINS3_6detail13BitwiseInvertEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9unary_intINS3_6detail13BitwiseInvertEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 > 4)
  {
    if (v2 <= 6)
    {
      if (v2 != 5)
      {

        goto LABEL_7;
      }

LABEL_24:
      mlx::core::unary_op<unsigned char,unsigned char,mlx::core::detail::BitwiseInvert>(a1, v1);
      return;
    }

    if (v2 != 7)
    {
      if (v2 != 8)
      {
        goto LABEL_34;
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (v2 <= 2)
    {
      if (v2 != 1)
      {
        if (v2 == 2)
        {

LABEL_7:
          mlx::core::unary_op<unsigned short,unsigned short,mlx::core::detail::BitwiseInvert>(a1, v1);
          return;
        }

LABEL_34:
        v3 = a1 + 16;
        std::ostringstream::basic_ostringstream[abi:ne200100](v8);
        v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[unary_int] Does not support ", 29);
        v5 = *(*v3 + 56);
        LODWORD(v7[0]) = v5;
        BYTE4(v7[0]) = BYTE4(v5);
        mlx::core::operator<<(v4, v7);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v8, v7);
        MEMORY[0x25F851100](exception, v7);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_24;
    }

    if (v2 != 3)
    {

LABEL_16:
      mlx::core::unary_op<unsigned long long,unsigned long long,mlx::core::detail::BitwiseInvert>(a1, v1);
      return;
    }
  }

  mlx::core::unary_op<unsigned int,unsigned int,mlx::core::detail::BitwiseInvert>(a1, v1);
}

void sub_25A56E94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<unsigned char,unsigned char,mlx::core::detail::BitwiseInvert>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 0x10)
    {
      do
      {
        v7 = *v4++;
        *v5++ = vmvnq_s8(v7);
        v6 -= 16;
      }

      while (v6 > 0xF);
    }

    for (; v6; --v6)
    {
      v8 = v4->i8[0];
      v4 = (v4 + 1);
      v5->i8[0] = ~v8;
      v5 = (v5 + 1);
    }

    return;
  }

  v9 = v3[1];
  if (v9 == *v3)
  {
    v11 = 1;
    v12 = 1;
    do
    {
LABEL_34:
      v5->i8[0] = ~v4->i8[0];
      v5 = (v5 + 1);
      v4 = (v4 + v12);
      --v11;
    }

    while (v11);
    return;
  }

  v10 = v9 - *v3;
  v11 = *(v9 - 4);
  v12 = *(v3[4] - 8);
  if ((v10 >> 2) <= 1)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_34;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v34, v3, v3 + 3, (v10 >> 2) - 1);
  if ((*a1)[6])
  {
    v14 = 0;
    v15 = v34;
    do
    {
      if (v11)
      {
        v16 = &v4->i8[v15];
        v17 = v5;
        v18 = v11;
        do
        {
          v17->i8[0] = ~*v16;
          v17 = (v17 + 1);
          v16 += v12;
          --v18;
        }

        while (v18);
      }

      v19 = v36 - v35;
      v20 = (v36 - v35) >> 2;
      if (v20)
      {
        v21 = ((v19 << 30) - 0x100000000) >> 32;
        v22 = __p;
        v23 = v37;
        v24 = __p + 4 * v21;
        v25 = *v24;
        v26 = v35 + 4 * v21;
        if (v20 >= 2 && v25 == *v26 - 1)
        {
          v29 = (v19 >> 2) & 0x7FFFFFFF;
          v28 = v29 - 1;
          v30 = 4 * v29;
          v31 = v35 - 8;
          do
          {
            v32 = v28;
            *v24 = 0;
            v15 -= v23[v21] * (*v26 - 1);
            v34 = v15;
            --v28;
            v24 = &v22[v30 - 8];
            v25 = *v24;
            v22 -= 4;
            if (v32 < 2)
            {
              break;
            }

            v26 = &v31[v30];
            v33 = *&v31[4 * v29] - 1;
            v31 -= 4;
            v21 = v28;
          }

          while (v25 == v33);
          v24 = &v22[4 * v29 - 4];
        }

        else
        {
          v28 = ((v19 << 30) - 0x100000000) >> 32;
        }

        *v24 = v25 + 1;
        v15 += v23[v28];
        v34 = v15;
      }

      v14 += v11;
      v5 = (v5 + v11);
    }

    while (v14 < (*a1)[6]);
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void mlx::core::unary_op<unsigned short,unsigned short,mlx::core::detail::BitwiseInvert>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 0x10)
    {
      do
      {
        v8 = *v4;
        v7 = *(v4 + 1);
        v4 += 2;
        *v5 = vmvnq_s8(v8);
        v5[1] = vmvnq_s8(v7);
        v5 += 2;
        v6 -= 16;
      }

      while (v6 > 0xF);
    }

    for (; v6; --v6)
    {
      v9 = *v4;
      v4 = (v4 + 2);
      v5->i16[0] = ~v9;
      v5 = (v5 + 2);
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_32:
      v5->i16[0] = ~*v4;
      v5 = (v5 + 2);
      v4 = (v4 + 2 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v40, v3, v3 + 3, (v11 >> 2) - 1);
  v15 = (*a1)[6];
  if (v15)
  {
    v16 = 0;
    v17 = v40;
    v18 = v43;
    v19 = (v42 - v41) >> 2;
    v20 = (((v42 - v41) << 30) - 0x100000000) >> 32;
    v21 = __p;
    v22 = __p + 4 * v20;
    v23 = v41 + 4 * v20;
    v24 = 2 * v13;
    v25 = 4 * (v19 & 0x7FFFFFFF);
    v26 = v41 - 8;
    do
    {
      if (v12)
      {
        v27 = v4 + v17;
        v28 = v5;
        v29 = v12;
        do
        {
          v28->i16[0] = ~*v27;
          v28 = (v28 + 2);
          v27 = (v27 + v24);
          --v29;
        }

        while (v29);
      }

      if (v19)
      {
        v30 = *v22;
        if (v19 >= 2 && v30 == *v23 - 1)
        {
          v31 = v21;
          v32 = v26;
          v33 = (v19 & 0x7FFFFFFF) - 1;
          v34 = v23;
          v35 = v22;
          v36 = v20;
          do
          {
            v37 = v33;
            *v35 = 0;
            v17 -= v18[v36] * (*v34 - 1);
            v40 = v17;
            --v33;
            v35 = &v31[v25 - 8];
            v30 = *v35;
            v31 -= 4;
            if (v37 < 2)
            {
              break;
            }

            v34 = &v32[v25];
            v38 = *&v32[4 * (v19 & 0x7FFFFFFF)] - 1;
            v32 -= 4;
            v36 = v33;
          }

          while (v30 == v38);
          v39 = &v31[v25 - 4];
        }

        else
        {
          v33 = v20;
          v39 = v22;
        }

        *v39 = v30 + 1;
        v17 += v18[v33];
        v40 = v17;
      }

      v16 += v12;
      v5 = (v5 + 2 * v12);
    }

    while (v16 < v15);
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v46 = v21;
  operator delete(v21);
LABEL_26:
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }
}

void mlx::core::unary_op<unsigned int,unsigned int,mlx::core::detail::BitwiseInvert>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v8 = *v4;
        v7 = *(v4 + 1);
        v4 += 2;
        *v5 = vmvnq_s8(v8);
        v5[1] = vmvnq_s8(v7);
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = *v4;
      v4 = (v4 + 4);
      v5->i32[0] = ~v9;
      v5 = (v5 + 4);
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_32:
      v5->i32[0] = ~*v4;
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v40, v3, v3 + 3, (v11 >> 2) - 1);
  v15 = (*a1)[6];
  if (v15)
  {
    v16 = 0;
    v17 = v40;
    v18 = v43;
    v19 = (v42 - v41) >> 2;
    v20 = (((v42 - v41) << 30) - 0x100000000) >> 32;
    v21 = __p;
    v22 = __p + 4 * v20;
    v23 = v41 + 4 * v20;
    v24 = 4 * v13;
    v25 = 4 * (v19 & 0x7FFFFFFF);
    v26 = v41 - 8;
    do
    {
      if (v12)
      {
        v27 = v4 + v17;
        v28 = v5;
        v29 = v12;
        do
        {
          v28->i32[0] = ~*v27;
          v28 = (v28 + 4);
          v27 = (v27 + v24);
          --v29;
        }

        while (v29);
      }

      if (v19)
      {
        v30 = *v22;
        if (v19 >= 2 && v30 == *v23 - 1)
        {
          v31 = v21;
          v32 = v26;
          v33 = (v19 & 0x7FFFFFFF) - 1;
          v34 = v23;
          v35 = v22;
          v36 = v20;
          do
          {
            v37 = v33;
            *v35 = 0;
            v17 -= v18[v36] * (*v34 - 1);
            v40 = v17;
            --v33;
            v35 = &v31[v25 - 8];
            v30 = *v35;
            v31 -= 4;
            if (v37 < 2)
            {
              break;
            }

            v34 = &v32[v25];
            v38 = *&v32[4 * (v19 & 0x7FFFFFFF)] - 1;
            v32 -= 4;
            v36 = v33;
          }

          while (v30 == v38);
          v39 = &v31[v25 - 4];
        }

        else
        {
          v33 = v20;
          v39 = v22;
        }

        *v39 = v30 + 1;
        v17 += v18[v33];
        v40 = v17;
      }

      v16 += v12;
      v5 = (v5 + 4 * v12);
    }

    while (v16 < v15);
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v46 = v21;
  operator delete(v21);
LABEL_26:
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }
}

void mlx::core::unary_op<unsigned long long,unsigned long long,mlx::core::detail::BitwiseInvert>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 4)
    {
      do
      {
        v8 = *v4;
        v7 = *(v4 + 1);
        v4 += 2;
        *v5 = vmvnq_s8(v8);
        v5[1] = vmvnq_s8(v7);
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v9 = *v4;
      v4 = (v4 + 8);
      v5->i64[0] = ~v9;
      v5 = (v5 + 8);
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_32:
      v5->i64[0] = ~*v4;
      v5 = (v5 + 8);
      v4 = (v4 + 8 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v40, v3, v3 + 3, (v11 >> 2) - 1);
  v15 = (*a1)[6];
  if (v15)
  {
    v16 = 0;
    v17 = v43;
    v18 = v40;
    v19 = (v42 - v41) >> 2;
    v20 = (((v42 - v41) << 30) - 0x100000000) >> 32;
    v21 = __p;
    v22 = __p + 4 * v20;
    v23 = v41 + 4 * v20;
    v24 = 8 * v13;
    v25 = 4 * (v19 & 0x7FFFFFFF);
    v26 = v41 - 8;
    do
    {
      if (v12)
      {
        v27 = v4 + v18;
        v28 = v5;
        v29 = v12;
        do
        {
          *v28++ = ~*v27;
          v27 = (v27 + v24);
          --v29;
        }

        while (v29);
      }

      if (v19)
      {
        v30 = *v22;
        if (v19 >= 2 && v30 == *v23 - 1)
        {
          v31 = v21;
          v32 = v26;
          v33 = (v19 & 0x7FFFFFFF) - 1;
          v34 = v23;
          v35 = v22;
          v36 = v20;
          do
          {
            v37 = v33;
            *v35 = 0;
            v18 -= v17[v36] * (*v34 - 1);
            v40 = v18;
            --v33;
            v35 = &v31[v25 - 8];
            v30 = *v35;
            v31 -= 4;
            if (v37 < 2)
            {
              break;
            }

            v34 = &v32[v25];
            v38 = *&v32[4 * (v19 & 0x7FFFFFFF)] - 1;
            v32 -= 4;
            v36 = v33;
          }

          while (v30 == v38);
          v39 = &v31[v25 - 4];
        }

        else
        {
          v33 = v20;
          v39 = v22;
        }

        *v39 = v30 + 1;
        v18 += v17[v33];
        v40 = v18;
      }

      v16 += v12;
      v5 = (v5 + 8 * v12);
    }

    while (v16 < v15);
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v46 = v21;
  operator delete(v21);
LABEL_26:
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A56F400(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A56F5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFBA78;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFBA78;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFBA78;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_int<mlx::core::detail::BitwiseInvert>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::BitwiseInvert,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v14 = v3;
  v15 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Ceil&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A56F984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Ceil&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Ceil&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A56FA58(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Ceil&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Ceil&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Ceil&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 2);
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A56FC3C(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4CeilEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFBB70;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4CeilEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFBB70;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4CeilEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFBB70;
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

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4CeilEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4CeilEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4CeilEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4CeilEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float64_t mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::Ceil>(a1, a1 + 16);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      *&result = mlx::core::unary_op<float,float,mlx::core::detail::Ceil>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        return mlx::core::unary_op<double,double,mlx::core::detail::Ceil>(a1, a1 + 16);
      case 13:

        *&result = mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Ceil>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Ceil>(a1, a1 + 16);
        return result;
      default:
LABEL_22:
        std::ostringstream::basic_ostringstream[abi:ne200100](v8);
        v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[unary_fp] Does not support ", 28);
        v5 = *(*v1 + 56);
        LODWORD(v7[0]) = v5;
        BYTE4(v7[0]) = BYTE4(v5);
        mlx::core::operator<<(v4, v7);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v8, v7);
        MEMORY[0x25F851100](exception, v7);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_25A5700B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Ceil>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = ceilf(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v7) + (HIWORD(LODWORD(v7)) & 1u) + 0x7FFF) >> 16;
      ++v4;
    }

    return;
  }

  v8 = v3[1];
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
    do
    {
LABEL_30:
      v39 = ceilf(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v39) + (HIWORD(LODWORD(v39)) & 1u) + 0x7FFF) >> 16;
      v4 += v11;
      --v10;
    }

    while (v10);
    return;
  }

  v9 = v8 - *v3;
  v10 = *(v8 - 4);
  v11 = *(v3[4] - 8);
  if ((v9 >> 2) <= 1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_30;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v40, v3, v3 + 3, (v9 >> 2) - 1);
  v13 = (*a1)[6];
  if (v13)
  {
    v14 = 0;
    v15 = v40;
    v16 = v43;
    v17 = (v42 - v41) >> 2;
    v18 = (((v42 - v41) << 30) - 0x100000000) >> 32;
    v19 = __p;
    v20 = __p + 4 * v18;
    v21 = v41 + 4 * v18;
    v22 = 2 * v11;
    v23 = 4 * (v17 & 0x7FFFFFFF);
    v24 = v41 - 8;
    do
    {
      if (v10)
      {
        v25 = &v4[v15];
        v26 = v5;
        v27 = v10;
        do
        {
          v28 = ceilf(COERCE_FLOAT(*v25 << 16));
          *v26++ = (LODWORD(v28) + (HIWORD(LODWORD(v28)) & 1u) + 0x7FFF) >> 16;
          v25 = (v25 + v22);
          --v27;
        }

        while (v27);
      }

      if (v17)
      {
        v29 = *v20;
        if (v17 >= 2 && v29 == *v21 - 1)
        {
          v30 = v19;
          v31 = v24;
          v32 = (v17 & 0x7FFFFFFF) - 1;
          v33 = v21;
          v34 = v20;
          v35 = v18;
          do
          {
            v36 = v32;
            *v34 = 0;
            v15 -= v16[v35] * (*v33 - 1);
            v40 = v15;
            --v32;
            v34 = &v30[v23 - 8];
            v29 = *v34;
            v30 -= 4;
            if (v36 < 2)
            {
              break;
            }

            v33 = &v31[v23];
            v37 = *&v31[4 * (v17 & 0x7FFFFFFF)] - 1;
            v31 -= 4;
            v35 = v32;
          }

          while (v29 == v37);
          v38 = &v30[v23 - 4];
        }

        else
        {
          v32 = v18;
          v38 = v20;
        }

        *v38 = v29 + 1;
        v15 += v16[v32];
        v40 = v15;
      }

      v14 += v10;
      v5 += v10;
    }

    while (v14 < v13);
    if (!v19)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v19 = __p;
    if (!__p)
    {
      goto LABEL_24;
    }
  }

  v46 = v19;
  operator delete(v19);
LABEL_24:
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }
}

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Ceil>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4;
        v4 += 8;
        v8 = vrndpq_f16(v7);
        *v5++ = v8;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = *v4++;
      *v8.i16 = ceill(v9);
      v5->i16[0] = v8.i16[0];
      v5 = (v5 + 2);
    }

    return v8.i16[0];
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_32:
      *v8.i16 = ceill(*v4);
      v5->i16[0] = v8.i16[0];
      v5 = (v5 + 2);
      v4 += v13;
      --v12;
    }

    while (v12);
    return v8.i16[0];
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return v8.i16[0];
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v41, v3, v3 + 3, (v11 >> 2) - 1);
  v15 = (*a1)[6];
  if (v15)
  {
    v16 = 0;
    v17 = v41;
    v18 = v44;
    v19 = (v43 - v42) >> 2;
    v20 = (((v43 - v42) << 30) - 0x100000000) >> 32;
    v21 = __p;
    v22 = __p + 4 * v20;
    v23 = v42 + 4 * v20;
    v24 = 2 * v13;
    v25 = 4 * (v19 & 0x7FFFFFFF);
    v26 = v42 - 8;
    do
    {
      if (v12)
      {
        v27 = &v4[v17];
        v28 = v5;
        v29 = v12;
        do
        {
          *v8.i16 = ceill(*v27);
          v28->i16[0] = v8.i16[0];
          v28 = (v28 + 2);
          v27 = (v27 + v24);
          --v29;
        }

        while (v29);
      }

      if (v19)
      {
        v30 = *v22;
        if (v19 >= 2 && v30 == *v23 - 1)
        {
          v31 = v21;
          v32 = v26;
          v33 = (v19 & 0x7FFFFFFF) - 1;
          v34 = v23;
          v35 = v22;
          v36 = v20;
          do
          {
            v37 = v33;
            *v35 = 0;
            v17 -= v18[v36] * (*v34 - 1);
            v41 = v17;
            --v33;
            v35 = &v31[v25 - 8];
            v30 = *v35;
            v31 -= 4;
            if (v37 < 2)
            {
              break;
            }

            v34 = &v32[v25];
            v38 = *&v32[4 * (v19 & 0x7FFFFFFF)] - 1;
            v32 -= 4;
            v36 = v33;
          }

          while (v30 == v38);
          v39 = &v31[v25 - 4];
        }

        else
        {
          v33 = v20;
          v39 = v22;
        }

        *v39 = v30 + 1;
        v17 += v18[v33];
        v41 = v17;
      }

      v16 += v12;
      v5 = (v5 + 2 * v12);
    }

    while (v16 < v15);
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v47 = v21;
  operator delete(v21);
LABEL_26:
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v8.i16[0];
}

float32_t mlx::core::unary_op<float,float,mlx::core::detail::Ceil>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v8 = *v4;
        v7 = v4[1];
        v4 += 2;
        v9 = vrndpq_f32(v7);
        *v5 = vrndpq_f32(v8);
        v5[1] = v9;
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v10 = v4->f32[0];
      v4 = (v4 + 4);
      v9.f32[0] = ceilf(v10);
      v5->i32[0] = v9.i32[0];
      v5 = (v5 + 4);
    }

    return v9.f32[0];
  }

  v11 = v3[1];
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_32:
      v9.f32[0] = ceilf(v4->f32[0]);
      v5->i32[0] = v9.i32[0];
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v14);
      --v13;
    }

    while (v13);
    return v9.f32[0];
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(v3[4] - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return v9.f32[0];
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v42, v3, v3 + 3, (v12 >> 2) - 1);
  v16 = (*a1)[6];
  if (v16)
  {
    v17 = 0;
    v18 = v42;
    v19 = v45;
    v20 = (v44 - v43) >> 2;
    v21 = (((v44 - v43) << 30) - 0x100000000) >> 32;
    v22 = __p;
    v23 = __p + 4 * v21;
    v24 = v43 + 4 * v21;
    v25 = 4 * v14;
    v26 = 4 * (v20 & 0x7FFFFFFF);
    v27 = v43 - 8;
    do
    {
      if (v13)
      {
        v28 = &v4->f32[v18];
        v29 = v5;
        v30 = v13;
        do
        {
          v9.f32[0] = ceilf(*v28);
          v29->i32[0] = v9.i32[0];
          v29 = (v29 + 4);
          v28 = (v28 + v25);
          --v30;
        }

        while (v30);
      }

      if (v20)
      {
        v31 = *v23;
        if (v20 >= 2 && v31 == *v24 - 1)
        {
          v32 = v22;
          v33 = v27;
          v34 = (v20 & 0x7FFFFFFF) - 1;
          v35 = v24;
          v36 = v23;
          v37 = v21;
          do
          {
            v38 = v34;
            *v36 = 0;
            v18 -= v19[v37] * (*v35 - 1);
            v42 = v18;
            --v34;
            v36 = &v32[v26 - 8];
            v31 = *v36;
            v32 -= 4;
            if (v38 < 2)
            {
              break;
            }

            v35 = &v33[v26];
            v39 = *&v33[4 * (v20 & 0x7FFFFFFF)] - 1;
            v33 -= 4;
            v37 = v34;
          }

          while (v31 == v39);
          v40 = &v32[v26 - 4];
        }

        else
        {
          v34 = v21;
          v40 = v23;
        }

        *v40 = v31 + 1;
        v18 += v19[v34];
        v42 = v18;
      }

      v17 += v13;
      v5 = (v5 + 4 * v13);
    }

    while (v17 < v16);
    if (!v22)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v22 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v48 = v22;
  operator delete(v22);
LABEL_26:
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v9.f32[0];
}

float64_t mlx::core::unary_op<double,double,mlx::core::detail::Ceil>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 4)
    {
      do
      {
        v8 = *v4;
        v7 = v4[1];
        v4 += 2;
        v9 = vrndpq_f64(v7);
        *v5 = vrndpq_f64(v8);
        *(v5 + 16) = v9;
        v5 += 32;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v10 = v4->f64[0];
      v4 = (v4 + 8);
      v9.f64[0] = ceil(v10);
      *v5 = v9.f64[0];
      v5 += 8;
    }

    return v9.f64[0];
  }

  v11 = v3[1];
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_32:
      v9.f64[0] = ceil(v4->f64[0]);
      *v5 = v9.f64[0];
      v5 += 8;
      v4 = (v4 + 8 * v14);
      --v13;
    }

    while (v13);
    return v9.f64[0];
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(v3[4] - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return v9.f64[0];
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v42, v3, v3 + 3, (v12 >> 2) - 1);
  v16 = (*a1)[6];
  if (v16)
  {
    v17 = 0;
    v18 = v42;
    v19 = v45;
    v20 = (v44 - v43) >> 2;
    v21 = (((v44 - v43) << 30) - 0x100000000) >> 32;
    v22 = __p;
    v23 = __p + 4 * v21;
    v24 = v43 + 4 * v21;
    v25 = 8 * v14;
    v26 = 4 * (v20 & 0x7FFFFFFF);
    v27 = v43 - 8;
    do
    {
      if (v13)
      {
        v28 = &v4->f64[v18];
        v29 = v5;
        v30 = v13;
        do
        {
          v9.f64[0] = ceil(*v28);
          *v29++ = *&v9.f64[0];
          v28 = (v28 + v25);
          --v30;
        }

        while (v30);
      }

      if (v20)
      {
        v31 = *v23;
        if (v20 >= 2 && v31 == *v24 - 1)
        {
          v32 = v22;
          v33 = v27;
          v34 = (v20 & 0x7FFFFFFF) - 1;
          v35 = v24;
          v36 = v23;
          v37 = v21;
          do
          {
            v38 = v34;
            *v36 = 0;
            v18 -= v19[v37] * (*v35 - 1);
            v42 = v18;
            --v34;
            v36 = &v32[v26 - 8];
            v31 = *v36;
            v32 -= 4;
            if (v38 < 2)
            {
              break;
            }

            v35 = &v33[v26];
            v39 = *&v33[4 * (v20 & 0x7FFFFFFF)] - 1;
            v33 -= 4;
            v37 = v34;
          }

          while (v31 == v39);
          v40 = &v32[v26 - 4];
        }

        else
        {
          v34 = v21;
          v40 = v23;
        }

        *v40 = v31 + 1;
        v18 += v19[v34];
        v42 = v18;
      }

      v17 += v13;
      v5 += 8 * v13;
    }

    while (v17 < v16);
    if (!v22)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v22 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v48 = v22;
  operator delete(v22);
LABEL_26:
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v9.f64[0];
}

float mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Ceil>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = *v4;
      v4 += 2;
      result = ceilf(v7);
      *v5 = result;
      v5[1] = 0.0;
      v5 += 2;
    }

    return result;
  }

  v9 = v3[1];
  if (v9 == *v3)
  {
    v11 = 1;
    v12 = 1;
LABEL_32:
    v35 = v5 + 1;
    do
    {
      result = ceilf(*v4);
      *(v35 - 1) = result;
      *v35 = 0.0;
      v35 += 2;
      v4 += 2 * v12;
      --v11;
    }

    while (v11);
    return result;
  }

  v10 = v9 - *v3;
  v11 = *(v9 - 4);
  v12 = *(v3[4] - 8);
  if ((v10 >> 2) <= 1)
  {
    if (!v11)
    {
      return result;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v36, v3, v3 + 3, (v10 >> 2) - 1);
  if ((*a1)[6])
  {
    v14 = 0;
    v15 = v36;
    v16 = v5 + 1;
    do
    {
      if (v11)
      {
        v17 = &v4[2 * v15];
        v18 = v16;
        v19 = v11;
        do
        {
          result = ceilf(*v17);
          *(v18 - 1) = result;
          *v18 = 0.0;
          v18 += 2;
          v17 += 2 * v12;
          --v19;
        }

        while (v19);
      }

      v20 = v38 - v37;
      v21 = (v38 - v37) >> 2;
      if (v21)
      {
        v22 = ((v20 << 30) - 0x100000000) >> 32;
        v23 = __p;
        v24 = v39;
        v25 = __p + 4 * v22;
        v26 = *v25;
        v27 = v37 + 4 * v22;
        if (v21 >= 2 && v26 == *v27 - 1)
        {
          v30 = (v20 >> 2) & 0x7FFFFFFF;
          v29 = v30 - 1;
          v31 = 4 * v30;
          v32 = v37 - 8;
          do
          {
            v33 = v29;
            *v25 = 0;
            v15 -= v24[v22] * (*v27 - 1);
            v36 = v15;
            --v29;
            v25 = &v23[v31 - 8];
            v26 = *v25;
            v23 -= 4;
            if (v33 < 2)
            {
              break;
            }

            v27 = &v32[v31];
            v34 = *&v32[4 * v30] - 1;
            v32 -= 4;
            v22 = v29;
          }

          while (v26 == v34);
          v25 = &v23[4 * v30 - 4];
        }

        else
        {
          v29 = ((v20 << 30) - 0x100000000) >> 32;
        }

        *v25 = v26 + 1;
        v15 += v24[v29];
        v36 = v15;
      }

      v14 += v11;
      v16 += 2 * v11;
    }

    while (v14 < (*a1)[6]);
  }

  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  return result;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A570E5C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A57102C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFBBF0;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFBBF0;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFBBF0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Ceil>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Ceil,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v14 = v3;
  v15 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Conjugate&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A5713E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Conjugate&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Conjugate&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5714B4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Conjugate&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Conjugate&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Conjugate&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 2);
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A571698(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_complexINS3_6detail9ConjugateEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFBCE8;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_complexINS3_6detail9ConjugateEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFBCE8;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_complexINS3_6detail9ConjugateEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFBCE8;
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

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_complexINS3_6detail9ConjugateEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_complexINS3_6detail9ConjugateEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_complexINS3_6detail9ConjugateEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__invoke_void_return_wrapper<void,true>::__call[abi:ne200100]<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Conjugate&&)::{lambda(void)#1} &>(uint64_t a1)
{
  mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Conjugate>((a1 + 16), a1 + 32);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

float mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Conjugate>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      result = *v4;
      v8 = v4[1];
      v4 += 2;
      *v5 = result;
      v5[1] = -v8;
      v5 += 2;
    }

    return result;
  }

  v9 = v3[1];
  if (v9 == *v3)
  {
    v11 = 1;
    v12 = 1;
LABEL_32:
    v36 = v4 + 1;
    v37 = v5 + 1;
    do
    {
      result = *(v36 - 1);
      v38 = -*v36;
      *(v37 - 1) = result;
      *v37 = v38;
      v36 += 2 * v12;
      v37 += 2;
      --v11;
    }

    while (v11);
    return result;
  }

  v10 = v9 - *v3;
  v11 = *(v9 - 4);
  v12 = *(v3[4] - 8);
  if ((v10 >> 2) <= 1)
  {
    if (!v11)
    {
      return result;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v39, v3, v3 + 3, (v10 >> 2) - 1);
  if ((*a1)[6])
  {
    v14 = 0;
    v15 = v39;
    v16 = v5 + 1;
    do
    {
      if (v11)
      {
        v17 = &v4[2 * v15 + 1];
        v18 = v16;
        v19 = v11;
        do
        {
          result = *(v17 - 1);
          v20 = -*v17;
          *(v18 - 1) = result;
          *v18 = v20;
          v17 += 2 * v12;
          v18 += 2;
          --v19;
        }

        while (v19);
      }

      v21 = v41 - v40;
      v22 = (v41 - v40) >> 2;
      if (v22)
      {
        v23 = ((v21 << 30) - 0x100000000) >> 32;
        v24 = __p;
        v25 = v42;
        v26 = __p + 4 * v23;
        v27 = *v26;
        v28 = v40 + 4 * v23;
        if (v22 >= 2 && v27 == *v28 - 1)
        {
          v31 = (v21 >> 2) & 0x7FFFFFFF;
          v30 = v31 - 1;
          v32 = 4 * v31;
          v33 = v40 - 8;
          do
          {
            v34 = v30;
            *v26 = 0;
            v15 -= v25[v23] * (*v28 - 1);
            v39 = v15;
            --v30;
            v26 = &v24[v32 - 8];
            v27 = *v26;
            v24 -= 4;
            if (v34 < 2)
            {
              break;
            }

            v28 = &v33[v32];
            v35 = *&v33[4 * v31] - 1;
            v33 -= 4;
            v23 = v30;
          }

          while (v27 == v35);
          v26 = &v24[4 * v31 - 4];
        }

        else
        {
          v30 = ((v21 << 30) - 0x100000000) >> 32;
        }

        *v26 = v27 + 1;
        v15 += v25[v30];
        v39 = v15;
      }

      v14 += v11;
      v16 += 2 * v11;
    }

    while (v14 < (*a1)[6]);
  }

  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  return result;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A571C60(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A571E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFBD68;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFBD68;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFBD68;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex<mlx::core::detail::Conjugate>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Conjugate,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v14 = v3;
  v15 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Cos&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A5721EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Cos&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Cos&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5722C0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Cos&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Cos&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Cos&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 2);
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A5724A4(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3CosEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFBE60;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3CosEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFBE60;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3CosEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFBE60;
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

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3CosEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3CosEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3CosEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1, __n128 a2)
{
  mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24, a2);
  v3 = mlx::core::scheduler::scheduler(v2);

  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3CosEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1, __n128 a2)
{
  v2 = a1 + 16;
  v3 = *(*(a1 + 16) + 56);
  if (v3 <= 10)
  {
    if (v3 == 9)
    {

      mlx::core::unary_op<half,half,mlx::core::detail::Cos>(a1, a1 + 16, a2);
    }

    else
    {
      if (v3 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::Cos>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v3)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::Cos>(a1, a1 + 16);
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Cos>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Cos>(a1, a1 + 16);
        return;
      default:
LABEL_22:
        std::ostringstream::basic_ostringstream[abi:ne200100](v8);
        v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[unary_fp] Does not support ", 28);
        v5 = *(*v2 + 56);
        LODWORD(v7[0]) = v5;
        BYTE4(v7[0]) = BYTE4(v5);
        mlx::core::operator<<(v4, v7);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v8, v7);
        MEMORY[0x25F851100](exception, v7);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void sub_25A572918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Cos>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = *v4++;
      *v5++ = mlx::core::simd::sincos<false,mlx::core::_MLX_BFloat16,1>(v7);
    }

    return;
  }

  v8 = v3[1];
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
    do
    {
LABEL_32:
      *v5++ = mlx::core::simd::sincos<false,mlx::core::_MLX_BFloat16,1>(*v4);
      v4 += v11;
      --v10;
    }

    while (v10);
    return;
  }

  v9 = v8 - *v3;
  v10 = *(v8 - 4);
  v11 = *(v3[4] - 8);
  if ((v9 >> 2) <= 1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v34, v3, v3 + 3, (v9 >> 2) - 1);
  if ((*a1)[6])
  {
    v13 = 0;
    v14 = 2 * v11;
    do
    {
      if (v10)
      {
        v15 = &v4[v34];
        v16 = v5;
        v17 = v10;
        do
        {
          *v16++ = mlx::core::simd::sincos<false,mlx::core::_MLX_BFloat16,1>(*v15);
          v15 = (v15 + v14);
          --v17;
        }

        while (v17);
      }

      v18 = v36 - v35;
      v19 = (v36 - v35) >> 2;
      if (v19)
      {
        v20 = __p;
        v21 = ((v18 << 30) - 0x100000000) >> 32;
        v22 = __p + 4 * v21;
        v23 = *v22;
        v24 = v35 + 4 * v21;
        v25 = v37;
        v26 = v34;
        if (v19 >= 2 && v23 == *v24 - 1)
        {
          v29 = (v18 >> 2) & 0x7FFFFFFF;
          v28 = v29 - 1;
          v30 = 4 * v29;
          v31 = v35 - 8;
          do
          {
            v32 = v28;
            *v22 = 0;
            v26 -= v25[v21] * (*v24 - 1);
            v34 = v26;
            --v28;
            v22 = &v20[v30 - 8];
            v23 = *v22;
            v20 -= 4;
            if (v32 < 2)
            {
              break;
            }

            v24 = &v31[v30];
            v33 = *&v31[4 * v29] - 1;
            v31 -= 4;
            v21 = v28;
          }

          while (v23 == v33);
          v22 = &v20[4 * v29 - 4];
        }

        else
        {
          v28 = ((v18 << 30) - 0x100000000) >> 32;
        }

        *v22 = v23 + 1;
        v34 = v25[v28] + v26;
      }

      v13 += v10;
      v5 += v10;
    }

    while (v13 < (*a1)[6]);
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void mlx::core::unary_op<half,half,mlx::core::detail::Cos>(uint64_t **a1, uint64_t a2, __n128 a3)
{
  v4 = *a1;
  v5 = (*a1)[19];
  v6 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v7 = v4[20];
    if (v7 >= 8)
    {
      do
      {
        v8 = *v5++;
        a3.n128_f64[0] = mlx::core::simd::sincos<false,half,8>(v8);
        *v6++ = a3;
        v7 -= 8;
      }

      while (v7 > 7);
    }

    for (; v7; --v7)
    {
      v9 = v5->i16[0];
      v5 = (v5 + 2);
      a3.n128_u16[0] = v9;
      v6->n128_u16[0] = mlx::core::simd::sincos<false,half,1>(a3);
      v6 = (v6 + 2);
    }

    return;
  }

  v10 = v4[1];
  if (v10 == *v4)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_34:
      a3.n128_u16[0] = v5->i16[0];
      v6->n128_u16[0] = mlx::core::simd::sincos<false,half,1>(a3);
      v6 = (v6 + 2);
      v5 = (v5 + 2 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v4;
  v12 = *(v10 - 4);
  v13 = *(v4[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_34;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v37, v4, v4 + 3, (v11 >> 2) - 1);
  if ((*a1)[6])
  {
    v16 = 0;
    v17 = 2 * v13;
    do
    {
      if (v12)
      {
        v18 = v5 + v37;
        v19 = v6;
        v20 = v12;
        do
        {
          v15.n128_u16[0] = *v18;
          v19->n128_u16[0] = mlx::core::simd::sincos<false,half,1>(v15);
          v19 = (v19 + 2);
          v18 = (v18 + v17);
          --v20;
        }

        while (v20);
      }

      v21 = v39 - v38;
      v22 = (v39 - v38) >> 2;
      if (v22)
      {
        v23 = __p;
        v24 = ((v21 << 30) - 0x100000000) >> 32;
        v25 = __p + 4 * v24;
        v26 = *v25;
        v27 = v38 + 4 * v24;
        v28 = v40;
        v29 = v37;
        if (v22 >= 2 && v26 == *v27 - 1)
        {
          v32 = (v21 >> 2) & 0x7FFFFFFF;
          v31 = v32 - 1;
          v33 = 4 * v32;
          v34 = v38 - 8;
          do
          {
            v35 = v31;
            *v25 = 0;
            v29 -= v28[v24] * (*v27 - 1);
            v37 = v29;
            --v31;
            v25 = &v23[v33 - 8];
            v26 = *v25;
            v23 -= 4;
            if (v35 < 2)
            {
              break;
            }

            v27 = &v34[v33];
            v36 = *&v34[4 * v32] - 1;
            v34 -= 4;
            v24 = v31;
          }

          while (v26 == v36);
          v25 = &v23[4 * v32 - 4];
        }

        else
        {
          v31 = ((v21 << 30) - 0x100000000) >> 32;
        }

        *v25 = v26 + 1;
        v37 = v28[v31] + v29;
      }

      v16 += v12;
      v6 = (v6 + 2 * v12);
    }

    while (v16 < (*a1)[6]);
  }

  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void mlx::core::unary_op<float,float,mlx::core::detail::Cos>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4;
        v8 = *(v4 + 16);
        v4 += 32;
        *v37 = v7;
        v38 = v8;
        mlx::core::simd::sincos<false,float,8>(v37, v43);
        v9 = v43[1];
        *v5 = v43[0];
        *(v5 + 16) = v9;
        v5 += 32;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 += 4;
      *v5 = mlx::core::simd::sincos<false,float,1>(v10);
      v5 += 4;
    }

    return;
  }

  v11 = v3[1];
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_34:
      *v5 = mlx::core::simd::sincos<false,float,1>(*v4);
      v5 += 4;
      v4 += 4 * v14;
      --v13;
    }

    while (v13);
    return;
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(v3[4] - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return;
    }

    goto LABEL_34;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(v37, v3, v3 + 3, (v12 >> 2) - 1);
  if ((*a1)[6])
  {
    v16 = 0;
    v17 = 4 * v14;
    do
    {
      if (v13)
      {
        v18 = (v4 + 4 * v37[0]);
        v19 = v5;
        v20 = v13;
        do
        {
          *v19++ = mlx::core::simd::sincos<false,float,1>(*v18);
          v18 = (v18 + v17);
          --v20;
        }

        while (v20);
      }

      v21 = v38 - v37[1];
      v22 = (v38 - v37[1]) >> 2;
      if (v22)
      {
        v23 = __p;
        v24 = ((v21 << 30) - 0x100000000) >> 32;
        v25 = __p + 4 * v24;
        v26 = *v25;
        v27 = v37[1] + 4 * v24;
        v28 = v39;
        v29 = v37[0];
        if (v22 >= 2 && v26 == *v27 - 1)
        {
          v32 = (v21 >> 2) & 0x7FFFFFFF;
          v31 = v32 - 1;
          v33 = 4 * v32;
          v34 = v37[1] - 8;
          do
          {
            v35 = v31;
            *v25 = 0;
            v29 -= v28[v24] * (*v27 - 1);
            v37[0] = v29;
            --v31;
            v25 = &v23[v33 - 8];
            v26 = *v25;
            v23 -= 4;
            if (v35 < 2)
            {
              break;
            }

            v27 = &v34[v33];
            v36 = *&v34[4 * v32] - 1;
            v34 -= 4;
            v24 = v31;
          }

          while (v26 == v36);
          v25 = &v23[4 * v32 - 4];
        }

        else
        {
          v31 = ((v21 << 30) - 0x100000000) >> 32;
        }

        *v25 = v26 + 1;
        v37[0] = &v29[v28[v31]];
      }

      v16 += v13;
      v5 += 4 * v13;
    }

    while (v16 < (*a1)[6]);
  }

  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v37[1])
  {
    *&v38 = v37[1];
    operator delete(v37[1]);
  }
}

void mlx::core::unary_op<double,double,mlx::core::detail::Cos>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 4)
    {
      do
      {
        v7 = *v4;
        v8 = *(v4 + 16);
        v4 += 32;
        *v37 = v7;
        v38 = v8;
        mlx::core::simd::sincos<false,double,4>(v37, v43);
        v9 = v43[1];
        *v5 = v43[0];
        v5[1] = v9;
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 += 8;
      v5->f64[0] = mlx::core::simd::sincos<false,double,1>(v10);
      v5 = (v5 + 8);
    }

    return;
  }

  v11 = v3[1];
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_34:
      v5->f64[0] = mlx::core::simd::sincos<false,double,1>(*v4);
      v5 = (v5 + 8);
      v4 += 8 * v14;
      --v13;
    }

    while (v13);
    return;
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(v3[4] - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return;
    }

    goto LABEL_34;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(v37, v3, v3 + 3, (v12 >> 2) - 1);
  if ((*a1)[6])
  {
    v16 = 0;
    v17 = 8 * v14;
    do
    {
      if (v13)
      {
        v18 = (v4 + 8 * v37[0]);
        v19 = v5;
        v20 = v13;
        do
        {
          *v19++ = mlx::core::simd::sincos<false,double,1>(*v18);
          v18 = (v18 + v17);
          --v20;
        }

        while (v20);
      }

      v21 = v38 - v37[1];
      v22 = (v38 - v37[1]) >> 2;
      if (v22)
      {
        v23 = __p;
        v24 = ((v21 << 30) - 0x100000000) >> 32;
        v25 = __p + 4 * v24;
        v26 = *v25;
        v27 = v37[1] + 4 * v24;
        v28 = v39;
        v29 = v37[0];
        if (v22 >= 2 && v26 == *v27 - 1)
        {
          v32 = (v21 >> 2) & 0x7FFFFFFF;
          v31 = v32 - 1;
          v33 = 4 * v32;
          v34 = v37[1] - 8;
          do
          {
            v35 = v31;
            *v25 = 0;
            v29 -= v28[v24] * (*v27 - 1);
            v37[0] = v29;
            --v31;
            v25 = &v23[v33 - 8];
            v26 = *v25;
            v23 -= 4;
            if (v35 < 2)
            {
              break;
            }

            v27 = &v34[v33];
            v36 = *&v34[4 * v32] - 1;
            v34 -= 4;
            v24 = v31;
          }

          while (v26 == v36);
          v25 = &v23[4 * v32 - 4];
        }

        else
        {
          v31 = ((v21 << 30) - 0x100000000) >> 32;
        }

        *v25 = v26 + 1;
        v37[0] = &v29[v28[v31]];
      }

      v16 += v13;
      v5 = (v5 + 8 * v13);
    }

    while (v16 < (*a1)[6]);
  }

  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v37[1])
  {
    *&v38 = v37[1];
    operator delete(v37[1]);
  }
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Cos>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = *v4;
      v8 = *(v4 + 4);
      v4 += 8;
      *&v33 = -v8;
      HIDWORD(v33) = v7;
      *v5 = std::cosh[abi:ne200100]<float>(&v33);
      *(v5 + 4) = v9;
      v5 += 8;
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v13 = 1;
    v12 = 1;
  }

  else
  {
    v11 = v10 - *v3;
    v12 = *(v10 - 4);
    v13 = *(v3[4] - 8);
    if ((v11 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v33, v3, v3 + 3, (v11 >> 2) - 1);
      if ((*a1)[6])
      {
        v15 = 0;
        do
        {
          mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Cos>(v4 + 8 * v33, v5 + 8 * v15, v12, v13);
          v16 = v35 - v34;
          v17 = (v35 - v34) >> 2;
          if (v17)
          {
            v18 = __p;
            v19 = ((v16 << 30) - 0x100000000) >> 32;
            v20 = __p + 4 * v19;
            v21 = *v20;
            v22 = v34 + 4 * v19;
            v23 = v36;
            v24 = v33;
            if (v17 >= 2 && v21 == *v22 - 1)
            {
              v27 = (v16 >> 2) & 0x7FFFFFFF;
              v26 = v27 - 1;
              v28 = 4 * v27;
              v29 = v34 - 8;
              do
              {
                v30 = v26;
                *v20 = 0;
                v24 -= v23[v19] * (*v22 - 1);
                v33 = v24;
                --v26;
                v20 = &v18[v28 - 8];
                v21 = *v20;
                v18 -= 4;
                if (v30 < 2)
                {
                  break;
                }

                v22 = &v29[v28];
                v31 = *&v29[4 * v27] - 1;
                v29 -= 4;
                v19 = v26;
              }

              while (v21 == v31);
              v20 = &v18[4 * v27 - 4];
            }

            else
            {
              v26 = ((v16 << 30) - 0x100000000) >> 32;
            }

            *v20 = v21 + 1;
            v33 = v23[v26] + v24;
          }

          v15 += v12;
        }

        while (v15 < (*a1)[6]);
      }

      if (__p)
      {
        v39 = __p;
        operator delete(__p);
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      return;
    }
  }

  v32 = (*a1)[19];

  mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Cos>(v32, v5, v12, v13);
}

uint64_t mlx::core::simd::sincos<false,mlx::core::_MLX_BFloat16,1>(int a1)
{
  LODWORD(v1) = (((a1 << 16) & 0x7FFFFFFF) + (a1 & 1) + 0x7FFF) & 0xFFFF0000;
  v2 = (v1 * 1.2732);
  v3 = v2 + 1;
  v4 = ((v1 + ((v3 & 0xFFFFFFFE) * -0.78516)) + ((v3 & 0xFFFFFFFE) * -0.00024188)) + ((v3 & 0xFFFFFFFE) * -0.000000037749);
  v5 = v2 - 1;
  v6 = v4 * v4;
  v7 = (v4 * v4) * ((v4 * v4) * (((((v4 * v4) * 0.000024433) + -0.0013887) * (v4 * v4)) + 0.041667));
  v8 = v4 + (v4 * ((v4 * v4) * (((((v4 * v4) * -0.00019515) + 0.0083322) * (v4 * v4)) + -0.16667)));
  v9 = (v7 + (v6 * -0.5)) + 1.0;
  if ((v3 & 2) == 0)
  {
    v8 = v9;
  }

  if ((v5 & 4) == 0)
  {
    v8 = -v8;
  }

  return (LODWORD(v8) + (HIWORD(LODWORD(v8)) & 1u) + 0x7FFF) >> 16;
}

double mlx::core::simd::sincos<false,half,8>(float16x8_t a1)
{
  v1 = vabsq_f16(a1);
  v2 = vcvt_hight_f32_f16(v1);
  v3 = vcvtq_f32_f16(*v1.i8);
  v4 = vdupq_n_s32(0x3FA2F983u);
  v5 = vmulq_f32(v3, v4);
  v6 = vmulq_f32(v2, v4);
  v7.i64[0] = 0x4F0000004F000000;
  v7.i64[1] = 0x4F0000004F000000;
  v8 = vcgtq_f32(v6, v7);
  v9 = vcgtq_f32(v5, v7);
  v10 = vsubq_f32(v5, vandq_s8(v7, v9));
  v11 = vcvtq_s32_f32(vsubq_f32(v6, vandq_s8(v7, v8)));
  v12 = vcvtq_s32_f32(v10);
  v6.i64[0] = 0x100000001;
  v6.i64[1] = 0x100000001;
  v13 = vnegq_f32(v6);
  v14 = vsubq_s32(vandq_s8(v8, v13), vmvnq_s8(v8));
  v15 = vaddq_s32(vsubq_s32(vandq_s8(v9, v13), vmvnq_s8(v9)), v12);
  v16 = vaddq_s32(v14, v11);
  v8.i64[0] = 0x200000002;
  v8.i64[1] = 0x200000002;
  v17 = vcvtq_f32_u32((*&v15 & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)));
  v18 = vcvtq_f32_u32((*&v16 & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)));
  v19 = vceqzq_s32(vandq_s8(v15, v8));
  v20 = vceqzq_s32(vandq_s8(v16, v8));
  v21 = vdupq_n_s32(0xBF490000);
  v22 = vmlaq_f32(v2, v21, v18);
  v23 = vmlaq_f32(v3, v21, v17);
  v24 = vdupq_n_s32(0xB97DA000);
  v25 = vdupq_n_s32(0xB3222169);
  v26 = vmlaq_f32(vmlaq_f32(v22, v24, v18), v25, v18);
  v27 = vmlaq_f32(vmlaq_f32(v23, v24, v17), v25, v17);
  v24.i64[0] = -1;
  v24.i64[1] = -1;
  v28 = vaddq_s32(v12, v24);
  v29 = vaddq_s32(v11, v24);
  v24.i64[0] = 0x400000004;
  v24.i64[1] = 0x400000004;
  v30 = vandq_s8(v29, v24);
  v31 = vceqzq_s32(vandq_s8(v28, v24));
  v32 = vmulq_f32(v27, v27);
  v33 = vdupq_n_s32(0x37CCF5CEu);
  v34 = vdupq_n_s32(0xBAB6061A);
  v35 = vmulq_f32(v26, v26);
  v36 = vmlaq_f32(v34, v33, v35);
  v37 = vdupq_n_s32(0xB94CA1F9);
  v38 = vmlaq_f32(v34, v33, v32);
  v39 = vdupq_n_s32(0x3C08839Eu);
  v40 = vmlaq_f32(v39, v37, v35);
  v41 = vmlaq_f32(v39, v37, v32);
  v42 = vdupq_n_s32(0x3D2AAAA5u);
  v43 = vmlaq_f32(v42, v32, v38);
  v44 = vdupq_n_s32(0xBE2AAAA3);
  v45 = vmlaq_f32(v27, vmulq_f32(v32, vmlaq_f32(v44, v32, v41)), v27);
  v46 = vmlaq_f32(v26, vmulq_f32(v35, vmlaq_f32(v44, v35, v40)), v26);
  v44.i64[0] = 0xBF000000BF000000;
  v44.i64[1] = 0xBF000000BF000000;
  v47 = vmlaq_f32(vmulq_f32(v35, vmulq_f32(v35, vmlaq_f32(v42, v35, v36))), v44, v35);
  v48 = vmlaq_f32(vmulq_f32(v32, vmulq_f32(v32, v43)), v44, v32);
  __asm { FMOV            V6.4S, #1.0 }

  v54 = vbslq_s8(v20, vaddq_f32(v47, _Q6), v46);
  v55 = vbslq_s8(v19, vaddq_f32(v48, _Q6), v45);
  *&result = vcvt_hight_f16_f32(vcvt_f16_f32(vbslq_s8(v31, vnegq_f32(v55), v55)), vbslq_s8(vceqzq_s32(v30), vnegq_f32(v54), v54)).u64[0];
  return result;
}

__int16 mlx::core::simd::sincos<false,half,1>@<H0>(__n128 a1@<Q0>)
{
  _H0 = fabsl(*a1.n128_u16);
  __asm { FCVT            S0, H0 }

  v7 = (_S0 * 1.2732);
  v8 = v7 + 1;
  v9 = ((_S0 + ((v8 & 0xFFFFFFFE) * -0.78516)) + ((v8 & 0xFFFFFFFE) * -0.00024188)) + ((v8 & 0xFFFFFFFE) * -0.000000037749);
  v10 = v7 - 1;
  v11 = v9 * v9;
  v12 = (v9 * v9) * ((v9 * v9) * (((((v9 * v9) * 0.000024433) + -0.0013887) * (v9 * v9)) + 0.041667));
  _S0 = v9 + (v9 * ((v9 * v9) * (((((v9 * v9) * -0.00019515) + 0.0083322) * (v9 * v9)) + -0.16667)));
  v14 = (v12 + (v11 * -0.5)) + 1.0;
  if ((v8 & 2) == 0)
  {
    _S0 = v14;
  }

  if ((v10 & 4) == 0)
  {
    _S0 = -_S0;
  }

  __asm { FCVT            H0, S0 }

  return result;
}

int8x16_t mlx::core::simd::sincos<false,float,8>@<Q0>(uint64_t a1@<X0>, int8x16_t *a2@<X8>)
{
  v2 = *(a1 + 16) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL);
  v3.i64[0] = __PAIR64__(HIDWORD(*a1), *a1) & 0x7FFFFFFF7FFFFFFFLL;
  v3.i32[2] = *(a1 + 8) & 0x7FFFFFFF;
  v3.i32[3] = HIDWORD(*a1) & 0x7FFFFFFF;
  *a1 = v3;
  *(a1 + 16) = v2;
  v4 = vdupq_n_s32(0x3FA2F983u);
  v5 = vmulq_f32(v2, v4);
  v6 = vmulq_f32(v3, v4);
  v7.i64[0] = 0x4F0000004F000000;
  v7.i64[1] = 0x4F0000004F000000;
  v8 = vcgtq_f32(v6, v7);
  v9 = vcgtq_f32(v5, v7);
  v10 = vsubq_f32(v5, vandq_s8(v7, v9));
  v11 = vcvtq_s32_f32(vsubq_f32(v6, vandq_s8(v7, v8)));
  v12 = vcvtq_s32_f32(v10);
  v6.i64[0] = 0x100000001;
  v6.i64[1] = 0x100000001;
  v13 = vnegq_f32(v6);
  v14 = vsubq_s32(vandq_s8(v8, v13), vmvnq_s8(v8));
  v15 = vaddq_s32(vsubq_s32(vandq_s8(v9, v13), vmvnq_s8(v9)), v12);
  v16 = vaddq_s32(v14, v11);
  v8.i64[0] = 0x200000002;
  v8.i64[1] = 0x200000002;
  v17 = vcvtq_f32_u32((*&v15 & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)));
  v18 = vcvtq_f32_u32((*&v16 & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)));
  v19 = vceqzq_s32(vandq_s8(v15, v8));
  v20 = vceqzq_s32(vandq_s8(v16, v8));
  v21 = vdupq_n_s32(0xBF490000);
  v22 = vmlaq_f32(v3, v21, v18);
  v23 = vmlaq_f32(v2, v21, v17);
  v24 = vdupq_n_s32(0xB97DA000);
  v25 = vmlaq_f32(v23, v24, v17);
  v26 = vmlaq_f32(v22, v24, v18);
  v27 = vdupq_n_s32(0xB3222169);
  v28 = vmlaq_f32(v26, v27, v18);
  v29 = vmlaq_f32(v25, v27, v17);
  v27.i64[0] = -1;
  v27.i64[1] = -1;
  v30 = vaddq_s32(v12, v27);
  v31 = vaddq_s32(v11, v27);
  v27.i64[0] = 0x400000004;
  v27.i64[1] = 0x400000004;
  v32 = vandq_s8(v31, v27);
  v33 = vceqzq_s32(vandq_s8(v30, v27));
  v34 = vmulq_f32(v29, v29);
  v35 = vmulq_f32(v28, v28);
  v36 = vdupq_n_s32(0x37CCF5CEu);
  v37 = vdupq_n_s32(0xBAB6061A);
  v38 = vmlaq_f32(v37, v36, v35);
  v39 = vmlaq_f32(v37, v36, v34);
  v40 = vdupq_n_s32(0xB94CA1F9);
  v41 = vdupq_n_s32(0x3C08839Eu);
  v42 = vmlaq_f32(v41, v40, v35);
  v43 = vmlaq_f32(v41, v40, v34);
  v44 = vdupq_n_s32(0x3D2AAAA5u);
  v45 = vmlaq_f32(v44, v34, v39);
  v46 = vdupq_n_s32(0xBE2AAAA3);
  v47 = vmlaq_f32(v29, vmulq_f32(v34, vmlaq_f32(v46, v34, v43)), v29);
  v48 = vmlaq_f32(v28, vmulq_f32(v35, vmlaq_f32(v46, v35, v42)), v28);
  v46.i64[0] = 0xBF000000BF000000;
  v46.i64[1] = 0xBF000000BF000000;
  v49 = vmlaq_f32(vmulq_f32(v34, vmulq_f32(v34, v45)), v46, v34);
  __asm { FMOV            V6.4S, #1.0 }

  v55 = vbslq_s8(v20, vaddq_f32(vmlaq_f32(vmulq_f32(v35, vmulq_f32(v35, vmlaq_f32(v44, v35, v38))), v46, v35), _Q6), v48);
  v56 = vbslq_s8(v19, vaddq_f32(v49, _Q6), v47);
  result = vbslq_s8(vceqzq_s32(v32), vnegq_f32(v55), v55);
  *a2 = result;
  a2[1] = vbslq_s8(v33, vnegq_f32(v56), v56);
  return result;
}

float mlx::core::simd::sincos<false,float,1>(float a1)
{
  v1 = fabsf(a1);
  v2 = (v1 * 1.2732);
  v3 = v2 + 1;
  v4 = ((v1 + ((v3 & 0xFFFFFFFE) * -0.78516)) + ((v3 & 0xFFFFFFFE) * -0.00024188)) + ((v3 & 0xFFFFFFFE) * -0.000000037749);
  v5 = v2 - 1;
  v6 = v4 * v4;
  v7 = (v4 * v4) * ((v4 * v4) * (((((v4 * v4) * 0.000024433) + -0.0013887) * (v4 * v4)) + 0.041667));
  result = v4 + (v4 * ((v4 * v4) * (((((v4 * v4) * -0.00019515) + 0.0083322) * (v4 * v4)) + -0.16667)));
  v9 = (v7 + (v6 * -0.5)) + 1.0;
  if ((v3 & 2) == 0)
  {
    result = v9;
  }

  if ((v5 & 4) == 0)
  {
    return -result;
  }

  return result;
}

float64x2_t mlx::core::simd::sincos<false,double,4>@<Q0>(int8x16_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  v3 = vnegq_f64(v2);
  v4 = vandq_s8(a1[1], v3);
  v5 = vandq_s8(*a1, v3);
  *a1 = v5;
  a1[1] = v4;
  v6 = vcvt_hight_f32_f64(vcvt_f32_f64(v5), v4);
  v7 = vmulq_f32(v6, vdupq_n_s32(0x3FA2F983u));
  v3.i64[0] = 0x4F0000004F000000;
  v3.i64[1] = 0x4F0000004F000000;
  v8 = vcgtq_f32(v7, v3);
  v9 = vcvtq_s32_f32(vsubq_f32(v7, vandq_s8(v3, v8)));
  v3.i64[0] = 0x100000001;
  v3.i64[1] = 0x100000001;
  v10 = vaddq_s32(vsubq_s32(vandq_s8(v8, vnegq_f32(v3)), vmvnq_s8(v8)), v9);
  v8.i64[0] = 0x200000002;
  v8.i64[1] = 0x200000002;
  v11 = vandq_s8(v10, v8);
  v12 = vcvtq_f32_u32((*&v10 & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)));
  v13 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v6, vdupq_n_s32(0xBF490000), v12), vdupq_n_s32(0xB97DA000), v12), vdupq_n_s32(0xB3222169), v12);
  v14 = vaddq_s32(v9, v2);
  *&v2.f64[0] = 0x400000004;
  *&v2.f64[1] = 0x400000004;
  v15 = vceqzq_s32(vandq_s8(v14, v2));
  v16 = vmulq_f32(v13, v13);
  v17 = vmlaq_f32(v13, vmulq_f32(v16, vmlaq_f32(vdupq_n_s32(0xBE2AAAA3), v16, vmlaq_f32(vdupq_n_s32(0x3C08839Eu), vdupq_n_s32(0xB94CA1F9), v16))), v13);
  v18.i64[0] = 0xBF000000BF000000;
  v18.i64[1] = 0xBF000000BF000000;
  v19 = vmlaq_f32(vmulq_f32(v16, vmulq_f32(v16, vmlaq_f32(vdupq_n_s32(0x3D2AAAA5u), v16, vmlaq_f32(vdupq_n_s32(0xBAB6061A), vdupq_n_s32(0x37CCF5CEu), v16)))), v18, v16);
  __asm { FMOV            V2.4S, #1.0 }

  v25 = vbslq_s8(vceqzq_s32(v11), vaddq_f32(v19, _Q2), v17);
  v26 = vbslq_s8(v15, vnegq_f32(v25), v25);
  v27 = vcvtq_f64_f32(*v26.f32);
  result = vcvt_hight_f64_f32(v26);
  *a2 = v27;
  a2[1] = result;
  return result;
}

double mlx::core::simd::sincos<false,double,1>(double a1)
{
  v1 = a1;
  v2 = fabsf(v1);
  v3 = (v2 * 1.2732);
  v4 = v3 + 1;
  v5 = ((v2 + ((v4 & 0xFFFFFFFE) * -0.78516)) + ((v4 & 0xFFFFFFFE) * -0.00024188)) + ((v4 & 0xFFFFFFFE) * -0.000000037749);
  v6 = v3 - 1;
  v7 = v5 * v5;
  v8 = (v5 * v5) * ((v5 * v5) * (((((v5 * v5) * 0.000024433) + -0.0013887) * (v5 * v5)) + 0.041667));
  v9 = v5 + (v5 * ((v5 * v5) * (((((v5 * v5) * -0.00019515) + 0.0083322) * (v5 * v5)) + -0.16667)));
  v10 = (v8 + (v7 * -0.5)) + 1.0;
  if ((v4 & 2) == 0)
  {
    v9 = v10;
  }

  if ((v6 & 4) == 0)
  {
    return -v9;
  }

  return v9;
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Cos>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
    v5 = (a1 + 4);
    v6 = 8 * a4;
    v7 = (a2 + 4);
    do
    {
      v8 = *(v5 - 1);
      v10[0] = -*v5;
      v10[1] = v8;
      *(v7 - 1) = std::cosh[abi:ne200100]<float>(v10);
      *v7 = v9;
      v5 = (v5 + v6);
      v7 += 2;
      --v4;
    }

    while (v4);
  }
}

float std::cosh[abi:ne200100]<float>(float *a1)
{
  v1 = *a1;
  v2 = fabsf(*a1);
  if (v2 == INFINITY && (a1[1] & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return INFINITY;
  }

  v4 = a1[1];
  if (v1 == 0.0)
  {
    if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      return NAN;
    }

    v3 = 1.0;
    if (v4 == 0.0)
    {
      v5 = *(a1 + 1);
      return v3;
    }
  }

  if ((LODWORD(v1) & 0x7FFFFFFFu) >= 0x7F800000 && v4 == 0.0)
  {
    v6 = *(a1 + 1);
    return v2;
  }

  else
  {
    v7 = coshf(*a1);
    v3 = v7 * __sincosf_stret(v4).__cosval;
    sinhf(v1);
  }

  return v3;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A573FF4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A5741C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFBEE0;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFBEE0;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFBEE0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cos,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v14 = v3;
  v15 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Cosh&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A574578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Cosh&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Cosh&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A57464C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Cosh&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Cosh&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Cosh&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 2);
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A574830(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4CoshEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFBFD8;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4CoshEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFBFD8;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4CoshEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFBFD8;
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

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4CoshEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4CoshEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4CoshEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4CoshEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::Cosh>(a1, a1 + 16);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::Cosh>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::Cosh>(a1, a1 + 16);
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Cosh>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Cosh>(a1, a1 + 16);
        return result;
      default:
LABEL_22:
        std::ostringstream::basic_ostringstream[abi:ne200100](v8);
        v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[unary_fp] Does not support ", 28);
        v5 = *(*v1 + 56);
        LODWORD(v7[0]) = v5;
        BYTE4(v7[0]) = BYTE4(v5);
        mlx::core::operator<<(v4, v7);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v8, v7);
        MEMORY[0x25F851100](exception, v7);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_25A574CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Cosh>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = coshf(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v7) + (HIWORD(LODWORD(v7)) & 1u) + 0x7FFF) >> 16;
      ++v4;
    }

    return;
  }

  v8 = v3[1];
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
    do
    {
LABEL_31:
      v35 = coshf(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v35) + (HIWORD(LODWORD(v35)) & 1u) + 0x7FFF) >> 16;
      v4 += v11;
      --v10;
    }

    while (v10);
    return;
  }

  v9 = v8 - *v3;
  v10 = *(v8 - 4);
  v11 = *(v3[4] - 8);
  if ((v9 >> 2) <= 1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_31;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v46, v3, v3 + 3, (v9 >> 2) - 1);
  v43 = (*a1)[6];
  if (v43)
  {
    v13 = 0;
    v14 = v46;
    v15 = (((v48 - v47) << 30) - 0x100000000) >> 32;
    __p = v51;
    v44 = &v51[4 * v15];
    v40 = v15;
    v41 = v49;
    v16 = ((v48 - v47) >> 2) & 0x7FFFFFFF;
    v17 = 2 * v11;
    v42 = (v48 - v47) >> 2;
    v18 = 4 * v16;
    v36 = v47 - 8;
    v37 = v16 - 1;
    v39 = v47 + 4 * v15;
    do
    {
      v45 = v13;
      if (v10)
      {
        v19 = &v4[v14];
        v20 = v5;
        v21 = v10;
        do
        {
          v22 = coshf(COERCE_FLOAT(*v19 << 16));
          *v20++ = (LODWORD(v22) + (HIWORD(LODWORD(v22)) & 1u) + 0x7FFF) >> 16;
          v19 = (v19 + v17);
          --v21;
        }

        while (v21);
      }

      if (v42)
      {
        v23 = v45;
        v24 = *v44;
        if (v42 >= 2 && v24 == *v39 - 1)
        {
          v25 = v37;
          v26 = __p;
          v27 = v36;
          v28 = v39;
          v29 = v44;
          v30 = v40;
          do
          {
            v31 = v25;
            *v29 = 0;
            v14 -= v41[v30] * (*v28 - 1);
            v46 = v14;
            --v25;
            v29 = &v26[v18 - 8];
            v24 = *v29;
            v26 -= 4;
            if (v31 < 2)
            {
              break;
            }

            v28 = &v27[v18];
            v32 = *&v27[v18] - 1;
            v27 -= 4;
            v30 = v25;
          }

          while (v24 == v32);
          v33 = &v26[v18 - 4];
        }

        else
        {
          v25 = v40;
          v33 = v44;
        }

        *v33 = v24 + 1;
        v14 += v41[v25];
        v46 = v14;
      }

      else
      {
        v23 = v45;
      }

      v13 = v23 + v10;
      v5 += v10;
    }

    while (v13 < v43);
    v34 = __p;
    if (!__p)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v34 = v51;
    if (!v51)
    {
      goto LABEL_25;
    }
  }

  v52 = v34;
  operator delete(v34);
LABEL_25:
  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Cosh>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4++;
        v55 = _simd_cosh_f4(vcvtq_f32_f16(*v7.i8));
        _Q0 = _simd_cosh_f4(vcvt_hight_f32_f16(v7));
        *v5++ = vcvt_hight_f16_f32(vcvt_f16_f32(v55), _Q0);
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = v4->i16[0];
      v4 = (v4 + 2);
      _H0 = v9;
      __asm { FCVT            S0, H0; float }

      _Q0.f32[0] = coshf(_S0);
      __asm { FCVT            H0, S0 }

      v5->i16[0] = _Q0.i16[0];
      v5 = (v5 + 2);
    }

    return _Q0.i16[0];
  }

  v16 = v3[1];
  if (v16 == *v3)
  {
    v18 = 1;
    v19 = 1;
    do
    {
LABEL_33:
      _H0 = v4->i16[0];
      __asm { FCVT            S0, H0; float }

      _Q0.f32[0] = coshf(_S0);
      __asm { FCVT            H0, S0 }

      v5->i16[0] = _Q0.i16[0];
      v5 = (v5 + 2);
      v4 = (v4 + 2 * v19);
      --v18;
    }

    while (v18);
    return _Q0.i16[0];
  }

  v17 = v16 - *v3;
  v18 = *(v16 - 4);
  v19 = *(v3[4] - 8);
  if ((v17 >> 2) <= 1)
  {
    if (!v18)
    {
      return _Q0.i16[0];
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v58, v3, v3 + 3, (v17 >> 2) - 1);
  v54 = (*a1)[6];
  if (v54)
  {
    v21 = 0;
    v22 = v58;
    v23 = v61;
    v24 = (((v60 - v59) << 30) - 0x100000000) >> 32;
    __p = v63;
    v56 = &v63[4 * v24];
    v25 = ((v60 - v59) >> 2) & 0x7FFFFFFF;
    v49 = v25 - 1;
    v52 = v24;
    v26 = 2 * v19;
    v27 = 4 * v25;
    v48 = v59 - 8;
    v53 = (v60 - v59) >> 2;
    v51 = v59 + 4 * v24;
    do
    {
      x = v21;
      if (v18)
      {
        v28 = &v4->i16[v22];
        v29 = v5;
        v30 = v18;
        do
        {
          _H0 = *v28;
          __asm { FCVT            S0, H0; float }

          _Q0.f32[0] = coshf(_S0);
          __asm { FCVT            H0, S0 }

          v29->i16[0] = _Q0.i16[0];
          v29 = (v29 + 2);
          v28 = (v28 + v26);
          --v30;
        }

        while (v30);
      }

      if (v53)
      {
        v33 = *v56;
        v34 = x;
        if (v53 >= 2 && v33 == *v51 - 1)
        {
          v35 = v49;
          v36 = __p;
          v37 = v48;
          v38 = v51;
          v39 = v56;
          v40 = v52;
          do
          {
            v41 = v35;
            *v39 = 0;
            v22 -= v23[v40] * (*v38 - 1);
            v58 = v22;
            --v35;
            v39 = &v36[v27 - 8];
            v33 = *v39;
            v36 -= 4;
            if (v41 < 2)
            {
              break;
            }

            v38 = &v37[v27];
            v42 = *&v37[v27] - 1;
            v37 -= 4;
            v40 = v35;
          }

          while (v33 == v42);
          v43 = &v36[v27 - 4];
        }

        else
        {
          v35 = v52;
          v43 = v56;
        }

        *v43 = v33 + 1;
        v22 += v23[v35];
        v58 = v22;
      }

      else
      {
        v34 = x;
      }

      v21 = v34 + v18;
      v5 = (v5 + 2 * v18);
    }

    while (v21 < v54);
    v44 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v44 = v63;
    if (!v63)
    {
      goto LABEL_27;
    }
  }

  v64 = v44;
  operator delete(v44);
LABEL_27:
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  return _Q0.i16[0];
}

void mlx::core::unary_op<float,float,mlx::core::detail::Cosh>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4;
        v8 = v4[1];
        v4 += 2;
        xa = v8;
        v44 = _simd_cosh_f4(v7);
        v5[1] = _simd_cosh_f4(xa);
        *v5 = v44;
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = v4->f32[0];
      v4 = (v4 + 4);
      v5->f32[0] = coshf(v9);
      v5 = (v5 + 4);
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_33:
      v5->f32[0] = coshf(v4->f32[0]);
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v48, v3, v3 + 3, (v11 >> 2) - 1);
  v43 = (*a1)[6];
  if (v43)
  {
    v15 = 0;
    v16 = v48;
    v17 = v51;
    v18 = (((v50 - v49) << 30) - 0x100000000) >> 32;
    __p = v53;
    v45 = &v53[4 * v18];
    v19 = ((v50 - v49) >> 2) & 0x7FFFFFFF;
    v38 = v19 - 1;
    v41 = v18;
    v20 = 4 * v13;
    v21 = 4 * v19;
    v37 = v49 - 8;
    v42 = (v50 - v49) >> 2;
    v40 = v49 + 4 * v18;
    do
    {
      x = v15;
      if (v12)
      {
        v22 = &v4->f32[v16];
        v23 = v5;
        v24 = v12;
        do
        {
          *v23++ = coshf(*v22);
          v22 = (v22 + v20);
          --v24;
        }

        while (v24);
      }

      if (v42)
      {
        v25 = *v45;
        v26 = x;
        if (v42 >= 2 && v25 == *v40 - 1)
        {
          v27 = v38;
          v28 = __p;
          v29 = v37;
          v30 = v40;
          v31 = v45;
          v32 = v41;
          do
          {
            v33 = v27;
            *v31 = 0;
            v16 -= v17[v32] * (*v30 - 1);
            v48 = v16;
            --v27;
            v31 = &v28[v21 - 8];
            v25 = *v31;
            v28 -= 4;
            if (v33 < 2)
            {
              break;
            }

            v30 = &v29[v21];
            v34 = *&v29[v21] - 1;
            v29 -= 4;
            v32 = v27;
          }

          while (v25 == v34);
          v35 = &v28[v21 - 4];
        }

        else
        {
          v27 = v41;
          v35 = v45;
        }

        *v35 = v25 + 1;
        v16 += v17[v27];
        v48 = v16;
      }

      else
      {
        v26 = x;
      }

      v15 = v26 + v12;
      v5 = (v5 + 4 * v12);
    }

    while (v15 < v43);
    v36 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v36 = v53;
    if (!v53)
    {
      goto LABEL_27;
    }
  }

  v54 = v36;
  operator delete(v36);
LABEL_27:
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void mlx::core::unary_op<double,double,mlx::core::detail::Cosh>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 4)
    {
      do
      {
        v7 = *v4;
        v8 = v4[1];
        v4 += 2;
        xa = v8;
        v44 = _simd_cosh_d2(v7);
        v5[1] = _simd_cosh_d2(xa);
        *v5 = v44;
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v9 = v4->f64[0];
      v4 = (v4 + 8);
      v5->f64[0] = cosh(v9);
      v5 = (v5 + 8);
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_33:
      v5->f64[0] = cosh(v4->f64[0]);
      v5 = (v5 + 8);
      v4 = (v4 + 8 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v48, v3, v3 + 3, (v11 >> 2) - 1);
  v43 = (*a1)[6];
  if (v43)
  {
    v15 = 0;
    v16 = v48;
    v17 = v51;
    v18 = (((v50 - v49) << 30) - 0x100000000) >> 32;
    __p = v53;
    v45 = &v53[4 * v18];
    v19 = ((v50 - v49) >> 2) & 0x7FFFFFFF;
    v38 = v19 - 1;
    v41 = v18;
    v20 = 8 * v13;
    v21 = 4 * v19;
    v37 = v49 - 8;
    v42 = (v50 - v49) >> 2;
    v40 = v49 + 4 * v18;
    do
    {
      x = v15;
      if (v12)
      {
        v22 = &v4->f64[v16];
        v23 = v5;
        v24 = v12;
        do
        {
          *v23++ = cosh(*v22);
          v22 = (v22 + v20);
          --v24;
        }

        while (v24);
      }

      if (v42)
      {
        v25 = *v45;
        v26 = x;
        if (v42 >= 2 && v25 == *v40 - 1)
        {
          v27 = v38;
          v28 = __p;
          v29 = v37;
          v30 = v40;
          v31 = v45;
          v32 = v41;
          do
          {
            v33 = v27;
            *v31 = 0;
            v16 -= v17[v32] * (*v30 - 1);
            v48 = v16;
            --v27;
            v31 = &v28[v21 - 8];
            v25 = *v31;
            v28 -= 4;
            if (v33 < 2)
            {
              break;
            }

            v30 = &v29[v21];
            v34 = *&v29[v21] - 1;
            v29 -= 4;
            v32 = v27;
          }

          while (v25 == v34);
          v35 = &v28[v21 - 4];
        }

        else
        {
          v27 = v41;
          v35 = v45;
        }

        *v35 = v25 + 1;
        v16 += v17[v27];
        v48 = v16;
      }

      else
      {
        v26 = x;
      }

      v15 = v26 + v12;
      v5 = (v5 + 8 * v12);
    }

    while (v15 < v43);
    v36 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v36 = v53;
    if (!v53)
    {
      goto LABEL_27;
    }
  }

  v54 = v36;
  operator delete(v36);
LABEL_27:
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Cosh>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = *v4++;
      v39 = v7;
      *v5 = std::cosh[abi:ne200100]<float>(&v39);
      *(v5 + 1) = v8;
      v5 += 2;
    }

    return;
  }

  v9 = v3[1];
  if (v9 == *v3)
  {
    v11 = 1;
    v12 = 1;
LABEL_32:
    v37 = v5 + 1;
    do
    {
      v39 = *v4;
      *(v37 - 1) = std::cosh[abi:ne200100]<float>(&v39);
      *v37 = v38;
      v4 += v12;
      v37 += 2;
      --v11;
    }

    while (v11);
    return;
  }

  v10 = v9 - *v3;
  v11 = *(v9 - 4);
  v12 = *(v3[4] - 8);
  if ((v10 >> 2) <= 1)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v39, v3, v3 + 3, (v10 >> 2) - 1);
  if ((*a1)[6])
  {
    v14 = 0;
    v15 = 8 * v12;
    v16 = v5 + 1;
    do
    {
      if (v11)
      {
        v17 = &v4[v39];
        v18 = v16;
        v19 = v11;
        do
        {
          v46 = *v17;
          *(v18 - 1) = std::cosh[abi:ne200100]<float>(&v46);
          *v18 = v20;
          v17 = (v17 + v15);
          v18 += 2;
          --v19;
        }

        while (v19);
      }

      v21 = v41 - v40;
      v22 = (v41 - v40) >> 2;
      if (v22)
      {
        v23 = __p;
        v24 = ((v21 << 30) - 0x100000000) >> 32;
        v25 = __p + 4 * v24;
        v26 = *v25;
        v27 = v40 + 4 * v24;
        v28 = v42;
        v29 = v39;
        if (v22 >= 2 && v26 == *v27 - 1)
        {
          v32 = (v21 >> 2) & 0x7FFFFFFF;
          v31 = v32 - 1;
          v33 = 4 * v32;
          v34 = v40 - 8;
          do
          {
            v35 = v31;
            *v25 = 0;
            v29 -= v28[v24] * (*v27 - 1);
            v39 = v29;
            --v31;
            v25 = &v23[v33 - 8];
            v26 = *v25;
            v23 -= 4;
            if (v35 < 2)
            {
              break;
            }

            v27 = &v34[v33];
            v36 = *&v34[4 * v32] - 1;
            v34 -= 4;
            v24 = v31;
          }

          while (v26 == v36);
          v25 = &v23[4 * v32 - 4];
        }

        else
        {
          v31 = ((v21 << 30) - 0x100000000) >> 32;
        }

        *v25 = v26 + 1;
        v39 = v28[v31] + v29;
      }

      v14 += v11;
      v16 += 2 * v11;
    }

    while (v14 < (*a1)[6]);
  }

  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A575C04(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A575DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFC058;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFC058;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFC058;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Cosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Cosh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v14 = v3;
  v15 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Erf&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A576188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Erf&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Erf&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A57625C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Erf&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Erf&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Erf&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 2);
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A576440(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_real_fpINS3_6detail3ErfEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFC150;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_real_fpINS3_6detail3ErfEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFC150;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_real_fpINS3_6detail3ErfEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFC150;
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

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_real_fpINS3_6detail3ErfEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_real_fpINS3_6detail3ErfEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_real_fpINS3_6detail3ErfEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1, __n128 a2)
{
  mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24, a2);
  v3 = mlx::core::scheduler::scheduler(v2);

  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_real_fpINS3_6detail3ErfEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1, __n128 a2)
{
  v2 = a1 + 16;
  v3 = *(*(a1 + 16) + 56);
  if (v3 > 10)
  {
    if (v3 == 11)
    {

      mlx::core::unary_op<double,double,mlx::core::detail::Erf>(a1, a1 + 16);
    }

    else
    {
      if (v3 != 12)
      {
        goto LABEL_18;
      }

      mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Erf>(a1, a1 + 16);
    }
  }

  else
  {
    if (v3 != 9)
    {
      if (v3 == 10)
      {

        mlx::core::unary_op<float,float,mlx::core::detail::Erf>(a1, a1 + 16);
        return;
      }

LABEL_18:
      std::ostringstream::basic_ostringstream[abi:ne200100](v8);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[unary_real] Does not support ", 30);
      v5 = *(*v2 + 56);
      LODWORD(v7[0]) = v5;
      BYTE4(v7[0]) = BYTE4(v5);
      mlx::core::operator<<(v4, v7);
      exception = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v8, v7);
      MEMORY[0x25F851100](exception, v7);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    mlx::core::unary_op<half,half,mlx::core::detail::Erf>(a1, a1 + 16, a2);
  }
}

void sub_25A576884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Erf>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = *v4++;
      *v5++ = mlx::core::simd::erf<mlx::core::_MLX_BFloat16,1>(v7);
    }

    return;
  }

  v8 = v3[1];
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
    do
    {
LABEL_32:
      *v5++ = mlx::core::simd::erf<mlx::core::_MLX_BFloat16,1>(*v4);
      v4 += v11;
      --v10;
    }

    while (v10);
    return;
  }

  v9 = v8 - *v3;
  v10 = *(v8 - 4);
  v11 = *(v3[4] - 8);
  if ((v9 >> 2) <= 1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v34, v3, v3 + 3, (v9 >> 2) - 1);
  if ((*a1)[6])
  {
    v13 = 0;
    v14 = 2 * v11;
    do
    {
      if (v10)
      {
        v15 = &v4[v34];
        v16 = v5;
        v17 = v10;
        do
        {
          *v16++ = mlx::core::simd::erf<mlx::core::_MLX_BFloat16,1>(*v15);
          v15 = (v15 + v14);
          --v17;
        }

        while (v17);
      }

      v18 = v36 - v35;
      v19 = (v36 - v35) >> 2;
      if (v19)
      {
        v20 = __p;
        v21 = ((v18 << 30) - 0x100000000) >> 32;
        v22 = __p + 4 * v21;
        v23 = *v22;
        v24 = v35 + 4 * v21;
        v25 = v37;
        v26 = v34;
        if (v19 >= 2 && v23 == *v24 - 1)
        {
          v29 = (v18 >> 2) & 0x7FFFFFFF;
          v28 = v29 - 1;
          v30 = 4 * v29;
          v31 = v35 - 8;
          do
          {
            v32 = v28;
            *v22 = 0;
            v26 -= v25[v21] * (*v24 - 1);
            v34 = v26;
            --v28;
            v22 = &v20[v30 - 8];
            v23 = *v22;
            v20 -= 4;
            if (v32 < 2)
            {
              break;
            }

            v24 = &v31[v30];
            v33 = *&v31[4 * v29] - 1;
            v31 -= 4;
            v21 = v28;
          }

          while (v23 == v33);
          v22 = &v20[4 * v29 - 4];
        }

        else
        {
          v28 = ((v18 << 30) - 0x100000000) >> 32;
        }

        *v22 = v23 + 1;
        v34 = v25[v28] + v26;
      }

      v13 += v10;
      v5 += v10;
    }

    while (v13 < (*a1)[6]);
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void mlx::core::unary_op<half,half,mlx::core::detail::Erf>(uint64_t **a1, uint64_t a2, __n128 a3)
{
  v4 = *a1;
  v5 = (*a1)[19];
  v6 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v7 = v4[20];
    if (v7 >= 8)
    {
      do
      {
        v8 = *v5++;
        a3.n128_f64[0] = mlx::core::simd::erf<half,8>(v8);
        *v6++ = a3;
        v7 -= 8;
      }

      while (v7 > 7);
    }

    for (; v7; --v7)
    {
      v9 = v5->i16[0];
      v5 = (v5 + 2);
      a3.n128_u16[0] = v9;
      mlx::core::simd::erf<half,1>(a3);
      v6->n128_u16[0] = a3.n128_u16[0];
      v6 = (v6 + 2);
    }

    return;
  }

  v10 = v4[1];
  if (v10 == *v4)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_34:
      a3.n128_u16[0] = v5->i16[0];
      mlx::core::simd::erf<half,1>(a3);
      v6->n128_u16[0] = a3.n128_u16[0];
      v6 = (v6 + 2);
      v5 = (v5 + 2 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v4;
  v12 = *(v10 - 4);
  v13 = *(v4[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_34;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v37, v4, v4 + 3, (v11 >> 2) - 1);
  if ((*a1)[6])
  {
    v16 = 0;
    v17 = 2 * v13;
    do
    {
      if (v12)
      {
        v18 = v5 + v37;
        v19 = v6;
        v20 = v12;
        do
        {
          v15.n128_u16[0] = *v18;
          mlx::core::simd::erf<half,1>(v15);
          v19->n128_u16[0] = v15.n128_u16[0];
          v19 = (v19 + 2);
          v18 = (v18 + v17);
          --v20;
        }

        while (v20);
      }

      v21 = v39 - v38;
      v22 = (v39 - v38) >> 2;
      if (v22)
      {
        v23 = __p;
        v24 = ((v21 << 30) - 0x100000000) >> 32;
        v25 = __p + 4 * v24;
        v26 = *v25;
        v27 = v38 + 4 * v24;
        v28 = v40;
        v29 = v37;
        if (v22 >= 2 && v26 == *v27 - 1)
        {
          v32 = (v21 >> 2) & 0x7FFFFFFF;
          v31 = v32 - 1;
          v33 = 4 * v32;
          v34 = v38 - 8;
          do
          {
            v35 = v31;
            *v25 = 0;
            v29 -= v28[v24] * (*v27 - 1);
            v37 = v29;
            --v31;
            v25 = &v23[v33 - 8];
            v26 = *v25;
            v23 -= 4;
            if (v35 < 2)
            {
              break;
            }

            v27 = &v34[v33];
            v36 = *&v34[4 * v32] - 1;
            v34 -= 4;
            v24 = v31;
          }

          while (v26 == v36);
          v25 = &v23[4 * v32 - 4];
        }

        else
        {
          v31 = ((v21 << 30) - 0x100000000) >> 32;
        }

        *v25 = v26 + 1;
        v37 = v28[v31] + v29;
      }

      v16 += v12;
      v6 = (v6 + 2 * v12);
    }

    while (v16 < (*a1)[6]);
  }

  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void mlx::core::unary_op<float,float,mlx::core::detail::Erf>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4;
        v8 = *(v4 + 16);
        v4 += 32;
        *v40 = v7;
        v41 = v8;
        mlx::core::simd::erf<float,8>(v40, v46);
        v9 = v46[1];
        *v5 = v46[0];
        v5[1] = v9;
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 += 4;
      mlx::core::simd::erf<float,1>(v10);
      v5->i32[0] = v11;
      v5 = (v5 + 4);
    }

    return;
  }

  v12 = v3[1];
  if (v12 == *v3)
  {
    v14 = 1;
    v15 = 1;
    do
    {
LABEL_34:
      mlx::core::simd::erf<float,1>(*v4);
      v5->i32[0] = v39;
      v5 = (v5 + 4);
      v4 += 4 * v15;
      --v14;
    }

    while (v14);
    return;
  }

  v13 = v12 - *v3;
  v14 = *(v12 - 4);
  v15 = *(v3[4] - 8);
  if ((v13 >> 2) <= 1)
  {
    if (!v14)
    {
      return;
    }

    goto LABEL_34;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(v40, v3, v3 + 3, (v13 >> 2) - 1);
  if ((*a1)[6])
  {
    v17 = 0;
    v18 = 4 * v15;
    do
    {
      if (v14)
      {
        v19 = (v4 + 4 * v40[0]);
        v20 = v5;
        v21 = v14;
        do
        {
          mlx::core::simd::erf<float,1>(*v19);
          v20->i32[0] = v22;
          v20 = (v20 + 4);
          v19 = (v19 + v18);
          --v21;
        }

        while (v21);
      }

      v23 = v41 - v40[1];
      v24 = (v41 - v40[1]) >> 2;
      if (v24)
      {
        v25 = __p;
        v26 = ((v23 << 30) - 0x100000000) >> 32;
        v27 = __p + 4 * v26;
        v28 = *v27;
        v29 = v40[1] + 4 * v26;
        v30 = v42;
        v31 = v40[0];
        if (v24 >= 2 && v28 == *v29 - 1)
        {
          v34 = (v23 >> 2) & 0x7FFFFFFF;
          v33 = v34 - 1;
          v35 = 4 * v34;
          v36 = v40[1] - 8;
          do
          {
            v37 = v33;
            *v27 = 0;
            v31 -= v30[v26] * (*v29 - 1);
            v40[0] = v31;
            --v33;
            v27 = &v25[v35 - 8];
            v28 = *v27;
            v25 -= 4;
            if (v37 < 2)
            {
              break;
            }

            v29 = &v36[v35];
            v38 = *&v36[4 * v34] - 1;
            v36 -= 4;
            v26 = v33;
          }

          while (v28 == v38);
          v27 = &v25[4 * v34 - 4];
        }

        else
        {
          v33 = ((v23 << 30) - 0x100000000) >> 32;
        }

        *v27 = v28 + 1;
        v40[0] = &v31[v30[v33]];
      }

      v17 += v14;
      v5 = (v5 + 4 * v14);
    }

    while (v17 < (*a1)[6]);
  }

  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40[1])
  {
    *&v41 = v40[1];
    operator delete(v40[1]);
  }
}

void mlx::core::unary_op<double,double,mlx::core::detail::Erf>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 4)
    {
      do
      {
        v7 = *v4;
        v8 = *(v4 + 16);
        v4 += 32;
        *v40 = v7;
        v41 = v8;
        mlx::core::simd::erf<double,4>(v40, v46);
        v9 = v46[1];
        *v5 = v46[0];
        v5[1] = v9;
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 += 8;
      mlx::core::simd::erf<double,1>(v10);
      v5->i64[0] = v11;
      v5 = (v5 + 8);
    }

    return;
  }

  v12 = v3[1];
  if (v12 == *v3)
  {
    v14 = 1;
    v15 = 1;
    do
    {
LABEL_34:
      mlx::core::simd::erf<double,1>(*v4);
      v5->i64[0] = v39;
      v5 = (v5 + 8);
      v4 += 8 * v15;
      --v14;
    }

    while (v14);
    return;
  }

  v13 = v12 - *v3;
  v14 = *(v12 - 4);
  v15 = *(v3[4] - 8);
  if ((v13 >> 2) <= 1)
  {
    if (!v14)
    {
      return;
    }

    goto LABEL_34;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(v40, v3, v3 + 3, (v13 >> 2) - 1);
  if ((*a1)[6])
  {
    v17 = 0;
    v18 = 8 * v15;
    do
    {
      if (v14)
      {
        v19 = (v4 + 8 * v40[0]);
        v20 = v5;
        v21 = v14;
        do
        {
          mlx::core::simd::erf<double,1>(*v19);
          *v20++ = v22;
          v19 = (v19 + v18);
          --v21;
        }

        while (v21);
      }

      v23 = v41 - v40[1];
      v24 = (v41 - v40[1]) >> 2;
      if (v24)
      {
        v25 = __p;
        v26 = ((v23 << 30) - 0x100000000) >> 32;
        v27 = __p + 4 * v26;
        v28 = *v27;
        v29 = v40[1] + 4 * v26;
        v30 = v42;
        v31 = v40[0];
        if (v24 >= 2 && v28 == *v29 - 1)
        {
          v34 = (v23 >> 2) & 0x7FFFFFFF;
          v33 = v34 - 1;
          v35 = 4 * v34;
          v36 = v40[1] - 8;
          do
          {
            v37 = v33;
            *v27 = 0;
            v31 -= v30[v26] * (*v29 - 1);
            v40[0] = v31;
            --v33;
            v27 = &v25[v35 - 8];
            v28 = *v27;
            v25 -= 4;
            if (v37 < 2)
            {
              break;
            }

            v29 = &v36[v35];
            v38 = *&v36[4 * v34] - 1;
            v36 -= 4;
            v26 = v33;
          }

          while (v28 == v38);
          v27 = &v25[4 * v34 - 4];
        }

        else
        {
          v33 = ((v23 << 30) - 0x100000000) >> 32;
        }

        *v27 = v28 + 1;
        v40[0] = &v31[v30[v33]];
      }

      v17 += v14;
      v5 = (v5 + 8 * v14);
    }

    while (v17 < (*a1)[6]);
  }

  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40[1])
  {
    *&v41 = v40[1];
    operator delete(v40[1]);
  }
}

uint64_t mlx::core::simd::erf<mlx::core::_MLX_BFloat16,1>(int a1)
{
  LODWORD(v1) = a1 << 16;
  v2 = 1.0 / ((fabsf(COERCE_FLOAT(a1 << 16)) * 0.32759) + 1.0);
  v4 = mlx::core::simd::exp<float,1>(-(v1 * v1));
  v3 = (((((((v2 * 1.0614) + -1.4532) * v2) + 1.4214) * v2) + -0.2845) * v2) + 0.25483;
  v5 = COERCE_INT((-(v4 * v2) * v3) + 1.0) + (HIWORD(COERCE_UNSIGNED_INT((-(v4 * v2) * v3) + 1.0)) & 1) + 0x7FFF;
  v6 = HIWORD(v5);
  v7 = ((((v5 & 0xFFFF0000) >> 16) & 1) + (v5 & 0xFFFF0000) - 2147450881) >> 16;
  if (v1 <= 0.0)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

double mlx::core::simd::erf<half,8>(float16x8_t a1)
{
  v1 = vcvt_hight_f32_f16(a1);
  v2 = vcvtq_f32_f16(*a1.i8);
  v3 = vdupq_n_s32(0x3EA7BA05u);
  __asm { FMOV            V1.4S, #1.0 }

  v9 = vmlaq_f32(_Q1, v3, vabsq_f32(v1));
  v10 = vmlaq_f32(_Q1, v3, vabsq_f32(v2));
  v11 = vrecpeq_f32(v10);
  v12 = vmulq_f32(v11, vrecpsq_f32(v10, v11));
  v13 = vrecpeq_f32(v9);
  v14 = vmulq_f32(v13, vrecpsq_f32(v9, v13));
  v15 = vmulq_f32(v12, vrecpsq_f32(v10, v12));
  v16 = vmulq_f32(v14, vrecpsq_f32(v9, v14));
  v17 = vdupq_n_s32(0x3F87DC22u);
  v18 = vdupq_n_s32(0xBFBA00E3);
  v19 = vmlaq_f32(v18, v17, v16);
  v20 = vmlaq_f32(v18, v17, v15);
  v21 = vdupq_n_s32(0x3FB5F0E3u);
  v22 = vmlaq_f32(v21, v15, v20);
  v23 = vmlaq_f32(v21, v16, v19);
  v24 = vdupq_n_s32(0xBE91A98E);
  v25 = vmlaq_f32(v24, v16, v23);
  v26 = vdupq_n_s32(0x3E827906u);
  v27 = vmlaq_f32(v26, v15, vmlaq_f32(v24, v15, v22));
  v28 = vmlaq_f32(v26, v16, v25);
  v29 = vmulq_f32(vnegq_f32(v2), v2);
  v30 = vmulq_f32(vnegq_f32(v1), v1);
  v31 = vdupq_n_s32(0x3FB8AA3Bu);
  v32 = vmulq_f32(v30, v31);
  v33 = vmulq_f32(v29, v31);
  v25.i64[0] = 0x3F0000003F000000;
  v25.i64[1] = 0x3F0000003F000000;
  v34 = vaddq_f32(v33, v25);
  v35 = vrndmq_f32(vaddq_f32(v32, v25));
  v36 = vrndmq_f32(v34);
  v37 = vsubq_f32(v33, v36);
  v38 = vsubq_f32(v32, v35);
  v39 = vdupq_n_s32(0x3920FDDEu);
  v40 = vdupq_n_s32(0x3AAF9F29u);
  v41 = vmlaq_f32(v40, v39, v38);
  v42 = vmlaq_f32(v40, v39, v37);
  v43 = vdupq_n_s32(0x3C1D96A6u);
  v44 = vmlaq_f32(v43, v37, v42);
  v45 = vdupq_n_s32(0x3D635774u);
  v46 = vmlaq_f32(v45, v38, vmlaq_f32(v43, v38, v41));
  v47 = vdupq_n_s32(0x3E75FDEEu);
  v48 = vmlaq_f32(v47, v37, vmlaq_f32(v45, v37, v44));
  v49 = vdupq_n_s32(0x3F317218u);
  v50 = vmlaq_f32(v49, v38, vmlaq_f32(v47, v38, v46));
  v51 = vmlaq_f32(_Q1, v37, vmlaq_f32(v49, v37, v48));
  v52 = vmlaq_f32(_Q1, v38, v50);
  v53 = vbslq_s8(vceqq_f32(v29, v29), vmulq_f32(v51, vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v36), 0x17uLL), _Q1)), v29);
  v54 = vbslq_s8(vceqq_f32(v30, v30), vmulq_f32(v52, vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v35), 0x17uLL), _Q1)), v30);
  v55 = vdupq_n_s32(0x42B00000u);
  v56 = vcgtq_f32(v30, v55);
  v57 = vcgtq_f32(v29, v55);
  v58 = vdupq_n_s32(0xC2B00000);
  v59 = vcgtq_f32(v58, v29);
  v60 = vcgtq_f32(v58, v30);
  v58.i64[0] = 0x7F0000007FLL;
  v58.i64[1] = 0x7F0000007FLL;
  v61 = vbslq_s8(v57, v58, vnegq_f32(v53));
  v57.i64[0] = 0x8000000080000000;
  v57.i64[1] = 0x8000000080000000;
  v62 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(_Q1, v27, vmulq_f32(vbslq_s8(v59, v57, v61), v15))), vmlaq_f32(_Q1, v28, vmulq_f32(vbslq_s8(v60, v57, vbslq_s8(v56, v58, vnegq_f32(v54))), v16)));
  *&result = vbslq_s8(vcgtzq_f16(a1), v62, vnegq_f16(v62)).u64[0];
  return result;
}

void mlx::core::simd::erf<half,1>(__n128 _Q0)
{
  __asm { FCVT            S0, H0 }

  v6 = 1.0 / ((fabsf(_S0) * 0.32759) + 1.0);
  _S0 = (-(mlx::core::simd::exp<float,1>(-(_S0 * _S0)) * v6) * ((((((((v6 * 1.0614) + -1.4532) * v6) + 1.4214) * v6) + -0.2845) * v6) + 0.25483)) + 1.0;
  __asm
  {
    FCVT            H0, S0
    FCMP            H8, #0
  }
}

int8x16_t mlx::core::simd::erf<float,8>@<Q0>(float32x4_t *a1@<X0>, int8x16_t *a2@<X8>)
{
  v2 = a1[1];
  v3 = vdupq_n_s32(0x3EA7BA05u);
  __asm { FMOV            V2.4S, #1.0 }

  v9 = vmlaq_f32(_Q2, v3, vabsq_f32(v2));
  v10 = vmlaq_f32(_Q2, v3, vabsq_f32(*a1));
  v11 = vrecpeq_f32(v10);
  v12 = vmulq_f32(v11, vrecpsq_f32(v10, v11));
  v13 = vrecpeq_f32(v9);
  v14 = vmulq_f32(v13, vrecpsq_f32(v9, v13));
  v15 = vmulq_f32(v12, vrecpsq_f32(v10, v12));
  v16 = vmulq_f32(v14, vrecpsq_f32(v9, v14));
  v17 = vdupq_n_s32(0x3F87DC22u);
  v18 = vdupq_n_s32(0xBFBA00E3);
  v19 = vmlaq_f32(v18, v17, v15);
  v20 = vmlaq_f32(v18, v17, v16);
  v21 = vdupq_n_s32(0x3FB5F0E3u);
  v22 = vmlaq_f32(v21, v16, v20);
  v23 = vmlaq_f32(v21, v15, v19);
  v24 = vdupq_n_s32(0xBE91A98E);
  v25 = vmlaq_f32(v24, v15, v23);
  v26 = vdupq_n_s32(0x3E827906u);
  v27 = vmlaq_f32(v26, v16, vmlaq_f32(v24, v16, v22));
  v28 = vmlaq_f32(v26, v15, v25);
  v29 = vmulq_f32(v2, vnegq_f32(v2));
  v30 = vdupq_n_s32(0x3FB8AA3Bu);
  v31 = vmulq_f32(*a1, vnegq_f32(*a1));
  v32 = vmulq_f32(v31, v30);
  v33 = vmulq_f32(v29, v30);
  v34.i64[0] = 0x3F0000003F000000;
  v34.i64[1] = 0x3F0000003F000000;
  v35 = vaddq_f32(v33, v34);
  v36 = vrndmq_f32(vaddq_f32(v32, v34));
  v37 = vrndmq_f32(v35);
  v38 = vsubq_f32(v33, v37);
  v39 = vdupq_n_s32(0x3920FDDEu);
  v40 = vsubq_f32(v32, v36);
  v41 = vdupq_n_s32(0x3AAF9F29u);
  v42 = vmlaq_f32(v41, v39, v40);
  v43 = vmlaq_f32(v41, v39, v38);
  v44 = vdupq_n_s32(0x3C1D96A6u);
  v45 = vmlaq_f32(v44, v38, v43);
  v46 = vdupq_n_s32(0x3D635774u);
  v47 = vmlaq_f32(v46, v40, vmlaq_f32(v44, v40, v42));
  v48 = vdupq_n_s32(0x3E75FDEEu);
  v49 = vmlaq_f32(v48, v38, vmlaq_f32(v46, v38, v45));
  v50 = vdupq_n_s32(0x3F317218u);
  v51 = vmlaq_f32(v50, v40, vmlaq_f32(v48, v40, v47));
  v52 = vmlaq_f32(_Q2, v38, vmlaq_f32(v50, v38, v49));
  v53 = vmlaq_f32(_Q2, v40, v51);
  v54 = vbslq_s8(vceqq_f32(v29, v29), vmulq_f32(v52, vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v37), 0x17uLL), _Q2)), v29);
  v55 = vbslq_s8(vceqq_f32(v31, v31), vmulq_f32(v53, vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v36), 0x17uLL), _Q2)), v31);
  v56 = vdupq_n_s32(0x42B00000u);
  v57 = vcgtq_f32(v31, v56);
  v58 = vdupq_n_s32(0xC2B00000);
  v59 = vcgtq_f32(v29, v56);
  v60 = vcgtq_f32(v58, v29);
  v61 = vcgtq_f32(v58, v31);
  v58.i64[0] = 0x7F0000007FLL;
  v58.i64[1] = 0x7F0000007FLL;
  v62 = vbslq_s8(v59, v58, vnegq_f32(v54));
  v59.i64[0] = 0x8000000080000000;
  v59.i64[1] = 0x8000000080000000;
  v63 = vmulq_f32(v16, vbslq_s8(v60, v59, v62));
  v64 = vmlaq_f32(_Q2, v28, vmulq_f32(v15, vbslq_s8(v61, v59, vbslq_s8(v57, v58, vnegq_f32(v55)))));
  v65 = vmlaq_f32(_Q2, v27, v63);
  result = vbslq_s8(vcgtzq_f32(v2), v65, vnegq_f32(v65));
  *a2 = vbslq_s8(vcgtzq_f32(*a1), v64, vnegq_f32(v64));
  a2[1] = result;
  return result;
}

int8x16_t mlx::core::simd::erf<double,4>@<Q0>(float64x2_t *a1@<X0>, int8x16_t *a2@<X8>)
{
  v2 = a1[1];
  v3 = vcvt_hight_f32_f64(vcvt_f32_f64(*a1), v2);
  __asm { FMOV            V2.4S, #1.0 }

  v9 = vmlaq_f32(_Q2, vdupq_n_s32(0x3EA7BA05u), vabsq_f32(v3));
  v10 = vrecpeq_f32(v9);
  v11 = vmulq_f32(v10, vrecpsq_f32(v9, v10));
  v12 = vmulq_f32(v11, vrecpsq_f32(v9, v11));
  v13 = vmulq_f32(vnegq_f32(v3), v3);
  v14 = vmulq_f32(v13, vdupq_n_s32(0x3FB8AA3Bu));
  v15.i64[0] = 0x3F0000003F000000;
  v15.i64[1] = 0x3F0000003F000000;
  v16 = vrndmq_f32(vaddq_f32(v14, v15));
  v17 = vsubq_f32(v14, v16);
  v18.i64[0] = 0x7F0000007FLL;
  v18.i64[1] = 0x7F0000007FLL;
  v19 = vbslq_s8(vcgtq_f32(v13, vdupq_n_s32(0x42B00000u)), v18, vnegq_f32(vbslq_s8(vceqq_f32(v13, v13), vmulq_f32(vmlaq_f32(_Q2, v17, vmlaq_f32(vdupq_n_s32(0x3F317218u), v17, vmlaq_f32(vdupq_n_s32(0x3E75FDEEu), v17, vmlaq_f32(vdupq_n_s32(0x3D635774u), v17, vmlaq_f32(vdupq_n_s32(0x3C1D96A6u), v17, vmlaq_f32(vdupq_n_s32(0x3AAF9F29u), vdupq_n_s32(0x3920FDDEu), v17)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v16), 0x17uLL), _Q2)), v13)));
  v16.i64[0] = 0x8000000080000000;
  v16.i64[1] = 0x8000000080000000;
  v20 = vmlaq_f32(_Q2, vmlaq_f32(vdupq_n_s32(0x3E827906u), v12, vmlaq_f32(vdupq_n_s32(0xBE91A98E), v12, vmlaq_f32(vdupq_n_s32(0x3FB5F0E3u), v12, vmlaq_f32(vdupq_n_s32(0xBFBA00E3), vdupq_n_s32(0x3F87DC22u), v12)))), vmulq_f32(v12, vbslq_s8(vcgtq_f32(vdupq_n_s32(0xC2B00000), v13), v16, v19)));
  v21 = vcvtq_f64_f32(*v20.f32);
  v22 = vcvt_hight_f64_f32(v20);
  result = vbslq_s8(vcgtzq_f64(v2), v22, vnegq_f64(v22));
  *a2 = vbslq_s8(vcgtzq_f64(*a1), v21, vnegq_f64(v21));
  a2[1] = result;
  return result;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A577C04(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A577DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFC1D0;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFC1D0;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFC1D0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::Erf>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Erf,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v14 = v3;
  v15 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ErfInv&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A578188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ErfInv&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ErfInv&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A57825C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ErfInv&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ErfInv&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ErfInv&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 2);
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A578440(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_real_fpINS3_6detail6ErfInvEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFC2C8;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_real_fpINS3_6detail6ErfInvEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFC2C8;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_real_fpINS3_6detail6ErfInvEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFC2C8;
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

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_real_fpINS3_6detail6ErfInvEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_real_fpINS3_6detail6ErfInvEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_real_fpINS3_6detail6ErfInvEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1, __n128 a2)
{
  mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24, a2);
  v3 = mlx::core::scheduler::scheduler(v2);

  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_13unary_real_fpINS3_6detail6ErfInvEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1, __n128 a2)
{
  v2 = a1 + 16;
  v3 = *(*(a1 + 16) + 56);
  if (v3 > 10)
  {
    if (v3 == 11)
    {

      mlx::core::unary_op<double,double,mlx::core::detail::ErfInv>(a1, a1 + 16);
    }

    else
    {
      if (v3 != 12)
      {
        goto LABEL_18;
      }

      mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ErfInv>(a1, a1 + 16);
    }
  }

  else
  {
    if (v3 != 9)
    {
      if (v3 == 10)
      {

        mlx::core::unary_op<float,float,mlx::core::detail::ErfInv>(a1, a1 + 16);
        return;
      }

LABEL_18:
      std::ostringstream::basic_ostringstream[abi:ne200100](v8);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[unary_real] Does not support ", 30);
      v5 = *(*v2 + 56);
      LODWORD(v7[0]) = v5;
      BYTE4(v7[0]) = BYTE4(v5);
      mlx::core::operator<<(v4, v7);
      exception = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v8, v7);
      MEMORY[0x25F851100](exception, v7);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    mlx::core::unary_op<half,half,mlx::core::detail::ErfInv>(a1, a1 + 16, a2);
  }
}

void sub_25A578884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ErfInv>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = *v4++;
      *v5++ = mlx::core::simd::erfinv<mlx::core::_MLX_BFloat16,1>(v7);
    }

    return;
  }

  v8 = v3[1];
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
    do
    {
LABEL_32:
      *v5++ = mlx::core::simd::erfinv<mlx::core::_MLX_BFloat16,1>(*v4);
      v4 += v11;
      --v10;
    }

    while (v10);
    return;
  }

  v9 = v8 - *v3;
  v10 = *(v8 - 4);
  v11 = *(v3[4] - 8);
  if ((v9 >> 2) <= 1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v34, v3, v3 + 3, (v9 >> 2) - 1);
  if ((*a1)[6])
  {
    v13 = 0;
    v14 = 2 * v11;
    do
    {
      if (v10)
      {
        v15 = &v4[v34];
        v16 = v5;
        v17 = v10;
        do
        {
          *v16++ = mlx::core::simd::erfinv<mlx::core::_MLX_BFloat16,1>(*v15);
          v15 = (v15 + v14);
          --v17;
        }

        while (v17);
      }

      v18 = v36 - v35;
      v19 = (v36 - v35) >> 2;
      if (v19)
      {
        v20 = __p;
        v21 = ((v18 << 30) - 0x100000000) >> 32;
        v22 = __p + 4 * v21;
        v23 = *v22;
        v24 = v35 + 4 * v21;
        v25 = v37;
        v26 = v34;
        if (v19 >= 2 && v23 == *v24 - 1)
        {
          v29 = (v18 >> 2) & 0x7FFFFFFF;
          v28 = v29 - 1;
          v30 = 4 * v29;
          v31 = v35 - 8;
          do
          {
            v32 = v28;
            *v22 = 0;
            v26 -= v25[v21] * (*v24 - 1);
            v34 = v26;
            --v28;
            v22 = &v20[v30 - 8];
            v23 = *v22;
            v20 -= 4;
            if (v32 < 2)
            {
              break;
            }

            v24 = &v31[v30];
            v33 = *&v31[4 * v29] - 1;
            v31 -= 4;
            v21 = v28;
          }

          while (v23 == v33);
          v22 = &v20[4 * v29 - 4];
        }

        else
        {
          v28 = ((v18 << 30) - 0x100000000) >> 32;
        }

        *v22 = v23 + 1;
        v34 = v25[v28] + v26;
      }

      v13 += v10;
      v5 += v10;
    }

    while (v13 < (*a1)[6]);
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void mlx::core::unary_op<half,half,mlx::core::detail::ErfInv>(uint64_t **a1, uint64_t a2, __n128 a3)
{
  v4 = *a1;
  v5 = (*a1)[19];
  v6 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v7 = v4[20];
    if (v7 >= 8)
    {
      do
      {
        v8 = *v5++;
        a3.n128_f64[0] = mlx::core::simd::erfinv<half,8>(v8);
        *v6++ = a3;
        v7 -= 8;
      }

      while (v7 > 7);
    }

    for (; v7; --v7)
    {
      v9 = v5->i16[0];
      v5 = (v5 + 2);
      a3.n128_u16[0] = v9;
      v6->n128_u16[0] = mlx::core::simd::erfinv<half,1>(a3);
      v6 = (v6 + 2);
    }

    return;
  }

  v10 = v4[1];
  if (v10 == *v4)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_34:
      a3.n128_u16[0] = v5->i16[0];
      v6->n128_u16[0] = mlx::core::simd::erfinv<half,1>(a3);
      v6 = (v6 + 2);
      v5 = (v5 + 2 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v4;
  v12 = *(v10 - 4);
  v13 = *(v4[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_34;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v37, v4, v4 + 3, (v11 >> 2) - 1);
  if ((*a1)[6])
  {
    v16 = 0;
    v17 = 2 * v13;
    do
    {
      if (v12)
      {
        v18 = v5 + v37;
        v19 = v6;
        v20 = v12;
        do
        {
          v15.n128_u16[0] = *v18;
          v19->n128_u16[0] = mlx::core::simd::erfinv<half,1>(v15);
          v19 = (v19 + 2);
          v18 = (v18 + v17);
          --v20;
        }

        while (v20);
      }

      v21 = v39 - v38;
      v22 = (v39 - v38) >> 2;
      if (v22)
      {
        v23 = __p;
        v24 = ((v21 << 30) - 0x100000000) >> 32;
        v25 = __p + 4 * v24;
        v26 = *v25;
        v27 = v38 + 4 * v24;
        v28 = v40;
        v29 = v37;
        if (v22 >= 2 && v26 == *v27 - 1)
        {
          v32 = (v21 >> 2) & 0x7FFFFFFF;
          v31 = v32 - 1;
          v33 = 4 * v32;
          v34 = v38 - 8;
          do
          {
            v35 = v31;
            *v25 = 0;
            v29 -= v28[v24] * (*v27 - 1);
            v37 = v29;
            --v31;
            v25 = &v23[v33 - 8];
            v26 = *v25;
            v23 -= 4;
            if (v35 < 2)
            {
              break;
            }

            v27 = &v34[v33];
            v36 = *&v34[4 * v32] - 1;
            v34 -= 4;
            v24 = v31;
          }

          while (v26 == v36);
          v25 = &v23[4 * v32 - 4];
        }

        else
        {
          v31 = ((v21 << 30) - 0x100000000) >> 32;
        }

        *v25 = v26 + 1;
        v37 = v28[v31] + v29;
      }

      v16 += v12;
      v6 = (v6 + 2 * v12);
    }

    while (v16 < (*a1)[6]);
  }

  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void mlx::core::unary_op<float,float,mlx::core::detail::ErfInv>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4;
        v8 = *(v4 + 16);
        v4 += 32;
        *v37 = v7;
        v38 = v8;
        mlx::core::simd::erfinv<float,8>(v37, v43);
        v9 = v43[1];
        *v5 = v43[0];
        v5[1] = v9;
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 += 4;
      v5->f32[0] = mlx::core::simd::erfinv<float,1>(v10);
      v5 = (v5 + 4);
    }

    return;
  }

  v11 = v3[1];
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_34:
      v5->f32[0] = mlx::core::simd::erfinv<float,1>(*v4);
      v5 = (v5 + 4);
      v4 += 4 * v14;
      --v13;
    }

    while (v13);
    return;
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(v3[4] - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return;
    }

    goto LABEL_34;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(v37, v3, v3 + 3, (v12 >> 2) - 1);
  if ((*a1)[6])
  {
    v16 = 0;
    v17 = 4 * v14;
    do
    {
      if (v13)
      {
        v18 = (v4 + 4 * v37[0]);
        v19 = v5;
        v20 = v13;
        do
        {
          *v19++ = mlx::core::simd::erfinv<float,1>(*v18);
          v18 = (v18 + v17);
          --v20;
        }

        while (v20);
      }

      v21 = v38 - v37[1];
      v22 = (v38 - v37[1]) >> 2;
      if (v22)
      {
        v23 = __p;
        v24 = ((v21 << 30) - 0x100000000) >> 32;
        v25 = __p + 4 * v24;
        v26 = *v25;
        v27 = v37[1] + 4 * v24;
        v28 = v39;
        v29 = v37[0];
        if (v22 >= 2 && v26 == *v27 - 1)
        {
          v32 = (v21 >> 2) & 0x7FFFFFFF;
          v31 = v32 - 1;
          v33 = 4 * v32;
          v34 = v37[1] - 8;
          do
          {
            v35 = v31;
            *v25 = 0;
            v29 -= v28[v24] * (*v27 - 1);
            v37[0] = v29;
            --v31;
            v25 = &v23[v33 - 8];
            v26 = *v25;
            v23 -= 4;
            if (v35 < 2)
            {
              break;
            }

            v27 = &v34[v33];
            v36 = *&v34[4 * v32] - 1;
            v34 -= 4;
            v24 = v31;
          }

          while (v26 == v36);
          v25 = &v23[4 * v32 - 4];
        }

        else
        {
          v31 = ((v21 << 30) - 0x100000000) >> 32;
        }

        *v25 = v26 + 1;
        v37[0] = &v29[v28[v31]];
      }

      v16 += v13;
      v5 = (v5 + 4 * v13);
    }

    while (v16 < (*a1)[6]);
  }

  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v37[1])
  {
    *&v38 = v37[1];
    operator delete(v37[1]);
  }
}

void mlx::core::unary_op<double,double,mlx::core::detail::ErfInv>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 4)
    {
      __asm { FMOV            V1.4S, #1.0 }

      v61 = vdupq_n_s32(0x40C40000u);
      v62 = _Q1;
      v59 = vdupq_n_s32(0x32FBE4D7u);
      v60 = vdupq_n_s32(0x2FA6F5A2u);
      v57 = vdupq_n_s32(0x37EE53EFu);
      v58 = vdupq_n_s32(0x35A3F289u);
      v55 = vdupq_n_s32(0x3B46606Fu);
      v56 = vdupq_n_s32(0x39CE55C9u);
      v53 = vdupq_n_s32(0xBE877FB3);
      v54 = vdupq_n_s32(0x3B9E5490u);
      v51 = vdupq_n_s32(0x31BAE000u);
      v52 = vdupq_n_s32(0x3F570B52u);
      v49 = vdupq_n_s32(0x35A4C919u);
      v50 = vdupq_n_s32(0x3419DA01u);
      v47 = vdupq_n_s32(0xB86B85E8);
      v48 = vdupq_n_s32(0x33F29669u);
      v45 = vdupq_n_s32(0x3B17B200u);
      v46 = vdupq_n_s32(0xB91ADF48);
      v43 = vdupq_n_s32(0xBE6D9577);
      v44 = vdupq_n_s32(0x3C3D0F28u);
      v42 = vdupq_n_s32(0x3F62DFC4u);
      do
      {
        v12 = *v4;
        v11 = v4[1];
        v4 += 2;
        v63 = vcvt_hight_f32_f64(vcvt_f32_f64(v12), v11);
        v13 = _simd_log_f4(vmlaq_f32(v62, vsubq_f32(0, v63), v63));
        v14 = vmulq_f32(vbslq_s8(vcgtq_f32(vabsq_f32(v13), v61), vmlaq_f32(v52, v13, vmlaq_f32(v53, v13, vmlaq_f32(v54, v13, vmlaq_f32(v55, v13, vmlaq_f32(v56, v13, vmlaq_f32(v57, v13, vmlaq_f32(v58, v13, vmlaq_f32(v59, v60, v13)))))))), vmlaq_f32(v42, v13, vmlaq_f32(v43, v13, vmlaq_f32(v44, v13, vmlaq_f32(v45, v13, vmlaq_f32(v46, v13, vmlaq_f32(v47, v13, vmlaq_f32(v48, v13, vmlaq_f32(v49, v13, vmlaq_f32(v50, v51, v13)))))))))), v63);
        *v5 = vcvtq_f64_f32(*v14.f32);
        v5[1] = vcvt_hight_f64_f32(v14);
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v15 = v4->f64[0];
      v4 = (v4 + 8);
      v5->f64[0] = mlx::core::simd::erfinv<double,1>(v15);
      v5 = (v5 + 8);
    }

    return;
  }

  v16 = v3[1];
  if (v16 == *v3)
  {
    v18 = 1;
    v19 = 1;
    do
    {
LABEL_35:
      v5->f64[0] = mlx::core::simd::erfinv<double,1>(v4->f64[0]);
      v5 = (v5 + 8);
      v4 = (v4 + 8 * v19);
      --v18;
    }

    while (v18);
    return;
  }

  v17 = v16 - *v3;
  v18 = *(v16 - 4);
  v19 = *(v3[4] - 8);
  if ((v17 >> 2) <= 1)
  {
    if (!v18)
    {
      return;
    }

    goto LABEL_35;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v64, v3, v3 + 3, (v17 >> 2) - 1);
  if ((*a1)[6])
  {
    v21 = 0;
    v22 = 8 * v19;
    do
    {
      if (v18)
      {
        v23 = &v4->f64[v64];
        v24 = v5;
        v25 = v18;
        do
        {
          *v24++ = mlx::core::simd::erfinv<double,1>(*v23);
          v23 = (v23 + v22);
          --v25;
        }

        while (v25);
      }

      v26 = v66 - v65;
      v27 = (v66 - v65) >> 2;
      if (v27)
      {
        v28 = v69;
        v29 = ((v26 << 30) - 0x100000000) >> 32;
        v30 = &v69[4 * v29];
        v31 = *v30;
        v32 = &v65[4 * v29];
        v33 = v67;
        v34 = v64;
        if (v27 >= 2 && v31 == *v32 - 1)
        {
          v37 = (v26 >> 2) & 0x7FFFFFFF;
          v36 = v37 - 1;
          v38 = 4 * v37;
          v39 = v65 - 8;
          do
          {
            v40 = v36;
            *v30 = 0;
            v34 -= v33[v29] * (*v32 - 1);
            v64 = v34;
            --v36;
            v30 = &v28[v38 - 8];
            v31 = *v30;
            v28 -= 4;
            if (v40 < 2)
            {
              break;
            }

            v32 = &v39[v38];
            v41 = *&v39[4 * v37] - 1;
            v39 -= 4;
            v29 = v36;
          }

          while (v31 == v41);
          v30 = &v28[4 * v37 - 4];
        }

        else
        {
          v36 = ((v26 << 30) - 0x100000000) >> 32;
        }

        *v30 = v31 + 1;
        v64 = v33[v36] + v34;
      }

      v21 += v18;
      v5 = (v5 + 8 * v18);
    }

    while (v21 < (*a1)[6]);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }
}

uint64_t mlx::core::simd::erfinv<mlx::core::_MLX_BFloat16,1>(int a1)
{
  LODWORD(v1) = a1 << 16;
  v2 = logf((COERCE_FLOAT(a1 << 16) * (0.0 - COERCE_FLOAT(a1 << 16))) + 1.0);
  if (fabsf(v2) <= 6.125)
  {
    v3 = (((((((((((((((v2 * 0.0000000054388) + 0.00000014329) * v2) + 0.0000012277) * v2) + 0.00000011296) * v2) + -0.000056153) * v2) + -0.0001477) * v2) + 0.0023147) * v2) + 0.011539) * v2) + -0.23202;
    v4 = 0.88623;
  }

  else
  {
    v3 = (((((((((((((v2 * 3.037e-10) + 0.000000029324) * v2) + 0.0000012215) * v2) + 0.000028411) * v2) + 0.00039355) * v2) + 0.003027) * v2) + 0.0048319) * v2) + -0.26465;
    v4 = 0.84002;
  }

  return (COERCE_INT((v4 + (v3 * v2)) * v1) + (HIWORD(COERCE_UNSIGNED_INT((v4 + (v3 * v2)) * v1)) & 1) + 0x7FFF) >> 16;
}

double mlx::core::simd::erfinv<half,8>(float16x8_t a1)
{
  v53 = vcvt_hight_f32_f16(a1);
  v1 = vcvtq_f32_f16(*a1.i8);
  __asm { FMOV            V0.4S, #1.0 }

  x = vmlaq_f32(_Q0, vsubq_f32(0, v53), v53);
  v52 = v1;
  v50 = _simd_log_f4(vmlaq_f32(_Q0, vsubq_f32(0, v1), v1));
  v7 = _simd_log_f4(x);
  v8 = vdupq_n_s32(0x40C40000u);
  v9 = vcgtq_f32(vabsq_f32(v7), v8);
  v10 = vcgtq_f32(vabsq_f32(v50), v8);
  v11 = vdupq_n_s32(0x2FA6F5A2u);
  v12 = vdupq_n_s32(0x32FBE4D7u);
  v13 = vmlaq_f32(v12, v11, v50);
  v14 = vmlaq_f32(v12, v11, v7);
  v15 = vdupq_n_s32(0x35A3F289u);
  v16 = vmlaq_f32(v15, v7, v14);
  v17 = vdupq_n_s32(0x37EE53EFu);
  v18 = vmlaq_f32(v17, v50, vmlaq_f32(v15, v50, v13));
  v19 = vdupq_n_s32(0x39CE55C9u);
  v20 = vmlaq_f32(v19, v7, vmlaq_f32(v17, v7, v16));
  v21 = vdupq_n_s32(0x3B46606Fu);
  v22 = vmlaq_f32(v21, v50, vmlaq_f32(v19, v50, v18));
  v23 = vdupq_n_s32(0x3B9E5490u);
  v24 = vmlaq_f32(v23, v7, vmlaq_f32(v21, v7, v20));
  v25 = vdupq_n_s32(0xBE877FB3);
  v26 = vmlaq_f32(v25, v50, vmlaq_f32(v23, v50, v22));
  v27 = vdupq_n_s32(0x3F570B52u);
  v28 = vmlaq_f32(v27, v7, vmlaq_f32(v25, v7, v24));
  v29 = vmlaq_f32(v27, v50, v26);
  v30 = vdupq_n_s32(0x31BAE000u);
  v31 = vdupq_n_s32(0x3419DA01u);
  v32 = vmlaq_f32(v31, v30, v7);
  v33 = vmlaq_f32(v31, v30, v50);
  v34 = vdupq_n_s32(0x35A4C919u);
  v35 = vmlaq_f32(v34, v50, v33);
  v36 = vdupq_n_s32(0x33F29669u);
  v37 = vmlaq_f32(v36, v7, vmlaq_f32(v34, v7, v32));
  v38 = vdupq_n_s32(0xB86B85E8);
  v39 = vmlaq_f32(v38, v50, vmlaq_f32(v36, v50, v35));
  v40 = vdupq_n_s32(0xB91ADF48);
  v41 = vmlaq_f32(v40, v7, vmlaq_f32(v38, v7, v37));
  v42 = vdupq_n_s32(0x3B17B200u);
  v43 = vmlaq_f32(v42, v50, vmlaq_f32(v40, v50, v39));
  v44 = vdupq_n_s32(0x3C3D0F28u);
  v45 = vmlaq_f32(v44, v7, vmlaq_f32(v42, v7, v41));
  v46 = vdupq_n_s32(0xBE6D9577);
  v47 = vmlaq_f32(v46, v50, vmlaq_f32(v44, v50, v43));
  v48 = vdupq_n_s32(0x3F62DFC4u);
  *&result = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(vbslq_s8(v10, v29, vmlaq_f32(v48, v50, v47)), v52)), vmulq_f32(vbslq_s8(v9, v28, vmlaq_f32(v48, v7, vmlaq_f32(v46, v7, v45))), v53)).u64[0];
  return result;
}

__int16 mlx::core::simd::erfinv<half,1>@<H0>(__n128 _Q0@<Q0>)
{
  __asm { FCVT            S8, H0 }

  v6 = logf((_S8 * (0.0 - _S8)) + 1.0);
  if (fabsf(v6) <= 6.125)
  {
    v7 = (((((((((((((((v6 * 0.0000000054388) + 0.00000014329) * v6) + 0.0000012277) * v6) + 0.00000011296) * v6) + -0.000056153) * v6) + -0.0001477) * v6) + 0.0023147) * v6) + 0.011539) * v6) + -0.23202;
    v8 = 0.88623;
  }

  else
  {
    v7 = (((((((((((((v6 * 3.037e-10) + 0.000000029324) * v6) + 0.0000012215) * v6) + 0.000028411) * v6) + 0.00039355) * v6) + 0.003027) * v6) + 0.0048319) * v6) + -0.26465;
    v8 = 0.84002;
  }

  _S0 = (v8 + (v7 * v6)) * _S8;
  __asm { FCVT            H0, S0 }

  return result;
}

float32x4_t mlx::core::simd::erfinv<float,8>@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X8>)
{
  v55 = a1[1];
  __asm { FMOV            V0.4S, #1.0 }

  x = vmlaq_f32(_Q0, vsubq_f32(0, v55), v55);
  v54 = *a1;
  v52 = _simd_log_f4(vmlaq_f32(_Q0, vsubq_f32(0, *a1), *a1));
  v8 = _simd_log_f4(x);
  v9 = vdupq_n_s32(0x40C40000u);
  v10 = vcgtq_f32(vabsq_f32(v8), v9);
  v11 = vcgtq_f32(vabsq_f32(v52), v9);
  v12 = vdupq_n_s32(0x2FA6F5A2u);
  v13 = vdupq_n_s32(0x32FBE4D7u);
  v14 = vmlaq_f32(v13, v12, v52);
  v15 = vmlaq_f32(v13, v12, v8);
  v16 = vdupq_n_s32(0x35A3F289u);
  v17 = vmlaq_f32(v16, v8, v15);
  v18 = vdupq_n_s32(0x37EE53EFu);
  v19 = vmlaq_f32(v18, v52, vmlaq_f32(v16, v52, v14));
  v20 = vdupq_n_s32(0x39CE55C9u);
  v21 = vmlaq_f32(v20, v8, vmlaq_f32(v18, v8, v17));
  v22 = vdupq_n_s32(0x3B46606Fu);
  v23 = vmlaq_f32(v22, v52, vmlaq_f32(v20, v52, v19));
  v24 = vdupq_n_s32(0x3B9E5490u);
  v25 = vmlaq_f32(v24, v8, vmlaq_f32(v22, v8, v21));
  v26 = vdupq_n_s32(0xBE877FB3);
  v27 = vmlaq_f32(v26, v52, vmlaq_f32(v24, v52, v23));
  v28 = vdupq_n_s32(0x3F570B52u);
  v29 = vmlaq_f32(v28, v8, vmlaq_f32(v26, v8, v25));
  v30 = vmlaq_f32(v28, v52, v27);
  v31 = vdupq_n_s32(0x31BAE000u);
  v32 = vdupq_n_s32(0x3419DA01u);
  v33 = vmlaq_f32(v32, v31, v8);
  v34 = vmlaq_f32(v32, v31, v52);
  v35 = vdupq_n_s32(0x35A4C919u);
  v36 = vmlaq_f32(v35, v52, v34);
  v37 = vdupq_n_s32(0x33F29669u);
  v38 = vmlaq_f32(v37, v8, vmlaq_f32(v35, v8, v33));
  v39 = vdupq_n_s32(0xB86B85E8);
  v40 = vmlaq_f32(v39, v52, vmlaq_f32(v37, v52, v36));
  v41 = vdupq_n_s32(0xB91ADF48);
  v42 = vmlaq_f32(v41, v8, vmlaq_f32(v39, v8, v38));
  v43 = vdupq_n_s32(0x3B17B200u);
  v44 = vmlaq_f32(v43, v52, vmlaq_f32(v41, v52, v40));
  v45 = vdupq_n_s32(0x3C3D0F28u);
  v46 = vmlaq_f32(v45, v8, vmlaq_f32(v43, v8, v42));
  v47 = vdupq_n_s32(0xBE6D9577);
  v48 = vmlaq_f32(v47, v52, vmlaq_f32(v45, v52, v44));
  v49 = vdupq_n_s32(0x3F62DFC4u);
  v50 = vmlaq_f32(v49, v8, vmlaq_f32(v47, v8, v46));
  result = vmulq_f32(v54, vbslq_s8(v11, v30, vmlaq_f32(v49, v52, v48)));
  *a2 = result;
  a2[1] = vmulq_f32(v55, vbslq_s8(v10, v29, v50));
  return result;
}

float mlx::core::simd::erfinv<float,1>(float a1)
{
  v2 = logf((a1 * (0.0 - a1)) + 1.0);
  if (fabsf(v2) <= 6.125)
  {
    v3 = (((((((((((((((v2 * 0.0000000054388) + 0.00000014329) * v2) + 0.0000012277) * v2) + 0.00000011296) * v2) + -0.000056153) * v2) + -0.0001477) * v2) + 0.0023147) * v2) + 0.011539) * v2) + -0.23202;
    v4 = 0.88623;
  }

  else
  {
    v3 = (((((((((((((v2 * 3.037e-10) + 0.000000029324) * v2) + 0.0000012215) * v2) + 0.000028411) * v2) + 0.00039355) * v2) + 0.003027) * v2) + 0.0048319) * v2) + -0.26465;
    v4 = 0.84002;
  }

  return a1 * (v4 + (v3 * v2));
}

double mlx::core::simd::erfinv<double,1>(double a1)
{
  v1 = a1;
  v2 = logf((v1 * (0.0 - v1)) + 1.0);
  if (fabsf(v2) <= 6.125)
  {
    v3 = (((((((((((((((v2 * 0.0000000054388) + 0.00000014329) * v2) + 0.0000012277) * v2) + 0.00000011296) * v2) + -0.000056153) * v2) + -0.0001477) * v2) + 0.0023147) * v2) + 0.011539) * v2) + -0.23202;
    v4 = 0.88623;
  }

  else
  {
    v3 = (((((((((((((v2 * 3.037e-10) + 0.000000029324) * v2) + 0.0000012215) * v2) + 0.000028411) * v2) + 0.00039355) * v2) + 0.003027) * v2) + 0.0048319) * v2) + -0.26465;
    v4 = 0.84002;
  }

  return ((v4 + (v3 * v2)) * v1);
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A579E9C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A57A06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFC348;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFC348;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFC348;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_real_fp<mlx::core::detail::ErfInv>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ErfInv,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v14 = v3;
  v15 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Exp&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A57A420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Exp&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Exp&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A57A4F4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Exp&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Exp&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Exp&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 2);
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A57A6D8(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3ExpEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFC440;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3ExpEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFC440;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3ExpEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFC440;
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

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3ExpEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3ExpEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3ExpEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1, int32x4_t a2)
{
  mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24, a2);
  v3 = mlx::core::scheduler::scheduler(v2);

  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3ExpEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1, int32x4_t a2)
{
  v2 = a1 + 16;
  v3 = *(*(a1 + 16) + 56);
  if (v3 <= 10)
  {
    if (v3 == 9)
    {

      mlx::core::unary_op<half,half,mlx::core::detail::Exp>(a1, a1 + 16, a2);
    }

    else
    {
      if (v3 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::Exp>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v3)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::Exp>(a1, a1 + 16);
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Exp>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Exp>(a1, a1 + 16);
        return;
      default:
LABEL_22:
        std::ostringstream::basic_ostringstream[abi:ne200100](v8);
        v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[unary_fp] Does not support ", 28);
        v5 = *(*v2 + 56);
        LODWORD(v7[0]) = v5;
        BYTE4(v7[0]) = BYTE4(v5);
        mlx::core::operator<<(v4, v7);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v8, v7);
        MEMORY[0x25F851100](exception, v7);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void sub_25A57AB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Exp>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = *v4++;
      *v5++ = mlx::core::simd::exp<mlx::core::_MLX_BFloat16,1>(v7);
    }

    return;
  }

  v8 = v3[1];
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
    do
    {
LABEL_32:
      *v5++ = mlx::core::simd::exp<mlx::core::_MLX_BFloat16,1>(*v4);
      v4 += v11;
      --v10;
    }

    while (v10);
    return;
  }

  v9 = v8 - *v3;
  v10 = *(v8 - 4);
  v11 = *(v3[4] - 8);
  if ((v9 >> 2) <= 1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v34, v3, v3 + 3, (v9 >> 2) - 1);
  if ((*a1)[6])
  {
    v13 = 0;
    v14 = 2 * v11;
    do
    {
      if (v10)
      {
        v15 = &v4[v34];
        v16 = v5;
        v17 = v10;
        do
        {
          *v16++ = mlx::core::simd::exp<mlx::core::_MLX_BFloat16,1>(*v15);
          v15 = (v15 + v14);
          --v17;
        }

        while (v17);
      }

      v18 = v36 - v35;
      v19 = (v36 - v35) >> 2;
      if (v19)
      {
        v20 = __p;
        v21 = ((v18 << 30) - 0x100000000) >> 32;
        v22 = __p + 4 * v21;
        v23 = *v22;
        v24 = v35 + 4 * v21;
        v25 = v37;
        v26 = v34;
        if (v19 >= 2 && v23 == *v24 - 1)
        {
          v29 = (v18 >> 2) & 0x7FFFFFFF;
          v28 = v29 - 1;
          v30 = 4 * v29;
          v31 = v35 - 8;
          do
          {
            v32 = v28;
            *v22 = 0;
            v26 -= v25[v21] * (*v24 - 1);
            v34 = v26;
            --v28;
            v22 = &v20[v30 - 8];
            v23 = *v22;
            v20 -= 4;
            if (v32 < 2)
            {
              break;
            }

            v24 = &v31[v30];
            v33 = *&v31[4 * v29] - 1;
            v31 -= 4;
            v21 = v28;
          }

          while (v23 == v33);
          v22 = &v20[4 * v29 - 4];
        }

        else
        {
          v28 = ((v18 << 30) - 0x100000000) >> 32;
        }

        *v22 = v23 + 1;
        v34 = v25[v28] + v26;
      }

      v13 += v10;
      v5 += v10;
    }

    while (v13 < (*a1)[6]);
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void mlx::core::unary_op<half,half,mlx::core::detail::Exp>(uint64_t **a1, uint64_t a2, int32x4_t a3)
{
  v4 = *a1;
  v5 = (*a1)[19];
  v6 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v7 = v4[20];
    if (v7 >= 8)
    {
      a3 = vdupq_n_s32(0x3FB8AA3Bu);
      v8 = vdupq_n_s32(0x3920FDDEu);
      v9 = vdupq_n_s32(0x3AAF9F29u);
      v10 = vdupq_n_s32(0x3C1D96A6u);
      v11 = vdupq_n_s32(0x3D635774u);
      v12 = vdupq_n_s32(0x3E75FDEEu);
      v13.i64[0] = 0x3F0000003F000000;
      v13.i64[1] = 0x3F0000003F000000;
      v14 = vdupq_n_s32(0x3F317218u);
      __asm { FMOV            V16.4S, #1.0 }

      v19 = vdupq_n_s16(0x5580u);
      v20 = vdupq_n_s16(0xD580u);
      v21.i64[0] = 0x7C007C007C007C00;
      v21.i64[1] = 0x7C007C007C007C00;
      do
      {
        v22 = *v5++;
        v23 = vmulq_f32(vcvt_hight_f32_f16(v22), a3);
        v24 = vmulq_f32(vcvtq_f32_f16(*v22.i8), a3);
        v25 = vrndmq_f32(vaddq_f32(v23, v13));
        v26 = vrndmq_f32(vaddq_f32(v24, v13));
        v27 = vsubq_f32(v24, v26);
        v28 = vsubq_f32(v23, v25);
        *v6++ = vbicq_s8(vbslq_s8(vcgtq_f16(v22, v19), v21, vbslq_s8(vceqq_f16(v22, v22), vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(vmlaq_f32(_Q16, v27, vmlaq_f32(v14, v27, vmlaq_f32(v12, v27, vmlaq_f32(v11, v27, vmlaq_f32(v10, v27, vmlaq_f32(v9, v8, v27)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v26), 0x17uLL), _Q16))), vmulq_f32(vmlaq_f32(_Q16, v28, vmlaq_f32(v14, v28, vmlaq_f32(v12, v28, vmlaq_f32(v11, v28, vmlaq_f32(v10, v28, vmlaq_f32(v9, v8, v28)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v25), 0x17uLL), _Q16))), v22)), vcgtq_f16(v20, v22));
        v7 -= 8;
      }

      while (v7 > 7);
    }

    for (; v7; --v7)
    {
      v29 = v5->i16[0];
      v5 = (v5 + 2);
      a3.i16[0] = v29;
      v6->i16[0] = mlx::core::simd::exp<half,1>(a3);
      v6 = (v6 + 2);
    }

    return;
  }

  v30 = v4[1];
  if (v30 == *v4)
  {
    v32 = 1;
    v33 = 1;
    do
    {
LABEL_35:
      a3.i16[0] = v5->i16[0];
      v6->i16[0] = mlx::core::simd::exp<half,1>(a3);
      v6 = (v6 + 2);
      v5 = (v5 + 2 * v33);
      --v32;
    }

    while (v32);
    return;
  }

  v31 = v30 - *v4;
  v32 = *(v30 - 4);
  v33 = *(v4[4] - 8);
  if ((v31 >> 2) <= 1)
  {
    if (!v32)
    {
      return;
    }

    goto LABEL_35;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v57, v4, v4 + 3, (v31 >> 2) - 1);
  if ((*a1)[6])
  {
    v36 = 0;
    v37 = 2 * v33;
    do
    {
      if (v32)
      {
        v38 = v5 + v57;
        v39 = v6;
        v40 = v32;
        do
        {
          v35.n128_u16[0] = *v38;
          v39->i16[0] = mlx::core::simd::exp<half,1>(v35);
          v39 = (v39 + 2);
          v38 = (v38 + v37);
          --v40;
        }

        while (v40);
      }

      v41 = v59 - v58;
      v42 = (v59 - v58) >> 2;
      if (v42)
      {
        v43 = __p;
        v44 = ((v41 << 30) - 0x100000000) >> 32;
        v45 = __p + 4 * v44;
        v46 = *v45;
        v47 = v58 + 4 * v44;
        v48 = v60;
        v49 = v57;
        if (v42 >= 2 && v46 == *v47 - 1)
        {
          v52 = (v41 >> 2) & 0x7FFFFFFF;
          v51 = v52 - 1;
          v53 = 4 * v52;
          v54 = v58 - 8;
          do
          {
            v55 = v51;
            *v45 = 0;
            v49 -= v48[v44] * (*v47 - 1);
            v57 = v49;
            --v51;
            v45 = &v43[v53 - 8];
            v46 = *v45;
            v43 -= 4;
            if (v55 < 2)
            {
              break;
            }

            v47 = &v54[v53];
            v56 = *&v54[4 * v52] - 1;
            v54 -= 4;
            v44 = v51;
          }

          while (v46 == v56);
          v45 = &v43[4 * v52 - 4];
        }

        else
        {
          v51 = ((v41 << 30) - 0x100000000) >> 32;
        }

        *v45 = v46 + 1;
        v57 = v48[v51] + v49;
      }

      v36 += v32;
      v6 = (v6 + 2 * v32);
    }

    while (v36 < (*a1)[6]);
  }

  if (__p)
  {
    v63 = __p;
    operator delete(__p);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

void mlx::core::unary_op<float,float,mlx::core::detail::Exp>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      v7 = vdupq_n_s32(0x3FB8AA3Bu);
      v8.i64[0] = 0x3F0000003F000000;
      v8.i64[1] = 0x3F0000003F000000;
      v9 = vdupq_n_s32(0x3920FDDEu);
      v10 = vdupq_n_s32(0x3AAF9F29u);
      v11 = vdupq_n_s32(0x3C1D96A6u);
      v12 = vdupq_n_s32(0x3D635774u);
      v13 = vdupq_n_s32(0x3E75FDEEu);
      v14 = vdupq_n_s32(0x3F317218u);
      v15 = vdupq_n_s32(0x42B00000u);
      __asm { FMOV            V17.4S, #1.0 }

      v20.i64[0] = 0x7F0000007FLL;
      v20.i64[1] = 0x7F0000007FLL;
      v21 = vnegq_f32(v20);
      v22 = vdupq_n_s32(0xC2B00000);
      do
      {
        v23 = *v4;
        v24 = v4[1];
        v4 += 2;
        v25 = vmulq_f32(v24, v7);
        v26 = vmulq_f32(v23, v7);
        v27 = vrndmq_f32(vaddq_f32(v25, v8));
        v28 = vrndmq_f32(vaddq_f32(v26, v8));
        v29 = vsubq_f32(v26, v28);
        v30 = vsubq_f32(v25, v27);
        *v5 = vbicq_s8(vbslq_s8(vcgtq_f32(v23, v15), v21, vbslq_s8(vceqq_f32(v23, v23), vmulq_f32(vmlaq_f32(_Q17, v29, vmlaq_f32(v14, v29, vmlaq_f32(v13, v29, vmlaq_f32(v12, v29, vmlaq_f32(v11, v29, vmlaq_f32(v10, v9, v29)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v28), 0x17uLL), _Q17)), v23)), vcgtq_f32(v22, v23));
        v5[1] = vbicq_s8(vbslq_s8(vcgtq_f32(v24, v15), v21, vbslq_s8(vceqq_f32(v24, v24), vmulq_f32(vmlaq_f32(_Q17, v30, vmlaq_f32(v14, v30, vmlaq_f32(v13, v30, vmlaq_f32(v12, v30, vmlaq_f32(v11, v30, vmlaq_f32(v10, v9, v30)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v27), 0x17uLL), _Q17)), v24)), vcgtq_f32(v22, v24));
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v31 = v4->f32[0];
      v4 = (v4 + 4);
      *v5->i32 = mlx::core::simd::exp<float,1>(v31);
      v5 = (v5 + 4);
    }

    return;
  }

  v32 = v3[1];
  if (v32 == *v3)
  {
    v34 = 1;
    v35 = 1;
    do
    {
LABEL_35:
      *v5->i32 = mlx::core::simd::exp<float,1>(v4->f32[0]);
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v35);
      --v34;
    }

    while (v34);
    return;
  }

  v33 = v32 - *v3;
  v34 = *(v32 - 4);
  v35 = *(v3[4] - 8);
  if ((v33 >> 2) <= 1)
  {
    if (!v34)
    {
      return;
    }

    goto LABEL_35;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v58, v3, v3 + 3, (v33 >> 2) - 1);
  if ((*a1)[6])
  {
    v37 = 0;
    v38 = 4 * v35;
    do
    {
      if (v34)
      {
        v39 = &v4->f32[v58];
        v40 = v5;
        v41 = v34;
        do
        {
          *v40++ = mlx::core::simd::exp<float,1>(*v39);
          v39 = (v39 + v38);
          --v41;
        }

        while (v41);
      }

      v42 = v60 - v59;
      v43 = (v60 - v59) >> 2;
      if (v43)
      {
        v44 = __p;
        v45 = ((v42 << 30) - 0x100000000) >> 32;
        v46 = __p + 4 * v45;
        v47 = *v46;
        v48 = v59 + 4 * v45;
        v49 = v61;
        v50 = v58;
        if (v43 >= 2 && v47 == *v48 - 1)
        {
          v53 = (v42 >> 2) & 0x7FFFFFFF;
          v52 = v53 - 1;
          v54 = 4 * v53;
          v55 = v59 - 8;
          do
          {
            v56 = v52;
            *v46 = 0;
            v50 -= v49[v45] * (*v48 - 1);
            v58 = v50;
            --v52;
            v46 = &v44[v54 - 8];
            v47 = *v46;
            v44 -= 4;
            if (v56 < 2)
            {
              break;
            }

            v48 = &v55[v54];
            v57 = *&v55[4 * v53] - 1;
            v55 -= 4;
            v45 = v52;
          }

          while (v47 == v57);
          v46 = &v44[4 * v53 - 4];
        }

        else
        {
          v52 = ((v42 << 30) - 0x100000000) >> 32;
        }

        *v46 = v47 + 1;
        v58 = v49[v52] + v50;
      }

      v37 += v34;
      v5 = (v5 + 4 * v34);
    }

    while (v37 < (*a1)[6]);
  }

  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }
}

void mlx::core::unary_op<double,double,mlx::core::detail::Exp>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 4)
    {
      v7 = vdupq_n_s32(0x3FB8AA3Bu);
      v8.i64[0] = 0x3F0000003F000000;
      v8.i64[1] = 0x3F0000003F000000;
      v9 = vdupq_n_s32(0x3920FDDEu);
      v10 = vdupq_n_s32(0x3AAF9F29u);
      v11 = vdupq_n_s32(0x3C1D96A6u);
      v12 = vdupq_n_s32(0x3D635774u);
      v13 = vdupq_n_s32(0x3E75FDEEu);
      v14 = vdupq_n_s32(0x3F317218u);
      v15 = vdupq_n_s32(0x42B00000u);
      __asm { FMOV            V17.4S, #1.0 }

      v20 = vdupq_n_s32(0xC2B00000);
      v21.i64[0] = 0x7F0000007FLL;
      v21.i64[1] = 0x7F0000007FLL;
      v22 = vnegq_f32(v21);
      do
      {
        v24 = *v4;
        v23 = v4[1];
        v4 += 2;
        v25 = vcvt_hight_f32_f64(vcvt_f32_f64(v24), v23);
        v26 = vmulq_f32(v25, v7);
        v27 = vrndmq_f32(vaddq_f32(v26, v8));
        v28 = vsubq_f32(v26, v27);
        v29 = vbicq_s8(vbslq_s8(vcgtq_f32(v25, v15), v22, vbslq_s8(vceqq_f32(v25, v25), vmulq_f32(vmlaq_f32(_Q17, v28, vmlaq_f32(v14, v28, vmlaq_f32(v13, v28, vmlaq_f32(v12, v28, vmlaq_f32(v11, v28, vmlaq_f32(v10, v9, v28)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v27), 0x17uLL), _Q17)), v25)), vcgtq_f32(v20, v25));
        *v5 = vcvtq_f64_f32(*v29.f32);
        v5[1] = vcvt_hight_f64_f32(v29);
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v30 = v4->f64[0];
      v4 = (v4 + 8);
      v5->f64[0] = mlx::core::simd::exp<double,1>(v30);
      v5 = (v5 + 8);
    }

    return;
  }

  v31 = v3[1];
  if (v31 == *v3)
  {
    v33 = 1;
    v34 = 1;
    do
    {
LABEL_35:
      v5->f64[0] = mlx::core::simd::exp<double,1>(v4->f64[0]);
      v5 = (v5 + 8);
      v4 = (v4 + 8 * v34);
      --v33;
    }

    while (v33);
    return;
  }

  v32 = v31 - *v3;
  v33 = *(v31 - 4);
  v34 = *(v3[4] - 8);
  if ((v32 >> 2) <= 1)
  {
    if (!v33)
    {
      return;
    }

    goto LABEL_35;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v57, v3, v3 + 3, (v32 >> 2) - 1);
  if ((*a1)[6])
  {
    v36 = 0;
    v37 = 8 * v34;
    do
    {
      if (v33)
      {
        v38 = &v4->f64[v57];
        v39 = v5;
        v40 = v33;
        do
        {
          *v39++ = mlx::core::simd::exp<double,1>(*v38);
          v38 = (v38 + v37);
          --v40;
        }

        while (v40);
      }

      v41 = v59 - v58;
      v42 = (v59 - v58) >> 2;
      if (v42)
      {
        v43 = __p;
        v44 = ((v41 << 30) - 0x100000000) >> 32;
        v45 = __p + 4 * v44;
        v46 = *v45;
        v47 = v58 + 4 * v44;
        v48 = v60;
        v49 = v57;
        if (v42 >= 2 && v46 == *v47 - 1)
        {
          v52 = (v41 >> 2) & 0x7FFFFFFF;
          v51 = v52 - 1;
          v53 = 4 * v52;
          v54 = v58 - 8;
          do
          {
            v55 = v51;
            *v45 = 0;
            v49 -= v48[v44] * (*v47 - 1);
            v57 = v49;
            --v51;
            v45 = &v43[v53 - 8];
            v46 = *v45;
            v43 -= 4;
            if (v55 < 2)
            {
              break;
            }

            v47 = &v54[v53];
            v56 = *&v54[4 * v52] - 1;
            v54 -= 4;
            v44 = v51;
          }

          while (v46 == v56);
          v45 = &v43[4 * v52 - 4];
        }

        else
        {
          v51 = ((v41 << 30) - 0x100000000) >> 32;
        }

        *v45 = v46 + 1;
        v57 = v48[v51] + v49;
      }

      v36 += v33;
      v5 = (v5 + 8 * v33);
    }

    while (v36 < (*a1)[6]);
  }

  if (__p)
  {
    v63 = __p;
    operator delete(__p);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Exp>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = *v4++;
      v42 = v7;
      std::exp[abi:ne200100]<float>(&v42);
      *v5 = v8;
      v5[1] = v9;
      v5 += 2;
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
LABEL_32:
    v39 = v5 + 1;
    do
    {
      v42 = *v4;
      std::exp[abi:ne200100]<float>(&v42);
      *(v39 - 1) = v40;
      *v39 = v41;
      v4 += v13;
      v39 += 2;
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v42, v3, v3 + 3, (v11 >> 2) - 1);
  if ((*a1)[6])
  {
    v15 = 0;
    v16 = 8 * v13;
    v17 = v5 + 1;
    do
    {
      if (v12)
      {
        v18 = &v4[v42];
        v19 = v17;
        v20 = v12;
        do
        {
          v49 = *v18;
          std::exp[abi:ne200100]<float>(&v49);
          *(v19 - 1) = v21;
          *v19 = v22;
          v18 = (v18 + v16);
          v19 += 2;
          --v20;
        }

        while (v20);
      }

      v23 = v44 - v43;
      v24 = (v44 - v43) >> 2;
      if (v24)
      {
        v25 = __p;
        v26 = ((v23 << 30) - 0x100000000) >> 32;
        v27 = __p + 4 * v26;
        v28 = *v27;
        v29 = v43 + 4 * v26;
        v30 = v45;
        v31 = v42;
        if (v24 >= 2 && v28 == *v29 - 1)
        {
          v34 = (v23 >> 2) & 0x7FFFFFFF;
          v33 = v34 - 1;
          v35 = 4 * v34;
          v36 = v43 - 8;
          do
          {
            v37 = v33;
            *v27 = 0;
            v31 -= v30[v26] * (*v29 - 1);
            v42 = v31;
            --v33;
            v27 = &v25[v35 - 8];
            v28 = *v27;
            v25 -= 4;
            if (v37 < 2)
            {
              break;
            }

            v29 = &v36[v35];
            v38 = *&v36[4 * v34] - 1;
            v36 -= 4;
            v26 = v33;
          }

          while (v28 == v38);
          v27 = &v25[4 * v34 - 4];
        }

        else
        {
          v33 = ((v23 << 30) - 0x100000000) >> 32;
        }

        *v27 = v28 + 1;
        v42 = v30[v33] + v31;
      }

      v15 += v12;
      v17 += 2 * v12;
    }

    while (v15 < (*a1)[6]);
  }

  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }
}

__int16 mlx::core::simd::exp<half,1>@<H0>(__n128 _Q0@<Q0>)
{
  __asm { FCVT            S1, H0 }

  v6 = _S1 * 1.4427;
  v7 = floor(v6 + 0.5);
  v8 = v6 - v7;
  _S1 = ((((((((((((v8 * 0.00015353) + 0.0013399) * v8) + 0.0096184) * v8) + 0.055503) * v8) + 0.24023) * v8) + 0.69315) * v8) + 1.0) * COERCE_FLOAT((v7 << 23) + 1065353216);
  __asm { FCVT            H1, S1 }

  if (*_Q0.n128_u16 > COERCE_SHORT_FLOAT(21888))
  {
    _H1 = COERCE_SHORT_FLOAT(31744);
  }

  _NF = *_Q0.n128_u16 < COERCE_SHORT_FLOAT(-10880);
  result = 0;
  if (!_NF)
  {
    *&result = _H1;
  }

  return result;
}

double mlx::core::simd::exp<double,1>(double a1)
{
  v1 = a1;
  v2 = floor((v1 * 1.4427) + 0.5);
  v3 = (v1 * 1.4427) - v2;
  v4 = ((((((((((((v3 * 0.00015353) + 0.0013399) * v3) + 0.0096184) * v3) + 0.055503) * v3) + 0.24023) * v3) + 0.69315) * v3) + 1.0) * COERCE_FLOAT((v2 << 23) + 1065353216);
  if (v1 > 88.0)
  {
    v4 = INFINITY;
  }

  v5 = v1 < -88.0;
  v6 = 0.0;
  if (!v5)
  {
    return v4;
  }

  return v6;
}

void std::exp[abi:ne200100]<float>(float *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 == 0.0)
  {
    expf(v1);
    return;
  }

  if (fabsf(v1) != INFINITY)
  {
    goto LABEL_12;
  }

  if (v1 < 0.0)
  {
    if ((LODWORD(v2) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      v2 = 1.0;
    }

    goto LABEL_12;
  }

  if ((LODWORD(v2) & 0x7FFFFFFFu) < 0x7F800000)
  {
LABEL_12:
    v4 = v2;
    expf(v1);
    __sincosf_stret(v4);
    return;
  }

  if (fabsf(v2) != INFINITY)
  {
    v3 = *(a1 + 1);
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A57BE2C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A57BFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFC4C0;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFC4C0;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFC4C0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Exp>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Exp,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v14 = v3;
  v15 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Expm1&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A57C3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Expm1&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Expm1&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}