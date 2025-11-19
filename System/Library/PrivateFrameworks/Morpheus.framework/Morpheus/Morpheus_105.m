_OWORD *mlx::core::strided_reduce<long long,long long,mlx::core::MaxReduce>(_OWORD *result, int64x2_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 4)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vbslq_s8(vcgtq_s64(v8, v5[1]), v8, v5[1]);
          *v5 = vbslq_s8(vcgtq_s64(v7, *v5), v7, *v5);
          v5[1] = v9;
          v5 += 2;
          v6 -= 4;
        }

        while (v6 > 3);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 8);
        v10 = v11;
        if (v5->i64[0] > v11)
        {
          v10 = v5->i64[0];
        }

        v5->i64[0] = v10;
        v5 = (v5 + 8);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07A98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 8 * **(result + 16) + 8 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_f64(v5);
  v7 = v6;
  if (v4 < 4)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vbslq_s8(vcgtq_s64(v9, v7), v9, v7);
      v6 = vbslq_s8(vcgtq_s64(v8, v6), v8, v6);
      v10 = v4 - 4;
      v11 = v4 > 7;
      v4 -= 4;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vbslq_s8(vcgtq_s64(v6, v7), v6, v7);
  v14 = v13.i64[1];
  if (v13.i64[1] <= v13.i64[0])
  {
    v14 = v13.i64[0];
  }

  if (v12 <= v14)
  {
    v12 = v14;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v15 = v10 + 1;
    do
    {
      v17 = *v2;
      v2 = (v2 + 8);
      v16 = v17;
      if (v12 <= v17)
      {
        v12 = v16;
      }

      *v3 = v12;
      --v15;
    }

    while (v15 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07B18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07B98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 8 * **(result + 24) + 8 * *a2);
  if (*v2 > v3)
  {
    v3 = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_OWORD *mlx::core::strided_reduce<long long,long long,mlx::core::MinReduce>(_OWORD *result, int64x2_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 4)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vbslq_s8(vcgtq_s64(v8, v5[1]), v5[1], v8);
          *v5 = vbslq_s8(vcgtq_s64(v7, *v5), *v5, v7);
          v5[1] = v9;
          v5 += 2;
          v6 -= 4;
        }

        while (v6 > 3);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 8);
        v10 = v11;
        if (v5->i64[0] < v11)
        {
          v10 = v5->i64[0];
        }

        v5->i64[0] = v10;
        v5 = (v5 + 8);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07C18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 8 * **(result + 16) + 8 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_f64(v5);
  v7 = v6;
  if (v4 < 4)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vbslq_s8(vcgtq_s64(v9, v7), v7, v9);
      v6 = vbslq_s8(vcgtq_s64(v8, v6), v6, v8);
      v10 = v4 - 4;
      v11 = v4 > 7;
      v4 -= 4;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vbslq_s8(vcgtq_s64(v6, v7), v7, v6);
  v14 = v13.i64[1];
  if (v13.i64[1] >= v13.i64[0])
  {
    v14 = v13.i64[0];
  }

  if (v12 >= v14)
  {
    v12 = v14;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v15 = v10 + 1;
    do
    {
      v17 = *v2;
      v2 = (v2 + 8);
      v16 = v17;
      if (v12 >= v17)
      {
        v12 = v16;
      }

      *v3 = v12;
      --v15;
    }

    while (v15 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07C98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07D18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 8 * **(result + 24) + 8 * *a2);
  if (*v2 < v3)
  {
    v3 = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,long long)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<half,half,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, int **a3, float a4)
{
  v116 = *MEMORY[0x277D85DE8];
  v112 = LOWORD(a4);
  mlx::core::get_reduction_plan(a1, a3, &v107);
  v9 = *a1;
  v10 = (*a1)[19];
  v11 = *a2;
  v12 = *(*a2 + 152);
  v105 = v12;
  v106 = v10;
  if (v107 == 1)
  {
    v13 = v109;
    if (v109 - v108 != 4)
    {
      goto LABEL_11;
    }

    if (*(v11 + 48))
    {
      v14 = 0;
      v15 = *v108;
      do
      {
        *v12 = *&a4;
        *v8.i32 = a4;
        mlx::core::contiguous_reduce<half,half,mlx::core::MaxReduce>(v10, v12, v15, v8);
        ++v14;
        v12 = v105 + 1;
        v10 = (v106 + 2 * v15);
        ++v105;
        v106 = v10;
      }

      while (*(*a2 + 48) > v14);
    }
  }

  else
  {
    if (!v107)
    {
      *v12 = *&a4;
      *v8.i32 = a4;
      mlx::core::contiguous_reduce<half,half,mlx::core::MaxReduce>(v10, v12, *(v9 + 12), v8);
      goto LABEL_108;
    }

    if ((v107 & 0xFFFFFFFD) == 1)
    {
      v13 = v109;
LABEL_11:
      v16 = *(v13 - 1);
      v109 = v13 - 4;
      v111 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v101);
      v18 = *(*a2 + 48);
      if (v109 == v108)
      {
        if (v18)
        {
          v27 = 0;
          do
          {
            v28 = v101;
            v29 = (v102 - v101) >> 2;
            v30 = (v29 - 1);
            if (v29 - 1 < 0)
            {
              v36 = 0;
              v34 = a2;
            }

            else
            {
              v31 = 0;
              v32 = __p;
              quot = v27;
              v34 = a2;
              do
              {
                v35 = ldiv(quot, v28[v30]);
                quot = v35.quot;
                v31 += v32[v30--] * v35.rem;
              }

              while (v30 != -1);
              v36 = 2 * v31;
            }

            v37 = v105;
            *v105 = *&a4;
            *v17.i32 = a4;
            mlx::core::contiguous_reduce<half,half,mlx::core::MaxReduce>((v106 + v36), v37, v16, v17);
            ++v27;
            ++v105;
          }

          while (*(*v34 + 48) > v27);
        }
      }

      else if (v18)
      {
        v19 = v101;
        v20 = (v102 - v101) >> 2;
        v21 = (v20 - 1);
        if (v20 - 1 >= 0)
        {
          v22 = 0;
          v23 = __p;
          v24 = 0;
          do
          {
            v25 = ldiv(v24, v19[v21]);
            v24 = v25.quot;
            v22 += v23[v21--] * v25.rem;
          }

          while (v21 != -1);
        }

        *v105 = v112;
        v115 = 0;
        operator new();
      }

LABEL_104:
      if (__p)
      {
        v104 = __p;
        operator delete(__p);
      }

      if (v101)
      {
        v102 = v101;
        operator delete(v101);
      }

      goto LABEL_108;
    }

    if (v107 != 2)
    {
      if (v107 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v101);
        if (*(*a2 + 48))
        {
          v38 = v101;
          v39 = (v102 - v101) >> 2;
          v40 = (v39 - 1);
          if (v39 - 1 >= 0)
          {
            v41 = 0;
            v42 = __p;
            v43 = 0;
            do
            {
              v44 = ldiv(v43, v38[v40]);
              v43 = v44.quot;
              v41 += v42[v40--] * v44.rem;
            }

            while (v40 != -1);
          }

          v113 = 0;
          operator new();
        }

        goto LABEL_104;
      }

      if (v107 != 4)
      {
        goto LABEL_108;
      }

      v26 = v109;
      goto LABEL_57;
    }

    v26 = v109;
    if (v109 - v108 != 4)
    {
LABEL_57:
      v55 = *(v26 - 1);
      v56 = *(v111 - 1);
      v109 = v26 - 4;
      v111 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v101);
      v57 = *(*a2 + 48);
      if (v109 == v108)
      {
        if (v57)
        {
          v75 = 0;
          v76 = vdupq_n_s64(v56 - 1);
          v77 = xmmword_25A9C2E70;
          v78 = xmmword_25A9C2E80;
          v79 = xmmword_25A99B0C0;
          v80 = xmmword_25A99B0D0;
          v99 = v76;
          do
          {
            v81 = v101;
            v82 = (v102 - v101) >> 2;
            v83 = (v82 - 1);
            if (v82 - 1 < 0)
            {
              v89 = 0;
              v87 = a2;
            }

            else
            {
              v84 = 0;
              v85 = __p;
              v86 = v75;
              v87 = a2;
              do
              {
                v88 = ldiv(v86, v81[v83]);
                v86 = v88.quot;
                v84 += v85[v83--] * v88.rem;
              }

              while (v83 != -1);
              v89 = 2 * v84;
              v77 = xmmword_25A9C2E70;
              v76 = v99;
              v79 = xmmword_25A99B0C0;
              v78 = xmmword_25A9C2E80;
              v80 = xmmword_25A99B0D0;
            }

            v90 = v105;
            if (v56)
            {
              v91 = 0;
              v92 = v105 + 4;
              do
              {
                v93 = vdupq_n_s64(v91);
                v94 = vmovn_s64(vcgeq_u64(v76, vorrq_s8(v93, v80)));
                if (vuzp1_s8(vuzp1_s16(v94, *v93.i8), *v93.i8).u8[0])
                {
                  *(v92 - 4) = LOWORD(a4);
                }

                if (vuzp1_s8(vuzp1_s16(v94, *&v93), *&v93).i8[1])
                {
                  *(v92 - 3) = LOWORD(a4);
                }

                if (vuzp1_s8(vuzp1_s16(*&v93, vmovn_s64(vcgeq_u64(v76, vorrq_s8(v93, v79)))), *&v93).i8[2])
                {
                  *(v92 - 2) = LOWORD(a4);
                  *(v92 - 1) = LOWORD(a4);
                }

                v95 = vmovn_s64(vcgeq_u64(v76, vorrq_s8(v93, v78)));
                if (vuzp1_s8(*&v93, vuzp1_s16(v95, *&v93)).i32[1])
                {
                  *v92 = LOWORD(a4);
                }

                if (vuzp1_s8(*&v93, vuzp1_s16(v95, *&v93)).i8[5])
                {
                  v92[1] = LOWORD(a4);
                }

                v96 = vmovn_s64(vcgeq_u64(v76, vorrq_s8(v93, v77)));
                if (vuzp1_s8(*&v96, vuzp1_s16(v96, v96)).i8[6])
                {
                  v92[2] = LOWORD(a4);
                }

                v97 = vuzp1_s16(v96, v96);
                if (vuzp1_s8(v97, v97).i8[7])
                {
                  v92[3] = LOWORD(a4);
                }

                v91 += 8;
                v92 += 8;
              }

              while (((v56 + 7) & 0xFFFFFFFFFFFFFFF8) != v91);
            }

            mlx::core::strided_reduce<half,half,mlx::core::MaxReduce>((v106 + v89), v90, v55, v56);
            v105 += v56;
            v75 += v56;
            v77 = xmmword_25A9C2E70;
            v76 = v99;
            v79 = xmmword_25A99B0C0;
            v78 = xmmword_25A9C2E80;
            v80 = xmmword_25A99B0D0;
          }

          while (*(*v87 + 48) > v75);
        }
      }

      else if (v57)
      {
        v58 = xmmword_25A9C2E70;
        v59 = xmmword_25A9C2E80;
        v60 = xmmword_25A99B0C0;
        v61 = xmmword_25A99B0D0;
        v62 = v101;
        v63 = (v102 - v101) >> 2;
        v64 = (v63 - 1);
        if (v63 - 1 >= 0)
        {
          v65 = 0;
          v66 = __p;
          v67 = 0;
          do
          {
            v68 = ldiv(v67, v62[v64]);
            v67 = v68.quot;
            v65 += v66[v64--] * v68.rem;
          }

          while (v64 != -1);
          v59 = xmmword_25A9C2E80;
          v58 = xmmword_25A9C2E70;
          v61 = xmmword_25A99B0D0;
          v60 = xmmword_25A99B0C0;
        }

        if (v56)
        {
          v69 = 0;
          v70 = vdupq_n_s64(v56 - 1);
          v71 = v105 + 4;
          do
          {
            v72 = vdupq_n_s64(v69);
            v73 = vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, v61)));
            if (vuzp1_s8(vuzp1_s16(v73, *v70.i8), *v70.i8).u8[0])
            {
              *(v71 - 4) = LOWORD(a4);
            }

            if (vuzp1_s8(vuzp1_s16(v73, *&v70), *&v70).i8[1])
            {
              *(v71 - 3) = LOWORD(a4);
            }

            if (vuzp1_s8(vuzp1_s16(*&v70, vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, v60)))), *&v70).i8[2])
            {
              *(v71 - 2) = LOWORD(a4);
              *(v71 - 1) = LOWORD(a4);
            }

            v74 = vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, v59)));
            if (vuzp1_s8(*&v70, vuzp1_s16(v74, *&v70)).i32[1])
            {
              *v71 = LOWORD(a4);
            }

            if (vuzp1_s8(*&v70, vuzp1_s16(v74, *&v70)).i8[5])
            {
              v71[1] = LOWORD(a4);
            }

            if (vuzp1_s8(*&v70, vuzp1_s16(*&v70, vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, v58))))).i8[6])
            {
              v71[2] = LOWORD(a4);
              v71[3] = LOWORD(a4);
            }

            v69 += 8;
            v71 += 8;
          }

          while (((v56 + 7) & 0xFFFFFFFFFFFFFFF8) != v69);
        }

        v114 = 0;
        operator new();
      }

      goto LABEL_104;
    }

    v45 = *(v109 - 1);
    v46 = *(v111 - 1);
    v109 -= 4;
    v111 -= 8;
    if (*(v11 + 48))
    {
      LODWORD(v47) = 0;
      v100 = vdupq_n_s64(v46 - 1);
      do
      {
        if (v46)
        {
          v48 = 0;
          v49 = v12 + 4;
          do
          {
            v50 = vdupq_n_s64(v48);
            v51 = vmovn_s64(vcgeq_u64(v100, vorrq_s8(v50, xmmword_25A99B0D0)));
            if (vuzp1_s8(vuzp1_s16(v51, *v50.i8), *v50.i8).u8[0])
            {
              *(v49 - 4) = LOWORD(a4);
            }

            if (vuzp1_s8(vuzp1_s16(v51, *&v50), *&v50).i8[1])
            {
              *(v49 - 3) = LOWORD(a4);
            }

            if (vuzp1_s8(vuzp1_s16(*&v50, vmovn_s64(vcgeq_u64(v100, vorrq_s8(v50, xmmword_25A99B0C0)))), *&v50).i8[2])
            {
              *(v49 - 2) = LOWORD(a4);
              *(v49 - 1) = LOWORD(a4);
            }

            v52 = vmovn_s64(vcgeq_u64(v100, vorrq_s8(v50, xmmword_25A9C2E80)));
            if (vuzp1_s8(*&v50, vuzp1_s16(v52, *&v50)).i32[1])
            {
              *v49 = LOWORD(a4);
            }

            if (vuzp1_s8(*&v50, vuzp1_s16(v52, *&v50)).i8[5])
            {
              v49[1] = LOWORD(a4);
            }

            v53 = vmovn_s64(vcgeq_u64(v100, vorrq_s8(v50, xmmword_25A9C2E70)));
            if (vuzp1_s8(*&v53, vuzp1_s16(v53, v53)).i8[6])
            {
              v49[2] = LOWORD(a4);
            }

            v54 = vuzp1_s16(v53, v53);
            if (vuzp1_s8(v54, v54).i8[7])
            {
              v49[3] = LOWORD(a4);
            }

            v48 += 8;
            v49 += 8;
          }

          while (((v46 + 7) & 0xFFFFFFFFFFFFFFF8) != v48);
        }

        mlx::core::strided_reduce<half,half,mlx::core::MaxReduce>(v10, v12, v45, v46);
        v10 = (v106 + 2 * v46 * v45);
        v12 = &v105[v46];
        v105 = v12;
        v106 = v10;
        v47 = v47 + v46;
      }

      while (v47 < *(*a2 + 48));
    }
  }

LABEL_108:
  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  v98 = *MEMORY[0x277D85DE8];
}

