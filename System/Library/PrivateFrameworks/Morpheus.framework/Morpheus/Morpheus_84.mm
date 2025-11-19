void sub_25A70E11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(int *result, int *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a7 + 8 * a8);
    v11 = 4 * *(*a5 + 8 * a8);
    v12 = 4 * *(*a6 + 8 * a8);
    do
    {
      v13 = a2;
      v14 = a3;
      v15 = v10;
      v16 = result;
      if (v10 >= 8)
      {
        v17 = 0;
        v15 = v10;
        do
        {
          v18 = v15;
          v19 = &a3[v17];
          v20 = vmovn_s16(vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqzq_s32(*&a2[v17]), vceqzq_s32(*&a2[v17 + 4]))), vuzp1q_s16(vceqzq_s32(*&result[v17]), vceqzq_s32(*&result[v17 + 4]))));
          *v19 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v20, v20)), 0x1FuLL));
          v19[1] = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v20, v20)), 0x1FuLL));
          v15 = v18 - 8;
          v17 += 8;
        }

        while (v18 > 0xF);
        v16 = &result[v17];
        v14 = &a3[v17];
        v13 = &a2[v17];
      }

      if (v15 >= 1)
      {
        v21 = v15 + 1;
        do
        {
          v23 = *v16++;
          v22 = v23;
          v25 = *v13++;
          v24 = v25;
          if (v22)
          {
            v26 = v24 == 0;
          }

          else
          {
            v26 = 1;
          }

          v27 = !v26;
          *v14++ = v27;
          --v21;
        }

        while (v21 > 1);
      }

      a3 += v10;
      result = (result + v11);
      a2 = (a2 + v12);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(int *result, int *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(int *result, int *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(int *result, unsigned __int32 *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * a8);
    do
    {
      v14 = *a2;
      v15 = v12;
      v16 = a3;
      v17 = result;
      if (v12 >= 8)
      {
        v18 = 0;
        a9.i32[0] = *a2;
        a9 = vtstq_s32(a9, a9);
        *a9.i8 = vmovn_s32(a9);
        *a9.i8 = vdup_lane_s8(vuzp1_s8(*a9.i8, *a9.i8), 0);
        v15 = v12;
        do
        {
          v19 = v15;
          v20 = &a3[v18];
          v21 = vand_s8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(*&result[v18]), vceqzq_s32(*&result[v18 + 4])))), *a9.i8);
          *v20 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v21, *a9.i8)), 0x1FuLL));
          v20[1] = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v21, *a9.i8)), 0x1FuLL));
          v15 -= 8;
          v18 += 8;
        }

        while (v19 > 0xF);
        v17 = &result[v18];
        v16 = &a3[v18];
      }

      if (v15 >= 1)
      {
        v22 = v15 + 1;
        do
        {
          v24 = *v17++;
          v23 = v24;
          if (v14)
          {
            v25 = v23 == 0;
          }

          else
          {
            v25 = 1;
          }

          v26 = !v25;
          *v16++ = v26;
          --v22;
        }

        while (v22 > 1);
      }

      a3 += v12;
      result = (result + v13);
      a2 += v11;
      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(int *result, unsigned __int32 *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(int *result, unsigned __int32 *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

unsigned __int32 *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(unsigned __int32 *result, int *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a5 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a6 + 8 * a8);
    do
    {
      v14 = *result;
      v15 = v12;
      v16 = a3;
      v17 = a2;
      if (v12 >= 8)
      {
        v18 = 0;
        a9.i32[0] = *result;
        a9 = vtstq_s32(a9, a9);
        *a9.i8 = vmovn_s32(a9);
        *a9.i8 = vdup_lane_s8(vuzp1_s8(*a9.i8, *a9.i8), 0);
        v15 = v12;
        do
        {
          v19 = v15;
          v20 = &a3[v18];
          v21 = vand_s8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(*&a2[v18]), vceqzq_s32(*&a2[v18 + 4])))), *a9.i8);
          *v20 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v21, *a9.i8)), 0x1FuLL));
          v20[1] = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v21, *a9.i8)), 0x1FuLL));
          v15 -= 8;
          v18 += 8;
        }

        while (v19 > 0xF);
        v17 = &a2[v18];
        v16 = &a3[v18];
      }

      if (v15 >= 1)
      {
        v22 = v15 + 1;
        do
        {
          v24 = *v17++;
          v23 = v24;
          if (v14)
          {
            v25 = v23 == 0;
          }

          else
          {
            v25 = 1;
          }

          v26 = !v25;
          *v16++ = v26;
          --v22;
        }

        while (v22 > 1);
      }

      a3 += v12;
      result += v11;
      a2 = (a2 + v13);
      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

unsigned __int32 *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(unsigned __int32 *result, int *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

unsigned __int32 *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(unsigned __int32 *result, int *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::LogicalAnd,2,false>(_DWORD *result, _DWORD *a2, int *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *a4;
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = a8 + 1;
    v12 = 4 * *(*a5 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * v11);
    v14 = 4 * *(*a6 + 8 * a8);
    v15 = 4 * *(*a6 + 8 * v11);
    v16 = 4 * *(*a7 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * v11);
    do
    {
      v18 = *(v8 + 4 * v11);
      if (v18 >= 1)
      {
        v19 = a3;
        v20 = a2;
        v21 = result;
        do
        {
          if (*v21)
          {
            v22 = *v20 == 0;
          }

          else
          {
            v22 = 1;
          }

          v23 = !v22;
          *v19 = v23;
          v21 = (v21 + v13);
          v20 = (v20 + v15);
          v19 = (v19 + v17);
          --v18;
        }

        while (v18);
      }

      ++v10;
      result = (result + v12);
      a2 = (a2 + v14);
      a3 = (a3 + v16);
    }

    while (v10 != v9);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::LogicalAnd,3,false>(_DWORD *result, _DWORD *a2, int *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::LogicalAnd,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<unsigned long long,unsigned long long,mlx::core::detail::LogicalAnd>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int64x2_t a5)
{
  v99 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*a1 + 152);
  v11 = *(*a2 + 152);
  v12 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      if (v10->i64[0])
      {
        v43 = v11->i64[0] == 0;
      }

      else
      {
        v43 = 1;
      }

      v44 = !v43;
      v12->i64[0] = v44;
      goto LABEL_108;
    }

    if (a4 == 1)
    {
      v13 = *(*a2 + 160);
      v14 = v10->i64[0];
      if (v13 < 4)
      {
        v21 = *(*a2 + 160);
      }

      else
      {
        a5.i64[0] = v10->i64[0];
        v15 = vmovn_s64(vtstq_s64(a5, a5));
        *a5.i8 = vdup_lane_s16(vuzp1_s16(v15, v15), 0);
        do
        {
          v16 = *v11;
          v17 = v11[1];
          v11 += 2;
          v18 = vmovl_u16(vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v16), vceqzq_s64(v17)))), *a5.i8));
          v19.i64[0] = v18.u32[0];
          v19.i64[1] = v18.u32[1];
          v20 = vcltzq_s64(vshlq_n_s64(v19, 0x3FuLL));
          v19.i64[0] = v18.u32[2];
          v19.i64[1] = v18.u32[3];
          *v12 = v20;
          v12[1] = vcltzq_s64(vshlq_n_s64(v19, 0x3FuLL));
          v12 += 2;
          v21 = v13 - 4;
          v22 = v13 > 7;
          v13 -= 4;
        }

        while (v22);
      }

      if (v21 >= 1)
      {
        v72 = v21 + 1;
        do
        {
          v74 = v11->i64[0];
          v11 = (v11 + 8);
          v73 = v74;
          if (v14)
          {
            v75 = v73 == 0;
          }

          else
          {
            v75 = 1;
          }

          v76 = !v75;
          v12->i64[0] = v76;
          v12 = (v12 + 8);
          --v72;
        }

        while (v72 > 1);
      }

      goto LABEL_108;
    }

LABEL_13:
    memset(v95, 0, sizeof(v95));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v95, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
    v29 = *a2;
    memset(v96, 0, sizeof(v96));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v96, *(v29 + 24), *(v29 + 32), (*(v29 + 32) - *(v29 + 24)) >> 3);
    v30 = *a3;
    v98[0] = 0;
    v98[1] = 0;
    v97 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v97, *(v30 + 24), *(v30 + 32), (*(v30 + 32) - *(v30 + 24)) >> 3);
    memset(v90, 0, sizeof(v90));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v90, v95, &v99, 3uLL);
    mlx::core::collapse_contiguous_dims(v9, v90, 0x7FFFFFFFuLL, &__p);
    v94 = v90;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v94);
    for (i = 0; i != -9; i -= 3)
    {
      v33 = v98[i - 1];
      if (v33)
      {
        v98[i] = v33;
        operator delete(v33);
      }
    }

    v34 = v93 + 6;
    v35 = *v93;
    v36 = (v93[1] - *v93) >> 3;
    v37 = v36 - 1;
    if (v36 - 1 >= -1)
    {
      v37 = -1;
    }

    v38 = v37 + 1;
    v39 = v36 + 1;
    v40 = v36 - 1;
    v41 = v36 - 1;
    while ((v41 & 0x80000000) == 0)
    {
      v42 = 8 * (v41 & 0x7FFFFFFF);
      --v39;
      --v41;
      if (*(v35 + v42) != *(*v34 + v42))
      {
        goto LABEL_35;
      }
    }

    v39 = v38;
LABEL_35:
    v54 = v93[3];
    v55 = (v93[4] - v54) >> 3;
    v56 = v55 - 1;
    if (v55 - 1 >= -1)
    {
      v56 = -1;
    }

    v57 = v56 + 1;
    v58 = v55 + 1;
    v59 = v55 - 1;
    v60 = v55 - 1;
    while ((v60 & 0x80000000) == 0)
    {
      v61 = 8 * (v60 & 0x7FFFFFFF);
      --v58;
      --v60;
      if (*(v54 + v61) != *(*v34 + v61))
      {
        goto LABEL_42;
      }
    }

    v58 = v57;
LABEL_42:
    v62 = v36 + 1;
    while ((v40 & 0x80000000) == 0)
    {
      v63 = *(v35 + 8 * (v40 & 0x7FFFFFFF));
      --v62;
      --v40;
      if (v63)
      {
        goto LABEL_47;
      }
    }

    v62 = v38;
LABEL_47:
    v64 = v55 + 1;
    while ((v59 & 0x80000000) == 0)
    {
      v65 = *(v54 + 8 * (v59 & 0x7FFFFFFF));
      --v64;
      --v59;
      if (v65)
      {
        goto LABEL_52;
      }
    }

    v64 = v57;
LABEL_52:
    v66 = (v92 - __p) >> 2;
    if (v39 <= v58)
    {
      v67 = v58;
    }

    else
    {
      v67 = v39;
    }

    if (v39 <= v64)
    {
      v39 = v64;
    }

    if (v62 > v58)
    {
      v58 = v62;
    }

    if (v66 > v58)
    {
      v68 = 1;
    }

    else
    {
      v58 = (v92 - __p) >> 2;
      v68 = a4;
    }

    if (v66 > v39)
    {
      v69 = 2;
    }

    else
    {
      v39 = v58;
      v69 = v68;
    }

    if (v66 <= v67)
    {
      v70 = v39;
    }

    else
    {
      v70 = v67;
    }

    if (v66 <= v67)
    {
      v71 = v69;
    }

    else
    {
      v71 = 3;
    }

    if (!v70 || *(*v34 + 8 * v70 - 8) < 16)
    {
      goto LABEL_73;
    }

    switch(v71)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(v10, v11->i64, v12->i64, v70, *(*a1 + 48), &__p, v93, v93 + 3, v31, v93 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(v10->i64, v11, v12->i64, v70, *(*a1 + 48), &__p, v93, v93 + 3, v31, v93 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(v10->i64, v11->i64, v12->i64, v70, *(*a1 + 48), &__p, v93, v93 + 3, v93 + 6);
        break;
      default:
        LODWORD(v66) = v70;
LABEL_73:
        mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,false,mlx::core::detail::LogicalAnd>(v10, v11, v12->i64, v66, *(*a1 + 48), &__p, v93, v93 + 3, v93 + 6);
        break;
    }

    v95[0] = &v93;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v95);
    if (__p)
    {
      v92 = __p;
      operator delete(__p);
    }

    goto LABEL_108;
  }

  if (a4 == 2)
  {
    v45 = *(v9 + 160);
    v46 = v11->i64[0];
    if (v45 < 4)
    {
      v53 = *(v9 + 160);
    }

    else
    {
      a5.i64[0] = v11->i64[0];
      v47 = vmovn_s64(vtstq_s64(a5, a5));
      *a5.i8 = vdup_lane_s16(vuzp1_s16(v47, v47), 0);
      do
      {
        v48 = *v10;
        v49 = v10[1];
        v10 += 2;
        v50 = vmovl_u16(vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v48), vceqzq_s64(v49)))), *a5.i8));
        v51.i64[0] = v50.u32[0];
        v51.i64[1] = v50.u32[1];
        v52 = vcltzq_s64(vshlq_n_s64(v51, 0x3FuLL));
        v51.i64[0] = v50.u32[2];
        v51.i64[1] = v50.u32[3];
        *v12 = v52;
        v12[1] = vcltzq_s64(vshlq_n_s64(v51, 0x3FuLL));
        v12 += 2;
        v53 = v45 - 4;
        v22 = v45 > 7;
        v45 -= 4;
      }

      while (v22);
    }

    if (v53 >= 1)
    {
      v84 = v53 + 1;
      do
      {
        v86 = v10->i64[0];
        v10 = (v10 + 8);
        v85 = v86;
        if (v46)
        {
          v87 = v85 == 0;
        }

        else
        {
          v87 = 1;
        }

        v88 = !v87;
        v12->i64[0] = v88;
        v12 = (v12 + 8);
        --v84;
      }

      while (v84 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_13;
    }

    v23 = *(v9 + 48);
    if (v23 < 4)
    {
      v28 = *(v9 + 48);
    }

    else
    {
      do
      {
        v24 = *v10;
        v25 = v10[1];
        v10 += 2;
        v26 = *v11;
        v27 = v11[1];
        v11 += 2;
        *v12 = vbicq_s8(vtstq_s64(v26, v26), vceqzq_s64(v24));
        v12[1] = vbicq_s8(vtstq_s64(v27, v27), vceqzq_s64(v25));
        v12 += 2;
        v28 = v23 - 4;
        v22 = v23 > 7;
        v23 -= 4;
      }

      while (v22);
    }

    if (v28 >= 1)
    {
      v77 = v28 + 1;
      do
      {
        v79 = v10->i64[0];
        v10 = (v10 + 8);
        v78 = v79;
        v81 = v11->i64[0];
        v11 = (v11 + 8);
        v80 = v81;
        if (v78)
        {
          v82 = v80 == 0;
        }

        else
        {
          v82 = 1;
        }

        v83 = !v82;
        v12->i64[0] = v83;
        v12 = (v12 + 8);
        --v77;
      }

      while (v77 > 1);
    }
  }

LABEL_108:
  v89 = *MEMORY[0x277D85DE8];
}

