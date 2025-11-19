void sub_25A2D4B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned long long *,unsigned long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>),mlx::core::distributed::ring::RingGroup*,unsigned long long *,unsigned long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned long long *,unsigned long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>),mlx::core::distributed::ring::RingGroup*,unsigned long long *,unsigned long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEC0E8;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned long long *,unsigned long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>),mlx::core::distributed::ring::RingGroup*,unsigned long long *,unsigned long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned long long *,unsigned long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>),mlx::core::distributed::ring::RingGroup*,unsigned long long *,unsigned long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15SumOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEC140;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15SumOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEC140;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15SumOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEC140;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15SumOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15SumOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15SumOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPyS8_miiiNS6_12_GLOBAL__N_15SumOpIyEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEC1D0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_13_MLX_BFloat16ENS8_12_GLOBAL__N_15SumOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEC2C8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_13_MLX_BFloat16ENS8_12_GLOBAL__N_15SumOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_13_MLX_BFloat16ENS8_12_GLOBAL__N_15SumOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 2 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*a1 != v7)
    {
      memcpy(v7, v8, 2 * v2);
      v5 = *(v3 + 12);
      v2 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v4 / (v5 << 18) < v9)
    {
      v9 = v4 / (v5 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v2 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (2 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 2 * v5);
  memcpy(__dst, *a1, v4);
  result = memcpy(*(a1 + 8), __dst, v4);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2D55FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v119[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v94 = v8;
  v95 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x800000)
  {
    v13 = 0x400000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v114 = 0;
  v115 = 0;
  __p = 0;
  v111 = 0;
  v112 = 0;
  v16 = 1;
  v108 = v13;
  v106 = v14 / v13;
  v101 = a7;
  v99 = (a4 + v10 - 1) / v10;
  v100 = a4;
  v98 = v14;
  do
  {
    v97 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v108 <= v14)
        {
          v103 = v17;
          v20 = 0;
          v104 = v15;
          v105 = v9;
          v107 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v108;
            v23 = v20 * v108 + v107;
            v24 = ++v20 * v108;
            v25 = v20 * v108 + v107;
            v26 = v114;
            if (v114 >= v115)
            {
              v30 = __src;
              v31 = v114 - __src;
              v32 = (v114 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v115 - __src;
              if ((v115 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v114 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v108 + v107;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v114 = v29;
              v115 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v108 + v107;
              }

              else
              {
                v28 = v18;
              }

              *v114 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v114 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v111;
            if (v111 >= v112)
            {
              v47 = __p;
              v48 = v111 - __p;
              v49 = (v111 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v112 - __p;
              if ((v112 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v111 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v111 = v46;
              v112 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v111 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v111 = v46;
          }

          while (v20 < v106);
          LODWORD(v10) = *(a1 + 12);
          a7 = v101;
          v11 = v99;
          a4 = v100;
          v15 = v104;
          v9 = v105;
          v14 = v98;
          v17 = v103;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v97 & 1) != 0);
  v119[0] = a2;
  v119[1] = a2 + 2 * v108;
  v118[0] = 0;
  v118[1] = 0;
  v117[0] = 0;
  v117[1] = 0;
  v58 = __src;
  if (v114 != __src)
  {
    v59 = 0;
    v60 = 0;
    v61 = v106 > 1;
    if (v106 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    while (1)
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v116.__state_) = v95;
      state = v109.__state_;
      v109.__state_ = 0;
      v69 = v63;
      v116.__state_ = v118[v63];
      v118[v63] = state;
      std::future<void>::~future(&v116);
      std::future<void>::~future(&v109);
      if ((v114 - __src) >> 4 <= 2 * v59)
      {
        v77 = (__p + 16 * v59);
        v78 = *v77;
        v79 = v77[1];
        LODWORD(v116.__state_) = v94;
        v81 = v109.__state_;
        v109.__state_ = 0;
        v116.__state_ = v117[v63];
        v117[v63] = v81;
        std::future<void>::~future(&v116);
        std::future<void>::~future(&v109);
        if ((v62 & 0x80000000) == 0)
        {
LABEL_81:
          std::__assoc_sub_state::wait(v118[v60]);
          std::__assoc_sub_state::wait(v117[v60]);
          v58 = __src;
          v76 = (v114 - __src) >> 4;
          if (v76 > 2 * v62)
          {
            v82 = (__p + 16 * v62);
            v83 = *v82;
            v84 = v82[1];
            if (v84 != *v82)
            {
              v85 = (a3 + 2 * v83);
              v86 = v119[v62 & 1];
              v87 = v83 - v84;
              do
              {
                v88 = COERCE_FLOAT(*v86 << 16) + COERCE_FLOAT(*v85 << 16);
                *v85++ = (LODWORD(v88) + (HIWORD(LODWORD(v88)) & 1u) + 0x7FFF) >> 16;
                ++v86;
              }

              while (!__CFADD__(v87++, 1));
            }
          }

          goto LABEL_86;
        }
      }

      else
      {
        v70 = v119[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v116.__state_) = v94;
        v75 = v109.__state_;
        v109.__state_ = 0;
        v116.__state_ = v117[v63];
        v117[v63] = v75;
        std::future<void>::~future(&v116);
        std::future<void>::~future(&v109);
        if ((v62 & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      v58 = __src;
      v76 = (v114 - __src) >> 4;
LABEL_86:
      ++v62;
      ++v59;
      v61 = v63;
      if (v76 <= v59)
      {
        goto LABEL_89;
      }
    }
  }

  v69 = v106 > 1;
LABEL_89:
  std::__assoc_sub_state::wait(v118[v69]);
  std::__assoc_sub_state::wait(v117[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v117[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v118[j]);
  }

  if (__p)
  {
    v111 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v114 = __src;
    operator delete(__src);
  }

  v92 = *MEMORY[0x277D85DE8];
}

void sub_25A2D5D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16>),mlx::core::distributed::ring::RingGroup*,mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16>),mlx::core::distributed::ring::RingGroup*,mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEC338;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16>),mlx::core::distributed::ring::RingGroup*,mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16>),mlx::core::distributed::ring::RingGroup*,mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15SumOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEC390;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15SumOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEC390;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15SumOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE7__cloneEPNS0_6__baseIS10_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEC390;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15SumOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15SumOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15SumOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS4_13_MLX_BFloat16ES9_miiiNS6_12_GLOBAL__N_15SumOpIS8_EEEJPS7_S9_S9_mRiSG_iRKSC_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSM_DpOSN_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEC420;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::_MLX_BFloat16>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIDhNS8_12_GLOBAL__N_15SumOpIDhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEC518;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIDhNS8_12_GLOBAL__N_15SumOpIDhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIDhNS8_12_GLOBAL__N_15SumOpIDhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<half,mlx::core::distributed::ring::anonymous namespace::SumOp<half>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<half>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 2 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*a1 != v7)
    {
      memcpy(v7, v8, 2 * v2);
      v5 = *(v3 + 12);
      v2 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v4 / (v5 << 18) < v9)
    {
      v9 = v4 / (v5 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v2 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (2 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 2 * v5);
  memcpy(__dst, *a1, v4);
  result = memcpy(*(a1 + 8), __dst, v4);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2D6868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<half,mlx::core::distributed::ring::anonymous namespace::SumOp<half>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x800000)
  {
    v13 = 0x400000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + 2 * v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 2 * v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84 = v87 + *v84;
              ++v84;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }

  v91 = *MEMORY[0x277D85DE8];
}

void sub_25A2D6F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(half *,half *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<half>),mlx::core::distributed::ring::RingGroup*,half *,half *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<half> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(half *,half *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<half>),mlx::core::distributed::ring::RingGroup*,half *,half *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<half> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEC588;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(half *,half *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<half>),mlx::core::distributed::ring::RingGroup*,half *,half *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<half> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(half *,half *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<half>),mlx::core::distributed::ring::RingGroup*,half *,half *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<half> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15SumOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEC5E0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15SumOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEC5E0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15SumOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEC5E0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15SumOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15SumOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15SumOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhS8_miiiNS6_12_GLOBAL__N_15SumOpIDhEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<half,mlx::core::distributed::ring::anonymous namespace::SumOp<half>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<half>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<half,mlx::core::distributed::ring::anonymous namespace::SumOp<half>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<half>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEC670;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<half,mlx::core::distributed::ring::anonymous namespace::SumOp<half>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<half>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<half,mlx::core::distributed::ring::anonymous namespace::SumOp<half>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<half>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIfNS8_12_GLOBAL__N_15SumOpIfEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEC768;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIfNS8_12_GLOBAL__N_15SumOpIfEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIfNS8_12_GLOBAL__N_15SumOpIfEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<float,mlx::core::distributed::ring::anonymous namespace::SumOp<float>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<float>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 4 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*a1 != v7)
    {
      memcpy(v7, v8, 4 * v2);
      v5 = *(v3 + 12);
      v2 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v4 / (v5 << 18) < v9)
    {
      v9 = v4 / (v5 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v2 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (4 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 4 * v5);
  memcpy(__dst, *a1, v4);
  result = memcpy(*(a1 + 8), __dst, v4);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2D7A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<float,mlx::core::distributed::ring::anonymous namespace::SumOp<float>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x400000)
  {
    v13 = 0x200000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + 4 * v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 4 * v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84 = v87 + *v84;
              ++v84;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }

  v91 = *MEMORY[0x277D85DE8];
}

void sub_25A2D8188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(float *,float *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<float>),mlx::core::distributed::ring::RingGroup*,float *,float *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<float> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(float *,float *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<float>),mlx::core::distributed::ring::RingGroup*,float *,float *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<float> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEC7D8;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(float *,float *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<float>),mlx::core::distributed::ring::RingGroup*,float *,float *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<float> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(float *,float *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<float>),mlx::core::distributed::ring::RingGroup*,float *,float *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<float> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15SumOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEC830;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15SumOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEC830;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15SumOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEC830;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15SumOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15SumOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15SumOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfS8_miiiNS6_12_GLOBAL__N_15SumOpIfEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<float,mlx::core::distributed::ring::anonymous namespace::SumOp<float>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<float>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<float,mlx::core::distributed::ring::anonymous namespace::SumOp<float>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<float>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEC8C0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<float,mlx::core::distributed::ring::anonymous namespace::SumOp<float>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<float>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<float,mlx::core::distributed::ring::anonymous namespace::SumOp<float>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<float>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIdNS8_12_GLOBAL__N_15SumOpIdEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEC9B8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIdNS8_12_GLOBAL__N_15SumOpIdEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIdNS8_12_GLOBAL__N_15SumOpIdEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<double,mlx::core::distributed::ring::anonymous namespace::SumOp<double>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<double>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 8 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*a1 != v7)
    {
      memcpy(v7, v8, 8 * v2);
      v5 = *(v3 + 12);
      v2 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v4 / (v5 << 18) < v9)
    {
      v9 = v4 / (v5 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v2 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (8 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 8 * v5);
  memcpy(__dst, *a1, v4);
  result = memcpy(*(a1 + 8), __dst, v4);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2D8C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<double,mlx::core::distributed::ring::anonymous namespace::SumOp<double>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x200000)
  {
    v13 = 0x100000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + 8 * v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 8 * v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84 = v87 + *v84;
              ++v84;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }

  v91 = *MEMORY[0x277D85DE8];
}

void sub_25A2D938C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(double *,double *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<double>),mlx::core::distributed::ring::RingGroup*,double *,double *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<double> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(double *,double *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<double>),mlx::core::distributed::ring::RingGroup*,double *,double *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<double> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BECA28;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(double *,double *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<double>),mlx::core::distributed::ring::RingGroup*,double *,double *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<double> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(double *,double *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<double>),mlx::core::distributed::ring::RingGroup*,double *,double *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<double> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15SumOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BECA80;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15SumOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BECA80;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15SumOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BECA80;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15SumOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15SumOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15SumOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdS8_miiiNS6_12_GLOBAL__N_15SumOpIdEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<double,mlx::core::distributed::ring::anonymous namespace::SumOp<double>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<double>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<double,mlx::core::distributed::ring::anonymous namespace::SumOp<double>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<double>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BECB10;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<double,mlx::core::distributed::ring::anonymous namespace::SumOp<double>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<double>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<double,mlx::core::distributed::ring::anonymous namespace::SumOp<double>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<double>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_11complex64_tENS8_12_GLOBAL__N_15SumOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BECC08;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_11complex64_tENS8_12_GLOBAL__N_15SumOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_11complex64_tENS8_12_GLOBAL__N_15SumOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 8 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*a1 != v7)
    {
      memcpy(v7, v8, 8 * v2);
      v5 = *(v3 + 12);
      v2 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v4 / (v5 << 18) < v9)
    {
      v9 = v4 / (v5 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v2 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (8 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 8 * v5);
  memcpy(__dst, *a1, v4);
  result = memcpy(*(a1 + 8), __dst, v4);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2D9E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x200000)
  {
    v13 = 0x100000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + 8 * v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 8 * v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84 = vadd_f32(v87, *v84);
              ++v84;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }

  v91 = *MEMORY[0x277D85DE8];
}

void sub_25A2DA590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t>),mlx::core::distributed::ring::RingGroup*,mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t>),mlx::core::distributed::ring::RingGroup*,mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BECC78;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t>),mlx::core::distributed::ring::RingGroup*,mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t>),mlx::core::distributed::ring::RingGroup*,mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15SumOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BECCD0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15SumOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BECCD0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15SumOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE7__cloneEPNS0_6__baseIS10_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BECCD0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15SumOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15SumOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15SumOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS4_11complex64_tES9_miiiNS6_12_GLOBAL__N_15SumOpIS8_EEEJPS7_S9_S9_mRiSG_iRKSC_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSM_DpOSN_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BECD60;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<mlx::core::complex64_t>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v10);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v5);
  *&v8[0] = *a1;
  DWORD2(v8[0]) = *(a1 + 2);
  v8[1] = v10;
  v8[2] = v11;
  v9 = v12;
  v7 = mlx::core::scheduler::scheduler(v6);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v7[1] + 8 * *a1), v8);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A2DAB98(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(void *a1, __int128 *a2)
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

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_gatherERKNS3_5arrayERSA_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BECE58;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_gatherERKNS3_5arrayERSA_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v1 = a1[3];
  v2 = ((v1[36] - v1[35]) >> 2) + ((v1[33] - v1[32]) >> 2);
  v3 = a1[1];
  if (v3 >> 18 < v2)
  {
    v2 = v3 >> 18;
  }

  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v5 = (v3 + v4 - 1) / v4;
  v6 = a1[1];
  v7 = *a1;
  v8 = a1[2];
  if (v6 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = a1[1];
  }

  v10 = v1[32];
  v11 = v1[35];
  *&v12 = mlx::core::distributed::ring::RingGroup::all_gather_impl;
  *(&v12 + 1) = 0;
  v13 = v1;
  v14 = v7;
  v15 = v8;
  v16 = v6;
  v17 = v9;
  v18 = *v10;
  v19 = *v11;
  v20 = 1;
  ThreadPool::enqueue<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(char const*,char *,unsigned long,unsigned long,int,int,int),mlx::core::distributed::ring::RingGroup*,char const*,char *,unsigned long const&,unsigned long,int &,int &,int>>((v1 + 3), &v12);
}