void mlx::core::reduction_op<half,half,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, int **a3, float a4)
{
  v116 = *MEMORY[0x277D85DE8];
  v112 = LOWORD(a4);
  mlx::core::get_reduction_plan(a1, a3, &v107);
  v9 = *a1;
  v10 = (*a1)[19];
  v11 = *a2;
  v12 = *(*a2 + 152);
  v105 = v12;
  v106 = v10;
  if (v107 == 1)
  {
    v13 = v109;
    if (v109 - v108 != 4)
    {
      goto LABEL_11;
    }

    if (*(v11 + 48))
    {
      v14 = 0;
      v15 = *v108;
      do
      {
        *v12 = *&a4;
        *v8.i32 = a4;
        mlx::core::contiguous_reduce<half,half,mlx::core::MinReduce>(v10, v12, v15, v8);
        ++v14;
        v12 = v105 + 1;
        v10 = (v106 + 2 * v15);
        ++v105;
        v106 = v10;
      }

      while (*(*a2 + 48) > v14);
    }
  }

  else
  {
    if (!v107)
    {
      *v12 = *&a4;
      *v8.i32 = a4;
      mlx::core::contiguous_reduce<half,half,mlx::core::MinReduce>(v10, v12, *(v9 + 12), v8);
      goto LABEL_108;
    }

    if ((v107 & 0xFFFFFFFD) == 1)
    {
      v13 = v109;
LABEL_11:
      v16 = *(v13 - 1);
      v109 = v13 - 4;
      v111 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v101);
      v18 = *(*a2 + 48);
      if (v109 == v108)
      {
        if (v18)
        {
          v27 = 0;
          do
          {
            v28 = v101;
            v29 = (v102 - v101) >> 2;
            v30 = (v29 - 1);
            if (v29 - 1 < 0)
            {
              v36 = 0;
              v34 = a2;
            }

            else
            {
              v31 = 0;
              v32 = __p;
              quot = v27;
              v34 = a2;
              do
              {
                v35 = ldiv(quot, v28[v30]);
                quot = v35.quot;
                v31 += v32[v30--] * v35.rem;
              }

              while (v30 != -1);
              v36 = 2 * v31;
            }

            v37 = v105;
            *v105 = *&a4;
            *v17.i32 = a4;
            mlx::core::contiguous_reduce<half,half,mlx::core::MinReduce>((v106 + v36), v37, v16, v17);
            ++v27;
            ++v105;
          }

          while (*(*v34 + 48) > v27);
        }
      }

      else if (v18)
      {
        v19 = v101;
        v20 = (v102 - v101) >> 2;
        v21 = (v20 - 1);
        if (v20 - 1 >= 0)
        {
          v22 = 0;
          v23 = __p;
          v24 = 0;
          do
          {
            v25 = ldiv(v24, v19[v21]);
            v24 = v25.quot;
            v22 += v23[v21--] * v25.rem;
          }

          while (v21 != -1);
        }

        *v105 = v112;
        v115 = 0;
        operator new();
      }

LABEL_104:
      if (__p)
      {
        v104 = __p;
        operator delete(__p);
      }

      if (v101)
      {
        v102 = v101;
        operator delete(v101);
      }

      goto LABEL_108;
    }

    if (v107 != 2)
    {
      if (v107 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v101);
        if (*(*a2 + 48))
        {
          v38 = v101;
          v39 = (v102 - v101) >> 2;
          v40 = (v39 - 1);
          if (v39 - 1 >= 0)
          {
            v41 = 0;
            v42 = __p;
            v43 = 0;
            do
            {
              v44 = ldiv(v43, v38[v40]);
              v43 = v44.quot;
              v41 += v42[v40--] * v44.rem;
            }

            while (v40 != -1);
          }

          v113 = 0;
          operator new();
        }

        goto LABEL_104;
      }

      if (v107 != 4)
      {
        goto LABEL_108;
      }

      v26 = v109;
      goto LABEL_57;
    }

    v26 = v109;
    if (v109 - v108 != 4)
    {
LABEL_57:
      v55 = *(v26 - 1);
      v56 = *(v111 - 1);
      v109 = v26 - 4;
      v111 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v101);
      v57 = *(*a2 + 48);
      if (v109 == v108)
      {
        if (v57)
        {
          v75 = 0;
          v76 = vdupq_n_s64(v56 - 1);
          v77 = xmmword_25A9C2E70;
          v78 = xmmword_25A9C2E80;
          v79 = xmmword_25A99B0C0;
          v80 = xmmword_25A99B0D0;
          v99 = v76;
          do
          {
            v81 = v101;
            v82 = (v102 - v101) >> 2;
            v83 = (v82 - 1);
            if (v82 - 1 < 0)
            {
              v89 = 0;
              v87 = a2;
            }

            else
            {
              v84 = 0;
              v85 = __p;
              v86 = v75;
              v87 = a2;
              do
              {
                v88 = ldiv(v86, v81[v83]);
                v86 = v88.quot;
                v84 += v85[v83--] * v88.rem;
              }

              while (v83 != -1);
              v89 = 2 * v84;
              v77 = xmmword_25A9C2E70;
              v76 = v99;
              v79 = xmmword_25A99B0C0;
              v78 = xmmword_25A9C2E80;
              v80 = xmmword_25A99B0D0;
            }

            v90 = v105;
            if (v56)
            {
              v91 = 0;
              v92 = v105 + 4;
              do
              {
                v93 = vdupq_n_s64(v91);
                v94 = vmovn_s64(vcgeq_u64(v76, vorrq_s8(v93, v80)));
                if (vuzp1_s8(vuzp1_s16(v94, *v93.i8), *v93.i8).u8[0])
                {
                  *(v92 - 4) = LOWORD(a4);
                }

                if (vuzp1_s8(vuzp1_s16(v94, *&v93), *&v93).i8[1])
                {
                  *(v92 - 3) = LOWORD(a4);
                }

                if (vuzp1_s8(vuzp1_s16(*&v93, vmovn_s64(vcgeq_u64(v76, vorrq_s8(v93, v79)))), *&v93).i8[2])
                {
                  *(v92 - 2) = LOWORD(a4);
                  *(v92 - 1) = LOWORD(a4);
                }

                v95 = vmovn_s64(vcgeq_u64(v76, vorrq_s8(v93, v78)));
                if (vuzp1_s8(*&v93, vuzp1_s16(v95, *&v93)).i32[1])
                {
                  *v92 = LOWORD(a4);
                }

                if (vuzp1_s8(*&v93, vuzp1_s16(v95, *&v93)).i8[5])
                {
                  v92[1] = LOWORD(a4);
                }

                v96 = vmovn_s64(vcgeq_u64(v76, vorrq_s8(v93, v77)));
                if (vuzp1_s8(*&v96, vuzp1_s16(v96, v96)).i8[6])
                {
                  v92[2] = LOWORD(a4);
                }

                v97 = vuzp1_s16(v96, v96);
                if (vuzp1_s8(v97, v97).i8[7])
                {
                  v92[3] = LOWORD(a4);
                }

                v91 += 8;
                v92 += 8;
              }

              while (((v56 + 7) & 0xFFFFFFFFFFFFFFF8) != v91);
            }

            mlx::core::strided_reduce<half,half,mlx::core::MinReduce>((v106 + v89), v90, v55, v56);
            v105 += v56;
            v75 += v56;
            v77 = xmmword_25A9C2E70;
            v76 = v99;
            v79 = xmmword_25A99B0C0;
            v78 = xmmword_25A9C2E80;
            v80 = xmmword_25A99B0D0;
          }

          while (*(*v87 + 48) > v75);
        }
      }

      else if (v57)
      {
        v58 = xmmword_25A9C2E70;
        v59 = xmmword_25A9C2E80;
        v60 = xmmword_25A99B0C0;
        v61 = xmmword_25A99B0D0;
        v62 = v101;
        v63 = (v102 - v101) >> 2;
        v64 = (v63 - 1);
        if (v63 - 1 >= 0)
        {
          v65 = 0;
          v66 = __p;
          v67 = 0;
          do
          {
            v68 = ldiv(v67, v62[v64]);
            v67 = v68.quot;
            v65 += v66[v64--] * v68.rem;
          }

          while (v64 != -1);
          v59 = xmmword_25A9C2E80;
          v58 = xmmword_25A9C2E70;
          v61 = xmmword_25A99B0D0;
          v60 = xmmword_25A99B0C0;
        }

        if (v56)
        {
          v69 = 0;
          v70 = vdupq_n_s64(v56 - 1);
          v71 = v105 + 4;
          do
          {
            v72 = vdupq_n_s64(v69);
            v73 = vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, v61)));
            if (vuzp1_s8(vuzp1_s16(v73, *v70.i8), *v70.i8).u8[0])
            {
              *(v71 - 4) = LOWORD(a4);
            }

            if (vuzp1_s8(vuzp1_s16(v73, *&v70), *&v70).i8[1])
            {
              *(v71 - 3) = LOWORD(a4);
            }

            if (vuzp1_s8(vuzp1_s16(*&v70, vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, v60)))), *&v70).i8[2])
            {
              *(v71 - 2) = LOWORD(a4);
              *(v71 - 1) = LOWORD(a4);
            }

            v74 = vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, v59)));
            if (vuzp1_s8(*&v70, vuzp1_s16(v74, *&v70)).i32[1])
            {
              *v71 = LOWORD(a4);
            }

            if (vuzp1_s8(*&v70, vuzp1_s16(v74, *&v70)).i8[5])
            {
              v71[1] = LOWORD(a4);
            }

            if (vuzp1_s8(*&v70, vuzp1_s16(*&v70, vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, v58))))).i8[6])
            {
              v71[2] = LOWORD(a4);
              v71[3] = LOWORD(a4);
            }

            v69 += 8;
            v71 += 8;
          }

          while (((v56 + 7) & 0xFFFFFFFFFFFFFFF8) != v69);
        }

        v114 = 0;
        operator new();
      }

      goto LABEL_104;
    }

    v45 = *(v109 - 1);
    v46 = *(v111 - 1);
    v109 -= 4;
    v111 -= 8;
    if (*(v11 + 48))
    {
      LODWORD(v47) = 0;
      v100 = vdupq_n_s64(v46 - 1);
      do
      {
        if (v46)
        {
          v48 = 0;
          v49 = v12 + 4;
          do
          {
            v50 = vdupq_n_s64(v48);
            v51 = vmovn_s64(vcgeq_u64(v100, vorrq_s8(v50, xmmword_25A99B0D0)));
            if (vuzp1_s8(vuzp1_s16(v51, *v50.i8), *v50.i8).u8[0])
            {
              *(v49 - 4) = LOWORD(a4);
            }

            if (vuzp1_s8(vuzp1_s16(v51, *&v50), *&v50).i8[1])
            {
              *(v49 - 3) = LOWORD(a4);
            }

            if (vuzp1_s8(vuzp1_s16(*&v50, vmovn_s64(vcgeq_u64(v100, vorrq_s8(v50, xmmword_25A99B0C0)))), *&v50).i8[2])
            {
              *(v49 - 2) = LOWORD(a4);
              *(v49 - 1) = LOWORD(a4);
            }

            v52 = vmovn_s64(vcgeq_u64(v100, vorrq_s8(v50, xmmword_25A9C2E80)));
            if (vuzp1_s8(*&v50, vuzp1_s16(v52, *&v50)).i32[1])
            {
              *v49 = LOWORD(a4);
            }

            if (vuzp1_s8(*&v50, vuzp1_s16(v52, *&v50)).i8[5])
            {
              v49[1] = LOWORD(a4);
            }

            v53 = vmovn_s64(vcgeq_u64(v100, vorrq_s8(v50, xmmword_25A9C2E70)));
            if (vuzp1_s8(*&v53, vuzp1_s16(v53, v53)).i8[6])
            {
              v49[2] = LOWORD(a4);
            }

            v54 = vuzp1_s16(v53, v53);
            if (vuzp1_s8(v54, v54).i8[7])
            {
              v49[3] = LOWORD(a4);
            }

            v48 += 8;
            v49 += 8;
          }

          while (((v46 + 7) & 0xFFFFFFFFFFFFFFF8) != v48);
        }

        mlx::core::strided_reduce<half,half,mlx::core::MinReduce>(v10, v12, v45, v46);
        v10 = (v106 + 2 * v46 * v45);
        v12 = &v105[v46];
        v105 = v12;
        v106 = v10;
        v47 = v47 + v46;
      }

      while (v47 < *(*a2 + 48));
    }
  }

LABEL_108:
  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  v98 = *MEMORY[0x277D85DE8];
}

uint64_t mlx::core::contiguous_reduce<half,half,mlx::core::MaxReduce>(float16x8_t *a1, short float *a2, int a3, int16x4_t a4)
{
  v6 = vdupq_lane_s16(a4, 0);
  if (a3 < 8)
  {
    v8 = a3;
  }

  else
  {
    do
    {
      v7 = *a1++;
      v6 = vmaxnmq_f16(v7, v6);
      v8 = a3 - 8;
      v9 = a3 > 0xF;
      a3 -= 8;
    }

    while (v9);
  }

  v10 = *a2;
  result = __fmaxf16();
  if (v10 > v12)
  {
    v12 = v10;
  }

  *a2 = v12;
  if (v8 >= 1)
  {
    v13 = v8 + 1;
    do
    {
      v14 = *a1->i16;
      a1 = (a1 + 2);
      v15 = v14;
      if (v12 <= v14)
      {
        v12 = v15;
      }

      *a2 = v12;
      --v13;
    }

    while (v13 > 1);
  }

  return result;
}

float16x8_t *mlx::core::strided_reduce<half,half,mlx::core::MaxReduce>(float16x8_t *result, float16x8_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a4;
      v6 = a2;
      if (a4 >= 8)
      {
        do
        {
          v7 = *result++;
          *v6 = vmaxnmq_f16(v7, *v6);
          ++v6;
          v5 -= 8;
        }

        while (v5 > 7);
      }

      for (; v5; --v5)
      {
        v8 = *v6->i16;
        v9 = *result->i16;
        result = (result + 2);
        v10 = v9;
        if (*v6->i16 <= v9)
        {
          v8 = v10;
        }

        *v6->i16 = v8;
        v6 = (v6 + 2);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07D98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07E18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07E98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = *(result + 8);
  v4 = *v3;
  v5 = **(result + 16) + 2 * **(result + 24);
  if (*v3 <= *(v5 + 2 * v2))
  {
    v4 = *(v5 + 2 * v2);
  }

  *v3 = v4;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::contiguous_reduce<half,half,mlx::core::MinReduce>(float16x8_t *a1, short float *a2, int a3, int16x4_t a4)
{
  v6 = vdupq_lane_s16(a4, 0);
  if (a3 < 8)
  {
    v8 = a3;
  }

  else
  {
    do
    {
      v7 = *a1++;
      v6 = vminnmq_f16(v7, v6);
      v8 = a3 - 8;
      v9 = a3 > 0xF;
      a3 -= 8;
    }

    while (v9);
  }

  v10 = *a2;
  result = __fminf16();
  if (v10 < v12)
  {
    v12 = v10;
  }

  *a2 = v12;
  if (v8 >= 1)
  {
    v13 = v8 + 1;
    do
    {
      v14 = *a1->i16;
      a1 = (a1 + 2);
      v15 = v14;
      if (v12 >= v14)
      {
        v12 = v15;
      }

      *a2 = v12;
      --v13;
    }

    while (v13 > 1);
  }

  return result;
}

float16x8_t *mlx::core::strided_reduce<half,half,mlx::core::MinReduce>(float16x8_t *result, float16x8_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a4;
      v6 = a2;
      if (a4 >= 8)
      {
        do
        {
          v7 = *result++;
          *v6 = vminnmq_f16(v7, *v6);
          ++v6;
          v5 -= 8;
        }

        while (v5 > 7);
      }

      for (; v5; --v5)
      {
        v8 = *v6->i16;
        v9 = *result->i16;
        result = (result + 2);
        v10 = v9;
        if (*v6->i16 >= v9)
        {
          v8 = v10;
        }

        *v6->i16 = v8;
        v6 = (v6 + 2);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07F18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07F98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08018;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = *(result + 8);
  v4 = *v3;
  v5 = **(result + 16) + 2 * **(result + 24);
  if (*v3 >= *(v5 + 2 * v2))
  {
    v4 = *(v5 + 2 * v2);
  }

  *v3 = v4;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<half,half,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<half,half,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,half)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<float,float,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, int **a3, float a4)
{
  v107 = *MEMORY[0x277D85DE8];
  v103 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v98);
  v9 = *a1;
  v10 = (*a1)[19];
  v11 = *a2;
  v12 = *(*a2 + 152);
  v96 = v12;
  v97 = v10;
  if (v98 == 1)
  {
    v13 = v100;
    if (v100 - v99 != 4)
    {
      goto LABEL_11;
    }

    if (*(v11 + 48))
    {
      v14 = 0;
      v15 = *v99;
      do
      {
        v12->f32[0] = a4;
        *v8.i32 = a4;
        mlx::core::contiguous_reduce<float,float,mlx::core::MaxReduce>(v10, v12->f32, v15, v8);
        ++v14;
        v12 = (v96 + 1);
        v10 = (v97 + 4 * v15);
        ++v96;
        v97 = v10;
      }

      while (*(*a2 + 48) > v14);
    }
  }

  else
  {
    if (!v98)
    {
      v12->f32[0] = a4;
      *v8.i32 = a4;
      mlx::core::contiguous_reduce<float,float,mlx::core::MaxReduce>(v10, v12->f32, *(v9 + 12), v8);
      goto LABEL_86;
    }

    if ((v98 & 0xFFFFFFFD) == 1)
    {
      v13 = v100;
LABEL_11:
      v16 = *(v13 - 1);
      v100 = v13 - 4;
      v102 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v92);
      v18 = *(*a2 + 48);
      if (v100 == v99)
      {
        if (v18)
        {
          v27 = 0;
          do
          {
            v28 = v92;
            v29 = (v93 - v92) >> 2;
            v30 = (v29 - 1);
            if (v29 - 1 < 0)
            {
              v36 = 0;
              v34 = a2;
            }

            else
            {
              v31 = 0;
              v32 = __p;
              quot = v27;
              v34 = a2;
              do
              {
                v35 = ldiv(quot, v28[v30]);
                quot = v35.quot;
                v31 += v32[v30--] * v35.rem;
              }

              while (v30 != -1);
              v36 = 4 * v31;
            }

            v37 = v96;
            *v96 = a4;
            *v17.i32 = a4;
            mlx::core::contiguous_reduce<float,float,mlx::core::MaxReduce>((v97 + v36), v37, v16, v17);
            ++v27;
            ++v96;
          }

          while (*(*v34 + 48) > v27);
        }
      }

      else if (v18)
      {
        v19 = v92;
        v20 = (v93 - v92) >> 2;
        v21 = (v20 - 1);
        if (v20 - 1 >= 0)
        {
          v22 = 0;
          v23 = __p;
          v24 = 0;
          do
          {
            v25 = ldiv(v24, v19[v21]);
            v24 = v25.quot;
            v22 += v23[v21--] * v25.rem;
          }

          while (v21 != -1);
        }

        *v96 = v103;
        v106 = 0;
        operator new();
      }

LABEL_82:
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

      goto LABEL_86;
    }

    if (v98 != 2)
    {
      if (v98 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v92);
        if (*(*a2 + 48))
        {
          v38 = v92;
          v39 = (v93 - v92) >> 2;
          v40 = (v39 - 1);
          if (v39 - 1 >= 0)
          {
            v41 = 0;
            v42 = __p;
            v43 = 0;
            do
            {
              v44 = ldiv(v43, v38[v40]);
              v43 = v44.quot;
              v41 += v42[v40--] * v44.rem;
            }

            while (v40 != -1);
          }

          v104 = 0;
          operator new();
        }

        goto LABEL_82;
      }

      if (v98 != 4)
      {
        goto LABEL_86;
      }

      v26 = v100;
      goto LABEL_49;
    }

    v26 = v100;
    if (v100 - v99 != 4)
    {
LABEL_49:
      v53 = *(v26 - 1);
      v54 = *(v102 - 1);
      v100 = v26 - 4;
      v102 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v92);
      v55 = *(*a2 + 48);
      if (v100 == v99)
      {
        if (v55)
        {
          v70 = 0;
          v71 = vdupq_n_s64(v54 - 1);
          v72 = xmmword_25A99B0C0;
          v73 = xmmword_25A99B0D0;
          v90 = v71;
          do
          {
            v74 = v92;
            v75 = (v93 - v92) >> 2;
            v76 = (v75 - 1);
            if (v75 - 1 < 0)
            {
              v82 = 0;
              v80 = a2;
            }

            else
            {
              v77 = 0;
              v78 = __p;
              v79 = v70;
              v80 = a2;
              do
              {
                v81 = ldiv(v79, v74[v76]);
                v79 = v81.quot;
                v77 += v78[v76--] * v81.rem;
              }

              while (v76 != -1);
              v82 = 4 * v77;
              v72 = xmmword_25A99B0C0;
              v71 = v90;
              v73 = xmmword_25A99B0D0;
            }

            v83 = v96;
            if (v54)
            {
              v84 = 0;
              v85 = v96 + 2;
              do
              {
                v86 = vdupq_n_s64(v84);
                v87 = vmovn_s64(vcgeq_u64(v71, vorrq_s8(v86, v73)));
                if (vuzp1_s16(v87, *v86.i8).u8[0])
                {
                  *(v85 - 2) = a4;
                }

                if (vuzp1_s16(v87, *&v86).i8[2])
                {
                  *(v85 - 1) = a4;
                }

                v88 = vmovn_s64(vcgeq_u64(v71, vorrq_s8(v86, v72)));
                if (vuzp1_s16(v88, v88).i32[1])
                {
                  *v85 = a4;
                  v85[1] = a4;
                }

                v84 += 4;
                v85 += 4;
              }

              while (((v54 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v84);
            }

            mlx::core::strided_reduce<float,float,mlx::core::MaxReduce>((v97 + v82), v83, v53, v54);
            v96 += v54;
            v70 += v54;
            v72 = xmmword_25A99B0C0;
            v71 = v90;
            v73 = xmmword_25A99B0D0;
          }

          while (*(*v80 + 48) > v70);
        }
      }

      else if (v55)
      {
        v56 = xmmword_25A99B0C0;
        v57 = xmmword_25A99B0D0;
        v58 = v92;
        v59 = (v93 - v92) >> 2;
        v60 = (v59 - 1);
        if (v59 - 1 >= 0)
        {
          v61 = 0;
          v62 = __p;
          v63 = 0;
          do
          {
            v64 = ldiv(v63, v58[v60]);
            v63 = v64.quot;
            v61 += v62[v60--] * v64.rem;
          }

          while (v60 != -1);
          v57 = xmmword_25A99B0D0;
          v56 = xmmword_25A99B0C0;
        }

        if (v54)
        {
          v65 = 0;
          v66 = vdupq_n_s64(v54 - 1);
          v67 = v96 + 2;
          do
          {
            v68 = vdupq_n_s64(v65);
            v69 = vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, v57)));
            if (vuzp1_s16(v69, *v66.i8).u8[0])
            {
              *(v67 - 2) = a4;
            }

            if (vuzp1_s16(v69, *&v66).i8[2])
            {
              *(v67 - 1) = a4;
            }

            if (vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, v56)))).i32[1])
            {
              *v67 = a4;
              v67[1] = a4;
            }

            v65 += 4;
            v67 += 4;
          }

          while (((v54 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v65);
        }

        v105 = 0;
        operator new();
      }

      goto LABEL_82;
    }

    v45 = *(v100 - 1);
    v46 = *(v102 - 1);
    v100 -= 4;
    v102 -= 8;
    if (*(v11 + 48))
    {
      LODWORD(v47) = 0;
      v91 = vdupq_n_s64(v46 - 1);
      do
      {
        if (v46)
        {
          v48 = 0;
          v49 = &v12->f32[2];
          do
          {
            v50 = vdupq_n_s64(v48);
            v51 = vmovn_s64(vcgeq_u64(v91, vorrq_s8(v50, xmmword_25A99B0D0)));
            if (vuzp1_s16(v51, *v50.i8).u8[0])
            {
              *(v49 - 2) = a4;
            }

            if (vuzp1_s16(v51, *&v50).i8[2])
            {
              *(v49 - 1) = a4;
            }

            v52 = vmovn_s64(vcgeq_u64(v91, vorrq_s8(v50, xmmword_25A99B0C0)));
            if (vuzp1_s16(v52, v52).i32[1])
            {
              *v49 = a4;
              v49[1] = a4;
            }

            v48 += 4;
            v49 += 4;
          }

          while (((v46 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v48);
        }

        mlx::core::strided_reduce<float,float,mlx::core::MaxReduce>(v10, v12, v45, v46);
        v10 = (v97 + 4 * v46 * v45);
        v12 = &v96[v46];
        v96 = v12;
        v97 = v10;
        v47 = v47 + v46;
      }

      while (v47 < *(*a2 + 48));
    }
  }

LABEL_86:
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

  v89 = *MEMORY[0x277D85DE8];
}

