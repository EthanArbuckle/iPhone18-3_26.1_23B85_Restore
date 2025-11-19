void sub_25A57C484(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Expm1&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Expm1&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Expm1&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
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

void sub_25A57C668(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Expm1EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFC5B8;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Expm1EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFC5B8;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Expm1EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFC5B8;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Expm1EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Expm1EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Expm1EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Expm1EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::Expm1>(a1, a1 + 16);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::Expm1>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::Expm1>(a1, a1 + 16);
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Expm1>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Expm1>(a1, a1 + 16);
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

void sub_25A57CADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Expm1>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = expm1f(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v7) + (HIWORD(LODWORD(v7)) & 1u) + 0x7FFF) >> 16;
      ++v4;
    }

    return;
  }

  v8 = v3[1];
  if (v8 == *v3)
  {
    v11 = 1;
    v10 = 1;
  }

  else
  {
    v9 = v8 - *v3;
    v10 = *(v8 - 4);
    v11 = *(v3[4] - 8);
    if ((v9 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v31, v3, v3 + 3, (v9 >> 2) - 1);
      if ((*a1)[6])
      {
        v13 = 0;
        do
        {
          mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Expm1>(&v4[v31], &v5[v13], v10, v11);
          v14 = v33 - v32;
          v15 = (v33 - v32) >> 2;
          if (v15)
          {
            v16 = __p;
            v17 = ((v14 << 30) - 0x100000000) >> 32;
            v18 = __p + 4 * v17;
            v19 = *v18;
            v20 = v32 + 4 * v17;
            v21 = v34;
            v22 = v31;
            if (v15 >= 2 && v19 == *v20 - 1)
            {
              v25 = (v14 >> 2) & 0x7FFFFFFF;
              v24 = v25 - 1;
              v26 = 4 * v25;
              v27 = v32 - 8;
              do
              {
                v28 = v24;
                *v18 = 0;
                v22 -= v21[v17] * (*v20 - 1);
                v31 = v22;
                --v24;
                v18 = &v16[v26 - 8];
                v19 = *v18;
                v16 -= 4;
                if (v28 < 2)
                {
                  break;
                }

                v20 = &v27[v26];
                v29 = *&v27[4 * v25] - 1;
                v27 -= 4;
                v17 = v24;
              }

              while (v19 == v29);
              v18 = &v16[4 * v25 - 4];
            }

            else
            {
              v24 = ((v14 << 30) - 0x100000000) >> 32;
            }

            *v18 = v19 + 1;
            v31 = v21[v24] + v22;
          }

          v13 += v10;
        }

        while (v13 < (*a1)[6]);
      }

      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      return;
    }
  }

  v30 = (*a1)[19];

  mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Expm1>(v30, v5, v10, v11);
}

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Expm1>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
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
        v55 = _simd_expm1_f4(vcvtq_f32_f16(*v7.i8));
        _Q0 = _simd_expm1_f4(vcvt_hight_f32_f16(v7));
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

      _Q0.f32[0] = expm1f(_S0);
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

      _Q0.f32[0] = expm1f(_S0);
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

          _Q0.f32[0] = expm1f(_S0);
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

void mlx::core::unary_op<float,float,mlx::core::detail::Expm1>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_expm1_f4(v7);
        v5[1] = _simd_expm1_f4(xa);
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
      v5->f32[0] = expm1f(v9);
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
      v5->f32[0] = expm1f(v4->f32[0]);
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
          *v23++ = expm1f(*v22);
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

