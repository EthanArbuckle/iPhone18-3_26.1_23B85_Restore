uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned short *,unsigned short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short>),mlx::core::distributed::ring::RingGroup*,unsigned short *,unsigned short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned short *,unsigned short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short>),mlx::core::distributed::ring::RingGroup*,unsigned short *,unsigned short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short> const&>>>,void ()(void)>::operator()(uint64_t a1)
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

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15MaxOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEE240;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15MaxOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEE240;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15MaxOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEE240;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15MaxOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15MaxOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15MaxOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtS8_miiiNS6_12_GLOBAL__N_15MaxOpItEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned short,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned short,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEE2D0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned short,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned short,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned short>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIjNS8_12_GLOBAL__N_15MaxOpIjEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEE3C8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIjNS8_12_GLOBAL__N_15MaxOpIjEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIjNS8_12_GLOBAL__N_15MaxOpIjEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
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

void sub_25A2E57C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
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

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<unsigned int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
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

void sub_25A2E5EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
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

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned int *,unsigned int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int>),mlx::core::distributed::ring::RingGroup*,unsigned int *,unsigned int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned int *,unsigned int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int>),mlx::core::distributed::ring::RingGroup*,unsigned int *,unsigned int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEE438;
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

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned int *,unsigned int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int>),mlx::core::distributed::ring::RingGroup*,unsigned int *,unsigned int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned int *,unsigned int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int>),mlx::core::distributed::ring::RingGroup*,unsigned int *,unsigned int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int> const&>>>,void ()(void)>::operator()(uint64_t a1)
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

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15MaxOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEE490;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15MaxOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEE490;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15MaxOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEE490;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15MaxOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15MaxOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15MaxOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjS8_miiiNS6_12_GLOBAL__N_15MaxOpIjEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEE520;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned int>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIyNS8_12_GLOBAL__N_15MaxOpIyEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEE618;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIyNS8_12_GLOBAL__N_15MaxOpIyEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIyNS8_12_GLOBAL__N_15MaxOpIyEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
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

void sub_25A2E69C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
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

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<unsigned long long,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
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

void sub_25A2E70E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
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

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned long long *,unsigned long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long>),mlx::core::distributed::ring::RingGroup*,unsigned long long *,unsigned long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned long long *,unsigned long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long>),mlx::core::distributed::ring::RingGroup*,unsigned long long *,unsigned long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEE688;
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

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned long long *,unsigned long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long>),mlx::core::distributed::ring::RingGroup*,unsigned long long *,unsigned long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned long long *,unsigned long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long>),mlx::core::distributed::ring::RingGroup*,unsigned long long *,unsigned long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long> const&>>>,void ()(void)>::operator()(uint64_t a1)
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

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15MaxOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEE6E0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15MaxOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEE6E0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15MaxOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEE6E0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15MaxOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15MaxOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15MaxOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPyS8_miiiNS6_12_GLOBAL__N_15MaxOpIyEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEE770;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<unsigned long long>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_13_MLX_BFloat16ENS8_12_GLOBAL__N_15MaxOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEE868;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_13_MLX_BFloat16ENS8_12_GLOBAL__N_15MaxOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_13_MLX_BFloat16ENS8_12_GLOBAL__N_15MaxOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
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

