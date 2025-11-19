void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12unary_signedINS3_6detail3AbsEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12unary_signedINS3_6detail3AbsEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12unary_signedINS3_6detail3AbsEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1, int8x16_t a2)
{
  mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24, a2);
  v3 = mlx::core::scheduler::scheduler(v2);

  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12unary_signedINS3_6detail3AbsEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1, int8x16_t a2)
{
  v2 = a1 + 16;
  v3 = *(*(a1 + 16) + 56);
  if (v3 <= 8)
  {
    if (v3 > 6)
    {
      if (v3 == 7)
      {

        mlx::core::unary_op<int,int,mlx::core::detail::Abs>(a1, v2);
      }

      else
      {

        mlx::core::unary_op<long long,long long,mlx::core::detail::Abs>(a1, v2);
      }
    }

    else if (v3 == 5)
    {

      mlx::core::unary_op<signed char,signed char,mlx::core::detail::Abs>(a1, v2);
    }

    else
    {
      if (v3 != 6)
      {
        goto LABEL_38;
      }

      mlx::core::unary_op<short,short,mlx::core::detail::Abs>(a1, v2);
    }
  }

  else if (v3 <= 10)
  {
    if (v3 == 9)
    {

      mlx::core::unary_op<half,half,mlx::core::detail::Abs>(a1, v2);
    }

    else
    {

      mlx::core::unary_op<float,float,mlx::core::detail::Abs>(a1, v2);
    }
  }

  else
  {
    switch(v3)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::Abs>(a1, v2, a2);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Abs>(a1, v2);
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Abs>(a1, v2);
        return;
      default:
LABEL_38:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[Abs] Called on unsigned type");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void mlx::core::unary_op<signed char,signed char,mlx::core::detail::Abs>(uint64_t **a1, uint64_t a2)
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
        *v5++ = vabsq_s8(v7);
        v6 -= 16;
      }

      while (v6 > 0xF);
    }

    for (; v6; --v6)
    {
      v9 = v4->i8[0];
      v4 = (v4 + 1);
      v8 = v9;
      if (v9 < 0)
      {
        v8 = -v8;
      }

      v5->i8[0] = v8;
      v5 = (v5 + 1);
    }

    return;
  }

  v10 = v3[1];
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
  }

  else
  {
    v11 = v10 - *v3;
    v12 = *(v10 - 4);
    v13 = *(v3[4] - 8);
    if ((v11 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v37, v3, v3 + 3, (v11 >> 2) - 1);
      if ((*a1)[6])
      {
        v15 = 0;
        v16 = v37;
        do
        {
          if (v12)
          {
            v17 = &v4->i8[v16];
            v18 = v5;
            v19 = v12;
            do
            {
              v20 = *v17;
              if (v20 < 0)
              {
                v20 = -v20;
              }

              v18->i8[0] = v20;
              v18 = (v18 + 1);
              v17 += v13;
              --v19;
            }

            while (v19);
          }

          v21 = v39 - v38;
          v22 = (v39 - v38) >> 2;
          if (v22)
          {
            v23 = ((v21 << 30) - 0x100000000) >> 32;
            v24 = __p;
            v25 = v40;
            v26 = __p + 4 * v23;
            v27 = *v26;
            v28 = v38 + 4 * v23;
            if (v22 >= 2 && v27 == *v28 - 1)
            {
              v31 = (v21 >> 2) & 0x7FFFFFFF;
              v30 = v31 - 1;
              v32 = 4 * v31;
              v33 = v38 - 8;
              do
              {
                v34 = v30;
                *v26 = 0;
                v16 -= v25[v23] * (*v28 - 1);
                v37 = v16;
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
            v16 += v25[v30];
            v37 = v16;
          }

          v15 += v12;
          v5 = (v5 + v12);
        }

        while (v15 < (*a1)[6]);
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

      return;
    }

    if (!v12)
    {
      return;
    }
  }

  do
  {
    v36 = v4->i8[0];
    if (v36 < 0)
    {
      v36 = -v36;
    }

    v5->i8[0] = v36;
    v5 = (v5 + 1);
    v4 = (v4 + v13);
    --v12;
  }

  while (v12);
}

void mlx::core::unary_op<short,short,mlx::core::detail::Abs>(uint64_t **a1, uint64_t a2)
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
        *v5 = vabsq_s16(v8);
        v5[1] = vabsq_s16(v7);
        v5 += 2;
        v6 -= 16;
      }

      while (v6 > 0xF);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 2);
      v9 = v10;
      if (v10 < 0)
      {
        v9 = -v9;
      }

      v5->i16[0] = v9;
      v5 = (v5 + 2);
    }

    return;
  }

  v11 = v3[1];
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
  }

  else
  {
    v12 = v11 - *v3;
    v13 = *(v11 - 4);
    v14 = *(v3[4] - 8);
    if ((v12 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v43, v3, v3 + 3, (v12 >> 2) - 1);
      v16 = (*a1)[6];
      if (v16)
      {
        v17 = 0;
        v18 = v43;
        v19 = v46;
        v20 = (v45 - v44) >> 2;
        v21 = (((v45 - v44) << 30) - 0x100000000) >> 32;
        v22 = __p;
        v23 = __p + 4 * v21;
        v24 = v44 + 4 * v21;
        v25 = 2 * v14;
        v26 = 4 * (v20 & 0x7FFFFFFF);
        v27 = v44 - 8;
        do
        {
          if (v13)
          {
            v28 = v4 + v18;
            v29 = v5;
            v30 = v13;
            do
            {
              v31 = *v28;
              if (v31 < 0)
              {
                v31 = -v31;
              }

              v29->i16[0] = v31;
              v29 = (v29 + 2);
              v28 = (v28 + v25);
              --v30;
            }

            while (v30);
          }

          if (v20)
          {
            v32 = *v23;
            if (v20 >= 2 && v32 == *v24 - 1)
            {
              v33 = v22;
              v34 = v27;
              v35 = (v20 & 0x7FFFFFFF) - 1;
              v36 = v24;
              v37 = v23;
              v38 = v21;
              do
              {
                v39 = v35;
                *v37 = 0;
                v18 -= v19[v38] * (*v36 - 1);
                v43 = v18;
                --v35;
                v37 = &v33[v26 - 8];
                v32 = *v37;
                v33 -= 4;
                if (v39 < 2)
                {
                  break;
                }

                v36 = &v34[v26];
                v40 = *&v34[4 * (v20 & 0x7FFFFFFF)] - 1;
                v34 -= 4;
                v38 = v35;
              }

              while (v32 == v40);
              v41 = &v33[v26 - 4];
            }

            else
            {
              v35 = v21;
              v41 = v23;
            }

            *v41 = v32 + 1;
            v18 += v19[v35];
            v43 = v18;
          }

          v17 += v13;
          v5 = (v5 + 2 * v13);
        }

        while (v17 < v16);
        if (!v22)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v22 = __p;
        if (!__p)
        {
          goto LABEL_30;
        }
      }

      v49 = v22;
      operator delete(v22);
LABEL_30:
      if (v46)
      {
        v47 = v46;
        operator delete(v46);
      }

      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }

      return;
    }

    if (!v13)
    {
      return;
    }
  }

  do
  {
    v42 = *v4;
    if (v42 < 0)
    {
      v42 = -v42;
    }

    v5->i16[0] = v42;
    v5 = (v5 + 2);
    v4 = (v4 + 2 * v14);
    --v13;
  }

  while (v13);
}

