void sub_25A436D90(_Unwind_Exception *a1)
{
  mlx::core::ContiguousIterator::~ContiguousIterator((v1 - 192));
  *(v1 - 192) = v1 - 112;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_286BF62C8;
  mlx::core::array::~array((a1 + 96));
  v5 = (a1 + 72);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v5);
  mlx::core::array::~array((a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

{
  *a1 = &unk_286BF62C8;
  mlx::core::array::~array((a1 + 96));
  v5 = (a1 + 72);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v5);
  mlx::core::array::~array((a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return MEMORY[0x25F851760](a1, 0x10B1C40C2F501AALL);
}

void *std::__function::__func<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF62C8;
  result = std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::__bind((a2 + 8), (a1 + 8));
  *(a2 + 116) = 0;
  *(a2 + 113) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 96));
  v4 = (a1 + 72);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
  mlx::core::array::~array((a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }
}

void std::__function::__func<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 96));
  v4 = (a1 + 72);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
  mlx::core::array::~array((a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::cpu::CommandEncoder::dispatch<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>(mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0 &&)::{lambda(void)#1}::~dispatch(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  return a1;
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10GatherAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF63C0;
  v2 = (a1 + 4);
  mlx::core::array::~array((a1 + 8));
  mlx::core::array::~array((a1 + 6));
  mlx::core::array::~array(v2);
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10GatherAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF63C0;
  v2 = (a1 + 4);
  mlx::core::array::~array((a1 + 8));
  mlx::core::array::~array((a1 + 6));
  mlx::core::array::~array(v2);

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10GatherAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BF63C0;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  *(a2 + 24) = *(result + 24);
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 56);
  *(a2 + 48) = *(result + 48);
  *(a2 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 72);
  *(a2 + 64) = *(result + 64);
  *(a2 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10GatherAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 64));
  mlx::core::array::~array((a1 + 48));

  mlx::core::array::~array((a1 + 32));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10GatherAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 64));
  mlx::core::array::~array((a1 + 48));
  mlx::core::array::~array((a1 + 32));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10GatherAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  std::__bind<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::operator()[abi:ne200100]<>((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_10GatherAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::operator()[abi:ne200100]<>(int *a1)
{
  v2 = (a1 + 6);
  v3 = *(*(a1 + 3) + 56);
  if (v3 > 4)
  {
    if (v3 > 6)
    {
      if (v3 == 7)
      {
        v32 = (a1 + 2);
        v35 = *a1;
        v33 = (a1 + 10);
        v34 = v35;

        mlx::core::dispatch_gather_axis<int>(v32, v2, v33, v34);
      }

      else
      {
        if (v3 != 8)
        {
          goto LABEL_34;
        }

        v16 = (a1 + 2);
        v19 = *a1;
        v17 = (a1 + 10);
        v18 = v19;

        mlx::core::dispatch_gather_axis<long long>(v16, v2, v17, v18);
      }
    }

    else if (v3 == 5)
    {
      v24 = (a1 + 2);
      v27 = *a1;
      v25 = (a1 + 10);
      v26 = v27;

      mlx::core::dispatch_gather_axis<signed char>(v24, v2, v25, v26);
    }

    else
    {
      v8 = (a1 + 2);
      v11 = *a1;
      v9 = (a1 + 10);
      v10 = v11;

      mlx::core::dispatch_gather_axis<short>(v8, v2, v9, v10);
    }
  }

  else if (v3 > 2)
  {
    if (v3 == 3)
    {
      v28 = (a1 + 2);
      v31 = *a1;
      v29 = (a1 + 10);
      v30 = v31;

      mlx::core::dispatch_gather_axis<unsigned int>(v28, v2, v29, v30);
    }

    else
    {
      v12 = (a1 + 2);
      v15 = *a1;
      v13 = (a1 + 10);
      v14 = v15;

      mlx::core::dispatch_gather_axis<unsigned long long>(v12, v2, v13, v14);
    }
  }

  else
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v4 = (a1 + 2);
        v7 = *a1;
        v5 = (a1 + 10);
        v6 = v7;

        mlx::core::dispatch_gather_axis<unsigned short>(v4, v2, v5, v6);
        return;
      }

LABEL_34:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[GatherAxis::eval_cpu] Cannot gather with indices type.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v20 = (a1 + 2);
    v23 = *a1;
    v21 = (a1 + 10);
    v22 = v23;

    mlx::core::dispatch_gather_axis<unsigned char>(v20, v2, v21, v22);
  }
}

void mlx::core::dispatch_gather_axis<unsigned char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather_axis<BOOL,unsigned char>(a1, a2, a3, a4);
      break;
    case 1:
    case 5:
      mlx::core::gather_axis<unsigned char,unsigned char>(a1, a2, a3, a4);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather_axis<unsigned short,unsigned char>(a1, a2, a3, a4);
      break;
    case 3:
    case 7:
      mlx::core::gather_axis<unsigned int,unsigned char>(a1, a2, a3, a4);
      break;
    case 4:
    case 8:
      mlx::core::gather_axis<unsigned long long,unsigned char>(a1, a2, a3, a4);
      break;
    case 9:
      mlx::core::gather_axis<half,unsigned char>(a1, a2, a3, a4);
      break;
    case 0xA:
      mlx::core::gather_axis<float,unsigned char>(a1, a2, a3, a4);
      break;
    case 0xB:
      mlx::core::gather_axis<double,unsigned char>(a1, a2, a3, a4);
      break;
    case 0xD:
      mlx::core::gather_axis<mlx::core::complex64_t,unsigned char>(a1, a2, a3, a4);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather_axis<unsigned short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather_axis<BOOL,unsigned short>(a1, a2, a3, a4);
      break;
    case 1:
    case 5:
      mlx::core::gather_axis<unsigned char,unsigned short>(a1, a2, a3, a4);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather_axis<unsigned short,unsigned short>(a1, a2, a3, a4);
      break;
    case 3:
    case 7:
      mlx::core::gather_axis<unsigned int,unsigned short>(a1, a2, a3, a4);
      break;
    case 4:
    case 8:
      mlx::core::gather_axis<unsigned long long,unsigned short>(a1, a2, a3, a4);
      break;
    case 9:
      mlx::core::gather_axis<half,unsigned short>(a1, a2, a3, a4);
      break;
    case 0xA:
      mlx::core::gather_axis<float,unsigned short>(a1, a2, a3, a4);
      break;
    case 0xB:
      mlx::core::gather_axis<double,unsigned short>(a1, a2, a3, a4);
      break;
    case 0xD:
      mlx::core::gather_axis<mlx::core::complex64_t,unsigned short>(a1, a2, a3, a4);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather_axis<unsigned int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather_axis<BOOL,unsigned int>(a1, a2, a3, a4);
      break;
    case 1:
    case 5:
      mlx::core::gather_axis<unsigned char,unsigned int>(a1, a2, a3, a4);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather_axis<unsigned short,unsigned int>(a1, a2, a3, a4);
      break;
    case 3:
    case 7:
      mlx::core::gather_axis<unsigned int,unsigned int>(a1, a2, a3, a4);
      break;
    case 4:
    case 8:
      mlx::core::gather_axis<unsigned long long,unsigned int>(a1, a2, a3, a4);
      break;
    case 9:
      mlx::core::gather_axis<half,unsigned int>(a1, a2, a3, a4);
      break;
    case 0xA:
      mlx::core::gather_axis<float,unsigned int>(a1, a2, a3, a4);
      break;
    case 0xB:
      mlx::core::gather_axis<double,unsigned int>(a1, a2, a3, a4);
      break;
    case 0xD:
      mlx::core::gather_axis<mlx::core::complex64_t,unsigned int>(a1, a2, a3, a4);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather_axis<unsigned long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather_axis<BOOL,unsigned long long>(a1, a2, a3, a4);
      break;
    case 1:
    case 5:
      mlx::core::gather_axis<unsigned char,unsigned long long>(a1, a2, a3, a4);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather_axis<unsigned short,unsigned long long>(a1, a2, a3, a4);
      break;
    case 3:
    case 7:
      mlx::core::gather_axis<unsigned int,unsigned long long>(a1, a2, a3, a4);
      break;
    case 4:
    case 8:
      mlx::core::gather_axis<unsigned long long,unsigned long long>(a1, a2, a3, a4);
      break;
    case 9:
      mlx::core::gather_axis<half,unsigned long long>(a1, a2, a3, a4);
      break;
    case 0xA:
      mlx::core::gather_axis<float,unsigned long long>(a1, a2, a3, a4);
      break;
    case 0xB:
      mlx::core::gather_axis<double,unsigned long long>(a1, a2, a3, a4);
      break;
    case 0xD:
      mlx::core::gather_axis<mlx::core::complex64_t,unsigned long long>(a1, a2, a3, a4);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather_axis<signed char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather_axis<BOOL,signed char>(a1, a2, a3, a4);
      break;
    case 1:
    case 5:
      mlx::core::gather_axis<unsigned char,signed char>(a1, a2, a3, a4);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather_axis<unsigned short,signed char>(a1, a2, a3, a4);
      break;
    case 3:
    case 7:
      mlx::core::gather_axis<unsigned int,signed char>(a1, a2, a3, a4);
      break;
    case 4:
    case 8:
      mlx::core::gather_axis<unsigned long long,signed char>(a1, a2, a3, a4);
      break;
    case 9:
      mlx::core::gather_axis<half,signed char>(a1, a2, a3, a4);
      break;
    case 0xA:
      mlx::core::gather_axis<float,signed char>(a1, a2, a3, a4);
      break;
    case 0xB:
      mlx::core::gather_axis<double,signed char>(a1, a2, a3, a4);
      break;
    case 0xD:
      mlx::core::gather_axis<mlx::core::complex64_t,signed char>(a1, a2, a3, a4);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather_axis<short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather_axis<BOOL,short>(a1, a2, a3, a4);
      break;
    case 1:
    case 5:
      mlx::core::gather_axis<unsigned char,short>(a1, a2, a3, a4);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather_axis<unsigned short,short>(a1, a2, a3, a4);
      break;
    case 3:
    case 7:
      mlx::core::gather_axis<unsigned int,short>(a1, a2, a3, a4);
      break;
    case 4:
    case 8:
      mlx::core::gather_axis<unsigned long long,short>(a1, a2, a3, a4);
      break;
    case 9:
      mlx::core::gather_axis<half,short>(a1, a2, a3, a4);
      break;
    case 0xA:
      mlx::core::gather_axis<float,short>(a1, a2, a3, a4);
      break;
    case 0xB:
      mlx::core::gather_axis<double,short>(a1, a2, a3, a4);
      break;
    case 0xD:
      mlx::core::gather_axis<mlx::core::complex64_t,short>(a1, a2, a3, a4);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather_axis<int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather_axis<BOOL,int>(a1, a2, a3, a4);
      break;
    case 1:
    case 5:
      mlx::core::gather_axis<unsigned char,int>(a1, a2, a3, a4);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather_axis<unsigned short,int>(a1, a2, a3, a4);
      break;
    case 3:
    case 7:
      mlx::core::gather_axis<unsigned int,int>(a1, a2, a3, a4);
      break;
    case 4:
    case 8:
      mlx::core::gather_axis<unsigned long long,int>(a1, a2, a3, a4);
      break;
    case 9:
      mlx::core::gather_axis<half,int>(a1, a2, a3, a4);
      break;
    case 0xA:
      mlx::core::gather_axis<float,int>(a1, a2, a3, a4);
      break;
    case 0xB:
      mlx::core::gather_axis<double,int>(a1, a2, a3, a4);
      break;
    case 0xD:
      mlx::core::gather_axis<mlx::core::complex64_t,int>(a1, a2, a3, a4);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather_axis<long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather_axis<BOOL,long long>(a1, a2, a3, a4);
      break;
    case 1:
    case 5:
      mlx::core::gather_axis<unsigned char,long long>(a1, a2, a3, a4);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather_axis<unsigned short,long long>(a1, a2, a3, a4);
      break;
    case 3:
    case 7:
      mlx::core::gather_axis<unsigned int,long long>(a1, a2, a3, a4);
      break;
    case 4:
    case 8:
      mlx::core::gather_axis<unsigned long long,long long>(a1, a2, a3, a4);
      break;
    case 9:
      mlx::core::gather_axis<half,long long>(a1, a2, a3, a4);
      break;
    case 0xA:
      mlx::core::gather_axis<float,long long>(a1, a2, a3, a4);
      break;
    case 0xB:
      mlx::core::gather_axis<double,long long>(a1, a2, a3, a4);
      break;
    case 0xD:
      mlx::core::gather_axis<mlx::core::complex64_t,long long>(a1, a2, a3, a4);
      break;
    default:
      return;
  }
}

void mlx::core::gather_axis<BOOL,unsigned char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v93 = 0;
  v94 = 0;
  v92 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v92, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v92[8 * a4];
  v10 = v93 - (v9 + 8);
  if (v93 != v9 + 8)
  {
    memmove(&v92[8 * a4], v9 + 8, v93 - (v9 + 8));
  }

  v93 = &v9[v10];
  v11 = *a2;
  v90 = 0;
  v91 = 0;
  v89 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v89, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v89[4 * a4];
  v13 = v90 - (v12 + 4);
  if (v90 != v12 + 4)
  {
    memmove(&v89[4 * a4], v12 + 4, v90 - (v12 + 4));
  }

  v90 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v82, &v89, &v92, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v92 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v92, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v92[v14];
  v16 = v93 - &v92[v14 + 8];
  if (v93 != &v92[v14 + 8])
  {
    memmove(&v92[v14], &v92[v14 + 8], v93 - (v15 + 8));
  }

  v93 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v75, &v89, &v92, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v72 = *(*a1 + 152);
  v73 = *(*a2 + 152);
  v67 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v82;
    v28 = (v84 - v83) >> 2;
    v74 = (((v84 - v83) << 30) - 0x100000000) >> 32;
    v29 = v83 + 4 * v74;
    v30 = v75;
    v31 = (v77 - v76) >> 2;
    v32 = (((v77 - v76) << 30) - 0x100000000) >> 32;
    v33 = v76 + 4 * v32;
    v34 = 4 * (v28 & 0x7FFFFFFF);
    v69 = v83 - 8;
    v35 = 4 * (v31 & 0x7FFFFFFF);
    v68 = v76 - 8;
    v65 = v22;
    do
    {
      v66 = v26;
      if (v25)
      {
        v36 = 0;
        v37 = v85;
        v38 = v87 + 4 * v74;
        v39 = v78;
        v70 = __p;
        v71 = v87;
        v40 = __p + 4 * v32;
        v41 = v67;
        do
        {
          if (v20 >= 1)
          {
            v42 = (v73 + v27);
            v43 = v20;
            v44 = v41;
            do
            {
              *v44 = *(v72 + v30 + v18 * *v42);
              v44 += v19;
              v42 += v17;
              --v43;
            }

            while (v43);
          }

          if (v28)
          {
            v45 = *v38;
            if (v28 >= 2 && v45 == *v29 - 1)
            {
              v46 = v71;
              v47 = v69;
              v48 = (v28 & 0x7FFFFFFF) - 1;
              v49 = v29;
              v50 = v38;
              v51 = v74;
              do
              {
                v52 = v48;
                *v50 = 0;
                v27 -= v37[v51] * (*v49 - 1);
                v82 = v27;
                --v48;
                v50 = &v46[v34 - 8];
                v45 = *v50;
                v46 -= 4;
                if (v52 < 2)
                {
                  break;
                }

                v49 = &v47[v34];
                v53 = *&v47[4 * (v28 & 0x7FFFFFFF)] - 1;
                v47 -= 4;
                v51 = v48;
              }

              while (v45 == v53);
              v54 = &v46[v34 - 4];
            }

            else
            {
              v48 = v74;
              v54 = v38;
            }

            *v54 = v45 + 1;
            v27 += v37[v48];
            v82 = v27;
          }

          if (v31)
          {
            v55 = *v40;
            if (v31 >= 2 && v55 == *v33 - 1)
            {
              v56 = v70;
              v57 = v68;
              v58 = (v31 & 0x7FFFFFFF) - 1;
              v59 = v33;
              v60 = v40;
              v61 = v32;
              do
              {
                v62 = v58;
                *v60 = 0;
                v30 -= v39[v61] * (*v59 - 1);
                v75 = v30;
                --v58;
                v60 = &v56[v35 - 8];
                v55 = *v60;
                v56 -= 4;
                if (v62 < 2)
                {
                  break;
                }

                v59 = &v57[v35];
                v63 = *&v57[4 * (v31 & 0x7FFFFFFF)] - 1;
                v57 -= 4;
                v61 = v58;
              }

              while (v55 == v63);
              v64 = &v56[v35 - 4];
            }

            else
            {
              v58 = v32;
              v64 = v40;
            }

            *v64 = v55 + 1;
            v30 += v39[v58];
            v75 = v30;
          }

          ++v36;
          ++v41;
        }

        while (v36 != v25);
      }

      v67 += v25 * v20;
      v26 = v66 + 1;
    }

    while (v66 + 1 != v65);
  }

  if (__p)
  {
    v81 = __p;
    operator delete(__p);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }
}