void sub_25A2DB0A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::future<void> a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  std::future<void>::~future(&a18);
  a9 = &a19;
  std::vector<std::future<void>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ThreadPool::enqueue<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(char const*,char *,unsigned long,unsigned long,int,int,int),mlx::core::distributed::ring::RingGroup*,char const*,char *,unsigned long const&,unsigned long,int &,int &,int>>(uint64_t a1, __int128 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2[3];
  v6 = a2[2];
  v7 = v2;
  v8 = *(a2 + 8);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  std::allocate_shared[abi:ne200100]<std::packaged_task<void ()(void)>,std::allocator<std::packaged_task<void ()(void)>>,std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(char const*,char *,unsigned long,unsigned long,int,int,int),mlx::core::distributed::ring::RingGroup*,char const*,char *,unsigned long const&,unsigned long,int &,int &,int>>,0>();
}

void sub_25A2DB21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  std::mutex::unlock((v11 + 72));
  std::future<void>::~future(v12);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

void mlx::core::distributed::ring::RingGroup::all_gather_impl(mlx::core::distributed::ring::RingGroup *this, const char *a2, char *a3, uint64_t a4, size_t __n, int a6, int a7, int a8)
{
  if (a8 >= 0)
  {
    v13 = a7;
  }

  else
  {
    v13 = a6;
  }

  v22 = v13;
  if (a8 >= 0)
  {
    v14 = a6;
  }

  else
  {
    v14 = a7;
  }

  v15 = *(this + 3);
  v16 = *(this + 2);
  memcpy(&a3[v16 * a4], a2, __n);
  if (*(this + 3) >= 2)
  {
    v17 = 0;
    v18 = (v16 + a8 + v15) % v15;
    do
    {
      LODWORD(v23.__state_) = v22;
      v25 = v14;
      v21 = *(this + 3);
      std::__assoc_sub_state::wait(v24.__state_);
      std::__assoc_sub_state::wait(v23.__state_);
      LODWORD(v16) = (v16 + a8 + v21) % v21;
      v18 = (v18 + a8 + v21) % v21;
      std::future<void>::~future(&v23);
      std::future<void>::~future(&v24);
      ++v17;
    }

    while (v17 < *(this + 3) - 1);
  }
}