void sub_25A70F098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
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
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A70F518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(uint64_t *a1, unint64_t *a2, uint64_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int64x2_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v16);
      if (a5 >= 1)
      {
        v20 = a5;
        v21 = 0;
        v54 = *(*a10 + 8 * a4 - 32);
        v22 = v20;
        do
        {
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(&a1[v62], &a2[v55], &a3[v21], a6, a7, a8, a10, v16, v19);
          v23 = v64 - v63;
          v24 = (v64 - v63) >> 2;
          if (v24)
          {
            v25 = v67;
            v26 = ((v23 << 30) - 0x100000000) >> 32;
            v27 = v67 + 4 * v26;
            v28 = *v27;
            v29 = v63 + 4 * v26;
            v30 = v65;
            v31 = v62;
            if (v24 >= 2 && v28 == *v29 - 1)
            {
              v34 = (v23 >> 2) & 0x7FFFFFFF;
              v33 = v34 - 1;
              v35 = 4 * v34;
              v36 = v63 - 8;
              do
              {
                v37 = v33;
                *v27 = 0;
                v31 -= v30[v26] * (*v29 - 1);
                v62 = v31;
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
            v62 = v30[v33] + v31;
          }

          v39 = v57 - v56;
          v40 = (v57 - v56) >> 2;
          if (v40)
          {
            v41 = __p;
            v42 = ((v39 << 30) - 0x100000000) >> 32;
            v43 = __p + 4 * v42;
            v44 = *v43;
            v45 = v58;
            v46 = v55;
            if (v40 >= 2 && (v47 = v56 + 4 * v42, v44 == *v47 - 1))
            {
              v48 = (v39 >> 2) & 0x7FFFFFFF;
              v49 = v48 - 1;
              v50 = 4 * v48;
              v51 = v56 - 8;
              do
              {
                v52 = v49;
                *v43 = 0;
                v46 -= v45[v42] * (*v47 - 1);
                v55 = v46;
                --v49;
                v43 = &v41[v50 - 8];
                v44 = *v43;
                v41 -= 4;
                if (v52 < 2)
                {
                  break;
                }

                v47 = &v51[v50];
                v53 = *&v51[4 * v48] - 1;
                v51 -= 4;
                v42 = v49;
              }

              while (v44 == v53);
              v43 = &v41[4 * v48 - 4];
            }

            else
            {
              v49 = ((v39 << 30) - 0x100000000) >> 32;
            }

            *v43 = v44 + 1;
            v55 = v45[v49] + v46;
          }

          v21 += v54;
        }

        while (v21 < v22);
      }

      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
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

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      break;
  }
}

void sub_25A70F930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(unint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int64x2_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v16);
      if (a5 >= 1)
      {
        v20 = a5;
        v21 = 0;
        v54 = *(*a10 + 8 * a4 - 32);
        v22 = v20;
        do
        {
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(&a1[v62], &a2[v55], &a3[v21], a6, a7, a8, a10, v16, v19);
          v23 = v64 - v63;
          v24 = (v64 - v63) >> 2;
          if (v24)
          {
            v25 = v67;
            v26 = ((v23 << 30) - 0x100000000) >> 32;
            v27 = v67 + 4 * v26;
            v28 = *v27;
            v29 = v63 + 4 * v26;
            v30 = v65;
            v31 = v62;
            if (v24 >= 2 && v28 == *v29 - 1)
            {
              v34 = (v23 >> 2) & 0x7FFFFFFF;
              v33 = v34 - 1;
              v35 = 4 * v34;
              v36 = v63 - 8;
              do
              {
                v37 = v33;
                *v27 = 0;
                v31 -= v30[v26] * (*v29 - 1);
                v62 = v31;
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
            v62 = v30[v33] + v31;
          }

          v39 = v57 - v56;
          v40 = (v57 - v56) >> 2;
          if (v40)
          {
            v41 = __p;
            v42 = ((v39 << 30) - 0x100000000) >> 32;
            v43 = __p + 4 * v42;
            v44 = *v43;
            v45 = v58;
            v46 = v55;
            if (v40 >= 2 && (v47 = v56 + 4 * v42, v44 == *v47 - 1))
            {
              v48 = (v39 >> 2) & 0x7FFFFFFF;
              v49 = v48 - 1;
              v50 = 4 * v48;
              v51 = v56 - 8;
              do
              {
                v52 = v49;
                *v43 = 0;
                v46 -= v45[v42] * (*v47 - 1);
                v55 = v46;
                --v49;
                v43 = &v41[v50 - 8];
                v44 = *v43;
                v41 -= 4;
                if (v52 < 2)
                {
                  break;
                }

                v47 = &v51[v50];
                v53 = *&v51[4 * v48] - 1;
                v51 -= 4;
                v42 = v49;
              }

              while (v44 == v53);
              v43 = &v41[4 * v48 - 4];
            }

            else
            {
              v49 = ((v39 << 30) - 0x100000000) >> 32;
            }

            *v43 = v44 + 1;
            v55 = v45[v49] + v46;
          }

          v21 += v54;
        }

        while (v21 < v22);
      }

      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
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

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      break;
  }
}

void sub_25A70FD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,false,mlx::core::detail::LogicalAnd>(void *a1, void *a2, uint64_t *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::LogicalAnd,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::LogicalAnd,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = 8 * **a7;
        v19 = 8 * **a8;
        v20 = 8 * **a9;
        do
        {
          if (*v14)
          {
            v21 = *v13 == 0;
          }

          else
          {
            v21 = 1;
          }

          v22 = !v21;
          *v12 = v22;
          v14 = (v14 + v18);
          v13 = (v13 + v19);
          v12 = (v12 + v20);
          --v17;
        }

        while (v17);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v64, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v57, a6, a8, v15);
      if (a5 >= 1)
      {
        v24 = 0;
        v25 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::LogicalAnd,3,false>(&v14[v64], &v13[v57], &v12[v24], a6, a7, a8, a9, v15);
          v26 = v66 - v65;
          v27 = (v66 - v65) >> 2;
          if (v27)
          {
            v28 = v69;
            v29 = ((v26 << 30) - 0x100000000) >> 32;
            v30 = v69 + 4 * v29;
            v31 = *v30;
            v32 = v65 + 4 * v29;
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

          v42 = v59 - v58;
          v43 = (v59 - v58) >> 2;
          if (v43)
          {
            v44 = __p;
            v45 = ((v42 << 30) - 0x100000000) >> 32;
            v46 = __p + 4 * v45;
            v47 = *v46;
            v48 = v60;
            v49 = v57;
            if (v43 >= 2 && (v50 = v58 + 4 * v45, v47 == *v50 - 1))
            {
              v51 = (v42 >> 2) & 0x7FFFFFFF;
              v52 = v51 - 1;
              v53 = 4 * v51;
              v54 = v58 - 8;
              do
              {
                v55 = v52;
                *v46 = 0;
                v49 -= v48[v45] * (*v50 - 1);
                v57 = v49;
                --v52;
                v46 = &v44[v53 - 8];
                v47 = *v46;
                v44 -= 4;
                if (v55 < 2)
                {
                  break;
                }

                v50 = &v54[v53];
                v56 = *&v54[4 * v51] - 1;
                v54 -= 4;
                v45 = v52;
              }

              while (v47 == v56);
              v46 = &v44[4 * v51 - 4];
            }

            else
            {
              v52 = ((v42 << 30) - 0x100000000) >> 32;
            }

            *v46 = v47 + 1;
            v57 = v48[v52] + v49;
          }

          v24 += v25;
        }

        while (v24 < a5);
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

      break;
  }
}

void sub_25A710170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(uint64_t *result, uint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a7 + 8 * a8);
    v11 = 8 * *(*a5 + 8 * a8);
    v12 = 8 * *(*a6 + 8 * a8);
    do
    {
      v13 = a2;
      v14 = a3;
      v15 = v10;
      v16 = result;
      if (v10 >= 4)
      {
        v17 = 0;
        v15 = v10;
        do
        {
          v18 = v15;
          v19 = &a3[v17];
          v20 = vbicq_s8(vtstq_s64(*&a2[v17 + 2], *&a2[v17 + 2]), vceqzq_s64(*&result[v17 + 2]));
          *v19 = vbicq_s8(vtstq_s64(*&a2[v17], *&a2[v17]), vceqzq_s64(*&result[v17]));
          v19[1] = v20;
          v15 = v18 - 4;
          v17 += 4;
        }

        while (v18 > 7);
        v16 = &result[v17];
        v14 = &a3[v17];
        v13 = &a2[v17];
      }

      if (v15 >= 1)
      {
        v21 = v15 + 1;
        do
        {
          v23 = *v16++;
          v22 = v23;
          v25 = *v13++;
          v24 = v25;
          if (v22)
          {
            v26 = v24 == 0;
          }

          else
          {
            v26 = 1;
          }

          v27 = !v26;
          *v14++ = v27;
          --v21;
        }

        while (v21 > 1);
      }

      a3 += v10;
      result = (result + v11);
      a2 = (a2 + v12);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(uint64_t *result, uint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(uint64_t *result, uint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(uint64_t *result, unint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    do
    {
      v14 = *a2;
      v15 = v12;
      v16 = a3;
      v17 = result;
      if (v12 >= 4)
      {
        v18 = 0;
        a9.i64[0] = *a2;
        a9 = vtstq_s64(a9, a9);
        *a9.i8 = vmovn_s64(a9);
        *a9.i8 = vdup_lane_s16(vuzp1_s16(*a9.i8, *a9.i8), 0);
        v15 = v12;
        do
        {
          v19 = v15;
          v20 = &a3[v18];
          v21 = vmovl_u16(vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*&result[v18]), vceqzq_s64(*&result[v18 + 2])))), *a9.i8));
          v22.i64[0] = v21.u32[0];
          v22.i64[1] = v21.u32[1];
          v23 = vcltzq_s64(vshlq_n_s64(v22, 0x3FuLL));
          v22.i64[0] = v21.u32[2];
          v22.i64[1] = v21.u32[3];
          *v20 = v23;
          v20[1] = vcltzq_s64(vshlq_n_s64(v22, 0x3FuLL));
          v15 -= 4;
          v18 += 4;
        }

        while (v19 > 7);
        v17 = &result[v18];
        v16 = &a3[v18];
      }

      if (v15 >= 1)
      {
        v24 = v15 + 1;
        do
        {
          v26 = *v17++;
          v25 = v26;
          if (v14)
          {
            v27 = v25 == 0;
          }

          else
          {
            v27 = 1;
          }

          v28 = !v27;
          *v16++ = v28;
          --v24;
        }

        while (v24 > 1);
      }

      a3 += v12;
      result = (result + v13);
      a2 += v11;
      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(uint64_t *result, unint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    v18 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(uint64_t *result, unint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    v18 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(unint64_t *result, uint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a5 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a6 + 8 * a8);
    do
    {
      v14 = *result;
      v15 = v12;
      v16 = a3;
      v17 = a2;
      if (v12 >= 4)
      {
        v18 = 0;
        a9.i64[0] = *result;
        a9 = vtstq_s64(a9, a9);
        *a9.i8 = vmovn_s64(a9);
        *a9.i8 = vdup_lane_s16(vuzp1_s16(*a9.i8, *a9.i8), 0);
        v15 = v12;
        do
        {
          v19 = v15;
          v20 = &a3[v18];
          v21 = vmovl_u16(vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*&a2[v18]), vceqzq_s64(*&a2[v18 + 2])))), *a9.i8));
          v22.i64[0] = v21.u32[0];
          v22.i64[1] = v21.u32[1];
          v23 = vcltzq_s64(vshlq_n_s64(v22, 0x3FuLL));
          v22.i64[0] = v21.u32[2];
          v22.i64[1] = v21.u32[3];
          *v20 = v23;
          v20[1] = vcltzq_s64(vshlq_n_s64(v22, 0x3FuLL));
          v15 -= 4;
          v18 += 4;
        }

        while (v19 > 7);
        v17 = &a2[v18];
        v16 = &a3[v18];
      }

      if (v15 >= 1)
      {
        v24 = v15 + 1;
        do
        {
          v26 = *v17++;
          v25 = v26;
          if (v14)
          {
            v27 = v25 == 0;
          }

          else
          {
            v27 = 1;
          }

          v28 = !v27;
          *v16++ = v28;
          --v24;
        }

        while (v24 > 1);
      }

      a3 += v12;
      result += v11;
      a2 = (a2 + v13);
      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(unint64_t *result, uint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    v18 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(unint64_t *result, uint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    v18 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

void *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::LogicalAnd,2,false>(void *result, void *a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *a5;
    v11 = *a6;
    v12 = *a7;
    v13 = a8 + 1;
    v14 = *(*a4 + 4 * v13);
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      if (v14 >= 1)
      {
        v18 = 8 * *(v10 + 8 * v13);
        v19 = 8 * *(v11 + 8 * v13);
        v20 = 8 * *(v12 + 8 * v13);
        v21 = a3;
        v22 = a2;
        v23 = result;
        v24 = v14;
        do
        {
          if (*v23)
          {
            v25 = *v22 == 0;
          }

          else
          {
            v25 = 1;
          }

          v26 = !v25;
          *v21 = v26;
          v23 = (v23 + v18);
          v22 = (v22 + v19);
          v21 = (v21 + v20);
          --v24;
        }

        while (v24);
      }

      ++v9;
      result = (result + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
    }

    while (v9 != v8);
  }

  return result;
}

void *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::LogicalAnd,3,false>(void *result, void *a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::LogicalAnd,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<half,half,mlx::core::detail::LogicalAnd>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, float16x8_t a5)
{
  v94 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*a1 + 152);
  v11 = *(*a2 + 152);
  v12 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v46 = *(v9 + 160);
      if (v46 < 8)
      {
        v49 = *(v9 + 160);
      }

      else
      {
        a5.i16[0] = *v11;
        v47 = vdup_lane_s8(vmovn_s16(vmvnq_s8(vceqzq_f16(a5))), 0);
        do
        {
          v48 = *v10;
          v10 += 8;
          *v12 = vcvtq_f16_s16(vmovl_s8(vcltz_s8(vshl_n_s8(vand_s8(vmovn_s16(vmvnq_s8(vceqzq_f16(v48))), v47), 7uLL))));
          v12 += 8;
          v49 = v46 - 8;
          v17 = v46 > 0xF;
          v46 -= 8;
        }

        while (v17);
      }

      if (v49 >= 1)
      {
        v79 = v49 + 1;
        do
        {
          __asm { FCMP            H0, #0 }

          if (_ZF)
          {
            v81 = 0;
          }

          else
          {
            v81 = 1;
          }

          v82 = *v10++;
          __asm { FCMP            H1, #0 }

          if (_ZF)
          {
            v81 = 0;
          }

          *v12++ = v81;
          --v79;
        }

        while (v79 > 1);
      }
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_13;
      }

      v18 = *(v9 + 48);
      if (v18 < 8)
      {
        v22 = *(v9 + 48);
      }

      else
      {
        do
        {
          v19 = *v10;
          v10 += 8;
          v20 = v19;
          v21 = *v11;
          v11 += 8;
          *v12 = vcvtq_f16_s16(vbicq_s8(vmvnq_s8(vceqzq_f16(v21)), vceqzq_f16(v20)));
          v12 += 8;
          v22 = v18 - 8;
          v17 = v18 > 0xF;
          v18 -= 8;
        }

        while (v17);
      }

      if (v22 >= 1)
      {
        v73 = v22 + 1;
        do
        {
          v74 = *v10++;
          v75 = *v11++;
          __asm { FCMP            H0, #0 }

          if (_ZF)
          {
            v77 = 0;
          }

          else
          {
            v77 = 1;
          }

          __asm { FCMP            H1, #0 }

          if (_ZF)
          {
            v77 = 0;
          }

          *v12++ = v77;
          --v73;
        }

        while (v73 > 1);
      }
    }
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v13 = *(*a2 + 160);
        if (v13 < 8)
        {
          v16 = *(*a2 + 160);
        }

        else
        {
          a5.i16[0] = *v10;
          v14 = vdup_lane_s8(vmovn_s16(vmvnq_s8(vceqzq_f16(a5))), 0);
          do
          {
            v15 = *v11;
            v11 += 8;
            *v12 = vcvtq_f16_s16(vmovl_s8(vcltz_s8(vshl_n_s8(vand_s8(vmovn_s16(vmvnq_s8(vceqzq_f16(v15))), v14), 7uLL))));
            v12 += 8;
            v16 = v13 - 8;
            v17 = v13 > 0xF;
            v13 -= 8;
          }

          while (v17);
        }

        if (v16 >= 1)
        {
          v68 = v16 + 1;
          do
          {
            __asm { FCMP            H0, #0 }

            if (_ZF)
            {
              v70 = 0;
            }

            else
            {
              v70 = 1;
            }

            v71 = *v11++;
            __asm { FCMP            H1, #0 }

            if (_ZF)
            {
              v70 = 0;
            }

            *v12++ = v70;
            --v68;
          }

          while (v68 > 1);
        }

        goto LABEL_104;
      }

LABEL_13:
      memset(v90, 0, sizeof(v90));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v90, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
      v23 = *a2;
      memset(v91, 0, sizeof(v91));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v91, *(v23 + 24), *(v23 + 32), (*(v23 + 32) - *(v23 + 24)) >> 3);
      v24 = *a3;
      v93[0] = 0;
      v93[1] = 0;
      v92 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v92, *(v24 + 24), *(v24 + 32), (*(v24 + 32) - *(v24 + 24)) >> 3);
      memset(v85, 0, sizeof(v85));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v85, v90, &v94, 3uLL);
      mlx::core::collapse_contiguous_dims(v9, v85, 0x7FFFFFFFuLL, &__p);
      v89 = v85;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v89);
      for (i = 0; i != -9; i -= 3)
      {
        v27 = v93[i - 1];
        if (v27)
        {
          v93[i] = v27;
          operator delete(v27);
        }
      }

      v28 = v88 + 6;
      v29 = *v88;
      v30 = (v88[1] - *v88) >> 3;
      v31 = v30 - 1;
      if (v30 - 1 >= -1)
      {
        v31 = -1;
      }

      v32 = v31 + 1;
      v33 = v30 + 1;
      v34 = v30 - 1;
      v35 = v30 - 1;
      while ((v35 & 0x80000000) == 0)
      {
        v36 = 8 * (v35 & 0x7FFFFFFF);
        --v33;
        --v35;
        if (*(v29 + v36) != *(*v28 + v36))
        {
          goto LABEL_34;
        }
      }

      v33 = v32;