void sub_25A4380A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned char,unsigned char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v84, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v84[8 * a4];
  v10 = v85 - (v9 + 8);
  if (v85 != v9 + 8)
  {
    memmove(&v84[8 * a4], v9 + 8, v85 - (v9 + 8));
  }

  v85 = &v9[v10];
  v11 = *a2;
  v82 = 0;
  v83 = 0;
  v81 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v81, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v81[4 * a4];
  v13 = v82 - (v12 + 4);
  if (v82 != v12 + 4)
  {
    memmove(&v81[4 * a4], v12 + 4, v82 - (v12 + 4));
  }

  v82 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v74, &v81, &v84, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v84 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v84, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v84[v14];
  v16 = v85 - &v84[v14 + 8];
  if (v85 != &v84[v14 + 8])
  {
    memmove(&v84[v14], &v84[v14 + 8], v85 - (v15 + 8));
  }

  v85 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v67, &v81, &v84, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a1 + 152);
  v66 = *(*a3 + 152);
  v19 = mlx::core::array::strides(a2, a4);
  v20 = mlx::core::array::strides(a1, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  v65 = a2;
  if (a4 < 1)
  {
    v24 = 1;
  }

  else
  {
    v23 = 0;
    v24 = 1;
    do
    {
      v24 *= mlx::core::array::shape(v65, v23++);
    }

    while (a4 != v23);
  }

  v25 = a4 + 1;
  for (i = 1; v25 < ((*v65)[1] - **v65) >> 2; ++v25)
  {
    i *= mlx::core::array::shape(v65, v25);
  }

  if (v24)
  {
    for (j = 0; j != v24; ++j)
    {
      if (i)
      {
        v28 = 0;
        v29 = v66;
        do
        {
          v30 = v22;
          v31 = v17;
          v32 = v29;
          if (v22 >= 1)
          {
            do
            {
              *v32 = *(v18 + v67 + v20 * *(v31 + v74));
              v32 += v21;
              v31 += v19;
              --v30;
            }

            while (v30);
          }

          v33 = v76 - v75;
          v34 = (v76 - v75) >> 2;
          if (v34)
          {
            v35 = v79;
            v36 = ((v33 << 30) - 0x100000000) >> 32;
            v37 = v79 + 4 * v36;
            v38 = *v37;
            v39 = v75 + 4 * v36;
            v40 = v77;
            v41 = v74;
            if (v34 >= 2 && v38 == *v39 - 1)
            {
              v44 = (v33 >> 2) & 0x7FFFFFFF;
              v43 = v44 - 1;
              v45 = 4 * v44;
              v46 = v75 - 8;
              do
              {
                v47 = v43;
                *v37 = 0;
                v41 -= v40[v36] * (*v39 - 1);
                v74 = v41;
                --v43;
                v37 = &v35[v45 - 8];
                v38 = *v37;
                v35 -= 4;
                if (v47 < 2)
                {
                  break;
                }

                v39 = &v46[v45];
                v48 = *&v46[4 * v44] - 1;
                v46 -= 4;
                v36 = v43;
              }

              while (v38 == v48);
              v37 = &v35[4 * v44 - 4];
            }

            else
            {
              v43 = ((v33 << 30) - 0x100000000) >> 32;
            }

            *v37 = v38 + 1;
            v74 = v40[v43] + v41;
          }

          v49 = v69 - v68;
          v50 = (v69 - v68) >> 2;
          if (v50)
          {
            v51 = __p;
            v52 = ((v49 << 30) - 0x100000000) >> 32;
            v53 = __p + 4 * v52;
            v54 = *v53;
            v55 = v68 + 4 * v52;
            v56 = v70;
            v57 = v67;
            if (v50 >= 2 && v54 == *v55 - 1)
            {
              v60 = (v49 >> 2) & 0x7FFFFFFF;
              v59 = v60 - 1;
              v61 = 4 * v60;
              v62 = v68 - 8;
              do
              {
                v63 = v59;
                *v53 = 0;
                v57 -= v56[v52] * (*v55 - 1);
                v67 = v57;
                --v59;
                v53 = &v51[v61 - 8];
                v54 = *v53;
                v51 -= 4;
                if (v63 < 2)
                {
                  break;
                }

                v55 = &v62[v61];
                v64 = *&v62[4 * v60] - 1;
                v62 -= 4;
                v52 = v59;
              }

              while (v54 == v64);
              v53 = &v51[4 * v60 - 4];
            }

            else
            {
              v59 = ((v49 << 30) - 0x100000000) >> 32;
            }

            *v53 = v54 + 1;
            v67 = v56[v59] + v57;
          }

          ++v28;
          ++v29;
        }

        while (v28 != i);
      }

      v66 += i * v22;
    }
  }

  if (__p)
  {
    v73 = __p;
    operator delete(__p);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }
}

void sub_25A438630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 112);
  if (v17)
  {
    *(v14 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned short,unsigned char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v93, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v93[8 * a4];
  v10 = v94 - (v9 + 8);
  if (v94 != v9 + 8)
  {
    memmove(&v93[8 * a4], v9 + 8, v94 - (v9 + 8));
  }

  v94 = &v9[v10];
  v11 = *a2;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v90, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v90[4 * a4];
  v13 = v91 - (v12 + 4);
  if (v91 != v12 + 4)
  {
    memmove(&v90[4 * a4], v12 + 4, v91 - (v12 + 4));
  }

  v91 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v83, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v93 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v93, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v93[v14];
  v16 = v94 - &v93[v14 + 8];
  if (v94 != &v93[v14 + 8])
  {
    memmove(&v93[v14], &v93[v14 + 8], v94 - (v15 + 8));
  }

  v94 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v76, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v73 = *(*a1 + 152);
  v74 = *(*a2 + 152);
  v68 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v83;
    v28 = (v85 - v84) >> 2;
    v75 = (((v85 - v84) << 30) - 0x100000000) >> 32;
    v29 = v84 + 4 * v75;
    v30 = v76;
    v31 = (v78 - v77) >> 2;
    v32 = (((v78 - v77) << 30) - 0x100000000) >> 32;
    v33 = v77 + 4 * v32;
    v66 = v22;
    v34 = 2 * v19;
    v35 = 4 * (v28 & 0x7FFFFFFF);
    v70 = v84 - 8;
    v36 = 4 * (v31 & 0x7FFFFFFF);
    v69 = v77 - 8;
    do
    {
      v67 = v26;
      if (v25)
      {
        v37 = 0;
        v38 = v86;
        v39 = v88 + 4 * v75;
        v40 = v79;
        v71 = __p;
        v72 = v88;
        v41 = __p + 4 * v32;
        v42 = v68;
        do
        {
          if (v20 >= 1)
          {
            v43 = (v74 + v27);
            v44 = v20;
            v45 = v42;
            do
            {
              *v45 = *(v73 + 2 * v30 + 2 * v18 * *v43);
              v45 = (v45 + v34);
              v43 += v17;
              --v44;
            }

            while (v44);
          }

          if (v28)
          {
            v46 = *v39;
            if (v28 >= 2 && v46 == *v29 - 1)
            {
              v47 = v72;
              v48 = v70;
              v49 = (v28 & 0x7FFFFFFF) - 1;
              v50 = v29;
              v51 = v39;
              v52 = v75;
              do
              {
                v53 = v49;
                *v51 = 0;
                v27 -= v38[v52] * (*v50 - 1);
                v83 = v27;
                --v49;
                v51 = &v47[v35 - 8];
                v46 = *v51;
                v47 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v50 = &v48[v35];
                v54 = *&v48[4 * (v28 & 0x7FFFFFFF)] - 1;
                v48 -= 4;
                v52 = v49;
              }

              while (v46 == v54);
              v55 = &v47[v35 - 4];
            }

            else
            {
              v49 = v75;
              v55 = v39;
            }

            *v55 = v46 + 1;
            v27 += v38[v49];
            v83 = v27;
          }

          if (v31)
          {
            v56 = *v41;
            if (v31 >= 2 && v56 == *v33 - 1)
            {
              v57 = v71;
              v58 = v69;
              v59 = (v31 & 0x7FFFFFFF) - 1;
              v60 = v33;
              v61 = v41;
              v62 = v32;
              do
              {
                v63 = v59;
                *v61 = 0;
                v30 -= v40[v62] * (*v60 - 1);
                v76 = v30;
                --v59;
                v61 = &v57[v36 - 8];
                v56 = *v61;
                v57 -= 4;
                if (v63 < 2)
                {
                  break;
                }

                v60 = &v58[v36];
                v64 = *&v58[4 * (v31 & 0x7FFFFFFF)] - 1;
                v58 -= 4;
                v62 = v59;
              }

              while (v56 == v64);
              v65 = &v57[v36 - 4];
            }

            else
            {
              v59 = v32;
              v65 = v41;
            }

            *v65 = v56 + 1;
            v30 += v40[v59];
            v76 = v30;
          }

          ++v37;
          ++v42;
        }

        while (v37 != v25);
      }

      v26 = v67 + 1;
      v68 += v25 * v20;
    }

    while (v67 + 1 != v66);
  }

  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }
}

void sub_25A438C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned int,unsigned char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v93, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v93[8 * a4];
  v10 = v94 - (v9 + 8);
  if (v94 != v9 + 8)
  {
    memmove(&v93[8 * a4], v9 + 8, v94 - (v9 + 8));
  }

  v94 = &v9[v10];
  v11 = *a2;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v90, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v90[4 * a4];
  v13 = v91 - (v12 + 4);
  if (v91 != v12 + 4)
  {
    memmove(&v90[4 * a4], v12 + 4, v91 - (v12 + 4));
  }

  v91 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v83, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v93 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v93, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v93[v14];
  v16 = v94 - &v93[v14 + 8];
  if (v94 != &v93[v14 + 8])
  {
    memmove(&v93[v14], &v93[v14 + 8], v94 - (v15 + 8));
  }

  v94 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v76, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v73 = *(*a1 + 152);
  v74 = *(*a2 + 152);
  v68 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v83;
    v28 = (v85 - v84) >> 2;
    v75 = (((v85 - v84) << 30) - 0x100000000) >> 32;
    v29 = v84 + 4 * v75;
    v30 = v76;
    v31 = (v78 - v77) >> 2;
    v32 = (((v78 - v77) << 30) - 0x100000000) >> 32;
    v33 = v77 + 4 * v32;
    v66 = v22;
    v34 = 4 * v19;
    v35 = 4 * (v28 & 0x7FFFFFFF);
    v70 = v84 - 8;
    v36 = 4 * (v31 & 0x7FFFFFFF);
    v69 = v77 - 8;
    do
    {
      v67 = v26;
      if (v25)
      {
        v37 = 0;
        v38 = v86;
        v39 = v88 + 4 * v75;
        v40 = v79;
        v71 = __p;
        v72 = v88;
        v41 = __p + 4 * v32;
        v42 = v68;
        do
        {
          if (v20 >= 1)
          {
            v43 = (v74 + v27);
            v44 = v20;
            v45 = v42;
            do
            {
              *v45 = *(v73 + 4 * v30 + 4 * v18 * *v43);
              v45 = (v45 + v34);
              v43 += v17;
              --v44;
            }

            while (v44);
          }

          if (v28)
          {
            v46 = *v39;
            if (v28 >= 2 && v46 == *v29 - 1)
            {
              v47 = v72;
              v48 = v70;
              v49 = (v28 & 0x7FFFFFFF) - 1;
              v50 = v29;
              v51 = v39;
              v52 = v75;
              do
              {
                v53 = v49;
                *v51 = 0;
                v27 -= v38[v52] * (*v50 - 1);
                v83 = v27;
                --v49;
                v51 = &v47[v35 - 8];
                v46 = *v51;
                v47 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v50 = &v48[v35];
                v54 = *&v48[4 * (v28 & 0x7FFFFFFF)] - 1;
                v48 -= 4;
                v52 = v49;
              }

              while (v46 == v54);
              v55 = &v47[v35 - 4];
            }

            else
            {
              v49 = v75;
              v55 = v39;
            }

            *v55 = v46 + 1;
            v27 += v38[v49];
            v83 = v27;
          }

          if (v31)
          {
            v56 = *v41;
            if (v31 >= 2 && v56 == *v33 - 1)
            {
              v57 = v71;
              v58 = v69;
              v59 = (v31 & 0x7FFFFFFF) - 1;
              v60 = v33;
              v61 = v41;
              v62 = v32;
              do
              {
                v63 = v59;
                *v61 = 0;
                v30 -= v40[v62] * (*v60 - 1);
                v76 = v30;
                --v59;
                v61 = &v57[v36 - 8];
                v56 = *v61;
                v57 -= 4;
                if (v63 < 2)
                {
                  break;
                }

                v60 = &v58[v36];
                v64 = *&v58[4 * (v31 & 0x7FFFFFFF)] - 1;
                v58 -= 4;
                v62 = v59;
              }

              while (v56 == v64);
              v65 = &v57[v36 - 4];
            }

            else
            {
              v59 = v32;
              v65 = v41;
            }

            *v65 = v56 + 1;
            v30 += v40[v59];
            v76 = v30;
          }

          ++v37;
          ++v42;
        }

        while (v37 != v25);
      }

      v26 = v67 + 1;
      v68 += v25 * v20;
    }

    while (v67 + 1 != v66);
  }

  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }
}