void std::__shared_ptr_emplace<std::packaged_task<void ()(void)>>::__shared_ptr_emplace[abi:ne200100]<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(char const*,char *,unsigned long,unsigned long,int,int,int),mlx::core::distributed::ring::RingGroup*,char const*,char *,unsigned long const&,unsigned long,int &,int &,int>>,std::allocator<std::packaged_task<void ()(void)>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BEAE08;
  std::packaged_task<void ()(void)>::packaged_task[abi:ne200100]<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(char const*,char *,unsigned long,unsigned long,int,int,int),mlx::core::distributed::ring::RingGroup*,char const*,char *,unsigned long const&,unsigned long,int &,int &,int>>,0>((a1 + 3));
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(char const*,char *,unsigned long,unsigned long,int,int,int),mlx::core::distributed::ring::RingGroup*,char const*,char *,unsigned long const&,unsigned long,int &,int &,int>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(char const*,char *,unsigned long,unsigned long,int,int,int),mlx::core::distributed::ring::RingGroup*,char const*,char *,unsigned long const&,unsigned long,int &,int &,int>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BECEC8;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 81) = 0;
  *(a2 + 84) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(char const*,char *,unsigned long,unsigned long,int,int,int),mlx::core::distributed::ring::RingGroup*,char const*,char *,unsigned long const&,unsigned long,int &,int &,int>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(char const*,char *,unsigned long,unsigned long,int,int,int),mlx::core::distributed::ring::RingGroup*,char const*,char *,unsigned long const&,unsigned long,int &,int &,int>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 68), *(a1 + 72));
}

uint64_t _ZNSt3__15dequeINS_8functionIFvvEEENS_9allocatorIS3_EEE12emplace_backIJZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPKcPcmmiiiEJPSF_SH_SI_RKmmRiSO_iEEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSS_DpOST_EUlvE_EEERS3_DpOT_(void *a1, __int128 *a2)
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

  v9 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *v8 = &unk_286BECF20;
  *(v8 + 8) = v9;
  *(v8 + 24) = v8;
  v10 = a1[4];
  v11 = a1[5] + 1;
  a1[5] = v11;
  v12 = v10 + v11;
  v13 = a1[1];
  v14 = (v13 + 8 * (v12 >> 7));
  v15 = *v14 + 32 * (v12 & 0x7F);
  if (a1[2] == v13)
  {
    v15 = 0;
  }

  if (v15 == *v14)
  {
    v15 = *(v14 - 1) + 4096;
  }

  return v15 - 32;
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPKcPcmmiiiEJPS9_SB_SC_RKmmRiSI_iEEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSM_DpOSN_EUlvE_NS_9allocatorISV_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BECF20;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPKcPcmmiiiEJPS9_SB_SC_RKmmRiSI_iEEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSM_DpOSN_EUlvE_NS_9allocatorISV_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BECF20;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPKcPcmmiiiEJPS9_SB_SC_RKmmRiSI_iEEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSM_DpOSN_EUlvE_NS_9allocatorISV_EEFvvEE7__cloneEPNS0_6__baseISY_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BECF20;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPKcPcmmiiiEJPS9_SB_SC_RKmmRiSI_iEEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSM_DpOSN_EUlvE_NS_9allocatorISV_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPKcPcmmiiiEJPS9_SB_SC_RKmmRiSI_iEEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSM_DpOSN_EUlvE_NS_9allocatorISV_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPKcPcmmiiiEJPS9_SB_SC_RKmmRiSI_iEEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSM_DpOSN_EUlvE_NS_9allocatorISV_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPKcPcmmiiiEJPS7_S9_SA_RKmmRiSG_iEEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSK_DpOSL_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A2DB9B8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

__n128 std::__function::__func<std::__bind<mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BECFB0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v10);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v5);
  *&v8[0] = *a1;
  DWORD2(v8[0]) = *(a1 + 2);
  v8[1] = v10;
  v8[2] = v11;
  v9 = v12;
  v7 = mlx::core::scheduler::scheduler(v6);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v7[1] + 8 * *a1), v8);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A2DBDFC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(void *a1, __int128 *a2)
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

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup4sendERKNS3_5arrayEiNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BED0A8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup4sendERKNS3_5arrayEiNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup4sendERKNS3_5arrayEiNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  v4 = *(v2 + 8);
  v3 = *(v2 + 12);
  v5 = *(a1 + 16);
  if (v5 == (v4 + 1) % v3)
  {
    v6 = 256;
  }

  else
  {
    if (v5 != (v4 + v3 - 1) % v3)
    {
      v9 = v2;
      std::ostringstream::basic_ostringstream[abi:ne200100](v17);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "[ring] Send only supported to direct neighbors ", 47);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "but tried to send to ", 21);
      v12 = MEMORY[0x25F851360](v11, *(a1 + 16));
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
      v14 = MEMORY[0x25F851360](v13, *(v9 + 8));
      std::endl[abi:ne200100]<char,std::char_traits<char>>(v14);
      exception = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v17, v16);
      MEMORY[0x25F851100](exception, v16);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v6 = 280;
  }

  v7 = *a1;
  v8 = *(a1 + 8);

  mlx::core::distributed::ring::RingGroup::send(v2, (v2 + v6), v7, v8);
}