void mlx::core::reduction_op<float,float,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, int **a3, float a4)
{
  v107 = *MEMORY[0x277D85DE8];
  v103 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v98);
  v9 = *a1;
  v10 = (*a1)[19];
  v11 = *a2;
  v12 = *(*a2 + 152);
  v96 = v12;
  v97 = v10;
  if (v98 == 1)
  {
    v13 = v100;
    if (v100 - v99 != 4)
    {
      goto LABEL_11;
    }

    if (*(v11 + 48))
    {
      v14 = 0;
      v15 = *v99;
      do
      {
        v12->f32[0] = a4;
        *v8.i32 = a4;
        mlx::core::contiguous_reduce<float,float,mlx::core::MinReduce>(v10, v12->f32, v15, v8);
        ++v14;
        v12 = (v96 + 1);
        v10 = (v97 + 4 * v15);
        ++v96;
        v97 = v10;
      }

      while (*(*a2 + 48) > v14);
    }
  }

  else
  {
    if (!v98)
    {
      v12->f32[0] = a4;
      *v8.i32 = a4;
      mlx::core::contiguous_reduce<float,float,mlx::core::MinReduce>(v10, v12->f32, *(v9 + 12), v8);
      goto LABEL_86;
    }

    if ((v98 & 0xFFFFFFFD) == 1)
    {
      v13 = v100;
LABEL_11:
      v16 = *(v13 - 1);
      v100 = v13 - 4;
      v102 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v92);
      v18 = *(*a2 + 48);
      if (v100 == v99)
      {
        if (v18)
        {
          v27 = 0;
          do
          {
            v28 = v92;
            v29 = (v93 - v92) >> 2;
            v30 = (v29 - 1);
            if (v29 - 1 < 0)
            {
              v36 = 0;
              v34 = a2;
            }

            else
            {
              v31 = 0;
              v32 = __p;
              quot = v27;
              v34 = a2;
              do
              {
                v35 = ldiv(quot, v28[v30]);
                quot = v35.quot;
                v31 += v32[v30--] * v35.rem;
              }

              while (v30 != -1);
              v36 = 4 * v31;
            }

            v37 = v96;
            *v96 = a4;
            *v17.i32 = a4;
            mlx::core::contiguous_reduce<float,float,mlx::core::MinReduce>((v97 + v36), v37, v16, v17);
            ++v27;
            ++v96;
          }

          while (*(*v34 + 48) > v27);
        }
      }

      else if (v18)
      {
        v19 = v92;
        v20 = (v93 - v92) >> 2;
        v21 = (v20 - 1);
        if (v20 - 1 >= 0)
        {
          v22 = 0;
          v23 = __p;
          v24 = 0;
          do
          {
            v25 = ldiv(v24, v19[v21]);
            v24 = v25.quot;
            v22 += v23[v21--] * v25.rem;
          }

          while (v21 != -1);
        }

        *v96 = v103;
        v106 = 0;
        operator new();
      }

LABEL_82:
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

      goto LABEL_86;
    }

    if (v98 != 2)
    {
      if (v98 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v92);
        if (*(*a2 + 48))
        {
          v38 = v92;
          v39 = (v93 - v92) >> 2;
          v40 = (v39 - 1);
          if (v39 - 1 >= 0)
          {
            v41 = 0;
            v42 = __p;
            v43 = 0;
            do
            {
              v44 = ldiv(v43, v38[v40]);
              v43 = v44.quot;
              v41 += v42[v40--] * v44.rem;
            }

            while (v40 != -1);
          }

          v104 = 0;
          operator new();
        }

        goto LABEL_82;
      }

      if (v98 != 4)
      {
        goto LABEL_86;
      }

      v26 = v100;
      goto LABEL_49;
    }

    v26 = v100;
    if (v100 - v99 != 4)
    {
LABEL_49:
      v53 = *(v26 - 1);
      v54 = *(v102 - 1);
      v100 = v26 - 4;
      v102 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v92);
      v55 = *(*a2 + 48);
      if (v100 == v99)
      {
        if (v55)
        {
          v70 = 0;
          v71 = vdupq_n_s64(v54 - 1);
          v72 = xmmword_25A99B0C0;
          v73 = xmmword_25A99B0D0;
          v90 = v71;
          do
          {
            v74 = v92;
            v75 = (v93 - v92) >> 2;
            v76 = (v75 - 1);
            if (v75 - 1 < 0)
            {
              v82 = 0;
              v80 = a2;
            }

            else
            {
              v77 = 0;
              v78 = __p;
              v79 = v70;
              v80 = a2;
              do
              {
                v81 = ldiv(v79, v74[v76]);
                v79 = v81.quot;
                v77 += v78[v76--] * v81.rem;
              }

              while (v76 != -1);
              v82 = 4 * v77;
              v72 = xmmword_25A99B0C0;
              v71 = v90;
              v73 = xmmword_25A99B0D0;
            }

            v83 = v96;
            if (v54)
            {
              v84 = 0;
              v85 = v96 + 2;
              do
              {
                v86 = vdupq_n_s64(v84);
                v87 = vmovn_s64(vcgeq_u64(v71, vorrq_s8(v86, v73)));
                if (vuzp1_s16(v87, *v86.i8).u8[0])
                {
                  *(v85 - 2) = a4;
                }

                if (vuzp1_s16(v87, *&v86).i8[2])
                {
                  *(v85 - 1) = a4;
                }

                v88 = vmovn_s64(vcgeq_u64(v71, vorrq_s8(v86, v72)));
                if (vuzp1_s16(v88, v88).i32[1])
                {
                  *v85 = a4;
                  v85[1] = a4;
                }

                v84 += 4;
                v85 += 4;
              }

              while (((v54 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v84);
            }

            mlx::core::strided_reduce<float,float,mlx::core::MinReduce>((v97 + v82), v83, v53, v54);
            v96 += v54;
            v70 += v54;
            v72 = xmmword_25A99B0C0;
            v71 = v90;
            v73 = xmmword_25A99B0D0;
          }

          while (*(*v80 + 48) > v70);
        }
      }

      else if (v55)
      {
        v56 = xmmword_25A99B0C0;
        v57 = xmmword_25A99B0D0;
        v58 = v92;
        v59 = (v93 - v92) >> 2;
        v60 = (v59 - 1);
        if (v59 - 1 >= 0)
        {
          v61 = 0;
          v62 = __p;
          v63 = 0;
          do
          {
            v64 = ldiv(v63, v58[v60]);
            v63 = v64.quot;
            v61 += v62[v60--] * v64.rem;
          }

          while (v60 != -1);
          v57 = xmmword_25A99B0D0;
          v56 = xmmword_25A99B0C0;
        }

        if (v54)
        {
          v65 = 0;
          v66 = vdupq_n_s64(v54 - 1);
          v67 = v96 + 2;
          do
          {
            v68 = vdupq_n_s64(v65);
            v69 = vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, v57)));
            if (vuzp1_s16(v69, *v66.i8).u8[0])
            {
              *(v67 - 2) = a4;
            }

            if (vuzp1_s16(v69, *&v66).i8[2])
            {
              *(v67 - 1) = a4;
            }

            if (vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, v56)))).i32[1])
            {
              *v67 = a4;
              v67[1] = a4;
            }

            v65 += 4;
            v67 += 4;
          }

          while (((v54 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v65);
        }

        v105 = 0;
        operator new();
      }

      goto LABEL_82;
    }

    v45 = *(v100 - 1);
    v46 = *(v102 - 1);
    v100 -= 4;
    v102 -= 8;
    if (*(v11 + 48))
    {
      LODWORD(v47) = 0;
      v91 = vdupq_n_s64(v46 - 1);
      do
      {
        if (v46)
        {
          v48 = 0;
          v49 = &v12->f32[2];
          do
          {
            v50 = vdupq_n_s64(v48);
            v51 = vmovn_s64(vcgeq_u64(v91, vorrq_s8(v50, xmmword_25A99B0D0)));
            if (vuzp1_s16(v51, *v50.i8).u8[0])
            {
              *(v49 - 2) = a4;
            }

            if (vuzp1_s16(v51, *&v50).i8[2])
            {
              *(v49 - 1) = a4;
            }

            v52 = vmovn_s64(vcgeq_u64(v91, vorrq_s8(v50, xmmword_25A99B0C0)));
            if (vuzp1_s16(v52, v52).i32[1])
            {
              *v49 = a4;
              v49[1] = a4;
            }

            v48 += 4;
            v49 += 4;
          }

          while (((v46 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v48);
        }

        mlx::core::strided_reduce<float,float,mlx::core::MinReduce>(v10, v12, v45, v46);
        v10 = (v97 + 4 * v46 * v45);
        v12 = &v96[v46];
        v96 = v12;
        v97 = v10;
        v47 = v47 + v46;
      }

      while (v47 < *(*a2 + 48));
    }
  }

LABEL_86:
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

  v89 = *MEMORY[0x277D85DE8];
}

_OWORD *mlx::core::contiguous_reduce<float,float,mlx::core::MaxReduce>(_OWORD *result, float *a2, int a3, int32x2_t a4)
{
  v4 = vdupq_lane_s32(a4, 0);
  v5 = v4;
  if (a3 < 8)
  {
    v8 = a3;
  }

  else
  {
    do
    {
      v7 = *result;
      v6 = *(result + 1);
      result += 2;
      v4 = vmaxnmq_f32(v7, v4);
      v5 = vmaxnmq_f32(v6, v5);
      v8 = a3 - 8;
      v9 = a3 > 0xF;
      a3 -= 8;
    }

    while (v9);
  }

  v10 = vmaxvq_f32(vmaxnmq_f32(v4, v5));
  if (*a2 > v10)
  {
    v10 = *a2;
  }

  *a2 = v10;
  if (v8 >= 1)
  {
    v11 = v8 + 1;
    do
    {
      v12 = *result;
      result = (result + 4);
      v13 = v12;
      if (v10 <= v12)
      {
        v10 = v13;
      }

      *a2 = v10;
      --v11;
    }

    while (v11 > 1);
  }

  return result;
}

_OWORD *mlx::core::strided_reduce<float,float,mlx::core::MaxReduce>(_OWORD *result, float32x4_t *a2, int a3, unint64_t a4)
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
          v8 = *result;
          v7 = *(result + 1);
          result += 2;
          v9 = vmaxnmq_f32(v7, v5[1]);
          *v5 = vmaxnmq_f32(v8, *v5);
          v5[1] = v9;
          v5 += 2;
          v6 -= 8;
        }

        while (v6 > 7);
      }

      for (; v6; --v6)
      {
        v10 = v5->f32[0];
        v11 = *result;
        result = (result + 4);
        v12 = v11;
        if (v5->f32[0] <= v11)
        {
          v10 = v12;
        }

        v5->f32[0] = v10;
        v5 = (v5 + 4);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08098;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08118;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08198;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = *(result + 8);
  v4 = *v3;
  v5 = **(result + 16) + 4 * **(result + 24);
  if (*v3 <= *(v5 + 4 * v2))
  {
    v4 = *(v5 + 4 * v2);
  }

  *v3 = v4;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_OWORD *mlx::core::contiguous_reduce<float,float,mlx::core::MinReduce>(_OWORD *result, float *a2, int a3, int32x2_t a4)
{
  v4 = vdupq_lane_s32(a4, 0);
  v5 = v4;
  if (a3 < 8)
  {
    v8 = a3;
  }

  else
  {
    do
    {
      v7 = *result;
      v6 = *(result + 1);
      result += 2;
      v4 = vminnmq_f32(v7, v4);
      v5 = vminnmq_f32(v6, v5);
      v8 = a3 - 8;
      v9 = a3 > 0xF;
      a3 -= 8;
    }

    while (v9);
  }

  v10 = vminvq_f32(vminnmq_f32(v4, v5));
  if (*a2 < v10)
  {
    v10 = *a2;
  }

  *a2 = v10;
  if (v8 >= 1)
  {
    v11 = v8 + 1;
    do
    {
      v12 = *result;
      result = (result + 4);
      v13 = v12;
      if (v10 >= v12)
      {
        v10 = v13;
      }

      *a2 = v10;
      --v11;
    }

    while (v11 > 1);
  }

  return result;
}

_OWORD *mlx::core::strided_reduce<float,float,mlx::core::MinReduce>(_OWORD *result, float32x4_t *a2, int a3, unint64_t a4)
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
          v8 = *result;
          v7 = *(result + 1);
          result += 2;
          v9 = vminnmq_f32(v7, v5[1]);
          *v5 = vminnmq_f32(v8, *v5);
          v5[1] = v9;
          v5 += 2;
          v6 -= 8;
        }

        while (v6 > 7);
      }

      for (; v6; --v6)
      {
        v10 = v5->f32[0];
        v11 = *result;
        result = (result + 4);
        v12 = v11;
        if (v5->f32[0] >= v11)
        {
          v10 = v12;
        }

        v5->f32[0] = v10;
        v5 = (v5 + 4);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08218;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08298;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08318;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = *(result + 8);
  v4 = *v3;
  v5 = **(result + 16) + 4 * **(result + 24);
  if (*v3 >= *(v5 + 4 * v2))
  {
    v4 = *(v5 + 4 * v2);
  }

  *v3 = v4;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<float,float,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<float,float,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,float)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<double,double,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, int **a3, double a4)
{
  v98 = *MEMORY[0x277D85DE8];
  v94 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v89);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v87 = v11;
  v88 = v9;
  if (v89 == 1)
  {
    v12 = v91;
    if (v91 - v90 != 4)
    {
      goto LABEL_11;
    }

    if (*(v10 + 48))
    {
      v13 = 0;
      v14 = *v90;
      do
      {
        v11->f64[0] = a4;
        mlx::core::contiguous_reduce<double,double,mlx::core::MaxReduce>(v9, v11->f64, v14, a4);
        ++v13;
        v11 = (v87 + 1);
        v9 = (v88 + 8 * v14);
        ++v87;
        v88 = v9;
      }

      while (*(*a2 + 48) > v13);
    }
  }

  else
  {
    if (!v89)
    {
      v11->f64[0] = a4;
      mlx::core::contiguous_reduce<double,double,mlx::core::MaxReduce>(v9, v11->f64, *(v8 + 12), a4);
      goto LABEL_80;
    }

    if ((v89 & 0xFFFFFFFD) == 1)
    {
      v12 = v91;
LABEL_11:
      v15 = *(v12 - 1);
      v91 = v12 - 4;
      v93 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v83);
      v16 = *(*a2 + 48);
      if (v91 == v90)
      {
        if (v16)
        {
          v25 = 0;
          do
          {
            v26 = v83;
            v27 = (v84 - v83) >> 2;
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
              v34 = 8 * v29;
            }

            v35 = v87;
            *v87 = a4;
            mlx::core::contiguous_reduce<double,double,mlx::core::MaxReduce>((v88 + v34), v35, v15, a4);
            ++v25;
            ++v87;
          }

          while (*(*v32 + 48) > v25);
        }
      }

      else if (v16)
      {
        v17 = v83;
        v18 = (v84 - v83) >> 2;
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

        *v87 = v94;
        v97 = 0;
        operator new();
      }

LABEL_76:
      if (__p)
      {
        v86 = __p;
        operator delete(__p);
      }

      if (v83)
      {
        v84 = v83;
        operator delete(v83);
      }

      goto LABEL_80;
    }

    if (v89 != 2)
    {
      if (v89 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v83);
        if (*(*a2 + 48))
        {
          v36 = v83;
          v37 = (v84 - v83) >> 2;
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

          v95 = 0;
          operator new();
        }

        goto LABEL_76;
      }

      if (v89 != 4)
      {
        goto LABEL_80;
      }

      v24 = v91;
      goto LABEL_47;
    }

    v24 = v91;
    if (v91 - v90 != 4)
    {
LABEL_47:
      v49 = *(v24 - 1);
      v50 = *(v93 - 1);
      v91 = v24 - 4;
      v93 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v83);
      v51 = *(*a2 + 48);
      if (v91 == v90)
      {
        if (v51)
        {
          v64 = 0;
          v65 = vdupq_n_s64(v50 - 1);
          v66 = xmmword_25A99B0D0;
          v81 = v65;
          do
          {
            v67 = v83;
            v68 = (v84 - v83) >> 2;
            v69 = (v68 - 1);
            if (v68 - 1 < 0)
            {
              v75 = 0;
              v73 = a2;
            }

            else
            {
              v70 = 0;
              v71 = __p;
              v72 = v64;
              v73 = a2;
              do
              {
                v74 = ldiv(v72, v67[v69]);
                v72 = v74.quot;
                v70 += v71[v69--] * v74.rem;
              }

              while (v69 != -1);
              v75 = 8 * v70;
              v66 = xmmword_25A99B0D0;
              v65 = v81;
            }

            v76 = v87;
            if (v50)
            {
              v77 = 0;
              v78 = v87 + 1;
              do
              {
                v79 = vmovn_s64(vcgeq_u64(v65, vorrq_s8(vdupq_n_s64(v77), v66)));
                if (v79.i8[0])
                {
                  *(v78 - 1) = a4;
                }

                if (v79.i8[4])
                {
                  *v78 = a4;
                }

                v77 += 2;
                v78 += 2;
              }

              while (((v50 + 1) & 0xFFFFFFFFFFFFFFFELL) != v77);
            }

            mlx::core::strided_reduce<double,double,mlx::core::MaxReduce>((v88 + v75), v76, v49, v50);
            v87 += v50;
            v64 += v50;
            v66 = xmmword_25A99B0D0;
            v65 = v81;
          }

          while (*(*v73 + 48) > v64);
        }
      }

      else if (v51)
      {
        v52 = xmmword_25A99B0D0;
        v53 = v83;
        v54 = (v84 - v83) >> 2;
        v55 = (v54 - 1);
        if (v54 - 1 >= 0)
        {
          v56 = 0;
          v57 = __p;
          v58 = 0;
          do
          {
            v59 = ldiv(v58, v53[v55]);
            v58 = v59.quot;
            v56 += v57[v55--] * v59.rem;
          }

          while (v55 != -1);
          v52 = xmmword_25A99B0D0;
        }

        if (v50)
        {
          v60 = 0;
          v61 = vdupq_n_s64(v50 - 1);
          v62 = v87 + 1;
          do
          {
            v63 = vmovn_s64(vcgeq_u64(v61, vorrq_s8(vdupq_n_s64(v60), v52)));
            if (v63.i8[0])
            {
              *(v62 - 1) = a4;
            }

            if (v63.i8[4])
            {
              *v62 = a4;
            }

            v60 += 2;
            v62 += 2;
          }

          while (((v50 + 1) & 0xFFFFFFFFFFFFFFFELL) != v60);
        }

        v96 = 0;
        operator new();
      }

      goto LABEL_76;
    }

    v43 = *(v91 - 1);
    v44 = *(v93 - 1);
    v91 -= 4;
    v93 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v45) = 0;
      v82 = vdupq_n_s64(v44 - 1);
      do
      {
        if (v44)
        {
          v46 = 0;
          v47 = &v11->f64[1];
          do
          {
            v48 = vmovn_s64(vcgeq_u64(v82, vorrq_s8(vdupq_n_s64(v46), xmmword_25A99B0D0)));
            if (v48.i8[0])
            {
              *(v47 - 1) = a4;
            }

            if (v48.i8[4])
            {
              *v47 = a4;
            }

            v46 += 2;
            v47 += 2;
          }

          while (((v44 + 1) & 0xFFFFFFFFFFFFFFFELL) != v46);
        }

        mlx::core::strided_reduce<double,double,mlx::core::MaxReduce>(v9, v11, v43, v44);
        v9 = (v88 + 8 * v44 * v43);
        v11 = &v87[v44];
        v87 = v11;
        v88 = v9;
        v45 = v45 + v44;
      }

      while (v45 < *(*a2 + 48));
    }
  }

LABEL_80:
  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  v80 = *MEMORY[0x277D85DE8];
}

void mlx::core::reduction_op<double,double,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, int **a3, double a4)
{
  v98 = *MEMORY[0x277D85DE8];
  v94 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v89);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v87 = v11;
  v88 = v9;
  if (v89 == 1)
  {
    v12 = v91;
    if (v91 - v90 != 4)
    {
      goto LABEL_11;
    }

    if (*(v10 + 48))
    {
      v13 = 0;
      v14 = *v90;
      do
      {
        v11->f64[0] = a4;
        mlx::core::contiguous_reduce<double,double,mlx::core::MinReduce>(v9, v11->f64, v14, a4);
        ++v13;
        v11 = (v87 + 1);
        v9 = (v88 + 8 * v14);
        ++v87;
        v88 = v9;
      }

      while (*(*a2 + 48) > v13);
    }
  }

  else
  {
    if (!v89)
    {
      v11->f64[0] = a4;
      mlx::core::contiguous_reduce<double,double,mlx::core::MinReduce>(v9, v11->f64, *(v8 + 12), a4);
      goto LABEL_80;
    }

    if ((v89 & 0xFFFFFFFD) == 1)
    {
      v12 = v91;
LABEL_11:
      v15 = *(v12 - 1);
      v91 = v12 - 4;
      v93 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v83);
      v16 = *(*a2 + 48);
      if (v91 == v90)
      {
        if (v16)
        {
          v25 = 0;
          do
          {
            v26 = v83;
            v27 = (v84 - v83) >> 2;
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
              v34 = 8 * v29;
            }

            v35 = v87;
            *v87 = a4;
            mlx::core::contiguous_reduce<double,double,mlx::core::MinReduce>((v88 + v34), v35, v15, a4);
            ++v25;
            ++v87;
          }

          while (*(*v32 + 48) > v25);
        }
      }

      else if (v16)
      {
        v17 = v83;
        v18 = (v84 - v83) >> 2;
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

        *v87 = v94;
        v97 = 0;
        operator new();
      }

LABEL_76:
      if (__p)
      {
        v86 = __p;
        operator delete(__p);
      }

      if (v83)
      {
        v84 = v83;
        operator delete(v83);
      }

      goto LABEL_80;
    }

    if (v89 != 2)
    {
      if (v89 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v83);
        if (*(*a2 + 48))
        {
          v36 = v83;
          v37 = (v84 - v83) >> 2;
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

          v95 = 0;
          operator new();
        }

        goto LABEL_76;
      }

      if (v89 != 4)
      {
        goto LABEL_80;
      }

      v24 = v91;
      goto LABEL_47;
    }

    v24 = v91;
    if (v91 - v90 != 4)
    {
LABEL_47:
      v49 = *(v24 - 1);
      v50 = *(v93 - 1);
      v91 = v24 - 4;
      v93 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v83);
      v51 = *(*a2 + 48);
      if (v91 == v90)
      {
        if (v51)
        {
          v64 = 0;
          v65 = vdupq_n_s64(v50 - 1);
          v66 = xmmword_25A99B0D0;
          v81 = v65;
          do
          {
            v67 = v83;
            v68 = (v84 - v83) >> 2;
            v69 = (v68 - 1);
            if (v68 - 1 < 0)
            {
              v75 = 0;
              v73 = a2;
            }

            else
            {
              v70 = 0;
              v71 = __p;
              v72 = v64;
              v73 = a2;
              do
              {
                v74 = ldiv(v72, v67[v69]);
                v72 = v74.quot;
                v70 += v71[v69--] * v74.rem;
              }

              while (v69 != -1);
              v75 = 8 * v70;
              v66 = xmmword_25A99B0D0;
              v65 = v81;
            }

            v76 = v87;
            if (v50)
            {
              v77 = 0;
              v78 = v87 + 1;
              do
              {
                v79 = vmovn_s64(vcgeq_u64(v65, vorrq_s8(vdupq_n_s64(v77), v66)));
                if (v79.i8[0])
                {
                  *(v78 - 1) = a4;
                }

                if (v79.i8[4])
                {
                  *v78 = a4;
                }

                v77 += 2;
                v78 += 2;
              }

              while (((v50 + 1) & 0xFFFFFFFFFFFFFFFELL) != v77);
            }

            mlx::core::strided_reduce<double,double,mlx::core::MinReduce>((v88 + v75), v76, v49, v50);
            v87 += v50;
            v64 += v50;
            v66 = xmmword_25A99B0D0;
            v65 = v81;
          }

          while (*(*v73 + 48) > v64);
        }
      }

      else if (v51)
      {
        v52 = xmmword_25A99B0D0;
        v53 = v83;
        v54 = (v84 - v83) >> 2;
        v55 = (v54 - 1);
        if (v54 - 1 >= 0)
        {
          v56 = 0;
          v57 = __p;
          v58 = 0;
          do
          {
            v59 = ldiv(v58, v53[v55]);
            v58 = v59.quot;
            v56 += v57[v55--] * v59.rem;
          }

          while (v55 != -1);
          v52 = xmmword_25A99B0D0;
        }

        if (v50)
        {
          v60 = 0;
          v61 = vdupq_n_s64(v50 - 1);
          v62 = v87 + 1;
          do
          {
            v63 = vmovn_s64(vcgeq_u64(v61, vorrq_s8(vdupq_n_s64(v60), v52)));
            if (v63.i8[0])
            {
              *(v62 - 1) = a4;
            }

            if (v63.i8[4])
            {
              *v62 = a4;
            }

            v60 += 2;
            v62 += 2;
          }

          while (((v50 + 1) & 0xFFFFFFFFFFFFFFFELL) != v60);
        }

        v96 = 0;
        operator new();
      }

      goto LABEL_76;
    }

    v43 = *(v91 - 1);
    v44 = *(v93 - 1);
    v91 -= 4;
    v93 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v45) = 0;
      v82 = vdupq_n_s64(v44 - 1);
      do
      {
        if (v44)
        {
          v46 = 0;
          v47 = &v11->f64[1];
          do
          {
            v48 = vmovn_s64(vcgeq_u64(v82, vorrq_s8(vdupq_n_s64(v46), xmmword_25A99B0D0)));
            if (v48.i8[0])
            {
              *(v47 - 1) = a4;
            }

            if (v48.i8[4])
            {
              *v47 = a4;
            }

            v46 += 2;
            v47 += 2;
          }

          while (((v44 + 1) & 0xFFFFFFFFFFFFFFFELL) != v46);
        }

        mlx::core::strided_reduce<double,double,mlx::core::MinReduce>(v9, v11, v43, v44);
        v9 = (v88 + 8 * v44 * v43);
        v11 = &v87[v44];
        v87 = v11;
        v88 = v9;
        v45 = v45 + v44;
      }

      while (v45 < *(*a2 + 48));
    }
  }