void sub_25A439200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned long long,unsigned char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v93, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v93[8 * a4];
  v10 = v94 - (v9 + 8);
  if (v94 != v9 + 8)
  {
    memmove(&v93[8 * a4], v9 + 8, v94 - (v9 + 8));
  }

  v94 = &v9[v10];
  v11 = *a2;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v90, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v90[4 * a4];
  v13 = v91 - (v12 + 4);
  if (v91 != v12 + 4)
  {
    memmove(&v90[4 * a4], v12 + 4, v91 - (v12 + 4));
  }

  v91 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v83, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v93 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v93, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v93[v14];
  v16 = v94 - &v93[v14 + 8];
  if (v94 != &v93[v14 + 8])
  {
    memmove(&v93[v14], &v93[v14 + 8], v94 - (v15 + 8));
  }

  v94 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v76, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v75 = *(*a2 + 152);
  v17 = *(*a1 + 152);
  v69 = *(*a3 + 152);
  v18 = mlx::core::array::strides(a2, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::strides(a3, a4);
  v21 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v28 = (v85 - v84) >> 2;
    v74 = (((v85 - v84) << 30) - 0x100000000) >> 32;
    v29 = v84 + 4 * v74;
    v30 = (v78 - v77) >> 2;
    v31 = (((v78 - v77) << 30) - 0x100000000) >> 32;
    v32 = v77 + 4 * v31;
    v67 = v23;
    v33 = 8 * v20;
    v34 = 4 * (v28 & 0x7FFFFFFF);
    v71 = v84 - 8;
    v35 = 4 * (v30 & 0x7FFFFFFF);
    v70 = v77 - 8;
    do
    {
      v68 = v27;
      if (v26)
      {
        v36 = 0;
        v37 = v86;
        v38 = v88 + 4 * v74;
        v39 = v79;
        v72 = __p;
        v73 = v88;
        v40 = __p + 4 * v31;
        v41 = v69;
        do
        {
          v42 = v21;
          v43 = v75;
          v44 = v41;
          if (v21 >= 1)
          {
            do
            {
              *v44 = *(v17 + 8 * v76 + 8 * v19 * *(v43 + v83));
              v44 = (v44 + v33);
              v43 += v18;
              --v42;
            }

            while (v42);
          }

          if (v28)
          {
            v45 = *v38;
            v46 = v83;
            if (v28 >= 2 && v45 == *v29 - 1)
            {
              v47 = v73;
              v48 = v74;
              v49 = v71;
              v50 = (v28 & 0x7FFFFFFF) - 1;
              v51 = v29;
              v52 = v38;
              do
              {
                v53 = v50;
                *v52 = 0;
                v46 -= v37[v48] * (*v51 - 1);
                v83 = v46;
                --v50;
                v52 = &v47[v34 - 8];
                v45 = *v52;
                v47 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v51 = &v49[v34];
                v54 = *&v49[4 * (v28 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v48 = v50;
              }

              while (v45 == v54);
              v55 = &v47[v34 - 4];
            }

            else
            {
              v50 = v74;
              v55 = v38;
            }

            *v55 = v45 + 1;
            v83 = v37[v50] + v46;
          }

          if (v30)
          {
            v56 = *v40;
            v57 = v76;
            if (v30 >= 2 && v56 == *v32 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v30 & 0x7FFFFFFF) - 1;
              v61 = v32;
              v62 = v40;
              v63 = v31;
              do
              {
                v64 = v60;
                *v62 = 0;
                v57 -= v39[v63] * (*v61 - 1);
                v76 = v57;
                --v60;
                v62 = &v58[v35 - 8];
                v56 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v35];
                v65 = *&v59[4 * (v30 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v56 == v65);
              v66 = &v58[v35 - 4];
            }

            else
            {
              v60 = v31;
              v66 = v40;
            }

            *v66 = v56 + 1;
            v76 = v39[v60] + v57;
          }

          ++v36;
          ++v41;
        }

        while (v36 != v26);
      }

      v27 = v68 + 1;
      v69 += v26 * v21;
    }

    while (v68 + 1 != v67);
  }

  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }
}

void sub_25A4397E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<half,unsigned char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v93, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v93[8 * a4];
  v10 = v94 - (v9 + 8);
  if (v94 != v9 + 8)
  {
    memmove(&v93[8 * a4], v9 + 8, v94 - (v9 + 8));
  }

  v94 = &v9[v10];
  v11 = *a2;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v90, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v90[4 * a4];
  v13 = v91 - (v12 + 4);
  if (v91 != v12 + 4)
  {
    memmove(&v90[4 * a4], v12 + 4, v91 - (v12 + 4));
  }

  v91 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v83, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v93 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v93, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v93[v14];
  v16 = v94 - &v93[v14 + 8];
  if (v94 != &v93[v14 + 8])
  {
    memmove(&v93[v14], &v93[v14 + 8], v94 - (v15 + 8));
  }

  v94 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v76, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v73 = *(*a1 + 152);
  v74 = *(*a2 + 152);
  v68 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v83;
    v28 = (v85 - v84) >> 2;
    v75 = (((v85 - v84) << 30) - 0x100000000) >> 32;
    v29 = v84 + 4 * v75;
    v30 = v76;
    v31 = (v78 - v77) >> 2;
    v32 = (((v78 - v77) << 30) - 0x100000000) >> 32;
    v33 = v77 + 4 * v32;
    v66 = v22;
    v34 = 2 * v19;
    v35 = 4 * (v28 & 0x7FFFFFFF);
    v70 = v84 - 8;
    v36 = 4 * (v31 & 0x7FFFFFFF);
    v69 = v77 - 8;
    do
    {
      v67 = v26;
      if (v25)
      {
        v37 = 0;
        v38 = v86;
        v39 = v88 + 4 * v75;
        v40 = v79;
        v71 = __p;
        v72 = v88;
        v41 = __p + 4 * v32;
        v42 = v68;
        do
        {
          if (v20 >= 1)
          {
            v43 = (v74 + v27);
            v44 = v20;
            v45 = v42;
            do
            {
              *v45 = *(v73 + 2 * v30 + 2 * v18 * *v43);
              v45 = (v45 + v34);
              v43 += v17;
              --v44;
            }

            while (v44);
          }

          if (v28)
          {
            v46 = *v39;
            if (v28 >= 2 && v46 == *v29 - 1)
            {
              v47 = v72;
              v48 = v70;
              v49 = (v28 & 0x7FFFFFFF) - 1;
              v50 = v29;
              v51 = v39;
              v52 = v75;
              do
              {
                v53 = v49;
                *v51 = 0;
                v27 -= v38[v52] * (*v50 - 1);
                v83 = v27;
                --v49;
                v51 = &v47[v35 - 8];
                v46 = *v51;
                v47 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v50 = &v48[v35];
                v54 = *&v48[4 * (v28 & 0x7FFFFFFF)] - 1;
                v48 -= 4;
                v52 = v49;
              }

              while (v46 == v54);
              v55 = &v47[v35 - 4];
            }

            else
            {
              v49 = v75;
              v55 = v39;
            }

            *v55 = v46 + 1;
            v27 += v38[v49];
            v83 = v27;
          }

          if (v31)
          {
            v56 = *v41;
            if (v31 >= 2 && v56 == *v33 - 1)
            {
              v57 = v71;
              v58 = v69;
              v59 = (v31 & 0x7FFFFFFF) - 1;
              v60 = v33;
              v61 = v41;
              v62 = v32;
              do
              {
                v63 = v59;
                *v61 = 0;
                v30 -= v40[v62] * (*v60 - 1);
                v76 = v30;
                --v59;
                v61 = &v57[v36 - 8];
                v56 = *v61;
                v57 -= 4;
                if (v63 < 2)
                {
                  break;
                }

                v60 = &v58[v36];
                v64 = *&v58[4 * (v31 & 0x7FFFFFFF)] - 1;
                v58 -= 4;
                v62 = v59;
              }

              while (v56 == v64);
              v65 = &v57[v36 - 4];
            }

            else
            {
              v59 = v32;
              v65 = v41;
            }

            *v65 = v56 + 1;
            v30 += v40[v59];
            v76 = v30;
          }

          ++v37;
          ++v42;
        }

        while (v37 != v25);
      }

      v26 = v67 + 1;
      v68 += v25 * v20;
    }

    while (v67 + 1 != v66);
  }

  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }
}

void sub_25A439DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<float,unsigned char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v93, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v93[8 * a4];
  v10 = v94 - (v9 + 8);
  if (v94 != v9 + 8)
  {
    memmove(&v93[8 * a4], v9 + 8, v94 - (v9 + 8));
  }

  v94 = &v9[v10];
  v11 = *a2;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v90, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v90[4 * a4];
  v13 = v91 - (v12 + 4);
  if (v91 != v12 + 4)
  {
    memmove(&v90[4 * a4], v12 + 4, v91 - (v12 + 4));
  }

  v91 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v83, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v93 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v93, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v93[v14];
  v16 = v94 - &v93[v14 + 8];
  if (v94 != &v93[v14 + 8])
  {
    memmove(&v93[v14], &v93[v14 + 8], v94 - (v15 + 8));
  }

  v94 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v76, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v73 = *(*a1 + 152);
  v74 = *(*a2 + 152);
  v68 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v83;
    v28 = (v85 - v84) >> 2;
    v75 = (((v85 - v84) << 30) - 0x100000000) >> 32;
    v29 = v84 + 4 * v75;
    v30 = v76;
    v31 = (v78 - v77) >> 2;
    v32 = (((v78 - v77) << 30) - 0x100000000) >> 32;
    v33 = v77 + 4 * v32;
    v66 = v22;
    v34 = 4 * v19;
    v35 = 4 * (v28 & 0x7FFFFFFF);
    v70 = v84 - 8;
    v36 = 4 * (v31 & 0x7FFFFFFF);
    v69 = v77 - 8;
    do
    {
      v67 = v26;
      if (v25)
      {
        v37 = 0;
        v38 = v86;
        v39 = v88 + 4 * v75;
        v40 = v79;
        v71 = __p;
        v72 = v88;
        v41 = __p + 4 * v32;
        v42 = v68;
        do
        {
          if (v20 >= 1)
          {
            v43 = (v74 + v27);
            v44 = v20;
            v45 = v42;
            do
            {
              *v45 = *(v73 + 4 * v30 + 4 * v18 * *v43);
              v45 = (v45 + v34);
              v43 += v17;
              --v44;
            }

            while (v44);
          }

          if (v28)
          {
            v46 = *v39;
            if (v28 >= 2 && v46 == *v29 - 1)
            {
              v47 = v72;
              v48 = v70;
              v49 = (v28 & 0x7FFFFFFF) - 1;
              v50 = v29;
              v51 = v39;
              v52 = v75;
              do
              {
                v53 = v49;
                *v51 = 0;
                v27 -= v38[v52] * (*v50 - 1);
                v83 = v27;
                --v49;
                v51 = &v47[v35 - 8];
                v46 = *v51;
                v47 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v50 = &v48[v35];
                v54 = *&v48[4 * (v28 & 0x7FFFFFFF)] - 1;
                v48 -= 4;
                v52 = v49;
              }

              while (v46 == v54);
              v55 = &v47[v35 - 4];
            }

            else
            {
              v49 = v75;
              v55 = v39;
            }

            *v55 = v46 + 1;
            v27 += v38[v49];
            v83 = v27;
          }

          if (v31)
          {
            v56 = *v41;
            if (v31 >= 2 && v56 == *v33 - 1)
            {
              v57 = v71;
              v58 = v69;
              v59 = (v31 & 0x7FFFFFFF) - 1;
              v60 = v33;
              v61 = v41;
              v62 = v32;
              do
              {
                v63 = v59;
                *v61 = 0;
                v30 -= v40[v62] * (*v60 - 1);
                v76 = v30;
                --v59;
                v61 = &v57[v36 - 8];
                v56 = *v61;
                v57 -= 4;
                if (v63 < 2)
                {
                  break;
                }

                v60 = &v58[v36];
                v64 = *&v58[4 * (v31 & 0x7FFFFFFF)] - 1;
                v58 -= 4;
                v62 = v59;
              }

              while (v56 == v64);
              v65 = &v57[v36 - 4];
            }

            else
            {
              v59 = v32;
              v65 = v41;
            }

            *v65 = v56 + 1;
            v30 += v40[v59];
            v76 = v30;
          }

          ++v37;
          ++v42;
        }

        while (v37 != v25);
      }

      v26 = v67 + 1;
      v68 += v25 * v20;
    }

    while (v67 + 1 != v66);
  }

  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }
}

void sub_25A43A3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<double,unsigned char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v93, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v93[8 * a4];
  v10 = v94 - (v9 + 8);
  if (v94 != v9 + 8)
  {
    memmove(&v93[8 * a4], v9 + 8, v94 - (v9 + 8));
  }

  v94 = &v9[v10];
  v11 = *a2;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v90, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v90[4 * a4];
  v13 = v91 - (v12 + 4);
  if (v91 != v12 + 4)
  {
    memmove(&v90[4 * a4], v12 + 4, v91 - (v12 + 4));
  }

  v91 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v83, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v93 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v93, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v93[v14];
  v16 = v94 - &v93[v14 + 8];
  if (v94 != &v93[v14 + 8])
  {
    memmove(&v93[v14], &v93[v14 + 8], v94 - (v15 + 8));
  }

  v94 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v76, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v73 = *(*a1 + 152);
  v74 = *(*a2 + 152);
  v68 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v83;
    v28 = (v85 - v84) >> 2;
    v75 = (((v85 - v84) << 30) - 0x100000000) >> 32;
    v29 = v84 + 4 * v75;
    v30 = v76;
    v31 = (v78 - v77) >> 2;
    v32 = (((v78 - v77) << 30) - 0x100000000) >> 32;
    v33 = v77 + 4 * v32;
    v66 = v22;
    v34 = 8 * v19;
    v35 = 4 * (v28 & 0x7FFFFFFF);
    v70 = v84 - 8;
    v36 = 4 * (v31 & 0x7FFFFFFF);
    v69 = v77 - 8;
    do
    {
      v67 = v26;
      if (v25)
      {
        v37 = 0;
        v38 = v86;
        v39 = v88 + 4 * v75;
        v40 = v79;
        v71 = __p;
        v72 = v88;
        v41 = __p + 4 * v32;
        v42 = v68;
        do
        {
          if (v20 >= 1)
          {
            v43 = (v74 + v27);
            v44 = v20;
            v45 = v42;
            do
            {
              *v45 = *(v73 + 8 * v30 + 8 * v18 * *v43);
              v45 = (v45 + v34);
              v43 += v17;
              --v44;
            }

            while (v44);
          }

          if (v28)
          {
            v46 = *v39;
            if (v28 >= 2 && v46 == *v29 - 1)
            {
              v47 = v72;
              v48 = v70;
              v49 = (v28 & 0x7FFFFFFF) - 1;
              v50 = v29;
              v51 = v39;
              v52 = v75;
              do
              {
                v53 = v49;
                *v51 = 0;
                v27 -= v38[v52] * (*v50 - 1);
                v83 = v27;
                --v49;
                v51 = &v47[v35 - 8];
                v46 = *v51;
                v47 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v50 = &v48[v35];
                v54 = *&v48[4 * (v28 & 0x7FFFFFFF)] - 1;
                v48 -= 4;
                v52 = v49;
              }

              while (v46 == v54);
              v55 = &v47[v35 - 4];
            }

            else
            {
              v49 = v75;
              v55 = v39;
            }

            *v55 = v46 + 1;
            v27 += v38[v49];
            v83 = v27;
          }

          if (v31)
          {
            v56 = *v41;
            if (v31 >= 2 && v56 == *v33 - 1)
            {
              v57 = v71;
              v58 = v69;
              v59 = (v31 & 0x7FFFFFFF) - 1;
              v60 = v33;
              v61 = v41;
              v62 = v32;
              do
              {
                v63 = v59;
                *v61 = 0;
                v30 -= v40[v62] * (*v60 - 1);
                v76 = v30;
                --v59;
                v61 = &v57[v36 - 8];
                v56 = *v61;
                v57 -= 4;
                if (v63 < 2)
                {
                  break;
                }

                v60 = &v58[v36];
                v64 = *&v58[4 * (v31 & 0x7FFFFFFF)] - 1;
                v58 -= 4;
                v62 = v59;
              }

              while (v56 == v64);
              v65 = &v57[v36 - 4];
            }

            else
            {
              v59 = v32;
              v65 = v41;
            }

            *v65 = v56 + 1;
            v30 += v40[v59];
            v76 = v30;
          }

          ++v37;
          ++v42;
        }

        while (v37 != v25);
      }

      v26 = v67 + 1;
      v68 += v25 * v20;
    }

    while (v67 + 1 != v66);
  }

  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }
}