void sub_25A2DC224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::distributed::ring::RingGroup::send(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  if ((a4 + ((v5 - *a2) >> 2) - 1) / ((v5 - *a2) >> 2) <= 0x400)
  {
    v6 = 1024;
  }

  else
  {
    v6 = (a4 + ((v5 - *a2) >> 2) - 1) / ((v5 - *a2) >> 2);
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (v5 != v4)
  {
    v11 = 0;
    do
    {
      v12 = v11 * v6;
      if (v11 * v6 >= a4)
      {
        break;
      }

      LODWORD(v25) = *(v4 + 4 * v11);
      ++v11;
      v14 = v6 * v11;
      if (v6 * v11 >= a4)
      {
        v14 = a4;
      }

      v15 = v23;
      if (v23 >= v24)
      {
        v17 = (v23 - v22) >> 3;
        if ((v17 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v18 = (v24 - v22) >> 2;
        if (v18 <= v17 + 1)
        {
          v18 = v17 + 1;
        }

        v19 = v24 - v22 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v18;
        v29 = &v22;
        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(&v22, v19);
        }

        v25 = 0;
        v26 = (8 * v17);
        v28 = 0;
        v26->__state_ = v30.__state_;
        v30.__state_ = 0;
        v27 = 8 * v17 + 8;
        std::vector<std::future<void>>::__swap_out_circular_buffer(&v22, &v25);
        v16 = v23;
        std::__split_buffer<std::future<void>>::~__split_buffer(&v25);
      }

      else
      {
        v23->__state_ = v30.__state_;
        v16 = v15 + 1;
        v30.__state_ = 0;
      }

      v23 = v16;
      std::future<void>::~future(&v30);
      v4 = *a2;
    }

    while (v11 < (a2[1] - *a2) >> 2);
    v20 = v22;
    v21 = v23;
    while (v20 != v21)
    {
      std::__assoc_sub_state::wait(*v20++);
    }
  }

  v25 = &v22;
  std::vector<std::future<void>>::__destroy_vector::operator()[abi:ne200100](&v25);
}

void sub_25A2DC430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::future<void> a18)
{
  std::future<void>::~future(&a18);
  a18.__state_ = &a10;
  std::vector<std::future<void>>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A2DC514(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

__n128 std::__function::__func<std::__bind<mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BED128;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v10);
  }

  mlx::core::scheduler::Scheduler::notify_new_task(v5);
  *&v8[0] = *a1;
  DWORD2(v8[0]) = *(a1 + 2);
  v8[1] = v10;
  v8[2] = v11;
  v9 = v12;
  v7 = mlx::core::scheduler::scheduler(v6);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(*(v7[1] + 8 * *a1), v8);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A2DC958(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}>(void *a1, __int128 *a2)
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

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup4recvERNS3_5arrayEiNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BED220;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup4recvERNS3_5arrayEiNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup4recvERNS3_5arrayEiNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISJ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  v4 = *(v2 + 8);
  v3 = *(v2 + 12);
  v5 = *(a1 + 16);
  if (v5 == (v4 + v3 - 1) % v3)
  {
    v6 = 280;
  }

  else
  {
    if (v5 != (v4 + 1) % v3)
    {
      v9 = v2;
      std::ostringstream::basic_ostringstream[abi:ne200100](v17);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "[ring] Recv only supported from direct neighbors ", 49);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "but tried to recv from ", 23);
      v12 = MEMORY[0x25F851360](v11, *(a1 + 16));
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " to ", 4);
      v14 = MEMORY[0x25F851360](v13, *(v9 + 8));
      std::endl[abi:ne200100]<char,std::char_traits<char>>(v14);
      exception = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v17, v16);
      MEMORY[0x25F851100](exception, v16);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v6 = 256;
  }

  v7 = *a1;
  v8 = *(a1 + 8);

  mlx::core::distributed::ring::RingGroup::recv(v2, (v2 + v6), v7, v8);
}