LABEL_34:
      v50 = v88[3];
      v51 = (v88[4] - v50) >> 3;
      v52 = v51 - 1;
      if (v51 - 1 >= -1)
      {
        v52 = -1;
      }

      v53 = v52 + 1;
      v54 = v51 + 1;
      v55 = v51 - 1;
      v56 = v51 - 1;
      while ((v56 & 0x80000000) == 0)
      {
        v57 = 8 * (v56 & 0x7FFFFFFF);
        --v54;
        --v56;
        if (*(v50 + v57) != *(*v28 + v57))
        {
          goto LABEL_41;
        }
      }

      v54 = v53;
LABEL_41:
      v58 = v30 + 1;
      while ((v34 & 0x80000000) == 0)
      {
        v59 = *(v29 + 8 * (v34 & 0x7FFFFFFF));
        --v58;
        --v34;
        if (v59)
        {
          goto LABEL_46;
        }
      }

      v58 = v32;
LABEL_46:
      v60 = v51 + 1;
      while ((v55 & 0x80000000) == 0)
      {
        v61 = *(v50 + 8 * (v55 & 0x7FFFFFFF));
        --v60;
        --v55;
        if (v61)
        {
          goto LABEL_51;
        }
      }

      v60 = v53;
LABEL_51:
      v62 = (v87 - __p) >> 2;
      if (v33 <= v54)
      {
        v63 = v54;
      }

      else
      {
        v63 = v33;
      }

      if (v33 <= v60)
      {
        v33 = v60;
      }

      if (v58 > v54)
      {
        v54 = v58;
      }

      if (v62 > v54)
      {
        v64 = 1;
      }

      else
      {
        v54 = (v87 - __p) >> 2;
        v64 = a4;
      }

      if (v62 > v33)
      {
        v65 = 2;
      }

      else
      {
        v33 = v54;
        v65 = v64;
      }

      if (v62 <= v63)
      {
        v66 = v33;
      }

      else
      {
        v66 = v63;
      }

      if (v62 <= v63)
      {
        v67 = v65;
      }

      else
      {
        v67 = 3;
      }

      if (!v66 || *(*v28 + 8 * v66 - 8) < 16)
      {
        goto LABEL_72;
      }

      switch(v67)
      {
        case 1:
          mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(v10, v11, v12, v66, *(*a1 + 48), &__p, v88, v88 + 3, v25, v88 + 6);
          break;
        case 2:
          mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(v10, v11, v12, v66, *(*a1 + 48), &__p, v88, v88 + 3, v25, v88 + 6);
          break;
        case 3:
          mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(v10, v11, v12, v66, *(*a1 + 48), &__p, v88, v88 + 3, v88 + 6);
          break;
        default:
          LODWORD(v62) = v66;
LABEL_72:
          mlx::core::binary_op_dispatch_dims<half,half,false,mlx::core::detail::LogicalAnd>(v10, v11, v12, v62, *(*a1 + 48), &__p, v88, v88 + 3, v88 + 6);
          break;
      }

      v90[0] = &v88;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v90);
      if (__p)
      {
        v87 = __p;
        operator delete(__p);
      }

      goto LABEL_104;
    }

    v37 = *v10;
    v38 = *v11;
    __asm { FCMP            H0, #0 }

    if (_ZF)
    {
      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    __asm { FCMP            H1, #0 }

    if (_ZF)
    {
      v44 = 0;
    }

    *v12 = v44;
  }

LABEL_104:
  v84 = *MEMORY[0x277D85DE8];
}

void sub_25A7110B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(__int16 *a1, __int16 *a2, short float *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
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
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A711530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(__int16 *a1, unsigned __int16 *a2, short float *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, float16x8_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v16);
      if (a5 >= 1)
      {
        v20 = a5;
        v21 = 0;
        v54 = *(*a10 + 8 * a4 - 32);
        v22 = v20;
        do
        {
          mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(&a1[v62], &a2[v55], &a3[v21], a6, a7, a8, a10, v16, v19);
          v23 = v64 - v63;
          v24 = (v64 - v63) >> 2;
          if (v24)
          {
            v25 = v67;
            v26 = ((v23 << 30) - 0x100000000) >> 32;
            v27 = v67 + 4 * v26;
            v28 = *v27;
            v29 = v63 + 4 * v26;
            v30 = v65;
            v31 = v62;
            if (v24 >= 2 && v28 == *v29 - 1)
            {
              v34 = (v23 >> 2) & 0x7FFFFFFF;
              v33 = v34 - 1;
              v35 = 4 * v34;
              v36 = v63 - 8;
              do
              {
                v37 = v33;
                *v27 = 0;
                v31 -= v30[v26] * (*v29 - 1);
                v62 = v31;
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
            v62 = v30[v33] + v31;
          }

          v39 = v57 - v56;
          v40 = (v57 - v56) >> 2;
          if (v40)
          {
            v41 = __p;
            v42 = ((v39 << 30) - 0x100000000) >> 32;
            v43 = __p + 4 * v42;
            v44 = *v43;
            v45 = v58;
            v46 = v55;
            if (v40 >= 2 && (v47 = v56 + 4 * v42, v44 == *v47 - 1))
            {
              v48 = (v39 >> 2) & 0x7FFFFFFF;
              v49 = v48 - 1;
              v50 = 4 * v48;
              v51 = v56 - 8;
              do
              {
                v52 = v49;
                *v43 = 0;
                v46 -= v45[v42] * (*v47 - 1);
                v55 = v46;
                --v49;
                v43 = &v41[v50 - 8];
                v44 = *v43;
                v41 -= 4;
                if (v52 < 2)
                {
                  break;
                }

                v47 = &v51[v50];
                v53 = *&v51[4 * v48] - 1;
                v51 -= 4;
                v42 = v49;
              }

              while (v44 == v53);
              v43 = &v41[4 * v48 - 4];
            }

            else
            {
              v49 = ((v39 << 30) - 0x100000000) >> 32;
            }

            *v43 = v44 + 1;
            v55 = v45[v49] + v46;
          }

          v21 += v54;
        }

        while (v21 < v22);
      }

      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
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

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      break;
  }
}

void sub_25A711948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(unsigned __int16 *a1, __int16 *a2, short float *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, float16x8_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v16);
      if (a5 >= 1)
      {
        v20 = a5;
        v21 = 0;
        v54 = *(*a10 + 8 * a4 - 32);
        v22 = v20;
        do
        {
          mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(&a1[v62], &a2[v55], &a3[v21], a6, a7, a8, a10, v16, v19);
          v23 = v64 - v63;
          v24 = (v64 - v63) >> 2;
          if (v24)
          {
            v25 = v67;
            v26 = ((v23 << 30) - 0x100000000) >> 32;
            v27 = v67 + 4 * v26;
            v28 = *v27;
            v29 = v63 + 4 * v26;
            v30 = v65;
            v31 = v62;
            if (v24 >= 2 && v28 == *v29 - 1)
            {
              v34 = (v23 >> 2) & 0x7FFFFFFF;
              v33 = v34 - 1;
              v35 = 4 * v34;
              v36 = v63 - 8;
              do
              {
                v37 = v33;
                *v27 = 0;
                v31 -= v30[v26] * (*v29 - 1);
                v62 = v31;
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
            v62 = v30[v33] + v31;
          }

          v39 = v57 - v56;
          v40 = (v57 - v56) >> 2;
          if (v40)
          {
            v41 = __p;
            v42 = ((v39 << 30) - 0x100000000) >> 32;
            v43 = __p + 4 * v42;
            v44 = *v43;
            v45 = v58;
            v46 = v55;
            if (v40 >= 2 && (v47 = v56 + 4 * v42, v44 == *v47 - 1))
            {
              v48 = (v39 >> 2) & 0x7FFFFFFF;
              v49 = v48 - 1;
              v50 = 4 * v48;
              v51 = v56 - 8;
              do
              {
                v52 = v49;
                *v43 = 0;
                v46 -= v45[v42] * (*v47 - 1);
                v55 = v46;
                --v49;
                v43 = &v41[v50 - 8];
                v44 = *v43;
                v41 -= 4;
                if (v52 < 2)
                {
                  break;
                }

                v47 = &v51[v50];
                v53 = *&v51[4 * v48] - 1;
                v51 -= 4;
                v42 = v49;
              }

              while (v44 == v53);
              v43 = &v41[4 * v48 - 4];
            }

            else
            {
              v49 = ((v39 << 30) - 0x100000000) >> 32;
            }

            *v43 = v44 + 1;
            v55 = v45[v49] + v46;
          }

          v21 += v54;
        }

        while (v21 < v22);
      }

      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
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

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      break;
  }
}

void sub_25A711D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,false,mlx::core::detail::LogicalAnd>(__int16 *a1, __int16 *a2, short float *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::detail::LogicalAnd,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::detail::LogicalAnd,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = 2 * **a7;
        v19 = 2 * **a8;
        v20 = 2 * **a9;
        do
        {
          v21 = *v14;
          v22 = *v13;
          __asm { FCMP            H0, #0 }

          v27 = !_ZF;
          __asm { FCMP            H1, #0 }

          if (_ZF)
          {
            v27 = 0;
          }

          *v12 = v27;
          v14 = (v14 + v18);
          v13 = (v13 + v19);
          v12 = (v12 + v20);
          --v17;
        }

        while (v17);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v70, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v63, a6, a8, v15);
      if (a5 >= 1)
      {
        v30 = 0;
        v31 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<half,half,mlx::core::detail::LogicalAnd,3,false>(&v14[v70], &v13[v63], &v12[v30], a6, a7, a8, a9, v15);
          v32 = v72 - v71;
          v33 = (v72 - v71) >> 2;
          if (v33)
          {
            v34 = v75;
            v35 = ((v32 << 30) - 0x100000000) >> 32;
            v36 = v75 + 4 * v35;
            v37 = *v36;
            v38 = v71 + 4 * v35;
            v39 = v73;
            v40 = v70;
            _ZF = v33 >= 2 && v37 == *v38 - 1;
            if (_ZF)
            {
              v43 = (v32 >> 2) & 0x7FFFFFFF;
              v42 = v43 - 1;
              v44 = 4 * v43;
              v45 = v71 - 8;
              do
              {
                v46 = v42;
                *v36 = 0;
                v40 -= v39[v35] * (*v38 - 1);
                v70 = v40;
                --v42;
                v36 = &v34[v44 - 8];
                v37 = *v36;
                v34 -= 4;
                if (v46 < 2)
                {
                  break;
                }

                v38 = &v45[v44];
                v47 = *&v45[4 * v43] - 1;
                v45 -= 4;
                v35 = v42;
              }

              while (v37 == v47);
              v36 = &v34[4 * v43 - 4];
            }

            else
            {
              v42 = ((v32 << 30) - 0x100000000) >> 32;
            }

            *v36 = v37 + 1;
            v70 = v39[v42] + v40;
          }

          v48 = v65 - v64;
          v49 = (v65 - v64) >> 2;
          if (v49)
          {
            v50 = __p;
            v51 = ((v48 << 30) - 0x100000000) >> 32;
            v52 = __p + 4 * v51;
            v53 = *v52;
            v54 = v66;
            v55 = v63;
            if (v49 >= 2 && (v56 = v64 + 4 * v51, v53 == *v56 - 1))
            {
              v57 = (v48 >> 2) & 0x7FFFFFFF;
              v58 = v57 - 1;
              v59 = 4 * v57;
              v60 = v64 - 8;
              do
              {
                v61 = v58;
                *v52 = 0;
                v55 -= v54[v51] * (*v56 - 1);
                v63 = v55;
                --v58;
                v52 = &v50[v59 - 8];
                v53 = *v52;
                v50 -= 4;
                if (v61 < 2)
                {
                  break;
                }

                v56 = &v60[v59];
                v62 = *&v60[4 * v57] - 1;
                v60 -= 4;
                v51 = v58;
              }

              while (v53 == v62);
              v52 = &v50[4 * v57 - 4];
            }

            else
            {
              v58 = ((v48 << 30) - 0x100000000) >> 32;
            }

            *v52 = v53 + 1;
            v63 = v54[v58] + v55;
          }

          v30 += v31;
        }

        while (v30 < a5);
      }

      if (__p)
      {
        v69 = __p;
        operator delete(__p);
      }

      if (v66)
      {
        v67 = v66;
        operator delete(v66);
      }

      if (v64)
      {
        v65 = v64;
        operator delete(v64);
      }

      if (v75)
      {
        v76 = v75;
        operator delete(v75);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }

      if (v71)
      {
        v72 = v71;
        operator delete(v71);
      }

      break;
  }
}

void sub_25A712190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(__int16 *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a7 + 8 * a8);
    v11 = 2 * *(*a5 + 8 * a8);
    v12 = 2 * *(*a6 + 8 * a8);
    do
    {
      v13 = v10;
      v14 = a3;
      v15 = a2;
      v16 = result;
      if (v10 >= 8)
      {
        v17 = 0;
        v13 = v10;
        do
        {
          v18 = v13;
          *&a3[v17] = vcvtq_f16_s16(vbicq_s8(vmvnq_s8(vceqzq_f16(*&a2[v17])), vceqzq_f16(*&result[v17])));
          v13 -= 8;
          v17 += 8;
        }

        while (v18 > 0xF);
        v16 = &result[v17];
        v15 = &a2[v17];
        v14 = &a3[v17];
      }

      if (v13 >= 1)
      {
        v19 = v13 + 1;
        do
        {
          v20 = *v16++;
          v21 = *v15++;
          __asm { FCMP            H0, #0 }

          if (_ZF)
          {
            v27 = 0;
          }

          else
          {
            v27 = 1;
          }

          __asm { FCMP            H1, #0 }

          if (_ZF)
          {
            v27 = 0;
          }

          *v14++ = v27;
          --v19;
        }

        while (v19 > 1);
      }

      a3 += v10;
      result = (result + v11);
      a2 = (a2 + v12);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(__int16 *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(__int16 *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(__int16 *result, unsigned __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, float16x8_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    do
    {
      v14 = v12;
      v15 = a3;
      v16 = result;
      if (v12 >= 8)
      {
        v17 = 0;
        a9.i16[0] = *a2;
        v18 = vdup_lane_s8(vmovn_s16(vmvnq_s8(vceqzq_f16(a9))), 0);
        v14 = v12;
        do
        {
          v19 = v14;
          *&a3[v17] = vcvtq_f16_s16(vmovl_s8(vcltz_s8(vshl_n_s8(vand_s8(vmovn_s16(vmvnq_s8(vceqzq_f16(*&result[v17]))), v18), 7uLL))));
          v14 -= 8;
          v17 += 8;
        }

        while (v19 > 0xF);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v20 = v14 + 1;
        do
        {
          __asm { FCMP            H0, #0 }

          if (_ZF)
          {
            v26 = 0;
          }

          else
          {
            v26 = 1;
          }

          v27 = *v16++;
          __asm { FCMP            H1, #0 }

          if (_ZF)
          {
            v26 = 0;
          }

          *v15++ = v26;
          --v20;
        }

        while (v20 > 1);
      }

      a3 += v12;
      result = (result + v13);
      a2 += v11;
      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(__int16 *result, unsigned __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, float16x8_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    v18 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(__int16 *result, unsigned __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, float16x8_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    v18 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(unsigned __int16 *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, float16x8_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a5 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a6 + 8 * a8);
    do
    {
      v14 = v12;
      v15 = a3;
      v16 = a2;
      if (v12 >= 8)
      {
        v17 = 0;
        a9.i16[0] = *result;
        v18 = vdup_lane_s8(vmovn_s16(vmvnq_s8(vceqzq_f16(a9))), 0);
        v14 = v12;
        do
        {
          v19 = v14;
          *&a3[v17] = vcvtq_f16_s16(vmovl_s8(vcltz_s8(vshl_n_s8(vand_s8(vmovn_s16(vmvnq_s8(vceqzq_f16(*&a2[v17]))), v18), 7uLL))));
          v14 -= 8;
          v17 += 8;
        }

        while (v19 > 0xF);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v20 = v14 + 1;
        do
        {
          __asm { FCMP            H0, #0 }

          if (_ZF)
          {
            v26 = 0;
          }

          else
          {
            v26 = 1;
          }

          v27 = *v16++;
          __asm { FCMP            H1, #0 }

          if (_ZF)
          {
            v26 = 0;
          }

          *v15++ = v26;
          --v20;
        }

        while (v20 > 1);
      }

      a3 += v12;
      result += v11;
      a2 = (a2 + v13);
      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(unsigned __int16 *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, float16x8_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    v18 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(unsigned __int16 *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, float16x8_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    v18 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::detail::LogicalAnd,2,false>(__int16 *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = a8 + 1;
    v11 = *(*a5 + 8 * v10);
    v12 = *(*a6 + 8 * v10);
    v13 = *(*a7 + 8 * v10);
    v14 = *(*a4 + 4 * v10);
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * v11;
    v17 = 2 * *(*a6 + 8 * a8);
    v18 = 2 * v12;
    v19 = 2 * *(*a7 + 8 * a8);
    v20 = 2 * v13;
    do
    {
      if (v14 >= 1)
      {
        v21 = a3;
        v22 = a2;
        v23 = result;
        v24 = v14;
        do
        {
          v25 = *v23;
          v26 = *v22;
          __asm { FCMP            H0, #0 }

          if (_ZF)
          {
            v32 = 0;
          }

          else
          {
            v32 = 1;
          }

          __asm { FCMP            H1, #0 }

          if (_ZF)
          {
            v32 = 0;
          }

          *v21 = v32;
          v23 = (v23 + v16);
          v22 = (v22 + v18);
          v21 = (v21 + v20);
          --v24;
        }

        while (v24);
      }

      ++v9;
      result = (result + v15);
      a2 = (a2 + v17);
      a3 = (a3 + v19);
    }

    while (v9 != v8);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::detail::LogicalAnd,3,false>(__int16 *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<half,half,mlx::core::detail::LogicalAnd,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<float,float,mlx::core::detail::LogicalAnd>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, float32x4_t a5)
{
  v57 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*a1 + 152);
  v11 = *(*a2 + 152);
  v12 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>::operator()<float,float>(a5, v53, v10, v11, v12, *(v9 + 160));
      goto LABEL_68;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::LogicalAnd>::operator()<float,float>(v53, v10, v11, v12, *(v9 + 48));
      goto LABEL_68;
    }

    goto LABEL_8;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>::operator()<float,float>(a5, v53, v10, v11, v12, *(*a2 + 160));
      goto LABEL_68;
    }

LABEL_8:
    memset(v53, 0, sizeof(v53));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v53, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
    v13 = *a2;
    memset(v54, 0, sizeof(v54));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v54, *(v13 + 24), *(v13 + 32), (*(v13 + 32) - *(v13 + 24)) >> 3);
    v14 = *a3;
    v56[0] = 0;
    v56[1] = 0;
    v55 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v55, *(v14 + 24), *(v14 + 32), (*(v14 + 32) - *(v14 + 24)) >> 3);
    memset(v48, 0, sizeof(v48));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v48, v53, &v57, 3uLL);
    mlx::core::collapse_contiguous_dims(v9, v48, 0x7FFFFFFFuLL, &__p);
    v52 = v48;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v52);
    for (i = 0; i != -9; i -= 3)
    {
      v17 = v56[i - 1];
      if (v17)
      {
        v56[i] = v17;
        operator delete(v17);
      }
    }

    v18 = v51 + 6;
    v19 = *v51;
    v20 = (v51[1] - *v51) >> 3;
    v21 = v20 - 1;
    if (v20 - 1 >= -1)
    {
      v21 = -1;
    }

    v22 = v21 + 1;
    v23 = v20 + 1;
    v24 = v20 - 1;
    v25 = v20 - 1;
    while ((v25 & 0x80000000) == 0)
    {
      v26 = 8 * (v25 & 0x7FFFFFFF);
      --v23;
      --v25;
      if (*(v19 + v26) != *(*v18 + v26))
      {
        goto LABEL_27;
      }
    }

    v23 = v22;
LABEL_27:
    v29 = v51[3];
    v30 = (v51[4] - v29) >> 3;
    v31 = v30 - 1;
    if (v30 - 1 >= -1)
    {
      v31 = -1;
    }

    v32 = v31 + 1;
    v33 = v30 + 1;
    v34 = v30 - 1;
    v35 = v30 - 1;
    while ((v35 & 0x80000000) == 0)
    {
      v36 = 8 * (v35 & 0x7FFFFFFF);
      --v33;
      --v35;
      if (*(v29 + v36) != *(*v18 + v36))
      {
        goto LABEL_34;
      }
    }

    v33 = v32;
LABEL_34:
    v37 = v20 + 1;
    while ((v24 & 0x80000000) == 0)
    {
      v38 = *(v19 + 8 * (v24 & 0x7FFFFFFF));
      --v37;
      --v24;
      if (v38)
      {
        goto LABEL_39;
      }
    }

    v37 = v22;
LABEL_39:
    v39 = v30 + 1;
    while ((v34 & 0x80000000) == 0)
    {
      v40 = *(v29 + 8 * (v34 & 0x7FFFFFFF));
      --v39;
      --v34;
      if (v40)
      {
        goto LABEL_44;
      }
    }

    v39 = v32;
LABEL_44:
    v41 = (v50 - __p) >> 2;
    if (v23 <= v33)
    {
      v42 = v33;
    }

    else
    {
      v42 = v23;
    }

    if (v23 <= v39)
    {
      v23 = v39;
    }

    if (v37 > v33)
    {
      v33 = v37;
    }

    if (v41 > v33)
    {
      v43 = 1;
    }

    else
    {
      v33 = (v50 - __p) >> 2;
      v43 = a4;
    }

    if (v41 > v23)
    {
      v44 = 2;
    }

    else
    {
      v23 = v33;
      v44 = v43;
    }

    if (v41 <= v42)
    {
      v45 = v23;
    }

    else
    {
      v45 = v42;
    }

    if (v41 <= v42)
    {
      v46 = v44;
    }

    else
    {
      v46 = 3;
    }

    if (!v45 || *(*v18 + 8 * v45 - 8) < 16)
    {
      goto LABEL_65;
    }

    switch(v46)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(v10, v11, v12, v45, *(*a1 + 48), &__p, v51, v51 + 3, v15, v51 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(v10, v11, v12, v45, *(*a1 + 48), &__p, v51, v51 + 3, v15, v51 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(v10, v11, v12, v45, *(*a1 + 48), &__p, v51, v51 + 3, v51 + 6);
        break;
      default:
        LODWORD(v41) = v45;
LABEL_65:
        mlx::core::binary_op_dispatch_dims<float,float,false,mlx::core::detail::LogicalAnd>(v10, v11, v12->f32, v41, *(*a1 + 48), &__p, v51, v51 + 3, v51 + 6);
        break;
    }

    v53[0] = &v51;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v53);
    if (__p)
    {
      v50 = __p;
      operator delete(__p);
    }

    goto LABEL_68;
  }

  v28 = *v11 != 0.0 && *v10 != 0.0;
  v12->f32[0] = v28;
LABEL_68:
  v47 = *MEMORY[0x277D85DE8];
}

void sub_25A712F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>::operator()<float,float>(float32x4_t a1, uint64_t a2, unsigned __int32 *a3, _OWORD *a4, float32x4_t *a5, int a6)
{
  a1.i32[0] = *a3;
  if (a6 < 8)
  {
    v9 = a6;
  }

  else
  {
    v6 = vdup_lane_s8(vuzp1_s8(vmovn_s32(vmvnq_s8(vceqzq_f32(a1))), *a1.f32), 0);
    do
    {
      v7 = *a4;
      v8 = *(a4 + 1);
      a4 += 2;
      *v7.f32 = vand_s8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_f32(v7), vceqzq_f32(v8)))), v6);
      *a5 = vcvtq_f32_s32(vmovl_s16(vcltz_s16(vshl_n_s16(vzip1_s8(*v7.f32, *a1.f32), 0xFuLL))));
      a5[1] = vcvtq_f32_s32(vmovl_s16(vcltz_s16(vshl_n_s16(vzip2_s8(*v7.f32, *a1.f32), 0xFuLL))));
      a5 += 2;
      v9 = a6 - 8;
      v10 = a6 > 0xF;
      a6 -= 8;
    }

    while (v10);
  }

  if (v9 >= 1)
  {
    v11 = v9 + 1;
    do
    {
      v12 = *a4;
      a4 = (a4 + 4);
      v14 = v12 != 0.0 && a1.f32[0] != 0.0;
      a5->f32[0] = v14;
      a5 = (a5 + 4);
      --v11;
    }

    while (v11 > 1);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>::operator()<float,float>(float32x4_t a1, uint64_t a2, _OWORD *a3, unsigned __int32 *a4, float32x4_t *a5, int a6)
{
  a1.i32[0] = *a4;
  if (a6 < 8)
  {
    v9 = a6;
  }

  else
  {
    v6 = vdup_lane_s8(vuzp1_s8(vmovn_s32(vmvnq_s8(vceqzq_f32(a1))), *a1.f32), 0);
    do
    {
      v7 = *a3;
      v8 = *(a3 + 1);
      a3 += 2;
      *v7.f32 = vand_s8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_f32(v7), vceqzq_f32(v8)))), v6);
      *a5 = vcvtq_f32_s32(vmovl_s16(vcltz_s16(vshl_n_s16(vzip1_s8(*v7.f32, *a1.f32), 0xFuLL))));
      a5[1] = vcvtq_f32_s32(vmovl_s16(vcltz_s16(vshl_n_s16(vzip2_s8(*v7.f32, *a1.f32), 0xFuLL))));
      a5 += 2;
      v9 = a6 - 8;
      v10 = a6 > 0xF;
      a6 -= 8;
    }

    while (v10);
  }

  if (v9 >= 1)
  {
    v11 = v9 + 1;
    do
    {
      v12 = *a3;
      a3 = (a3 + 4);
      v14 = v12 != 0.0 && a1.f32[0] != 0.0;
      a5->f32[0] = v14;
      a5 = (a5 + 4);
      --v11;
    }

    while (v11 > 1);
  }
}

void mlx::core::VectorVector<mlx::core::detail::LogicalAnd>::operator()<float,float>(uint64_t a1, _OWORD *a2, _OWORD *a3, float32x4_t *a4, int a5)
{
  if (a5 < 8)
  {
    v9 = a5;
  }

  else
  {
    do
    {
      v5 = *a2;
      v6 = *(a2 + 1);
      a2 += 2;
      v7 = *a3;
      v8 = *(a3 + 1);
      a3 += 2;
      *v5.f32 = vmovn_s16(vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqzq_f32(v7), vceqzq_f32(v8))), vuzp1q_s16(vceqzq_f32(v5), vceqzq_f32(v6))));
      *a4 = vcvtq_f32_s32(vmovl_s16(vcltz_s16(vshl_n_s16(vzip1_s8(*v5.f32, *v5.f32), 0xFuLL))));
      a4[1] = vcvtq_f32_s32(vmovl_s16(vcltz_s16(vshl_n_s16(vzip2_s8(*v5.f32, *v5.f32), 0xFuLL))));
      a4 += 2;
      v9 = a5 - 8;
      v10 = a5 > 0xF;
      a5 -= 8;
    }

    while (v10);
  }

  if (v9 >= 1)
  {
    v11 = v9 + 1;
    do
    {
      v12 = *a2;
      a2 = (a2 + 4);
      v13 = v12;
      v14 = *a3;
      a3 = (a3 + 4);
      v16 = v14 != 0.0 && v13 != 0.0;
      a4->f32[0] = v16;
      a4 = (a4 + 4);
      --v11;
    }

    while (v11 > 1);
  }
}

void mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(_OWORD *a1, _OWORD *a2, float32x4_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>((a1 + 4 * v60), (a2 + 4 * v53), (a3 + 4 * v19), a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
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
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A7135DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(_OWORD *a1, unsigned __int32 *a2, float32x4_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, float32x4_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v16);
      if (a5 >= 1)
      {
        v20 = a5;
        v21 = 0;
        v54 = *(*a10 + 8 * a4 - 32);
        v22 = v20;
        do
        {
          mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>((a1 + 4 * v62), &a2[v55], (a3 + 4 * v21), a6, a7, a8, a10, v16, v19);
          v23 = v64 - v63;
          v24 = (v64 - v63) >> 2;
          if (v24)
          {
            v25 = v67;
            v26 = ((v23 << 30) - 0x100000000) >> 32;
            v27 = v67 + 4 * v26;
            v28 = *v27;
            v29 = v63 + 4 * v26;
            v30 = v65;
            v31 = v62;
            if (v24 >= 2 && v28 == *v29 - 1)
            {
              v34 = (v23 >> 2) & 0x7FFFFFFF;
              v33 = v34 - 1;
              v35 = 4 * v34;
              v36 = v63 - 8;
              do
              {
                v37 = v33;
                *v27 = 0;
                v31 -= v30[v26] * (*v29 - 1);
                v62 = v31;
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
            v62 = v30[v33] + v31;
          }

          v39 = v57 - v56;
          v40 = (v57 - v56) >> 2;
          if (v40)
          {
            v41 = __p;
            v42 = ((v39 << 30) - 0x100000000) >> 32;
            v43 = __p + 4 * v42;
            v44 = *v43;
            v45 = v58;
            v46 = v55;
            if (v40 >= 2 && (v47 = v56 + 4 * v42, v44 == *v47 - 1))
            {
              v48 = (v39 >> 2) & 0x7FFFFFFF;
              v49 = v48 - 1;
              v50 = 4 * v48;
              v51 = v56 - 8;
              do
              {
                v52 = v49;
                *v43 = 0;
                v46 -= v45[v42] * (*v47 - 1);
                v55 = v46;
                --v49;
                v43 = &v41[v50 - 8];
                v44 = *v43;
                v41 -= 4;
                if (v52 < 2)
                {
                  break;
                }

                v47 = &v51[v50];
                v53 = *&v51[4 * v48] - 1;
                v51 -= 4;
                v42 = v49;
              }

              while (v44 == v53);
              v43 = &v41[4 * v48 - 4];
            }

            else
            {
              v49 = ((v39 << 30) - 0x100000000) >> 32;
            }

            *v43 = v44 + 1;
            v55 = v45[v49] + v46;
          }

          v21 += v54;
        }

        while (v21 < v22);
      }

      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
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

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      break;
  }
}

void sub_25A7139F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(unsigned __int32 *a1, _OWORD *a2, float32x4_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, float32x4_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v16);
      if (a5 >= 1)
      {
        v20 = a5;
        v21 = 0;
        v54 = *(*a10 + 8 * a4 - 32);
        v22 = v20;
        do
        {
          mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(&a1[v62], (a2 + 4 * v55), (a3 + 4 * v21), a6, a7, a8, a10, v16, v19);
          v23 = v64 - v63;
          v24 = (v64 - v63) >> 2;
          if (v24)
          {
            v25 = v67;
            v26 = ((v23 << 30) - 0x100000000) >> 32;
            v27 = v67 + 4 * v26;
            v28 = *v27;
            v29 = v63 + 4 * v26;
            v30 = v65;
            v31 = v62;
            if (v24 >= 2 && v28 == *v29 - 1)
            {
              v34 = (v23 >> 2) & 0x7FFFFFFF;
              v33 = v34 - 1;
              v35 = 4 * v34;
              v36 = v63 - 8;
              do
              {
                v37 = v33;
                *v27 = 0;
                v31 -= v30[v26] * (*v29 - 1);
                v62 = v31;
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
            v62 = v30[v33] + v31;
          }

          v39 = v57 - v56;
          v40 = (v57 - v56) >> 2;
          if (v40)
          {
            v41 = __p;
            v42 = ((v39 << 30) - 0x100000000) >> 32;
            v43 = __p + 4 * v42;
            v44 = *v43;
            v45 = v58;
            v46 = v55;
            if (v40 >= 2 && (v47 = v56 + 4 * v42, v44 == *v47 - 1))
            {
              v48 = (v39 >> 2) & 0x7FFFFFFF;
              v49 = v48 - 1;
              v50 = 4 * v48;
              v51 = v56 - 8;
              do
              {
                v52 = v49;
                *v43 = 0;
                v46 -= v45[v42] * (*v47 - 1);
                v55 = v46;
                --v49;
                v43 = &v41[v50 - 8];
                v44 = *v43;
                v41 -= 4;
                if (v52 < 2)
                {
                  break;
                }

                v47 = &v51[v50];
                v53 = *&v51[4 * v48] - 1;
                v51 -= 4;
                v42 = v49;
              }

              while (v44 == v53);
              v43 = &v41[4 * v48 - 4];
            }

            else
            {
              v49 = ((v39 << 30) - 0x100000000) >> 32;
            }

            *v43 = v44 + 1;
            v55 = v45[v49] + v46;
          }

          v21 += v54;
        }

        while (v21 < v22);
      }

      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
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

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      break;
  }
}

void sub_25A713E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,float,false,mlx::core::detail::LogicalAnd>(float *a1, float *a2, float *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::detail::LogicalAnd,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::detail::LogicalAnd,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = 4 * **a7;
        v19 = 4 * **a8;
        v20 = 4 * **a9;
        do
        {
          v22 = *v13 != 0.0 && *v14 != 0.0;
          *v12 = v22;
          v14 = (v14 + v18);
          v13 = (v13 + v19);
          v12 = (v12 + v20);
          --v17;
        }

        while (v17);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v64, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v57, a6, a8, v15);
      if (a5 >= 1)
      {
        v24 = 0;
        v25 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<float,float,mlx::core::detail::LogicalAnd,3,false>(&v14[v64], &v13[v57], &v12[v24], a6, a7, a8, a9, v15);
          v26 = v66 - v65;
          v27 = (v66 - v65) >> 2;
          if (v27)
          {
            v28 = v69;
            v29 = ((v26 << 30) - 0x100000000) >> 32;
            v30 = v69 + 4 * v29;
            v31 = *v30;
            v32 = v65 + 4 * v29;
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

          v42 = v59 - v58;
          v43 = (v59 - v58) >> 2;
          if (v43)
          {
            v44 = __p;
            v45 = ((v42 << 30) - 0x100000000) >> 32;
            v46 = __p + 4 * v45;
            v47 = *v46;
            v48 = v60;
            v49 = v57;
            if (v43 >= 2 && (v50 = v58 + 4 * v45, v47 == *v50 - 1))
            {
              v51 = (v42 >> 2) & 0x7FFFFFFF;
              v52 = v51 - 1;
              v53 = 4 * v51;
              v54 = v58 - 8;
              do
              {
                v55 = v52;
                *v46 = 0;
                v49 -= v48[v45] * (*v50 - 1);
                v57 = v49;
                --v52;
                v46 = &v44[v53 - 8];
                v47 = *v46;
                v44 -= 4;
                if (v55 < 2)
                {
                  break;
                }

                v50 = &v54[v53];
                v56 = *&v54[4 * v51] - 1;
                v54 -= 4;
                v45 = v52;
              }

              while (v47 == v56);
              v46 = &v44[4 * v51 - 4];
            }

            else
            {
              v52 = ((v42 << 30) - 0x100000000) >> 32;
            }

            *v46 = v47 + 1;
            v57 = v48[v52] + v49;
          }

          v24 += v25;
        }

        while (v24 < a5);
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

      break;
  }
}

void sub_25A71423C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(_OWORD *a1, _OWORD *a2, float32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * a8);
    v14 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::LogicalAnd>::operator()<float,float>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 4 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(_OWORD *a1, _OWORD *a2, float32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(_OWORD *a1, _OWORD *a2, float32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(_OWORD *a1, unsigned __int32 *a2, float32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, float32x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v13 = *(*a7 + 8 * a8);
    v14 = 4 * *(*a5 + 8 * a8);
    v15 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>::operator()<float,float>(a9, &v16, a1, a2, a3, v13);
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + 4 * v13);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(_OWORD *a1, unsigned __int32 *a2, float32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, float32x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(_OWORD *a1, unsigned __int32 *a2, float32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, float32x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(unsigned __int32 *a1, _OWORD *a2, float32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, float32x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v13 = *(*a7 + 8 * a8);
    v14 = 4 * *(*a5 + 8 * a8);
    v15 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>::operator()<float,float>(a9, &v16, a1, a2, a3, v13);
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + 4 * v13);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(unsigned __int32 *a1, _OWORD *a2, float32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, float32x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(unsigned __int32 *a1, _OWORD *a2, float32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, float32x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

float *mlx::core::binary_op_dims<float,float,mlx::core::detail::LogicalAnd,2,false>(float *result, float *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = a8 + 1;
    v11 = *(*a4 + 4 * v10);
    v12 = 4 * *(*a5 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * v10);
    v14 = 4 * *(*a6 + 8 * a8);
    v15 = 4 * *(*a6 + 8 * v10);
    v16 = 4 * *(*a7 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * v10);
    do
    {
      if (v11 >= 1)
      {
        v18 = a3;
        v19 = a2;
        v20 = result;
        v21 = v11;
        do
        {
          v23 = *v19 != 0.0 && *v20 != 0.0;
          *v18 = v23;
          v20 = (v20 + v13);
          v19 = (v19 + v15);
          v18 = (v18 + v17);
          --v21;
        }

        while (v21);
      }

      ++v9;
      result = (result + v12);
      a2 = (a2 + v14);
      a3 = (a3 + v16);
    }

    while (v9 != v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,float,mlx::core::detail::LogicalAnd,3,false>(float *result, float *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<float,float,mlx::core::detail::LogicalAnd,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<double,double,mlx::core::detail::LogicalAnd>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, float64x2_t a5)
{
  v56 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*a1 + 152);
  v11 = *(*a2 + 152);
  v12 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>::operator()<double,double>(a5, v52, v10, v11, v12, *(v9 + 160));
      goto LABEL_64;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::LogicalAnd>::operator()<double,double>(v52, v10, v11, v12, *(v9 + 48));
      goto LABEL_64;
    }

    goto LABEL_8;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>::operator()<double,double>(a5, v52, v10, v11, v12, *(*a2 + 160));
      goto LABEL_64;
    }

LABEL_8:
    memset(v52, 0, sizeof(v52));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v52, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
    v13 = *a2;
    memset(v53, 0, sizeof(v53));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v53, *(v13 + 24), *(v13 + 32), (*(v13 + 32) - *(v13 + 24)) >> 3);
    v14 = *a3;
    v55[0] = 0;
    v55[1] = 0;
    v54 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v54, *(v14 + 24), *(v14 + 32), (*(v14 + 32) - *(v14 + 24)) >> 3);
    memset(v47, 0, sizeof(v47));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v47, v52, &v56, 3uLL);
    mlx::core::collapse_contiguous_dims(v9, v47, 0x7FFFFFFFuLL, &__p);
    v51 = v47;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v51);
    for (i = 0; i != -9; i -= 3)
    {
      v17 = v55[i - 1];
      if (v17)
      {
        v55[i] = v17;
        operator delete(v17);
      }
    }

    v18 = v50 + 6;
    v19 = *v50;
    v20 = (v50[1] - *v50) >> 3;
    v21 = v20 - 1;
    if (v20 - 1 >= -1)
    {
      v21 = -1;
    }

    v22 = v21 + 1;
    v23 = v20 + 1;
    v24 = v20 - 1;
    v25 = v20 - 1;
    while ((v25 & 0x80000000) == 0)
    {
      v26 = 8 * (v25 & 0x7FFFFFFF);
      --v23;
      --v25;
      if (*(v19 + v26) != *(*v18 + v26))
      {
        goto LABEL_23;
      }
    }

    v23 = v22;
LABEL_23:
    v28 = v50[3];
    v29 = (v50[4] - v28) >> 3;
    v30 = v29 - 1;
    if (v29 - 1 >= -1)
    {
      v30 = -1;
    }

    v31 = v30 + 1;
    v32 = v29 + 1;
    v33 = v29 - 1;
    v34 = v29 - 1;
    while ((v34 & 0x80000000) == 0)
    {
      v35 = 8 * (v34 & 0x7FFFFFFF);
      --v32;
      --v34;
      if (*(v28 + v35) != *(*v18 + v35))
      {
        goto LABEL_30;
      }
    }

    v32 = v31;
LABEL_30:
    v36 = v20 + 1;
    while ((v24 & 0x80000000) == 0)
    {
      v37 = *(v19 + 8 * (v24 & 0x7FFFFFFF));
      --v36;
      --v24;
      if (v37)
      {
        goto LABEL_35;
      }
    }

    v36 = v22;
LABEL_35:
    v38 = v29 + 1;
    while ((v33 & 0x80000000) == 0)
    {
      v39 = *(v28 + 8 * (v33 & 0x7FFFFFFF));
      --v38;
      --v33;
      if (v39)
      {
        goto LABEL_40;
      }
    }

    v38 = v31;
LABEL_40:
    v40 = (v49 - __p) >> 2;
    if (v23 <= v32)
    {
      v41 = v32;
    }

    else
    {
      v41 = v23;
    }

    if (v23 <= v38)
    {
      v23 = v38;
    }

    if (v36 > v32)
    {
      v32 = v36;
    }

    if (v40 > v32)
    {
      v42 = 1;
    }

    else
    {
      v32 = (v49 - __p) >> 2;
      v42 = a4;
    }

    if (v40 > v23)
    {
      v43 = 2;
    }

    else
    {
      v23 = v32;
      v43 = v42;
    }

    if (v40 <= v41)
    {
      v44 = v23;
    }

    else
    {
      v44 = v41;
    }

    if (v40 <= v41)
    {
      v45 = v43;
    }

    else
    {
      v45 = 3;
    }

    if (!v44 || *(*v18 + 8 * v44 - 8) < 16)
    {
      goto LABEL_61;
    }

    switch(v45)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(v10, v11, v12, v44, *(*a1 + 48), &__p, v50, v50 + 3, v15, v50 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(v10, v11, v12, v44, *(*a1 + 48), &__p, v50, v50 + 3, v15, v50 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(v10, v11, v12, v44, *(*a1 + 48), &__p, v50, v50 + 3, v50 + 6);
        break;
      default:
        LODWORD(v40) = v44;
LABEL_61:
        mlx::core::binary_op_dispatch_dims<double,double,false,mlx::core::detail::LogicalAnd>(v10, v11, v12->f64, v40, *(*a1 + 48), &__p, v50, v50 + 3, v50 + 6);
        break;
    }

    v52[0] = &v50;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v52);
    if (__p)
    {
      v49 = __p;
      operator delete(__p);
    }

    goto LABEL_64;
  }

  v27 = *v10 != 0.0;
  if (*v11 == 0.0)
  {
    v27 = 0;
  }

  v12->f64[0] = v27;
LABEL_64:
  v46 = *MEMORY[0x277D85DE8];
}

void sub_25A714EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>::operator()<double,double>(float64x2_t a1, uint64_t a2, unint64_t *a3, _OWORD *a4, float64x2_t *a5, int a6)
{
  *&a1.f64[0] = *a3;
  if (a6 < 4)
  {
    v12 = a6;
  }

  else
  {
    v6 = vdup_lane_s16(vuzp1_s16(vmovn_s64(vmvnq_s8(vceqzq_f64(a1))), *&a1.f64[0]), 0);
    do
    {
      v7 = *a4;
      v8 = *(a4 + 1);
      a4 += 2;
      v9 = vmovl_u16(vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v7), vceqzq_f64(v8)))), v6));
      *&v8.f64[0] = vcltz_s32(vshl_n_s32(*&vextq_s8(v9, v9, 8uLL), 0x1FuLL));
      v10.i64[0] = SLODWORD(v8.f64[0]);
      v10.i64[1] = SHIDWORD(v8.f64[0]);
      v11 = vcvtq_f64_s64(v10);
      *v9.i8 = vcltz_s32(vshl_n_s32(*v9.i8, 0x1FuLL));
      v10.i64[0] = v9.i32[0];
      v10.i64[1] = v9.i32[1];
      *a5 = vcvtq_f64_s64(v10);
      a5[1] = v11;
      a5 += 2;
      v12 = a6 - 4;
      v13 = a6 >= 7;
      v14 = a6 == 7;
      a6 -= 4;
    }

    while (!v14 && v13);
  }

  if (v12 >= 1)
  {
    v15 = v12 + 1;
    do
    {
      v16 = a1.f64[0] != 0.0;
      v17 = *a4;
      a4 = (a4 + 8);
      if (v17 == 0.0)
      {
        v16 = 0;
      }

      a5->f64[0] = v16;
      a5 = (a5 + 8);
      --v15;
    }

    while (v15 > 1);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>::operator()<double,double>(float64x2_t a1, uint64_t a2, _OWORD *a3, unint64_t *a4, float64x2_t *a5, int a6)
{
  *&a1.f64[0] = *a4;
  if (a6 < 4)
  {
    v12 = a6;
  }

  else
  {
    v6 = vdup_lane_s16(vuzp1_s16(vmovn_s64(vmvnq_s8(vceqzq_f64(a1))), *&a1.f64[0]), 0);
    do
    {
      v7 = *a3;
      v8 = *(a3 + 1);
      a3 += 2;
      v9 = vmovl_u16(vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v7), vceqzq_f64(v8)))), v6));
      *&v8.f64[0] = vcltz_s32(vshl_n_s32(*&vextq_s8(v9, v9, 8uLL), 0x1FuLL));
      v10.i64[0] = SLODWORD(v8.f64[0]);
      v10.i64[1] = SHIDWORD(v8.f64[0]);
      v11 = vcvtq_f64_s64(v10);
      *v9.i8 = vcltz_s32(vshl_n_s32(*v9.i8, 0x1FuLL));
      v10.i64[0] = v9.i32[0];
      v10.i64[1] = v9.i32[1];
      *a5 = vcvtq_f64_s64(v10);
      a5[1] = v11;
      a5 += 2;
      v12 = a6 - 4;
      v13 = a6 >= 7;
      v14 = a6 == 7;
      a6 -= 4;
    }

    while (!v14 && v13);
  }

  if (v12 >= 1)
  {
    v15 = v12 + 1;
    do
    {
      v16 = a1.f64[0] != 0.0;
      v17 = *a3;
      a3 = (a3 + 8);
      if (v17 == 0.0)
      {
        v16 = 0;
      }

      a5->f64[0] = v16;
      a5 = (a5 + 8);
      --v15;
    }

    while (v15 > 1);
  }
}