void sub_25A2E7BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
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

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v120[2] = *MEMORY[0x277D85DE8];
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

  v95 = v8;
  v96 = v7;
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
  v115 = 0;
  v116 = 0;
  __p = 0;
  v112 = 0;
  v113 = 0;
  v16 = 1;
  v109 = v13;
  v107 = v14 / v13;
  v102 = a7;
  v100 = (a4 + v10 - 1) / v10;
  v101 = a4;
  v99 = v14;
  do
  {
    v98 = v16;
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

        if (v109 <= v14)
        {
          v104 = v17;
          v20 = 0;
          v105 = v15;
          v106 = v9;
          v108 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v109;
            v23 = v20 * v109 + v108;
            v24 = ++v20 * v109;
            v25 = v20 * v109 + v108;
            v26 = v115;
            if (v115 >= v116)
            {
              v30 = __src;
              v31 = v115 - __src;
              v32 = (v115 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v116 - __src;
              if ((v116 - __src) >> 3 > v33)
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

              v35 = (v115 - __src) >> 4;
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
                v38 = v20 * v109 + v108;
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
              v115 = v29;
              v116 = 0;
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
                v28 = v20 * v109 + v108;
              }

              else
              {
                v28 = v18;
              }

              *v115 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v115 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v112;
            if (v112 >= v113)
            {
              v47 = __p;
              v48 = v112 - __p;
              v49 = (v112 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v113 - __p;
              if ((v113 - __p) >> 3 > v50)
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

              v52 = (v112 - __p) >> 4;
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
              v112 = v46;
              v113 = 0;
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

              *v112 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v112 = v46;
          }

          while (v20 < v107);
          LODWORD(v10) = *(a1 + 12);
          a7 = v102;
          v11 = v100;
          a4 = v101;
          v15 = v105;
          v9 = v106;
          v14 = v99;
          v17 = v104;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v98 & 1) != 0);
  v120[0] = a2;
  v120[1] = a2 + 2 * v109;
  v119[0] = 0;
  v119[1] = 0;
  v118[0] = 0;
  v118[1] = 0;
  v58 = __src;
  if (v115 == __src)
  {
    v69 = v107 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v107 > 1;
    if (v107 <= 1)
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
      LODWORD(v117.__state_) = v96;
      state = v110.__state_;
      v110.__state_ = 0;
      v69 = v63;
      v117.__state_ = v119[v63];
      v119[v63] = state;
      std::future<void>::~future(&v117);
      std::future<void>::~future(&v110);
      if ((v115 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v117.__state_) = v95;
      }

      else
      {
        v70 = v120[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v117.__state_) = v95;
      }

      v79 = v110.__state_;
      v110.__state_ = 0;
      v117.__state_ = v118[v63];
      v118[v63] = v79;
      std::future<void>::~future(&v117);
      std::future<void>::~future(&v110);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v115 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v119[v60]);
        std::__assoc_sub_state::wait(v118[v60]);
        v58 = __src;
        v80 = (v115 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 2 * v82);
            v85 = v120[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v84;
              v89 = *v85++;
              v88 = v89;
              if (COERCE_FLOAT(v87 << 16) < COERCE_FLOAT(v89 << 16))
              {
                LOWORD(v87) = v88;
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

  std::__assoc_sub_state::wait(v119[v69]);
  std::__assoc_sub_state::wait(v118[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v118[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v119[j]);
  }

  if (__p)
  {
    v112 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v115 = __src;
    operator delete(__src);
  }

  v93 = *MEMORY[0x277D85DE8];
}

void sub_25A2E8300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
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

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16>),mlx::core::distributed::ring::RingGroup*,mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16>),mlx::core::distributed::ring::RingGroup*,mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEE8D8;
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

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16>),mlx::core::distributed::ring::RingGroup*,mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16>),mlx::core::distributed::ring::RingGroup*,mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16> const&>>>,void ()(void)>::operator()(uint64_t a1)
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

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15MaxOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEE930;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15MaxOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEE930;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15MaxOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE7__cloneEPNS0_6__baseIS10_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEE930;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15MaxOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15MaxOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15MaxOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS4_13_MLX_BFloat16ES9_miiiNS6_12_GLOBAL__N_15MaxOpIS8_EEEJPS7_S9_S9_mRiSG_iRKSC_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSM_DpOSN_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEE9C0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::_MLX_BFloat16>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIDhNS8_12_GLOBAL__N_15MaxOpIDhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEEAB8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIDhNS8_12_GLOBAL__N_15MaxOpIDhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIDhNS8_12_GLOBAL__N_15MaxOpIDhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<half,mlx::core::distributed::ring::anonymous namespace::MaxOp<half>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<half>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
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

void sub_25A2E8DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
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

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<half,mlx::core::distributed::ring::anonymous namespace::MaxOp<half>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
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
              v87 = *v85++;
              v88 = v87;
              if (*v84 >= v87)
              {
                v88 = *v84;
              }

              *v84++ = v88;
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