void sub_25A2DCD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::distributed::ring::RingGroup::recv(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  if ((a4 + ((v5 - *a2) >> 2) - 1) / ((v5 - *a2) >> 2) <= 0x400)
  {
    v6 = 1024;
  }

  else
  {
    v6 = (a4 + ((v5 - *a2) >> 2) - 1) / ((v5 - *a2) >> 2);
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (v5 != v4)
  {
    v11 = 0;
    do
    {
      v12 = v11 * v6;
      if (v11 * v6 >= a4)
      {
        break;
      }

      LODWORD(v25) = *(v4 + 4 * v11);
      ++v11;
      v14 = v6 * v11;
      if (v6 * v11 >= a4)
      {
        v14 = a4;
      }

      v15 = v23;
      if (v23 >= v24)
      {
        v17 = (v23 - v22) >> 3;
        if ((v17 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v18 = (v24 - v22) >> 2;
        if (v18 <= v17 + 1)
        {
          v18 = v17 + 1;
        }

        v19 = v24 - v22 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v18;
        v29 = &v22;
        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(&v22, v19);
        }

        v25 = 0;
        v26 = (8 * v17);
        v28 = 0;
        v26->__state_ = v30.__state_;
        v30.__state_ = 0;
        v27 = 8 * v17 + 8;
        std::vector<std::future<void>>::__swap_out_circular_buffer(&v22, &v25);
        v16 = v23;
        std::__split_buffer<std::future<void>>::~__split_buffer(&v25);
      }

      else
      {
        v23->__state_ = v30.__state_;
        v16 = v15 + 1;
        v30.__state_ = 0;
      }

      v23 = v16;
      std::future<void>::~future(&v30);
      v4 = *a2;
    }

    while (v11 < (a2[1] - *a2) >> 2);
    v20 = v22;
    v21 = v23;
    while (v20 != v21)
    {
      std::__assoc_sub_state::wait(*v20++);
    }
  }

  v25 = &v22;
  std::vector<std::future<void>>::__destroy_vector::operator()[abi:ne200100](&v25);
}

void sub_25A2DCF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::future<void> a18)
{
  std::future<void>::~future(&a18);
  a18.__state_ = &a10;
  std::vector<std::future<void>>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A2DD070(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

__n128 std::__function::__func<std::__bind<mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BED2A0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIbNS8_12_GLOBAL__N_15MaxOpIbEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BED398;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIbNS8_12_GLOBAL__N_15MaxOpIbEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIbNS8_12_GLOBAL__N_15MaxOpIbEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(v3 + 12);
  if (v2 >= v4)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 == v6)
    {
      v8 = v2;
    }

    else
    {
      memcpy(v6, v7, v2);
      v4 = *(v3 + 12);
      v8 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v2 / (v4 << 18) < v9)
    {
      v9 = v2 / (v4 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v8 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (v4 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, *(v3 + 12));
  memcpy(__dst, *a1, v2);
  result = memcpy(*(a1 + 8), __dst, v2);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2DD998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<BOOL,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v119[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v94 = v8;
  v95 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >> 24)
  {
    v13 = 0x800000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v114 = 0;
  v115 = 0;
  __p = 0;
  v111 = 0;
  v112 = 0;
  v16 = 1;
  v108 = v13;
  v106 = v14 / v13;
  v101 = a7;
  v99 = (a4 + v10 - 1) / v10;
  v100 = a4;
  v98 = v14;
  do
  {
    v97 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v108 <= v14)
        {
          v103 = v17;
          v20 = 0;
          v104 = v15;
          v105 = v9;
          v107 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v108;
            v23 = v20 * v108 + v107;
            v24 = ++v20 * v108;
            v25 = v20 * v108 + v107;
            v26 = v114;
            if (v114 >= v115)
            {
              v30 = __src;
              v31 = v114 - __src;
              v32 = (v114 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v115 - __src;
              if ((v115 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v114 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v108 + v107;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v114 = v29;
              v115 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v108 + v107;
              }

              else
              {
                v28 = v18;
              }

              *v114 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v114 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v111;
            if (v111 >= v112)
            {
              v47 = __p;
              v48 = v111 - __p;
              v49 = (v111 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v112 - __p;
              if ((v112 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v111 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v111 = v46;
              v112 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v111 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v111 = v46;
          }

          while (v20 < v106);
          LODWORD(v10) = *(a1 + 12);
          a7 = v101;
          v11 = v99;
          a4 = v100;
          v15 = v104;
          v9 = v105;
          v14 = v98;
          v17 = v103;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v97 & 1) != 0);
  v119[0] = a2;
  v119[1] = a2 + v108;
  v118[0] = 0;
  v118[1] = 0;
  v117[0] = 0;
  v117[1] = 0;
  v58 = __src;
  if (v114 == __src)
  {
    v69 = v106 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v106 > 1;
    if (v106 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v116.__state_) = v95;
      state = v109.__state_;
      v109.__state_ = 0;
      v69 = v63;
      v116.__state_ = v118[v63];
      v118[v63] = state;
      std::future<void>::~future(&v116);
      std::future<void>::~future(&v109);
      if ((v114 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v116.__state_) = v94;
      }

      else
      {
        v70 = v119[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v116.__state_) = v94;
      }

      v79 = v109.__state_;
      v109.__state_ = 0;
      v116.__state_ = v117[v63];
      v117[v63] = v79;
      std::future<void>::~future(&v116);
      std::future<void>::~future(&v109);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v114 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v118[v60]);
        std::__assoc_sub_state::wait(v117[v60]);
        v58 = __src;
        v80 = (v114 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + v82);
            v85 = v119[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v88 = *v85++;
              v87 = v88;
              if (*v84 > v88)
              {
                v87 = *v84;
              }

              *v84++ = v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v118[v69]);
  std::__assoc_sub_state::wait(v117[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v117[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v118[j]);
  }

  if (__p)
  {
    v111 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v114 = __src;
    operator delete(__src);
  }

  v92 = *MEMORY[0x277D85DE8];
}

void sub_25A2DE0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(BOOL *,BOOL *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL>),mlx::core::distributed::ring::RingGroup*,BOOL *,BOOL *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(BOOL *,BOOL *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL>),mlx::core::distributed::ring::RingGroup*,BOOL *,BOOL *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BED408;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(BOOL *,BOOL *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL>),mlx::core::distributed::ring::RingGroup*,BOOL *,BOOL *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(BOOL *,BOOL *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL>),mlx::core::distributed::ring::RingGroup*,BOOL *,BOOL *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15MaxOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BED460;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15MaxOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BED460;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15MaxOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BED460;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15MaxOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15MaxOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15MaxOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbS8_miiiNS6_12_GLOBAL__N_15MaxOpIbEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BED4F0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<BOOL>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIaNS8_12_GLOBAL__N_15MaxOpIaEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BED5E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIaNS8_12_GLOBAL__N_15MaxOpIaEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIaNS8_12_GLOBAL__N_15MaxOpIaEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(v3 + 12);
  if (v2 >= v4)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 == v6)
    {
      v8 = v2;
    }

    else
    {
      memcpy(v6, v7, v2);
      v4 = *(v3 + 12);
      v8 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v2 / (v4 << 18) < v9)
    {
      v9 = v2 / (v4 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v8 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (v4 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, *(v3 + 12));
  memcpy(__dst, *a1, v2);
  result = memcpy(*(a1 + 8), __dst, v2);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2DEB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<signed char,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v119[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v94 = v8;
  v95 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >> 24)
  {
    v13 = 0x800000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v114 = 0;
  v115 = 0;
  __p = 0;
  v111 = 0;
  v112 = 0;
  v16 = 1;
  v108 = v13;
  v106 = v14 / v13;
  v101 = a7;
  v99 = (a4 + v10 - 1) / v10;
  v100 = a4;
  v98 = v14;
  do
  {
    v97 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v108 <= v14)
        {
          v103 = v17;
          v20 = 0;
          v104 = v15;
          v105 = v9;
          v107 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v108;
            v23 = v20 * v108 + v107;
            v24 = ++v20 * v108;
            v25 = v20 * v108 + v107;
            v26 = v114;
            if (v114 >= v115)
            {
              v30 = __src;
              v31 = v114 - __src;
              v32 = (v114 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v115 - __src;
              if ((v115 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v114 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v108 + v107;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v114 = v29;
              v115 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v108 + v107;
              }

              else
              {
                v28 = v18;
              }

              *v114 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v114 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v111;
            if (v111 >= v112)
            {
              v47 = __p;
              v48 = v111 - __p;
              v49 = (v111 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v112 - __p;
              if ((v112 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v111 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v111 = v46;
              v112 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v111 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v111 = v46;
          }

          while (v20 < v106);
          LODWORD(v10) = *(a1 + 12);
          a7 = v101;
          v11 = v99;
          a4 = v100;
          v15 = v104;
          v9 = v105;
          v14 = v98;
          v17 = v103;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v97 & 1) != 0);
  v119[0] = a2;
  v119[1] = a2 + v108;
  v118[0] = 0;
  v118[1] = 0;
  v117[0] = 0;
  v117[1] = 0;
  v58 = __src;
  if (v114 == __src)
  {
    v69 = v106 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v106 > 1;
    if (v106 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v116.__state_) = v95;
      state = v109.__state_;
      v109.__state_ = 0;
      v69 = v63;
      v116.__state_ = v118[v63];
      v118[v63] = state;
      std::future<void>::~future(&v116);
      std::future<void>::~future(&v109);
      if ((v114 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v116.__state_) = v94;
      }

      else
      {
        v70 = v119[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v116.__state_) = v94;
      }

      v79 = v109.__state_;
      v109.__state_ = 0;
      v116.__state_ = v117[v63];
      v117[v63] = v79;
      std::future<void>::~future(&v116);
      std::future<void>::~future(&v109);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v114 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v118[v60]);
        std::__assoc_sub_state::wait(v117[v60]);
        v58 = __src;
        v80 = (v114 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + v82);
            v85 = v119[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v88 = *v85++;
              v87 = v88;
              if (*v84 > v88)
              {
                v87 = *v84;
              }

              *v84++ = v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v118[v69]);
  std::__assoc_sub_state::wait(v117[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v117[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v118[j]);
  }

  if (__p)
  {
    v111 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v114 = __src;
    operator delete(__src);
  }

  v92 = *MEMORY[0x277D85DE8];
}

void sub_25A2DF2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(signed char *,signed char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char>),mlx::core::distributed::ring::RingGroup*,signed char *,signed char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(signed char *,signed char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char>),mlx::core::distributed::ring::RingGroup*,signed char *,signed char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BED658;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(signed char *,signed char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char>),mlx::core::distributed::ring::RingGroup*,signed char *,signed char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(signed char *,signed char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char>),mlx::core::distributed::ring::RingGroup*,signed char *,signed char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15MaxOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BED6B0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15MaxOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BED6B0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15MaxOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BED6B0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15MaxOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15MaxOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15MaxOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaS8_miiiNS6_12_GLOBAL__N_15MaxOpIaEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BED740;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<signed char>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIsNS8_12_GLOBAL__N_15MaxOpIsEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BED838;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIsNS8_12_GLOBAL__N_15MaxOpIsEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIsNS8_12_GLOBAL__N_15MaxOpIsEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::MaxOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<short>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 2 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*a1 != v7)
    {
      memcpy(v7, v8, 2 * v2);
      v5 = *(v3 + 12);
      v2 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v4 / (v5 << 18) < v9)
    {
      v9 = v4 / (v5 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v2 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (2 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 2 * v5);
  memcpy(__dst, *a1, v4);
  result = memcpy(*(a1 + 8), __dst, v4);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2DFD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<short,mlx::core::distributed::ring::anonymous namespace::MaxOp<short>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v119[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v94 = v8;
  v95 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x800000)
  {
    v13 = 0x400000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v114 = 0;
  v115 = 0;
  __p = 0;
  v111 = 0;
  v112 = 0;
  v16 = 1;
  v108 = v13;
  v106 = v14 / v13;
  v101 = a7;
  v99 = (a4 + v10 - 1) / v10;
  v100 = a4;
  v98 = v14;
  do
  {
    v97 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v108 <= v14)
        {
          v103 = v17;
          v20 = 0;
          v104 = v15;
          v105 = v9;
          v107 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v108;
            v23 = v20 * v108 + v107;
            v24 = ++v20 * v108;
            v25 = v20 * v108 + v107;
            v26 = v114;
            if (v114 >= v115)
            {
              v30 = __src;
              v31 = v114 - __src;
              v32 = (v114 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v115 - __src;
              if ((v115 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v114 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v108 + v107;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v114 = v29;
              v115 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v108 + v107;
              }

              else
              {
                v28 = v18;
              }

              *v114 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v114 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v111;
            if (v111 >= v112)
            {
              v47 = __p;
              v48 = v111 - __p;
              v49 = (v111 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v112 - __p;
              if ((v112 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v111 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v111 = v46;
              v112 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v111 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v111 = v46;
          }

          while (v20 < v106);
          LODWORD(v10) = *(a1 + 12);
          a7 = v101;
          v11 = v99;
          a4 = v100;
          v15 = v104;
          v9 = v105;
          v14 = v98;
          v17 = v103;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v97 & 1) != 0);
  v119[0] = a2;
  v119[1] = a2 + 2 * v108;
  v118[0] = 0;
  v118[1] = 0;
  v117[0] = 0;
  v117[1] = 0;
  v58 = __src;
  if (v114 == __src)
  {
    v69 = v106 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v106 > 1;
    if (v106 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v116.__state_) = v95;
      state = v109.__state_;
      v109.__state_ = 0;
      v69 = v63;
      v116.__state_ = v118[v63];
      v118[v63] = state;
      std::future<void>::~future(&v116);
      std::future<void>::~future(&v109);
      if ((v114 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v116.__state_) = v94;
      }

      else
      {
        v70 = v119[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v116.__state_) = v94;
      }

      v79 = v109.__state_;
      v109.__state_ = 0;
      v116.__state_ = v117[v63];
      v117[v63] = v79;
      std::future<void>::~future(&v116);
      std::future<void>::~future(&v109);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v114 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v118[v60]);
        std::__assoc_sub_state::wait(v117[v60]);
        v58 = __src;
        v80 = (v114 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 2 * v82);
            v85 = v119[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v88 = *v85++;
              v87 = v88;
              if (*v84 > v88)
              {
                v87 = *v84;
              }

              *v84++ = v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v118[v69]);
  std::__assoc_sub_state::wait(v117[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v117[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v118[j]);
  }

  if (__p)
  {
    v111 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v114 = __src;
    operator delete(__src);
  }

  v92 = *MEMORY[0x277D85DE8];
}

void sub_25A2E04BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(short *,short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<short>),mlx::core::distributed::ring::RingGroup*,short *,short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<short> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(short *,short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<short>),mlx::core::distributed::ring::RingGroup*,short *,short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<short> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BED8A8;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(short *,short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<short>),mlx::core::distributed::ring::RingGroup*,short *,short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<short> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(short *,short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<short>),mlx::core::distributed::ring::RingGroup*,short *,short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<short> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15MaxOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BED900;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15MaxOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BED900;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15MaxOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BED900;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15MaxOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15MaxOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15MaxOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsS8_miiiNS6_12_GLOBAL__N_15MaxOpIsEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::MaxOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<short>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::MaxOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<short>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BED990;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::MaxOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<short>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::MaxOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<short>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIiNS8_12_GLOBAL__N_15MaxOpIiEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEDA88;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIiNS8_12_GLOBAL__N_15MaxOpIiEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIiNS8_12_GLOBAL__N_15MaxOpIiEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::MaxOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<int>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 4 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*a1 != v7)
    {
      memcpy(v7, v8, 4 * v2);
      v5 = *(v3 + 12);
      v2 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v4 / (v5 << 18) < v9)
    {
      v9 = v4 / (v5 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v2 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (4 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 4 * v5);
  memcpy(__dst, *a1, v4);
  result = memcpy(*(a1 + 8), __dst, v4);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2E0FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<int,mlx::core::distributed::ring::anonymous namespace::MaxOp<int>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v119[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v94 = v8;
  v95 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x400000)
  {
    v13 = 0x200000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v114 = 0;
  v115 = 0;
  __p = 0;
  v111 = 0;
  v112 = 0;
  v16 = 1;
  v108 = v13;
  v106 = v14 / v13;
  v101 = a7;
  v99 = (a4 + v10 - 1) / v10;
  v100 = a4;
  v98 = v14;
  do
  {
    v97 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v108 <= v14)
        {
          v103 = v17;
          v20 = 0;
          v104 = v15;
          v105 = v9;
          v107 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v108;
            v23 = v20 * v108 + v107;
            v24 = ++v20 * v108;
            v25 = v20 * v108 + v107;
            v26 = v114;
            if (v114 >= v115)
            {
              v30 = __src;
              v31 = v114 - __src;
              v32 = (v114 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v115 - __src;
              if ((v115 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v114 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v108 + v107;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v114 = v29;
              v115 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v108 + v107;
              }

              else
              {
                v28 = v18;
              }

              *v114 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v114 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v111;
            if (v111 >= v112)
            {
              v47 = __p;
              v48 = v111 - __p;
              v49 = (v111 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v112 - __p;
              if ((v112 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v111 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v111 = v46;
              v112 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v111 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v111 = v46;
          }

          while (v20 < v106);
          LODWORD(v10) = *(a1 + 12);
          a7 = v101;
          v11 = v99;
          a4 = v100;
          v15 = v104;
          v9 = v105;
          v14 = v98;
          v17 = v103;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v97 & 1) != 0);
  v119[0] = a2;
  v119[1] = a2 + 4 * v108;
  v118[0] = 0;
  v118[1] = 0;
  v117[0] = 0;
  v117[1] = 0;
  v58 = __src;
  if (v114 == __src)
  {
    v69 = v106 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v106 > 1;
    if (v106 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v116.__state_) = v95;
      state = v109.__state_;
      v109.__state_ = 0;
      v69 = v63;
      v116.__state_ = v118[v63];
      v118[v63] = state;
      std::future<void>::~future(&v116);
      std::future<void>::~future(&v109);
      if ((v114 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v116.__state_) = v94;
      }

      else
      {
        v70 = v119[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v116.__state_) = v94;
      }

      v79 = v109.__state_;
      v109.__state_ = 0;
      v116.__state_ = v117[v63];
      v117[v63] = v79;
      std::future<void>::~future(&v116);
      std::future<void>::~future(&v109);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v114 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v118[v60]);
        std::__assoc_sub_state::wait(v117[v60]);
        v58 = __src;
        v80 = (v114 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 4 * v82);
            v85 = v119[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v88 = *v85++;
              v87 = v88;
              if (*v84 > v88)
              {
                v87 = *v84;
              }

              *v84++ = v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v118[v69]);
  std::__assoc_sub_state::wait(v117[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v117[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v118[j]);
  }

  if (__p)
  {
    v111 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v114 = __src;
    operator delete(__src);
  }

  v92 = *MEMORY[0x277D85DE8];
}

void sub_25A2E16C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(int *,int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<int>),mlx::core::distributed::ring::RingGroup*,int *,int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<int> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(int *,int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<int>),mlx::core::distributed::ring::RingGroup*,int *,int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<int> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEDAF8;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(int *,int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<int>),mlx::core::distributed::ring::RingGroup*,int *,int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<int> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(int *,int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<int>),mlx::core::distributed::ring::RingGroup*,int *,int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<int> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15MaxOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEDB50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15MaxOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEDB50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15MaxOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEDB50;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15MaxOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15MaxOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15MaxOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiS8_miiiNS6_12_GLOBAL__N_15MaxOpIiEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::MaxOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<int>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::MaxOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<int>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEDBE0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::MaxOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<int>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::MaxOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<int>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIxNS8_12_GLOBAL__N_15MaxOpIxEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEDCD8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIxNS8_12_GLOBAL__N_15MaxOpIxEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIxNS8_12_GLOBAL__N_15MaxOpIxEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 8 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*a1 != v7)
    {
      memcpy(v7, v8, 8 * v2);
      v5 = *(v3 + 12);
      v2 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v4 / (v5 << 18) < v9)
    {
      v9 = v4 / (v5 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v2 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (8 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 8 * v5);
  memcpy(__dst, *a1, v4);
  result = memcpy(*(a1 + 8), __dst, v4);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2E21AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<long long,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v119[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v94 = v8;
  v95 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x200000)
  {
    v13 = 0x100000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v114 = 0;
  v115 = 0;
  __p = 0;
  v111 = 0;
  v112 = 0;
  v16 = 1;
  v108 = v13;
  v106 = v14 / v13;
  v101 = a7;
  v99 = (a4 + v10 - 1) / v10;
  v100 = a4;
  v98 = v14;
  do
  {
    v97 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v108 <= v14)
        {
          v103 = v17;
          v20 = 0;
          v104 = v15;
          v105 = v9;
          v107 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v108;
            v23 = v20 * v108 + v107;
            v24 = ++v20 * v108;
            v25 = v20 * v108 + v107;
            v26 = v114;
            if (v114 >= v115)
            {
              v30 = __src;
              v31 = v114 - __src;
              v32 = (v114 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v115 - __src;
              if ((v115 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v114 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v108 + v107;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v114 = v29;
              v115 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v108 + v107;
              }

              else
              {
                v28 = v18;
              }

              *v114 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v114 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v111;
            if (v111 >= v112)
            {
              v47 = __p;
              v48 = v111 - __p;
              v49 = (v111 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v112 - __p;
              if ((v112 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v111 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v111 = v46;
              v112 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v111 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v111 = v46;
          }

          while (v20 < v106);
          LODWORD(v10) = *(a1 + 12);
          a7 = v101;
          v11 = v99;
          a4 = v100;
          v15 = v104;
          v9 = v105;
          v14 = v98;
          v17 = v103;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v97 & 1) != 0);
  v119[0] = a2;
  v119[1] = a2 + 8 * v108;
  v118[0] = 0;
  v118[1] = 0;
  v117[0] = 0;
  v117[1] = 0;
  v58 = __src;
  if (v114 == __src)
  {
    v69 = v106 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v106 > 1;
    if (v106 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v116.__state_) = v95;
      state = v109.__state_;
      v109.__state_ = 0;
      v69 = v63;
      v116.__state_ = v118[v63];
      v118[v63] = state;
      std::future<void>::~future(&v116);
      std::future<void>::~future(&v109);
      if ((v114 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v116.__state_) = v94;
      }

      else
      {
        v70 = v119[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v116.__state_) = v94;
      }

      v79 = v109.__state_;
      v109.__state_ = 0;
      v116.__state_ = v117[v63];
      v117[v63] = v79;
      std::future<void>::~future(&v116);
      std::future<void>::~future(&v109);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v114 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v118[v60]);
        std::__assoc_sub_state::wait(v117[v60]);
        v58 = __src;
        v80 = (v114 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 8 * v82);
            v85 = v119[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v88 = *v85++;
              v87 = v88;
              if (*v84 > v88)
              {
                v87 = *v84;
              }

              *v84++ = v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v118[v69]);
  std::__assoc_sub_state::wait(v117[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v117[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v118[j]);
  }

  if (__p)
  {
    v111 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v114 = __src;
    operator delete(__src);
  }

  v92 = *MEMORY[0x277D85DE8];
}

void sub_25A2E28CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(long long *,long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long>),mlx::core::distributed::ring::RingGroup*,long long *,long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(long long *,long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long>),mlx::core::distributed::ring::RingGroup*,long long *,long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEDD48;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(long long *,long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long>),mlx::core::distributed::ring::RingGroup*,long long *,long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(long long *,long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long>),mlx::core::distributed::ring::RingGroup*,long long *,long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15MaxOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEDDA0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15MaxOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEDDA0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15MaxOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEDDA0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15MaxOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15MaxOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15MaxOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxS8_miiiNS6_12_GLOBAL__N_15MaxOpIxEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEDE30;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<long long>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIhNS8_12_GLOBAL__N_15MaxOpIhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEDF28;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIhNS8_12_GLOBAL__N_15MaxOpIhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIhNS8_12_GLOBAL__N_15MaxOpIhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(v3 + 12);
  if (v2 >= v4)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 == v6)
    {
      v8 = v2;
    }

    else
    {
      memcpy(v6, v7, v2);
      v4 = *(v3 + 12);
      v8 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v2 / (v4 << 18) < v9)
    {
      v9 = v2 / (v4 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v8 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (v4 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, *(v3 + 12));
  memcpy(__dst, *a1, v2);
  result = memcpy(*(a1 + 8), __dst, v2);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2E33B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<unsigned char,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v119[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v94 = v8;
  v95 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >> 24)
  {
    v13 = 0x800000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v114 = 0;
  v115 = 0;
  __p = 0;
  v111 = 0;
  v112 = 0;
  v16 = 1;
  v108 = v13;
  v106 = v14 / v13;
  v101 = a7;
  v99 = (a4 + v10 - 1) / v10;
  v100 = a4;
  v98 = v14;
  do
  {
    v97 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v108 <= v14)
        {
          v103 = v17;
          v20 = 0;
          v104 = v15;
          v105 = v9;
          v107 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v108;
            v23 = v20 * v108 + v107;
            v24 = ++v20 * v108;
            v25 = v20 * v108 + v107;
            v26 = v114;
            if (v114 >= v115)
            {
              v30 = __src;
              v31 = v114 - __src;
              v32 = (v114 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v115 - __src;
              if ((v115 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v114 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v108 + v107;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v114 = v29;
              v115 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v108 + v107;
              }

              else
              {
                v28 = v18;
              }

              *v114 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v114 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v111;
            if (v111 >= v112)
            {
              v47 = __p;
              v48 = v111 - __p;
              v49 = (v111 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v112 - __p;
              if ((v112 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v111 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v111 = v46;
              v112 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v111 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v111 = v46;
          }

          while (v20 < v106);
          LODWORD(v10) = *(a1 + 12);
          a7 = v101;
          v11 = v99;
          a4 = v100;
          v15 = v104;
          v9 = v105;
          v14 = v98;
          v17 = v103;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v97 & 1) != 0);
  v119[0] = a2;
  v119[1] = a2 + v108;
  v118[0] = 0;
  v118[1] = 0;
  v117[0] = 0;
  v117[1] = 0;
  v58 = __src;
  if (v114 == __src)
  {
    v69 = v106 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v106 > 1;
    if (v106 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v116.__state_) = v95;
      state = v109.__state_;
      v109.__state_ = 0;
      v69 = v63;
      v116.__state_ = v118[v63];
      v118[v63] = state;
      std::future<void>::~future(&v116);
      std::future<void>::~future(&v109);
      if ((v114 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v116.__state_) = v94;
      }

      else
      {
        v70 = v119[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v116.__state_) = v94;
      }

      v79 = v109.__state_;
      v109.__state_ = 0;
      v116.__state_ = v117[v63];
      v117[v63] = v79;
      std::future<void>::~future(&v116);
      std::future<void>::~future(&v109);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v114 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v118[v60]);
        std::__assoc_sub_state::wait(v117[v60]);
        v58 = __src;
        v80 = (v114 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + v82);
            v85 = v119[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v88 = *v85++;
              v87 = v88;
              if (*v84 > v88)
              {
                v87 = *v84;
              }

              *v84++ = v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v118[v69]);
  std::__assoc_sub_state::wait(v117[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v117[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v118[j]);
  }

  if (__p)
  {
    v111 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v114 = __src;
    operator delete(__src);
  }

  v92 = *MEMORY[0x277D85DE8];
}

void sub_25A2E3AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned char *,unsigned char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char>),mlx::core::distributed::ring::RingGroup*,unsigned char *,unsigned char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned char *,unsigned char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char>),mlx::core::distributed::ring::RingGroup*,unsigned char *,unsigned char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEDF98;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned char *,unsigned char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char>),mlx::core::distributed::ring::RingGroup*,unsigned char *,unsigned char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned char *,unsigned char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char>),mlx::core::distributed::ring::RingGroup*,unsigned char *,unsigned char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15MaxOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEDFF0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15MaxOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEDFF0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15MaxOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEDFF0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15MaxOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15MaxOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15MaxOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhS8_miiiNS6_12_GLOBAL__N_15MaxOpIhEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEE080;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned char>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceItNS8_12_GLOBAL__N_15MaxOpItEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEE178;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceItNS8_12_GLOBAL__N_15MaxOpItEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceItNS8_12_GLOBAL__N_15MaxOpItEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned short,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 2 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*a1 != v7)
    {
      memcpy(v7, v8, 2 * v2);
      v5 = *(v3 + 12);
      v2 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v4 / (v5 << 18) < v9)
    {
      v9 = v4 / (v5 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v2 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (2 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 2 * v5);
  memcpy(__dst, *a1, v4);
  result = memcpy(*(a1 + 8), __dst, v4);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2E45B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<unsigned short,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v119[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v94 = v8;
  v95 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x800000)
  {
    v13 = 0x400000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v114 = 0;
  v115 = 0;
  __p = 0;
  v111 = 0;
  v112 = 0;
  v16 = 1;
  v108 = v13;
  v106 = v14 / v13;
  v101 = a7;
  v99 = (a4 + v10 - 1) / v10;
  v100 = a4;
  v98 = v14;
  do
  {
    v97 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v108 <= v14)
        {
          v103 = v17;
          v20 = 0;
          v104 = v15;
          v105 = v9;
          v107 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v108;
            v23 = v20 * v108 + v107;
            v24 = ++v20 * v108;
            v25 = v20 * v108 + v107;
            v26 = v114;
            if (v114 >= v115)
            {
              v30 = __src;
              v31 = v114 - __src;
              v32 = (v114 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v115 - __src;
              if ((v115 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v114 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v108 + v107;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v114 = v29;
              v115 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v108 + v107;
              }

              else
              {
                v28 = v18;
              }

              *v114 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v114 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v111;
            if (v111 >= v112)
            {
              v47 = __p;
              v48 = v111 - __p;
              v49 = (v111 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v112 - __p;
              if ((v112 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v111 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v111 = v46;
              v112 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v111 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v111 = v46;
          }

          while (v20 < v106);
          LODWORD(v10) = *(a1 + 12);
          a7 = v101;
          v11 = v99;
          a4 = v100;
          v15 = v104;
          v9 = v105;
          v14 = v98;
          v17 = v103;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v97 & 1) != 0);
  v119[0] = a2;
  v119[1] = a2 + 2 * v108;
  v118[0] = 0;
  v118[1] = 0;
  v117[0] = 0;
  v117[1] = 0;
  v58 = __src;
  if (v114 == __src)
  {
    v69 = v106 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v106 > 1;
    if (v106 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v116.__state_) = v95;
      state = v109.__state_;
      v109.__state_ = 0;
      v69 = v63;
      v116.__state_ = v118[v63];
      v118[v63] = state;
      std::future<void>::~future(&v116);
      std::future<void>::~future(&v109);
      if ((v114 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v116.__state_) = v94;
      }

      else
      {
        v70 = v119[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v116.__state_) = v94;
      }

      v79 = v109.__state_;
      v109.__state_ = 0;
      v116.__state_ = v117[v63];
      v117[v63] = v79;
      std::future<void>::~future(&v116);
      std::future<void>::~future(&v109);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v114 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v118[v60]);
        std::__assoc_sub_state::wait(v117[v60]);
        v58 = __src;
        v80 = (v114 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 2 * v82);
            v85 = v119[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v88 = *v85++;
              v87 = v88;
              if (*v84 > v88)
              {
                v87 = *v84;
              }

              *v84++ = v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v118[v69]);
  std::__assoc_sub_state::wait(v117[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v117[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v118[j]);
  }

  if (__p)
  {
    v111 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v114 = __src;
    operator delete(__src);
  }

  v92 = *MEMORY[0x277D85DE8];
}

void sub_25A2E4CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned short *,unsigned short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short>),mlx::core::distributed::ring::RingGroup*,unsigned short *,unsigned short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned short *,unsigned short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short>),mlx::core::distributed::ring::RingGroup*,unsigned short *,unsigned short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEE1E8;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}