float64_t mlx::core::VectorVector<mlx::core::detail::LogicalAnd>::operator()<double,double>(uint64_t a1, _OWORD *a2, _OWORD *a3, float64x2_t *a4, int a5)
{
  if (a5 < 4)
  {
    v10 = a5;
  }

  else
  {
    do
    {
      v5 = *a2;
      v6 = *(a2 + 1);
      a2 += 2;
      v7 = *a3;
      v8 = *(a3 + 1);
      a3 += 2;
      v9 = vcvtq_f64_s64(vbicq_s8(vmvnq_s8(vceqzq_f64(v7)), vceqzq_f64(v5)));
      *a4 = v9;
      a4[1] = vcvtq_f64_s64(vbicq_s8(vmvnq_s8(vceqzq_f64(v8)), vceqzq_f64(v6)));
      a4 += 2;
      v10 = a5 - 4;
      v11 = a5 > 7;
      a5 -= 4;
    }

    while (v11);
  }

  if (v10 >= 1)
  {
    v12 = v10 + 1;
    do
    {
      v13 = *a2;
      a2 = (a2 + 8);
      v14 = v13;
      v15 = *a3;
      a3 = (a3 + 8);
      v16 = v14 != 0.0;
      if (v15 == 0.0)
      {
        v16 = 0;
      }

      v9.f64[0] = v16;
      a4->f64[0] = v16;
      a4 = (a4 + 8);
      --v12;
    }

    while (v12 > 1);
  }

  return v9.f64[0];
}

void mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(_OWORD *a1, _OWORD *a2, float64x2_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>((a1 + 8 * v60), (a2 + 8 * v53), (a3 + 8 * v19), a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
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
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A715580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(_OWORD *a1, unint64_t *a2, float64x2_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, float64x2_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v16);
      if (a5 >= 1)
      {
        v20 = a5;
        v21 = 0;
        v54 = *(*a10 + 8 * a4 - 32);
        v22 = v20;
        do
        {
          mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>((a1 + 8 * v62), &a2[v55], (a3 + 8 * v21), a6, a7, a8, a10, v16, v19);
          v23 = v64 - v63;
          v24 = (v64 - v63) >> 2;
          if (v24)
          {
            v25 = v67;
            v26 = ((v23 << 30) - 0x100000000) >> 32;
            v27 = v67 + 4 * v26;
            v28 = *v27;
            v29 = v63 + 4 * v26;
            v30 = v65;
            v31 = v62;
            if (v24 >= 2 && v28 == *v29 - 1)
            {
              v34 = (v23 >> 2) & 0x7FFFFFFF;
              v33 = v34 - 1;
              v35 = 4 * v34;
              v36 = v63 - 8;
              do
              {
                v37 = v33;
                *v27 = 0;
                v31 -= v30[v26] * (*v29 - 1);
                v62 = v31;
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
            v62 = v30[v33] + v31;
          }

          v39 = v57 - v56;
          v40 = (v57 - v56) >> 2;
          if (v40)
          {
            v41 = __p;
            v42 = ((v39 << 30) - 0x100000000) >> 32;
            v43 = __p + 4 * v42;
            v44 = *v43;
            v45 = v58;
            v46 = v55;
            if (v40 >= 2 && (v47 = v56 + 4 * v42, v44 == *v47 - 1))
            {
              v48 = (v39 >> 2) & 0x7FFFFFFF;
              v49 = v48 - 1;
              v50 = 4 * v48;
              v51 = v56 - 8;
              do
              {
                v52 = v49;
                *v43 = 0;
                v46 -= v45[v42] * (*v47 - 1);
                v55 = v46;
                --v49;
                v43 = &v41[v50 - 8];
                v44 = *v43;
                v41 -= 4;
                if (v52 < 2)
                {
                  break;
                }

                v47 = &v51[v50];
                v53 = *&v51[4 * v48] - 1;
                v51 -= 4;
                v42 = v49;
              }

              while (v44 == v53);
              v43 = &v41[4 * v48 - 4];
            }

            else
            {
              v49 = ((v39 << 30) - 0x100000000) >> 32;
            }

            *v43 = v44 + 1;
            v55 = v45[v49] + v46;
          }

          v21 += v54;
        }

        while (v21 < v22);
      }

      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
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

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      break;
  }
}

void sub_25A715998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(unint64_t *a1, _OWORD *a2, float64x2_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, float64x2_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v16);
      if (a5 >= 1)
      {
        v20 = a5;
        v21 = 0;
        v54 = *(*a10 + 8 * a4 - 32);
        v22 = v20;
        do
        {
          mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(&a1[v62], (a2 + 8 * v55), (a3 + 8 * v21), a6, a7, a8, a10, v16, v19);
          v23 = v64 - v63;
          v24 = (v64 - v63) >> 2;
          if (v24)
          {
            v25 = v67;
            v26 = ((v23 << 30) - 0x100000000) >> 32;
            v27 = v67 + 4 * v26;
            v28 = *v27;
            v29 = v63 + 4 * v26;
            v30 = v65;
            v31 = v62;
            if (v24 >= 2 && v28 == *v29 - 1)
            {
              v34 = (v23 >> 2) & 0x7FFFFFFF;
              v33 = v34 - 1;
              v35 = 4 * v34;
              v36 = v63 - 8;
              do
              {
                v37 = v33;
                *v27 = 0;
                v31 -= v30[v26] * (*v29 - 1);
                v62 = v31;
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
            v62 = v30[v33] + v31;
          }

          v39 = v57 - v56;
          v40 = (v57 - v56) >> 2;
          if (v40)
          {
            v41 = __p;
            v42 = ((v39 << 30) - 0x100000000) >> 32;
            v43 = __p + 4 * v42;
            v44 = *v43;
            v45 = v58;
            v46 = v55;
            if (v40 >= 2 && (v47 = v56 + 4 * v42, v44 == *v47 - 1))
            {
              v48 = (v39 >> 2) & 0x7FFFFFFF;
              v49 = v48 - 1;
              v50 = 4 * v48;
              v51 = v56 - 8;
              do
              {
                v52 = v49;
                *v43 = 0;
                v46 -= v45[v42] * (*v47 - 1);
                v55 = v46;
                --v49;
                v43 = &v41[v50 - 8];
                v44 = *v43;
                v41 -= 4;
                if (v52 < 2)
                {
                  break;
                }

                v47 = &v51[v50];
                v53 = *&v51[4 * v48] - 1;
                v51 -= 4;
                v42 = v49;
              }

              while (v44 == v53);
              v43 = &v41[4 * v48 - 4];
            }

            else
            {
              v49 = ((v39 << 30) - 0x100000000) >> 32;
            }

            *v43 = v44 + 1;
            v55 = v45[v49] + v46;
          }

          v21 += v54;
        }

        while (v21 < v22);
      }

      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
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

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      break;
  }
}

void sub_25A715DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,double,false,mlx::core::detail::LogicalAnd>(double *a1, double *a2, double *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::detail::LogicalAnd,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::detail::LogicalAnd,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = 8 * **a7;
        v19 = 8 * **a8;
        v20 = 8 * **a9;
        do
        {
          v21 = *v14 != 0.0;
          if (*v13 == 0.0)
          {
            v21 = 0;
          }

          *v12 = v21;
          v14 = (v14 + v18);
          v13 = (v13 + v19);
          v12 = (v12 + v20);
          --v17;
        }

        while (v17);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v63, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v56, a6, a8, v15);
      if (a5 >= 1)
      {
        v23 = 0;
        v24 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<double,double,mlx::core::detail::LogicalAnd,3,false>(&v14[v63], &v13[v56], &v12[v23], a6, a7, a8, a9, v15);
          v25 = v65 - v64;
          v26 = (v65 - v64) >> 2;
          if (v26)
          {
            v27 = v68;
            v28 = ((v25 << 30) - 0x100000000) >> 32;
            v29 = v68 + 4 * v28;
            v30 = *v29;
            v31 = v64 + 4 * v28;
            v32 = v66;
            v33 = v63;
            if (v26 >= 2 && v30 == *v31 - 1)
            {
              v36 = (v25 >> 2) & 0x7FFFFFFF;
              v35 = v36 - 1;
              v37 = 4 * v36;
              v38 = v64 - 8;
              do
              {
                v39 = v35;
                *v29 = 0;
                v33 -= v32[v28] * (*v31 - 1);
                v63 = v33;
                --v35;
                v29 = &v27[v37 - 8];
                v30 = *v29;
                v27 -= 4;
                if (v39 < 2)
                {
                  break;
                }

                v31 = &v38[v37];
                v40 = *&v38[4 * v36] - 1;
                v38 -= 4;
                v28 = v35;
              }

              while (v30 == v40);
              v29 = &v27[4 * v36 - 4];
            }

            else
            {
              v35 = ((v25 << 30) - 0x100000000) >> 32;
            }

            *v29 = v30 + 1;
            v63 = v32[v35] + v33;
          }

          v41 = v58 - v57;
          v42 = (v58 - v57) >> 2;
          if (v42)
          {
            v43 = __p;
            v44 = ((v41 << 30) - 0x100000000) >> 32;
            v45 = __p + 4 * v44;
            v46 = *v45;
            v47 = v59;
            v48 = v56;
            if (v42 >= 2 && (v49 = v57 + 4 * v44, v46 == *v49 - 1))
            {
              v50 = (v41 >> 2) & 0x7FFFFFFF;
              v51 = v50 - 1;
              v52 = 4 * v50;
              v53 = v57 - 8;
              do
              {
                v54 = v51;
                *v45 = 0;
                v48 -= v47[v44] * (*v49 - 1);
                v56 = v48;
                --v51;
                v45 = &v43[v52 - 8];
                v46 = *v45;
                v43 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v49 = &v53[v52];
                v55 = *&v53[4 * v50] - 1;
                v53 -= 4;
                v44 = v51;
              }

              while (v46 == v55);
              v45 = &v43[4 * v50 - 4];
            }

            else
            {
              v51 = ((v41 << 30) - 0x100000000) >> 32;
            }

            *v45 = v46 + 1;
            v56 = v47[v51] + v48;
          }

          v23 += v24;
        }

        while (v23 < a5);
      }

      if (__p)
      {
        v62 = __p;
        operator delete(__p);
      }

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      if (v57)
      {
        v58 = v57;
        operator delete(v57);
      }

      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }

      if (v66)
      {
        v67 = v66;
        operator delete(v66);
      }

      if (v64)
      {
        v65 = v64;
        operator delete(v64);
      }

      break;
  }
}