void mlx::core::unary_op<int,int,mlx::core::detail::Abs>(uint64_t **a1, uint64_t a2)
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
        *v5 = vabsq_s32(v8);
        v5[1] = vabsq_s32(v7);
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 4);
      v9 = v10;
      if (v10 < 0)
      {
        v9 = -v9;
      }

      v5->i32[0] = v9;
      v5 = (v5 + 4);
    }

    return;
  }

  v11 = v3[1];
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
  }

  else
  {
    v12 = v11 - *v3;
    v13 = *(v11 - 4);
    v14 = *(v3[4] - 8);
    if ((v12 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v43, v3, v3 + 3, (v12 >> 2) - 1);
      v16 = (*a1)[6];
      if (v16)
      {
        v17 = 0;
        v18 = v43;
        v19 = v46;
        v20 = (v45 - v44) >> 2;
        v21 = (((v45 - v44) << 30) - 0x100000000) >> 32;
        v22 = __p;
        v23 = __p + 4 * v21;
        v24 = v44 + 4 * v21;
        v25 = 4 * v14;
        v26 = 4 * (v20 & 0x7FFFFFFF);
        v27 = v44 - 8;
        do
        {
          if (v13)
          {
            v28 = v4 + v18;
            v29 = v5;
            v30 = v13;
            do
            {
              v31 = *v28;
              if (*v28 < 0)
              {
                v31 = -v31;
              }

              v29->i32[0] = v31;
              v29 = (v29 + 4);
              v28 = (v28 + v25);
              --v30;
            }

            while (v30);
          }

          if (v20)
          {
            v32 = *v23;
            if (v20 >= 2 && v32 == *v24 - 1)
            {
              v33 = v22;
              v34 = v27;
              v35 = (v20 & 0x7FFFFFFF) - 1;
              v36 = v24;
              v37 = v23;
              v38 = v21;
              do
              {
                v39 = v35;
                *v37 = 0;
                v18 -= v19[v38] * (*v36 - 1);
                v43 = v18;
                --v35;
                v37 = &v33[v26 - 8];
                v32 = *v37;
                v33 -= 4;
                if (v39 < 2)
                {
                  break;
                }

                v36 = &v34[v26];
                v40 = *&v34[4 * (v20 & 0x7FFFFFFF)] - 1;
                v34 -= 4;
                v38 = v35;
              }

              while (v32 == v40);
              v41 = &v33[v26 - 4];
            }

            else
            {
              v35 = v21;
              v41 = v23;
            }

            *v41 = v32 + 1;
            v18 += v19[v35];
            v43 = v18;
          }

          v17 += v13;
          v5 = (v5 + 4 * v13);
        }

        while (v17 < v16);
        if (!v22)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v22 = __p;
        if (!__p)
        {
          goto LABEL_30;
        }
      }

      v49 = v22;
      operator delete(v22);
LABEL_30:
      if (v46)
      {
        v47 = v46;
        operator delete(v46);
      }

      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }

      return;
    }

    if (!v13)
    {
      return;
    }
  }

  do
  {
    v42 = *v4;
    if (*v4 < 0)
    {
      v42 = -v42;
    }

    v5->i32[0] = v42;
    v5 = (v5 + 4);
    v4 = (v4 + 4 * v14);
    --v13;
  }

  while (v13);
}