void sub_25A2E9508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
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

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(half *,half *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<half>),mlx::core::distributed::ring::RingGroup*,half *,half *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<half> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(half *,half *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<half>),mlx::core::distributed::ring::RingGroup*,half *,half *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<half> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEEB28;
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

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(half *,half *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<half>),mlx::core::distributed::ring::RingGroup*,half *,half *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<half> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(half *,half *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<half>),mlx::core::distributed::ring::RingGroup*,half *,half *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<half> const&>>>,void ()(void)>::operator()(uint64_t a1)
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

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15MaxOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEEB80;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15MaxOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEEB80;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15MaxOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEEB80;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15MaxOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15MaxOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15MaxOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhS8_miiiNS6_12_GLOBAL__N_15MaxOpIDhEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<half,mlx::core::distributed::ring::anonymous namespace::MaxOp<half>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<half>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<half,mlx::core::distributed::ring::anonymous namespace::MaxOp<half>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<half>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEEC10;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<half,mlx::core::distributed::ring::anonymous namespace::MaxOp<half>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<half>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<half,mlx::core::distributed::ring::anonymous namespace::MaxOp<half>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<half>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIfNS8_12_GLOBAL__N_15MaxOpIfEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEED08;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIfNS8_12_GLOBAL__N_15MaxOpIfEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIfNS8_12_GLOBAL__N_15MaxOpIfEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<float,mlx::core::distributed::ring::anonymous namespace::MaxOp<float>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<float>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
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

void sub_25A2E9FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
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

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<float,mlx::core::distributed::ring::anonymous namespace::MaxOp<float>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
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
              v87 = *v85++;
              v88 = v87;
              if (*v84 >= v87)
              {
                v88 = *v84;
              }

              *v84++ = v88;
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

void sub_25A2EA710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
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

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(float *,float *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<float>),mlx::core::distributed::ring::RingGroup*,float *,float *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<float> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(float *,float *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<float>),mlx::core::distributed::ring::RingGroup*,float *,float *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<float> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEED78;
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

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(float *,float *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<float>),mlx::core::distributed::ring::RingGroup*,float *,float *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<float> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(float *,float *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<float>),mlx::core::distributed::ring::RingGroup*,float *,float *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<float> const&>>>,void ()(void)>::operator()(uint64_t a1)
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

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15MaxOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEEDD0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15MaxOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEEDD0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15MaxOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEEDD0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15MaxOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15MaxOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15MaxOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfS8_miiiNS6_12_GLOBAL__N_15MaxOpIfEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<float,mlx::core::distributed::ring::anonymous namespace::MaxOp<float>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<float>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<float,mlx::core::distributed::ring::anonymous namespace::MaxOp<float>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<float>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEEE60;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<float,mlx::core::distributed::ring::anonymous namespace::MaxOp<float>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<float>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<float,mlx::core::distributed::ring::anonymous namespace::MaxOp<float>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<float>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIdNS8_12_GLOBAL__N_15MaxOpIdEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEEF58;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIdNS8_12_GLOBAL__N_15MaxOpIdEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIdNS8_12_GLOBAL__N_15MaxOpIdEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<double,mlx::core::distributed::ring::anonymous namespace::MaxOp<double>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<double>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
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

void sub_25A2EB1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
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

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<double,mlx::core::distributed::ring::anonymous namespace::MaxOp<double>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
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
              v87 = *v85++;
              v88 = v87;
              if (*v84 >= v87)
              {
                v88 = *v84;
              }

              *v84++ = v88;
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

void sub_25A2EB918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
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

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(double *,double *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<double>),mlx::core::distributed::ring::RingGroup*,double *,double *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<double> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(double *,double *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<double>),mlx::core::distributed::ring::RingGroup*,double *,double *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<double> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEEFC8;
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

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(double *,double *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<double>),mlx::core::distributed::ring::RingGroup*,double *,double *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<double> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(double *,double *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<double>),mlx::core::distributed::ring::RingGroup*,double *,double *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<double> const&>>>,void ()(void)>::operator()(uint64_t a1)
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

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15MaxOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEF020;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15MaxOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEF020;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15MaxOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEF020;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15MaxOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15MaxOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15MaxOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdS8_miiiNS6_12_GLOBAL__N_15MaxOpIdEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<double,mlx::core::distributed::ring::anonymous namespace::MaxOp<double>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<double>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<double,mlx::core::distributed::ring::anonymous namespace::MaxOp<double>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<double>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEF0B0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<double,mlx::core::distributed::ring::anonymous namespace::MaxOp<double>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<double>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<double,mlx::core::distributed::ring::anonymous namespace::MaxOp<double>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<double>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_11complex64_tENS8_12_GLOBAL__N_15MaxOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEF1A8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_11complex64_tENS8_12_GLOBAL__N_15MaxOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_11complex64_tENS8_12_GLOBAL__N_15MaxOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
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