void sub_25A7161E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(_OWORD *a1, _OWORD *a2, float64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::LogicalAnd>::operator()<double,double>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 8 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(_OWORD *a1, _OWORD *a2, float64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(_OWORD *a1, _OWORD *a2, float64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(_OWORD *a1, unint64_t *a2, float64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, float64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v13 = *(*a7 + 8 * a8);
    v14 = 8 * *(*a5 + 8 * a8);
    v15 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>::operator()<double,double>(a9, &v16, a1, a2, a3, v13);
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + 8 * v13);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(_OWORD *a1, unint64_t *a2, float64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, float64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    v18 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(_OWORD *a1, unint64_t *a2, float64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, float64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    v18 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(unint64_t *a1, _OWORD *a2, float64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, float64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v13 = *(*a7 + 8 * a8);
    v14 = 8 * *(*a5 + 8 * a8);
    v15 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>::operator()<double,double>(a9, &v16, a1, a2, a3, v13);
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + 8 * v13);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(unint64_t *a1, _OWORD *a2, float64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, float64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    v18 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(unint64_t *a1, _OWORD *a2, float64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, float64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    v18 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

double *mlx::core::binary_op_dims<double,double,mlx::core::detail::LogicalAnd,2,false>(double *result, double *a2, double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = a8 + 1;
    v11 = *(*a5 + 8 * v10);
    v12 = *(*a6 + 8 * v10);
    v13 = *(*a7 + 8 * v10);
    v14 = *(*a4 + 4 * v10);
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * v11;
    v17 = 8 * *(*a6 + 8 * a8);
    v18 = 8 * v12;
    v19 = 8 * *(*a7 + 8 * a8);
    v20 = 8 * v13;
    do
    {
      if (v14 >= 1)
      {
        v21 = a3;
        v22 = a2;
        v23 = result;
        v24 = v14;
        do
        {
          v25 = *v23 != 0.0;
          if (*v22 == 0.0)
          {
            v25 = 0;
          }

          *v21 = v25;
          v23 = (v23 + v16);
          v22 = (v22 + v18);
          v21 = (v21 + v20);
          --v24;
        }

        while (v24);
      }

      ++v9;
      result = (result + v15);
      a2 = (a2 + v17);
      a3 = (a3 + v19);
    }

    while (v9 != v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,double,mlx::core::detail::LogicalAnd,3,false>(double *result, double *a2, double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<double,double,mlx::core::detail::LogicalAnd,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogicalAnd>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v38 = *(v8 + 160);
      if (v38 >= 1)
      {
        v39 = *v10 & 0x7FFF;
        v40 = v38 + 1;
        do
        {
          v41 = *v9++;
          v43 = (v41 & 0x7FFF) != 0 && v39 != 0;
          *v11++ = (COERCE_INT(v43) + (HIWORD(COERCE_UNSIGNED_INT(v43)) & 1) + 0x7FFF) >> 16;
          --v40;
        }

        while (v40 > 1);
      }
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_22;
      }

      v18 = *(v8 + 48);
      if (v18 >= 1)
      {
        v19 = v18 + 1;
        do
        {
          v21 = *v9++;
          v20 = v21;
          v22 = *v10++;
          v23 = (v20 & 0x7FFF) != 0;
          if ((v22 & 0x7FFF) == 0)
          {
            v23 = 0;
          }

          *v11++ = (COERCE_INT(v23) + (HIWORD(COERCE_UNSIGNED_INT(v23)) & 1) + 0x7FFF) >> 16;
          --v19;
        }

        while (v19 > 1);
      }
    }
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v12 = *(*a2 + 160);
        if (v12 >= 1)
        {
          v13 = *v9 & 0x7FFF;
          v14 = v12 + 1;
          do
          {
            v15 = *v10++;
            v17 = (v15 & 0x7FFF) != 0 && v13 != 0;
            *v11++ = (COERCE_INT(v17) + (HIWORD(COERCE_UNSIGNED_INT(v17)) & 1) + 0x7FFF) >> 16;
            --v14;
          }

          while (v14 > 1);
        }

        goto LABEL_87;
      }

LABEL_22:
      memset(v68, 0, sizeof(v68));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v68, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
      v24 = *a2;
      memset(v69, 0, sizeof(v69));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v69, *(v24 + 24), *(v24 + 32), (*(v24 + 32) - *(v24 + 24)) >> 3);
      v25 = *a3;
      v71[0] = 0;
      v71[1] = 0;
      v70 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v70, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 3);
      memset(v63, 0, sizeof(v63));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v63, v68, &v72, 3uLL);
      mlx::core::collapse_contiguous_dims(v8, v63, 0x7FFFFFFFuLL, &__p);
      v67 = v63;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v67);
      for (i = 0; i != -9; i -= 3)
      {
        v27 = v71[i - 1];
        if (v27)
        {
          v71[i] = v27;
          operator delete(v27);
        }
      }

      v28 = v66 + 6;
      v29 = *v66;
      v30 = (v66[1] - *v66) >> 3;
      v31 = v30 - 1;
      if (v30 - 1 >= -1)
      {
        v31 = -1;
      }

      v32 = v31 + 1;
      v33 = v30 + 1;
      v34 = v30 - 1;
      v35 = v30 - 1;
      while ((v35 & 0x80000000) == 0)
      {
        v36 = 8 * (v35 & 0x7FFFFFFF);
        --v33;
        --v35;
        if (*(v29 + v36) != *(*v28 + v36))
        {
          goto LABEL_46;
        }
      }

      v33 = v32;
LABEL_46:
      v44 = v66[3];
      v45 = (v66[4] - v44) >> 3;
      v46 = v45 - 1;
      if (v45 - 1 >= -1)
      {
        v46 = -1;
      }

      v47 = v46 + 1;
      v48 = v45 + 1;
      v49 = v45 - 1;
      v50 = v45 - 1;
      while ((v50 & 0x80000000) == 0)
      {
        v51 = 8 * (v50 & 0x7FFFFFFF);
        --v48;
        --v50;
        if (*(v44 + v51) != *(*v28 + v51))
        {
          goto LABEL_53;
        }
      }

      v48 = v47;
LABEL_53:
      v52 = v30 + 1;
      while ((v34 & 0x80000000) == 0)
      {
        v53 = *(v29 + 8 * (v34 & 0x7FFFFFFF));
        --v52;
        --v34;
        if (v53)
        {
          goto LABEL_58;
        }
      }

      v52 = v32;
LABEL_58:
      v54 = v45 + 1;
      while ((v49 & 0x80000000) == 0)
      {
        v55 = *(v44 + 8 * (v49 & 0x7FFFFFFF));
        --v54;
        --v49;
        if (v55)
        {
          goto LABEL_63;
        }
      }

      v54 = v47;
LABEL_63:
      v56 = (v65 - __p) >> 2;
      if (v33 <= v48)
      {
        v57 = v48;
      }

      else
      {
        v57 = v33;
      }

      if (v33 <= v54)
      {
        v33 = v54;
      }

      if (v52 > v48)
      {
        v48 = v52;
      }

      if (v56 > v48)
      {
        v58 = 1;
      }

      else
      {
        v48 = (v65 - __p) >> 2;
        v58 = a4;
      }

      if (v56 > v33)
      {
        v59 = 2;
      }

      else
      {
        v33 = v48;
        v59 = v58;
      }

      if (v56 <= v57)
      {
        v60 = v33;
      }

      else
      {
        v60 = v57;
      }

      if (v56 <= v57)
      {
        v61 = v59;
      }

      else
      {
        v61 = 3;
      }

      if (!v60 || *(*v28 + 8 * v60 - 8) < 16)
      {
        goto LABEL_84;
      }

      switch(v61)
      {
        case 1:
          mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v66, v66 + 3, v66 + 6);
          break;
        case 2:
          mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v66, v66 + 3, v66 + 6);
          break;
        case 3:
          mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v66, v66 + 3, v66 + 6);
          break;
        default:
          LODWORD(v56) = v60;
LABEL_84:
          mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,false,mlx::core::detail::LogicalAnd>(v9, v10, v11, v56, *(*a1 + 48), &__p, v66, v66 + 3, v66 + 6);
          break;
      }

      v68[0] = &v66;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v68);
      if (__p)
      {
        v65 = __p;
        operator delete(__p);
      }

      goto LABEL_87;
    }

    v37 = (*v9 & 0x7FFF) != 0;
    if ((*v10 & 0x7FFF) == 0)
    {
      v37 = 0;
    }

    *v11 = (COERCE_INT(v37) + (HIWORD(COERCE_UNSIGNED_INT(v37)) & 1) + 0x7FFF) >> 16;
  }