LABEL_80:
  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  v80 = *MEMORY[0x277D85DE8];
}

_OWORD *mlx::core::contiguous_reduce<double,double,mlx::core::MaxReduce>(_OWORD *result, double *a2, int a3, double a4)
{
  v4 = vdupq_lane_s64(*&a4, 0);
  v5 = v4;
  if (a3 < 4)
  {
    v8 = a3;
  }

  else
  {
    do
    {
      v7 = *result;
      v6 = *(result + 1);
      result += 2;
      v4 = vmaxnmq_f64(v7, v4);
      v5 = vmaxnmq_f64(v6, v5);
      v8 = a3 - 4;
      v9 = a3 > 7;
      a3 -= 4;
    }

    while (v9);
  }

  v10 = vpmaxq_f64(vmaxnmq_f64(v4, v5));
  if (*a2 > v10)
  {
    v10 = *a2;
  }

  *a2 = v10;
  if (v8 >= 1)
  {
    v11 = v8 + 1;
    do
    {
      v12 = *result;
      result = (result + 8);
      v13 = v12;
      if (v10 <= v12)
      {
        v10 = v13;
      }

      *a2 = v10;
      --v11;
    }

    while (v11 > 1);
  }

  return result;
}

_OWORD *mlx::core::strided_reduce<double,double,mlx::core::MaxReduce>(_OWORD *result, float64x2_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 4)
      {
        do
        {
          v8 = *result;
          v7 = *(result + 1);
          result += 2;
          v9 = vmaxnmq_f64(v7, v5[1]);
          *v5 = vmaxnmq_f64(v8, *v5);
          v5[1] = v9;
          v5 += 2;
          v6 -= 4;
        }

        while (v6 > 3);
      }

      for (; v6; --v6)
      {
        v10 = v5->f64[0];
        v11 = *result;
        result = (result + 8);
        v12 = v11;
        if (v5->f64[0] <= v11)
        {
          v10 = v12;
        }

        v5->f64[0] = v10;
        v5 = (v5 + 8);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08398;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08418;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08498;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = *(result + 8);
  v4 = *v3;
  v5 = **(result + 16) + 8 * **(result + 24);
  if (*v3 <= *(v5 + 8 * v2))
  {
    v4 = *(v5 + 8 * v2);
  }

  *v3 = v4;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_OWORD *mlx::core::contiguous_reduce<double,double,mlx::core::MinReduce>(_OWORD *result, double *a2, int a3, double a4)
{
  v4 = vdupq_lane_s64(*&a4, 0);
  v5 = v4;
  if (a3 < 4)
  {
    v8 = a3;
  }

  else
  {
    do
    {
      v7 = *result;
      v6 = *(result + 1);
      result += 2;
      v4 = vminnmq_f64(v7, v4);
      v5 = vminnmq_f64(v6, v5);
      v8 = a3 - 4;
      v9 = a3 > 7;
      a3 -= 4;
    }

    while (v9);
  }

  v10 = vpminq_f64(vminnmq_f64(v4, v5));
  if (*a2 < v10)
  {
    v10 = *a2;
  }

  *a2 = v10;
  if (v8 >= 1)
  {
    v11 = v8 + 1;
    do
    {
      v12 = *result;
      result = (result + 8);
      v13 = v12;
      if (v10 >= v12)
      {
        v10 = v13;
      }

      *a2 = v10;
      --v11;
    }

    while (v11 > 1);
  }

  return result;
}

_OWORD *mlx::core::strided_reduce<double,double,mlx::core::MinReduce>(_OWORD *result, float64x2_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 4)
      {
        do
        {
          v8 = *result;
          v7 = *(result + 1);
          result += 2;
          v9 = vminnmq_f64(v7, v5[1]);
          *v5 = vminnmq_f64(v8, *v5);
          v5[1] = v9;
          v5 += 2;
          v6 -= 4;
        }

        while (v6 > 3);
      }

      for (; v6; --v6)
      {
        v10 = v5->f64[0];
        v11 = *result;
        result = (result + 8);
        v12 = v11;
        if (v5->f64[0] >= v11)
        {
          v10 = v12;
        }

        v5->f64[0] = v10;
        v5 = (v5 + 8);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08518;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08598;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08618;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = *(result + 8);
  v4 = *v3;
  v5 = **(result + 16) + 8 * **(result + 24);
  if (*v3 >= *(v5 + 8 * v2))
  {
    v4 = *(v5 + 8 * v2);
  }

  *v3 = v4;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<double,double,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<double,double,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,double)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::Limits<mlx::core::_MLX_BFloat16>::min()
{
  {
    mlx::core::Limits<mlx::core::_MLX_BFloat16>::min();
  }

  return mlx::core::Limits<mlx::core::_MLX_BFloat16>::min(void)::val;
}

void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, int **a3, unsigned __int16 a4)
{
  v130 = *MEMORY[0x277D85DE8];
  v126 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v121);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v119 = v11;
  v120 = v9;
  if (v121 == 1)
  {
    v12 = v123;
    if (v123 - v122 != 4)
    {
      goto LABEL_11;
    }

    if (*(v10 + 48))
    {
      v13 = 0;
      v14 = *v122;
      do
      {
        *v11 = a4;
        mlx::core::contiguous_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(v9, v11, v14, a4);
        ++v13;
        v11 = v119 + 1;
        v9 = &v120[v14];
        ++v119;
        v120 = v9;
      }

      while (*(*a2 + 48) > v13);
    }
  }

  else
  {
    if (!v121)
    {
      *v11 = a4;
      mlx::core::contiguous_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(v9, v11, *(v8 + 12), a4);
      goto LABEL_123;
    }

    if ((v121 & 0xFFFFFFFD) == 1)
    {
      v12 = v123;
LABEL_11:
      v15 = *(v12 - 1);
      v123 = v12 - 4;
      v125 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v115);
      v16 = *(*a2 + 48);
      if (v123 == v122)
      {
        if (v16)
        {
          v25 = 0;
          do
          {
            v26 = v115;
            v27 = (v116 - v115) >> 2;
            v28 = (v27 - 1);
            if (v27 - 1 < 0)
            {
              v33 = 0;
            }

            else
            {
              v29 = 0;
              v30 = __p;
              quot = v25;
              do
              {
                v32 = ldiv(quot, v26[v28]);
                quot = v32.quot;
                v29 += v30[v28--] * v32.rem;
              }

              while (v28 != -1);
              v33 = v29;
            }

            v34 = v119;
            *v119 = a4;
            mlx::core::contiguous_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(&v120[v33], v34, v15, a4);
            ++v25;
            ++v119;
          }

          while (*(*a2 + 48) > v25);
        }
      }

      else if (v16)
      {
        v17 = v115;
        v18 = (v116 - v115) >> 2;
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

        *v119 = v126;
        v129 = 0;
        operator new();
      }

      goto LABEL_119;
    }

    if (v121 != 2)
    {
      if (v121 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v115);
        if (*(*a2 + 48))
        {
          v35 = v115;
          v36 = (v116 - v115) >> 2;
          v37 = (v36 - 1);
          if (v36 - 1 >= 0)
          {
            v38 = 0;
            v39 = __p;
            v40 = 0;
            do
            {
              v41 = ldiv(v40, v35[v37]);
              v40 = v41.quot;
              v38 += v39[v37--] * v41.rem;
            }

            while (v37 != -1);
          }

          v127 = 0;
          operator new();
        }

        goto LABEL_119;
      }

      if (v121 != 4)
      {
        goto LABEL_123;
      }

      v24 = v123;
      goto LABEL_63;
    }

    v24 = v123;
    if (v123 - v122 != 4)
    {
LABEL_63:
      v60 = *(v24 - 1);
      v61 = *(v125 - 1);
      v123 = v24 - 4;
      v125 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v115);
      v62 = *(*a2 + 48);
      if (v123 != v122)
      {
        if (v62)
        {
          v63 = xmmword_25A9C2E70;
          v64 = xmmword_25A9C2E80;
          v65 = xmmword_25A99B0C0;
          v66 = xmmword_25A99B0D0;
          v67 = v115;
          v68 = (v116 - v115) >> 2;
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
            v64 = xmmword_25A9C2E80;
            v63 = xmmword_25A9C2E70;
            v66 = xmmword_25A99B0D0;
            v65 = xmmword_25A99B0C0;
          }

          if (v61)
          {
            v74 = 0;
            v75 = vdupq_n_s64(v61 - 1);
            v76 = v119 + 4;
            do
            {
              v77 = vdupq_n_s64(v74);
              v78 = vmovn_s64(vcgeq_u64(v75, vorrq_s8(v77, v66)));
              if (vuzp1_s8(vuzp1_s16(v78, *v75.i8), *v75.i8).u8[0])
              {
                *(v76 - 4) = a4;
              }

              if (vuzp1_s8(vuzp1_s16(v78, *&v75), *&v75).i8[1])
              {
                *(v76 - 3) = a4;
              }

              if (vuzp1_s8(vuzp1_s16(*&v75, vmovn_s64(vcgeq_u64(v75, vorrq_s8(v77, v65)))), *&v75).i8[2])
              {
                *(v76 - 2) = a4;
                *(v76 - 1) = a4;
              }

              v79 = vmovn_s64(vcgeq_u64(v75, vorrq_s8(v77, v64)));
              if (vuzp1_s8(*&v75, vuzp1_s16(v79, *&v75)).i32[1])
              {
                *v76 = a4;
              }

              if (vuzp1_s8(*&v75, vuzp1_s16(v79, *&v75)).i8[5])
              {
                v76[1] = a4;
              }

              if (vuzp1_s8(*&v75, vuzp1_s16(*&v75, vmovn_s64(vcgeq_u64(v75, vorrq_s8(v77, v63))))).i8[6])
              {
                v76[2] = a4;
                v76[3] = a4;
              }

              v74 += 8;
              v76 += 8;
            }

            while (((v61 + 7) & 0xFFFFFFFFFFFFFFF8) != v74);
          }

          v128 = 0;
          operator new();
        }

        goto LABEL_119;
      }

      v80 = v119;
      if (!v62)
      {
LABEL_118:
        v119 = v80;
LABEL_119:
        if (__p)
        {
          v118 = __p;
          operator delete(__p);
        }

        if (v115)
        {
          v116 = v115;
          operator delete(v115);
        }

        goto LABEL_123;
      }

      v81 = 0;
      v82 = v115;
      v83 = ((v116 - v115) >> 2) - 1;
      v84 = __p;
      v110 = v120;
      v85 = vdupq_n_s64(v61 - 1);
      v86 = v119 + 4;
      v87 = xmmword_25A9C2E70;
      v88 = xmmword_25A9C2E80;
      v89 = xmmword_25A99B0C0;
      v90 = xmmword_25A99B0D0;
      v113 = 2 * v61;
      v112 = v62;
      v111 = v83;
      v109 = v85;
      while (1)
      {
        if ((v83 & 0x80000000) != 0)
        {
          v94 = 0;
          if (v61)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v114 = v86;
          v91 = 0;
          v92 = v81;
          do
          {
            v93 = ldiv(v92, v82[v83]);
            v92 = v93.quot;
            v91 += v84[v83--] * v93.rem;
          }

          while (v83 != -1);
          v94 = v91;
          v62 = v112;
          v83 = v111;
          v87 = xmmword_25A9C2E70;
          v85 = v109;
          v86 = v114;
          v89 = xmmword_25A99B0C0;
          v88 = xmmword_25A9C2E80;
          v90 = xmmword_25A99B0D0;
          if (v61)
          {
LABEL_93:
            v95 = 0;
            v96 = v86;
            do
            {
              v97 = vdupq_n_s64(v95);
              v98 = vmovn_s64(vcgeq_u64(v85, vorrq_s8(v97, v90)));
              if (vuzp1_s8(vuzp1_s16(v98, *v97.i8), *v97.i8).u8[0])
              {
                *(v96 - 4) = a4;
              }

              if (vuzp1_s8(vuzp1_s16(v98, *&v97), *&v97).i8[1])
              {
                *(v96 - 3) = a4;
              }

              if (vuzp1_s8(vuzp1_s16(*&v97, vmovn_s64(vcgeq_u64(v85, vorrq_s8(v97, v89)))), *&v97).i8[2])
              {
                *(v96 - 2) = a4;
                *(v96 - 1) = a4;
              }

              v99 = vmovn_s64(vcgeq_u64(v85, vorrq_s8(v97, v88)));
              if (vuzp1_s8(*&v97, vuzp1_s16(v99, *&v97)).i32[1])
              {
                *v96 = a4;
              }

              if (vuzp1_s8(*&v97, vuzp1_s16(v99, *&v97)).i8[5])
              {
                v96[1] = a4;
              }

              v100 = vmovn_s64(vcgeq_u64(v85, vorrq_s8(v97, v87)));
              if (vuzp1_s8(*&v100, vuzp1_s16(v100, v100)).i8[6])
              {
                v96[2] = a4;
              }

              v101 = vuzp1_s16(v100, v100);
              if (vuzp1_s8(v101, v101).i8[7])
              {
                v96[3] = a4;
              }

              v95 += 8;
              v96 += 8;
            }

            while (((v61 + 7) & 0xFFFFFFFFFFFFFFF8) != v95);
          }
        }

        if (v60 >= 1)
        {
          v102 = 0;
          v103 = &v110[v94];
          do
          {
            if (v61)
            {
              for (i = 0; i != v61; ++i)
              {
                v105 = v80[i];
                v107 = *v103++;
                v106 = v107;
                if (COERCE_FLOAT(v107 << 16) > COERCE_FLOAT(v105 << 16))
                {
                  LOWORD(v105) = v106;
                }

                v80[i] = v105;
              }
            }

            ++v102;
          }

          while (v102 != v60);
        }

        v80 = (v80 + v113);
        v81 += v61;
        v86 = (v86 + v113);
        if (v62 <= v81)
        {
          goto LABEL_118;
        }
      }
    }

    v42 = *(v123 - 1);
    v43 = *(v125 - 1);
    v123 -= 4;
    v125 -= 8;
    v44 = *(v10 + 48);
    if (v44)
    {
      LODWORD(v45) = 0;
      v46 = vdupq_n_s64(v43 - 1);
      v47 = v11 + 4;
      v48 = 2 * v43;
      do
      {
        if (v43)
        {
          v49 = 0;
          v50 = v47;
          do
          {
            v51 = vdupq_n_s64(v49);
            v52 = vmovn_s64(vcgeq_u64(v46, vorrq_s8(v51, xmmword_25A99B0D0)));
            if (vuzp1_s8(vuzp1_s16(v52, *v46.i8), *v46.i8).u8[0])
            {
              *(v50 - 4) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(v52, *&v46), *&v46).i8[1])
            {
              *(v50 - 3) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, vorrq_s8(v51, xmmword_25A99B0C0)))), *&v46).i8[2])
            {
              *(v50 - 2) = a4;
              *(v50 - 1) = a4;
            }

            v53 = vmovn_s64(vcgeq_u64(v46, vorrq_s8(v51, xmmword_25A9C2E80)));
            if (vuzp1_s8(*&v46, vuzp1_s16(v53, *&v46)).i32[1])
            {
              *v50 = a4;
            }

            if (vuzp1_s8(*&v46, vuzp1_s16(v53, *&v46)).i8[5])
            {
              v50[1] = a4;
            }

            if (vuzp1_s8(*&v46, vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, vorrq_s8(v51, xmmword_25A9C2E70))))).i8[6])
            {
              v50[2] = a4;
              v50[3] = a4;
            }

            v49 += 8;
            v50 += 8;
          }

          while (((v43 + 7) & 0xFFFFFFFFFFFFFFF8) != v49);
        }

        if (v42 >= 1)
        {
          v54 = 0;
          v55 = v9;
          do
          {
            if (v43)
            {
              for (j = 0; j != v43; ++j)
              {
                v57 = v11[j];
                v59 = *v55++;
                v58 = v59;
                if (COERCE_FLOAT(v59 << 16) > COERCE_FLOAT(v57 << 16))
                {
                  LOWORD(v57) = v58;
                }

                v11[j] = v57;
              }
            }

            ++v54;
          }

          while (v54 != v42);
        }

        v9 += v43 * v42;
        v45 = v45 + v43;
        v47 = (v47 + v48);
        v11 = (v11 + v48);
      }

      while (v45 < v44);
    }
  }

LABEL_123:
  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }

  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  v108 = *MEMORY[0x277D85DE8];
}

uint64_t mlx::core::Limits<mlx::core::_MLX_BFloat16>::max()
{
  {
    mlx::core::Limits<mlx::core::_MLX_BFloat16>::max();
  }

  return mlx::core::Limits<mlx::core::_MLX_BFloat16>::max(void)::val;
}