void sub_25A2EC400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
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

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v120[2] = *MEMORY[0x277D85DE8];
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

  v95 = v8;
  v96 = v7;
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
  v115 = 0;
  v116 = 0;
  __p = 0;
  v112 = 0;
  v113 = 0;
  v16 = 1;
  v109 = v13;
  v107 = v14 / v13;
  v102 = a7;
  v100 = (a4 + v10 - 1) / v10;
  v101 = a4;
  v99 = v14;
  do
  {
    v98 = v16;
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

        if (v109 <= v14)
        {
          v104 = v17;
          v20 = 0;
          v105 = v15;
          v106 = v9;
          v108 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v109;
            v23 = v20 * v109 + v108;
            v24 = ++v20 * v109;
            v25 = v20 * v109 + v108;
            v26 = v115;
            if (v115 >= v116)
            {
              v30 = __src;
              v31 = v115 - __src;
              v32 = (v115 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v116 - __src;
              if ((v116 - __src) >> 3 > v33)
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

              v35 = (v115 - __src) >> 4;
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
                v38 = v20 * v109 + v108;
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
              v115 = v29;
              v116 = 0;
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
                v28 = v20 * v109 + v108;
              }

              else
              {
                v28 = v18;
              }

              *v115 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v115 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v112;
            if (v112 >= v113)
            {
              v47 = __p;
              v48 = v112 - __p;
              v49 = (v112 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v113 - __p;
              if ((v113 - __p) >> 3 > v50)
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

              v52 = (v112 - __p) >> 4;
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
              v112 = v46;
              v113 = 0;
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

              *v112 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v112 = v46;
          }

          while (v20 < v107);
          LODWORD(v10) = *(a1 + 12);
          a7 = v102;
          v11 = v100;
          a4 = v101;
          v15 = v105;
          v9 = v106;
          v14 = v99;
          v17 = v104;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v98 & 1) != 0);
  v120[0] = a2;
  v120[1] = a2 + 8 * v109;
  v119[0] = 0;
  v119[1] = 0;
  v118[0] = 0;
  v118[1] = 0;
  v58 = __src;
  if (v115 == __src)
  {
    v69 = v107 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v107 > 1;
    if (v107 <= 1)
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
      LODWORD(v117.__state_) = v96;
      state = v110.__state_;
      v110.__state_ = 0;
      v69 = v63;
      v117.__state_ = v119[v63];
      v119[v63] = state;
      std::future<void>::~future(&v117);
      std::future<void>::~future(&v110);
      if ((v115 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v117.__state_) = v95;
      }

      else
      {
        v70 = v120[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v117.__state_) = v95;
      }

      v79 = v110.__state_;
      v110.__state_ = 0;
      v117.__state_ = v118[v63];
      v118[v63] = v79;
      std::future<void>::~future(&v117);
      std::future<void>::~future(&v110);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v115 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v119[v60]);
        std::__assoc_sub_state::wait(v118[v60]);
        v58 = __src;
        v80 = (v115 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 8 * v82);
            v85 = v120[v62 & 1];
            v86 = v82 - v83;
            v87 = v85 + 1;
            do
            {
              v88 = *(v87 - 1);
              if (v88 > *v84 || (v89 = v84, v88 == *v84) && (v89 = v84, *v87 > v84[1]))
              {
                v89 = v85;
              }

              *v84 = *v89;
              v84 += 2;
              v85 += 2;
              v87 += 2;
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

  std::__assoc_sub_state::wait(v119[v69]);
  std::__assoc_sub_state::wait(v118[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v118[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v119[j]);
  }

  if (__p)
  {
    v112 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v115 = __src;
    operator delete(__src);
  }

  v93 = *MEMORY[0x277D85DE8];
}

void sub_25A2ECB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
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

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t>),mlx::core::distributed::ring::RingGroup*,mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t>),mlx::core::distributed::ring::RingGroup*,mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEF218;
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

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t>),mlx::core::distributed::ring::RingGroup*,mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t>),mlx::core::distributed::ring::RingGroup*,mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t> const&>>>,void ()(void)>::operator()(uint64_t a1)
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

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15MaxOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEF270;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15MaxOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEF270;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15MaxOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE7__cloneEPNS0_6__baseIS10_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEF270;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15MaxOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15MaxOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15MaxOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS4_11complex64_tES9_miiiNS6_12_GLOBAL__N_15MaxOpIS8_EEEJPS7_S9_S9_mRiSG_iRKSC_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSM_DpOSN_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEF300;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MaxOp<mlx::core::complex64_t>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIbNS8_12_GLOBAL__N_15MinOpIbEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEF3F8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIbNS8_12_GLOBAL__N_15MinOpIbEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIbNS8_12_GLOBAL__N_15MinOpIbEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
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