void mlx::core::unary_op<double,double,mlx::core::detail::Expm1>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_expm1_d2(v7);
        v5[1] = _simd_expm1_d2(xa);
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
      v5->f64[0] = expm1(v9);
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
      v5->f64[0] = expm1(v4->f64[0]);
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
          *v23++ = expm1(*v22);
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

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Expm1>(uint64_t **a1, uint64_t a2)
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
      *v5 = expm1f(v7);
      v5[1] = 0.0;
      v5 += 2;
    }

    return;
  }

  v8 = v3[1];
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
LABEL_32:
    v35 = v5 + 1;
    do
    {
      *(v35 - 1) = expm1f(*v4);
      *v35 = 0.0;
      v35 += 2;
      v4 += 2 * v11;
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

  mlx::core::ContiguousIterator::ContiguousIterator(&v36, v3, v3 + 3, (v9 >> 2) - 1);
  if ((*a1)[6])
  {
    v13 = 0;
    v14 = v36;
    v15 = 8 * v11;
    v16 = v5 + 1;
    do
    {
      if (v10)
      {
        v17 = &v4[2 * v14];
        v18 = v16;
        v19 = v10;
        do
        {
          *(v18 - 1) = expm1f(*v17);
          *v18 = 0.0;
          v18 += 2;
          v17 = (v17 + v15);
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
            v14 -= v24[v22] * (*v27 - 1);
            v36 = v14;
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
        v14 += v24[v29];
        v36 = v14;
      }

      v13 += v10;
      v16 += 2 * v10;
    }

    while (v13 < (*a1)[6]);
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
}

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Expm1>(unsigned __int16 *a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
    v7 = 2 * a4;
    do
    {
      v8 = expm1f(COERCE_FLOAT(*a1 << 16));
      *a2++ = (LODWORD(v8) + (HIWORD(LODWORD(v8)) & 1u) + 0x7FFF) >> 16;
      a1 = (a1 + v7);
      --v4;
    }

    while (v4);
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A57D9FC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
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

void sub_25A57DBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFC638;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFC638;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFC638;
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

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Expm1>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Expm1,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
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
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Floor&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A57DF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Floor&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Floor&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A57E054(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Floor&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Floor&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Floor&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
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

void sub_25A57E238(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5FloorEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFC730;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5FloorEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFC730;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5FloorEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFC730;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5FloorEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5FloorEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5FloorEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5FloorEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float64_t mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::Floor>(a1, a1 + 16);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      *&result = mlx::core::unary_op<float,float,mlx::core::detail::Floor>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        return mlx::core::unary_op<double,double,mlx::core::detail::Floor>(a1, a1 + 16);
      case 13:

        *&result = mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Floor>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Floor>(a1, a1 + 16);
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

void sub_25A57E6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Floor>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = floorf(COERCE_FLOAT(*v4 << 16));
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
      v39 = floorf(COERCE_FLOAT(*v4 << 16));
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
          v28 = floorf(COERCE_FLOAT(*v25 << 16));
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

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Floor>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
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
        v8 = vrndmq_f16(v7);
        *v5++ = v8;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = *v4++;
      *v8.i16 = floorl(v9);
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
      *v8.i16 = floorl(*v4);
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
          *v8.i16 = floorl(*v27);
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

float32_t mlx::core::unary_op<float,float,mlx::core::detail::Floor>(uint64_t **a1, uint64_t a2)
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
        v9 = vrndmq_f32(v7);
        *v5 = vrndmq_f32(v8);
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
      v9.f32[0] = floorf(v10);
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
      v9.f32[0] = floorf(v4->f32[0]);
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
          v9.f32[0] = floorf(*v28);
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

float64_t mlx::core::unary_op<double,double,mlx::core::detail::Floor>(uint64_t **a1, uint64_t a2)
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
        v9 = vrndmq_f64(v7);
        *v5 = vrndmq_f64(v8);
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
      v9.f64[0] = floor(v10);
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
      v9.f64[0] = floor(v4->f64[0]);
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
          v9.f64[0] = floor(*v28);
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

float mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Floor>(uint64_t **a1, uint64_t a2)
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
      result = floorf(v7);
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
      result = floorf(*v4);
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
          result = floorf(*v17);
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

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A57F458(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
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

void sub_25A57F628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFC7B0;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFC7B0;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFC7B0;
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

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Floor>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Floor,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
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
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Imag&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A57F9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Imag&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Imag&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A57FAB0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Imag&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Imag&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Imag&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
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

void sub_25A57FC94(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_22unary_complex_to_floatINS3_6detail4ImagEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFC8A8;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_22unary_complex_to_floatINS3_6detail4ImagEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFC8A8;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_22unary_complex_to_floatINS3_6detail4ImagEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFC8A8;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_22unary_complex_to_floatINS3_6detail4ImagEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_22unary_complex_to_floatINS3_6detail4ImagEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_22unary_complex_to_floatINS3_6detail4ImagEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__invoke_void_return_wrapper<void,true>::__call[abi:ne200100]<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Imag&&)::{lambda(void)#1} &>(uint64_t a1)
{
  mlx::core::unary_op<mlx::core::complex64_t,float,mlx::core::detail::Imag>((a1 + 16), a1 + 32);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

float mlx::core::unary_op<mlx::core::complex64_t,float,mlx::core::detail::Imag>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6)
    {
      v7 = (v4 + 4);
      do
      {
        v8 = *v7;
        v7 += 2;
        result = v8;
        *v5++ = v8;
        --v6;
      }

      while (v6);
    }

    return result;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
LABEL_31:
    v41 = (v4 + 4);
    do
    {
      result = *v41;
      *v5++ = *v41;
      v41 += 2 * v13;
      --v12;
    }

    while (v12);
    return result;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(v3[4] - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return result;
    }

    goto LABEL_31;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v42, v3, v3 + 3, (v11 >> 2) - 1);
  v15 = (*a1)[6];
  if (v15)
  {
    v16 = 0;
    v17 = v42;
    v18 = v45;
    v19 = (v44 - v43) >> 2;
    v20 = (((v44 - v43) << 30) - 0x100000000) >> 32;
    v21 = __p;
    v22 = __p + 4 * v20;
    v23 = v43 + 4 * v20;
    v24 = v4 + 4;
    v25 = 8 * v13;
    v26 = 4 * (v19 & 0x7FFFFFFF);
    v27 = v43 - 8;
    do
    {
      if (v12)
      {
        v28 = (v24 + 8 * v17);
        v29 = v5;
        v30 = v12;
        do
        {
          result = *v28;
          *v29++ = *v28;
          v28 = (v28 + v25);
          --v30;
        }

        while (v30);
      }

      if (v19)
      {
        v31 = *v22;
        if (v19 >= 2 && v31 == *v23 - 1)
        {
          v32 = v21;
          v33 = v27;
          v34 = (v19 & 0x7FFFFFFF) - 1;
          v35 = v23;
          v36 = v22;
          v37 = v20;
          do
          {
            v38 = v34;
            *v36 = 0;
            v17 -= v18[v37] * (*v35 - 1);
            v42 = v17;
            --v34;
            v36 = &v32[v26 - 8];
            v31 = *v36;
            v32 -= 4;
            if (v38 < 2)
            {
              break;
            }

            v35 = &v33[v26];
            v39 = *&v33[4 * (v19 & 0x7FFFFFFF)] - 1;
            v33 -= 4;
            v37 = v34;
          }

          while (v31 == v39);
          v40 = &v32[v26 - 4];
        }

        else
        {
          v34 = v20;
          v40 = v22;
        }

        *v40 = v31 + 1;
        v17 += v18[v34];
        v42 = v17;
      }

      v16 += v12;
      v5 += v12;
    }

    while (v16 < v15);
    if (!v21)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_25;
    }
  }

  v48 = v21;
  operator delete(v21);
LABEL_25:
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

  return result;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A58026C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
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

void sub_25A58043C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFC928;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFC928;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFC928;
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

void std::__function::__func<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Imag>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Imag,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
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
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A5807F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5808CC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
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

void sub_25A580AB0(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3LogEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFCA20;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3LogEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFCA20;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3LogEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFCA20;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3LogEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3LogEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3LogEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3LogEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::Log>(a1, a1 + 16);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::Log>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::Log>(a1, a1 + 16);
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Log>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Log>(a1, a1 + 16);
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

void sub_25A580F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Log>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = logf(COERCE_FLOAT(*v4 << 16));
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
      v35 = logf(COERCE_FLOAT(*v4 << 16));
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
          v22 = logf(COERCE_FLOAT(*v19 << 16));
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

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Log>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
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
        v55 = _simd_log_f4(vcvtq_f32_f16(*v7.i8));
        _Q0 = _simd_log_f4(vcvt_hight_f32_f16(v7));
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

      _Q0.f32[0] = logf(_S0);
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

      _Q0.f32[0] = logf(_S0);
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

          _Q0.f32[0] = logf(_S0);
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

void mlx::core::unary_op<float,float,mlx::core::detail::Log>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_log_f4(v7);
        v5[1] = _simd_log_f4(xa);
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
      v5->f32[0] = logf(v9);
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
      v5->f32[0] = logf(v4->f32[0]);
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
          *v23++ = logf(*v22);
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

void mlx::core::unary_op<double,double,mlx::core::detail::Log>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_log_d2(v7);
        v5[1] = _simd_log_d2(xa);
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
      v5->f64[0] = log(v9);
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
      v5->f64[0] = log(v4->f64[0]);
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
          *v23++ = log(*v22);
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

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Log>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = *v4;
      v8 = v4[1];
      v4 += 2;
      v9 = hypotf(v7, v8);
      v10 = logf(v9);
      v11 = atan2f(v8, v7);
      *v5 = v10;
      *(v5 + 4) = v11;
      v5 += 8;
    }

    return;
  }

  v12 = v3[1];
  if (v12 == *v3)
  {
    v15 = 1;
    v14 = 1;
  }

  else
  {
    v13 = v12 - *v3;
    v14 = *(v12 - 4);
    v15 = *(v3[4] - 8);
    if ((v13 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v35, v3, v3 + 3, (v13 >> 2) - 1);
      if ((*a1)[6])
      {
        v17 = 0;
        do
        {
          mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Log>(&v4[2 * v35], v5 + 8 * v17, v14, v15);
          v18 = v37 - v36;
          v19 = (v37 - v36) >> 2;
          if (v19)
          {
            v20 = __p;
            v21 = ((v18 << 30) - 0x100000000) >> 32;
            v22 = __p + 4 * v21;
            v23 = *v22;
            v24 = v36 + 4 * v21;
            v25 = v38;
            v26 = v35;
            if (v19 >= 2 && v23 == *v24 - 1)
            {
              v29 = (v18 >> 2) & 0x7FFFFFFF;
              v28 = v29 - 1;
              v30 = 4 * v29;
              v31 = v36 - 8;
              do
              {
                v32 = v28;
                *v22 = 0;
                v26 -= v25[v21] * (*v24 - 1);
                v35 = v26;
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
            v35 = v25[v28] + v26;
          }

          v17 += v14;
        }

        while (v17 < (*a1)[6]);
      }

      if (__p)
      {
        v41 = __p;
        operator delete(__p);
      }

      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      return;
    }
  }

  v34 = (*a1)[19];

  mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Log>(v34, v5, v14, v15);
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Log>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v9 = *v5;
      v10 = hypotf(v8, *v5);
      v11 = logf(v10);
      v12 = atan2f(v9, v8);
      *(v7 - 1) = v11;
      *v7 = v12;
      v5 = (v5 + v6);
      v7 += 2;
      --v4;
    }

    while (v4);
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A581F14(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
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

void sub_25A5820E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFCAA0;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFCAA0;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFCAA0;
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

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
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
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log2&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A582498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log2&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log2&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A58256C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log2&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log2&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log2&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
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

void sub_25A582750(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4Log2EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFCB98;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4Log2EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFCB98;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4Log2EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFCB98;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4Log2EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4Log2EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4Log2EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4Log2EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::Log2>(a1, a1 + 16);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::Log2>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::Log2>(a1, a1 + 16);
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Log2>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Log2>(a1, a1 + 16);
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

void sub_25A582BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Log2>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = log2f(COERCE_FLOAT(*v4 << 16));
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
      v35 = log2f(COERCE_FLOAT(*v4 << 16));
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
          v22 = log2f(COERCE_FLOAT(*v19 << 16));
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

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Log2>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
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
        v55 = _simd_log2_f4(vcvtq_f32_f16(*v7.i8));
        _Q0 = _simd_log2_f4(vcvt_hight_f32_f16(v7));
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

      _Q0.f32[0] = log2f(_S0);
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

      _Q0.f32[0] = log2f(_S0);
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

          _Q0.f32[0] = log2f(_S0);
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

void mlx::core::unary_op<float,float,mlx::core::detail::Log2>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_log2_f4(v7);
        v5[1] = _simd_log2_f4(xa);
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
      v5->f32[0] = log2f(v9);
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
      v5->f32[0] = log2f(v4->f32[0]);
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
          *v23++ = log2f(*v22);
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

void mlx::core::unary_op<double,double,mlx::core::detail::Log2>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_log2_d2(v7);
        v5[1] = _simd_log2_d2(xa);
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
      v5->f64[0] = log2(v9);
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
      v5->f64[0] = log2(v4->f64[0]);
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
          *v23++ = log2(*v22);
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

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Log2>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6)
    {
      v7 = vdup_n_s32(0x3F317218u);
      do
      {
        v8 = *v4;
        v9 = v4[1];
        v4 += 2;
        v10 = hypotf(v8, v9);
        v34 = logf(v10);
        *v5++ = vdiv_f32(__PAIR64__(COERCE_UNSIGNED_INT(atan2f(v9, v8)), LODWORD(v34)), v7);
        --v6;
      }

      while (v6);
    }

    return;
  }

  v11 = v3[1];
  if (v11 == *v3)
  {
    v14 = 1;
    v13 = 1;
  }

  else
  {
    v12 = v11 - *v3;
    v13 = *(v11 - 4);
    v14 = *(v3[4] - 8);
    if ((v12 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v35, v3, v3 + 3, (v12 >> 2) - 1);
      if ((*a1)[6])
      {
        v16 = 0;
        do
        {
          mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Log2>(&v4[2 * v35], &v5[v16], v13, v14);
          v17 = v37 - v36;
          v18 = (v37 - v36) >> 2;
          if (v18)
          {
            v19 = __p;
            v20 = ((v17 << 30) - 0x100000000) >> 32;
            v21 = __p + 4 * v20;
            v22 = *v21;
            v23 = v36 + 4 * v20;
            v24 = v38;
            v25 = v35;
            if (v18 >= 2 && v22 == *v23 - 1)
            {
              v28 = (v17 >> 2) & 0x7FFFFFFF;
              v27 = v28 - 1;
              v29 = 4 * v28;
              v30 = v36 - 8;
              do
              {
                v31 = v27;
                *v21 = 0;
                v25 -= v24[v20] * (*v23 - 1);
                v35 = v25;
                --v27;
                v21 = &v19[v29 - 8];
                v22 = *v21;
                v19 -= 4;
                if (v31 < 2)
                {
                  break;
                }

                v23 = &v30[v29];
                v32 = *&v30[4 * v28] - 1;
                v30 -= 4;
                v20 = v27;
              }

              while (v22 == v32);
              v21 = &v19[4 * v28 - 4];
            }

            else
            {
              v27 = ((v17 << 30) - 0x100000000) >> 32;
            }

            *v21 = v22 + 1;
            v35 = v24[v27] + v25;
          }

          v16 += v13;
        }

        while (v16 < (*a1)[6]);
      }

      if (__p)
      {
        v41 = __p;
        operator delete(__p);
      }

      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      return;
    }
  }

  v33 = (*a1)[19];

  mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Log2>(v33, v5, v13, v14);
}

void sub_25A583A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Log2>(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
    v6 = (a1 + 4);
    v7 = 8 * a4;
    v8 = vdup_n_s32(0x3F317218u);
    do
    {
      v9 = *(v6 - 1);
      v10 = *v6;
      v11 = hypotf(v9, *v6);
      v12 = logf(v11);
      *a2++ = vdiv_f32(__PAIR64__(COERCE_UNSIGNED_INT(atan2f(v10, v9)), LODWORD(v12)), v8);
      v6 = (v6 + v7);
      --v4;
    }

    while (v4);
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A583BE8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
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

void sub_25A583DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFCC18;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFCC18;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFCC18;
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

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log2>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log2,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
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
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log10&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A58416C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log10&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log10&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A584240(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log10&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log10&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log10&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
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

void sub_25A584424(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Log10EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFCD10;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Log10EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFCD10;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Log10EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFCD10;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Log10EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Log10EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Log10EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Log10EEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::Log10>(a1, a1 + 16);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::Log10>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::Log10>(a1, a1 + 16);
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Log10>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Log10>(a1, a1 + 16);
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

void sub_25A584898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Log10>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = log10f(COERCE_FLOAT(*v4 << 16));
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
      v35 = log10f(COERCE_FLOAT(*v4 << 16));
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
          v22 = log10f(COERCE_FLOAT(*v19 << 16));
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

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Log10>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
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
        v55 = _simd_log10_f4(vcvtq_f32_f16(*v7.i8));
        _Q0 = _simd_log10_f4(vcvt_hight_f32_f16(v7));
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

      _Q0.f32[0] = log10f(_S0);
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

      _Q0.f32[0] = log10f(_S0);
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

          _Q0.f32[0] = log10f(_S0);
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

void mlx::core::unary_op<float,float,mlx::core::detail::Log10>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_log10_f4(v7);
        v5[1] = _simd_log10_f4(xa);
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
      v5->f32[0] = log10f(v9);
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
      v5->f32[0] = log10f(v4->f32[0]);
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
          *v23++ = log10f(*v22);
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

void mlx::core::unary_op<double,double,mlx::core::detail::Log10>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_log10_d2(v7);
        v5[1] = _simd_log10_d2(xa);
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
      v5->f64[0] = log10(v9);
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
      v5->f64[0] = log10(v4->f64[0]);
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
          *v23++ = log10(*v22);
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

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Log10>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6)
    {
      v7 = vdup_n_s32(0x40135D8Eu);
      do
      {
        v8 = *v4;
        v9 = v4[1];
        v4 += 2;
        v10 = hypotf(v8, v9);
        v34 = logf(v10);
        *v5++ = vdiv_f32(__PAIR64__(COERCE_UNSIGNED_INT(atan2f(v9, v8)), LODWORD(v34)), v7);
        --v6;
      }

      while (v6);
    }

    return;
  }

  v11 = v3[1];
  if (v11 == *v3)
  {
    v14 = 1;
    v13 = 1;
  }

  else
  {
    v12 = v11 - *v3;
    v13 = *(v11 - 4);
    v14 = *(v3[4] - 8);
    if ((v12 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v35, v3, v3 + 3, (v12 >> 2) - 1);
      if ((*a1)[6])
      {
        v16 = 0;
        do
        {
          mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Log10>(&v4[2 * v35], &v5[v16], v13, v14);
          v17 = v37 - v36;
          v18 = (v37 - v36) >> 2;
          if (v18)
          {
            v19 = __p;
            v20 = ((v17 << 30) - 0x100000000) >> 32;
            v21 = __p + 4 * v20;
            v22 = *v21;
            v23 = v36 + 4 * v20;
            v24 = v38;
            v25 = v35;
            if (v18 >= 2 && v22 == *v23 - 1)
            {
              v28 = (v17 >> 2) & 0x7FFFFFFF;
              v27 = v28 - 1;
              v29 = 4 * v28;
              v30 = v36 - 8;
              do
              {
                v31 = v27;
                *v21 = 0;
                v25 -= v24[v20] * (*v23 - 1);
                v35 = v25;
                --v27;
                v21 = &v19[v29 - 8];
                v22 = *v21;
                v19 -= 4;
                if (v31 < 2)
                {
                  break;
                }

                v23 = &v30[v29];
                v32 = *&v30[4 * v28] - 1;
                v30 -= 4;
                v20 = v27;
              }

              while (v22 == v32);
              v21 = &v19[4 * v28 - 4];
            }

            else
            {
              v27 = ((v17 << 30) - 0x100000000) >> 32;
            }

            *v21 = v22 + 1;
            v35 = v24[v27] + v25;
          }

          v16 += v13;
        }

        while (v16 < (*a1)[6]);
      }

      if (__p)
      {
        v41 = __p;
        operator delete(__p);
      }

      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      return;
    }
  }

  v33 = (*a1)[19];

  mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Log10>(v33, v5, v13, v14);
}

void sub_25A585768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Log10>(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
    v6 = (a1 + 4);
    v7 = 8 * a4;
    v8 = vdup_n_s32(0x40135D8Eu);
    do
    {
      v9 = *(v6 - 1);
      v10 = *v6;
      v11 = hypotf(v9, *v6);
      v12 = logf(v11);
      *a2++ = vdiv_f32(__PAIR64__(COERCE_UNSIGNED_INT(atan2f(v10, v9)), LODWORD(v12)), v8);
      v6 = (v6 + v7);
      --v4;
    }

    while (v4);
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5858BC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
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

void sub_25A585A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFCD90;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFCD90;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFCD90;
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

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log10>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log10,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
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
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log1p&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A585E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log1p&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log1p&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A585F14(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log1p&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log1p&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Log1p&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
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

void sub_25A5860F8(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Log1pEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFCE88;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Log1pEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFCE88;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Log1pEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFCE88;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Log1pEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Log1pEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Log1pEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5Log1pEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::Log1p>(a1, a1 + 16);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::Log1p>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::Log1p>(a1, a1 + 16);
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Log1p>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Log1p>(a1, a1 + 16);
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

void sub_25A58656C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Log1p>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = log1pf(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v7) + (HIWORD(LODWORD(v7)) & 1u) + 0x7FFF) >> 16;
      ++v4;
    }

    return;
  }

  v8 = v3[1];
  if (v8 == *v3)
  {
    v11 = 1;
    v10 = 1;
  }

  else
  {
    v9 = v8 - *v3;
    v10 = *(v8 - 4);
    v11 = *(v3[4] - 8);
    if ((v9 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v31, v3, v3 + 3, (v9 >> 2) - 1);
      if ((*a1)[6])
      {
        v13 = 0;
        do
        {
          mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Log1p>(&v4[v31], &v5[v13], v10, v11);
          v14 = v33 - v32;
          v15 = (v33 - v32) >> 2;
          if (v15)
          {
            v16 = __p;
            v17 = ((v14 << 30) - 0x100000000) >> 32;
            v18 = __p + 4 * v17;
            v19 = *v18;
            v20 = v32 + 4 * v17;
            v21 = v34;
            v22 = v31;
            if (v15 >= 2 && v19 == *v20 - 1)
            {
              v25 = (v14 >> 2) & 0x7FFFFFFF;
              v24 = v25 - 1;
              v26 = 4 * v25;
              v27 = v32 - 8;
              do
              {
                v28 = v24;
                *v18 = 0;
                v22 -= v21[v17] * (*v20 - 1);
                v31 = v22;
                --v24;
                v18 = &v16[v26 - 8];
                v19 = *v18;
                v16 -= 4;
                if (v28 < 2)
                {
                  break;
                }

                v20 = &v27[v26];
                v29 = *&v27[4 * v25] - 1;
                v27 -= 4;
                v17 = v24;
              }

              while (v19 == v29);
              v18 = &v16[4 * v25 - 4];
            }

            else
            {
              v24 = ((v14 << 30) - 0x100000000) >> 32;
            }

            *v18 = v19 + 1;
            v31 = v21[v24] + v22;
          }

          v13 += v10;
        }

        while (v13 < (*a1)[6]);
      }

      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      return;
    }
  }

  v30 = (*a1)[19];

  mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Log1p>(v30, v5, v10, v11);
}

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Log1p>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
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
        v55 = _simd_log1p_f4(vcvtq_f32_f16(*v7.i8));
        _Q0 = _simd_log1p_f4(vcvt_hight_f32_f16(v7));
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

      _Q0.f32[0] = log1pf(_S0);
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

      _Q0.f32[0] = log1pf(_S0);
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

          _Q0.f32[0] = log1pf(_S0);
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

void mlx::core::unary_op<float,float,mlx::core::detail::Log1p>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_log1p_f4(v7);
        v5[1] = _simd_log1p_f4(xa);
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
      v5->f32[0] = log1pf(v9);
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
      v5->f32[0] = log1pf(v4->f32[0]);
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
          *v23++ = log1pf(*v22);
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

void mlx::core::unary_op<double,double,mlx::core::detail::Log1p>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_log1p_d2(v7);
        v5[1] = _simd_log1p_d2(xa);
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
      v5->f64[0] = log1p(v9);
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
      v5->f64[0] = log1p(v4->f64[0]);
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
          *v23++ = log1p(*v22);
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

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Log1p>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = *v4;
      v8 = v4[1];
      v4 += 2;
      *v5 = mlx::core::simd::log1p<mlx::core::complex64_t>(v7, v8);
      *(v5 + 1) = v9;
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
    v39 = v4 + 1;
    v40 = v5 + 1;
    do
    {
      *(v40 - 1) = mlx::core::simd::log1p<mlx::core::complex64_t>(*(v39 - 1), *v39);
      *v40 = v41;
      v39 += 2 * v13;
      v40 += 2;
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
    v16 = v4 + 1;
    v17 = 8 * v13;
    v18 = v5 + 1;
    do
    {
      if (v12)
      {
        v19 = &v16[2 * v42];
        v20 = v18;
        v21 = v12;
        do
        {
          *(v20 - 1) = mlx::core::simd::log1p<mlx::core::complex64_t>(*(v19 - 1), *v19);
          *v20 = v22;
          v19 = (v19 + v17);
          v20 += 2;
          --v21;
        }

        while (v21);
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
      v18 += 2 * v12;
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Log1p>(unsigned __int16 *a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
    v7 = 2 * a4;
    do
    {
      v8 = log1pf(COERCE_FLOAT(*a1 << 16));
      *a2++ = (LODWORD(v8) + (HIWORD(LODWORD(v8)) & 1u) + 0x7FFF) >> 16;
      a1 = (a1 + v7);
      --v4;
    }

    while (v4);
  }
}

float mlx::core::simd::log1p<mlx::core::complex64_t>(float a1, float a2)
{
  v3 = a1;
  v4 = a1 + 1.0;
  if (hypotf(a1, a2) >= 0.5)
  {
    v6 = hypotf(v3 + 1.0, a2);
    v3 = logf(v6);
  }

  else
  {
    v5 = (a2 * a2) + (v3 * (v3 + 2.0));
    if (v5 != 0.0)
    {
      v3 = log1pf(v5) * 0.5;
    }
  }

  atan2f(a2, v4);
  return v3;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A587530(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
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

void sub_25A587700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFCF08;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFCF08;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFCF08;
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

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Log1p>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Log1p,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::LogicalNot>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalNot,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary<mlx::core::detail::LogicalNot>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalNot,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
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
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::LogicalNot>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalNot,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::LogicalNot&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A587AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::LogicalNot>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalNot,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::LogicalNot&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::LogicalNot>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalNot,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::LogicalNot&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A587B88(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::LogicalNot>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalNot,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::LogicalNot&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::LogicalNot>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalNot,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::LogicalNot&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::LogicalNot>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalNot,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::LogicalNot&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
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

void sub_25A587D6C(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail10LogicalNotEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFD000;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail10LogicalNotEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFD000;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail10LogicalNotEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFD000;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail10LogicalNotEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail10LogicalNotEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail10LogicalNotEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary<mlx::core::detail::LogicalNot>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalNot,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail10LogicalNotEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::unary<mlx::core::detail::LogicalNot>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalNot,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  switch(*(*(a1 + 16) + 56))
  {
    case 0:
      mlx::core::unary_op<BOOL,BOOL,mlx::core::detail::LogicalNot>(a1, v1);
      break;
    case 1:
    case 5:
      mlx::core::unary_op<unsigned char,unsigned char,mlx::core::detail::LogicalNot>(a1, v1);
      break;
    case 2:
    case 6:
      mlx::core::unary_op<unsigned short,unsigned short,mlx::core::detail::LogicalNot>(a1, v1);
      break;
    case 3:
    case 7:
      mlx::core::unary_op<unsigned int,unsigned int,mlx::core::detail::LogicalNot>(a1, v1);
      break;
    case 4:
    case 8:
      mlx::core::unary_op<unsigned long long,unsigned long long,mlx::core::detail::LogicalNot>(a1, v1);
      break;
    case 9:
      mlx::core::unary_op<half,half,mlx::core::detail::LogicalNot>(a1, v1);
      break;
    case 0xA:
      mlx::core::unary_op<float,float,mlx::core::detail::LogicalNot>(a1, v1);
      break;
    case 0xB:
      mlx::core::unary_op<double,double,mlx::core::detail::LogicalNot>(a1, v1);
      break;
    case 0xC:
      mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogicalNot>(a1, v1);
      break;
    case 0xD:
      mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogicalNot>(a1, v1);
      break;
    default:
      return;
  }
}

void mlx::core::unary_op<BOOL,BOOL,mlx::core::detail::LogicalNot>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = *v4++;
      *v5++ = (v7 & 1) == 0;
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
      *v5++ = *v4 ^ 1;
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

  mlx::core::ContiguousIterator::ContiguousIterator(&v37, v3, v3 + 3, (v9 >> 2) - 1);
  v13 = (*a1)[6];
  if (v13)
  {
    v14 = 0;
    v15 = v37;
    v16 = v40;
    v17 = (v39 - v38) >> 2;
    v18 = (((v39 - v38) << 30) - 0x100000000) >> 32;
    v19 = __p;
    v20 = __p + 4 * v18;
    v21 = v38 + 4 * v18;
    v22 = 4 * (v17 & 0x7FFFFFFF);
    v23 = v38 - 8;
    do
    {
      if (v10)
      {
        v24 = &v4[v15];
        v25 = v5;
        v26 = v10;
        do
        {
          *v25++ = *v24 ^ 1;
          v24 += v11;
          --v26;
        }

        while (v26);
      }

      if (v17)
      {
        v27 = *v20;
        if (v17 >= 2 && v27 == *v21 - 1)
        {
          v28 = v19;
          v29 = v23;
          v30 = (v17 & 0x7FFFFFFF) - 1;
          v31 = v21;
          v32 = v20;
          v33 = v18;
          do
          {
            v34 = v30;
            *v32 = 0;
            v15 -= v16[v33] * (*v31 - 1);
            v37 = v15;
            --v30;
            v32 = &v28[v22 - 8];
            v27 = *v32;
            v28 -= 4;
            if (v34 < 2)
            {
              break;
            }

            v31 = &v29[v22];
            v35 = *&v29[4 * (v17 & 0x7FFFFFFF)] - 1;
            v29 -= 4;
            v33 = v30;
          }

          while (v27 == v35);
          v36 = &v28[v22 - 4];
        }

        else
        {
          v30 = v18;
          v36 = v20;
        }

        *v36 = v27 + 1;
        v15 += v16[v30];
        v37 = v15;
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

  v43 = v19;
  operator delete(v19);
LABEL_24:
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

void mlx::core::unary_op<unsigned char,unsigned char,mlx::core::detail::LogicalNot>(uint64_t **a1, uint64_t a2)
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
        *v5++ = vceqzq_s8(v7);
        v6 -= 16;
      }

      while (v6 > 0xF);
    }

    for (; v6; --v6)
    {
      v8 = v4->u8[0];
      v4 = (v4 + 1);
      v5->i8[0] = v8 == 0;
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
      v5->i8[0] = v4->i8[0] == 0;
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
          v17->i8[0] = *v16 == 0;
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

void mlx::core::unary_op<unsigned short,unsigned short,mlx::core::detail::LogicalNot>(uint64_t **a1, uint64_t a2)
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
        *v5 = vceqzq_s16(v8);
        v5[1] = vceqzq_s16(v7);
        v5 += 2;
        v6 -= 16;
      }

      while (v6 > 0xF);
    }

    for (; v6; --v6)
    {
      v9 = *v4;
      v4 = (v4 + 2);
      v5->i16[0] = v9 == 0;
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
      v5->i16[0] = *v4 == 0;
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
          v28->i16[0] = *v27 == 0;
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

void mlx::core::unary_op<unsigned int,unsigned int,mlx::core::detail::LogicalNot>(uint64_t **a1, uint64_t a2)
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
        *v5 = vceqzq_s32(v8);
        v5[1] = vceqzq_s32(v7);
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = *v4;
      v4 = (v4 + 4);
      v5->i32[0] = v9 == 0;
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
      v5->i32[0] = *v4 == 0;
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
          v28->i32[0] = *v27 == 0;
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

void mlx::core::unary_op<unsigned long long,unsigned long long,mlx::core::detail::LogicalNot>(uint64_t **a1, uint64_t a2)
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
        *v5 = vceqzq_s64(v8);
        v5[1] = vceqzq_s64(v7);
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v9 = *v4;
      v4 = (v4 + 8);
      v5->i64[0] = v9 == 0;
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
      v5->i64[0] = *v4 == 0;
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
          *v28++ = *v27 == 0;
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

void mlx::core::unary_op<half,half,mlx::core::detail::LogicalNot>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      v7.i64[0] = 0xBC00BC00BC00BC00;
      v7.i64[1] = 0xBC00BC00BC00BC00;
      do
      {
        v8 = *v4++;
        *v5++ = vandq_s8(v7, vceqzq_f16(v8));
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = v4->i16[0];
      v4 = (v4 + 2);
      __asm { FCMP            H2, #0 }

      if (_ZF)
      {
        LOWORD(v15) = COERCE_UNSIGNED_INT(1.0);
      }

      else
      {
        v15 = COERCE_SHORT_FLOAT(0);
      }

      *v5->i16 = v15;
      v5 = (v5 + 2);
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
LABEL_39:
      v49 = v4->i16[0];
      __asm { FCMP            H2, #0 }

      if (_ZF)
      {
        LOWORD(v51) = COERCE_UNSIGNED_INT(1.0);
      }

      else
      {
        v51 = COERCE_SHORT_FLOAT(0);
      }

      *v5->i16 = v51;
      v5 = (v5 + 2);
      v4 = (v4 + 2 * v19);
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

    goto LABEL_39;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v52, v3, v3 + 3, (v17 >> 2) - 1);
  v21 = (*a1)[6];
  if (v21)
  {
    v22 = 0;
    v23 = v52;
    v24 = v55;
    v25 = (v54 - v53) >> 2;
    v26 = (((v54 - v53) << 30) - 0x100000000) >> 32;
    v27 = __p;
    v28 = __p + 4 * v26;
    v29 = v53 + 4 * v26;
    v30 = 2 * v19;
    v31 = 4 * (v25 & 0x7FFFFFFF);
    v32 = v53 - 8;
    do
    {
      if (v18)
      {
        v33 = &v4->i16[v23];
        v34 = v5;
        v35 = v18;
        do
        {
          v36 = *v33;
          __asm { FCMP            H2, #0 }

          if (_ZF)
          {
            LOWORD(v38) = COERCE_UNSIGNED_INT(1.0);
          }

          else
          {
            v38 = COERCE_SHORT_FLOAT(0);
          }

          *v34++ = v38;
          v33 = (v33 + v30);
          --v35;
        }

        while (v35);
      }

      if (v25)
      {
        v39 = *v28;
        if (v25 >= 2 && v39 == *v29 - 1)
        {
          v40 = v27;
          v41 = v32;
          v42 = (v25 & 0x7FFFFFFF) - 1;
          v43 = v29;
          v44 = v28;
          v45 = v26;
          do
          {
            v46 = v42;
            *v44 = 0;
            v23 -= v24[v45] * (*v43 - 1);
            v52 = v23;
            --v42;
            v44 = &v40[v31 - 8];
            v39 = *v44;
            v40 -= 4;
            if (v46 < 2)
            {
              break;
            }

            v43 = &v41[v31];
            v47 = *&v41[4 * (v25 & 0x7FFFFFFF)] - 1;
            v41 -= 4;
            v45 = v42;
          }

          while (v39 == v47);
          v48 = &v40[v31 - 4];
        }

        else
        {
          v42 = v26;
          v48 = v28;
        }

        *v48 = v39 + 1;
        v23 += v24[v42];
        v52 = v23;
      }

      v22 += v18;
      v5 = (v5 + 2 * v18);
    }

    while (v22 < v21);
    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v27 = __p;
    if (!__p)
    {
      goto LABEL_33;
    }
  }

  v58 = v27;
  operator delete(v27);
LABEL_33:
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }
}

void mlx::core::unary_op<float,float,mlx::core::detail::LogicalNot>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v6 = v3[20];
    if (v6 >= 8)
    {
      __asm { FMOV            V0.4S, #-1.0 }

      do
      {
        v12 = *v4;
        v13 = *(v4 + 1);
        v4 += 2;
        *v5 = vandq_s8(_Q0, vceqzq_f32(v12));
        v5[1] = vandq_s8(_Q0, vceqzq_f32(v13));
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v14 = *v4;
      v4 = (v4 + 4);
      if (v14 == 0.0)
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.0;
      }

      *v5->i32 = v15;
      v5 = (v5 + 4);
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
LABEL_39:
      if (*v4 == 0.0)
      {
        v47 = 1.0;
      }

      else
      {
        v47 = 0.0;
      }

      *v5->i32 = v47;
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v19);
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

    goto LABEL_39;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v48, v3, v3 + 3, (v17 >> 2) - 1);
  v21 = (*a1)[6];
  if (v21)
  {
    v22 = 0;
    v23 = v48;
    v24 = v51;
    v25 = (v50 - v49) >> 2;
    v26 = (((v50 - v49) << 30) - 0x100000000) >> 32;
    v27 = __p;
    v28 = __p + 4 * v26;
    v29 = v49 + 4 * v26;
    v30 = 4 * v19;
    v31 = 4 * (v25 & 0x7FFFFFFF);
    v32 = v49 - 8;
    do
    {
      if (v18)
      {
        v33 = v4 + v23;
        v34 = v5;
        v35 = v18;
        do
        {
          if (*v33 == 0.0)
          {
            v36 = 1.0;
          }

          else
          {
            v36 = 0.0;
          }

          *v34++ = v36;
          v33 = (v33 + v30);
          --v35;
        }

        while (v35);
      }

      if (v25)
      {
        v37 = *v28;
        if (v25 >= 2 && v37 == *v29 - 1)
        {
          v38 = v27;
          v39 = v32;
          v40 = (v25 & 0x7FFFFFFF) - 1;
          v41 = v29;
          v42 = v28;
          v43 = v26;
          do
          {
            v44 = v40;
            *v42 = 0;
            v23 -= v24[v43] * (*v41 - 1);
            v48 = v23;
            --v40;
            v42 = &v38[v31 - 8];
            v37 = *v42;
            v38 -= 4;
            if (v44 < 2)
            {
              break;
            }

            v41 = &v39[v31];
            v45 = *&v39[4 * (v25 & 0x7FFFFFFF)] - 1;
            v39 -= 4;
            v43 = v40;
          }

          while (v37 == v45);
          v46 = &v38[v31 - 4];
        }

        else
        {
          v40 = v26;
          v46 = v28;
        }

        *v46 = v37 + 1;
        v23 += v24[v40];
        v48 = v23;
      }

      v22 += v18;
      v5 = (v5 + 4 * v18);
    }

    while (v22 < v21);
    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v27 = __p;
    if (!__p)
    {
      goto LABEL_33;
    }
  }

  v54 = v27;
  operator delete(v27);
LABEL_33:
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