void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, int **a3, unsigned __int16 a4)
{
  v130 = *MEMORY[0x277D85DE8];
  v126 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v121);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v119 = v11;
  v120 = v9;
  if (v121 == 1)
  {
    v12 = v123;
    if (v123 - v122 != 4)
    {
      goto LABEL_11;
    }

    if (*(v10 + 48))
    {
      v13 = 0;
      v14 = *v122;
      do
      {
        *v11 = a4;
        mlx::core::contiguous_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(v9, v11, v14, a4);
        ++v13;
        v11 = v119 + 1;
        v9 = &v120[v14];
        ++v119;
        v120 = v9;
      }

      while (*(*a2 + 48) > v13);
    }
  }

  else
  {
    if (!v121)
    {
      *v11 = a4;
      mlx::core::contiguous_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(v9, v11, *(v8 + 12), a4);
      goto LABEL_123;
    }

    if ((v121 & 0xFFFFFFFD) == 1)
    {
      v12 = v123;
LABEL_11:
      v15 = *(v12 - 1);
      v123 = v12 - 4;
      v125 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v115);
      v16 = *(*a2 + 48);
      if (v123 == v122)
      {
        if (v16)
        {
          v25 = 0;
          do
          {
            v26 = v115;
            v27 = (v116 - v115) >> 2;
            v28 = (v27 - 1);
            if (v27 - 1 < 0)
            {
              v33 = 0;
            }

            else
            {
              v29 = 0;
              v30 = __p;
              quot = v25;
              do
              {
                v32 = ldiv(quot, v26[v28]);
                quot = v32.quot;
                v29 += v30[v28--] * v32.rem;
              }

              while (v28 != -1);
              v33 = v29;
            }

            v34 = v119;
            *v119 = a4;
            mlx::core::contiguous_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(&v120[v33], v34, v15, a4);
            ++v25;
            ++v119;
          }

          while (*(*a2 + 48) > v25);
        }
      }

      else if (v16)
      {
        v17 = v115;
        v18 = (v116 - v115) >> 2;
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

        *v119 = v126;
        v129 = 0;
        operator new();
      }

      goto LABEL_119;
    }

    if (v121 != 2)
    {
      if (v121 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v115);
        if (*(*a2 + 48))
        {
          v35 = v115;
          v36 = (v116 - v115) >> 2;
          v37 = (v36 - 1);
          if (v36 - 1 >= 0)
          {
            v38 = 0;
            v39 = __p;
            v40 = 0;
            do
            {
              v41 = ldiv(v40, v35[v37]);
              v40 = v41.quot;
              v38 += v39[v37--] * v41.rem;
            }

            while (v37 != -1);
          }

          v127 = 0;
          operator new();
        }

        goto LABEL_119;
      }

      if (v121 != 4)
      {
        goto LABEL_123;
      }

      v24 = v123;
      goto LABEL_63;
    }

    v24 = v123;
    if (v123 - v122 != 4)
    {
LABEL_63:
      v60 = *(v24 - 1);
      v61 = *(v125 - 1);
      v123 = v24 - 4;
      v125 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v115);
      v62 = *(*a2 + 48);
      if (v123 != v122)
      {
        if (v62)
        {
          v63 = xmmword_25A9C2E70;
          v64 = xmmword_25A9C2E80;
          v65 = xmmword_25A99B0C0;
          v66 = xmmword_25A99B0D0;
          v67 = v115;
          v68 = (v116 - v115) >> 2;
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
            v64 = xmmword_25A9C2E80;
            v63 = xmmword_25A9C2E70;
            v66 = xmmword_25A99B0D0;
            v65 = xmmword_25A99B0C0;
          }

          if (v61)
          {
            v74 = 0;
            v75 = vdupq_n_s64(v61 - 1);
            v76 = v119 + 4;
            do
            {
              v77 = vdupq_n_s64(v74);
              v78 = vmovn_s64(vcgeq_u64(v75, vorrq_s8(v77, v66)));
              if (vuzp1_s8(vuzp1_s16(v78, *v75.i8), *v75.i8).u8[0])
              {
                *(v76 - 4) = a4;
              }

              if (vuzp1_s8(vuzp1_s16(v78, *&v75), *&v75).i8[1])
              {
                *(v76 - 3) = a4;
              }

              if (vuzp1_s8(vuzp1_s16(*&v75, vmovn_s64(vcgeq_u64(v75, vorrq_s8(v77, v65)))), *&v75).i8[2])
              {
                *(v76 - 2) = a4;
                *(v76 - 1) = a4;
              }

              v79 = vmovn_s64(vcgeq_u64(v75, vorrq_s8(v77, v64)));
              if (vuzp1_s8(*&v75, vuzp1_s16(v79, *&v75)).i32[1])
              {
                *v76 = a4;
              }

              if (vuzp1_s8(*&v75, vuzp1_s16(v79, *&v75)).i8[5])
              {
                v76[1] = a4;
              }

              if (vuzp1_s8(*&v75, vuzp1_s16(*&v75, vmovn_s64(vcgeq_u64(v75, vorrq_s8(v77, v63))))).i8[6])
              {
                v76[2] = a4;
                v76[3] = a4;
              }

              v74 += 8;
              v76 += 8;
            }

            while (((v61 + 7) & 0xFFFFFFFFFFFFFFF8) != v74);
          }

          v128 = 0;
          operator new();
        }

        goto LABEL_119;
      }

      v80 = v119;
      if (!v62)
      {
LABEL_118:
        v119 = v80;
LABEL_119:
        if (__p)
        {
          v118 = __p;
          operator delete(__p);
        }

        if (v115)
        {
          v116 = v115;
          operator delete(v115);
        }

        goto LABEL_123;
      }

      v81 = 0;
      v82 = v115;
      v83 = ((v116 - v115) >> 2) - 1;
      v84 = __p;
      v110 = v120;
      v85 = vdupq_n_s64(v61 - 1);
      v86 = v119 + 4;
      v87 = xmmword_25A9C2E70;
      v88 = xmmword_25A9C2E80;
      v89 = xmmword_25A99B0C0;
      v90 = xmmword_25A99B0D0;
      v113 = 2 * v61;
      v112 = v62;
      v111 = v83;
      v109 = v85;
      while (1)
      {
        if ((v83 & 0x80000000) != 0)
        {
          v94 = 0;
          if (v61)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v114 = v86;
          v91 = 0;
          v92 = v81;
          do
          {
            v93 = ldiv(v92, v82[v83]);
            v92 = v93.quot;
            v91 += v84[v83--] * v93.rem;
          }

          while (v83 != -1);
          v94 = v91;
          v62 = v112;
          v83 = v111;
          v87 = xmmword_25A9C2E70;
          v85 = v109;
          v86 = v114;
          v89 = xmmword_25A99B0C0;
          v88 = xmmword_25A9C2E80;
          v90 = xmmword_25A99B0D0;
          if (v61)
          {
LABEL_93:
            v95 = 0;
            v96 = v86;
            do
            {
              v97 = vdupq_n_s64(v95);
              v98 = vmovn_s64(vcgeq_u64(v85, vorrq_s8(v97, v90)));
              if (vuzp1_s8(vuzp1_s16(v98, *v97.i8), *v97.i8).u8[0])
              {
                *(v96 - 4) = a4;
              }

              if (vuzp1_s8(vuzp1_s16(v98, *&v97), *&v97).i8[1])
              {
                *(v96 - 3) = a4;
              }

              if (vuzp1_s8(vuzp1_s16(*&v97, vmovn_s64(vcgeq_u64(v85, vorrq_s8(v97, v89)))), *&v97).i8[2])
              {
                *(v96 - 2) = a4;
                *(v96 - 1) = a4;
              }

              v99 = vmovn_s64(vcgeq_u64(v85, vorrq_s8(v97, v88)));
              if (vuzp1_s8(*&v97, vuzp1_s16(v99, *&v97)).i32[1])
              {
                *v96 = a4;
              }

              if (vuzp1_s8(*&v97, vuzp1_s16(v99, *&v97)).i8[5])
              {
                v96[1] = a4;
              }

              v100 = vmovn_s64(vcgeq_u64(v85, vorrq_s8(v97, v87)));
              if (vuzp1_s8(*&v100, vuzp1_s16(v100, v100)).i8[6])
              {
                v96[2] = a4;
              }

              v101 = vuzp1_s16(v100, v100);
              if (vuzp1_s8(v101, v101).i8[7])
              {
                v96[3] = a4;
              }

              v95 += 8;
              v96 += 8;
            }

            while (((v61 + 7) & 0xFFFFFFFFFFFFFFF8) != v95);
          }
        }

        if (v60 >= 1)
        {
          v102 = 0;
          v103 = &v110[v94];
          do
          {
            if (v61)
            {
              for (i = 0; i != v61; ++i)
              {
                v105 = v80[i];
                v107 = *v103++;
                v106 = v107;
                if (COERCE_FLOAT(v107 << 16) < COERCE_FLOAT(v105 << 16))
                {
                  LOWORD(v105) = v106;
                }

                v80[i] = v105;
              }
            }

            ++v102;
          }

          while (v102 != v60);
        }

        v80 = (v80 + v113);
        v81 += v61;
        v86 = (v86 + v113);
        if (v62 <= v81)
        {
          goto LABEL_118;
        }
      }
    }

    v42 = *(v123 - 1);
    v43 = *(v125 - 1);
    v123 -= 4;
    v125 -= 8;
    v44 = *(v10 + 48);
    if (v44)
    {
      LODWORD(v45) = 0;
      v46 = vdupq_n_s64(v43 - 1);
      v47 = v11 + 4;
      v48 = 2 * v43;
      do
      {
        if (v43)
        {
          v49 = 0;
          v50 = v47;
          do
          {
            v51 = vdupq_n_s64(v49);
            v52 = vmovn_s64(vcgeq_u64(v46, vorrq_s8(v51, xmmword_25A99B0D0)));
            if (vuzp1_s8(vuzp1_s16(v52, *v46.i8), *v46.i8).u8[0])
            {
              *(v50 - 4) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(v52, *&v46), *&v46).i8[1])
            {
              *(v50 - 3) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, vorrq_s8(v51, xmmword_25A99B0C0)))), *&v46).i8[2])
            {
              *(v50 - 2) = a4;
              *(v50 - 1) = a4;
            }

            v53 = vmovn_s64(vcgeq_u64(v46, vorrq_s8(v51, xmmword_25A9C2E80)));
            if (vuzp1_s8(*&v46, vuzp1_s16(v53, *&v46)).i32[1])
            {
              *v50 = a4;
            }

            if (vuzp1_s8(*&v46, vuzp1_s16(v53, *&v46)).i8[5])
            {
              v50[1] = a4;
            }

            if (vuzp1_s8(*&v46, vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, vorrq_s8(v51, xmmword_25A9C2E70))))).i8[6])
            {
              v50[2] = a4;
              v50[3] = a4;
            }

            v49 += 8;
            v50 += 8;
          }

          while (((v43 + 7) & 0xFFFFFFFFFFFFFFF8) != v49);
        }

        if (v42 >= 1)
        {
          v54 = 0;
          v55 = v9;
          do
          {
            if (v43)
            {
              for (j = 0; j != v43; ++j)
              {
                v57 = v11[j];
                v59 = *v55++;
                v58 = v59;
                if (COERCE_FLOAT(v59 << 16) < COERCE_FLOAT(v57 << 16))
                {
                  LOWORD(v57) = v58;
                }

                v11[j] = v57;
              }
            }

            ++v54;
          }

          while (v54 != v42);
        }

        v9 += v43 * v42;
        v45 = v45 + v43;
        v47 = (v47 + v48);
        v11 = (v11 + v48);
      }

      while (v45 < v44);
    }
  }

LABEL_123:
  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }

  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  v108 = *MEMORY[0x277D85DE8];
}

unsigned __int16 *mlx::core::contiguous_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(unsigned __int16 *result, _WORD *a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v4 = a3 + 1;
    do
    {
      v6 = *result++;
      v5 = v6;
      if (COERCE_FLOAT(v6 << 16) <= COERCE_FLOAT(a4 << 16))
      {
        v5 = a4;
      }

      a4 = v5;
      --v4;
    }

    while (v4 > 1);
  }

  v7 = *a2;
  if (COERCE_FLOAT(v7 << 16) <= COERCE_FLOAT(a4 << 16))
  {
    LOWORD(v7) = a4;
  }

  *a2 = v7;
  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08698;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08718;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2}>,void ()(int)>::operator()(uint64_t result, int *a2)
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
          v9 = *v7;
          v11 = *v6++;
          v10 = v11;
          if (COERCE_FLOAT(v11 << 16) > COERCE_FLOAT(v9 << 16))
          {
            LOWORD(v9) = v10;
          }

          *v7++ = v9;
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

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08798;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 2 * **(result + 24) + 2 * *a2);
  if (COERCE_FLOAT(*v2 << 16) > COERCE_FLOAT(v3 << 16))
  {
    LOWORD(v3) = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unsigned __int16 *mlx::core::contiguous_reduce<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(unsigned __int16 *result, _WORD *a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v4 = a3 + 1;
    do
    {
      v6 = *result++;
      v5 = v6;
      if (COERCE_FLOAT(v6 << 16) >= COERCE_FLOAT(a4 << 16))
      {
        v5 = a4;
      }

      a4 = v5;
      --v4;
    }

    while (v4 > 1);
  }

  v7 = *a2;
  if (COERCE_FLOAT(v7 << 16) >= COERCE_FLOAT(a4 << 16))
  {
    LOWORD(v7) = a4;
  }

  *a2 = v7;
  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08818;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08898;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2}>,void ()(int)>::operator()(uint64_t result, int *a2)
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
          v9 = *v7;
          v11 = *v6++;
          v10 = v11;
          if (COERCE_FLOAT(v11 << 16) < COERCE_FLOAT(v9 << 16))
          {
            LOWORD(v9) = v10;
          }

          *v7++ = v9;
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

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08918;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 2 * **(result + 24) + 2 * *a2);
  if (COERCE_FLOAT(*v2 << 16) < COERCE_FLOAT(v3 << 16))
  {
    LOWORD(v3) = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::_MLX_BFloat16)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float mlx::core::Limits<mlx::core::complex64_t>::min()
{
  {
    mlx::core::Limits<mlx::core::complex64_t>::min();
  }

  return *&mlx::core::Limits<mlx::core::complex64_t>::min(void)::val;
}

void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, int **a3, float a4, float a5)
{
  v102 = *MEMORY[0x277D85DE8];
  v98 = __PAIR64__(LODWORD(a5), LODWORD(a4));
  mlx::core::get_reduction_plan(a1, a3, &v93);
  v8 = (*a1)[19];
  v9 = *a2;
  v10 = *(*a2 + 152);
  v91 = v10;
  v92 = v8;
  v85 = a2;
  if (v93 == 1)
  {
    v12 = v95;
    if (v95 - v94 != 4)
    {
      goto LABEL_11;
    }

    if (*(v9 + 48))
    {
      v13 = 0;
      v14 = *v94;
      v15 = v98;
      v16 = v98;
      do
      {
        *v10 = v15;
        mlx::core::contiguous_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(v8, v10, v14, *&v16, *(&v16 + 1));
        ++v13;
        v10 = v91 + 2;
        v8 = &v92[2 * v14];
        v91 += 2;
        v92 = v8;
      }

      while (*(*a2 + 48) > v13);
    }
  }

  else
  {
    if (!v93)
    {
      v11 = v98;
      *v10 = v98;
      mlx::core::contiguous_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(v8, v10, *(*a1 + 12), *&v11, *(&v11 + 1));
      goto LABEL_82;
    }

    if ((v93 & 0xFFFFFFFD) == 1)
    {
      v12 = v95;
LABEL_11:
      v17 = *(v12 - 1);
      v95 = v12 - 4;
      v97 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v87);
      v18 = *(*a2 + 48);
      if (v95 == v94)
      {
        if (v18)
        {
          v27 = 0;
          do
          {
            v28 = v87;
            v29 = (v88 - v87) >> 2;
            v30 = (v29 - 1);
            if (v29 - 1 < 0)
            {
              v35 = 0;
            }

            else
            {
              v31 = 0;
              v32 = __p;
              quot = v27;
              do
              {
                v34 = ldiv(quot, v28[v30]);
                quot = v34.quot;
                v31 += v32[v30--] * v34.rem;
              }

              while (v30 != -1);
              v35 = 2 * v31;
              a2 = v85;
            }

            v36 = v98;
            *v91 = v98;
            mlx::core::contiguous_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(&v92[v35], v91, v17, *&v36, *(&v36 + 1));
            ++v27;
            v91 += 2;
          }

          while (*(*a2 + 48) > v27);
        }
      }

      else if (v18)
      {
        v19 = v87;
        v20 = (v88 - v87) >> 2;
        v21 = (v20 - 1);
        if (v20 - 1 >= 0)
        {
          v22 = 0;
          v23 = __p;
          v24 = 0;
          do
          {
            v25 = ldiv(v24, v19[v21]);
            v24 = v25.quot;
            v22 += v23[v21--] * v25.rem;
          }

          while (v21 != -1);
        }

        *v91 = v98;
        v101 = 0;
        operator new();
      }

LABEL_78:
      if (__p)
      {
        v90 = __p;
        operator delete(__p);
      }

      if (v87)
      {
        v88 = v87;
        operator delete(v87);
      }

      goto LABEL_82;
    }

    if (v93 != 2)
    {
      if (v93 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v87);
        if (*(*a2 + 48))
        {
          v37 = v87;
          v38 = (v88 - v87) >> 2;
          v39 = (v38 - 1);
          if (v38 - 1 >= 0)
          {
            v40 = 0;
            v41 = __p;
            v42 = 0;
            do
            {
              v43 = ldiv(v42, v37[v39]);
              v42 = v43.quot;
              v40 += v41[v39--] * v43.rem;
            }

            while (v39 != -1);
          }

          v99 = 0;
          operator new();
        }

        goto LABEL_78;
      }

      if (v93 != 4)
      {
        goto LABEL_82;
      }

      v26 = v95;
      goto LABEL_48;
    }

    v26 = v95;
    if (v95 - v94 != 4)
    {
LABEL_48:
      v51 = *(v26 - 1);
      v52 = *(v97 - 1);
      v95 = v26 - 4;
      v97 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v87);
      v53 = *(*a2 + 48);
      if (v95 == v94)
      {
        if (v53)
        {
          v67 = 0;
          v68 = vdupq_n_s64(v52 - 1);
          v69 = xmmword_25A99B0D0;
          v84 = v68;
          do
          {
            v70 = v87;
            v71 = (v88 - v87) >> 2;
            v72 = (v71 - 1);
            if (v71 - 1 < 0)
            {
              v77 = 0;
            }

            else
            {
              v73 = 0;
              v74 = __p;
              v75 = v67;
              do
              {
                v76 = ldiv(v75, v70[v72]);
                v75 = v76.quot;
                v73 += v74[v72--] * v76.rem;
              }

              while (v72 != -1);
              v77 = 2 * v73;
              a2 = v85;
              v69 = xmmword_25A99B0D0;
              v68 = v84;
            }

            v78 = v91;
            if (v52)
            {
              v79 = 0;
              v80 = v98;
              v81 = v91 + 2;
              do
              {
                v82 = vmovn_s64(vcgeq_u64(v68, vorrq_s8(vdupq_n_s64(v79), v69)));
                if (v82.i8[0])
                {
                  *(v81 - 1) = v80;
                }

                if (v82.i8[4])
                {
                  *v81 = v80;
                }

                v79 += 2;
                v81 += 4;
              }

              while (((v52 + 1) & 0xFFFFFFFFFFFFFFFELL) != v79);
              v78 = v91;
            }

            mlx::core::strided_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(&v92[v77], v78, v51, v52);
            v91 += 2 * v52;
            v67 += v52;
            v69 = xmmword_25A99B0D0;
            v68 = v84;
          }

          while (*(*a2 + 48) > v67);
        }
      }

      else if (v53)
      {
        v54 = xmmword_25A99B0D0;
        v55 = v87;
        v56 = (v88 - v87) >> 2;
        v57 = (v56 - 1);
        if (v56 - 1 >= 0)
        {
          v58 = 0;
          v59 = __p;
          v60 = 0;
          do
          {
            v61 = ldiv(v60, v55[v57]);
            v60 = v61.quot;
            v58 += v59[v57--] * v61.rem;
          }

          while (v57 != -1);
          v54 = xmmword_25A99B0D0;
        }

        if (v52)
        {
          v62 = 0;
          v63 = v98;
          v64 = vdupq_n_s64(v52 - 1);
          v65 = v91 + 2;
          do
          {
            v66 = vmovn_s64(vcgeq_u64(v64, vorrq_s8(vdupq_n_s64(v62), v54)));
            if (v66.i8[0])
            {
              *(v65 - 1) = v63;
            }

            if (v66.i8[4])
            {
              *v65 = v63;
            }

            v62 += 2;
            v65 += 4;
          }

          while (((v52 + 1) & 0xFFFFFFFFFFFFFFFELL) != v62);
        }

        v100 = 0;
        operator new();
      }

      goto LABEL_78;
    }

    v44 = *(v95 - 1);
    v45 = *(v97 - 1);
    v95 -= 4;
    v97 -= 8;
    if (*(v9 + 48))
    {
      LODWORD(v46) = 0;
      v86 = vdupq_n_s64(v45 - 1);
      do
      {
        if (v45)
        {
          v47 = 0;
          v48 = v98;
          v49 = (v10 + 2);
          do
          {
            v50 = vmovn_s64(vcgeq_u64(v86, vorrq_s8(vdupq_n_s64(v47), xmmword_25A99B0D0)));
            if (v50.i8[0])
            {
              *(v49 - 1) = v48;
            }

            if (v50.i8[4])
            {
              *v49 = v48;
            }

            v47 += 2;
            v49 += 2;
          }

          while (((v45 + 1) & 0xFFFFFFFFFFFFFFFELL) != v47);
          v10 = v91;
          v8 = v92;
        }

        mlx::core::strided_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(v8, v10, v44, v45);
        v8 = &v92[2 * v45 * v44];
        v10 = &v91[2 * v45];
        v91 = v10;
        v92 = v8;
        v46 = v46 + v45;
      }

      while (v46 < *(*a2 + 48));
    }
  }

LABEL_82:
  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  v83 = *MEMORY[0x277D85DE8];
}

float mlx::core::Limits<mlx::core::complex64_t>::max()
{
  {
    mlx::core::Limits<mlx::core::complex64_t>::max();
  }

  return *&mlx::core::Limits<mlx::core::complex64_t>::max(void)::val;
}