void sub_25A43A99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<mlx::core::complex64_t,unsigned char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v85, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v85[8 * a4];
  v10 = v86 - (v9 + 8);
  if (v86 != v9 + 8)
  {
    memmove(&v85[8 * a4], v9 + 8, v86 - (v9 + 8));
  }

  v86 = &v9[v10];
  v11 = *a2;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v82, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v82[4 * a4];
  v13 = v83 - (v12 + 4);
  if (v83 != v12 + 4)
  {
    memmove(&v82[4 * a4], v12 + 4, v83 - (v12 + 4));
  }

  v83 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v75, &v82, &v85, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v85 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v85, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v85[v14];
  v16 = v86 - &v85[v14 + 8];
  if (v86 != &v85[v14 + 8])
  {
    memmove(&v85[v14], &v85[v14 + 8], v86 - (v15 + 8));
  }

  v86 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v68, &v82, &v85, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a1 + 152);
  v19 = *(*a3 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a1, a4);
  v22 = mlx::core::array::strides(a3, a4);
  v23 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  v67 = v22;
  if (a4 < 1)
  {
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v25 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v26 = a4 + 1;
  v27 = *(*a2 + 8) - **a2;
  v28 = 1;
  while (v26 < v27 >> 2)
  {
    v28 *= mlx::core::array::shape(a2, v26++);
    v27 = *(*a2 + 8) - **a2;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (v28)
      {
        v30 = 0;
        v31 = v19;
        do
        {
          v32 = v23;
          v33 = v17;
          v34 = v31;
          if (v23 >= 1)
          {
            do
            {
              *v34 = *(v18 + 8 * v68 + 8 * v21 * *(v33 + v75));
              v34 += v67;
              v33 += v20;
              --v32;
            }

            while (v32);
          }

          v35 = v77 - v76;
          v36 = (v77 - v76) >> 2;
          if (v36)
          {
            v37 = v80;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = v80 + 4 * v38;
            v40 = *v39;
            v41 = v76 + 4 * v38;
            v42 = v78;
            v43 = v75;
            if (v36 >= 2 && v40 == *v41 - 1)
            {
              v46 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v46 - 1;
              v47 = 4 * v46;
              v48 = v76 - 8;
              do
              {
                v49 = v45;
                *v39 = 0;
                v43 -= v42[v38] * (*v41 - 1);
                v75 = v43;
                --v45;
                v39 = &v37[v47 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v49 < 2)
                {
                  break;
                }

                v41 = &v48[v47];
                v50 = *&v48[4 * v46] - 1;
                v48 -= 4;
                v38 = v45;
              }

              while (v40 == v50);
              v39 = &v37[4 * v46 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v75 = v42[v45] + v43;
          }

          v51 = v70 - v69;
          v52 = (v70 - v69) >> 2;
          if (v52)
          {
            v53 = __p;
            v54 = ((v51 << 30) - 0x100000000) >> 32;
            v55 = __p + 4 * v54;
            v56 = *v55;
            v57 = v69 + 4 * v54;
            v58 = v71;
            v59 = v68;
            if (v52 >= 2 && v56 == *v57 - 1)
            {
              v62 = (v51 >> 2) & 0x7FFFFFFF;
              v61 = v62 - 1;
              v63 = 4 * v62;
              v64 = v69 - 8;
              do
              {
                v65 = v61;
                *v55 = 0;
                v59 -= v58[v54] * (*v57 - 1);
                v68 = v59;
                --v61;
                v55 = &v53[v63 - 8];
                v56 = *v55;
                v53 -= 4;
                if (v65 < 2)
                {
                  break;
                }

                v57 = &v64[v63];
                v66 = *&v64[4 * v62] - 1;
                v64 -= 4;
                v54 = v61;
              }

              while (v56 == v66);
              v55 = &v53[4 * v62 - 4];
            }

            else
            {
              v61 = ((v51 << 30) - 0x100000000) >> 32;
            }

            *v55 = v56 + 1;
            v68 = v58[v61] + v59;
          }

          ++v30;
          ++v31;
        }

        while (v30 != v28);
      }

      v19 += v28 * v23;
    }
  }

  if (__p)
  {
    v74 = __p;
    operator delete(__p);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }
}

void sub_25A43AF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v14 = *(v12 - 136);
  if (v14)
  {
    *(v12 - 128) = v14;
    operator delete(v14);
  }

  v15 = *(v12 - 112);
  if (v15)
  {
    *(v12 - 104) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<BOOL,unsigned short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v93, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v93[8 * a4];
  v10 = v94 - (v9 + 8);
  if (v94 != v9 + 8)
  {
    memmove(&v93[8 * a4], v9 + 8, v94 - (v9 + 8));
  }

  v94 = &v9[v10];
  v11 = *a2;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v90, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v90[4 * a4];
  v13 = v91 - (v12 + 4);
  if (v91 != v12 + 4)
  {
    memmove(&v90[4 * a4], v12 + 4, v91 - (v12 + 4));
  }

  v91 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v83, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v93 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v93, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v93[v14];
  v16 = v94 - &v93[v14 + 8];
  if (v94 != &v93[v14 + 8])
  {
    memmove(&v93[v14], &v93[v14 + 8], v94 - (v15 + 8));
  }

  v94 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v76, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v73 = *(*a1 + 152);
  v74 = *(*a2 + 152);
  v68 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v83;
    v28 = (v85 - v84) >> 2;
    v75 = (((v85 - v84) << 30) - 0x100000000) >> 32;
    v29 = v84 + 4 * v75;
    v30 = v76;
    v31 = (v78 - v77) >> 2;
    v32 = (((v78 - v77) << 30) - 0x100000000) >> 32;
    v33 = v77 + 4 * v32;
    v34 = 2 * v17;
    v35 = 4 * (v28 & 0x7FFFFFFF);
    v70 = v84 - 8;
    v36 = 4 * (v31 & 0x7FFFFFFF);
    v69 = v77 - 8;
    v66 = v22;
    do
    {
      v67 = v26;
      if (v25)
      {
        v37 = 0;
        v38 = v86;
        v39 = v88 + 4 * v75;
        v40 = v79;
        v71 = __p;
        v72 = v88;
        v41 = __p + 4 * v32;
        v42 = v68;
        do
        {
          if (v20 >= 1)
          {
            v43 = v20;
            v44 = v42;
            v45 = (v74 + 2 * v27);
            do
            {
              *v44 = *(v73 + v30 + v18 * *v45);
              v44 += v19;
              v45 = (v45 + v34);
              --v43;
            }

            while (v43);
          }

          if (v28)
          {
            v46 = *v39;
            if (v28 >= 2 && v46 == *v29 - 1)
            {
              v47 = v72;
              v48 = v70;
              v49 = (v28 & 0x7FFFFFFF) - 1;
              v50 = v29;
              v51 = v39;
              v52 = v75;
              do
              {
                v53 = v49;
                *v51 = 0;
                v27 -= v38[v52] * (*v50 - 1);
                v83 = v27;
                --v49;
                v51 = &v47[v35 - 8];
                v46 = *v51;
                v47 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v50 = &v48[v35];
                v54 = *&v48[4 * (v28 & 0x7FFFFFFF)] - 1;
                v48 -= 4;
                v52 = v49;
              }

              while (v46 == v54);
              v55 = &v47[v35 - 4];
            }

            else
            {
              v49 = v75;
              v55 = v39;
            }

            *v55 = v46 + 1;
            v27 += v38[v49];
            v83 = v27;
          }

          if (v31)
          {
            v56 = *v41;
            if (v31 >= 2 && v56 == *v33 - 1)
            {
              v57 = v71;
              v58 = v69;
              v59 = (v31 & 0x7FFFFFFF) - 1;
              v60 = v33;
              v61 = v41;
              v62 = v32;
              do
              {
                v63 = v59;
                *v61 = 0;
                v30 -= v40[v62] * (*v60 - 1);
                v76 = v30;
                --v59;
                v61 = &v57[v36 - 8];
                v56 = *v61;
                v57 -= 4;
                if (v63 < 2)
                {
                  break;
                }

                v60 = &v58[v36];
                v64 = *&v58[4 * (v31 & 0x7FFFFFFF)] - 1;
                v58 -= 4;
                v62 = v59;
              }

              while (v56 == v64);
              v65 = &v57[v36 - 4];
            }

            else
            {
              v59 = v32;
              v65 = v41;
            }

            *v65 = v56 + 1;
            v30 += v40[v59];
            v76 = v30;
          }

          ++v37;
          ++v42;
        }

        while (v37 != v25);
      }

      v68 += v25 * v20;
      v26 = v67 + 1;
    }

    while (v67 + 1 != v66);
  }

  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }
}