void mlx::core::unary_op<long long,long long,mlx::core::detail::Abs>(uint64_t **a1, uint64_t a2)
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
        *v5 = vabsq_s64(v8);
        v5[1] = vabsq_s64(v7);
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 8);
      v9 = v10;
      if (v10 < 0)
      {
        v9 = -v9;
      }

      v5->i64[0] = v9;
      v5 = (v5 + 8);
    }

    return;
  }

  v11 = v3[1];
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
  }

  else
  {
    v12 = v11 - *v3;
    v13 = *(v11 - 4);
    v14 = *(v3[4] - 8);
    if ((v12 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v43, v3, v3 + 3, (v12 >> 2) - 1);
      v16 = (*a1)[6];
      if (v16)
      {
        v17 = 0;
        v18 = v46;
        v19 = v43;
        v20 = (v45 - v44) >> 2;
        v21 = (((v45 - v44) << 30) - 0x100000000) >> 32;
        v22 = __p;
        v23 = __p + 4 * v21;
        v24 = v44 + 4 * v21;
        v25 = 8 * v14;
        v26 = 4 * (v20 & 0x7FFFFFFF);
        v27 = v44 - 8;
        do
        {
          if (v13)
          {
            v28 = v4 + v19;
            v29 = v5;
            v30 = v13;
            do
            {
              v31 = *v28;
              if (*v28 < 0)
              {
                v31 = -v31;
              }

              *v29++ = v31;
              v28 = (v28 + v25);
              --v30;
            }

            while (v30);
          }

          if (v20)
          {
            v32 = *v23;
            if (v20 >= 2 && v32 == *v24 - 1)
            {
              v33 = v22;
              v34 = v27;
              v35 = (v20 & 0x7FFFFFFF) - 1;
              v36 = v24;
              v37 = v23;
              v38 = v21;
              do
              {
                v39 = v35;
                *v37 = 0;
                v19 -= v18[v38] * (*v36 - 1);
                v43 = v19;
                --v35;
                v37 = &v33[v26 - 8];
                v32 = *v37;
                v33 -= 4;
                if (v39 < 2)
                {
                  break;
                }

                v36 = &v34[v26];
                v40 = *&v34[4 * (v20 & 0x7FFFFFFF)] - 1;
                v34 -= 4;
                v38 = v35;
              }

              while (v32 == v40);
              v41 = &v33[v26 - 4];
            }

            else
            {
              v35 = v21;
              v41 = v23;
            }

            *v41 = v32 + 1;
            v19 += v18[v35];
            v43 = v19;
          }

          v17 += v13;
          v5 = (v5 + 8 * v13);
        }

        while (v17 < v16);
        if (!v22)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v22 = __p;
        if (!__p)
        {
          goto LABEL_30;
        }
      }

      v49 = v22;
      operator delete(v22);
LABEL_30:
      if (v46)
      {
        v47 = v46;
        operator delete(v46);
      }

      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }

      return;
    }

    if (!v13)
    {
      return;
    }
  }

  do
  {
    v42 = *v4;
    if (*v4 < 0)
    {
      v42 = -v42;
    }

    v5->i64[0] = v42;
    v5 = (v5 + 8);
    v4 = (v4 + 8 * v14);
    --v13;
  }

  while (v13);
}

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Abs>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
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
        v8 = vabsq_f16(v7);
        *v5++ = v8;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = *v4++;
      *v8.i16 = fabsl(v9);
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
      *v8.i16 = fabsl(*v4);
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
          *v8.i16 = fabsl(*v27);
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