void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, int **a3, float a4, float a5)
{
  v102 = *MEMORY[0x277D85DE8];
  v98 = __PAIR64__(LODWORD(a5), LODWORD(a4));
  mlx::core::get_reduction_plan(a1, a3, &v93);
  v8 = (*a1)[19];
  v9 = *a2;
  v10 = *(*a2 + 152);
  v91 = v10;
  v92 = v8;
  v85 = a2;
  if (v93 == 1)
  {
    v12 = v95;
    if (v95 - v94 != 4)
    {
      goto LABEL_11;
    }

    if (*(v9 + 48))
    {
      v13 = 0;
      v14 = *v94;
      v15 = v98;
      v16 = v98;
      do
      {
        *v10 = v15;
        mlx::core::contiguous_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(v8, v10, v14, *&v16, *(&v16 + 1));
        ++v13;
        v10 = v91 + 2;
        v8 = &v92[2 * v14];
        v91 += 2;
        v92 = v8;
      }

      while (*(*a2 + 48) > v13);
    }
  }

  else
  {
    if (!v93)
    {
      v11 = v98;
      *v10 = v98;
      mlx::core::contiguous_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(v8, v10, *(*a1 + 12), *&v11, *(&v11 + 1));
      goto LABEL_82;
    }

    if ((v93 & 0xFFFFFFFD) == 1)
    {
      v12 = v95;
LABEL_11:
      v17 = *(v12 - 1);
      v95 = v12 - 4;
      v97 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v87);
      v18 = *(*a2 + 48);
      if (v95 == v94)
      {
        if (v18)
        {
          v27 = 0;
          do
          {
            v28 = v87;
            v29 = (v88 - v87) >> 2;
            v30 = (v29 - 1);
            if (v29 - 1 < 0)
            {
              v35 = 0;
            }

            else
            {
              v31 = 0;
              v32 = __p;
              quot = v27;
              do
              {
                v34 = ldiv(quot, v28[v30]);
                quot = v34.quot;
                v31 += v32[v30--] * v34.rem;
              }

              while (v30 != -1);
              v35 = 2 * v31;
              a2 = v85;
            }

            v36 = v98;
            *v91 = v98;
            mlx::core::contiguous_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(&v92[v35], v91, v17, *&v36, *(&v36 + 1));
            ++v27;
            v91 += 2;
          }

          while (*(*a2 + 48) > v27);
        }
      }

      else if (v18)
      {
        v19 = v87;
        v20 = (v88 - v87) >> 2;
        v21 = (v20 - 1);
        if (v20 - 1 >= 0)
        {
          v22 = 0;
          v23 = __p;
          v24 = 0;
          do
          {
            v25 = ldiv(v24, v19[v21]);
            v24 = v25.quot;
            v22 += v23[v21--] * v25.rem;
          }

          while (v21 != -1);
        }

        *v91 = v98;
        v101 = 0;
        operator new();
      }

LABEL_78:
      if (__p)
      {
        v90 = __p;
        operator delete(__p);
      }

      if (v87)
      {
        v88 = v87;
        operator delete(v87);
      }

      goto LABEL_82;
    }

    if (v93 != 2)
    {
      if (v93 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v87);
        if (*(*a2 + 48))
        {
          v37 = v87;
          v38 = (v88 - v87) >> 2;
          v39 = (v38 - 1);
          if (v38 - 1 >= 0)
          {
            v40 = 0;
            v41 = __p;
            v42 = 0;
            do
            {
              v43 = ldiv(v42, v37[v39]);
              v42 = v43.quot;
              v40 += v41[v39--] * v43.rem;
            }

            while (v39 != -1);
          }

          v99 = 0;
          operator new();
        }

        goto LABEL_78;
      }

      if (v93 != 4)
      {
        goto LABEL_82;
      }

      v26 = v95;
      goto LABEL_48;
    }

    v26 = v95;
    if (v95 - v94 != 4)
    {
LABEL_48:
      v51 = *(v26 - 1);
      v52 = *(v97 - 1);
      v95 = v26 - 4;
      v97 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v87);
      v53 = *(*a2 + 48);
      if (v95 == v94)
      {
        if (v53)
        {
          v67 = 0;
          v68 = vdupq_n_s64(v52 - 1);
          v69 = xmmword_25A99B0D0;
          v84 = v68;
          do
          {
            v70 = v87;
            v71 = (v88 - v87) >> 2;
            v72 = (v71 - 1);
            if (v71 - 1 < 0)
            {
              v77 = 0;
            }

            else
            {
              v73 = 0;
              v74 = __p;
              v75 = v67;
              do
              {
                v76 = ldiv(v75, v70[v72]);
                v75 = v76.quot;
                v73 += v74[v72--] * v76.rem;
              }

              while (v72 != -1);
              v77 = 2 * v73;
              a2 = v85;
              v69 = xmmword_25A99B0D0;
              v68 = v84;
            }

            v78 = v91;
            if (v52)
            {
              v79 = 0;
              v80 = v98;
              v81 = v91 + 2;
              do
              {
                v82 = vmovn_s64(vcgeq_u64(v68, vorrq_s8(vdupq_n_s64(v79), v69)));
                if (v82.i8[0])
                {
                  *(v81 - 1) = v80;
                }

                if (v82.i8[4])
                {
                  *v81 = v80;
                }

                v79 += 2;
                v81 += 4;
              }

              while (((v52 + 1) & 0xFFFFFFFFFFFFFFFELL) != v79);
              v78 = v91;
            }

            mlx::core::strided_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(&v92[v77], v78, v51, v52);
            v91 += 2 * v52;
            v67 += v52;
            v69 = xmmword_25A99B0D0;
            v68 = v84;
          }

          while (*(*a2 + 48) > v67);
        }
      }

      else if (v53)
      {
        v54 = xmmword_25A99B0D0;
        v55 = v87;
        v56 = (v88 - v87) >> 2;
        v57 = (v56 - 1);
        if (v56 - 1 >= 0)
        {
          v58 = 0;
          v59 = __p;
          v60 = 0;
          do
          {
            v61 = ldiv(v60, v55[v57]);
            v60 = v61.quot;
            v58 += v59[v57--] * v61.rem;
          }

          while (v57 != -1);
          v54 = xmmword_25A99B0D0;
        }

        if (v52)
        {
          v62 = 0;
          v63 = v98;
          v64 = vdupq_n_s64(v52 - 1);
          v65 = v91 + 2;
          do
          {
            v66 = vmovn_s64(vcgeq_u64(v64, vorrq_s8(vdupq_n_s64(v62), v54)));
            if (v66.i8[0])
            {
              *(v65 - 1) = v63;
            }

            if (v66.i8[4])
            {
              *v65 = v63;
            }

            v62 += 2;
            v65 += 4;
          }

          while (((v52 + 1) & 0xFFFFFFFFFFFFFFFELL) != v62);
        }

        v100 = 0;
        operator new();
      }

      goto LABEL_78;
    }

    v44 = *(v95 - 1);
    v45 = *(v97 - 1);
    v95 -= 4;
    v97 -= 8;
    if (*(v9 + 48))
    {
      LODWORD(v46) = 0;
      v86 = vdupq_n_s64(v45 - 1);
      do
      {
        if (v45)
        {
          v47 = 0;
          v48 = v98;
          v49 = (v10 + 2);
          do
          {
            v50 = vmovn_s64(vcgeq_u64(v86, vorrq_s8(vdupq_n_s64(v47), xmmword_25A99B0D0)));
            if (v50.i8[0])
            {
              *(v49 - 1) = v48;
            }

            if (v50.i8[4])
            {
              *v49 = v48;
            }

            v47 += 2;
            v49 += 2;
          }

          while (((v45 + 1) & 0xFFFFFFFFFFFFFFFELL) != v47);
          v10 = v91;
          v8 = v92;
        }

        mlx::core::strided_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(v8, v10, v44, v45);
        v8 = &v92[2 * v45 * v44];
        v10 = &v91[2 * v45];
        v91 = v10;
        v92 = v8;
        v46 = v46 + v45;
      }

      while (v46 < *(*a2 + 48));
    }
  }

LABEL_82:
  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  v83 = *MEMORY[0x277D85DE8];
}

float *mlx::core::contiguous_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(float *result, float *a2, int a3, float a4, float a5)
{
  if (a3 >= 1)
  {
    v5 = a3 + 1;
    do
    {
      if (*result > a4 || (*result == a4 ? (v6 = result[1] <= a5) : (v6 = 1), !v6))
      {
        a4 = *result;
        a5 = result[1];
      }

      result += 2;
      --v5;
    }

    while (v5 > 1);
  }

  if (*a2 > a4 || (*a2 == a4 ? (v7 = a2[1] <= a5) : (v7 = 1), !v7))
  {
    a4 = *a2;
    a5 = a2[1];
  }

  *a2 = a4;
  a2[1] = a5;
  return result;
}