void sub_25A43B500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned char,unsigned short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v85, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v85[8 * a4];
  v10 = v86 - (v9 + 8);
  if (v86 != v9 + 8)
  {
    memmove(&v85[8 * a4], v9 + 8, v86 - (v9 + 8));
  }

  v86 = &v9[v10];
  v11 = *a2;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v82, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v82[4 * a4];
  v13 = v83 - (v12 + 4);
  if (v83 != v12 + 4)
  {
    memmove(&v82[4 * a4], v12 + 4, v83 - (v12 + 4));
  }

  v83 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v75, &v82, &v85, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v85 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v85, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v85[v14];
  v16 = v86 - &v85[v14 + 8];
  if (v86 != &v85[v14 + 8])
  {
    memmove(&v85[v14], &v85[v14 + 8], v86 - (v15 + 8));
  }

  v86 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v68, &v82, &v85, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a1 + 152);
  v19 = *(*a3 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a1, a4);
  v22 = mlx::core::array::strides(a3, a4);
  v23 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  v67 = v20;
  if (a4 < 1)
  {
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v25 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v26 = a4 + 1;
  v27 = *(*a2 + 8) - **a2;
  v28 = 1;
  while (v26 < v27 >> 2)
  {
    v28 *= mlx::core::array::shape(a2, v26++);
    v27 = *(*a2 + 8) - **a2;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (v28)
      {
        v30 = 0;
        v31 = v19;
        do
        {
          v32 = v23;
          v33 = v17;
          v34 = v31;
          if (v23 >= 1)
          {
            do
            {
              *v34 = *(v18 + v68 + v21 * *(v33 + 2 * v75));
              v34 += v22;
              v33 += 2 * v67;
              --v32;
            }

            while (v32);
          }

          v35 = v77 - v76;
          v36 = (v77 - v76) >> 2;
          if (v36)
          {
            v37 = v80;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = v80 + 4 * v38;
            v40 = *v39;
            v41 = v76 + 4 * v38;
            v42 = v78;
            v43 = v75;
            if (v36 >= 2 && v40 == *v41 - 1)
            {
              v46 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v46 - 1;
              v47 = 4 * v46;
              v48 = v76 - 8;
              do
              {
                v49 = v45;
                *v39 = 0;
                v43 -= v42[v38] * (*v41 - 1);
                v75 = v43;
                --v45;
                v39 = &v37[v47 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v49 < 2)
                {
                  break;
                }

                v41 = &v48[v47];
                v50 = *&v48[4 * v46] - 1;
                v48 -= 4;
                v38 = v45;
              }

              while (v40 == v50);
              v39 = &v37[4 * v46 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v75 = v42[v45] + v43;
          }

          v51 = v70 - v69;
          v52 = (v70 - v69) >> 2;
          if (v52)
          {
            v53 = __p;
            v54 = ((v51 << 30) - 0x100000000) >> 32;
            v55 = __p + 4 * v54;
            v56 = *v55;
            v57 = v69 + 4 * v54;
            v58 = v71;
            v59 = v68;
            if (v52 >= 2 && v56 == *v57 - 1)
            {
              v62 = (v51 >> 2) & 0x7FFFFFFF;
              v61 = v62 - 1;
              v63 = 4 * v62;
              v64 = v69 - 8;
              do
              {
                v65 = v61;
                *v55 = 0;
                v59 -= v58[v54] * (*v57 - 1);
                v68 = v59;
                --v61;
                v55 = &v53[v63 - 8];
                v56 = *v55;
                v53 -= 4;
                if (v65 < 2)
                {
                  break;
                }

                v57 = &v64[v63];
                v66 = *&v64[4 * v62] - 1;
                v64 -= 4;
                v54 = v61;
              }

              while (v56 == v66);
              v55 = &v53[4 * v62 - 4];
            }

            else
            {
              v61 = ((v51 << 30) - 0x100000000) >> 32;
            }

            *v55 = v56 + 1;
            v68 = v58[v61] + v59;
          }

          ++v30;
          ++v31;
        }

        while (v30 != v28);
      }

      v19 += v28 * v23;
    }
  }

  if (__p)
  {
    v74 = __p;
    operator delete(__p);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }
}

void sub_25A43BA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v14 = *(v12 - 136);
  if (v14)
  {
    *(v12 - 128) = v14;
    operator delete(v14);
  }

  v15 = *(v12 - 112);
  if (v15)
  {
    *(v12 - 104) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned short,unsigned short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v74 = *(*a1 + 152);
  v75 = *(*a2 + 152);
  v69 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v84;
    v28 = (v86 - v85) >> 2;
    v76 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v76;
    v30 = v77;
    v31 = (v79 - v78) >> 2;
    v32 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v33 = v78 + 4 * v32;
    v67 = v22;
    v34 = 2 * v19;
    v35 = 2 * v17;
    v36 = 4 * (v28 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v37 = 4 * (v31 & 0x7FFFFFFF);
    v70 = v78 - 8;
    do
    {
      v68 = v26;
      if (v25)
      {
        v38 = 0;
        v39 = v87;
        v40 = v89 + 4 * v76;
        v41 = v80;
        v72 = __p;
        v73 = v89;
        v42 = __p + 4 * v32;
        v43 = v69;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + 2 * v27);
            v45 = v20;
            v46 = v43;
            do
            {
              *v46 = *(v74 + 2 * v30 + 2 * v18 * *v44);
              v46 = (v46 + v34);
              v44 = (v44 + v35);
              --v45;
            }

            while (v45);
          }

          if (v28)
          {
            v47 = *v40;
            if (v28 >= 2 && v47 == *v29 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v28 & 0x7FFFFFFF) - 1;
              v51 = v29;
              v52 = v40;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v27 -= v39[v53] * (*v51 - 1);
                v84 = v27;
                --v50;
                v52 = &v48[v36 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v36];
                v55 = *&v49[4 * (v28 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v36 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v40;
            }

            *v56 = v47 + 1;
            v27 += v39[v50];
            v84 = v27;
          }

          if (v31)
          {
            v57 = *v42;
            if (v31 >= 2 && v57 == *v33 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v31 & 0x7FFFFFFF) - 1;
              v61 = v33;
              v62 = v42;
              v63 = v32;
              do
              {
                v64 = v60;
                *v62 = 0;
                v30 -= v41[v63] * (*v61 - 1);
                v77 = v30;
                --v60;
                v62 = &v58[v37 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v37];
                v65 = *&v59[4 * (v31 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v37 - 4];
            }

            else
            {
              v60 = v32;
              v66 = v42;
            }

            *v66 = v57 + 1;
            v30 += v41[v60];
            v77 = v30;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v25);
      }

      v26 = v68 + 1;
      v69 += v25 * v20;
    }

    while (v68 + 1 != v67);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A43C064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned int,unsigned short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v74 = *(*a1 + 152);
  v75 = *(*a2 + 152);
  v69 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v84;
    v28 = (v86 - v85) >> 2;
    v76 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v76;
    v30 = v77;
    v31 = (v79 - v78) >> 2;
    v32 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v33 = v78 + 4 * v32;
    v67 = v22;
    v34 = 4 * v19;
    v35 = 2 * v17;
    v36 = 4 * (v28 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v37 = 4 * (v31 & 0x7FFFFFFF);
    v70 = v78 - 8;
    do
    {
      v68 = v26;
      if (v25)
      {
        v38 = 0;
        v39 = v87;
        v40 = v89 + 4 * v76;
        v41 = v80;
        v72 = __p;
        v73 = v89;
        v42 = __p + 4 * v32;
        v43 = v69;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + 2 * v27);
            v45 = v20;
            v46 = v43;
            do
            {
              *v46 = *(v74 + 4 * v30 + 4 * v18 * *v44);
              v46 = (v46 + v34);
              v44 = (v44 + v35);
              --v45;
            }

            while (v45);
          }

          if (v28)
          {
            v47 = *v40;
            if (v28 >= 2 && v47 == *v29 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v28 & 0x7FFFFFFF) - 1;
              v51 = v29;
              v52 = v40;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v27 -= v39[v53] * (*v51 - 1);
                v84 = v27;
                --v50;
                v52 = &v48[v36 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v36];
                v55 = *&v49[4 * (v28 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v36 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v40;
            }

            *v56 = v47 + 1;
            v27 += v39[v50];
            v84 = v27;
          }

          if (v31)
          {
            v57 = *v42;
            if (v31 >= 2 && v57 == *v33 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v31 & 0x7FFFFFFF) - 1;
              v61 = v33;
              v62 = v42;
              v63 = v32;
              do
              {
                v64 = v60;
                *v62 = 0;
                v30 -= v41[v63] * (*v61 - 1);
                v77 = v30;
                --v60;
                v62 = &v58[v37 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v37];
                v65 = *&v59[4 * (v31 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v37 - 4];
            }

            else
            {
              v60 = v32;
              v66 = v42;
            }

            *v66 = v57 + 1;
            v30 += v41[v60];
            v77 = v30;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v25);
      }

      v26 = v68 + 1;
      v69 += v25 * v20;
    }

    while (v68 + 1 != v67);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A43C650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned long long,unsigned short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v76 = *(*a2 + 152);
  v17 = *(*a1 + 152);
  v70 = *(*a3 + 152);
  v18 = mlx::core::array::strides(a2, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::strides(a3, a4);
  v21 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v28 = (v86 - v85) >> 2;
    v75 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v75;
    v30 = (v79 - v78) >> 2;
    v31 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v32 = v78 + 4 * v31;
    v68 = v23;
    v33 = 8 * v20;
    v34 = 2 * v18;
    v35 = 4 * (v28 & 0x7FFFFFFF);
    v72 = v85 - 8;
    v36 = 4 * (v30 & 0x7FFFFFFF);
    v71 = v78 - 8;
    do
    {
      v69 = v27;
      if (v26)
      {
        v37 = 0;
        v38 = v87;
        v39 = v89 + 4 * v75;
        v40 = v80;
        v73 = __p;
        v74 = v89;
        v41 = __p + 4 * v31;
        v42 = v70;
        do
        {
          v43 = v21;
          v44 = v76;
          v45 = v42;
          if (v21 >= 1)
          {
            do
            {
              *v45 = *(v17 + 8 * v77 + 8 * v19 * *(v44 + 2 * v84));
              v45 = (v45 + v33);
              v44 += v34;
              --v43;
            }

            while (v43);
          }

          if (v28)
          {
            v46 = *v39;
            v47 = v84;
            if (v28 >= 2 && v46 == *v29 - 1)
            {
              v49 = v74;
              v48 = v75;
              v50 = v72;
              v51 = (v28 & 0x7FFFFFFF) - 1;
              v52 = v29;
              v53 = v39;
              do
              {
                v54 = v51;
                *v53 = 0;
                v47 -= v38[v48] * (*v52 - 1);
                v84 = v47;
                --v51;
                v53 = &v49[v35 - 8];
                v46 = *v53;
                v49 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v52 = &v50[v35];
                v55 = *&v50[4 * (v28 & 0x7FFFFFFF)] - 1;
                v50 -= 4;
                v48 = v51;
              }

              while (v46 == v55);
              v56 = &v49[v35 - 4];
            }

            else
            {
              v51 = v75;
              v56 = v39;
            }

            *v56 = v46 + 1;
            v84 = v38[v51] + v47;
          }

          if (v30)
          {
            v57 = *v41;
            v58 = v77;
            if (v30 >= 2 && v57 == *v32 - 1)
            {
              v59 = v73;
              v60 = v71;
              v61 = (v30 & 0x7FFFFFFF) - 1;
              v62 = v32;
              v63 = v41;
              v64 = v31;
              do
              {
                v65 = v61;
                *v63 = 0;
                v58 -= v40[v64] * (*v62 - 1);
                v77 = v58;
                --v61;
                v63 = &v59[v36 - 8];
                v57 = *v63;
                v59 -= 4;
                if (v65 < 2)
                {
                  break;
                }

                v62 = &v60[v36];
                v66 = *&v60[4 * (v30 & 0x7FFFFFFF)] - 1;
                v60 -= 4;
                v64 = v61;
              }

              while (v57 == v66);
              v67 = &v59[v36 - 4];
            }

            else
            {
              v61 = v31;
              v67 = v41;
            }

            *v67 = v57 + 1;
            v77 = v40[v61] + v58;
          }

          ++v37;
          ++v42;
        }

        while (v37 != v26);
      }

      v27 = v69 + 1;
      v70 += v26 * v21;
    }

    while (v69 + 1 != v68);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A43CC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<half,unsigned short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v74 = *(*a1 + 152);
  v75 = *(*a2 + 152);
  v69 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v84;
    v28 = (v86 - v85) >> 2;
    v76 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v76;
    v30 = v77;
    v31 = (v79 - v78) >> 2;
    v32 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v33 = v78 + 4 * v32;
    v67 = v22;
    v34 = 2 * v19;
    v35 = 2 * v17;
    v36 = 4 * (v28 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v37 = 4 * (v31 & 0x7FFFFFFF);
    v70 = v78 - 8;
    do
    {
      v68 = v26;
      if (v25)
      {
        v38 = 0;
        v39 = v87;
        v40 = v89 + 4 * v76;
        v41 = v80;
        v72 = __p;
        v73 = v89;
        v42 = __p + 4 * v32;
        v43 = v69;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + 2 * v27);
            v45 = v20;
            v46 = v43;
            do
            {
              *v46 = *(v74 + 2 * v30 + 2 * v18 * *v44);
              v46 = (v46 + v34);
              v44 = (v44 + v35);
              --v45;
            }

            while (v45);
          }

          if (v28)
          {
            v47 = *v40;
            if (v28 >= 2 && v47 == *v29 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v28 & 0x7FFFFFFF) - 1;
              v51 = v29;
              v52 = v40;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v27 -= v39[v53] * (*v51 - 1);
                v84 = v27;
                --v50;
                v52 = &v48[v36 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v36];
                v55 = *&v49[4 * (v28 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v36 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v40;
            }

            *v56 = v47 + 1;
            v27 += v39[v50];
            v84 = v27;
          }

          if (v31)
          {
            v57 = *v42;
            if (v31 >= 2 && v57 == *v33 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v31 & 0x7FFFFFFF) - 1;
              v61 = v33;
              v62 = v42;
              v63 = v32;
              do
              {
                v64 = v60;
                *v62 = 0;
                v30 -= v41[v63] * (*v61 - 1);
                v77 = v30;
                --v60;
                v62 = &v58[v37 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v37];
                v65 = *&v59[4 * (v31 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v37 - 4];
            }

            else
            {
              v60 = v32;
              v66 = v42;
            }

            *v66 = v57 + 1;
            v30 += v41[v60];
            v77 = v30;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v25);
      }

      v26 = v68 + 1;
      v69 += v25 * v20;
    }

    while (v68 + 1 != v67);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A43D224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<float,unsigned short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v74 = *(*a1 + 152);
  v75 = *(*a2 + 152);
  v69 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v84;
    v28 = (v86 - v85) >> 2;
    v76 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v76;
    v30 = v77;
    v31 = (v79 - v78) >> 2;
    v32 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v33 = v78 + 4 * v32;
    v67 = v22;
    v34 = 4 * v19;
    v35 = 2 * v17;
    v36 = 4 * (v28 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v37 = 4 * (v31 & 0x7FFFFFFF);
    v70 = v78 - 8;
    do
    {
      v68 = v26;
      if (v25)
      {
        v38 = 0;
        v39 = v87;
        v40 = v89 + 4 * v76;
        v41 = v80;
        v72 = __p;
        v73 = v89;
        v42 = __p + 4 * v32;
        v43 = v69;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + 2 * v27);
            v45 = v20;
            v46 = v43;
            do
            {
              *v46 = *(v74 + 4 * v30 + 4 * v18 * *v44);
              v46 = (v46 + v34);
              v44 = (v44 + v35);
              --v45;
            }

            while (v45);
          }

          if (v28)
          {
            v47 = *v40;
            if (v28 >= 2 && v47 == *v29 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v28 & 0x7FFFFFFF) - 1;
              v51 = v29;
              v52 = v40;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v27 -= v39[v53] * (*v51 - 1);
                v84 = v27;
                --v50;
                v52 = &v48[v36 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v36];
                v55 = *&v49[4 * (v28 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v36 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v40;
            }

            *v56 = v47 + 1;
            v27 += v39[v50];
            v84 = v27;
          }

          if (v31)
          {
            v57 = *v42;
            if (v31 >= 2 && v57 == *v33 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v31 & 0x7FFFFFFF) - 1;
              v61 = v33;
              v62 = v42;
              v63 = v32;
              do
              {
                v64 = v60;
                *v62 = 0;
                v30 -= v41[v63] * (*v61 - 1);
                v77 = v30;
                --v60;
                v62 = &v58[v37 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v37];
                v65 = *&v59[4 * (v31 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v37 - 4];
            }

            else
            {
              v60 = v32;
              v66 = v42;
            }

            *v66 = v57 + 1;
            v30 += v41[v60];
            v77 = v30;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v25);
      }

      v26 = v68 + 1;
      v69 += v25 * v20;
    }

    while (v68 + 1 != v67);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A43D810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<double,unsigned short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v74 = *(*a1 + 152);
  v75 = *(*a2 + 152);
  v69 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v84;
    v28 = (v86 - v85) >> 2;
    v76 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v76;
    v30 = v77;
    v31 = (v79 - v78) >> 2;
    v32 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v33 = v78 + 4 * v32;
    v67 = v22;
    v34 = 8 * v19;
    v35 = 2 * v17;
    v36 = 4 * (v28 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v37 = 4 * (v31 & 0x7FFFFFFF);
    v70 = v78 - 8;
    do
    {
      v68 = v26;
      if (v25)
      {
        v38 = 0;
        v39 = v87;
        v40 = v89 + 4 * v76;
        v41 = v80;
        v72 = __p;
        v73 = v89;
        v42 = __p + 4 * v32;
        v43 = v69;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + 2 * v27);
            v45 = v20;
            v46 = v43;
            do
            {
              *v46 = *(v74 + 8 * v30 + 8 * v18 * *v44);
              v46 = (v46 + v34);
              v44 = (v44 + v35);
              --v45;
            }

            while (v45);
          }

          if (v28)
          {
            v47 = *v40;
            if (v28 >= 2 && v47 == *v29 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v28 & 0x7FFFFFFF) - 1;
              v51 = v29;
              v52 = v40;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v27 -= v39[v53] * (*v51 - 1);
                v84 = v27;
                --v50;
                v52 = &v48[v36 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v36];
                v55 = *&v49[4 * (v28 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v36 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v40;
            }

            *v56 = v47 + 1;
            v27 += v39[v50];
            v84 = v27;
          }

          if (v31)
          {
            v57 = *v42;
            if (v31 >= 2 && v57 == *v33 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v31 & 0x7FFFFFFF) - 1;
              v61 = v33;
              v62 = v42;
              v63 = v32;
              do
              {
                v64 = v60;
                *v62 = 0;
                v30 -= v41[v63] * (*v61 - 1);
                v77 = v30;
                --v60;
                v62 = &v58[v37 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v37];
                v65 = *&v59[4 * (v31 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v37 - 4];
            }

            else
            {
              v60 = v32;
              v66 = v42;
            }

            *v66 = v57 + 1;
            v30 += v41[v60];
            v77 = v30;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v25);
      }

      v26 = v68 + 1;
      v69 += v25 * v20;
    }

    while (v68 + 1 != v67);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A43DDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<mlx::core::complex64_t,unsigned short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v86, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v86[8 * a4];
  v10 = v87 - (v9 + 8);
  if (v87 != v9 + 8)
  {
    memmove(&v86[8 * a4], v9 + 8, v87 - (v9 + 8));
  }

  v87 = &v9[v10];
  v11 = *a2;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v83, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v83[4 * a4];
  v13 = v84 - (v12 + 4);
  if (v84 != v12 + 4)
  {
    memmove(&v83[4 * a4], v12 + 4, v84 - (v12 + 4));
  }

  v84 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v76, &v83, &v86, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v86 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v86, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v86[v14];
  v16 = v87 - &v86[v14 + 8];
  if (v87 != &v86[v14 + 8])
  {
    memmove(&v86[v14], &v86[v14 + 8], v87 - (v15 + 8));
  }

  v87 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v69, &v83, &v86, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a1 + 152);
  v19 = *(*a3 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a1, a4);
  v22 = mlx::core::array::strides(a3, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v68 = v22;
  mlx::core::array::shape(a1, a4);
  v24 = v20;
  if (a4 < 1)
  {
    v26 = 1;
  }

  else
  {
    v25 = 0;
    v26 = 1;
    do
    {
      v26 *= mlx::core::array::shape(a2, v25++);
    }

    while (a4 != v25);
  }

  v27 = a4 + 1;
  v28 = *(*a2 + 8) - **a2;
  v29 = 1;
  while (v27 < v28 >> 2)
  {
    v29 *= mlx::core::array::shape(a2, v27++);
    v28 = *(*a2 + 8) - **a2;
  }

  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      if (v29)
      {
        v31 = 0;
        v32 = v19;
        do
        {
          v33 = v23;
          v34 = v17;
          v35 = v32;
          if (v23 >= 1)
          {
            do
            {
              *v35 = *(v18 + 8 * v69 + 8 * v21 * *(v34 + 2 * v76));
              v35 += v68;
              v34 += 2 * v24;
              --v33;
            }

            while (v33);
          }

          v36 = v78 - v77;
          v37 = (v78 - v77) >> 2;
          if (v37)
          {
            v38 = v81;
            v39 = ((v36 << 30) - 0x100000000) >> 32;
            v40 = v81 + 4 * v39;
            v41 = *v40;
            v42 = v77 + 4 * v39;
            v43 = v79;
            v44 = v76;
            if (v37 >= 2 && v41 == *v42 - 1)
            {
              v47 = (v36 >> 2) & 0x7FFFFFFF;
              v46 = v47 - 1;
              v48 = 4 * v47;
              v49 = v77 - 8;
              do
              {
                v50 = v46;
                *v40 = 0;
                v44 -= v43[v39] * (*v42 - 1);
                v76 = v44;
                --v46;
                v40 = &v38[v48 - 8];
                v41 = *v40;
                v38 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v42 = &v49[v48];
                v51 = *&v49[4 * v47] - 1;
                v49 -= 4;
                v39 = v46;
              }

              while (v41 == v51);
              v40 = &v38[4 * v47 - 4];
            }

            else
            {
              v46 = ((v36 << 30) - 0x100000000) >> 32;
            }

            *v40 = v41 + 1;
            v76 = v43[v46] + v44;
          }

          v52 = v71 - v70;
          v53 = (v71 - v70) >> 2;
          if (v53)
          {
            v54 = __p;
            v55 = ((v52 << 30) - 0x100000000) >> 32;
            v56 = __p + 4 * v55;
            v57 = *v56;
            v58 = v70 + 4 * v55;
            v59 = v72;
            v60 = v69;
            if (v53 >= 2 && v57 == *v58 - 1)
            {
              v63 = (v52 >> 2) & 0x7FFFFFFF;
              v62 = v63 - 1;
              v64 = 4 * v63;
              v65 = v70 - 8;
              do
              {
                v66 = v62;
                *v56 = 0;
                v60 -= v59[v55] * (*v58 - 1);
                v69 = v60;
                --v62;
                v56 = &v54[v64 - 8];
                v57 = *v56;
                v54 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v58 = &v65[v64];
                v67 = *&v65[4 * v63] - 1;
                v65 -= 4;
                v55 = v62;
              }

              while (v57 == v67);
              v56 = &v54[4 * v63 - 4];
            }

            else
            {
              v62 = ((v52 << 30) - 0x100000000) >> 32;
            }

            *v56 = v57 + 1;
            v69 = v59[v62] + v60;
          }

          ++v31;
          ++v32;
        }

        while (v31 != v29);
      }

      v19 += v29 * v23;
    }
  }

  if (__p)
  {
    v75 = __p;
    operator delete(__p);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }
}

void sub_25A43E380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v14 = *(v12 - 136);
  if (v14)
  {
    *(v12 - 128) = v14;
    operator delete(v14);
  }

  v15 = *(v12 - 112);
  if (v15)
  {
    *(v12 - 104) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<BOOL,unsigned int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v93, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v93[8 * a4];
  v10 = v94 - (v9 + 8);
  if (v94 != v9 + 8)
  {
    memmove(&v93[8 * a4], v9 + 8, v94 - (v9 + 8));
  }

  v94 = &v9[v10];
  v11 = *a2;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v90, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v90[4 * a4];
  v13 = v91 - (v12 + 4);
  if (v91 != v12 + 4)
  {
    memmove(&v90[4 * a4], v12 + 4, v91 - (v12 + 4));
  }

  v91 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v83, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v93 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v93, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v93[v14];
  v16 = v94 - &v93[v14 + 8];
  if (v94 != &v93[v14 + 8])
  {
    memmove(&v93[v14], &v93[v14 + 8], v94 - (v15 + 8));
  }

  v94 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v76, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v73 = *(*a1 + 152);
  v74 = *(*a2 + 152);
  v68 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v83;
    v28 = (v85 - v84) >> 2;
    v75 = (((v85 - v84) << 30) - 0x100000000) >> 32;
    v29 = v84 + 4 * v75;
    v30 = v76;
    v31 = (v78 - v77) >> 2;
    v32 = (((v78 - v77) << 30) - 0x100000000) >> 32;
    v33 = v77 + 4 * v32;
    v34 = 4 * v17;
    v35 = 4 * (v28 & 0x7FFFFFFF);
    v70 = v84 - 8;
    v36 = 4 * (v31 & 0x7FFFFFFF);
    v69 = v77 - 8;
    v66 = v22;
    do
    {
      v67 = v26;
      if (v25)
      {
        v37 = 0;
        v38 = v86;
        v39 = v88 + 4 * v75;
        v40 = v79;
        v71 = __p;
        v72 = v88;
        v41 = __p + 4 * v32;
        v42 = v68;
        do
        {
          if (v20 >= 1)
          {
            v43 = v20;
            v44 = v42;
            v45 = (v74 + 4 * v27);
            do
            {
              *v44 = *(v73 + v30 + v18 * *v45);
              v44 += v19;
              v45 = (v45 + v34);
              --v43;
            }

            while (v43);
          }

          if (v28)
          {
            v46 = *v39;
            if (v28 >= 2 && v46 == *v29 - 1)
            {
              v47 = v72;
              v48 = v70;
              v49 = (v28 & 0x7FFFFFFF) - 1;
              v50 = v29;
              v51 = v39;
              v52 = v75;
              do
              {
                v53 = v49;
                *v51 = 0;
                v27 -= v38[v52] * (*v50 - 1);
                v83 = v27;
                --v49;
                v51 = &v47[v35 - 8];
                v46 = *v51;
                v47 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v50 = &v48[v35];
                v54 = *&v48[4 * (v28 & 0x7FFFFFFF)] - 1;
                v48 -= 4;
                v52 = v49;
              }

              while (v46 == v54);
              v55 = &v47[v35 - 4];
            }

            else
            {
              v49 = v75;
              v55 = v39;
            }

            *v55 = v46 + 1;
            v27 += v38[v49];
            v83 = v27;
          }

          if (v31)
          {
            v56 = *v41;
            if (v31 >= 2 && v56 == *v33 - 1)
            {
              v57 = v71;
              v58 = v69;
              v59 = (v31 & 0x7FFFFFFF) - 1;
              v60 = v33;
              v61 = v41;
              v62 = v32;
              do
              {
                v63 = v59;
                *v61 = 0;
                v30 -= v40[v62] * (*v60 - 1);
                v76 = v30;
                --v59;
                v61 = &v57[v36 - 8];
                v56 = *v61;
                v57 -= 4;
                if (v63 < 2)
                {
                  break;
                }

                v60 = &v58[v36];
                v64 = *&v58[4 * (v31 & 0x7FFFFFFF)] - 1;
                v58 -= 4;
                v62 = v59;
              }

              while (v56 == v64);
              v65 = &v57[v36 - 4];
            }

            else
            {
              v59 = v32;
              v65 = v41;
            }

            *v65 = v56 + 1;
            v30 += v40[v59];
            v76 = v30;
          }

          ++v37;
          ++v42;
        }

        while (v37 != v25);
      }

      v68 += v25 * v20;
      v26 = v67 + 1;
    }

    while (v67 + 1 != v66);
  }

  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }
}

void sub_25A43E968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned char,unsigned int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v85, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v85[8 * a4];
  v10 = v86 - (v9 + 8);
  if (v86 != v9 + 8)
  {
    memmove(&v85[8 * a4], v9 + 8, v86 - (v9 + 8));
  }

  v86 = &v9[v10];
  v11 = *a2;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v82, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v82[4 * a4];
  v13 = v83 - (v12 + 4);
  if (v83 != v12 + 4)
  {
    memmove(&v82[4 * a4], v12 + 4, v83 - (v12 + 4));
  }

  v83 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v75, &v82, &v85, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v85 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v85, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v85[v14];
  v16 = v86 - &v85[v14 + 8];
  if (v86 != &v85[v14 + 8])
  {
    memmove(&v85[v14], &v85[v14 + 8], v86 - (v15 + 8));
  }

  v86 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v68, &v82, &v85, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a1 + 152);
  v19 = *(*a3 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a1, a4);
  v22 = mlx::core::array::strides(a3, a4);
  v23 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  v67 = v20;
  if (a4 < 1)
  {
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v25 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v26 = a4 + 1;
  v27 = *(*a2 + 8) - **a2;
  v28 = 1;
  while (v26 < v27 >> 2)
  {
    v28 *= mlx::core::array::shape(a2, v26++);
    v27 = *(*a2 + 8) - **a2;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (v28)
      {
        v30 = 0;
        v31 = v19;
        do
        {
          v32 = v23;
          v33 = v17;
          v34 = v31;
          if (v23 >= 1)
          {
            do
            {
              *v34 = *(v18 + v68 + v21 * *(v33 + 4 * v75));
              v34 += v22;
              v33 += 4 * v67;
              --v32;
            }

            while (v32);
          }

          v35 = v77 - v76;
          v36 = (v77 - v76) >> 2;
          if (v36)
          {
            v37 = v80;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = v80 + 4 * v38;
            v40 = *v39;
            v41 = v76 + 4 * v38;
            v42 = v78;
            v43 = v75;
            if (v36 >= 2 && v40 == *v41 - 1)
            {
              v46 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v46 - 1;
              v47 = 4 * v46;
              v48 = v76 - 8;
              do
              {
                v49 = v45;
                *v39 = 0;
                v43 -= v42[v38] * (*v41 - 1);
                v75 = v43;
                --v45;
                v39 = &v37[v47 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v49 < 2)
                {
                  break;
                }

                v41 = &v48[v47];
                v50 = *&v48[4 * v46] - 1;
                v48 -= 4;
                v38 = v45;
              }

              while (v40 == v50);
              v39 = &v37[4 * v46 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v75 = v42[v45] + v43;
          }

          v51 = v70 - v69;
          v52 = (v70 - v69) >> 2;
          if (v52)
          {
            v53 = __p;
            v54 = ((v51 << 30) - 0x100000000) >> 32;
            v55 = __p + 4 * v54;
            v56 = *v55;
            v57 = v69 + 4 * v54;
            v58 = v71;
            v59 = v68;
            if (v52 >= 2 && v56 == *v57 - 1)
            {
              v62 = (v51 >> 2) & 0x7FFFFFFF;
              v61 = v62 - 1;
              v63 = 4 * v62;
              v64 = v69 - 8;
              do
              {
                v65 = v61;
                *v55 = 0;
                v59 -= v58[v54] * (*v57 - 1);
                v68 = v59;
                --v61;
                v55 = &v53[v63 - 8];
                v56 = *v55;
                v53 -= 4;
                if (v65 < 2)
                {
                  break;
                }

                v57 = &v64[v63];
                v66 = *&v64[4 * v62] - 1;
                v64 -= 4;
                v54 = v61;
              }

              while (v56 == v66);
              v55 = &v53[4 * v62 - 4];
            }

            else
            {
              v61 = ((v51 << 30) - 0x100000000) >> 32;
            }

            *v55 = v56 + 1;
            v68 = v58[v61] + v59;
          }

          ++v30;
          ++v31;
        }

        while (v30 != v28);
      }

      v19 += v28 * v23;
    }
  }

  if (__p)
  {
    v74 = __p;
    operator delete(__p);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }
}

void sub_25A43EEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v14 = *(v12 - 136);
  if (v14)
  {
    *(v12 - 128) = v14;
    operator delete(v14);
  }

  v15 = *(v12 - 112);
  if (v15)
  {
    *(v12 - 104) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned short,unsigned int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v74 = *(*a1 + 152);
  v75 = *(*a2 + 152);
  v69 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v84;
    v28 = (v86 - v85) >> 2;
    v76 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v76;
    v30 = v77;
    v31 = (v79 - v78) >> 2;
    v32 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v33 = v78 + 4 * v32;
    v67 = v22;
    v34 = 2 * v19;
    v35 = 4 * v17;
    v36 = 4 * (v28 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v37 = 4 * (v31 & 0x7FFFFFFF);
    v70 = v78 - 8;
    do
    {
      v68 = v26;
      if (v25)
      {
        v38 = 0;
        v39 = v87;
        v40 = v89 + 4 * v76;
        v41 = v80;
        v72 = __p;
        v73 = v89;
        v42 = __p + 4 * v32;
        v43 = v69;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + 4 * v27);
            v45 = v20;
            v46 = v43;
            do
            {
              *v46 = *(v74 + 2 * v30 + 2 * v18 * *v44);
              v46 = (v46 + v34);
              v44 = (v44 + v35);
              --v45;
            }

            while (v45);
          }

          if (v28)
          {
            v47 = *v40;
            if (v28 >= 2 && v47 == *v29 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v28 & 0x7FFFFFFF) - 1;
              v51 = v29;
              v52 = v40;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v27 -= v39[v53] * (*v51 - 1);
                v84 = v27;
                --v50;
                v52 = &v48[v36 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v36];
                v55 = *&v49[4 * (v28 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v36 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v40;
            }

            *v56 = v47 + 1;
            v27 += v39[v50];
            v84 = v27;
          }

          if (v31)
          {
            v57 = *v42;
            if (v31 >= 2 && v57 == *v33 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v31 & 0x7FFFFFFF) - 1;
              v61 = v33;
              v62 = v42;
              v63 = v32;
              do
              {
                v64 = v60;
                *v62 = 0;
                v30 -= v41[v63] * (*v61 - 1);
                v77 = v30;
                --v60;
                v62 = &v58[v37 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v37];
                v65 = *&v59[4 * (v31 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v37 - 4];
            }

            else
            {
              v60 = v32;
              v66 = v42;
            }

            *v66 = v57 + 1;
            v30 += v41[v60];
            v77 = v30;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v25);
      }

      v26 = v68 + 1;
      v69 += v25 * v20;
    }

    while (v68 + 1 != v67);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A43F4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned int,unsigned int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v74 = *(*a1 + 152);
  v75 = *(*a2 + 152);
  v69 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v84;
    v28 = (v86 - v85) >> 2;
    v76 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v76;
    v30 = v77;
    v31 = (v79 - v78) >> 2;
    v32 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v33 = v78 + 4 * v32;
    v67 = v22;
    v34 = 4 * v19;
    v35 = 4 * v17;
    v36 = 4 * (v28 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v37 = 4 * (v31 & 0x7FFFFFFF);
    v70 = v78 - 8;
    do
    {
      v68 = v26;
      if (v25)
      {
        v38 = 0;
        v39 = v87;
        v40 = v89 + 4 * v76;
        v41 = v80;
        v72 = __p;
        v73 = v89;
        v42 = __p + 4 * v32;
        v43 = v69;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + 4 * v27);
            v45 = v20;
            v46 = v43;
            do
            {
              *v46 = *(v74 + 4 * v30 + 4 * v18 * *v44);
              v46 = (v46 + v34);
              v44 = (v44 + v35);
              --v45;
            }

            while (v45);
          }

          if (v28)
          {
            v47 = *v40;
            if (v28 >= 2 && v47 == *v29 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v28 & 0x7FFFFFFF) - 1;
              v51 = v29;
              v52 = v40;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v27 -= v39[v53] * (*v51 - 1);
                v84 = v27;
                --v50;
                v52 = &v48[v36 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v36];
                v55 = *&v49[4 * (v28 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v36 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v40;
            }

            *v56 = v47 + 1;
            v27 += v39[v50];
            v84 = v27;
          }

          if (v31)
          {
            v57 = *v42;
            if (v31 >= 2 && v57 == *v33 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v31 & 0x7FFFFFFF) - 1;
              v61 = v33;
              v62 = v42;
              v63 = v32;
              do
              {
                v64 = v60;
                *v62 = 0;
                v30 -= v41[v63] * (*v61 - 1);
                v77 = v30;
                --v60;
                v62 = &v58[v37 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v37];
                v65 = *&v59[4 * (v31 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v37 - 4];
            }

            else
            {
              v60 = v32;
              v66 = v42;
            }

            *v66 = v57 + 1;
            v30 += v41[v60];
            v77 = v30;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v25);
      }

      v26 = v68 + 1;
      v69 += v25 * v20;
    }

    while (v68 + 1 != v67);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A43FAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned long long,unsigned int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v76 = *(*a2 + 152);
  v17 = *(*a1 + 152);
  v70 = *(*a3 + 152);
  v18 = mlx::core::array::strides(a2, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::strides(a3, a4);
  v21 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v28 = (v86 - v85) >> 2;
    v75 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v75;
    v30 = (v79 - v78) >> 2;
    v31 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v32 = v78 + 4 * v31;
    v68 = v23;
    v33 = 8 * v20;
    v34 = 4 * v18;
    v35 = 4 * (v28 & 0x7FFFFFFF);
    v72 = v85 - 8;
    v36 = 4 * (v30 & 0x7FFFFFFF);
    v71 = v78 - 8;
    do
    {
      v69 = v27;
      if (v26)
      {
        v37 = 0;
        v38 = v87;
        v39 = v89 + 4 * v75;
        v40 = v80;
        v73 = __p;
        v74 = v89;
        v41 = __p + 4 * v31;
        v42 = v70;
        do
        {
          v43 = v21;
          v44 = v76;
          v45 = v42;
          if (v21 >= 1)
          {
            do
            {
              *v45 = *(v17 + 8 * v77 + 8 * v19 * *(v44 + 4 * v84));
              v45 = (v45 + v33);
              v44 += v34;
              --v43;
            }

            while (v43);
          }

          if (v28)
          {
            v46 = *v39;
            v47 = v84;
            if (v28 >= 2 && v46 == *v29 - 1)
            {
              v49 = v74;
              v48 = v75;
              v50 = v72;
              v51 = (v28 & 0x7FFFFFFF) - 1;
              v52 = v29;
              v53 = v39;
              do
              {
                v54 = v51;
                *v53 = 0;
                v47 -= v38[v48] * (*v52 - 1);
                v84 = v47;
                --v51;
                v53 = &v49[v35 - 8];
                v46 = *v53;
                v49 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v52 = &v50[v35];
                v55 = *&v50[4 * (v28 & 0x7FFFFFFF)] - 1;
                v50 -= 4;
                v48 = v51;
              }

              while (v46 == v55);
              v56 = &v49[v35 - 4];
            }

            else
            {
              v51 = v75;
              v56 = v39;
            }

            *v56 = v46 + 1;
            v84 = v38[v51] + v47;
          }

          if (v30)
          {
            v57 = *v41;
            v58 = v77;
            if (v30 >= 2 && v57 == *v32 - 1)
            {
              v59 = v73;
              v60 = v71;
              v61 = (v30 & 0x7FFFFFFF) - 1;
              v62 = v32;
              v63 = v41;
              v64 = v31;
              do
              {
                v65 = v61;
                *v63 = 0;
                v58 -= v40[v64] * (*v62 - 1);
                v77 = v58;
                --v61;
                v63 = &v59[v36 - 8];
                v57 = *v63;
                v59 -= 4;
                if (v65 < 2)
                {
                  break;
                }

                v62 = &v60[v36];
                v66 = *&v60[4 * (v30 & 0x7FFFFFFF)] - 1;
                v60 -= 4;
                v64 = v61;
              }

              while (v57 == v66);
              v67 = &v59[v36 - 4];
            }

            else
            {
              v61 = v31;
              v67 = v41;
            }

            *v67 = v57 + 1;
            v77 = v40[v61] + v58;
          }

          ++v37;
          ++v42;
        }

        while (v37 != v26);
      }

      v27 = v69 + 1;
      v70 += v26 * v21;
    }

    while (v69 + 1 != v68);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A4400A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<half,unsigned int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v74 = *(*a1 + 152);
  v75 = *(*a2 + 152);
  v69 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v84;
    v28 = (v86 - v85) >> 2;
    v76 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v76;
    v30 = v77;
    v31 = (v79 - v78) >> 2;
    v32 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v33 = v78 + 4 * v32;
    v67 = v22;
    v34 = 2 * v19;
    v35 = 4 * v17;
    v36 = 4 * (v28 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v37 = 4 * (v31 & 0x7FFFFFFF);
    v70 = v78 - 8;
    do
    {
      v68 = v26;
      if (v25)
      {
        v38 = 0;
        v39 = v87;
        v40 = v89 + 4 * v76;
        v41 = v80;
        v72 = __p;
        v73 = v89;
        v42 = __p + 4 * v32;
        v43 = v69;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + 4 * v27);
            v45 = v20;
            v46 = v43;
            do
            {
              *v46 = *(v74 + 2 * v30 + 2 * v18 * *v44);
              v46 = (v46 + v34);
              v44 = (v44 + v35);
              --v45;
            }

            while (v45);
          }

          if (v28)
          {
            v47 = *v40;
            if (v28 >= 2 && v47 == *v29 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v28 & 0x7FFFFFFF) - 1;
              v51 = v29;
              v52 = v40;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v27 -= v39[v53] * (*v51 - 1);
                v84 = v27;
                --v50;
                v52 = &v48[v36 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v36];
                v55 = *&v49[4 * (v28 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v36 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v40;
            }

            *v56 = v47 + 1;
            v27 += v39[v50];
            v84 = v27;
          }

          if (v31)
          {
            v57 = *v42;
            if (v31 >= 2 && v57 == *v33 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v31 & 0x7FFFFFFF) - 1;
              v61 = v33;
              v62 = v42;
              v63 = v32;
              do
              {
                v64 = v60;
                *v62 = 0;
                v30 -= v41[v63] * (*v61 - 1);
                v77 = v30;
                --v60;
                v62 = &v58[v37 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v37];
                v65 = *&v59[4 * (v31 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v37 - 4];
            }

            else
            {
              v60 = v32;
              v66 = v42;
            }

            *v66 = v57 + 1;
            v30 += v41[v60];
            v77 = v30;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v25);
      }

      v26 = v68 + 1;
      v69 += v25 * v20;
    }

    while (v68 + 1 != v67);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A44068C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<float,unsigned int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v74 = *(*a1 + 152);
  v75 = *(*a2 + 152);
  v69 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v84;
    v28 = (v86 - v85) >> 2;
    v76 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v76;
    v30 = v77;
    v31 = (v79 - v78) >> 2;
    v32 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v33 = v78 + 4 * v32;
    v67 = v22;
    v34 = 4 * v19;
    v35 = 4 * v17;
    v36 = 4 * (v28 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v37 = 4 * (v31 & 0x7FFFFFFF);
    v70 = v78 - 8;
    do
    {
      v68 = v26;
      if (v25)
      {
        v38 = 0;
        v39 = v87;
        v40 = v89 + 4 * v76;
        v41 = v80;
        v72 = __p;
        v73 = v89;
        v42 = __p + 4 * v32;
        v43 = v69;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + 4 * v27);
            v45 = v20;
            v46 = v43;
            do
            {
              *v46 = *(v74 + 4 * v30 + 4 * v18 * *v44);
              v46 = (v46 + v34);
              v44 = (v44 + v35);
              --v45;
            }

            while (v45);
          }

          if (v28)
          {
            v47 = *v40;
            if (v28 >= 2 && v47 == *v29 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v28 & 0x7FFFFFFF) - 1;
              v51 = v29;
              v52 = v40;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v27 -= v39[v53] * (*v51 - 1);
                v84 = v27;
                --v50;
                v52 = &v48[v36 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v36];
                v55 = *&v49[4 * (v28 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v36 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v40;
            }

            *v56 = v47 + 1;
            v27 += v39[v50];
            v84 = v27;
          }

          if (v31)
          {
            v57 = *v42;
            if (v31 >= 2 && v57 == *v33 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v31 & 0x7FFFFFFF) - 1;
              v61 = v33;
              v62 = v42;
              v63 = v32;
              do
              {
                v64 = v60;
                *v62 = 0;
                v30 -= v41[v63] * (*v61 - 1);
                v77 = v30;
                --v60;
                v62 = &v58[v37 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v37];
                v65 = *&v59[4 * (v31 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v37 - 4];
            }

            else
            {
              v60 = v32;
              v66 = v42;
            }

            *v66 = v57 + 1;
            v30 += v41[v60];
            v77 = v30;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v25);
      }

      v26 = v68 + 1;
      v69 += v25 * v20;
    }

    while (v68 + 1 != v67);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A440C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<double,unsigned int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v74 = *(*a1 + 152);
  v75 = *(*a2 + 152);
  v69 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v84;
    v28 = (v86 - v85) >> 2;
    v76 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v76;
    v30 = v77;
    v31 = (v79 - v78) >> 2;
    v32 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v33 = v78 + 4 * v32;
    v67 = v22;
    v34 = 8 * v19;
    v35 = 4 * v17;
    v36 = 4 * (v28 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v37 = 4 * (v31 & 0x7FFFFFFF);
    v70 = v78 - 8;
    do
    {
      v68 = v26;
      if (v25)
      {
        v38 = 0;
        v39 = v87;
        v40 = v89 + 4 * v76;
        v41 = v80;
        v72 = __p;
        v73 = v89;
        v42 = __p + 4 * v32;
        v43 = v69;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + 4 * v27);
            v45 = v20;
            v46 = v43;
            do
            {
              *v46 = *(v74 + 8 * v30 + 8 * v18 * *v44);
              v46 = (v46 + v34);
              v44 = (v44 + v35);
              --v45;
            }

            while (v45);
          }

          if (v28)
          {
            v47 = *v40;
            if (v28 >= 2 && v47 == *v29 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v28 & 0x7FFFFFFF) - 1;
              v51 = v29;
              v52 = v40;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v27 -= v39[v53] * (*v51 - 1);
                v84 = v27;
                --v50;
                v52 = &v48[v36 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v36];
                v55 = *&v49[4 * (v28 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v36 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v40;
            }

            *v56 = v47 + 1;
            v27 += v39[v50];
            v84 = v27;
          }

          if (v31)
          {
            v57 = *v42;
            if (v31 >= 2 && v57 == *v33 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v31 & 0x7FFFFFFF) - 1;
              v61 = v33;
              v62 = v42;
              v63 = v32;
              do
              {
                v64 = v60;
                *v62 = 0;
                v30 -= v41[v63] * (*v61 - 1);
                v77 = v30;
                --v60;
                v62 = &v58[v37 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v37];
                v65 = *&v59[4 * (v31 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v37 - 4];
            }

            else
            {
              v60 = v32;
              v66 = v42;
            }

            *v66 = v57 + 1;
            v30 += v41[v60];
            v77 = v30;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v25);
      }

      v26 = v68 + 1;
      v69 += v25 * v20;
    }

    while (v68 + 1 != v67);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A441264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<mlx::core::complex64_t,unsigned int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v86, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v86[8 * a4];
  v10 = v87 - (v9 + 8);
  if (v87 != v9 + 8)
  {
    memmove(&v86[8 * a4], v9 + 8, v87 - (v9 + 8));
  }

  v87 = &v9[v10];
  v11 = *a2;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v83, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v83[4 * a4];
  v13 = v84 - (v12 + 4);
  if (v84 != v12 + 4)
  {
    memmove(&v83[4 * a4], v12 + 4, v84 - (v12 + 4));
  }

  v84 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v76, &v83, &v86, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v86 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v86, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v86[v14];
  v16 = v87 - &v86[v14 + 8];
  if (v87 != &v86[v14 + 8])
  {
    memmove(&v86[v14], &v86[v14 + 8], v87 - (v15 + 8));
  }

  v87 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v69, &v83, &v86, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a1 + 152);
  v19 = *(*a3 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a1, a4);
  v22 = mlx::core::array::strides(a3, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v68 = v22;
  mlx::core::array::shape(a1, a4);
  v24 = v20;
  if (a4 < 1)
  {
    v26 = 1;
  }

  else
  {
    v25 = 0;
    v26 = 1;
    do
    {
      v26 *= mlx::core::array::shape(a2, v25++);
    }

    while (a4 != v25);
  }

  v27 = a4 + 1;
  v28 = *(*a2 + 8) - **a2;
  v29 = 1;
  while (v27 < v28 >> 2)
  {
    v29 *= mlx::core::array::shape(a2, v27++);
    v28 = *(*a2 + 8) - **a2;
  }

  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      if (v29)
      {
        v31 = 0;
        v32 = v19;
        do
        {
          v33 = v23;
          v34 = v17;
          v35 = v32;
          if (v23 >= 1)
          {
            do
            {
              *v35 = *(v18 + 8 * v69 + 8 * v21 * *(v34 + 4 * v76));
              v35 += v68;
              v34 += 4 * v24;
              --v33;
            }

            while (v33);
          }

          v36 = v78 - v77;
          v37 = (v78 - v77) >> 2;
          if (v37)
          {
            v38 = v81;
            v39 = ((v36 << 30) - 0x100000000) >> 32;
            v40 = v81 + 4 * v39;
            v41 = *v40;
            v42 = v77 + 4 * v39;
            v43 = v79;
            v44 = v76;
            if (v37 >= 2 && v41 == *v42 - 1)
            {
              v47 = (v36 >> 2) & 0x7FFFFFFF;
              v46 = v47 - 1;
              v48 = 4 * v47;
              v49 = v77 - 8;
              do
              {
                v50 = v46;
                *v40 = 0;
                v44 -= v43[v39] * (*v42 - 1);
                v76 = v44;
                --v46;
                v40 = &v38[v48 - 8];
                v41 = *v40;
                v38 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v42 = &v49[v48];
                v51 = *&v49[4 * v47] - 1;
                v49 -= 4;
                v39 = v46;
              }

              while (v41 == v51);
              v40 = &v38[4 * v47 - 4];
            }

            else
            {
              v46 = ((v36 << 30) - 0x100000000) >> 32;
            }

            *v40 = v41 + 1;
            v76 = v43[v46] + v44;
          }

          v52 = v71 - v70;
          v53 = (v71 - v70) >> 2;
          if (v53)
          {
            v54 = __p;
            v55 = ((v52 << 30) - 0x100000000) >> 32;
            v56 = __p + 4 * v55;
            v57 = *v56;
            v58 = v70 + 4 * v55;
            v59 = v72;
            v60 = v69;
            if (v53 >= 2 && v57 == *v58 - 1)
            {
              v63 = (v52 >> 2) & 0x7FFFFFFF;
              v62 = v63 - 1;
              v64 = 4 * v63;
              v65 = v70 - 8;
              do
              {
                v66 = v62;
                *v56 = 0;
                v60 -= v59[v55] * (*v58 - 1);
                v69 = v60;
                --v62;
                v56 = &v54[v64 - 8];
                v57 = *v56;
                v54 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v58 = &v65[v64];
                v67 = *&v65[4 * v63] - 1;
                v65 -= 4;
                v55 = v62;
              }

              while (v57 == v67);
              v56 = &v54[4 * v63 - 4];
            }

            else
            {
              v62 = ((v52 << 30) - 0x100000000) >> 32;
            }

            *v56 = v57 + 1;
            v69 = v59[v62] + v60;
          }

          ++v31;
          ++v32;
        }

        while (v31 != v29);
      }

      v19 += v29 * v23;
    }
  }

  if (__p)
  {
    v75 = __p;
    operator delete(__p);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }
}

void sub_25A4417E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v14 = *(v12 - 136);
  if (v14)
  {
    *(v12 - 128) = v14;
    operator delete(v14);
  }

  v15 = *(v12 - 112);
  if (v15)
  {
    *(v12 - 104) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<BOOL,unsigned long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v93, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v93[8 * a4];
  v10 = v94 - (v9 + 8);
  if (v94 != v9 + 8)
  {
    memmove(&v93[8 * a4], v9 + 8, v94 - (v9 + 8));
  }

  v94 = &v9[v10];
  v11 = *a2;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v90, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v90[4 * a4];
  v13 = v91 - (v12 + 4);
  if (v91 != v12 + 4)
  {
    memmove(&v90[4 * a4], v12 + 4, v91 - (v12 + 4));
  }

  v91 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v83, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v93 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v93, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v93[v14];
  v16 = v94 - &v93[v14 + 8];
  if (v94 != &v93[v14 + 8])
  {
    memmove(&v93[v14], &v93[v14 + 8], v94 - (v15 + 8));
  }

  v94 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v76, &v90, &v93, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v73 = *(*a1 + 152);
  v74 = *(*a2 + 152);
  v68 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v83;
    v28 = (v85 - v84) >> 2;
    v75 = (((v85 - v84) << 30) - 0x100000000) >> 32;
    v29 = v84 + 4 * v75;
    v30 = v76;
    v31 = (v78 - v77) >> 2;
    v32 = (((v78 - v77) << 30) - 0x100000000) >> 32;
    v33 = v77 + 4 * v32;
    v34 = 8 * v17;
    v35 = 4 * (v28 & 0x7FFFFFFF);
    v70 = v84 - 8;
    v36 = 4 * (v31 & 0x7FFFFFFF);
    v69 = v77 - 8;
    v66 = v22;
    do
    {
      v67 = v26;
      if (v25)
      {
        v37 = 0;
        v38 = v86;
        v39 = v88 + 4 * v75;
        v40 = v79;
        v71 = __p;
        v72 = v88;
        v41 = __p + 4 * v32;
        v42 = v68;
        do
        {
          if (v20 >= 1)
          {
            v43 = v20;
            v44 = v42;
            v45 = (v74 + 8 * v27);
            do
            {
              *v44 = *(v73 + v30 + *v45 * v18);
              v44 += v19;
              v45 = (v45 + v34);
              --v43;
            }

            while (v43);
          }

          if (v28)
          {
            v46 = *v39;
            if (v28 >= 2 && v46 == *v29 - 1)
            {
              v47 = v72;
              v48 = v70;
              v49 = (v28 & 0x7FFFFFFF) - 1;
              v50 = v29;
              v51 = v39;
              v52 = v75;
              do
              {
                v53 = v49;
                *v51 = 0;
                v27 -= v38[v52] * (*v50 - 1);
                v83 = v27;
                --v49;
                v51 = &v47[v35 - 8];
                v46 = *v51;
                v47 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v50 = &v48[v35];
                v54 = *&v48[4 * (v28 & 0x7FFFFFFF)] - 1;
                v48 -= 4;
                v52 = v49;
              }

              while (v46 == v54);
              v55 = &v47[v35 - 4];
            }

            else
            {
              v49 = v75;
              v55 = v39;
            }

            *v55 = v46 + 1;
            v27 += v38[v49];
            v83 = v27;
          }

          if (v31)
          {
            v56 = *v41;
            if (v31 >= 2 && v56 == *v33 - 1)
            {
              v57 = v71;
              v58 = v69;
              v59 = (v31 & 0x7FFFFFFF) - 1;
              v60 = v33;
              v61 = v41;
              v62 = v32;
              do
              {
                v63 = v59;
                *v61 = 0;
                v30 -= v40[v62] * (*v60 - 1);
                v76 = v30;
                --v59;
                v61 = &v57[v36 - 8];
                v56 = *v61;
                v57 -= 4;
                if (v63 < 2)
                {
                  break;
                }

                v60 = &v58[v36];
                v64 = *&v58[4 * (v31 & 0x7FFFFFFF)] - 1;
                v58 -= 4;
                v62 = v59;
              }

              while (v56 == v64);
              v65 = &v57[v36 - 4];
            }

            else
            {
              v59 = v32;
              v65 = v41;
            }

            *v65 = v56 + 1;
            v30 += v40[v59];
            v76 = v30;
          }

          ++v37;
          ++v42;
        }

        while (v37 != v25);
      }

      v68 += v25 * v20;
      v26 = v67 + 1;
    }

    while (v67 + 1 != v66);
  }

  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }
}

void sub_25A441DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned char,unsigned long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v85, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v85[8 * a4];
  v10 = v86 - (v9 + 8);
  if (v86 != v9 + 8)
  {
    memmove(&v85[8 * a4], v9 + 8, v86 - (v9 + 8));
  }

  v86 = &v9[v10];
  v11 = *a2;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v82, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v82[4 * a4];
  v13 = v83 - (v12 + 4);
  if (v83 != v12 + 4)
  {
    memmove(&v82[4 * a4], v12 + 4, v83 - (v12 + 4));
  }

  v83 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v75, &v82, &v85, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v85 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v85, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v85[v14];
  v16 = v86 - &v85[v14 + 8];
  if (v86 != &v85[v14 + 8])
  {
    memmove(&v85[v14], &v85[v14 + 8], v86 - (v15 + 8));
  }

  v86 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v68, &v82, &v85, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a1 + 152);
  v19 = *(*a3 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a1, a4);
  v22 = mlx::core::array::strides(a3, a4);
  v23 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  v67 = v20;
  if (a4 < 1)
  {
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v25 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v26 = a4 + 1;
  v27 = *(*a2 + 8) - **a2;
  v28 = 1;
  while (v26 < v27 >> 2)
  {
    v28 *= mlx::core::array::shape(a2, v26++);
    v27 = *(*a2 + 8) - **a2;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (v28)
      {
        v30 = 0;
        v31 = v19;
        do
        {
          v32 = v23;
          v33 = v17;
          v34 = v31;
          if (v23 >= 1)
          {
            do
            {
              *v34 = *(v18 + v68 + *(v33 + 8 * v75) * v21);
              v34 += v22;
              v33 += 8 * v67;
              --v32;
            }

            while (v32);
          }

          v35 = v77 - v76;
          v36 = (v77 - v76) >> 2;
          if (v36)
          {
            v37 = v80;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = v80 + 4 * v38;
            v40 = *v39;
            v41 = v76 + 4 * v38;
            v42 = v78;
            v43 = v75;
            if (v36 >= 2 && v40 == *v41 - 1)
            {
              v46 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v46 - 1;
              v47 = 4 * v46;
              v48 = v76 - 8;
              do
              {
                v49 = v45;
                *v39 = 0;
                v43 -= v42[v38] * (*v41 - 1);
                v75 = v43;
                --v45;
                v39 = &v37[v47 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v49 < 2)
                {
                  break;
                }

                v41 = &v48[v47];
                v50 = *&v48[4 * v46] - 1;
                v48 -= 4;
                v38 = v45;
              }

              while (v40 == v50);
              v39 = &v37[4 * v46 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v75 = v42[v45] + v43;
          }

          v51 = v70 - v69;
          v52 = (v70 - v69) >> 2;
          if (v52)
          {
            v53 = __p;
            v54 = ((v51 << 30) - 0x100000000) >> 32;
            v55 = __p + 4 * v54;
            v56 = *v55;
            v57 = v69 + 4 * v54;
            v58 = v71;
            v59 = v68;
            if (v52 >= 2 && v56 == *v57 - 1)
            {
              v62 = (v51 >> 2) & 0x7FFFFFFF;
              v61 = v62 - 1;
              v63 = 4 * v62;
              v64 = v69 - 8;
              do
              {
                v65 = v61;
                *v55 = 0;
                v59 -= v58[v54] * (*v57 - 1);
                v68 = v59;
                --v61;
                v55 = &v53[v63 - 8];
                v56 = *v55;
                v53 -= 4;
                if (v65 < 2)
                {
                  break;
                }

                v57 = &v64[v63];
                v66 = *&v64[4 * v62] - 1;
                v64 -= 4;
                v54 = v61;
              }

              while (v56 == v66);
              v55 = &v53[4 * v62 - 4];
            }

            else
            {
              v61 = ((v51 << 30) - 0x100000000) >> 32;
            }

            *v55 = v56 + 1;
            v68 = v58[v61] + v59;
          }

          ++v30;
          ++v31;
        }

        while (v30 != v28);
      }

      v19 += v28 * v23;
    }
  }

  if (__p)
  {
    v74 = __p;
    operator delete(__p);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }
}

void sub_25A442348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v14 = *(v12 - 136);
  if (v14)
  {
    *(v12 - 128) = v14;
    operator delete(v14);
  }

  v15 = *(v12 - 112);
  if (v15)
  {
    *(v12 - 104) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned short,unsigned long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v74 = *(*a1 + 152);
  v75 = *(*a2 + 152);
  v69 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v84;
    v28 = (v86 - v85) >> 2;
    v76 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v76;
    v30 = v77;
    v31 = (v79 - v78) >> 2;
    v32 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v33 = v78 + 4 * v32;
    v67 = v22;
    v34 = 2 * v19;
    v35 = 8 * v17;
    v36 = 4 * (v28 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v37 = 4 * (v31 & 0x7FFFFFFF);
    v70 = v78 - 8;
    do
    {
      v68 = v26;
      if (v25)
      {
        v38 = 0;
        v39 = v87;
        v40 = v89 + 4 * v76;
        v41 = v80;
        v72 = __p;
        v73 = v89;
        v42 = __p + 4 * v32;
        v43 = v69;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + 8 * v27);
            v45 = v20;
            v46 = v43;
            do
            {
              *v46 = *(v74 + 2 * v30 + 2 * *v44 * v18);
              v46 = (v46 + v34);
              v44 = (v44 + v35);
              --v45;
            }

            while (v45);
          }

          if (v28)
          {
            v47 = *v40;
            if (v28 >= 2 && v47 == *v29 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v28 & 0x7FFFFFFF) - 1;
              v51 = v29;
              v52 = v40;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v27 -= v39[v53] * (*v51 - 1);
                v84 = v27;
                --v50;
                v52 = &v48[v36 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v36];
                v55 = *&v49[4 * (v28 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v36 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v40;
            }

            *v56 = v47 + 1;
            v27 += v39[v50];
            v84 = v27;
          }

          if (v31)
          {
            v57 = *v42;
            if (v31 >= 2 && v57 == *v33 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v31 & 0x7FFFFFFF) - 1;
              v61 = v33;
              v62 = v42;
              v63 = v32;
              do
              {
                v64 = v60;
                *v62 = 0;
                v30 -= v41[v63] * (*v61 - 1);
                v77 = v30;
                --v60;
                v62 = &v58[v37 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v37];
                v65 = *&v59[4 * (v31 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v37 - 4];
            }

            else
            {
              v60 = v32;
              v66 = v42;
            }

            *v66 = v57 + 1;
            v30 += v41[v60];
            v77 = v30;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v25);
      }

      v26 = v68 + 1;
      v69 += v25 * v20;
    }

    while (v68 + 1 != v67);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A442934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned int,unsigned long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v74 = *(*a1 + 152);
  v75 = *(*a2 + 152);
  v69 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v84;
    v28 = (v86 - v85) >> 2;
    v76 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v76;
    v30 = v77;
    v31 = (v79 - v78) >> 2;
    v32 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v33 = v78 + 4 * v32;
    v67 = v22;
    v34 = 4 * v19;
    v35 = 8 * v17;
    v36 = 4 * (v28 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v37 = 4 * (v31 & 0x7FFFFFFF);
    v70 = v78 - 8;
    do
    {
      v68 = v26;
      if (v25)
      {
        v38 = 0;
        v39 = v87;
        v40 = v89 + 4 * v76;
        v41 = v80;
        v72 = __p;
        v73 = v89;
        v42 = __p + 4 * v32;
        v43 = v69;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + 8 * v27);
            v45 = v20;
            v46 = v43;
            do
            {
              *v46 = *(v74 + 4 * v30 + 4 * *v44 * v18);
              v46 = (v46 + v34);
              v44 = (v44 + v35);
              --v45;
            }

            while (v45);
          }

          if (v28)
          {
            v47 = *v40;
            if (v28 >= 2 && v47 == *v29 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v28 & 0x7FFFFFFF) - 1;
              v51 = v29;
              v52 = v40;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v27 -= v39[v53] * (*v51 - 1);
                v84 = v27;
                --v50;
                v52 = &v48[v36 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v36];
                v55 = *&v49[4 * (v28 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v36 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v40;
            }

            *v56 = v47 + 1;
            v27 += v39[v50];
            v84 = v27;
          }

          if (v31)
          {
            v57 = *v42;
            if (v31 >= 2 && v57 == *v33 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v31 & 0x7FFFFFFF) - 1;
              v61 = v33;
              v62 = v42;
              v63 = v32;
              do
              {
                v64 = v60;
                *v62 = 0;
                v30 -= v41[v63] * (*v61 - 1);
                v77 = v30;
                --v60;
                v62 = &v58[v37 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v37];
                v65 = *&v59[4 * (v31 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v37 - 4];
            }

            else
            {
              v60 = v32;
              v66 = v42;
            }

            *v66 = v57 + 1;
            v30 += v41[v60];
            v77 = v30;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v25);
      }

      v26 = v68 + 1;
      v69 += v25 * v20;
    }

    while (v68 + 1 != v67);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A442F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}