void sub_25A2ED63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
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

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<BOOL,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
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
              if (v88 >= *v84)
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

void sub_25A2EDD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
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

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(BOOL *,BOOL *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL>),mlx::core::distributed::ring::RingGroup*,BOOL *,BOOL *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(BOOL *,BOOL *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL>),mlx::core::distributed::ring::RingGroup*,BOOL *,BOOL *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEF468;
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

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(BOOL *,BOOL *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL>),mlx::core::distributed::ring::RingGroup*,BOOL *,BOOL *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(BOOL *,BOOL *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL>),mlx::core::distributed::ring::RingGroup*,BOOL *,BOOL *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL> const&>>>,void ()(void)>::operator()(uint64_t a1)
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

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15MinOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEF4C0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15MinOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEF4C0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15MinOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEF4C0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15MinOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15MinOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15MinOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbS8_miiiNS6_12_GLOBAL__N_15MinOpIbEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEF550;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<BOOL>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIaNS8_12_GLOBAL__N_15MinOpIaEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEF648;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIaNS8_12_GLOBAL__N_15MinOpIaEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIaNS8_12_GLOBAL__N_15MinOpIaEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
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

void sub_25A2EE840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
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

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<signed char,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
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
              if (v88 >= *v84)
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

void sub_25A2EEF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
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

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(signed char *,signed char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char>),mlx::core::distributed::ring::RingGroup*,signed char *,signed char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(signed char *,signed char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char>),mlx::core::distributed::ring::RingGroup*,signed char *,signed char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEF6B8;
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

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(signed char *,signed char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char>),mlx::core::distributed::ring::RingGroup*,signed char *,signed char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(signed char *,signed char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char>),mlx::core::distributed::ring::RingGroup*,signed char *,signed char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char> const&>>>,void ()(void)>::operator()(uint64_t a1)
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

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15MinOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEF710;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15MinOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEF710;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15MinOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEF710;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15MinOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15MinOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15MinOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaS8_miiiNS6_12_GLOBAL__N_15MinOpIaEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEF7A0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<signed char>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIsNS8_12_GLOBAL__N_15MinOpIsEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEF898;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIsNS8_12_GLOBAL__N_15MinOpIsEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIsNS8_12_GLOBAL__N_15MinOpIsEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::MinOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<short>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
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

void sub_25A2EFA40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
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

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<short,mlx::core::distributed::ring::anonymous namespace::MinOp<short>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
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
              if (v88 >= *v84)
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

void sub_25A2F0160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
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

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(short *,short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<short>),mlx::core::distributed::ring::RingGroup*,short *,short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<short> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(short *,short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<short>),mlx::core::distributed::ring::RingGroup*,short *,short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<short> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEF908;
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

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(short *,short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<short>),mlx::core::distributed::ring::RingGroup*,short *,short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<short> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(short *,short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<short>),mlx::core::distributed::ring::RingGroup*,short *,short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<short> const&>>>,void ()(void)>::operator()(uint64_t a1)
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

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15MinOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEF960;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15MinOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEF960;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15MinOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEF960;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15MinOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15MinOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15MinOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsS8_miiiNS6_12_GLOBAL__N_15MinOpIsEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::MinOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<short>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::MinOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<short>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEF9F0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::MinOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<short>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::MinOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<short>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIiNS8_12_GLOBAL__N_15MinOpIiEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEFAE8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIiNS8_12_GLOBAL__N_15MinOpIiEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIiNS8_12_GLOBAL__N_15MinOpIiEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::MinOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<int>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
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