float *mlx::core::strided_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(float *result, float *a2, int a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      for (j = a4; j; --j)
      {
        v7 = *v5;
        if (*result > *v5 || ((v8 = v5[1], *result == *v5) ? (v9 = result[1] <= v8) : (v9 = 1), !v9))
        {
          v7 = *result;
          v8 = result[1];
        }

        *v5 = v7;
        v5[1] = v8;
        v5 += 2;
        result += 2;
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08998;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08A18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08A98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float **std::__invoke_void_return_wrapper<void,true>::__call[abi:ne200100]<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3} &,int>(float **result, int *a2)
{
  v2 = *result;
  v3 = **result;
  v4 = *result[1] + 8 * *result[2] + 8 * *a2;
  v5 = *v4;
  if (v3 > *v4 || ((v6 = *(v4 + 4), v3 == *v4) ? (v7 = (*result)[1] <= v6) : (v7 = 1), !v7))
  {
    v5 = **result;
    v6 = (*result)[1];
  }

  *v2 = v5;
  v2[1] = v6;
  return result;
}

float *mlx::core::contiguous_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(float *result, float *a2, int a3, float a4, float a5)
{
  if (a3 >= 1)
  {
    v5 = a3 + 1;
    do
    {
      if (a4 > *result || (a4 == *result ? (v6 = a5 <= result[1]) : (v6 = 1), !v6))
      {
        a4 = *result;
        a5 = result[1];
      }

      result += 2;
      --v5;
    }

    while (v5 > 1);
  }

  if (a4 > *a2 || (a4 == *a2 ? (v7 = a5 <= a2[1]) : (v7 = 1), !v7))
  {
    a4 = *a2;
    a5 = a2[1];
  }

  *a2 = a4;
  a2[1] = a5;
  return result;
}

float *mlx::core::strided_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(float *result, float *a2, int a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      for (j = a4; j; --j)
      {
        v7 = *v5;
        if (*v5 > *result || ((v8 = v5[1], *v5 == *result) ? (v9 = v8 <= result[1]) : (v9 = 1), !v9))
        {
          v7 = *result;
          v8 = result[1];
        }

        *v5 = v7;
        v5[1] = v8;
        v5 += 2;
        result += 2;
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08B18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08B98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08C18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float **std::__invoke_void_return_wrapper<void,true>::__call[abi:ne200100]<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3} &,int>(float **result, int *a2)
{
  v2 = *result;
  v3 = **result;
  v4 = *result[1] + 8 * *result[2] + 8 * *a2;
  v5 = *v4;
  if (*v4 > v3 || ((v6 = *(v4 + 4), *v4 == v3) ? (v7 = v6 <= (*result)[1]) : (v7 = 1), !v7))
  {
    v5 = **result;
    v6 = (*result)[1];
  }

  *v2 = v5;
  v2[1] = v6;
  return result;
}

void *std::__function::__func<std::__bind<mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C08CA8;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C08CA8;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void sub_25A82A6A0(_Unwind_Exception *a1)
{
  mlx::core::array::~array(v3);
  mlx::core::array::~array(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08CA8;
  v3 = *(a1 + 16);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a2 + 48) = 0;
  *(a2 + 40) = v5;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 48, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  *(a2 + 76) = 0;
  *(a2 + 73) = 0;
  return result;
}

void sub_25A82A774(_Unwind_Exception *a1)
{
  mlx::core::array::~array(v2);
  mlx::core::array::~array(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<std::__bind<mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  mlx::core::array::~array((a1 + 3));

  mlx::core::array::~array((a1 + 1));
}

void std::__function::__func<std::__bind<mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy_deallocate(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Reduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::LogSumExp::eval_cpu(uint64_t a1, mlx::core::array **a2, uint64_t **a3)
{
  v36[4] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 != 16)
  {
    mlx::core::LogSumExp::eval_cpu();
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  command_encoder = mlx::core::cpu::get_command_encoder(v5, v6);
  v8 = *a2;
  v9 = *v8;
  v10 = **v8;
  if (*(*v8 + 168))
  {
    v11 = v9[1];
    if (*(v9[3] + 2 * (v11 - v10) - 8) == 1)
    {
      v12 = *(v8 + 1);
      v27 = *v8;
      v28 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      goto LABEL_15;
    }

    v13 = (v11 - v10) >> 2;
  }

  else
  {
    v11 = v9[1];
    v13 = (v11 - v10) >> 2;
  }

  __p[0] = 0;
  __p[1] = 0;
  v34 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v10, v11, v13);
  v14 = *(*v8 + 56);
  v31 = 0;
  v32 = 0;
  memset(v30, 0, sizeof(v30));
  mlx::core::array::array(&v27, __p, v14 & 0xFFFFFFFFFFLL, &v31, v30);
  v29[0] = v30;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v29);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  mlx::core::copy(v8, &v27, 2u, v5, v6);
  v29[0] = v27;
  v29[1] = v28;
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  std::vector<mlx::core::array>::push_back[abi:ne200100](command_encoder + 2, v29);
  mlx::core::array::~array(v29);
  v9 = v27;
LABEL_15:
  if ((v9[21] & 2) == 0)
  {
    v15 = v9[1];
    if (v15 != *v9)
    {
      v16 = *(v15 - 4);
      __p[0] = 0;
      __p[1] = 0;
      v34 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, v9[3], v9[4], (v9[4] - v9[3]) >> 3);
      v17 = __p[0];
      v18 = __p[1];
      if (__p[0] != __p[1])
      {
        v19 = __p[0];
        do
        {
          *v19++ /= v16;
        }

        while (v19 != v18);
      }

      if (*v17 == 1 && (__p[1] - __p[0]) >= 9)
      {
        v20 = 0;
        do
        {
          if (mlx::core::array::shape(a3, v20 + 1) != 1)
          {
            v21 = *(__p[0] + v20);
            v22 = mlx::core::array::shape(a3, v20 + 1);
            if (v21 != *(__p[0] + v20 + 1) * v22)
            {
              break;
            }
          }

          v23 = v20 + 2;
          ++v20;
        }

        while (v23 < (__p[1] - __p[0]) >> 3);
      }

      v25 = mlx::core::allocator::malloc((*(v27 + 60) * v27[6] / v16));
      v26 = v27[20];
      __p[1] = 0;
      v34 = 0;
      __p[0] = 0;
      v35[0] = &unk_286BE3468;
      v35[1] = mlx::core::allocator::free;
      v35[3] = v35;
      mlx::core::array::set_data(a3, v25);
    }

    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v24 = mlx::core::allocator::malloc((*(*a3 + 60) * (*a3)[6]));
  v36[0] = &unk_286BE3468;
  v36[1] = mlx::core::allocator::free;
  v36[3] = v36;
  mlx::core::array::set_data(a3, v24);
}

void sub_25A82B684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24)
{
  __cxa_free_exception(v25);
  std::mutex::unlock(v24);
  mlx::core::array::~array(&a12);
  _Unwind_Resume(a1);
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19logsumexpIffEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08E28;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19logsumexpIffEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19logsumexpIffEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::logsumexp<float,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 16);
    v6 = vdupq_n_s32(0x3FB8AA3Bu);
    v7.i64[0] = 0x3F0000003F000000;
    v7.i64[1] = 0x3F0000003F000000;
    v8 = vdupq_n_s32(0x3920FDDEu);
    v9 = vdupq_n_s32(0x3AAF9F29u);
    v10 = vdupq_n_s32(0x3C1D96A6u);
    v11 = vdupq_n_s32(0x3D635774u);
    v12 = vdupq_n_s32(0x3E75FDEEu);
    v13 = vdupq_n_s32(0x3F317218u);
    __asm { FMOV            V29.4S, #1.0 }

    v19 = vdupq_n_s32(0x42B00000u);
    v20.i64[0] = 0x7F0000007FLL;
    v20.i64[1] = 0x7F0000007FLL;
    v21 = *a1;
    v22 = *(a1 + 8);
    v23 = vnegq_f32(v20);
    v24 = vdupq_n_s32(0xC2B00000);
    v62 = v6;
    v60 = v9;
    v61 = v8;
    v58 = v11;
    v59 = v10;
    v56 = v13;
    v57 = v12;
    v54 = v19;
    v55 = _Q29;
    v52 = v24;
    v53 = v23;
    do
    {
      v25.i64[0] = 0x7F0000007FLL;
      v25.i64[1] = 0x7F0000007FLL;
      v26.i64[0] = 0x7F0000007FLL;
      v26.i64[1] = 0x7F0000007FLL;
      i = v5;
      v28 = v21;
      if (v5 >= 8)
      {
        v28 = v21;
        for (i = v5; i > 7; i -= 8)
        {
          v30 = *v28;
          v29 = *(v28 + 1);
          v28 += 2;
          v25 = vmaxnmq_f32(v30, v25);
          v26 = vmaxnmq_f32(v29, v26);
        }
      }

      for (*&v1 = vmaxvq_f32(vmaxnmq_f32(v25, v26)); i; --i)
      {
        v31 = *v28;
        v28 = (v28 + 4);
        v32 = v31;
        if (*&v1 < v31)
        {
          *&v1 = v32;
        }
      }

      v33 = 0uLL;
      v34 = 0uLL;
      j = v5;
      v36 = v21;
      if (v5 >= 8)
      {
        v37 = vdupq_lane_s32(*&v1, 0);
        v36 = v21;
        for (j = v5; j > 7; j -= 8)
        {
          v39 = *v36;
          v38 = *(v36 + 1);
          v36 += 2;
          v40 = vsubq_f32(v39, v37);
          v41 = vsubq_f32(v38, v37);
          v42 = vmulq_f32(v41, v6);
          v43 = vmulq_f32(v40, v6);
          v44 = vrndmq_f32(vaddq_f32(v42, v7));
          v45 = vrndmq_f32(vaddq_f32(v43, v7));
          v46 = vsubq_f32(v43, v45);
          v47 = vsubq_f32(v42, v44);
          v34 = vaddq_f32(v34, vbicq_s8(vbslq_s8(vcgtq_f32(v41, v19), v23, vbslq_s8(vceqq_f32(v41, v41), vmulq_f32(vmlaq_f32(_Q29, v47, vmlaq_f32(v13, v47, vmlaq_f32(v12, v47, vmlaq_f32(v11, v47, vmlaq_f32(v10, v47, vmlaq_f32(v9, v8, v47)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v44), 0x17uLL), _Q29)), v41)), vcgtq_f32(v24, v41)));
          v33 = vaddq_f32(v33, vbicq_s8(vbslq_s8(vcgtq_f32(v40, v19), v23, vbslq_s8(vceqq_f32(v40, v40), vmulq_f32(vmlaq_f32(_Q29, v46, vmlaq_f32(v13, v46, vmlaq_f32(v12, v46, vmlaq_f32(v11, v46, vmlaq_f32(v10, v46, vmlaq_f32(v9, v8, v46)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v45), 0x17uLL), _Q29)), v40)), vcgtq_f32(v24, v40)));
        }
      }

      v48 = vaddq_f32(v33, v34);
      v49 = vaddv_f32(vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL)));
      for (k = v1; j; v49 = v49 + v51)
      {
        --j;
        v50 = *v36;
        v36 = (v36 + 4);
        v51 = expf(v50 - *&v1);
        v1 = k;
      }

      if (fabsf(*&v1) != INFINITY)
      {
        v1 = k;
        *&v1 = *&k + logf(v49);
      }

      v6 = v62;
      v7.i64[0] = 0x3F0000003F000000;
      v7.i64[1] = 0x3F0000003F000000;
      v9 = v60;
      v8 = v61;
      v11 = v58;
      v10 = v59;
      v13 = v56;
      v12 = v57;
      v19 = v54;
      _Q29 = v55;
      v24 = v52;
      v23 = v53;
      *v22++ = v1;
      ++v4;
      v21 = (v21 + 4 * v5);
      *a1 = v21;
      *(a1 + 8) = v22;
    }

    while (v4 != v2);
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::logsumexp<float,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::logsumexp<float,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08EA8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::logsumexp<float,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::logsumexp<float,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19logsumexpIDhfEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C08FA0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19logsumexpIDhfEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19logsumexpIDhfEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::logsumexp<half,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 16);
    v6 = vdupq_n_s32(0x3FB8AA3Bu);
    v7.i64[0] = 0x3F0000003F000000;
    v7.i64[1] = 0x3F0000003F000000;
    v8 = vdupq_n_s32(0x3920FDDEu);
    v9 = vdupq_n_s32(0x3AAF9F29u);
    v10 = vdupq_n_s32(0x3C1D96A6u);
    v11 = vdupq_n_s32(0x3D635774u);
    v12 = vdupq_n_s32(0x3E75FDEEu);
    v13 = vdupq_n_s32(0x3F317218u);
    __asm { FMOV            V28.4S, #1.0 }

    v19 = vdupq_n_s32(0x42B00000u);
    v20.i64[0] = 0x7F0000007FLL;
    v20.i64[1] = 0x7F0000007FLL;
    v21 = *a1;
    v22 = *(a1 + 8);
    v23 = vnegq_f32(v20);
    v24 = vdupq_n_s32(0xC2B00000);
    v64 = v6;
    v62 = v9;
    v63 = v8;
    v60 = v11;
    v61 = v10;
    v58 = v13;
    v59 = v12;
    v56 = v19;
    v57 = _Q28;
    v54 = v24;
    v55 = v23;
    do
    {
      v25.i64[0] = 0x7F0000007FLL;
      v25.i64[1] = 0x7F0000007FLL;
      v26.i64[0] = 0x7F0000007FLL;
      v26.i64[1] = 0x7F0000007FLL;
      i = v5;
      v28 = v21;
      if (v5 >= 8)
      {
        v28 = v21;
        for (i = v5; i > 7; i -= 8)
        {
          v29 = *v28++;
          v25 = vmaxnmq_f32(vcvtq_f32_f16(*v29.i8), v25);
          v26 = vmaxnmq_f32(vcvt_hight_f32_f16(v29), v26);
        }
      }

      for (*&_Q9 = vmaxvq_f32(vmaxnmq_f32(v25, v26)); i; --i)
      {
        v30 = v28->i16[0];
        v28 = (v28 + 2);
        _H0 = v30;
        __asm { FCVT            S0, H0 }

        if (*&_Q9 < _S0)
        {
          *&_Q9 = _S0;
        }
      }

      v33 = 0uLL;
      v34 = 0uLL;
      j = v5;
      v36 = v21;
      if (v5 >= 8)
      {
        v37 = vdupq_lane_s32(*&_Q9, 0);
        v36 = v21;
        for (j = v5; j > 7; j -= 8)
        {
          v38 = *v36++;
          v39 = vsubq_f32(vcvtq_f32_f16(*v38.i8), v37);
          v40 = vsubq_f32(vcvt_hight_f32_f16(v38), v37);
          v41 = vmulq_f32(v40, v6);
          v42 = vmulq_f32(v39, v6);
          v43 = vrndmq_f32(vaddq_f32(v41, v7));
          v44 = vrndmq_f32(vaddq_f32(v42, v7));
          v45 = vsubq_f32(v42, v44);
          v46 = vsubq_f32(v41, v43);
          v34 = vaddq_f32(v34, vbicq_s8(vbslq_s8(vcgtq_f32(v40, v19), v23, vbslq_s8(vceqq_f32(v40, v40), vmulq_f32(vmlaq_f32(_Q28, v46, vmlaq_f32(v13, v46, vmlaq_f32(v12, v46, vmlaq_f32(v11, v46, vmlaq_f32(v10, v46, vmlaq_f32(v9, v8, v46)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v43), 0x17uLL), _Q28)), v40)), vcgtq_f32(v24, v40)));
          v33 = vaddq_f32(v33, vbicq_s8(vbslq_s8(vcgtq_f32(v39, v19), v23, vbslq_s8(vceqq_f32(v39, v39), vmulq_f32(vmlaq_f32(_Q28, v45, vmlaq_f32(v13, v45, vmlaq_f32(v12, v45, vmlaq_f32(v11, v45, vmlaq_f32(v10, v45, vmlaq_f32(v9, v8, v45)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v44), 0x17uLL), _Q28)), v39)), vcgtq_f32(v24, v39)));
        }
      }

      v47 = vaddq_f32(v33, v34);
      v48 = vaddv_f32(vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL)));
      for (k = _Q9; j; v48 = v48 + v52)
      {
        --j;
        v49 = v36->i16[0];
        v36 = (v36 + 2);
        _H0 = v49;
        __asm { FCVT            S0, H0 }

        v52 = expf(_S0 - *&_Q9);
        _Q9 = k;
      }

      if (fabsf(*&_Q9) != INFINITY)
      {
        _Q9 = k;
        *&_Q9 = *&k + logf(v48);
      }

      v6 = v64;
      v7.i64[0] = 0x3F0000003F000000;
      v7.i64[1] = 0x3F0000003F000000;
      v9 = v62;
      v8 = v63;
      v11 = v60;
      v10 = v61;
      v13 = v58;
      v12 = v59;
      v19 = v56;
      _Q28 = v57;
      v24 = v54;
      v23 = v55;
      __asm { FCVT            H0, S9 }

      *v22++ = _H0;
      ++v4;
      v21 = (v21 + 2 * v5);
      *a1 = v21;
      *(a1 + 8) = v22;
    }

    while (v4 != v2);
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::logsumexp<half,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::logsumexp<half,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C09020;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::logsumexp<half,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::logsumexp<half,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19logsumexpINS3_13_MLX_BFloat16EfEEvRKNS3_5arrayERSA_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C09118;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19logsumexpINS3_13_MLX_BFloat16EfEEvRKNS3_5arrayERSA_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19logsumexpINS3_13_MLX_BFloat16EfEEvRKNS3_5arrayERSA_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::logsumexp<mlx::core::_MLX_BFloat16,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(unsigned __int16 **a1)
{
  if (*(a1 + 5) >= 1)
  {
    v2 = 0;
    v3 = *a1;
    LODWORD(v4) = *(a1 + 4);
    do
    {
      if (v4)
      {
        v5 = v4;
        v6 = -INFINITY;
        v7 = v3;
        v8 = v5;
        do
        {
          v9 = *v7++;
          LODWORD(v10) = v9 << 16;
          if (v6 < COERCE_FLOAT(v9 << 16))
          {
            v6 = v10;
          }

          --v8;
        }

        while (v8);
        v11 = 0.0;
        do
        {
          v12 = *v3++;
          v11 = v11 + mlx::core::simd::exp<float,1>(COERCE_FLOAT(v12 << 16) - v6);
          --v5;
        }

        while (v5);
      }

      else
      {
        v11 = 0.0;
        v6 = -INFINITY;
      }

      if (fabsf(v6) == INFINITY)
      {
        v13 = HIWORD(LODWORD(v6));
      }

      else
      {
        v14 = logf(v11);
        v13 = (COERCE_INT(v6 + v14) + (HIWORD(COERCE_UNSIGNED_INT(v6 + v14)) & 1) + 0x7FFF) >> 16;
      }

      v16 = *a1;
      v15 = a1[1];
      *v15 = v13;
      ++v2;
      v17 = *(a1 + 5);
      v4 = *(a1 + 4);
      v3 = (v16 + 2 * v4);
      *a1 = v3;
      a1[1] = v15 + 1;
    }

    while (v2 < v17);
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::logsumexp<mlx::core::_MLX_BFloat16,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::logsumexp<mlx::core::_MLX_BFloat16,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C09198;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::logsumexp<mlx::core::_MLX_BFloat16,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::logsumexp<mlx::core::_MLX_BFloat16,float>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19logsumexpIddEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C09290;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19logsumexpIddEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_19logsumexpIddEEvRKNS3_5arrayERS9_NS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISK_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::logsumexp<double,double>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2 >= 1)
  {
    v4 = 0;
    v60 = vdupq_n_s64(0xFFF0000000000000);
    v5 = *(a1 + 16);
    v6 = vdupq_n_s32(0x3FB8AA3Bu);
    v7.i64[0] = 0x3F0000003F000000;
    v7.i64[1] = 0x3F0000003F000000;
    v8 = vdupq_n_s32(0x3920FDDEu);
    v9 = vdupq_n_s32(0x3AAF9F29u);
    v10 = vdupq_n_s32(0x3C1D96A6u);
    v11 = vdupq_n_s32(0x3D635774u);
    v12 = vdupq_n_s32(0x3E75FDEEu);
    v13 = vdupq_n_s32(0x3F317218u);
    __asm { FMOV            V24.4S, #1.0 }

    v19 = vdupq_n_s32(0x42B00000u);
    v20 = vdupq_n_s32(0xC2B00000);
    v21 = *a1;
    v22 = *(a1 + 8);
    v23.i64[0] = 0x7F0000007FLL;
    v23.i64[1] = 0x7F0000007FLL;
    v24 = vnegq_f32(v23);
    v59 = v6;
    v57 = v9;
    v58 = v8;
    v55 = v11;
    v56 = v10;
    v53 = v13;
    v54 = v12;
    v51 = v19;
    v52 = _Q24;
    v49 = v24;
    v50 = v20;
    do
    {
      v25 = v60;
      v26 = v60;
      v27 = v5;
      v28 = v21;
      if (v5 >= 4)
      {
        v28 = v21;
        v27 = v5;
        v25 = v60;
        v26 = v60;
        do
        {
          v30 = *v28;
          v29 = *(v28 + 1);
          v28 += 2;
          v26 = vmaxnmq_f64(v30, v26);
          v25 = vmaxnmq_f64(v29, v25);
          v27 -= 4;
        }

        while (v27 > 3);
      }

      for (*&v1 = vpmaxq_f64(vmaxnmq_f64(v26, v25)); v27; --v27)
      {
        v31 = *v28;
        v28 = (v28 + 8);
        v32 = v31;
        if (*&v1 < v31)
        {
          *&v1 = v32;
        }
      }

      v33 = 0uLL;
      v34 = 0uLL;
      i = v5;
      v36 = v21;
      if (v5 >= 4)
      {
        v37 = vdupq_lane_s64(v1, 0);
        v36 = v21;
        for (i = v5; i > 3; i -= 4)
        {
          v38 = *v36;
          v39 = *(v36 + 1);
          v36 += 2;
          v40 = vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(v38, v37)), vsubq_f64(v39, v37));
          v41 = vmulq_f32(v40, v6);
          v42 = vrndmq_f32(vaddq_f32(v41, v7));
          v43 = vsubq_f32(v41, v42);
          v44 = vbicq_s8(vbslq_s8(vcgtq_f32(v40, v19), v24, vbslq_s8(vceqq_f32(v40, v40), vmulq_f32(vmlaq_f32(_Q24, v43, vmlaq_f32(v13, v43, vmlaq_f32(v12, v43, vmlaq_f32(v11, v43, vmlaq_f32(v10, v43, vmlaq_f32(v9, v8, v43)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v42), 0x17uLL), _Q24)), v40)), vcgtq_f32(v20, v40));
          v34 = vaddq_f64(v34, vcvt_hight_f64_f32(v44));
          v33 = vaddq_f64(v33, vcvtq_f64_f32(*v44.f32));
        }
      }

      v45 = vaddvq_f64(vaddq_f64(v33, v34));
      for (j = v1; i; v45 = v45 + v47)
      {
        --i;
        v46 = *v36;
        v36 = (v36 + 8);
        v47 = exp(v46 - *&v1);
        v1 = j;
      }

      if (fabs(*&v1) != INFINITY)
      {
        v48 = log(v45);
        *(&v1 + 1) = *(&j + 1);
        *&v1 = *&j + v48;
      }

      v6 = v59;
      v7.i64[0] = 0x3F0000003F000000;
      v7.i64[1] = 0x3F0000003F000000;
      v9 = v57;
      v8 = v58;
      v11 = v55;
      v10 = v56;
      v13 = v53;
      v12 = v54;
      v19 = v51;
      _Q24 = v52;
      v24 = v49;
      v20 = v50;
      *v22++ = v1;
      ++v4;
      v21 = (v21 + 8 * v5);
      *a1 = v21;
      *(a1 + 8) = v22;
    }

    while (v4 != v2);
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::logsumexp<double,double>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::logsumexp<double,double>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C09310;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::logsumexp<double,double>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::logsumexp<double,double>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::print_constant(void *a1, mlx::core::array *a2)
{
  switch(*(*a2 + 56))
  {
    case 0:
      *(a1 + *(*a1 - 24) + 8) |= 1u;
      mlx::core::array::item<unsigned char>(a2);

      JUMPOUT(0x25F851330);
    case 1:
      mlx::core::array::item<unsigned char>(a2);
      goto LABEL_33;
    case 2:
      mlx::core::array::item<mlx::core::_MLX_BFloat16>(a2);

      JUMPOUT(0x25F8513A0);
    case 3:
      mlx::core::array::item<int>(a2);
LABEL_33:

      JUMPOUT(0x25F851370);
    case 4:
      mlx::core::array::item<long long>(a2);

      JUMPOUT(0x25F8513C0);
    case 5:
      mlx::core::array::item<signed char>(a2);
      goto LABEL_28;
    case 6:
      mlx::core::array::item<short>(a2);

      JUMPOUT(0x25F851390);
    case 7:
      mlx::core::array::item<int>(a2);
LABEL_28:

      JUMPOUT(0x25F851360);
    case 8:
      mlx::core::array::item<long long>(a2);

      JUMPOUT(0x25F8513B0);
    case 9:

      mlx::core::print_float_constant<half>(a1, a2);
      break;
    case 0xA:

      mlx::core::print_float_constant<float>(a1, a2);
      break;
    case 0xC:

      mlx::core::print_float_constant<mlx::core::_MLX_BFloat16>(a1, a2);
      break;
    case 0xD:

      mlx::core::print_complex_constant<mlx::core::complex64_t>(a1, a2);
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unsupported constant type");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void *mlx::core::print_float_constant<float>(void *a1, mlx::core::array *a2)
{
  v2 = a1 + *(*a1 - 24);
  v3 = *(v2 + 4);
  *(v2 + 2) = 7;
  mlx::core::array::item<float>(a2);
  result = std::ostream::operator<<();
  *(result + *(*result - 24) + 16) = v3;
  return result;
}

void *mlx::core::print_float_constant<half>(void *a1, mlx::core::array *a2)
{
  v2 = a1 + *(*a1 - 24);
  v3 = *(v2 + 4);
  *(v2 + 2) = 7;
  _H0 = mlx::core::array::item<half>(a2);
  __asm { FCVT            S0, H0 }

  result = std::ostream::operator<<();
  *(result + *(*result - 24) + 16) = v3;
  return result;
}

void *mlx::core::print_float_constant<mlx::core::_MLX_BFloat16>(void *a1, mlx::core::array *a2)
{
  v2 = a1 + *(*a1 - 24);
  v3 = *(v2 + 4);
  *(v2 + 2) = 7;
  mlx::core::array::item<mlx::core::_MLX_BFloat16>(a2);
  result = std::ostream::operator<<();
  *(result + *(*result - 24) + 16) = v3;
  return result;
}

void mlx::core::print_complex_constant<mlx::core::complex64_t>(void *a1, mlx::core::array *a2)
{
  v4 = *(a1 + *(*a1 - 24) + 16);
  mlx::core::array::item<mlx::core::complex64_t>(a2);
  mlx::core::get_type_string(*(*a2 + 56) & 0xFFFFFFFFFFLL, __p);
  if ((v13 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v6 = v13;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "(", 1);
  *(v8 + *(*v8 - 24) + 16) = 7;
  v9 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
  v10 = std::ostream::operator<<();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ")", 1);
  *(v11 + *(*v11 - 24) + 16) = v4;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_25A82D088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::array::item<signed char>(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

uint64_t mlx::core::array::item<unsigned char>(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

_BYTE *mlx::core::get_type_string@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v9 = a1;
  if (a1 >= 0xE || ((0x37FFu >> a1) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "Unsupported compilation type ", 29);
    mlx::core::operator<<(v4, &v9);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str[abi:ne200100](&v8, v6);
    MEMORY[0x25F851100](exception, v6);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = off_279921658[a1 & 0xF];

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void sub_25A82D2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a16);
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

uint64_t mlx::core::build_lib_name@<X0>(const mlx::core::array **a1@<X0>, const mlx::core::array **a2@<X2>, void *a3@<X3>, _BYTE *a4@<X8>)
{
  memset(v64, 0, sizeof(v64));
  v65 = 1065353216;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v55);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v46);
  v8 = *a1;
  v9 = a1[1];
  while (v8 != v9)
  {
    mlx::core::NodeNamer::get_name(v64, v8);
    v8 = (v8 + 16);
  }

  v10 = *a2;
  v11 = a2[1];
  while (v10 != v11)
  {
    name = mlx::core::NodeNamer::get_name(v64, v10);
    v13 = *(name + 23);
    if (v13 >= 0)
    {
      v14 = name;
    }

    else
    {
      v14 = *name;
    }

    if (v13 >= 0)
    {
      v15 = *(name + 23);
    }

    else
    {
      v15 = name[1];
    }

    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, v14, v15);
    v17 = *(*v10 + 56);
    LODWORD(__p) = v17;
    BYTE4(__p) = BYTE4(v17);
    v45 = mlx::core::kindof(&__p);
    v18 = mlx::core::operator<<(v16, &v45);
    MEMORY[0x25F851380](v18, *(*v10 + 60));
    (*(**(*v10 + 64) + 40))(*(*v10 + 64), &v55);
    v19 = *(*v10 + 176);
    v20 = *(*v10 + 184);
    while (v19 != v20)
    {
      v21 = mlx::core::NodeNamer::get_name(v64, v19);
      v22 = *(v21 + 23);
      if (v22 >= 0)
      {
        v23 = v21;
      }

      else
      {
        v23 = *v21;
      }

      if (v22 >= 0)
      {
        v24 = *(v21 + 23);
      }

      else
      {
        v24 = v21[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, v23, v24);
      v19 = (v19 + 16);
    }

    v10 = (v10 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "_", 1);
  v25 = *a1;
  v26 = a1[1];
  if (*a1 != v26)
  {
    do
    {
      __p = *v25;
      if (std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(a3, &__p))
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "C", 1);
        mlx::core::print_constant(&v46, v25);
      }

      else
      {
        if (*(*v25 + 1) == **v25)
        {
          v27 = "S";
        }

        else
        {
          v27 = "V";
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, v27, 1);
      }

      v25 += 2;
    }

    while (v25 != v26);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "_", 1);
  v29 = *a1;
  v28 = a1[1];
  while (v29 != v28)
  {
    __p = *v29;
    if (!std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(a3, &__p))
    {
      v30 = *(*v29 + 7);
      LODWORD(__p) = v30;
      BYTE4(__p) = BYTE4(v30);
      v45 = mlx::core::kindof(&__p);
      v31 = mlx::core::operator<<(&v55, &v45);
      MEMORY[0x25F851380](v31, *(*v29 + 60));
    }

    v29 += 2;
  }

  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "_", 1);
  if ((v53 & 0x10) != 0)
  {
    v34 = v52;
    if (v52 < v49)
    {
      v52 = v49;
      v34 = v49;
    }

    locale = v48[4].__locale_;
  }

  else
  {
    if ((v53 & 8) == 0)
    {
      v33 = 0;
      v44 = 0;
      goto LABEL_48;
    }

    locale = v48[1].__locale_;
    v34 = v48[3].__locale_;
  }

  v33 = v34 - locale;
  if ((v34 - locale) > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v33 >= 0x17)
  {
    operator new();
  }

  v44 = v34 - locale;
  if (v33)
  {
    memmove(&__p, locale, v33);
  }

LABEL_48:
  *(&__p + v33) = 0;
  v36 = std::__string_hash<char>::operator()[abi:ne200100](&v45, &__p);
  MEMORY[0x25F851380](v32, v36);
  if (v44 < 0)
  {
    operator delete(__p);
  }

  if ((v62 & 0x10) != 0)
  {
    v38 = v61;
    if (v61 < v58)
    {
      v61 = v58;
      v38 = v58;
    }

    v39 = v57[4].__locale_;
  }

  else
  {
    if ((v62 & 8) == 0)
    {
      v37 = 0;
      a4[23] = 0;
      goto LABEL_63;
    }

    v39 = v57[1].__locale_;
    v38 = v57[3].__locale_;
  }

  v37 = v38 - v39;
  if ((v38 - v39) > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v37 >= 0x17)
  {
    operator new();
  }

  a4[23] = v37;
  if (v37)
  {
    memmove(a4, v39, v37);
  }

LABEL_63:
  a4[v37] = 0;
  v46 = *MEMORY[0x277D82828];
  v40 = v46;
  v41 = *(MEMORY[0x277D82828] + 24);
  *(&v46 + *(v46 - 24)) = v41;
  v47 = MEMORY[0x277D82878] + 16;
  if (v51 < 0)
  {
    operator delete(v50);
  }

  v47 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v48);
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](&v54);
  v55 = v40;
  *(&v55 + *(v40 - 24)) = v41;
  v56 = MEMORY[0x277D82878] + 16;
  if (v60 < 0)
  {
    operator delete(v59);
  }

  v56 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v57);
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](&v63);
  return std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::~__hash_table(v64);
}

void sub_25A82D940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  std::ostringstream::~ostringstream(&a49);
  std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::~__hash_table(v49 - 128);
  _Unwind_Resume(a1);
}

BOOL mlx::core::compiled_check_contiguity(const void ****a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v5 = 0;
    LOBYTE(v10) = 1;
    LOBYTE(v9) = 1;
    v8 = 1;
  }

  else
  {
    v5 = 0;
    v6 = *a2;
    v7 = *(a2 + 8) - *a2;
    v8 = 1;
    LOBYTE(v9) = 1;
    LOBYTE(v10) = 1;
    do
    {
      v11 = *v3;
      v12 = **v3;
      v13 = (*v3)[1] - v12;
      if (v13)
      {
        v14 = v13 == v7 && memcmp(v12, v6, v7) == 0;
        ++v5;
        v15 = *(v11 + 168);
        v8 &= v14 & v15;
        v9 &= *&v14 & ((v15 & 2) >> 1);
        v10 &= *&v14 & ((v15 & 4) >> 2);
      }

      v3 += 2;
    }

    while (v3 != v4);
  }

  result = 0;
  if ((v5 < 2) | (v9 | v10) & 1 && (v5 != 1) | v8 & 1)
  {
    return v5 || *a2 == *(a2 + 8);
  }

  return result;
}

void mlx::core::compiled_allocate_outputs(uint64_t *a1, void *a2, void *a3, void *a4, char a5)
{
  v42[4] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v9 = *a1;
    if (a1[1] == *a1)
    {
      v13 = 0;
      v28 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        if (v12 >= ((a2[1] - *a2) >> 4))
        {
          break;
        }

        v14 = *(v9 + v10);
        if (((*(*(*a2 + 16 * v12) + 56) ^ v14[7]) & 0xFF00000000) == 0 && v14[1] != *v14)
        {
          v17 = *(v9 + v10 + 8);
          if (v17)
          {
            if (!*(v17 + 8))
            {
              v18 = v14[18];
              if (v18)
              {
                if (!*(v18 + 8))
                {
                  v37 = *(*a3 + v10);
                  if (!std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(a4, &v37))
                  {
                    mlx::core::array::copy_shared_buffer((*a2 + 16 * v12++), (v9 + v10));
                  }
                }
              }
            }
          }
        }

        if (v38 == v39)
        {
          v15 = *(v9 + v10);
          if (*(v15 + 48) == *(**a2 + 48))
          {
            if (&v38 != (v15 + 24))
            {
              std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v38, *(v15 + 24), *(v15 + 32), (*(v15 + 32) - *(v15 + 24)) >> 3);
              v15 = *(v9 + v10);
            }

            v16 = *(v15 + 168);
            v13 = *(v15 + 160);
          }
        }

        ++v11;
        v9 = *a1;
        v10 += 16;
      }

      while (v11 < (a1[1] - *a1) >> 4);
      v28 = v12;
    }

    v29 = *a2;
    if (v28 < (a2[1] - *a2) >> 4)
    {
      v30 = mlx::core::allocator::malloc((*(*(v29 + 16 * v28) + 60) * v13));
      memset(__p, 0, sizeof(__p));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, v38, v39, (v39 - v38) >> 3);
      v42[0] = &unk_286BE3468;
      v42[1] = mlx::core::allocator::free;
      v42[3] = v42;
      mlx::core::array::set_data(v29 + 16 * v28, v30);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }
  }

  else
  {
    v19 = *a1;
    if (a1[1] == *a1)
    {
      v27 = 0;
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      do
      {
        if (v22 >= ((a2[1] - *a2) >> 4))
        {
          break;
        }

        v23 = *(v19 + v20);
        if ((*(v23 + 168) & 2) != 0)
        {
          v24 = *(*a2 + 16 * v22);
          if (*(v23 + 48) == *(v24 + 48) && ((*(v24 + 56) ^ *(v23 + 56)) & 0xFF00000000) == 0)
          {
            v25 = *(v19 + v20 + 8);
            if (v25)
            {
              if (!*(v25 + 8))
              {
                v26 = *(v23 + 144);
                if (v26)
                {
                  if (!*(v26 + 8))
                  {
                    v38 = *(*a3 + v20);
                    if (!std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(a4, &v38))
                    {
                      mlx::core::array::copy_shared_buffer((*a2 + 16 * v22), v19 + v20, (*(*a2 + 16 * v22) + 24), *(*(v19 + v20) + 168), *(*(v19 + v20) + 160), 0);
                      ++v22;
                    }
                  }
                }
              }
            }
          }
        }

        ++v21;
        v19 = *a1;
        v20 += 16;
      }

      while (v21 < (a1[1] - *a1) >> 4);
      v27 = v22;
    }

    v31 = *a2;
    if (v27 < (a2[1] - *a2) >> 4)
    {
      v32 = mlx::core::allocator::malloc((*(*(v31 + 16 * v27) + 60) * *(*(v31 + 16 * v27) + 48)));
      v41[0] = &unk_286BE3468;
      v41[1] = mlx::core::allocator::free;
      v41[3] = v41;
      mlx::core::array::set_data(v31 + 16 * v27, v32);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_25A82DF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float mlx::core::array::item<float>(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

__int16 mlx::core::array::item<half>@<H0>(mlx::core::array *a1@<X0>)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

uint64_t mlx::core::array::item<mlx::core::_MLX_BFloat16>(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

float mlx::core::array::item<mlx::core::complex64_t>(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  v2 = *(*a1 + 152);
  result = *v2;
  v4 = *(v2 + 4);
  return result;
}

uint64_t mlx::core::array::item<short>(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

uint64_t mlx::core::array::item<int>(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

uint64_t mlx::core::array::item<long long>(mlx::core::array *a1)
{
  if (*(*a1 + 48) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item can only be called on arrays of size 1.");
    goto LABEL_6;
  }

  if (!*(*a1 + 80))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "item() const can only be called on evaled arrays");
LABEL_6:
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  mlx::core::array::eval(a1);
  return **(*a1 + 152);
}

void mlx::core::collapse_contiguous_dims(int **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v7 = *a1;
  v8 = a1[1];
  if (v8 != *a1)
  {
    if (*v7 == 1)
    {
      v10 = 1;
    }

    else
    {
      LODWORD(__p) = 0;
      std::vector<int>::push_back[abi:ne200100](&v45, &__p);
      v7 = *a1;
      v8 = a1[1];
      v10 = **a1;
    }

    LODWORD(__p) = 1;
    if ((v8 - v7) >= 5)
    {
      v11 = 1;
      v12 = 1;
      do
      {
        v13 = *&v7[4 * v11];
        v10 *= v13;
        v14 = *a2;
        v15 = *(a2 + 8);
        if (*a2 != v15)
        {
          if (v10 <= a3)
          {
            while (*(*v14 + 8 * v11) * v13 == *(*v14 + 8 * v12 - 8))
            {
              v14 += 3;
              if (v14 == v15)
              {
                goto LABEL_12;
              }
            }
          }

          LODWORD(v40) = -1;
          std::vector<int>::push_back[abi:ne200100](&v45, &v40);
          v12 = __p;
          v7 = *a1;
          v10 = v13;
        }

LABEL_12:
        if (*&v7[4 * v12] != 1)
        {
          std::vector<int>::push_back[abi:ne200100](&v45, &__p);
          v12 = __p;
          v7 = *a1;
        }

        LODWORD(__p) = ++v12;
        v11 = v12;
      }

      while (v12 < ((a1[1] - v7) >> 2));
    }

    LODWORD(__p) = -1;
    std::vector<int>::push_back[abi:ne200100](&v45, &__p);
  }

  __p = 0;
  v43 = 0;
  v44 = 0;
  std::vector<std::vector<long long>>::vector[abi:ne200100](&v40, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  for (i = 0; ; i += 2)
  {
    v17 = (v46 - v45) >> 2;
    v18 = i;
    if (v17 > i)
    {
      do
      {
        if (*(v45 + v18) != -1)
        {
          break;
        }

        ++v18;
      }

      while (v17 > v18);
      i = v18;
    }

    if (v17 == v18)
    {
      break;
    }

    v19 = *(v45 + v18);
    v20 = *a1;
    v21 = (*a1)[v19];
    LODWORD(v48) = v21;
    v22 = *(v45 + i + 1);
    if (v22 != -1)
    {
      v23 = (v45 + 4 * i + 8);
      do
      {
        v21 *= *&v20[4 * v22];
        LODWORD(v48) = v21;
        v24 = *v23++;
        v22 = v24;
        ++i;
      }

      while (v24 != -1);
    }

    std::vector<int>::push_back[abi:ne200100](&__p, &v48);
    v25 = *a2;
    if (*(a2 + 8) != *a2)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        std::vector<unsigned long long>::push_back[abi:ne200100](&v40[v26], (v25[v26] + 8 * *(v45 + i)));
        ++v27;
        v25 = *a2;
        v26 += 3;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) > v27);
    }
  }

  if (*a1 != a1[1] && __p == v43)
  {
    LODWORD(v48) = 1;
    std::vector<int>::push_back[abi:ne200100](&__p, &v48);
    v28 = v40;
    for (j = v41; v28 != j; v28 += 3)
    {
      v31 = v28[1];
      v30 = v28[2];
      if (v31 >= v30)
      {
        v33 = *v28;
        v34 = v31 - *v28;
        v35 = v34 >> 3;
        v36 = (v34 >> 3) + 1;
        if (v36 >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v37 = v30 - v33;
        if (v37 >> 2 > v36)
        {
          v36 = v37 >> 2;
        }

        if (v37 >= 0x7FFFFFFFFFFFFFF8)
        {
          v38 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(v28, v38);
        }

        *(8 * v35) = 0;
        v32 = 8 * v35 + 8;
        memcpy(0, v33, v34);
        v39 = *v28;
        *v28 = 0;
        v28[1] = v32;
        v28[2] = 0;
        if (v39)
        {
          operator delete(v39);
        }
      }

      else
      {
        *v31 = 0;
        v32 = (v31 + 8);
      }

      v28[1] = v32;
    }
  }

  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_6vectorIiNS_9allocatorIiEEEENS3_INS3_IxNS4_IxEEEENS4_IS8_EEEEEEC2B8ne200100IJLm0ELm1EEJS6_SA_EJEJEJRS6_RSA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_(a4, &__p, &v40);
  v48 = &v40;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v48);
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }
}

void sub_25A82E804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t *a18)
{
  a18 = &a9;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a18);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (a15)
  {
    a16 = a15;
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void mlx::core::collapse_contiguous_dims(uint64_t *a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  __p = 0;
  v18 = 0;
  v19 = 0;
  if (a1[1] != *a1)
  {
    std::vector<int>::push_back[abi:ne200100](&v20, *a1);
    std::vector<unsigned long long>::push_back[abi:ne200100](&__p, *a2);
    v8 = *a1;
    v9 = a1[1];
    if ((v9 - *a1) >= 5)
    {
      v10 = 1;
      v11 = 1;
      v12 = 1;
      do
      {
        v13 = v8[v12];
        if (v13 != 1)
        {
          v14 = (*a2)[v11];
          v15 = v18;
          if (v14 * v13 == *(v18 - 1) && (v16 = *(v21 - 1), v16 * v13 <= a3))
          {
            *(v21 - 1) = v16 * v13;
            *(v15 - 1) = v14;
          }

          else
          {
            std::vector<int>::push_back[abi:ne200100](&v20, &v8[v12]);
            std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &(*a2)[v11]);
            v8 = *a1;
            v9 = a1[1];
          }
        }

        ++v10;
        ++v11;
        ++v12;
      }

      while (v10 < (v9 - v8) >> 2);
    }
  }

  std::pair<std::vector<int>,std::vector<long long>>::pair[abi:ne200100]<std::vector<int>&,std::vector<long long>&,0>(a4, &v20, &__p);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_25A82E9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<long long>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_6vectorIiNS_9allocatorIiEEEENS3_INS3_IxNS4_IxEEEENS4_IS8_EEEEEEC2B8ne200100IJLm0ELm1EEJS6_SA_EJEJEJRS6_RSA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long>*,std::vector<long long>*>((a1 + 3), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return a1;
}

void sub_25A82EB0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long>*,std::vector<long long>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A82EB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<long long>>,std::vector<long long>*,std::vector<long long>*,std::vector<long long>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<long long>>,std::vector<long long>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void mlx::core::prepare_slice(uint64_t *a1@<X0>, int **a2@<X1>, int **a3@<X2>, void *a4@<X8>)
{
  std::vector<long long>::vector[abi:ne200100](&__p, (*(*a1 + 8) - **a1) >> 2);
  v8 = *a1;
  v9 = *(*a1 + 8) - **a1;
  if (v9)
  {
    v10 = 0;
    v11 = v9 >> 2;
    v12 = *a2;
    v13 = *(v8 + 24);
    v14 = *a3;
    v15 = __p;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      v17 = *v12++;
      v16 = v17;
      v19 = *v13++;
      v18 = v19;
      v10 += v19 * v16;
      v20 = *v14++;
      *v15++ = v18 * v20;
      --v11;
    }

    while (v11);
    if (v10 < 0)
    {
      v10 += *(v8 + 160);
    }
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[2] = 0;
  a4[3] = 0;
  a4[1] = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>((a4 + 1), __p, v22, (v22 - __p) >> 3);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }
}

void sub_25A82ED54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char **mlx::core::shared_buffer_slice(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v11 = **a5;
  v12 = *(*a5 + 8) - v11;
  v13 = (v12 >> 2) - 1;
  if (((v12 >> 2) - 1) < 0)
  {
    v28 = 257;
    v21 = 1;
  }

  else
  {
    v14 = 0;
    v15 = *a2;
    v16 = (v12 >> 2);
    v17 = 1;
    v18 = 1;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    do
    {
      v22 = *&v15[8 * v14];
      v23 = *(v11 + 4 * v14);
      v24 = v23 == 1 || v22 == v18;
      v25 = *(v11 + 4 * v13);
      if (!v24)
      {
        v19 = 0;
      }

      if (v25 != 1 && *&v15[8 * v13] != v17)
      {
        v20 = 0;
      }

      v18 *= v23;
      v17 *= v25;
      if (v22 < 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = *(v11 + 4 * v14);
      }

      v21 *= v27;
      ++v14;
      --v13;
    }

    while (v16 != v14);
    v28 = v20 | (v19 << 8);
  }

  v29 = (*(*a1 + 168) & 0xF8) + 2 * v28 + ((v28 >> 6) & 0xFC);
  if (v21 == a4)
  {
    v30 = v29 + 1;
  }

  else
  {
    v30 = v29;
  }

  return mlx::core::array::copy_shared_buffer(a5, a1, a2, v30, a4, a3);
}

void mlx::core::slice(uint64_t *a1, uint64_t *a2, uint64_t a3, int **a4)
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (!*(*a2 + 48))
  {
    v16[0] = &unk_286BE3468;
    v16[1] = mlx::core::allocator::free;
    v16[3] = v16;
    mlx::core::array::set_data(a2, 0);
  }

  mlx::core::prepare_slice(a1, a3, a4, &v14);
  v8 = *(a3 + 8) - *a3;
  if (v8)
  {
    v9 = 0;
    v10 = v8 >> 2;
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = 1;
    do
    {
      if (*(**a1 + 4 * v9) >= 2)
      {
        v12 += *(*(*a1 + 24) + 8 * v9) * (*(*a3 + 4 * v9) + (*a4)[v9] * *(**a2 + 4 * v9) - 1);
      }

      ++v9;
    }

    while (v11 != v9);
    if (v12 < 0)
    {
      v12 += *(*a1 + 160);
    }
  }

  else
  {
    v12 = 1;
  }

  mlx::core::shared_buffer_slice(a1, __p, v14, v12 - v14, a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void mlx_io_reader_new(uint64_t a1, __int128 *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = *(a2 + 8);
  v2 = *a2;
  v3 = a2[1];
  operator new();
}

uint64_t mlx_io_reader_free(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    MEMORY[0x25F851760](a1, 0x20C40A4A59CD2);
  }

  return 0;
}

uint64_t mlx_io_reader_descriptor(void *a1, uint64_t *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_io_reader");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = *(v3 + 8);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    *a1 = *(v3 + 8);
  }

  return 0;
}

uint64_t mlx_io_reader_tostring(uint64_t *a1, uint64_t *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_io_reader");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v3 + 48))(&v9);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v9;
  *(v5 + 16) = v10;
  *v5 = v6;
  HIBYTE(v10) = 0;
  LOBYTE(v9) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return 0;
}

void mlx_io_writer_new(uint64_t a1, __int128 *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = *(a2 + 8);
  v2 = *a2;
  v3 = a2[1];
  operator new();
}

uint64_t mlx_io_writer_free(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    MEMORY[0x25F851760](a1, 0x20C40A4A59CD2);
  }

  return 0;
}