LABEL_87:
  v62 = *MEMORY[0x277D85DE8];
}

void sub_25A716F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(a1 + 2 * v60, a2 + 2 * v53, a3 + 2 * v19, a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
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
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A7173EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(uint64_t a1, _WORD *a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(a1 + 2 * v60, &a2[v53], a3 + 2 * v19, a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
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
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A717804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(_WORD *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(&a1[v60], a2 + 2 * v53, a3 + 2 * v19, a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
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
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A717C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,false,mlx::core::detail::LogicalAnd>(_WORD *a1, _WORD *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogicalAnd,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogicalAnd,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogicalAnd,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogicalAnd,3,false>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
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
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A718034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a7 + 8 * a8);
    v11 = 2 * *(*a5 + 8 * a8);
    v12 = 2 * *(*a6 + 8 * a8);
    do
    {
      if (v10 >= 1)
      {
        v13 = 0;
        v14 = v10 + 1;
        do
        {
          v15 = (*(result + v13) & 0x7FFF) != 0;
          if ((*(a2 + v13) & 0x7FFF) == 0)
          {
            v15 = 0;
          }

          *(a3 + v13) = (COERCE_INT(v15) + (HIWORD(COERCE_UNSIGNED_INT(v15)) & 1) + 0x7FFF) >> 16;
          v13 += 2;
          --v14;
        }

        while (v14 > 1);
      }

      ++v9;
      result += v11;
      a2 += v12;
      a3 += 2 * v10;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(uint64_t result, _WORD *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a6 + 8 * a8);
    v11 = *(*a7 + 8 * a8);
    v12 = 2 * *(*a5 + 8 * a8);
    do
    {
      if (v11 >= 1)
      {
        v13 = 0;
        v14 = *a2 & 0x7FFF;
        v15 = v11 + 1;
        do
        {
          v17 = (*(result + v13) & 0x7FFF) != 0 && v14 != 0;
          *(a3 + v13) = (COERCE_INT(v17) + (HIWORD(COERCE_UNSIGNED_INT(v17)) & 1) + 0x7FFF) >> 16;
          v13 += 2;
          --v15;
        }

        while (v15 > 1);
      }

      a2 += v10;
      ++v9;
      result += v12;
      a3 += 2 * v11;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(uint64_t result, _WORD *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(uint64_t result, _WORD *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

_WORD *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(_WORD *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a7 + 8 * a8);
    v12 = 2 * *(*a6 + 8 * a8);
    do
    {
      if (v11 >= 1)
      {
        v13 = 0;
        v14 = *result & 0x7FFF;
        v15 = v11 + 1;
        do
        {
          v17 = (*(a2 + v13) & 0x7FFF) != 0 && v14 != 0;
          *(a3 + v13) = (COERCE_INT(v17) + (HIWORD(COERCE_UNSIGNED_INT(v17)) & 1) + 0x7FFF) >> 16;
          v13 += 2;
          --v15;
        }

        while (v15 > 1);
      }

      result += v10;
      ++v9;
      a2 += v12;
      a3 += 2 * v11;
    }

    while (v9 != v8);
  }

  return result;
}

_WORD *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(_WORD *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

_WORD *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(_WORD *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

_WORD *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogicalAnd,1,false>(_WORD *result, _WORD *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 2 * *(*a5 + 8 * a8);
    v10 = 2 * *(*a6 + 8 * a8);
    v11 = 2 * *(*a7 + 8 * a8);
    do
    {
      v12 = (*result & 0x7FFF) != 0;
      if ((*a2 & 0x7FFF) == 0)
      {
        v12 = 0;
      }

      *a3 = (COERCE_INT(v12) + (HIWORD(COERCE_UNSIGNED_INT(v12)) & 1) + 0x7FFF) >> 16;
      result = (result + v9);
      a2 = (a2 + v10);
      a3 = (a3 + v11);
      --v8;
    }

    while (v8);
  }

  return result;
}

_WORD *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogicalAnd,2,false>(_WORD *result, _WORD *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogicalAnd,1,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_WORD *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogicalAnd,3,false>(_WORD *result, _WORD *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogicalAnd,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogicalAnd>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v75 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v39 = *v10 != 0.0 && *v9 != 0.0;
      *v11 = v39;
      *(v11 + 4) = 0;
      goto LABEL_95;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      if (v12 >= 1)
      {
        v13 = *v9;
        v14 = v12 + 1;
        do
        {
          v15 = *v10;
          v10 += 2;
          v17 = v15 != 0.0 && v13 != 0.0;
          *v11 = v17;
          *(v11 + 4) = 0;
          v11 += 8;
          --v14;
        }

        while (v14 > 1);
      }

      goto LABEL_95;
    }

LABEL_26:
    memset(v71, 0, sizeof(v71));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v71, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v25 = *a2;
    memset(v72, 0, sizeof(v72));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v72, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 3);
    v26 = *a3;
    v74[0] = 0;
    v74[1] = 0;
    v73 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v73, *(v26 + 24), *(v26 + 32), (*(v26 + 32) - *(v26 + 24)) >> 3);
    memset(v66, 0, sizeof(v66));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v66, v71, &v75, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v66, 0x7FFFFFFFuLL, &__p);
    v70 = v66;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v70);
    for (i = 0; i != -9; i -= 3)
    {
      v28 = v74[i - 1];
      if (v28)
      {
        v74[i] = v28;
        operator delete(v28);
      }
    }

    v29 = v69 + 6;
    v30 = *v69;
    v31 = (v69[1] - *v69) >> 3;
    v32 = v31 - 1;
    if (v31 - 1 >= -1)
    {
      v32 = -1;
    }

    v33 = v32 + 1;
    v34 = v31 + 1;
    v35 = v31 - 1;
    v36 = v31 - 1;
    while ((v36 & 0x80000000) == 0)
    {
      v37 = 8 * (v36 & 0x7FFFFFFF);
      --v34;
      --v36;
      if (*(v30 + v37) != *(*v29 + v37))
      {
        goto LABEL_54;
      }
    }

    v34 = v33;
LABEL_54:
    v47 = v69[3];
    v48 = (v69[4] - v47) >> 3;
    v49 = v48 - 1;
    if (v48 - 1 >= -1)
    {
      v49 = -1;
    }

    v50 = v49 + 1;
    v51 = v48 + 1;
    v52 = v48 - 1;
    v53 = v48 - 1;
    while ((v53 & 0x80000000) == 0)
    {
      v54 = 8 * (v53 & 0x7FFFFFFF);
      --v51;
      --v53;
      if (*(v47 + v54) != *(*v29 + v54))
      {
        goto LABEL_61;
      }
    }

    v51 = v50;
LABEL_61:
    v55 = v31 + 1;
    while ((v35 & 0x80000000) == 0)
    {
      v56 = *(v30 + 8 * (v35 & 0x7FFFFFFF));
      --v55;
      --v35;
      if (v56)
      {
        goto LABEL_66;
      }
    }

    v55 = v33;
LABEL_66:
    v57 = v48 + 1;
    while ((v52 & 0x80000000) == 0)
    {
      v58 = *(v47 + 8 * (v52 & 0x7FFFFFFF));
      --v57;
      --v52;
      if (v58)
      {
        goto LABEL_71;
      }
    }

    v57 = v50;
LABEL_71:
    v59 = (v68 - __p) >> 2;
    if (v34 <= v51)
    {
      v60 = v51;
    }

    else
    {
      v60 = v34;
    }

    if (v34 <= v57)
    {
      v34 = v57;
    }

    if (v55 > v51)
    {
      v51 = v55;
    }

    if (v59 > v51)
    {
      v61 = 1;
    }

    else
    {
      v51 = (v68 - __p) >> 2;
      v61 = a4;
    }

    if (v59 > v34)
    {
      v62 = 2;
    }

    else
    {
      v34 = v51;
      v62 = v61;
    }

    if (v59 <= v60)
    {
      v63 = v34;
    }

    else
    {
      v63 = v60;
    }

    if (v59 <= v60)
    {
      v64 = v62;
    }

    else
    {
      v64 = 3;
    }

    if (!v63 || *(*v29 + 8 * v63 - 8) < 16)
    {
      goto LABEL_92;
    }

    switch(v64)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(v9, v10, v11, v63, *(*a1 + 48), &__p, v69, v69 + 3, v69 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(v9, v10, v11, v63, *(*a1 + 48), &__p, v69, v69 + 3, v69 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(v9, v10, v11, v63, *(*a1 + 48), &__p, v69, v69 + 3, v69 + 6);
        break;
      default:
        LODWORD(v59) = v63;
LABEL_92:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,false,mlx::core::detail::LogicalAnd>(v9, v10, v11, v59, *(*a1 + 48), &__p, v69, v69 + 3, v69 + 6);
        break;
    }

    v71[0] = &v69;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v71);
    if (__p)
    {
      v68 = __p;
      operator delete(__p);
    }

    goto LABEL_95;
  }

  if (a4 == 2)
  {
    v40 = *(v8 + 160);
    if (v40 >= 1)
    {
      v41 = *v10;
      v42 = v40 + 1;
      do
      {
        v43 = *v9;
        v9 += 2;
        v44 = v43;
        v46 = v41 != 0.0 && v44 != 0.0;
        *v11 = v46;
        *(v11 + 4) = 0;
        v11 += 8;
        --v42;
      }

      while (v42 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_26;
    }

    v18 = *(v8 + 48);
    if (v18 >= 1)
    {
      v19 = v18 + 1;
      do
      {
        v20 = *v9;
        v9 += 2;
        v21 = v20;
        v22 = *v10;
        v10 += 2;
        v24 = v22 != 0.0 && v21 != 0.0;
        *v11 = v24;
        *(v11 + 4) = 0;
        v11 += 8;
        --v19;
      }

      while (v19 > 1);
    }
  }

LABEL_95:
  v65 = *MEMORY[0x277D85DE8];
}

void sub_25A718E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(a1 + 8 * v60, a2 + 8 * v53, a3 + 8 * v19, a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
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
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A719298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(uint64_t a1, float *a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(a1 + 8 * v60, &a2[2 * v53], a3 + 8 * v19, a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
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
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A7196B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(float *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v53, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v52 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(&a1[2 * v60], a2 + 8 * v53, a3 + 8 * v19, a6, a7, a8, a9, v15);
          v21 = v62 - v61;
          v22 = (v62 - v61) >> 2;
          if (v22)
          {
            v23 = v65;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v65 + 4 * v24;
            v26 = *v25;
            v27 = v61 + 4 * v24;
            v28 = v63;
            v29 = v60;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v61 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v60 = v29;
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
            v60 = v28[v31] + v29;
          }

          v37 = v55 - v54;
          v38 = (v55 - v54) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v56;
            v44 = v53;
            if (v38 >= 2 && (v45 = v54 + 4 * v40, v42 == *v45 - 1))
            {
              v46 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v46 - 1;
              v48 = 4 * v46;
              v49 = v54 - 8;
              do
              {
                v50 = v47;
                *v41 = 0;
                v44 -= v43[v40] * (*v45 - 1);
                v53 = v44;
                --v47;
                v41 = &v39[v48 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v45 = &v49[v48];
                v51 = *&v49[4 * v46] - 1;
                v49 -= 4;
                v40 = v47;
              }

              while (v42 == v51);
              v41 = &v39[4 * v46 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v53 = v43[v47] + v44;
          }

          v19 += v52;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v63)
      {
        v64 = v63;
        operator delete(v63);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      break;
  }
}

void sub_25A719AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,false,mlx::core::detail::LogicalAnd>(float *a1, float *a2, uint64_t a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a2;
  v13 = a1;
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogicalAnd,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogicalAnd,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v16 = **a6;
      if (v16 >= 1)
      {
        v17 = 8 * **a7;
        v18 = 8 * **a8;
        v19 = (a3 + 4);
        v20 = 8 * **a9;
        do
        {
          v22 = *v12 != 0.0 && *v13 != 0.0;
          *(v19 - 1) = v22;
          *v19 = 0.0;
          v13 = (v13 + v17);
          v12 = (v12 + v18);
          v19 = (v19 + v20);
          --v16;
        }

        while (v16);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v65, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v58, a6, a8, v14);
      if (a5 >= 1)
      {
        v24 = 0;
        v25 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogicalAnd,3,false>(&v13[2 * v65], &v12[2 * v58], a3 + 8 * v24, a6, a7, a8, a9, v14);
          v26 = v67 - v66;
          v27 = (v67 - v66) >> 2;
          if (v27)
          {
            v28 = v70;
            v29 = ((v26 << 30) - 0x100000000) >> 32;
            v30 = v70 + 4 * v29;
            v31 = *v30;
            v32 = v66 + 4 * v29;
            v33 = v68;
            v34 = v65;
            if (v27 >= 2 && v31 == *v32 - 1)
            {
              v37 = (v26 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v66 - 8;
              do
              {
                v40 = v36;
                *v30 = 0;
                v34 -= v33[v29] * (*v32 - 1);
                v65 = v34;
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
            v65 = v33[v36] + v34;
          }

          v42 = v60 - v59;
          v43 = (v60 - v59) >> 2;
          if (v43)
          {
            v44 = __p;
            v45 = ((v42 << 30) - 0x100000000) >> 32;
            v46 = __p + 4 * v45;
            v47 = *v46;
            v48 = v61;
            v49 = v58;
            if (v43 >= 2 && (v50 = v59 + 4 * v45, v47 == *v50 - 1))
            {
              v51 = (v42 >> 2) & 0x7FFFFFFF;
              v52 = v51 - 1;
              v53 = 4 * v51;
              v54 = v59 - 8;
              do
              {
                v55 = v52;
                *v46 = 0;
                v49 -= v48[v45] * (*v50 - 1);
                v58 = v49;
                --v52;
                v46 = &v44[v53 - 8];
                v47 = *v46;
                v44 -= 4;
                if (v55 < 2)
                {
                  break;
                }

                v50 = &v54[v53];
                v56 = *&v54[4 * v51] - 1;
                v54 -= 4;
                v45 = v52;
              }

              while (v47 == v56);
              v46 = &v44[4 * v51 - 4];
            }

            else
            {
              v52 = ((v42 << 30) - 0x100000000) >> 32;
            }

            *v46 = v47 + 1;
            v58 = v48[v52] + v49;
          }

          v24 += v25;
        }

        while (v24 < a5);
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

      if (v66)
      {
        v67 = v66;
        operator delete(v66);
      }

      break;
  }
}

void sub_25A719EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a7 + 8 * a8);
    v11 = 8 * *(*a5 + 8 * a8);
    v12 = 8 * *(*a6 + 8 * a8);
    do
    {
      if (v10 >= 1)
      {
        v13 = 0;
        v14 = v10 + 1;
        do
        {
          v16 = *(a2 + v13) != 0.0 && *(result + v13) != 0.0;
          v17 = v16;
          v18 = a3 + v13;
          *v18 = v17;
          *(v18 + 4) = 0;
          v13 += 8;
          --v14;
        }

        while (v14 > 1);
      }

      ++v9;
      result += v11;
      a2 += v12;
      a3 += 8 * v10;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(uint64_t result, float *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a6 + 8 * a8);
    v11 = *(*a7 + 8 * a8);
    v12 = 8 * *(*a5 + 8 * a8);
    do
    {
      if (v11 >= 1)
      {
        v13 = 0;
        v14 = *a2;
        v15 = v11 + 1;
        do
        {
          v17 = v14 != 0.0 && *(result + v13) != 0.0;
          v18 = v17;
          v19 = a3 + v13;
          *v19 = v18;
          *(v19 + 4) = 0;
          v13 += 8;
          --v15;
        }

        while (v15 > 1);
      }

      a2 += 2 * v10;
      ++v9;
      result += v12;
      a3 += 8 * v11;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(uint64_t result, float *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(uint64_t result, float *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(float *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a7 + 8 * a8);
    v12 = 8 * *(*a6 + 8 * a8);
    do
    {
      if (v11 >= 1)
      {
        v13 = 0;
        v14 = *result;
        v15 = v11 + 1;
        do
        {
          v17 = *(a2 + v13) != 0.0 && v14 != 0.0;
          v18 = v17;
          v19 = a3 + v13;
          *v19 = v18;
          *(v19 + 4) = 0;
          v13 += 8;
          --v15;
        }

        while (v15 > 1);
      }

      result += 2 * v10;
      ++v9;
      a2 += v12;
      a3 += 8 * v11;
    }

    while (v9 != v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(float *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(float *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogicalAnd,2,false>(float *result, float *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = a8 + 1;
    v11 = 8 * *(*a5 + 8 * a8);
    v12 = 8 * *(*a6 + 8 * a8);
    v13 = (a3 + 4);
    v14 = 8 * *(*a7 + 8 * a8);
    do
    {
      v15 = *(*a4 + 4 * v10);
      if (v15 >= 1)
      {
        v16 = 8 * *(*a5 + 8 * v10);
        v17 = 8 * *(*a6 + 8 * v10);
        v18 = 8 * *(*a7 + 8 * v10);
        v19 = v13;
        v20 = a2;
        v21 = result;
        do
        {
          v23 = *v20 != 0.0 && *v21 != 0.0;
          *(v19 - 1) = v23;
          *v19 = 0.0;
          v21 = (v21 + v16);
          v20 = (v20 + v17);
          v19 = (v19 + v18);
          --v15;
        }

        while (v15);
      }

      ++v9;
      result = (result + v11);
      a2 = (a2 + v12);
      v13 = (v13 + v14);
    }

    while (v9 != v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogicalAnd,3,false>(float *result, float *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogicalAnd,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::LogicalAnd>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalAnd,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::LogicalAnd>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalAnd,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C02388;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::LogicalAnd>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalAnd,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::LogicalAnd>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalAnd,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C02388;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::LogicalAnd>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalAnd,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::LogicalAnd>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalAnd,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286C02388;
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

  *(a2 + 56) = *(result + 56);
  *(a2 + 65) = 0;
  *(a2 + 68) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::LogicalAnd>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalAnd,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::LogicalAnd>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalAnd,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::LogicalAnd>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalAnd,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::LogicalAnd>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalAnd,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::LogicalAnd>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalAnd,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::LogicalAnd>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalAnd,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail9LogicalOrEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286C02480;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail9LogicalOrEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286C02480;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail9LogicalOrEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C02480;
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

  *(a2 + 72) = *(result + 72);
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail9LogicalOrEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail9LogicalOrEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail9LogicalOrEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEEclEv(uint64_t a1, float16x8_t a2)
{
  v3 = mlx::core::scheduler::scheduler(v2);

  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail9LogicalOrEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::LogicalOr>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalOr,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1, float16x8_t a2)
{
  v2 = (a1 + 32);
  switch(*(*(a1 + 32) + 56))
  {
    case 0:
      mlx::core::binary_op<BOOL,BOOL,mlx::core::detail::LogicalOr>(a1, (a1 + 16), v2, *(a1 + 48));
      return;
    case 1:
      v9 = *(a1 + 48);
      v10 = (a1 + 16);
      goto LABEL_14;
    case 2:
      v5 = *(a1 + 48);
      v6 = (a1 + 16);
      goto LABEL_9;
    case 3:
      v7 = *(a1 + 48);
      v8 = (a1 + 16);
      goto LABEL_11;
    case 4:
      v3 = *(a1 + 48);
      v4 = (a1 + 16);
      goto LABEL_5;
    case 5:
      v9 = *(a1 + 48);
      v10 = (a1 + 16);
LABEL_14:
      mlx::core::binary_op<unsigned char,unsigned char,mlx::core::detail::LogicalOr>(a1, v10, v2, v9);
      return;
    case 6:
      v5 = *(a1 + 48);
      v6 = (a1 + 16);
LABEL_9:
      mlx::core::binary_op<unsigned short,unsigned short,mlx::core::detail::LogicalOr>(a1, v6, v2, v5);
      break;
    case 7:
      v7 = *(a1 + 48);
      v8 = (a1 + 16);
LABEL_11:
      mlx::core::binary_op<unsigned int,unsigned int,mlx::core::detail::LogicalOr>(a1, v8, v2, v7);
      break;
    case 8:
      v3 = *(a1 + 48);
      v4 = (a1 + 16);
LABEL_5:
      mlx::core::binary_op<unsigned long long,unsigned long long,mlx::core::detail::LogicalOr>(a1, v4, v2, v3);
      break;
    case 9:
      mlx::core::binary_op<half,half,mlx::core::detail::LogicalOr>(a1, (a1 + 16), v2, *(a1 + 48), a2);
      break;
    case 0xA:
      mlx::core::binary_op<float,float,mlx::core::detail::LogicalOr>(a1, (a1 + 16), v2, *(a1 + 48), a2);
      break;
    case 0xB:
      mlx::core::binary_op<double,double,mlx::core::detail::LogicalOr>(a1, (a1 + 16), v2, *(a1 + 48), a2);
      break;
    case 0xC:
      mlx::core::binary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogicalOr>(a1, (a1 + 16), v2, *(a1 + 48));
      break;
    case 0xD:
      mlx::core::binary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogicalOr>(a1, (a1 + 16), v2, *(a1 + 48));
      break;
    default:
      return;
  }
}

void mlx::core::binary_op<BOOL,BOOL,mlx::core::detail::LogicalOr>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      *v11 = *v10 | *v9;
      goto LABEL_71;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      if (v12 >= 1)
      {
        v13 = *v9;
        v14 = v12 + 1;
        do
        {
          v15 = *v10++;
          *v11++ = (v13 | v15) & 1;
          --v14;
        }

        while (v14 > 1);
      }

      goto LABEL_71;
    }

LABEL_14:
    memset(v62, 0, sizeof(v62));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v62, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v21 = *a2;
    memset(v63, 0, sizeof(v63));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v63, *(v21 + 24), *(v21 + 32), (*(v21 + 32) - *(v21 + 24)) >> 3);
    v22 = *a3;
    v65[0] = 0;
    v65[1] = 0;
    v64 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v64, *(v22 + 24), *(v22 + 32), (*(v22 + 32) - *(v22 + 24)) >> 3);
    memset(v57, 0, sizeof(v57));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v57, v62, &v66, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v57, 0x7FFFFFFFuLL, &__p);
    v61 = v57;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v61);
    for (i = 0; i != -9; i -= 3)
    {
      v24 = v65[i - 1];
      if (v24)
      {
        v65[i] = v24;
        operator delete(v24);
      }
    }

    v25 = v60 + 6;
    v26 = *v60;
    v27 = (v60[1] - *v60) >> 3;
    v28 = v27 - 1;
    if (v27 - 1 >= -1)
    {
      v28 = -1;
    }

    v29 = v28 + 1;
    v30 = v27 + 1;
    v31 = v27 - 1;
    v32 = v27 - 1;
    while ((v32 & 0x80000000) == 0)
    {
      v33 = 8 * (v32 & 0x7FFFFFFF);
      --v30;
      --v32;
      if (*(v26 + v33) != *(*v25 + v33))
      {
        goto LABEL_30;
      }
    }

    v30 = v29;
LABEL_30:
    v38 = v60[3];
    v39 = (v60[4] - v38) >> 3;
    v40 = v39 - 1;
    if (v39 - 1 >= -1)
    {
      v40 = -1;
    }

    v41 = v40 + 1;
    v42 = v39 + 1;
    v43 = v39 - 1;
    v44 = v39 - 1;
    while ((v44 & 0x80000000) == 0)
    {
      v45 = 8 * (v44 & 0x7FFFFFFF);
      --v42;
      --v44;
      if (*(v38 + v45) != *(*v25 + v45))
      {
        goto LABEL_37;
      }
    }

    v42 = v41;
LABEL_37:
    v46 = v27 + 1;
    while ((v31 & 0x80000000) == 0)
    {
      v47 = *(v26 + 8 * (v31 & 0x7FFFFFFF));
      --v46;
      --v31;
      if (v47)
      {
        goto LABEL_42;
      }
    }

    v46 = v29;
LABEL_42:
    v48 = v39 + 1;
    while ((v43 & 0x80000000) == 0)
    {
      v49 = *(v38 + 8 * (v43 & 0x7FFFFFFF));
      --v48;
      --v43;
      if (v49)
      {
        goto LABEL_47;
      }
    }

    v48 = v41;
LABEL_47:
    v50 = (v59 - __p) >> 2;
    if (v30 <= v42)
    {
      v51 = v42;
    }

    else
    {
      v51 = v30;
    }

    if (v30 <= v48)
    {
      v30 = v48;
    }

    if (v46 > v42)
    {
      v42 = v46;
    }

    if (v50 > v42)
    {
      v52 = 1;
    }

    else
    {
      v42 = (v59 - __p) >> 2;
      v52 = a4;
    }

    if (v50 > v30)
    {
      v53 = 2;
    }

    else
    {
      v30 = v42;
      v53 = v52;
    }

    if (v50 <= v51)
    {
      v54 = v30;
    }

    else
    {
      v54 = v51;
    }

    if (v50 <= v51)
    {
      v55 = v53;
    }

    else
    {
      v55 = 3;
    }

    if (!v54 || *(*v25 + 8 * v54 - 8) < 16)
    {
      goto LABEL_68;
    }

    switch(v55)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorVector<mlx::core::detail::LogicalOr>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      default:
        LODWORD(v50) = v54;
LABEL_68:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,false,mlx::core::detail::Add>(v9, v10, v11, v50, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
    }

    v62[0] = &v60;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v62);
    if (__p)
    {
      v59 = __p;
      operator delete(__p);
    }

    goto LABEL_71;
  }

  if (a4 == 2)
  {
    v34 = *(v8 + 160);
    if (v34 >= 1)
    {
      v35 = *v10;
      v36 = v34 + 1;
      do
      {
        v37 = *v9++;
        *v11++ = (v37 | v35) & 1;
        --v36;
      }

      while (v36 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_14;
    }

    v16 = *(v8 + 48);
    if (v16 >= 1)
    {
      v17 = v16 + 1;
      do
      {
        v19 = *v9++;
        v18 = v19;
        v20 = *v10++;
        *v11++ = (v18 | v20) & 1;
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_71:
  v56 = *MEMORY[0x277D85DE8];
}