float mlx::core::unary_op<float,float,mlx::core::detail::Abs>(uint64_t **a1, uint64_t a2)
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
        v7 = *(v4 + 16);
        v4 += 32;
        v9 = v7 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL);
        *v5 = v8 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL);
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
      *&v9 = fabsf(v10);
      *v5 = v9;
      v5 = (v5 + 4);
    }

    return *&v9;
  }

  v11 = v3[1];
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_32:
      *&v9 = fabsf(*v4);
      *v5 = v9;
      v5 = (v5 + 4);
      v4 += 4 * v14;
      --v13;
    }

    while (v13);
    return *&v9;
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(v3[4] - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return *&v9;
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
        v28 = (v4 + 4 * v18);
        v29 = v5;
        v30 = v13;
        do
        {
          *&v9 = fabsf(*v28);
          *v29 = v9;
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

  return *&v9;
}

double mlx::core::unary_op<double,double,mlx::core::detail::Abs>(uint64_t **a1, uint64_t a2, int8x16_t a3)
{
  v4 = *a1;
  v5 = (*a1)[19];
  v6 = *(*a2 + 152);
  if ((*a1)[21])
  {
    v7 = v4[20];
    if (v7 >= 4)
    {
      v8.f64[0] = NAN;
      v8.f64[1] = NAN;
      a3 = vnegq_f64(v8);
      do
      {
        v10 = *v5;
        v9 = v5[1];
        v5 += 2;
        *v6 = vandq_s8(v10, a3);
        v6[1] = vandq_s8(v9, a3);
        v6 += 2;
        v7 -= 4;
      }

      while (v7 > 3);
    }

    for (; v7; --v7)
    {
      v11 = *v5->i64;
      v5 = (v5 + 8);
      *a3.i64 = fabs(v11);
      v6->i64[0] = a3.i64[0];
      v6 = (v6 + 8);
    }

    return *a3.i64;
  }

  v12 = v4[1];
  if (v12 == *v4)
  {
    v14 = 1;
    v15 = 1;
    do
    {
LABEL_33:
      *a3.i64 = fabs(*v5->i64);
      v6->i64[0] = a3.i64[0];
      v6 = (v6 + 8);
      v5 = (v5 + 8 * v15);
      --v14;
    }

    while (v14);
    return *a3.i64;
  }

  v13 = v12 - *v4;
  v14 = *(v12 - 4);
  v15 = *(v4[4] - 8);
  if ((v13 >> 2) <= 1)
  {
    if (!v14)
    {
      return *a3.i64;
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v43, v4, v4 + 3, (v13 >> 2) - 1);
  v17 = (*a1)[6];
  if (v17)
  {
    v18 = 0;
    v19 = v43;
    v20 = v46;
    v21 = (v45 - v44) >> 2;
    v22 = (((v45 - v44) << 30) - 0x100000000) >> 32;
    v23 = __p;
    v24 = __p + 4 * v22;
    v25 = v44 + 4 * v22;
    v26 = 8 * v15;
    v27 = 4 * (v21 & 0x7FFFFFFF);
    v28 = v44 - 8;
    do
    {
      if (v14)
      {
        v29 = &v5->i64[v19];
        v30 = v6;
        v31 = v14;
        do
        {
          *a3.i64 = fabs(*v29);
          *v30++ = a3.i64[0];
          v29 = (v29 + v26);
          --v31;
        }

        while (v31);
      }

      if (v21)
      {
        v32 = *v24;
        if (v21 >= 2 && v32 == *v25 - 1)
        {
          v33 = v23;
          v34 = v28;
          v35 = (v21 & 0x7FFFFFFF) - 1;
          v36 = v25;
          v37 = v24;
          v38 = v22;
          do
          {
            v39 = v35;
            *v37 = 0;
            v19 -= v20[v38] * (*v36 - 1);
            v43 = v19;
            --v35;
            v37 = &v33[v27 - 8];
            v32 = *v37;
            v33 -= 4;
            if (v39 < 2)
            {
              break;
            }

            v36 = &v34[v27];
            v40 = *&v34[4 * (v21 & 0x7FFFFFFF)] - 1;
            v34 -= 4;
            v38 = v35;
          }

          while (v32 == v40);
          v41 = &v33[v27 - 4];
        }

        else
        {
          v35 = v22;
          v41 = v24;
        }

        *v41 = v32 + 1;
        v19 += v20[v35];
        v43 = v19;
      }

      v18 += v14;
      v6 = (v6 + 8 * v14);
    }

    while (v18 < v17);
    if (!v23)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v23 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  v49 = v23;
  operator delete(v23);
LABEL_27:
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  return *a3.i64;
}

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Abs>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      *v5++ = (((*v4 << 16) & 0x7FFFFFFF) + (*v4 & 1u) + 0x7FFF) >> 16;
      ++v4;
    }

    return;
  }

  v7 = v3[1];
  if (v7 == *v3)
  {
    v9 = 1;
    v10 = 1;
    do
    {
LABEL_30:
      *v5++ = (((*v4 << 16) & 0x7FFFFFFF) + (*v4 & 1u) + 0x7FFF) >> 16;
      v4 += v10;
      --v9;
    }

    while (v9);
    return;
  }

  v8 = v7 - *v3;
  v9 = *(v7 - 4);
  v10 = *(v3[4] - 8);
  if ((v8 >> 2) <= 1)
  {
    if (!v9)
    {
      return;
    }

    goto LABEL_30;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v37, v3, v3 + 3, (v8 >> 2) - 1);
  v12 = (*a1)[6];
  if (v12)
  {
    v13 = 0;
    v14 = v37;
    v15 = v40;
    v16 = (v39 - v38) >> 2;
    v17 = (((v39 - v38) << 30) - 0x100000000) >> 32;
    v18 = __p;
    v19 = __p + 4 * v17;
    v20 = v38 + 4 * v17;
    v21 = 2 * v10;
    v22 = 4 * (v16 & 0x7FFFFFFF);
    v23 = v38 - 8;
    do
    {
      if (v9)
      {
        v24 = &v4[v14];
        v25 = v5;
        v26 = v9;
        do
        {
          *v25++ = (((*v24 << 16) & 0x7FFFFFFF) + (*v24 & 1u) + 0x7FFF) >> 16;
          v24 = (v24 + v21);
          --v26;
        }

        while (v26);
      }

      if (v16)
      {
        v27 = *v19;
        if (v16 >= 2 && v27 == *v20 - 1)
        {
          v28 = v18;
          v29 = v23;
          v30 = (v16 & 0x7FFFFFFF) - 1;
          v31 = v20;
          v32 = v19;
          v33 = v17;
          do
          {
            v34 = v30;
            *v32 = 0;
            v14 -= v15[v33] * (*v31 - 1);
            v37 = v14;
            --v30;
            v32 = &v28[v22 - 8];
            v27 = *v32;
            v28 -= 4;
            if (v34 < 2)
            {
              break;
            }

            v31 = &v29[v22];
            v35 = *&v29[4 * (v16 & 0x7FFFFFFF)] - 1;
            v29 -= 4;
            v33 = v30;
          }

          while (v27 == v35);
          v36 = &v28[v22 - 4];
        }

        else
        {
          v30 = v17;
          v36 = v19;
        }

        *v36 = v27 + 1;
        v14 += v15[v30];
        v37 = v14;
      }

      v13 += v9;
      v5 += v9;
    }

    while (v13 < v12);
    if (!v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v18 = __p;
    if (!__p)
    {
      goto LABEL_24;
    }
  }

  v43 = v18;
  operator delete(v18);
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

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Abs>(uint64_t **a1, uint64_t a2)
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
      *v5 = hypotf(v7, v8);
      v5[1] = 0.0;
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
    v36 = v4 + 1;
    v37 = v5 + 1;
    do
    {
      *(v37 - 1) = hypotf(*(v36 - 1), *v36);
      *v37 = 0.0;
      v37 += 2;
      v36 += 2 * v12;
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

  mlx::core::ContiguousIterator::ContiguousIterator(&v38, v3, v3 + 3, (v10 >> 2) - 1);
  if ((*a1)[6])
  {
    v14 = 0;
    v15 = v38;
    v16 = 8 * v12;
    v17 = v5 + 1;
    do
    {
      if (v11)
      {
        v18 = &v4[2 * v15 + 1];
        v19 = v17;
        v20 = v11;
        do
        {
          *(v19 - 1) = hypotf(*(v18 - 1), *v18);
          *v19 = 0.0;
          v19 += 2;
          v18 = (v18 + v16);
          --v20;
        }

        while (v20);
      }

      v21 = v40 - v39;
      v22 = (v40 - v39) >> 2;
      if (v22)
      {
        v23 = ((v21 << 30) - 0x100000000) >> 32;
        v24 = __p;
        v25 = v41;
        v26 = __p + 4 * v23;
        v27 = *v26;
        v28 = v39 + 4 * v23;
        if (v22 >= 2 && v27 == *v28 - 1)
        {
          v31 = (v21 >> 2) & 0x7FFFFFFF;
          v30 = v31 - 1;
          v32 = 4 * v31;
          v33 = v39 - 8;
          do
          {
            v34 = v30;
            *v26 = 0;
            v15 -= v25[v23] * (*v28 - 1);
            v38 = v15;
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
        v38 = v15;
      }

      v14 += v11;
      v17 += 2 * v11;
    }

    while (v14 < (*a1)[6]);
  }

  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A562BEC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
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

void sub_25A562DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFB030;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFB030;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFB030;
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

void std::__function::__func<std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_signed<mlx::core::detail::Abs>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Abs,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
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
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcCos&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A563170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcCos&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcCos&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A563244(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcCos&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcCos&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcCos&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
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

void sub_25A563428(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcCosEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFB128;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcCosEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFB128;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcCosEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFB128;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcCosEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcCosEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcCosEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcCosEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::ArcCos>(a1, a1 + 16);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::ArcCos>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::ArcCos>(a1, a1 + 16);
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcCos>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcCos>(a1, a1 + 16);
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

void sub_25A56389C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcCos>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = acosf(COERCE_FLOAT(*v4 << 16));
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
      v35 = acosf(COERCE_FLOAT(*v4 << 16));
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
          v22 = acosf(COERCE_FLOAT(*v19 << 16));
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

__int16 mlx::core::unary_op<half,half,mlx::core::detail::ArcCos>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
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
        v55 = _simd_acos_f4(vcvtq_f32_f16(*v7.i8));
        _Q0 = _simd_acos_f4(vcvt_hight_f32_f16(v7));
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

      _Q0.f32[0] = acosf(_S0);
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

      _Q0.f32[0] = acosf(_S0);
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

          _Q0.f32[0] = acosf(_S0);
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

void mlx::core::unary_op<float,float,mlx::core::detail::ArcCos>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_acos_f4(v7);
        v5[1] = _simd_acos_f4(xa);
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
      v5->f32[0] = acosf(v9);
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
      v5->f32[0] = acosf(v4->f32[0]);
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
          *v23++ = acosf(*v22);
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

void mlx::core::unary_op<double,double,mlx::core::detail::ArcCos>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_acos_d2(v7);
        v5[1] = _simd_acos_d2(xa);
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
      v5->f64[0] = acos(v9);
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
      v5->f64[0] = acos(v4->f64[0]);
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
          *v23++ = acos(*v22);
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

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcCos>(uint64_t **a1, uint64_t a2)
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
      std::acos[abi:ne200100]<float>(&v42);
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
      std::acos[abi:ne200100]<float>(&v42);
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
          std::acos[abi:ne200100]<float>(&v49);
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

void sub_25A56475C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void std::acos[abi:ne200100]<float>(float *a1)
{
  atan2(0.0, -0.0);
  v2 = *a1;
  if (fabsf(*a1) == INFINITY)
  {
    v3 = a1[1];
    if (fabsf(v3) != INFINITY)
    {
      v5 = *(a1 + 1);
      if (v2 >= 0.0 && v3 < 0.0)
      {
        v6 = *a1;
      }
    }
  }

  else
  {
    v4 = a1[1];
    if (fabsf(v4) != INFINITY && (v2 != 0.0 || v4 < 0.0 || v4 > 0.0))
    {
      v11[0] = ((v2 - v4) * (v2 + v4)) + -1.0;
      v11[1] = (v2 + v2) * v4;
      v7 = *a1 + std::sqrt[abi:ne200100]<float>(v11);
      v9 = v8 + a1[1];
      v10 = hypotf(v7, v9);
      logf(v10);
      atan2f(v9, v7);
    }
  }
}

float std::sqrt[abi:ne200100]<float>(float *a1)
{
  v3 = a1[1];
  result = INFINITY;
  if (fabsf(v3) != INFINITY)
  {
    result = *a1;
    if (fabsf(*a1) == INFINITY)
    {
      if (result <= 0.0)
      {
        return 0.0;
      }
    }

    else
    {
      v9 = v1;
      v10 = v2;
      v5 = v3;
      v6 = result;
      v8 = sqrtf(hypotf(result, v3));
      v7 = atan2f(v5, v6) * 0.5;
      std::polar[abi:ne200100]<float>(&v8, &v7);
    }
  }

  return result;
}

void std::polar[abi:ne200100]<float>(float *a1, float *a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    if (fabsf(*a2) == INFINITY)
    {
      if (fabsf(*a1) == INFINITY)
      {
        v2 = *a1;
      }
    }

    else
    {
      __sincosf_stret(*a2);
    }
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A564B2C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
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

void sub_25A564CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFB1A8;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFB1A8;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFB1A8;
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

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCos>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCos,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
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
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcCosh&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A5650B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcCosh&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcCosh&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A565184(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcCosh&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcCosh&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcCosh&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
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

void sub_25A565368(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcCoshEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFB2A0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcCoshEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFB2A0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcCoshEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFB2A0;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcCoshEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcCoshEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcCoshEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcCoshEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::ArcCosh>(a1, a1 + 16);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::ArcCosh>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::ArcCosh>(a1, a1 + 16);
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcCosh>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcCosh>(a1, a1 + 16);
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

void sub_25A5657DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcCosh>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = acoshf(COERCE_FLOAT(*v4 << 16));
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
          mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcCosh>(&v4[v31], &v5[v13], v10, v11);
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

  mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcCosh>(v30, v5, v10, v11);
}

__int16 mlx::core::unary_op<half,half,mlx::core::detail::ArcCosh>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
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
        v55 = _simd_acosh_f4(vcvtq_f32_f16(*v7.i8));
        _Q0 = _simd_acosh_f4(vcvt_hight_f32_f16(v7));
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

      _Q0.f32[0] = acoshf(_S0);
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

      _Q0.f32[0] = acoshf(_S0);
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

          _Q0.f32[0] = acoshf(_S0);
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

void mlx::core::unary_op<float,float,mlx::core::detail::ArcCosh>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_acosh_f4(v7);
        v5[1] = _simd_acosh_f4(xa);
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
      v5->f32[0] = acoshf(v9);
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
      v5->f32[0] = acoshf(v4->f32[0]);
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
          *v23++ = acoshf(*v22);
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

void mlx::core::unary_op<double,double,mlx::core::detail::ArcCosh>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_acosh_d2(v7);
        v5[1] = _simd_acosh_d2(xa);
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
      v5->f64[0] = acosh(v9);
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
      v5->f64[0] = acosh(v4->f64[0]);
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
          *v23++ = acosh(*v22);
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

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcCosh>(uint64_t **a1, uint64_t a2)
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
      std::acosh[abi:ne200100]<float>(&v42);
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
      std::acosh[abi:ne200100]<float>(&v42);
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
          std::acosh[abi:ne200100]<float>(&v49);
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

void sub_25A5665D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcCosh>(unsigned __int16 *a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
    v7 = 2 * a4;
    do
    {
      v8 = acoshf(COERCE_FLOAT(*a1 << 16));
      *a2++ = (LODWORD(v8) + (HIWORD(LODWORD(v8)) & 1u) + 0x7FFF) >> 16;
      a1 = (a1 + v7);
      --v4;
    }

    while (v4);
  }
}

void std::acosh[abi:ne200100]<float>(float *a1)
{
  atan2(0.0, -0.0);
  v2 = *a1;
  if (fabsf(*a1) == INFINITY)
  {
    if (fabsf(a1[1]) == INFINITY)
    {
      if (v2 > 0.0)
      {
        goto LABEL_11;
      }
    }

    else if (v2 >= 0.0)
    {
LABEL_11:
      v8 = *a1;
    }
  }

  else
  {
    v3 = a1[1];
    if (fabsf(v3) != INFINITY)
    {
      v9[0] = ((v2 - v3) * (v2 + v3)) + -1.0;
      v9[1] = (v2 + v2) * v3;
      v4 = *a1 + std::sqrt[abi:ne200100]<float>(v9);
      v6 = v5 + a1[1];
      v7 = hypotf(v4, v6);
      logf(v7);
      atan2f(v6, v4);
    }
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5668B0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
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

void sub_25A566A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFB320;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFB320;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFB320;
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

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcCosh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcCosh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
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
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcSin&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A566E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcSin&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcSin&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A566F08(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcSin&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcSin&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcSin&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
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

void sub_25A5670EC(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcSinEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFB418;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcSinEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFB418;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcSinEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFB418;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcSinEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcSinEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcSinEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcSinEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::ArcSin>(a1, a1 + 16);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::ArcSin>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::ArcSin>(a1, a1 + 16);
        break;
      case 13:

        *&result = mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcSin>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcSin>(a1, a1 + 16);
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

void sub_25A567560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcSin>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = asinf(COERCE_FLOAT(*v4 << 16));
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
      v35 = asinf(COERCE_FLOAT(*v4 << 16));
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
          v22 = asinf(COERCE_FLOAT(*v19 << 16));
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

__int16 mlx::core::unary_op<half,half,mlx::core::detail::ArcSin>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
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
        v55 = _simd_asin_f4(vcvtq_f32_f16(*v7.i8));
        _Q0 = _simd_asin_f4(vcvt_hight_f32_f16(v7));
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

      _Q0.f32[0] = asinf(_S0);
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

      _Q0.f32[0] = asinf(_S0);
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

          _Q0.f32[0] = asinf(_S0);
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

void mlx::core::unary_op<float,float,mlx::core::detail::ArcSin>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_asin_f4(v7);
        v5[1] = _simd_asin_f4(xa);
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
      v5->f32[0] = asinf(v9);
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
      v5->f32[0] = asinf(v4->f32[0]);
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
          *v23++ = asinf(*v22);
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

void mlx::core::unary_op<double,double,mlx::core::detail::ArcSin>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_asin_d2(v7);
        v5[1] = _simd_asin_d2(xa);
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
      v5->f64[0] = asin(v9);
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
      v5->f64[0] = asin(v4->f64[0]);
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
          *v23++ = asin(*v22);
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

float mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcSin>(uint64_t **a1, uint64_t a2)
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
      *&v35 = -v8;
      HIDWORD(v35) = v7;
      std::asinh[abi:ne200100]<float>(&v35);
      result = -v9;
      *v5 = v11;
      *(v5 + 4) = result;
      v5 += 8;
    }

    return result;
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
          result = mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcSin>(v4 + 8 * v35, v5 + 8 * v17, v14, v15);
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

      return result;
    }
  }

  v34 = (*a1)[19];

  return mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcSin>(v34, v5, v14, v15);
}

float mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcSin>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v12[0] = -*v5;
      v12[1] = v8;
      std::asinh[abi:ne200100]<float>(v12);
      result = -v9;
      *(v7 - 1) = v11;
      *v7 = result;
      v5 = (v5 + v6);
      v7 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

void std::asinh[abi:ne200100]<float>(float *a1)
{
  atan2(0.0, -0.0);
  v2 = *a1;
  if (fabsf(*a1) == INFINITY)
  {
    *(a1 + 1);
    v4 = *a1;
  }

  else
  {
    v3 = a1[1];
    if (fabsf(v3) != INFINITY)
    {
      v9[0] = ((v2 - v3) * (v2 + v3)) + 1.0;
      v9[1] = (v2 + v2) * v3;
      v5 = *a1 + std::sqrt[abi:ne200100]<float>(v9);
      v7 = v6 + a1[1];
      v8 = hypotf(v5, v7);
      logf(v8);
      atan2f(v7, v5);
    }
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A568680(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
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

void sub_25A568850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFB498;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFB498;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFB498;
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

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
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
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcSinh&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A568C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcSinh&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcSinh&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A568CD8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcSinh&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcSinh&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcSinh&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
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

void sub_25A568EBC(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcSinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFB590;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcSinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFB590;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcSinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFB590;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcSinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcSinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcSinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcSinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::ArcSinh>(a1, a1 + 16);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::ArcSinh>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::ArcSinh>(a1, a1 + 16);
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcSinh>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcSinh>(a1, a1 + 16);
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

void sub_25A569330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcSinh>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = asinhf(COERCE_FLOAT(*v4 << 16));
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
          mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcSinh>(&v4[v31], &v5[v13], v10, v11);
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

  mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcSinh>(v30, v5, v10, v11);
}

__int16 mlx::core::unary_op<half,half,mlx::core::detail::ArcSinh>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
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
        v55 = _simd_asinh_f4(vcvtq_f32_f16(*v7.i8));
        _Q0 = _simd_asinh_f4(vcvt_hight_f32_f16(v7));
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

      _Q0.f32[0] = asinhf(_S0);
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

      _Q0.f32[0] = asinhf(_S0);
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

          _Q0.f32[0] = asinhf(_S0);
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

void mlx::core::unary_op<float,float,mlx::core::detail::ArcSinh>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_asinh_f4(v7);
        v5[1] = _simd_asinh_f4(xa);
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
      v5->f32[0] = asinhf(v9);
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
      v5->f32[0] = asinhf(v4->f32[0]);
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
          *v23++ = asinhf(*v22);
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

void mlx::core::unary_op<double,double,mlx::core::detail::ArcSinh>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_asinh_d2(v7);
        v5[1] = _simd_asinh_d2(xa);
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
      v5->f64[0] = asinh(v9);
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
      v5->f64[0] = asinh(v4->f64[0]);
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
          *v23++ = asinh(*v22);
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

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcSinh>(uint64_t **a1, uint64_t a2)
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
      std::asinh[abi:ne200100]<float>(&v42);
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
      std::asinh[abi:ne200100]<float>(&v42);
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
          std::asinh[abi:ne200100]<float>(&v49);
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

void sub_25A56A12C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcSinh>(unsigned __int16 *a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
    v7 = 2 * a4;
    do
    {
      v8 = asinhf(COERCE_FLOAT(*a1 << 16));
      *a2++ = (LODWORD(v8) + (HIWORD(LODWORD(v8)) & 1u) + 0x7FFF) >> 16;
      a1 = (a1 + v7);
      --v4;
    }

    while (v4);
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A56A270(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
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

void sub_25A56A440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFB610;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFB610;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFB610;
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

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcSinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcSinh,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
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
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcTan&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A56A7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcTan&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcTan&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A56A8C8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcTan&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcTan&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcTan&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
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

void sub_25A56AAAC(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcTanEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFB708;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcTanEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFB708;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcTanEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFB708;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcTanEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcTanEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcTanEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail6ArcTanEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::ArcTan>(a1, a1 + 16);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::ArcTan>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::ArcTan>(a1, a1 + 16);
        break;
      case 13:

        *&result = mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcTan>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcTan>(a1, a1 + 16);
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

void sub_25A56AF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcTan>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = atanf(COERCE_FLOAT(*v4 << 16));
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
      v35 = atanf(COERCE_FLOAT(*v4 << 16));
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
          v22 = atanf(COERCE_FLOAT(*v19 << 16));
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

__int16 mlx::core::unary_op<half,half,mlx::core::detail::ArcTan>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
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
        v55 = _simd_atan_f4(vcvtq_f32_f16(*v7.i8));
        _Q0 = _simd_atan_f4(vcvt_hight_f32_f16(v7));
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

      _Q0.f32[0] = atanf(_S0);
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

      _Q0.f32[0] = atanf(_S0);
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

          _Q0.f32[0] = atanf(_S0);
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

void mlx::core::unary_op<float,float,mlx::core::detail::ArcTan>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_atan_f4(v7);
        v5[1] = _simd_atan_f4(xa);
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
      v5->f32[0] = atanf(v9);
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
      v5->f32[0] = atanf(v4->f32[0]);
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
          *v23++ = atanf(*v22);
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

void mlx::core::unary_op<double,double,mlx::core::detail::ArcTan>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_atan_d2(v7);
        v5[1] = _simd_atan_d2(xa);
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
      v5->f64[0] = atan(v9);
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
      v5->f64[0] = atan(v4->f64[0]);
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
          *v23++ = atan(*v22);
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

float mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcTan>(uint64_t **a1, uint64_t a2)
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
      *&v35 = -v8;
      HIDWORD(v35) = v7;
      std::atanh[abi:ne200100]<float>(&v35);
      result = -v9;
      *v5 = v11;
      *(v5 + 4) = result;
      v5 += 8;
    }

    return result;
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
          result = mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcTan>(v4 + 8 * v35, v5 + 8 * v17, v14, v15);
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

      return result;
    }
  }

  v34 = (*a1)[19];

  return mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcTan>(v34, v5, v14, v15);
}

float mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcTan>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v12[0] = -*v5;
      v12[1] = v8;
      std::atanh[abi:ne200100]<float>(v12);
      result = -v9;
      *(v7 - 1) = v11;
      *v7 = result;
      v5 = (v5 + v6);
      v7 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

void std::atanh[abi:ne200100]<float>(float *a1)
{
  atan2(0.0, -0.0);
  v2 = a1[1];
  if (fabsf(v2) == INFINITY)
  {
    v3 = *a1;
  }

  else
  {
    v4 = fabsf(*a1);
    if (v4 != INFINITY && (v4 != 1.0 || v2 != 0.0))
    {
      v5 = __divsc3(*a1 + 1.0, v2, 1.0 - *a1, -v2);
      v7 = v6;
      v8 = hypotf(v5, v6);
      logf(v8);
      atan2f(v7, v5);
      v9 = *a1;
      v10 = *(a1 + 1);
    }
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A56C028(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>>(void *a1, __int128 *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
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

void sub_25A56C1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlx::core::array::~array((v5 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFB788;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFB788;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFB788;
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

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTan>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTan,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, uint64_t a2)
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
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
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
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcTanh&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A56C5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v10 + 32));
  mlx::core::array::~array((v10 + 16));
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcTanh&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcTanh&&)::{lambda(void)#1}>(&a1[1].__m_.__sig, a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A56C680(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcTanh&&)::{lambda(void)#1}>(void *a1, uint64_t *a2)
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

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcTanh&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::ArcTanh&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
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

void sub_25A56C864(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcTanhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFB880;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcTanhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFB880;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcTanhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFB880;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcTanhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcTanhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcTanhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7ArcTanhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::unary_fp<mlx::core::detail::ArcTanh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::ArcTanh,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(*(a1 + 16) + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::ArcTanh>(a1, a1 + 16);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::ArcTanh>(a1, a1 + 16);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::ArcTanh>(a1, a1 + 16);
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcTanh>(a1, a1 + 16);
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcTanh>(a1, a1 + 16);
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

void sub_25A56CCD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcTanh>(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[19];
  v5 = *(*a2 + 152);
  if ((*a1)[21])
  {
    for (i = v3[20]; i; --i)
    {
      v7 = atanhf(COERCE_FLOAT(*v4 << 16));
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
          mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcTanh>(&v4[v31], &v5[v13], v10, v11);
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

  mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::ArcTanh>(v30, v5, v10, v11);
}

__int16 mlx::core::unary_op<half,half,mlx::core::detail::ArcTanh>@<H0>(uint64_t **a1@<X0>, uint64_t a2@<X1>)
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
        v55 = _simd_atanh_f4(vcvtq_f32_f16(*v7.i8));
        _Q0 = _simd_atanh_f4(vcvt_hight_f32_f16(v7));
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

      _Q0.f32[0] = atanhf(_S0);
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

      _Q0.f32[0] = atanhf(_S0);
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

          _Q0.f32[0] = atanhf(_S0);
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

void mlx::core::unary_op<float,float,mlx::core::detail::ArcTanh>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_atanh_f4(v7);
        v5[1] = _simd_atanh_f4(xa);
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
      v5->f32[0] = atanhf(v9);
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
      v5->f32[0] = atanhf(v4->f32[0]);
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
          *v23++ = atanhf(*v22);
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

void mlx::core::unary_op<double,double,mlx::core::detail::ArcTanh>(uint64_t **a1, uint64_t a2)
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
        v44 = _simd_atanh_d2(v7);
        v5[1] = _simd_atanh_d2(xa);
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
      v5->f64[0] = atanh(v9);
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
      v5->f64[0] = atanh(v4->f64[0]);
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
          *v23++ = atanh(*v22);
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

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::ArcTanh>(uint64_t **a1, uint64_t a2)
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
      std::atanh[abi:ne200100]<float>(&v42);
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
      std::atanh[abi:ne200100]<float>(&v42);
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
          std::atanh[abi:ne200100]<float>(&v49);
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