uint64_t mlx_io_writer_descriptor(void *a1, uint64_t *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_io_writer");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = *(v3 + 8);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    *a1 = *(v3 + 8);
  }

  return 0;
}

uint64_t mlx_io_writer_tostring(uint64_t *a1, uint64_t *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_io_writer");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v3 + 40))(&v9);
  v5 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v9;
  *(v5 + 16) = v10;
  *v5 = v6;
  HIBYTE(v10) = 0;
  LOBYTE(v9) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return 0;
}

void std::__shared_ptr_emplace<anonymous namespace::CReader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286C09408;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t anonymous namespace::CReader::seek(_anonymous_namespace_::CReader *this, uint64_t a2, unsigned int a3)
{
  if (a3 >= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "mlx_io_reader: invalid seek way");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = *(this + 5);
  v4 = *(this + 1);

  return v3(v4);
}

uint64_t anonymous namespace::CReader::read(_anonymous_namespace_::CReader *this, char *a2)
{
  return (*(this + 6))(*(this + 1), a2);
}

{
  return (*(this + 7))(*(this + 1), a2);
}

_BYTE *anonymous namespace::CReader::label@<X0>(_anonymous_namespace_::CReader *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*(this + 9))(*(this + 1));

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

void anonymous namespace::CReader::~CReader(_anonymous_namespace_::CReader *this)
{
  *this = &unk_286C09458;
  (*(this + 10))(*(this + 1));
}

{
  *this = &unk_286C09458;
  (*(this + 10))(*(this + 1));

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<anonymous namespace::CWriter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286C094C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t anonymous namespace::CWriter::seek(_anonymous_namespace_::CWriter *this, uint64_t a2, unsigned int a3)
{
  if (a3 >= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "mlx_io_writer: invalid seek way");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = *(this + 5);
  v4 = *(this + 1);

  return v3(v4);
}

_BYTE *anonymous namespace::CWriter::label@<X0>(_anonymous_namespace_::CWriter *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*(this + 9))(*(this + 1));

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

void anonymous namespace::CWriter::~CWriter(_anonymous_namespace_::CWriter *this)
{
  *this = &unk_286C09518;
  (*(this + 10))(*(this + 1));
}

{
  *this = &unk_286C09518;
  (*(this + 10))(*(this + 1));

  JUMPOUT(0x25F851760);
}

void mlx_linalg_cholesky(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::linalg::cholesky(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_linalg_cholesky_inv(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::linalg::cholesky_inv(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_linalg_cross(int a1, uint64_t **this, uint64_t **a3, int a4, uint64_t a5)
{
  if (this && a3)
  {
    if (a5)
    {
      mlx::core::linalg::cross(this, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_linalg_eigh(int a1, int a2, uint64_t **a3, char *__s, uint64_t a5)
{
  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, __s);
    if (a5)
    {
      mlx::core::linalg::eigh(a3, __p, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v7, "expected a non-empty mlx_array");
  __cxa_throw(v7, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_linalg_eigvalsh(int a1, uint64_t **a2, char *__s, uint64_t a4)
{
  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, __s);
    if (a4)
    {
      mlx::core::linalg::eigvalsh(a2, __p, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v6, "expected a non-empty mlx_array");
  __cxa_throw(v6, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_linalg_inv(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::linalg::inv(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_linalg_lu(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::linalg::lu(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_linalg_lu_factor(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  if (a3)
  {
    if (a4)
    {
      mlx::core::linalg::lu_factor(a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_linalg_norm(double a1, uint64_t a2, uint64_t **a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    if (a4)
    {
      v14[0] = 0;
      v14[1] = 0;
      v15 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v14, a4, a4 + 4 * a5, a5);
      *__p = *v14;
      v17 = v15;
      v14[1] = 0;
      v15 = 0;
      v14[0] = 0;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      LOBYTE(__p[0]) = 0;
    }

    v18 = v11;
    if (a7)
    {
      mlx::core::linalg::norm(a3, __p, a6, *a7, *(a7 + 8) | 0x100000000, a1);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v12 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v12, "expected a non-empty mlx_array");
  __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_linalg_norm_matrix(int a1, uint64_t **a2, char *__s, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v20, __s);
    if (a4)
    {
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v15, a4, a4 + 4 * a5, a5);
      *__p = *v15;
      v18 = v16;
      v15[1] = 0;
      v16 = 0;
      v15[0] = 0;
      v12 = 1;
    }

    else
    {
      v12 = 0;
      LOBYTE(__p[0]) = 0;
    }

    v19 = v12;
    if (a7)
    {
      mlx::core::linalg::norm(a2, v20, __p, a6, *a7, *(a7 + 8) | 0x100000000, &v21);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v13 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v13, "expected a non-empty mlx_array");
  __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_linalg_norm_l2(uint64_t *a1, uint64_t **a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a3)
  {
    v18[0] = 0;
    v18[1] = 0;
    v19 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v18, a3, a3 + 4 * a4, a4);
    *__p = *v18;
    v21 = v19;
    v18[1] = 0;
    v19 = 0;
    v18[0] = 0;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    LOBYTE(__p[0]) = 0;
  }

  v22 = v11;
  if (!a6)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v17, "expected a non-empty mlx_stream");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  mlx::core::linalg::norm(a2, __p, a5, *a6, *(a6 + 8) | 0x100000000);
  v12 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v13 = v23;
  v23 = 0uLL;
  v14 = *(v12 + 8);
  *v12 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  mlx::core::array::~array(&v23);
  if (v22 == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (a3 && v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  return 0;
}

void mlx_linalg_pinv(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      mlx::core::linalg::pinv(a2, *a3, *(a3 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_linalg_qr(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  if (a3)
  {
    if (a4)
    {
      mlx::core::linalg::qr(a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_linalg_solve(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (a4)
    {
      mlx::core::linalg::solve(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_linalg_solve_triangular(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t a4, uint64_t a5)
{
  if (a2 && a3)
  {
    if (a5)
    {
      mlx::core::linalg::solve_triangular(a2, a3, a4, *a5, *(a5 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_linalg_svd(uint64_t a1, uint64_t **a2, char a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::linalg::svd(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx_linalg_tri_inv(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      mlx::core::linalg::tri_inv(a2, a3, *a4, *(a4 + 8) | 0x100000000);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_stream");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_array");
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_get_active_memory(mlx::core *a1)
{
  active_memory = mlx::core::get_active_memory(a1);
  result = 0;
  *a1 = active_memory;
  return result;
}

uint64_t mlx_get_cache_memory(mlx::core *a1)
{
  cache_memory = mlx::core::get_cache_memory(a1);
  result = 0;
  *a1 = cache_memory;
  return result;
}

uint64_t mlx_get_memory_limit(mlx::core *a1)
{
  memory_limit = mlx::core::get_memory_limit(a1);
  result = 0;
  *a1 = memory_limit;
  return result;
}

uint64_t mlx_get_peak_memory(mlx::core *a1)
{
  peak_memory = mlx::core::get_peak_memory(a1);
  result = 0;
  *a1 = peak_memory;
  return result;
}

uint64_t mlx_set_cache_limit(uint64_t *a1, mlx::core *this)
{
  v3 = mlx::core::set_cache_limit(this);
  result = 0;
  *a1 = v3;
  return result;
}

uint64_t mlx_set_memory_limit(uint64_t *a1, mlx::core *this)
{
  v3 = mlx::core::set_memory_limit(this);
  result = 0;
  *a1 = v3;
  return result;
}

uint64_t mlx_set_wired_limit(uint64_t *a1, mlx::core *this)
{
  v3 = mlx::core::set_wired_limit(this);
  result = 0;
  *a1 = v3;
  return result;
}

uint64_t mlx_async_eval(uint64_t *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_vector_array");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  memset(v3, 0, sizeof(v3));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v3, *a1, a1[1], (a1[1] - *a1) >> 4);
  mlx::core::async_eval(v3);
  v4 = v3;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
  return 0;
}

void mlx_checkpoint(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v3, a2);
    mlx::core::checkpoint(v3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx_custom_function(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "expected a non-empty mlx_closure");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v21, a2);
  if (a3)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v19, a3);
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v19[0] = 0;
  }

  v20 = v9;
  if (a4)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](v17, a4);
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v17[0] = 0;
  }

  v18 = v10;
  if (a5)
  {
    std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](v15, a5);
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v15[0] = 0;
  }

  v16 = v11;
  mlx::core::custom_function(v21, v19, v17, v15, v22);
  if (!*a1)
  {
    operator new();
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator=[abi:ne200100](*a1, v22);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v22);
  if (v16 == 1)
  {
    std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v15);
  }

  if (v18 == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v17);
  }

  if (v20 == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v19);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v21);
  result = 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}