void sub_25A2F0C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
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

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<int,mlx::core::distributed::ring::anonymous namespace::MinOp<int>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
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
              if (v88 >= *v84)
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

void sub_25A2F1368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
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

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(int *,int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<int>),mlx::core::distributed::ring::RingGroup*,int *,int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<int> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(int *,int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<int>),mlx::core::distributed::ring::RingGroup*,int *,int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<int> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEFB58;
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

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(int *,int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<int>),mlx::core::distributed::ring::RingGroup*,int *,int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<int> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(int *,int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<int>),mlx::core::distributed::ring::RingGroup*,int *,int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<int> const&>>>,void ()(void)>::operator()(uint64_t a1)
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

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15MinOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEFBB0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15MinOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEFBB0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15MinOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEFBB0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15MinOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15MinOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15MinOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiS8_miiiNS6_12_GLOBAL__N_15MinOpIiEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::MinOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<int>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::MinOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<int>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEFC40;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::MinOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<int>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::MinOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<int>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIxNS8_12_GLOBAL__N_15MinOpIxEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEFD38;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIxNS8_12_GLOBAL__N_15MinOpIxEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIxNS8_12_GLOBAL__N_15MinOpIxEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::MinOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<long long>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
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

void sub_25A2F1E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
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

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<long long,mlx::core::distributed::ring::anonymous namespace::MinOp<long long>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
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
              if (v88 >= *v84)
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

void sub_25A2F2570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
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

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(long long *,long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<long long>),mlx::core::distributed::ring::RingGroup*,long long *,long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<long long> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(long long *,long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<long long>),mlx::core::distributed::ring::RingGroup*,long long *,long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<long long> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEFDA8;
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

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(long long *,long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<long long>),mlx::core::distributed::ring::RingGroup*,long long *,long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<long long> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(long long *,long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<long long>),mlx::core::distributed::ring::RingGroup*,long long *,long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<long long> const&>>>,void ()(void)>::operator()(uint64_t a1)
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

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15MinOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEFE00;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15MinOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEFE00;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15MinOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEFE00;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15MinOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15MinOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15MinOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxS8_miiiNS6_12_GLOBAL__N_15MinOpIxEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::MinOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<long long>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::MinOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<long long>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEFE90;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::MinOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<long long>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::MinOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<long long>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIhNS8_12_GLOBAL__N_15MinOpIhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEFF88;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIhNS8_12_GLOBAL__N_15MinOpIhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIhNS8_12_GLOBAL__N_15MinOpIhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
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

void sub_25A2F305C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
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

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<unsigned char,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
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
              if (v88 >= *v84)
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

void sub_25A2F3774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
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

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned char *,unsigned char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char>),mlx::core::distributed::ring::RingGroup*,unsigned char *,unsigned char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned char *,unsigned char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char>),mlx::core::distributed::ring::RingGroup*,unsigned char *,unsigned char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEFFF8;
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

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned char *,unsigned char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char>),mlx::core::distributed::ring::RingGroup*,unsigned char *,unsigned char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned char *,unsigned char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char>),mlx::core::distributed::ring::RingGroup*,unsigned char *,unsigned char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char> const&>>>,void ()(void)>::operator()(uint64_t a1)
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

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15MinOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF0050;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15MinOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF0050;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15MinOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BF0050;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15MinOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15MinOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15MinOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhS8_miiiNS6_12_GLOBAL__N_15MinOpIhEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF00E0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned char>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceItNS8_12_GLOBAL__N_15MinOpItEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF01D8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceItNS8_12_GLOBAL__N_15MinOpItEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceItNS8_12_GLOBAL__N_15MinOpItEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned short,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned short>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
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

void sub_25A2F425C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
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

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<unsigned short,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned short>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
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
              if (v88 >= *v84)
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