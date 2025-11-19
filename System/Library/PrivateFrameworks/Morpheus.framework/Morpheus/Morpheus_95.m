void mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(_OWORD *a1, unsigned int *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(_OWORD *a1, unsigned int *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(unsigned int *a1, int32x4_t *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * a8);
    v14 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<int,int>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 4 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(unsigned int *a1, int32x4_t *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(unsigned int *a1, int32x4_t *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

int *mlx::core::binary_op_dims<int,int,mlx::core::detail::Power,1,false>(int *result, int *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    do
    {
      v13 = *a2;
      if (*a2)
      {
        v14 = *result;
        v15 = 1;
        do
        {
          if (v13)
          {
            v16 = v14;
          }

          else
          {
            v16 = 1;
          }

          v15 *= v16;
          v14 *= v14;
          v17 = v13 > 1;
          v13 >>= 1;
        }

        while (v17);
      }

      else
      {
        v15 = 1;
      }

      *a3 = v15;
      a3 += v12;
      result += v10;
      ++v9;
      a2 += v11;
    }

    while (v9 != v8);
  }

  return result;
}

int *mlx::core::binary_op_dims<int,int,mlx::core::detail::Power,2,false>(int *result, int *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,int,mlx::core::detail::Power,1,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int *mlx::core::binary_op_dims<int,int,mlx::core::detail::Power,3,false>(int *result, int *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,int,mlx::core::detail::Power,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<long long,long long,mlx::core::detail::Power>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<long long,long long>(v54, v9, v10, v11, *(v8 + 160));
      goto LABEL_70;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<long long,long long>(v54, v9, v10, v11, *(v8 + 48));
      goto LABEL_70;
    }

    goto LABEL_8;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<long long,long long>(v54, v9, v10, v11, *(*a2 + 160));
      goto LABEL_70;
    }

LABEL_8:
    memset(v54, 0, sizeof(v54));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v54, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v12 = *a2;
    memset(v55, 0, sizeof(v55));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v55, *(v12 + 24), *(v12 + 32), (*(v12 + 32) - *(v12 + 24)) >> 3);
    v13 = *a3;
    v57[0] = 0;
    v57[1] = 0;
    v56 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v56, *(v13 + 24), *(v13 + 32), (*(v13 + 32) - *(v13 + 24)) >> 3);
    memset(v49, 0, sizeof(v49));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v49, v54, &v58, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v49, 0x7FFFFFFFuLL, &__p);
    v53 = v49;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v53);
    for (i = 0; i != -9; i -= 3)
    {
      v15 = v57[i - 1];
      if (v15)
      {
        v57[i] = v15;
        operator delete(v15);
      }
    }

    v16 = v52 + 6;
    v17 = *v52;
    v18 = (v52[1] - *v52) >> 3;
    v19 = v18 - 1;
    if (v18 - 1 >= -1)
    {
      v19 = -1;
    }

    v20 = v19 + 1;
    v21 = v18 + 1;
    v22 = v18 - 1;
    v23 = v18 - 1;
    while ((v23 & 0x80000000) == 0)
    {
      v24 = 8 * (v23 & 0x7FFFFFFF);
      --v21;
      --v23;
      if (*(v17 + v24) != *(*v16 + v24))
      {
        goto LABEL_27;
      }
    }

    v21 = v20;
LABEL_27:
    v30 = v52[3];
    v31 = (v52[4] - v30) >> 3;
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
      if (*(v30 + v37) != *(*v16 + v37))
      {
        goto LABEL_34;
      }
    }

    v34 = v33;
LABEL_34:
    v38 = v18 + 1;
    while ((v22 & 0x80000000) == 0)
    {
      v39 = *(v17 + 8 * (v22 & 0x7FFFFFFF));
      --v38;
      --v22;
      if (v39)
      {
        goto LABEL_39;
      }
    }

    v38 = v20;
LABEL_39:
    v40 = v31 + 1;
    while ((v35 & 0x80000000) == 0)
    {
      v41 = *(v30 + 8 * (v35 & 0x7FFFFFFF));
      --v40;
      --v35;
      if (v41)
      {
        goto LABEL_44;
      }
    }

    v40 = v33;
LABEL_44:
    v42 = (v51 - __p) >> 2;
    if (v21 <= v34)
    {
      v43 = v34;
    }

    else
    {
      v43 = v21;
    }

    if (v21 <= v40)
    {
      v21 = v40;
    }

    if (v38 > v34)
    {
      v34 = v38;
    }

    if (v42 > v34)
    {
      v44 = 1;
    }

    else
    {
      v34 = (v51 - __p) >> 2;
      v44 = a4;
    }

    if (v42 > v21)
    {
      v45 = 2;
    }

    else
    {
      v21 = v34;
      v45 = v44;
    }

    if (v42 <= v43)
    {
      v46 = v21;
    }

    else
    {
      v46 = v43;
    }

    if (v42 <= v43)
    {
      v47 = v45;
    }

    else
    {
      v47 = 3;
    }

    if (!v46 || *(*v16 + 8 * v46 - 8) < 16)
    {
      goto LABEL_65;
    }

    switch(v47)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::VectorVector<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      default:
        LODWORD(v42) = v46;
LABEL_65:
        mlx::core::binary_op_dispatch_dims<long long,long long,false,mlx::core::detail::Power>(v9, v10->i64, v11->i64, v42, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
    }

    v54[0] = &v52;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v54);
    if (__p)
    {
      v51 = __p;
      operator delete(__p);
    }

    goto LABEL_70;
  }

  v25 = v10->i64[0];
  if (v10->i64[0])
  {
    v26 = *v9;
    v27 = 1;
    do
    {
      if (v25)
      {
        v28 = v26;
      }

      else
      {
        v28 = 1;
      }

      v27 *= v28;
      v26 *= v26;
      v29 = v25 > 1;
      v25 >>= 1;
    }

    while (v29);
  }

  else
  {
    v27 = 1;
  }

  v11->i64[0] = v27;
LABEL_70:
  v48 = *MEMORY[0x277D85DE8];
}

void sub_25A79AEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<long long,long long>(uint64_t a1, unint64_t *a2, int64x2_t *a3, int8x16_t *a4, int a5)
{
  v5 = *a2;
  if (a5 < 4)
  {
    v21 = a5;
  }

  else
  {
    v6 = vdupq_n_s64(v5);
    v7 = vdupq_n_s64(1uLL);
    do
    {
      v9 = *a3;
      v8 = a3[1];
      v10 = vorrq_s8(*a3, v8);
      v11 = vorrq_s8(v10, vdupq_laneq_s64(v10, 1)).u64[0];
      v12 = v7;
      v13 = v7;
      if ((v11 & 0x8000000000000000) != 0)
      {
        v12 = vdupq_n_s64(1uLL);
        v14 = v6;
        v15 = v6;
        v13 = v12;
        do
        {
          v16 = vdupq_n_s64(1uLL);
          v17.i64[0] = (v13.i32[0] * v15.i32[0]);
          v17.i64[1] = (v13.i32[2] * v15.i32[2]);
          v18.i64[0] = (v12.i32[0] * v14.i32[0]);
          v18.i64[1] = (v12.i32[2] * v14.i32[2]);
          v12 = vbslq_s8(vandq_s8(v9, v16), v18, v12);
          v13 = vbslq_s8(vandq_s8(v8, v16), v17, v13);
          v16.i64[0] = v15.i64[0] * v15.i64[0];
          v16.i64[1] = v15.i64[1] * v15.i64[1];
          v19.i64[0] = v14.i64[0] * v14.i64[0];
          v19.i64[1] = v14.i64[1] * v14.i64[1];
          v14 = vbslq_s8(v9, v19, v14);
          v15 = vbslq_s8(v8, v16, v15);
          v9 = vshrq_n_s64(v9, 1uLL);
          v8 = vshrq_n_s64(v8, 1uLL);
          v20 = vorrq_s8(v9, v8);
        }

        while ((vorrq_s8(v20, vdupq_laneq_s64(v20, 1)).u64[0] & 0x8000000000000000) != 0);
      }

      *a4 = v12;
      a4[1] = v13;
      a4 += 2;
      a3 += 2;
      v21 = a5 - 4;
      v22 = a5 <= 7;
      a5 -= 4;
    }

    while (!v22);
  }

  if (v21 >= 1)
  {
    do
    {
      v23 = a3->i64[0];
      if (a3->i64[0])
      {
        v24 = 1;
        v25 = v5;
        do
        {
          if (v23)
          {
            v26 = v25;
          }

          else
          {
            v26 = 1;
          }

          v24 *= v26;
          v25 *= v25;
          v22 = v23 > 1;
          v23 >>= 1;
        }

        while (v22);
      }

      else
      {
        v24 = 1;
      }

      a4->i64[0] = v24;
      a4 = (a4 + 8);
      a3 = (a3 + 8);
      v22 = v21-- <= 1;
    }

    while (!v22);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<long long,long long>(uint64_t a1, _OWORD *a2, unint64_t *a3, int8x16_t *a4, int a5)
{
  v5 = *a3;
  if (a5 < 4)
  {
    v19 = a5;
  }

  else
  {
    v6 = vdupq_n_s64(v5);
    v7 = vdupq_n_s64(1uLL);
    do
    {
      v8 = v7;
      v9 = v7;
      if ((v5 & 0x8000000000000000) != 0)
      {
        v11 = *a2;
        v10 = *(a2 + 1);
        v8 = vdupq_n_s64(1uLL);
        v12 = v6;
        v13 = v6;
        v9 = v8;
        do
        {
          v14 = vdupq_n_s64(1uLL);
          v15.i64[0] = (v9.i32[0] * v10.i32[0]);
          v15.i64[1] = (v9.i32[2] * v10.i32[2]);
          v16.i64[0] = (v8.i32[0] * v11.i32[0]);
          v16.i64[1] = (v8.i32[2] * v11.i32[2]);
          v8 = vbslq_s8(vandq_s8(v12, v14), v16, v8);
          v9 = vbslq_s8(vandq_s8(v13, v14), v15, v9);
          v14.i64[0] = v10.i64[0] * v10.i64[0];
          v14.i64[1] = v10.i64[1] * v10.i64[1];
          v17.i64[0] = v11.i64[0] * v11.i64[0];
          v17.i64[1] = v11.i64[1] * v11.i64[1];
          v11 = vbslq_s8(v12, v17, v11);
          v10 = vbslq_s8(v13, v14, v10);
          v12 = vshrq_n_s64(v12, 1uLL);
          v13 = vshrq_n_s64(v13, 1uLL);
          v18 = vorrq_s8(v12, v13);
        }

        while ((vorrq_s8(v18, vdupq_laneq_s64(v18, 1)).u64[0] & 0x8000000000000000) != 0);
      }

      *a4 = v8;
      a4[1] = v9;
      a4 += 2;
      a2 += 2;
      v19 = a5 - 4;
      v20 = a5 <= 7;
      a5 -= 4;
    }

    while (!v20);
  }

  if (v19 >= 1)
  {
    do
    {
      if (v5)
      {
        v21 = *a2;
        v22 = 1;
        v23 = v5;
        do
        {
          if (v23)
          {
            v24 = v21;
          }

          else
          {
            v24 = 1;
          }

          v22 *= v24;
          v21 *= v21;
          v20 = v23 > 1;
          v23 >>= 1;
        }

        while (v20);
      }

      else
      {
        v22 = 1;
      }

      a4->i64[0] = v22;
      a4 = (a4 + 8);
      a2 = (a2 + 8);
      v20 = v19-- <= 1;
    }

    while (!v20);
  }
}

void mlx::core::VectorVector<mlx::core::detail::Power>::operator()<long long,long long>(uint64_t a1, _OWORD *a2, int64x2_t *a3, int8x16_t *a4, int a5)
{
  if (a5 < 4)
  {
    v19 = a5;
  }

  else
  {
    v5 = vdupq_n_s64(1uLL);
    do
    {
      v7 = *a3;
      v6 = a3[1];
      v8 = vorrq_s8(*a3, v6);
      v9 = vorrq_s8(v8, vdupq_laneq_s64(v8, 1)).u64[0];
      v10 = v5;
      v11 = v5;
      if ((v9 & 0x8000000000000000) != 0)
      {
        v13 = *a2;
        v12 = *(a2 + 1);
        v10 = vdupq_n_s64(1uLL);
        v11 = v10;
        do
        {
          v14 = vdupq_n_s64(1uLL);
          v15.i64[0] = (v11.i32[0] * v12.i32[0]);
          v15.i64[1] = (v11.i32[2] * v12.i32[2]);
          v16.i64[0] = (v10.i32[0] * v13.i32[0]);
          v16.i64[1] = (v10.i32[2] * v13.i32[2]);
          v10 = vbslq_s8(vandq_s8(v7, v14), v16, v10);
          v11 = vbslq_s8(vandq_s8(v6, v14), v15, v11);
          v14.i64[0] = v12.i64[0] * v12.i64[0];
          v14.i64[1] = v12.i64[1] * v12.i64[1];
          v17.i64[0] = v13.i64[0] * v13.i64[0];
          v17.i64[1] = v13.i64[1] * v13.i64[1];
          v13 = vbslq_s8(v7, v17, v13);
          v12 = vbslq_s8(v6, v14, v12);
          v7 = vshrq_n_s64(v7, 1uLL);
          v6 = vshrq_n_s64(v6, 1uLL);
          v18 = vorrq_s8(v7, v6);
        }

        while ((vorrq_s8(v18, vdupq_laneq_s64(v18, 1)).u64[0] & 0x8000000000000000) != 0);
      }

      *a4 = v10;
      a4[1] = v11;
      a4 += 2;
      a2 += 2;
      a3 += 2;
      v19 = a5 - 4;
      v20 = a5 <= 7;
      a5 -= 4;
    }

    while (!v20);
  }

  if (v19 >= 1)
  {
    do
    {
      v21 = a3->i64[0];
      if (a3->i64[0])
      {
        v22 = *a2;
        v23 = 1;
        do
        {
          if (v21)
          {
            v24 = v22;
          }

          else
          {
            v24 = 1;
          }

          v23 *= v24;
          v22 *= v22;
          v20 = v21 > 1;
          v21 >>= 1;
        }

        while (v20);
      }

      else
      {
        v23 = 1;
      }

      a4->i64[0] = v23;
      a4 = (a4 + 8);
      a2 = (a2 + 8);
      a3 = (a3 + 8);
      v20 = v19-- <= 1;
    }

    while (!v20);
  }
}

void mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::VectorVector<mlx::core::detail::Power>>(_OWORD *a1, int64x2_t *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>((a1 + 8 * v60), (a2 + 8 * v53), (a3 + 8 * v19), a6, a7, a8, a9, v15);
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

void sub_25A79B728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(_OWORD *a1, unint64_t *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>((a1 + 8 * v60), &a2[v53], (a3 + 8 * v19), a6, a7, a8, a9, v15);
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

void sub_25A79BB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(unint64_t *a1, int64x2_t *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(&a1[v60], (a2 + 8 * v53), (a3 + 8 * v19), a6, a7, a8, a9, v15);
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

void sub_25A79BF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<long long,long long,false,mlx::core::detail::Power>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Power,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Power,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Power,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Power,3,false>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A79C370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(_OWORD *a1, int64x2_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<long long,long long>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 8 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(_OWORD *a1, int64x2_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(_OWORD *a1, int64x2_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(_OWORD *a1, unint64_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<long long,long long>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 8 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(_OWORD *a1, unint64_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(_OWORD *a1, unint64_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(unint64_t *a1, int64x2_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<long long,long long>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 8 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(unint64_t *a1, int64x2_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(unint64_t *a1, int64x2_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

uint64_t *mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Power,1,false>(uint64_t *result, uint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    do
    {
      v13 = *a2;
      if (*a2)
      {
        v14 = *result;
        v15 = 1;
        do
        {
          if (v13)
          {
            v16 = v14;
          }

          else
          {
            v16 = 1;
          }

          v15 *= v16;
          v14 *= v14;
          v17 = v13 > 1;
          v13 >>= 1;
        }

        while (v17);
      }

      else
      {
        v15 = 1;
      }

      *a3 = v15;
      a3 += v12;
      result += v10;
      ++v9;
      a2 += v11;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Power,2,false>(uint64_t *result, uint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Power,1,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Power,3,false>(uint64_t *result, uint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Power,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<half,half,mlx::core::detail::Power>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int16x4_t a5)
{
  v64 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*a1 + 152);
  v11 = *(*a2 + 152);
  v12 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<half,half>(a5, v60, v10, v11->i16, v12, *(v9 + 160));
      goto LABEL_62;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<half,half>(v60, v10, v11, v12, *(v9 + 48));
      goto LABEL_62;
    }
  }

  else
  {
    if (!a4)
    {
      _H0 = v10->i16[0];
      _H1 = v11->i16[0];
      __asm
      {
        FCVT            S0, H0; float
        FCVT            S1, H1; float
      }

      _S0 = powf(_S0, _S1);
      __asm { FCVT            H0, S0 }

      v12->i16[0] = LOWORD(_S0);
      goto LABEL_62;
    }

    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<half,half>(a5, v60, v10->i16, v11, v12, *(*a2 + 160));
      goto LABEL_62;
    }
  }

  memset(v60, 0, sizeof(v60));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v60, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
  v13 = *a2;
  memset(v61, 0, sizeof(v61));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v61, *(v13 + 24), *(v13 + 32), (*(v13 + 32) - *(v13 + 24)) >> 3);
  v14 = *a3;
  v63[0] = 0;
  v63[1] = 0;
  v62 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v62, *(v14 + 24), *(v14 + 32), (*(v14 + 32) - *(v14 + 24)) >> 3);
  memset(v55, 0, sizeof(v55));
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v55, v60, &v64, 3uLL);
  mlx::core::collapse_contiguous_dims(v9, v55, 0x7FFFFFFFuLL, &__p);
  v59 = v55;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v59);
  for (i = 0; i != -9; i -= 3)
  {
    v17 = v63[i - 1];
    if (v17)
    {
      v63[i] = v17;
      operator delete(v17);
    }
  }

  v18 = v58 + 6;
  v19 = *v58;
  v20 = (v58[1] - *v58) >> 3;
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
      goto LABEL_21;
    }
  }

  v23 = v22;
LABEL_21:
  v36 = v58[3];
  v37 = (v58[4] - v36) >> 3;
  v38 = v37 - 1;
  if (v37 - 1 >= -1)
  {
    v38 = -1;
  }

  v39 = v38 + 1;
  v40 = v37 + 1;
  v41 = v37 - 1;
  v42 = v37 - 1;
  while ((v42 & 0x80000000) == 0)
  {
    v43 = 8 * (v42 & 0x7FFFFFFF);
    --v40;
    --v42;
    if (*(v36 + v43) != *(*v18 + v43))
    {
      goto LABEL_28;
    }
  }

  v40 = v39;
LABEL_28:
  v44 = v20 + 1;
  while ((v24 & 0x80000000) == 0)
  {
    v45 = *(v19 + 8 * (v24 & 0x7FFFFFFF));
    --v44;
    --v24;
    if (v45)
    {
      goto LABEL_33;
    }
  }

  v44 = v22;
LABEL_33:
  v46 = v37 + 1;
  while ((v41 & 0x80000000) == 0)
  {
    v47 = *(v36 + 8 * (v41 & 0x7FFFFFFF));
    --v46;
    --v41;
    if (v47)
    {
      goto LABEL_38;
    }
  }

  v46 = v39;
LABEL_38:
  v48 = (v57 - __p) >> 2;
  if (v23 <= v40)
  {
    v49 = v40;
  }

  else
  {
    v49 = v23;
  }

  if (v23 <= v46)
  {
    v23 = v46;
  }

  if (v44 > v40)
  {
    v40 = v44;
  }

  if (v48 > v40)
  {
    v50 = 1;
  }

  else
  {
    v40 = (v57 - __p) >> 2;
    v50 = a4;
  }

  if (v48 > v23)
  {
    v51 = 2;
  }

  else
  {
    v23 = v40;
    v51 = v50;
  }

  if (v48 <= v49)
  {
    v52 = v23;
  }

  else
  {
    v52 = v49;
  }

  if (v48 <= v49)
  {
    v53 = v51;
  }

  else
  {
    v53 = 3;
  }

  if (!v52 || *(*v18 + 8 * v52 - 8) < 16)
  {
    goto LABEL_59;
  }

  switch(v53)
  {
    case 1:
      mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(v10->i16, v11, v12, v52, *(*a1 + 48), &__p, v58, v58 + 3, v15, v58 + 6);
      break;
    case 2:
      mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(v10, v11->i16, v12, v52, *(*a1 + 48), &__p, v58, v58 + 3, v15, v58 + 6);
      break;
    case 3:
      mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorVector<mlx::core::detail::Power>>(v10, v11, v12, v52, *(*a1 + 48), &__p, v58, v58 + 3, v58 + 6);
      break;
    default:
      LODWORD(v48) = v52;
LABEL_59:
      mlx::core::binary_op_dispatch_dims<half,half,false,mlx::core::detail::Power>(v10->i16, v11->i16, v12, v48, *(*a1 + 48), &__p, v58, v58 + 3, v58 + 6);
      break;
  }

  v60[0] = &v58;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v60);
  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }

LABEL_62:
  v54 = *MEMORY[0x277D85DE8];
}

void sub_25A79D0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<half,half>(int16x4_t a1, uint64_t a2, __int16 *a3, float16x8_t *a4, float16x8_t *a5, int a6)
{
  v6 = a6;
  v23 = *a3;
  if (a6 < 8)
  {
    v10 = a6;
  }

  else
  {
    a1.i16[0] = *a3;
    x = vcvtq_f32_f16(vdup_lane_s16(a1, 0));
    do
    {
      v9 = *a4++;
      v24 = _simd_pow_f4(x, vcvtq_f32_f16(*v9.i8));
      *a5++ = vcvt_hight_f16_f32(vcvt_f16_f32(v24), _simd_pow_f4(x, vcvt_hight_f32_f16(v9)));
      v10 = v6 - 8;
      v11 = v6 > 0xF;
      v6 -= 8;
    }

    while (v11);
  }

  if (v10 >= 1)
  {
    _H0 = v23;
    __asm { FCVT            S8, H0 }

    v18 = v10 + 1;
    do
    {
      v19 = a4->i16[0];
      a4 = (a4 + 2);
      _H0 = v19;
      __asm { FCVT            S1, H0; float }

      _S0 = powf(_S8, _S1);
      __asm { FCVT            H0, S0 }

      a5->i16[0] = LOWORD(_S0);
      a5 = (a5 + 2);
      --v18;
    }

    while (v18 > 1);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<half,half>(int16x4_t a1, uint64_t a2, float16x8_t *a3, __int16 *a4, float16x8_t *a5, int a6)
{
  v6 = a6;
  v23 = *a4;
  if (a6 < 8)
  {
    v10 = a6;
  }

  else
  {
    a1.i16[0] = *a4;
    y = vcvtq_f32_f16(vdup_lane_s16(a1, 0));
    do
    {
      v9 = *a3++;
      v24 = _simd_pow_f4(vcvtq_f32_f16(*v9.i8), y);
      *a5++ = vcvt_hight_f16_f32(vcvt_f16_f32(v24), _simd_pow_f4(vcvt_hight_f32_f16(v9), y));
      v10 = v6 - 8;
      v11 = v6 > 0xF;
      v6 -= 8;
    }

    while (v11);
  }

  if (v10 >= 1)
  {
    _H0 = v23;
    __asm { FCVT            S8, H0 }

    v18 = v10 + 1;
    do
    {
      v19 = a3->i16[0];
      a3 = (a3 + 2);
      _H0 = v19;
      __asm { FCVT            S0, H0; float }

      _S0 = powf(_S0, _S8);
      __asm { FCVT            H0, S0 }

      a5->i16[0] = LOWORD(_S0);
      a5 = (a5 + 2);
      --v18;
    }

    while (v18 > 1);
  }
}

__int16 mlx::core::VectorVector<mlx::core::detail::Power>::operator()<half,half>@<H0>(uint64_t a1@<X0>, float16x8_t *a2@<X1>, float16x8_t *a3@<X2>, float16x8_t *a4@<X3>, int a5@<W4>)
{
  v5 = a5;
  if (a5 < 8)
  {
    v13 = a5;
  }

  else
  {
    do
    {
      v9 = *a2++;
      v10 = v9;
      v11 = *a3++;
      v28 = vcvt_hight_f32_f16(v10);
      v27 = _simd_pow_f4(vcvtq_f32_f16(*v10.i8), vcvtq_f32_f16(*v11.i8));
      _Q0 = _simd_pow_f4(v28, vcvt_hight_f32_f16(v11));
      *a4++ = vcvt_hight_f16_f32(vcvt_f16_f32(v27), _Q0);
      v13 = v5 - 8;
      v14 = v5 > 0xF;
      v5 -= 8;
    }

    while (v14);
  }

  if (v13 >= 1)
  {
    v15 = v13 + 1;
    do
    {
      v16 = a2->i16[0];
      a2 = (a2 + 2);
      _H0 = v16;
      v18 = a3->i16[0];
      a3 = (a3 + 2);
      _H1 = v18;
      __asm
      {
        FCVT            S0, H0; float
        FCVT            S1, H1; float
      }

      _Q0.f32[0] = powf(_S0, _S1);
      __asm { FCVT            H0, S0 }

      a4->i16[0] = _Q0.i16[0];
      a4 = (a4 + 2);
      --v15;
    }

    while (v15 > 1);
  }

  return _Q0.i16[0];
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorVector<mlx::core::detail::Power>>(float16x8_t *a1, float16x8_t *a2, float16x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>((a1 + 2 * v60), (a2 + 2 * v53), (a3 + 2 * v19), a6, a7, a8, a9, v15);
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

void sub_25A79D7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(float16x8_t *a1, __int16 *a2, float16x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int16x4_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>((a1 + 2 * v62), &a2[v55], (a3 + 2 * v21), a6, a7, a8, a10, v16, v19);
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

void sub_25A79DBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(__int16 *a1, float16x8_t *a2, float16x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int16x4_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(&a1[v62], (a2 + 2 * v55), (a3 + 2 * v21), a6, a7, a8, a10, v16, v19);
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

void sub_25A79DFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,false,mlx::core::detail::Power>(__int16 *a1, __int16 *a2, _WORD *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::detail::Power,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::detail::Power,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          _H0 = *v14;
          _H1 = *v13;
          __asm
          {
            FCVT            S0, H0; float
            FCVT            S1, H1; float
          }

          _S0 = powf(_S0, _S1);
          __asm { FCVT            H0, S0 }

          *v12 = LOWORD(_S0);
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
          mlx::core::binary_op_dims<half,half,mlx::core::detail::Power,3,false>(&v14[v70], &v13[v63], &v12[v30], a6, a7, a8, a9, v15);
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
            if (v33 >= 2 && v37 == *v38 - 1)
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

void sub_25A79E424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(float16x8_t *a1, float16x8_t *a2, float16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    v14 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<half,half>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 2 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(float16x8_t *a1, float16x8_t *a2, float16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(float16x8_t *a1, float16x8_t *a2, float16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(float16x8_t *a1, __int16 *a2, float16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int16x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v13 = *(*a7 + 8 * a8);
    v14 = 2 * *(*a5 + 8 * a8);
    v15 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<half,half>(a9, &v16, a1, a2, a3, v13);
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + 2 * v13);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(float16x8_t *a1, __int16 *a2, float16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int16x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    v18 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(float16x8_t *a1, __int16 *a2, float16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int16x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    v18 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(__int16 *a1, float16x8_t *a2, float16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int16x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v13 = *(*a7 + 8 * a8);
    v14 = 2 * *(*a5 + 8 * a8);
    v15 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<half,half>(a9, &v16, a1, a2, a3, v13);
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + 2 * v13);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(__int16 *a1, float16x8_t *a2, float16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int16x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    v18 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(__int16 *a1, float16x8_t *a2, float16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int16x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    v18 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::detail::Power,2,false>(__int16 *a1, __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v31 = *(*a4 + 4 * a8);
  if (v31 >= 1)
  {
    v10 = 0;
    v11 = a8 + 1;
    v32 = *(*a4 + 4 * v11);
    v12 = 2 * *(*a5 + 8 * v11);
    v29 = 2 * *(*a6 + 8 * a8);
    v30 = 2 * *(*a5 + 8 * a8);
    v13 = 2 * *(*a6 + 8 * v11);
    v28 = 2 * *(*a7 + 8 * a8);
    v14 = 2 * *(*a7 + 8 * v11);
    do
    {
      if (v32 >= 1)
      {
        v15 = a3;
        v16 = a2;
        v17 = a1;
        v18 = v32;
        do
        {
          _H0 = *v17;
          _H1 = *v16;
          __asm
          {
            FCVT            S0, H0; float
            FCVT            S1, H1; float
          }

          _S0 = powf(_S0, _S1);
          __asm { FCVT            H0, S0 }

          *v15 = LOWORD(_S0);
          v17 = (v17 + v12);
          v16 = (v16 + v13);
          v15 = (v15 + v14);
          --v18;
        }

        while (v18);
      }

      ++v10;
      a1 = (a1 + v30);
      a2 = (a2 + v29);
      a3 = (a3 + v28);
    }

    while (v10 != v31);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::detail::Power,3,false>(__int16 *a1, __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::detail::Power,2,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op<float,float,mlx::core::detail::Power>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int32x2_t a5)
{
  v55 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*a1 + 152);
  v11 = *(*a2 + 152);
  v12 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<float,float>(a5, v51, v10, v11, v12, *(v9 + 160));
      goto LABEL_62;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<float,float>(v51, v10, v11, v12, *(v9 + 48));
      goto LABEL_62;
    }
  }

  else
  {
    if (!a4)
    {
      v12->f32[0] = powf(*v10, *v11);
      goto LABEL_62;
    }

    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<float,float>(a5, v51, v10, v11, v12, *(*a2 + 160));
      goto LABEL_62;
    }
  }

  memset(v51, 0, sizeof(v51));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v51, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
  v13 = *a2;
  memset(v52, 0, sizeof(v52));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v52, *(v13 + 24), *(v13 + 32), (*(v13 + 32) - *(v13 + 24)) >> 3);
  v14 = *a3;
  v54[0] = 0;
  v54[1] = 0;
  v53 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v53, *(v14 + 24), *(v14 + 32), (*(v14 + 32) - *(v14 + 24)) >> 3);
  memset(v46, 0, sizeof(v46));
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v46, v51, &v55, 3uLL);
  mlx::core::collapse_contiguous_dims(v9, v46, 0x7FFFFFFFuLL, &__p);
  v50 = v46;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v50);
  for (i = 0; i != -9; i -= 3)
  {
    v17 = v54[i - 1];
    if (v17)
    {
      v54[i] = v17;
      operator delete(v17);
    }
  }

  v18 = v49 + 6;
  v19 = *v49;
  v20 = (v49[1] - *v49) >> 3;
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
      goto LABEL_21;
    }
  }

  v23 = v22;
LABEL_21:
  v27 = v49[3];
  v28 = (v49[4] - v27) >> 3;
  v29 = v28 - 1;
  if (v28 - 1 >= -1)
  {
    v29 = -1;
  }

  v30 = v29 + 1;
  v31 = v28 + 1;
  v32 = v28 - 1;
  v33 = v28 - 1;
  while ((v33 & 0x80000000) == 0)
  {
    v34 = 8 * (v33 & 0x7FFFFFFF);
    --v31;
    --v33;
    if (*(v27 + v34) != *(*v18 + v34))
    {
      goto LABEL_28;
    }
  }

  v31 = v30;
LABEL_28:
  v35 = v20 + 1;
  while ((v24 & 0x80000000) == 0)
  {
    v36 = *(v19 + 8 * (v24 & 0x7FFFFFFF));
    --v35;
    --v24;
    if (v36)
    {
      goto LABEL_33;
    }
  }

  v35 = v22;
LABEL_33:
  v37 = v28 + 1;
  while ((v32 & 0x80000000) == 0)
  {
    v38 = *(v27 + 8 * (v32 & 0x7FFFFFFF));
    --v37;
    --v32;
    if (v38)
    {
      goto LABEL_38;
    }
  }

  v37 = v30;
LABEL_38:
  v39 = (v48 - __p) >> 2;
  if (v23 <= v31)
  {
    v40 = v31;
  }

  else
  {
    v40 = v23;
  }

  if (v23 <= v37)
  {
    v23 = v37;
  }

  if (v35 > v31)
  {
    v31 = v35;
  }

  if (v39 > v31)
  {
    v41 = 1;
  }

  else
  {
    v31 = (v48 - __p) >> 2;
    v41 = a4;
  }

  if (v39 > v23)
  {
    v42 = 2;
  }

  else
  {
    v23 = v31;
    v42 = v41;
  }

  if (v39 <= v40)
  {
    v43 = v23;
  }

  else
  {
    v43 = v40;
  }

  if (v39 <= v40)
  {
    v44 = v42;
  }

  else
  {
    v44 = 3;
  }

  if (!v43 || *(*v18 + 8 * v43 - 8) < 16)
  {
    goto LABEL_59;
  }

  switch(v44)
  {
    case 1:
      mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(v10, v11, v12, v43, *(*a1 + 48), &__p, v49, v49 + 3, v15, v49 + 6);
      break;
    case 2:
      mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(v10, v11, v12, v43, *(*a1 + 48), &__p, v49, v49 + 3, v15, v49 + 6);
      break;
    case 3:
      mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorVector<mlx::core::detail::Power>>(v10, v11, v12, v43, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
      break;
    default:
      LODWORD(v39) = v43;
LABEL_59:
      mlx::core::binary_op_dispatch_dims<float,float,false,mlx::core::detail::Power>(v10, v11, v12->f32, v39, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
      break;
  }

  v51[0] = &v49;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v51);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

LABEL_62:
  v45 = *MEMORY[0x277D85DE8];
}

void sub_25A79F144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<float,float>(int32x2_t a1, uint64_t a2, float *a3, _OWORD *a4, simd_float4 *a5, int a6)
{
  v6 = a6;
  v15 = *a3;
  if (a6 < 8)
  {
    v11 = a6;
  }

  else
  {
    a1.i32[0] = *a3;
    x = vdupq_lane_s32(a1, 0);
    do
    {
      v10 = *a4;
      v9 = *(a4 + 1);
      a4 += 2;
      v17 = v9;
      v16 = _simd_pow_f4(x, v10);
      a5[1] = _simd_pow_f4(x, v17);
      *a5 = v16;
      a5 += 2;
      v11 = v6 - 8;
      v12 = v6 > 0xF;
      v6 -= 8;
    }

    while (v12);
  }

  if (v11 >= 1)
  {
    v13 = v11 + 1;
    do
    {
      v14 = *a4;
      a4 = (a4 + 4);
      a5->f32[0] = powf(v15, v14);
      a5 = (a5 + 4);
      --v13;
    }

    while (v13 > 1);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<float,float>(int32x2_t a1, uint64_t a2, _OWORD *a3, float *a4, simd_float4 *a5, int a6)
{
  v6 = a6;
  v15 = *a4;
  if (a6 < 8)
  {
    v11 = a6;
  }

  else
  {
    a1.i32[0] = *a4;
    y = vdupq_lane_s32(a1, 0);
    do
    {
      v9 = *a3;
      v10 = *(a3 + 1);
      a3 += 2;
      v17 = v10;
      v16 = _simd_pow_f4(v9, y);
      a5[1] = _simd_pow_f4(v17, y);
      *a5 = v16;
      a5 += 2;
      v11 = v6 - 8;
      v12 = v6 > 0xF;
      v6 -= 8;
    }

    while (v12);
  }

  if (v11 >= 1)
  {
    v13 = v11 + 1;
    do
    {
      v14 = *a3;
      a3 = (a3 + 4);
      a5->f32[0] = powf(v14, v15);
      a5 = (a5 + 4);
      --v13;
    }

    while (v13 > 1);
  }
}

void mlx::core::VectorVector<mlx::core::detail::Power>::operator()<float,float>(uint64_t a1, _OWORD *a2, _OWORD *a3, simd_float4 *a4, int a5)
{
  v5 = a5;
  if (a5 < 8)
  {
    v13 = a5;
  }

  else
  {
    do
    {
      v9 = *a2;
      v10 = *(a2 + 1);
      a2 += 2;
      v11 = *a3;
      v12 = *(a3 + 1);
      a3 += 2;
      v20 = v12;
      v21 = v10;
      v19 = _simd_pow_f4(v9, v11);
      a4[1] = _simd_pow_f4(v21, v20);
      *a4 = v19;
      a4 += 2;
      v13 = v5 - 8;
      v14 = v5 > 0xF;
      v5 -= 8;
    }

    while (v14);
  }

  if (v13 >= 1)
  {
    v15 = v13 + 1;
    do
    {
      v16 = *a2;
      a2 = (a2 + 4);
      v17 = v16;
      v18 = *a3;
      a3 = (a3 + 4);
      a4->f32[0] = powf(v17, v18);
      a4 = (a4 + 4);
      --v15;
    }

    while (v15 > 1);
  }
}

void mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorVector<mlx::core::detail::Power>>(_OWORD *a1, _OWORD *a2, simd_float4 *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>((a1 + 4 * v60), (a2 + 4 * v53), (a3 + 4 * v19), a6, a7, a8, a9, v15);
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

void sub_25A79F7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(_OWORD *a1, float *a2, simd_float4 *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int32x2_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>((a1 + 4 * v62), &a2[v55], (a3 + 4 * v21), a6, a7, a8, a10, v16, v19);
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

void sub_25A79FBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(float *a1, _OWORD *a2, simd_float4 *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int32x2_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(&a1[v62], (a2 + 4 * v55), (a3 + 4 * v21), a6, a7, a8, a10, v16, v19);
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

void sub_25A7A0014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,float,false,mlx::core::detail::Power>(float *a1, float *a2, float *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::detail::Power,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::detail::Power,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = powf(*v14, *v13);
          v14 = (v14 + v18);
          v13 = (v13 + v19);
          v12 = (v12 + v20);
          --v17;
        }

        while (v17);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v15);
      if (a5 >= 1)
      {
        v22 = 0;
        v23 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<float,float,mlx::core::detail::Power,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
          v24 = v64 - v63;
          v25 = (v64 - v63) >> 2;
          if (v25)
          {
            v26 = v67;
            v27 = ((v24 << 30) - 0x100000000) >> 32;
            v28 = v67 + 4 * v27;
            v29 = *v28;
            v30 = v63 + 4 * v27;
            v31 = v65;
            v32 = v62;
            if (v25 >= 2 && v29 == *v30 - 1)
            {
              v35 = (v24 >> 2) & 0x7FFFFFFF;
              v34 = v35 - 1;
              v36 = 4 * v35;
              v37 = v63 - 8;
              do
              {
                v38 = v34;
                *v28 = 0;
                v32 -= v31[v27] * (*v30 - 1);
                v62 = v32;
                --v34;
                v28 = &v26[v36 - 8];
                v29 = *v28;
                v26 -= 4;
                if (v38 < 2)
                {
                  break;
                }

                v30 = &v37[v36];
                v39 = *&v37[4 * v35] - 1;
                v37 -= 4;
                v27 = v34;
              }

              while (v29 == v39);
              v28 = &v26[4 * v35 - 4];
            }

            else
            {
              v34 = ((v24 << 30) - 0x100000000) >> 32;
            }

            *v28 = v29 + 1;
            v62 = v31[v34] + v32;
          }

          v40 = v57 - v56;
          v41 = (v57 - v56) >> 2;
          if (v41)
          {
            v42 = __p;
            v43 = ((v40 << 30) - 0x100000000) >> 32;
            v44 = __p + 4 * v43;
            v45 = *v44;
            v46 = v58;
            v47 = v55;
            if (v41 >= 2 && (v48 = v56 + 4 * v43, v45 == *v48 - 1))
            {
              v49 = (v40 >> 2) & 0x7FFFFFFF;
              v50 = v49 - 1;
              v51 = 4 * v49;
              v52 = v56 - 8;
              do
              {
                v53 = v50;
                *v44 = 0;
                v47 -= v46[v43] * (*v48 - 1);
                v55 = v47;
                --v50;
                v44 = &v42[v51 - 8];
                v45 = *v44;
                v42 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v48 = &v52[v51];
                v54 = *&v52[4 * v49] - 1;
                v52 -= 4;
                v43 = v50;
              }

              while (v45 == v54);
              v44 = &v42[4 * v49 - 4];
            }

            else
            {
              v50 = ((v40 << 30) - 0x100000000) >> 32;
            }

            *v44 = v45 + 1;
            v55 = v46[v50] + v47;
          }

          v22 += v23;
        }

        while (v22 < a5);
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

void sub_25A7A0434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(_OWORD *a1, _OWORD *a2, simd_float4 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * a8);
    v14 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<float,float>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 4 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(_OWORD *a1, _OWORD *a2, simd_float4 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(_OWORD *a1, _OWORD *a2, simd_float4 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(_OWORD *a1, float *a2, simd_float4 *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v13 = *(*a7 + 8 * a8);
    v14 = 4 * *(*a5 + 8 * a8);
    v15 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<float,float>(a9, &v16, a1, a2, a3, v13);
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + 4 * v13);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(_OWORD *a1, float *a2, simd_float4 *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(_OWORD *a1, float *a2, simd_float4 *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(float *a1, _OWORD *a2, simd_float4 *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v13 = *(*a7 + 8 * a8);
    v14 = 4 * *(*a5 + 8 * a8);
    v15 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<float,float>(a9, &v16, a1, a2, a3, v13);
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + 4 * v13);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(float *a1, _OWORD *a2, simd_float4 *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(float *a1, _OWORD *a2, simd_float4 *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::detail::Power,2,false>(float *a1, float *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v22 = *(*a4 + 4 * a8);
  if (v22 >= 1)
  {
    v10 = 0;
    v11 = a8 + 1;
    v23 = *(*a4 + 4 * v11);
    v12 = 4 * *(*a5 + 8 * v11);
    v20 = 4 * *(*a6 + 8 * a8);
    v21 = 4 * *(*a5 + 8 * a8);
    v13 = 4 * *(*a6 + 8 * v11);
    v19 = 4 * *(*a7 + 8 * a8);
    v14 = 4 * *(*a7 + 8 * v11);
    do
    {
      if (v23 >= 1)
      {
        v15 = a3;
        v16 = a2;
        v17 = a1;
        v18 = v23;
        do
        {
          *v15 = powf(*v17, *v16);
          v17 = (v17 + v12);
          v16 = (v16 + v13);
          v15 = (v15 + v14);
          --v18;
        }

        while (v18);
      }

      ++v10;
      a1 = (a1 + v21);
      a2 = (a2 + v20);
      a3 = (a3 + v19);
    }

    while (v10 != v22);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::detail::Power,3,false>(float *a1, float *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::detail::Power,2,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op<double,double,mlx::core::detail::Power>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<double,double>(v49, v9, v10, v11, *(v8 + 160));
      goto LABEL_62;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<double,double>(v49, v9, v10, v11, *(v8 + 48));
      goto LABEL_62;
    }
  }

  else
  {
    if (!a4)
    {
      v11->f64[0] = pow(*v9, *v10);
      goto LABEL_62;
    }

    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<double,double>(v49, v9, v10, v11, *(*a2 + 160));
      goto LABEL_62;
    }
  }

  memset(v49, 0, sizeof(v49));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v49, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
  v12 = *a2;
  memset(v50, 0, sizeof(v50));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v50, *(v12 + 24), *(v12 + 32), (*(v12 + 32) - *(v12 + 24)) >> 3);
  v13 = *a3;
  v52[0] = 0;
  v52[1] = 0;
  v51 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v51, *(v13 + 24), *(v13 + 32), (*(v13 + 32) - *(v13 + 24)) >> 3);
  memset(v44, 0, sizeof(v44));
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v44, v49, &v53, 3uLL);
  mlx::core::collapse_contiguous_dims(v8, v44, 0x7FFFFFFFuLL, &__p);
  v48 = v44;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v48);
  for (i = 0; i != -9; i -= 3)
  {
    v15 = v52[i - 1];
    if (v15)
    {
      v52[i] = v15;
      operator delete(v15);
    }
  }

  v16 = v47 + 6;
  v17 = *v47;
  v18 = (v47[1] - *v47) >> 3;
  v19 = v18 - 1;
  if (v18 - 1 >= -1)
  {
    v19 = -1;
  }

  v20 = v19 + 1;
  v21 = v18 + 1;
  v22 = v18 - 1;
  v23 = v18 - 1;
  while ((v23 & 0x80000000) == 0)
  {
    v24 = 8 * (v23 & 0x7FFFFFFF);
    --v21;
    --v23;
    if (*(v17 + v24) != *(*v16 + v24))
    {
      goto LABEL_21;
    }
  }

  v21 = v20;
LABEL_21:
  v25 = v47[3];
  v26 = (v47[4] - v25) >> 3;
  v27 = v26 - 1;
  if (v26 - 1 >= -1)
  {
    v27 = -1;
  }

  v28 = v27 + 1;
  v29 = v26 + 1;
  v30 = v26 - 1;
  v31 = v26 - 1;
  while ((v31 & 0x80000000) == 0)
  {
    v32 = 8 * (v31 & 0x7FFFFFFF);
    --v29;
    --v31;
    if (*(v25 + v32) != *(*v16 + v32))
    {
      goto LABEL_28;
    }
  }

  v29 = v28;
LABEL_28:
  v33 = v18 + 1;
  while ((v22 & 0x80000000) == 0)
  {
    v34 = *(v17 + 8 * (v22 & 0x7FFFFFFF));
    --v33;
    --v22;
    if (v34)
    {
      goto LABEL_33;
    }
  }

  v33 = v20;
LABEL_33:
  v35 = v26 + 1;
  while ((v30 & 0x80000000) == 0)
  {
    v36 = *(v25 + 8 * (v30 & 0x7FFFFFFF));
    --v35;
    --v30;
    if (v36)
    {
      goto LABEL_38;
    }
  }

  v35 = v28;
LABEL_38:
  v37 = (v46 - __p) >> 2;
  if (v21 <= v29)
  {
    v38 = v29;
  }

  else
  {
    v38 = v21;
  }

  if (v21 <= v35)
  {
    v21 = v35;
  }

  if (v33 > v29)
  {
    v29 = v33;
  }

  if (v37 > v29)
  {
    v39 = 1;
  }

  else
  {
    v29 = (v46 - __p) >> 2;
    v39 = a4;
  }

  if (v37 > v21)
  {
    v40 = 2;
  }

  else
  {
    v21 = v29;
    v40 = v39;
  }

  if (v37 <= v38)
  {
    v41 = v21;
  }

  else
  {
    v41 = v38;
  }

  if (v37 <= v38)
  {
    v42 = v40;
  }

  else
  {
    v42 = 3;
  }

  if (!v41 || *(*v16 + 8 * v41 - 8) < 16)
  {
    goto LABEL_59;
  }

  switch(v42)
  {
    case 1:
      mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(v9, v10, v11, v41, *(*a1 + 48), &__p, v47, v47 + 3, v47 + 6);
      break;
    case 2:
      mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(v9, v10, v11, v41, *(*a1 + 48), &__p, v47, v47 + 3, v47 + 6);
      break;
    case 3:
      mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorVector<mlx::core::detail::Power>>(v9, v10, v11, v41, *(*a1 + 48), &__p, v47, v47 + 3, v47 + 6);
      break;
    default:
      LODWORD(v37) = v41;
LABEL_59:
      mlx::core::binary_op_dispatch_dims<double,double,false,mlx::core::detail::Power>(v9, v10, v11->f64, v37, *(*a1 + 48), &__p, v47, v47 + 3, v47 + 6);
      break;
  }

  v49[0] = &v47;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v49);
  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

LABEL_62:
  v43 = *MEMORY[0x277D85DE8];
}

void sub_25A7A1148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<double,double>(uint64_t a1, uint64_t *a2, _OWORD *a3, simd_double2 *a4, int a5)
{
  v5 = a5;
  __x = *a2;
  if (a5 < 4)
  {
    v10 = a5;
  }

  else
  {
    x = vdupq_lane_s64(*a2, 0);
    do
    {
      v9 = *a3;
      v8 = *(a3 + 1);
      a3 += 2;
      v16 = v8;
      v15 = _simd_pow_d2(x, v9);
      a4[1] = _simd_pow_d2(x, v16);
      *a4 = v15;
      a4 += 2;
      v10 = v5 - 4;
      v11 = v5 > 7;
      v5 -= 4;
    }

    while (v11);
  }

  if (v10 >= 1)
  {
    v12 = v10 + 1;
    do
    {
      v13 = *a3;
      a3 = (a3 + 8);
      a4->f64[0] = pow(*&__x, v13);
      a4 = (a4 + 8);
      --v12;
    }

    while (v12 > 1);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<double,double>(uint64_t a1, _OWORD *a2, uint64_t *a3, simd_double2 *a4, int a5)
{
  v5 = a5;
  __y = *a3;
  if (a5 < 4)
  {
    v10 = a5;
  }

  else
  {
    y = vdupq_lane_s64(*a3, 0);
    do
    {
      v8 = *a2;
      v9 = *(a2 + 1);
      a2 += 2;
      v16 = v9;
      v15 = _simd_pow_d2(v8, y);
      a4[1] = _simd_pow_d2(v16, y);
      *a4 = v15;
      a4 += 2;
      v10 = v5 - 4;
      v11 = v5 > 7;
      v5 -= 4;
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
      a4->f64[0] = pow(v13, *&__y);
      a4 = (a4 + 8);
      --v12;
    }

    while (v12 > 1);
  }
}

void mlx::core::VectorVector<mlx::core::detail::Power>::operator()<double,double>(uint64_t a1, _OWORD *a2, _OWORD *a3, simd_double2 *a4, int a5)
{
  v5 = a5;
  if (a5 < 4)
  {
    v13 = a5;
  }

  else
  {
    do
    {
      v9 = *a2;
      v10 = *(a2 + 1);
      a2 += 2;
      v21 = v10;
      v11 = *a3;
      v12 = *(a3 + 1);
      a3 += 2;
      v20 = v12;
      v19 = _simd_pow_d2(v9, v11);
      a4[1] = _simd_pow_d2(v21, v20);
      *a4 = v19;
      a4 += 2;
      v13 = v5 - 4;
      v14 = v5 > 7;
      v5 -= 4;
    }

    while (v14);
  }

  if (v13 >= 1)
  {
    v15 = v13 + 1;
    do
    {
      v16 = *a2;
      a2 = (a2 + 8);
      v17 = v16;
      v18 = *a3;
      a3 = (a3 + 8);
      a4->f64[0] = pow(v17, v18);
      a4 = (a4 + 8);
      --v15;
    }

    while (v15 > 1);
  }
}

void mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorVector<mlx::core::detail::Power>>(_OWORD *a1, _OWORD *a2, simd_double2 *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>((a1 + 8 * v60), (a2 + 8 * v53), (a3 + 8 * v19), a6, a7, a8, a9, v15);
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

void sub_25A7A17EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(_OWORD *a1, uint64_t *a2, simd_double2 *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>((a1 + 8 * v60), &a2[v53], (a3 + 8 * v19), a6, a7, a8, a9, v15);
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

void sub_25A7A1C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(uint64_t *a1, _OWORD *a2, simd_double2 *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(&a1[v60], (a2 + 8 * v53), (a3 + 8 * v19), a6, a7, a8, a9, v15);
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

void sub_25A7A201C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,double,false,mlx::core::detail::Power>(long double *a1, long double *a2, long double *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::detail::Power,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::detail::Power,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = pow(*v14, *v13);
          v14 = (v14 + v18);
          v13 = (v13 + v19);
          v12 = (v12 + v20);
          --v17;
        }

        while (v17);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v15);
      if (a5 >= 1)
      {
        v22 = 0;
        v23 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<double,double,mlx::core::detail::Power,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
          v24 = v64 - v63;
          v25 = (v64 - v63) >> 2;
          if (v25)
          {
            v26 = v67;
            v27 = ((v24 << 30) - 0x100000000) >> 32;
            v28 = v67 + 4 * v27;
            v29 = *v28;
            v30 = v63 + 4 * v27;
            v31 = v65;
            v32 = v62;
            if (v25 >= 2 && v29 == *v30 - 1)
            {
              v35 = (v24 >> 2) & 0x7FFFFFFF;
              v34 = v35 - 1;
              v36 = 4 * v35;
              v37 = v63 - 8;
              do
              {
                v38 = v34;
                *v28 = 0;
                v32 -= v31[v27] * (*v30 - 1);
                v62 = v32;
                --v34;
                v28 = &v26[v36 - 8];
                v29 = *v28;
                v26 -= 4;
                if (v38 < 2)
                {
                  break;
                }

                v30 = &v37[v36];
                v39 = *&v37[4 * v35] - 1;
                v37 -= 4;
                v27 = v34;
              }

              while (v29 == v39);
              v28 = &v26[4 * v35 - 4];
            }

            else
            {
              v34 = ((v24 << 30) - 0x100000000) >> 32;
            }

            *v28 = v29 + 1;
            v62 = v31[v34] + v32;
          }

          v40 = v57 - v56;
          v41 = (v57 - v56) >> 2;
          if (v41)
          {
            v42 = __p;
            v43 = ((v40 << 30) - 0x100000000) >> 32;
            v44 = __p + 4 * v43;
            v45 = *v44;
            v46 = v58;
            v47 = v55;
            if (v41 >= 2 && (v48 = v56 + 4 * v43, v45 == *v48 - 1))
            {
              v49 = (v40 >> 2) & 0x7FFFFFFF;
              v50 = v49 - 1;
              v51 = 4 * v49;
              v52 = v56 - 8;
              do
              {
                v53 = v50;
                *v44 = 0;
                v47 -= v46[v43] * (*v48 - 1);
                v55 = v47;
                --v50;
                v44 = &v42[v51 - 8];
                v45 = *v44;
                v42 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v48 = &v52[v51];
                v54 = *&v52[4 * v49] - 1;
                v52 -= 4;
                v43 = v50;
              }

              while (v45 == v54);
              v44 = &v42[4 * v49 - 4];
            }

            else
            {
              v50 = ((v40 << 30) - 0x100000000) >> 32;
            }

            *v44 = v45 + 1;
            v55 = v46[v50] + v47;
          }

          v22 += v23;
        }

        while (v22 < a5);
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

void sub_25A7A243C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(_OWORD *a1, _OWORD *a2, simd_double2 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<double,double>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 8 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(_OWORD *a1, _OWORD *a2, simd_double2 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(_OWORD *a1, _OWORD *a2, simd_double2 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(_OWORD *a1, uint64_t *a2, simd_double2 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<double,double>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 8 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(_OWORD *a1, uint64_t *a2, simd_double2 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(_OWORD *a1, uint64_t *a2, simd_double2 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(uint64_t *a1, _OWORD *a2, simd_double2 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<double,double>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 8 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(uint64_t *a1, _OWORD *a2, simd_double2 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(uint64_t *a1, _OWORD *a2, simd_double2 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::detail::Power,2,false>(long double *a1, long double *a2, long double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v22 = *(*a4 + 4 * a8);
  if (v22 >= 1)
  {
    v10 = 0;
    v11 = a8 + 1;
    v23 = *(*a4 + 4 * v11);
    v12 = 8 * *(*a5 + 8 * v11);
    v20 = 8 * *(*a6 + 8 * a8);
    v21 = 8 * *(*a5 + 8 * a8);
    v13 = 8 * *(*a6 + 8 * v11);
    v19 = 8 * *(*a7 + 8 * a8);
    v14 = 8 * *(*a7 + 8 * v11);
    do
    {
      if (v23 >= 1)
      {
        v15 = a3;
        v16 = a2;
        v17 = a1;
        v18 = v23;
        do
        {
          *v15 = pow(*v17, *v16);
          v17 = (v17 + v12);
          v16 = (v16 + v13);
          v15 = (v15 + v14);
          --v18;
        }

        while (v18);
      }

      ++v10;
      a1 = (a1 + v21);
      a2 = (a2 + v20);
      a3 = (a3 + v19);
    }

    while (v10 != v22);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::detail::Power,3,false>(long double *a1, long double *a2, long double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::detail::Power,2,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Power>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v65 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v32 = powf(COERCE_FLOAT(*v9 << 16), COERCE_FLOAT(*v10 << 16));
      *v11 = (LODWORD(v32) + (HIWORD(LODWORD(v32)) & 1u) + 0x7FFF) >> 16;
      goto LABEL_71;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      if (v12 >= 1)
      {
        LODWORD(v13) = *v9 << 16;
        v14 = v12 + 1;
        do
        {
          v15 = powf(v13, COERCE_FLOAT(*v10 << 16));
          *v11++ = (LODWORD(v15) + (HIWORD(LODWORD(v15)) & 1u) + 0x7FFF) >> 16;
          ++v10;
          --v14;
        }

        while (v14 > 1);
      }

      goto LABEL_71;
    }

LABEL_14:
    memset(v61, 0, sizeof(v61));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v61, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v19 = *a2;
    memset(v62, 0, sizeof(v62));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v62, *(v19 + 24), *(v19 + 32), (*(v19 + 32) - *(v19 + 24)) >> 3);
    v20 = *a3;
    v64[0] = 0;
    v64[1] = 0;
    v63 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v63, *(v20 + 24), *(v20 + 32), (*(v20 + 32) - *(v20 + 24)) >> 3);
    memset(v56, 0, sizeof(v56));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v56, v61, &v65, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v56, 0x7FFFFFFFuLL, &__p);
    v60 = v56;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v60);
    for (i = 0; i != -9; i -= 3)
    {
      v22 = v64[i - 1];
      if (v22)
      {
        v64[i] = v22;
        operator delete(v22);
      }
    }

    v23 = v59 + 6;
    v24 = *v59;
    v25 = (v59[1] - *v59) >> 3;
    v26 = v25 - 1;
    if (v25 - 1 >= -1)
    {
      v26 = -1;
    }

    v27 = v26 + 1;
    v28 = v25 + 1;
    v29 = v25 - 1;
    v30 = v25 - 1;
    while ((v30 & 0x80000000) == 0)
    {
      v31 = 8 * (v30 & 0x7FFFFFFF);
      --v28;
      --v30;
      if (*(v24 + v31) != *(*v23 + v31))
      {
        goto LABEL_30;
      }
    }

    v28 = v27;
LABEL_30:
    v37 = v59[3];
    v38 = (v59[4] - v37) >> 3;
    v39 = v38 - 1;
    if (v38 - 1 >= -1)
    {
      v39 = -1;
    }

    v40 = v39 + 1;
    v41 = v38 + 1;
    v42 = v38 - 1;
    v43 = v38 - 1;
    while ((v43 & 0x80000000) == 0)
    {
      v44 = 8 * (v43 & 0x7FFFFFFF);
      --v41;
      --v43;
      if (*(v37 + v44) != *(*v23 + v44))
      {
        goto LABEL_37;
      }
    }

    v41 = v40;
LABEL_37:
    v45 = v25 + 1;
    while ((v29 & 0x80000000) == 0)
    {
      v46 = *(v24 + 8 * (v29 & 0x7FFFFFFF));
      --v45;
      --v29;
      if (v46)
      {
        goto LABEL_42;
      }
    }

    v45 = v27;
LABEL_42:
    v47 = v38 + 1;
    while ((v42 & 0x80000000) == 0)
    {
      v48 = *(v37 + 8 * (v42 & 0x7FFFFFFF));
      --v47;
      --v42;
      if (v48)
      {
        goto LABEL_47;
      }
    }

    v47 = v40;
LABEL_47:
    v49 = (v58 - __p) >> 2;
    if (v28 <= v41)
    {
      v50 = v41;
    }

    else
    {
      v50 = v28;
    }

    if (v28 <= v47)
    {
      v28 = v47;
    }

    if (v45 > v41)
    {
      v41 = v45;
    }

    if (v49 > v41)
    {
      v51 = 1;
    }

    else
    {
      v41 = (v58 - __p) >> 2;
      v51 = a4;
    }

    if (v49 > v28)
    {
      v52 = 2;
    }

    else
    {
      v28 = v41;
      v52 = v51;
    }

    if (v49 <= v50)
    {
      v53 = v28;
    }

    else
    {
      v53 = v50;
    }

    if (v49 <= v50)
    {
      v54 = v52;
    }

    else
    {
      v54 = 3;
    }

    if (!v53 || *(*v23 + 8 * v53 - 8) < 16)
    {
      goto LABEL_68;
    }

    switch(v54)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(v9, v10, v11, v53, *(*a1 + 48), &__p, v59, v59 + 3, v59 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(v9, v10, v11, v53, *(*a1 + 48), &__p, v59, v59 + 3, v59 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorVector<mlx::core::detail::Power>>(v9, v10, v11, v53, *(*a1 + 48), &__p, v59, v59 + 3, v59 + 6);
        break;
      default:
        LODWORD(v49) = v53;
LABEL_68:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,false,mlx::core::detail::Power>(v9, v10, v11, v49, *(*a1 + 48), &__p, v59, v59 + 3, v59 + 6);
        break;
    }

    v61[0] = &v59;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v61);
    if (__p)
    {
      v58 = __p;
      operator delete(__p);
    }

    goto LABEL_71;
  }

  if (a4 == 2)
  {
    v33 = *(v8 + 160);
    if (v33 >= 1)
    {
      LODWORD(v34) = *v10 << 16;
      v35 = v33 + 1;
      do
      {
        v36 = powf(COERCE_FLOAT(*v9 << 16), v34);
        *v11++ = (LODWORD(v36) + (HIWORD(LODWORD(v36)) & 1u) + 0x7FFF) >> 16;
        ++v9;
        --v35;
      }

      while (v35 > 1);
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
        v18 = powf(COERCE_FLOAT(*v9 << 16), COERCE_FLOAT(*v10 << 16));
        *v11++ = (LODWORD(v18) + (HIWORD(LODWORD(v18)) & 1u) + 0x7FFF) >> 16;
        ++v9;
        ++v10;
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_71:
  v55 = *MEMORY[0x277D85DE8];
}

void sub_25A7A328C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorVector<mlx::core::detail::Power>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(a1 + 2 * v60, a2 + 2 * v53, a3 + 2 * v19, a6, a7, a8, a9, v15);
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

void sub_25A7A370C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(a1 + 2 * v60, &a2[v53], a3 + 2 * v19, a6, a7, a8, a9, v15);
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

void sub_25A7A3B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(unsigned __int16 *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(&a1[v60], a2 + 2 * v53, a3 + 2 * v19, a6, a7, a8, a9, v15);
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

void sub_25A7A3F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,false,mlx::core::detail::Power>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Power,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Power,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Power,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Power,3,false>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A7A4354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v18 = *(*a4 + 4 * a8);
  if (v18 >= 1)
  {
    v11 = 0;
    v12 = *(*a7 + 8 * a8);
    v17 = 2 * *(*a5 + 8 * a8);
    v13 = 2 * *(*a6 + 8 * a8);
    do
    {
      if (v12 >= 1)
      {
        v14 = 0;
        v15 = v12 + 1;
        do
        {
          v16 = powf(COERCE_FLOAT(*(a1 + v14) << 16), COERCE_FLOAT(*(a2 + v14) << 16));
          *(a3 + v14) = (LODWORD(v16) + (HIWORD(LODWORD(v16)) & 1u) + 0x7FFF) >> 16;
          v14 += 2;
          --v15;
        }

        while (v15 > 1);
      }

      ++v11;
      a1 += v17;
      a2 += v13;
      a3 += 2 * v12;
    }

    while (v11 != v18);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v19 = *(*a4 + 4 * a8);
  if (v19 >= 1)
  {
    v11 = 0;
    v18 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    do
    {
      if (v12 >= 1)
      {
        v14 = 0;
        LODWORD(v15) = *a2 << 16;
        v16 = v12 + 1;
        do
        {
          v17 = powf(COERCE_FLOAT(*(a1 + v14) << 16), v15);
          *(a3 + v14) = (LODWORD(v17) + (HIWORD(LODWORD(v17)) & 1u) + 0x7FFF) >> 16;
          v14 += 2;
          --v16;
        }

        while (v16 > 1);
      }

      a2 += v18;
      ++v11;
      a1 += v13;
      a3 += 2 * v12;
    }

    while (v11 != v19);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 += v15;
      a2 = (a2 + v16);
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 += v15;
      a2 = (a2 + v16);
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(unsigned __int16 *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v19 = *(*a4 + 4 * a8);
  if (v19 >= 1)
  {
    v11 = 0;
    v18 = *(*a5 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a6 + 8 * a8);
    do
    {
      if (v12 >= 1)
      {
        v14 = 0;
        LODWORD(v15) = *a1 << 16;
        v16 = v12 + 1;
        do
        {
          v17 = powf(v15, COERCE_FLOAT(*(a2 + v14) << 16));
          *(a3 + v14) = (LODWORD(v17) + (HIWORD(LODWORD(v17)) & 1u) + 0x7FFF) >> 16;
          v14 += 2;
          --v16;
        }

        while (v16 > 1);
      }

      a1 += v18;
      ++v11;
      a2 += v13;
      a3 += 2 * v12;
    }

    while (v11 != v19);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(unsigned __int16 *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(unsigned __int16 *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Power,1,false>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = 2 * *(*a5 + 8 * a8);
    v13 = 2 * *(*a6 + 8 * a8);
    v14 = 2 * *(*a7 + 8 * a8);
    do
    {
      v15 = powf(COERCE_FLOAT(*a1 << 16), COERCE_FLOAT(*a2 << 16));
      *a3 = (LODWORD(v15) + (HIWORD(LODWORD(v15)) & 1u) + 0x7FFF) >> 16;
      a1 = (a1 + v12);
      a2 = (a2 + v13);
      a3 = (a3 + v14);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Power,2,false>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Power,1,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Power,3,false>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Power,2,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Power>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(v51, v9, v10, v11, *(v8 + 160));
      goto LABEL_62;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(v51, v9, v10, v11, *(v8 + 48));
      goto LABEL_62;
    }
  }

  else
  {
    if (!a4)
    {
      mlx::core::simd::pow<mlx::core::complex64_t>(*v9, v9[1], *v10, v10[1]);
      *v11 = v25;
      v11[1] = v26;
      goto LABEL_62;
    }

    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(v51, v9, v10, v11, *(*a2 + 160));
      goto LABEL_62;
    }
  }

  memset(v51, 0, sizeof(v51));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v51, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
  v12 = *a2;
  memset(v52, 0, sizeof(v52));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v52, *(v12 + 24), *(v12 + 32), (*(v12 + 32) - *(v12 + 24)) >> 3);
  v13 = *a3;
  v54[0] = 0;
  v54[1] = 0;
  v53 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v53, *(v13 + 24), *(v13 + 32), (*(v13 + 32) - *(v13 + 24)) >> 3);
  memset(v46, 0, sizeof(v46));
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v46, v51, &v55, 3uLL);
  mlx::core::collapse_contiguous_dims(v8, v46, 0x7FFFFFFFuLL, &__p);
  v50 = v46;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v50);
  for (i = 0; i != -9; i -= 3)
  {
    v15 = v54[i - 1];
    if (v15)
    {
      v54[i] = v15;
      operator delete(v15);
    }
  }

  v16 = v49 + 6;
  v17 = *v49;
  v18 = (v49[1] - *v49) >> 3;
  v19 = v18 - 1;
  if (v18 - 1 >= -1)
  {
    v19 = -1;
  }

  v20 = v19 + 1;
  v21 = v18 + 1;
  v22 = v18 - 1;
  v23 = v18 - 1;
  while ((v23 & 0x80000000) == 0)
  {
    v24 = 8 * (v23 & 0x7FFFFFFF);
    --v21;
    --v23;
    if (*(v17 + v24) != *(*v16 + v24))
    {
      goto LABEL_21;
    }
  }

  v21 = v20;
LABEL_21:
  v27 = v49[3];
  v28 = (v49[4] - v27) >> 3;
  v29 = v28 - 1;
  if (v28 - 1 >= -1)
  {
    v29 = -1;
  }

  v30 = v29 + 1;
  v31 = v28 + 1;
  v32 = v28 - 1;
  v33 = v28 - 1;
  while ((v33 & 0x80000000) == 0)
  {
    v34 = 8 * (v33 & 0x7FFFFFFF);
    --v31;
    --v33;
    if (*(v27 + v34) != *(*v16 + v34))
    {
      goto LABEL_28;
    }
  }

  v31 = v30;
LABEL_28:
  v35 = v18 + 1;
  while ((v22 & 0x80000000) == 0)
  {
    v36 = *(v17 + 8 * (v22 & 0x7FFFFFFF));
    --v35;
    --v22;
    if (v36)
    {
      goto LABEL_33;
    }
  }

  v35 = v20;
LABEL_33:
  v37 = v28 + 1;
  while ((v32 & 0x80000000) == 0)
  {
    v38 = *(v27 + 8 * (v32 & 0x7FFFFFFF));
    --v37;
    --v32;
    if (v38)
    {
      goto LABEL_38;
    }
  }

  v37 = v30;
LABEL_38:
  v39 = (v48 - __p) >> 2;
  if (v21 <= v31)
  {
    v40 = v31;
  }

  else
  {
    v40 = v21;
  }

  if (v21 <= v37)
  {
    v21 = v37;
  }

  if (v35 > v31)
  {
    v31 = v35;
  }

  if (v39 > v31)
  {
    v41 = 1;
  }

  else
  {
    v31 = (v48 - __p) >> 2;
    v41 = a4;
  }

  if (v39 > v21)
  {
    v42 = 2;
  }

  else
  {
    v21 = v31;
    v42 = v41;
  }

  if (v39 <= v40)
  {
    v43 = v21;
  }

  else
  {
    v43 = v40;
  }

  if (v39 <= v40)
  {
    v44 = v42;
  }

  else
  {
    v44 = 3;
  }

  if (!v43 || *(*v16 + 8 * v43 - 8) < 16)
  {
    goto LABEL_59;
  }

  switch(v44)
  {
    case 1:
      mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(v9, v10, v11, v43, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
      break;
    case 2:
      mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(v9, v10, v11, v43, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
      break;
    case 3:
      mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorVector<mlx::core::detail::Power>>(v9, v10, v11, v43, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
      break;
    default:
      LODWORD(v39) = v43;
LABEL_59:
      mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,false,mlx::core::detail::Power>(v9, v10, v11, v39, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
      break;
  }

  v51[0] = &v49;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v51);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

LABEL_62:
  v45 = *MEMORY[0x277D85DE8];
}

void sub_25A7A5264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(uint64_t a1, float *a2, float *a3, _DWORD *a4, int a5)
{
  if (a5 >= 1)
  {
    v8 = *a2;
    v7 = a2[1];
    v9 = a5 + 1;
    do
    {
      v10 = *a3;
      v11 = a3[1];
      a3 += 2;
      mlx::core::simd::pow<mlx::core::complex64_t>(v8, v7, v10, v11);
      *a4 = v12;
      a4[1] = v13;
      a4 += 2;
      --v9;
    }

    while (v9 > 1);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(uint64_t a1, float *a2, float *a3, _DWORD *a4, int a5)
{
  if (a5 >= 1)
  {
    v8 = *a3;
    v7 = a3[1];
    v9 = a5 + 1;
    do
    {
      v10 = *a2;
      v11 = a2[1];
      a2 += 2;
      mlx::core::simd::pow<mlx::core::complex64_t>(v10, v11, v8, v7);
      *a4 = v12;
      a4[1] = v13;
      a4 += 2;
      --v9;
    }

    while (v9 > 1);
  }
}

void mlx::core::VectorVector<mlx::core::detail::Power>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(uint64_t a1, float *a2, float *a3, _DWORD *a4, int a5)
{
  if (a5 >= 1)
  {
    v8 = a5 + 1;
    do
    {
      v9 = *a2;
      v10 = a2[1];
      a2 += 2;
      v11 = *a3;
      v12 = a3[1];
      a3 += 2;
      mlx::core::simd::pow<mlx::core::complex64_t>(v9, v10, v11, v12);
      *a4 = v13;
      a4[1] = v14;
      a4 += 2;
      --v8;
    }

    while (v8 > 1);
  }
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorVector<mlx::core::detail::Power>>(float *a1, float *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(&a1[2 * v60], &a2[2 * v53], &a3[2 * v19], a6, a7, a8, a9, v15);
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

void sub_25A7A5814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(float *a1, float *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(&a1[2 * v60], &a2[2 * v53], &a3[2 * v19], a6, a7, a8, a9, v15);
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

void sub_25A7A5C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(float *a1, float *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(&a1[2 * v60], &a2[2 * v53], &a3[2 * v19], a6, a7, a8, a9, v15);
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

void sub_25A7A6044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,false,mlx::core::detail::Power>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Power,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Power,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Power,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Power,3,false>(a1 + 8 * v60, a2 + 8 * v53, a3 + 8 * v19, a6, a7, a8, a9, v15);
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

void sub_25A7A645C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::simd::pow<mlx::core::complex64_t>(float a1, float a2, float a3, float a4)
{
  v8[0] = a3;
  v8[1] = a4;
  v6 = hypotf(a1, a2);
  v9[0] = logf(v6);
  v9[1] = atan2f(a2, a1);
  v10[0] = std::operator*[abi:ne200100]<float,0>(v8, v9);
  v10[1] = v7;
  std::exp[abi:ne200100]<float>(v10);
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 += 2 * v12;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 += 2 * v12;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 += 2 * v12;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Power,1,false>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 8 * *(*a5 + 8 * a8);
    v10 = (a1 + 4);
    v11 = (a2 + 4);
    v12 = 8 * *(*a6 + 8 * a8);
    v13 = (a3 + 4);
    v14 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::simd::pow<mlx::core::complex64_t>(*(v10 - 1), *v10, *(v11 - 1), *v11);
      *(v13 - 1) = v15;
      *v13 = v16;
      v10 = (v10 + v9);
      v11 = (v11 + v12);
      v13 = (v13 + v14);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Power,2,false>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Power,1,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Power,3,false>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Power,2,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Power>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Power,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Power>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Power,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C02C58;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Power>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Power,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Power>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Power,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C02C58;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Power>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Power,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Power>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Power,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286C02C58;
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

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Power>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Power,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Power>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Power,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Power>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Power,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Power>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Power,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Power>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Power,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Power>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Power,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail8SubtractEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286C02D50;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail8SubtractEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286C02D50;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail8SubtractEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C02D50;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail8SubtractEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail8SubtractEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail8SubtractEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEEclEv(uint64_t a1, double a2)
{
  v3 = mlx::core::scheduler::scheduler(v2);

  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail8SubtractEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Subtract>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Subtract,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1, double a2)
{
  v2 = (a1 + 32);
  switch(*(*(a1 + 32) + 56))
  {
    case 0:
      mlx::core::binary_op<BOOL,BOOL,mlx::core::detail::Subtract>(a1, (a1 + 16), v2, *(a1 + 48));
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
      mlx::core::binary_op<unsigned char,unsigned char,mlx::core::detail::Subtract>(a1, v10, v2, v9);
      return;
    case 6:
      v5 = *(a1 + 48);
      v6 = (a1 + 16);
LABEL_9:
      mlx::core::binary_op<unsigned short,unsigned short,mlx::core::detail::Subtract>(a1, v6, v2, v5);
      break;
    case 7:
      v7 = *(a1 + 48);
      v8 = (a1 + 16);
LABEL_11:
      mlx::core::binary_op<unsigned int,unsigned int,mlx::core::detail::Subtract>(a1, v8, v2, v7);
      break;
    case 8:
      v3 = *(a1 + 48);
      v4 = (a1 + 16);
LABEL_5:
      mlx::core::binary_op<unsigned long long,unsigned long long,mlx::core::detail::Subtract>(a1, v4, v2, v3);
      break;
    case 9:
      mlx::core::binary_op<half,half,mlx::core::detail::Subtract>(a1, (a1 + 16), v2, *(a1 + 48), *&a2);
      break;
    case 0xA:
      mlx::core::binary_op<float,float,mlx::core::detail::Subtract>(a1, (a1 + 16), v2, *(a1 + 48), a2);
      break;
    case 0xB:
      mlx::core::binary_op<double,double,mlx::core::detail::Subtract>(a1, (a1 + 16), v2, *(a1 + 48));
      break;
    case 0xC:
      mlx::core::binary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Subtract>(a1, (a1 + 16), v2, *(a1 + 48));
      break;
    case 0xD:
      mlx::core::binary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Subtract>(a1, (a1 + 16), v2, *(a1 + 48));
      break;
    default:
      return;
  }
}

void mlx::core::binary_op<BOOL,BOOL,mlx::core::detail::Subtract>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      *v11 = *v9 != *v10;
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
          *v11++ = v13 != (v15 & 1);
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
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::Subtract>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::Subtract>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorVector<mlx::core::detail::Subtract>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      default:
        LODWORD(v50) = v54;
LABEL_68:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,false,mlx::core::detail::NotEqual>(v9, v10, v11, v50, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
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
        *v11++ = (v37 & 1) != v35;
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
        *v11++ = (v18 & 1) != (v20 & 1);
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_71:
  v56 = *MEMORY[0x277D85DE8];
}

void sub_25A7A7990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorVector<mlx::core::detail::Subtract>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Subtract>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Subtract>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Subtract>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v61, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v54, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v53 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Subtract>,3,true>(a1 + v61, a2 + v54, a3 + v19, a6, a7, a8, a9, v15);
          v21 = v63 - v62;
          v22 = (v63 - v62) >> 2;
          if (v22)
          {
            v23 = v66;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v66 + 4 * v24;
            v26 = *v25;
            v27 = v62 + 4 * v24;
            v28 = v64;
            v29 = v61;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v62 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v61 = v29;
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
            v61 = v28[v31] + v29;
          }

          v37 = v56 - v55;
          v38 = (v56 - v55) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v55 + 4 * v40;
            v44 = v57;
            v45 = v54;
            if (v38 >= 2 && v42 == *v43 - 1)
            {
              v48 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v48 - 1;
              v49 = 4 * v48;
              v50 = v55 - 8;
              do
              {
                v51 = v47;
                *v41 = 0;
                v45 -= v44[v40] * (*v43 - 1);
                v54 = v45;
                --v47;
                v41 = &v39[v49 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v51 < 2)
                {
                  break;
                }

                v43 = &v50[v49];
                v52 = *&v50[4 * v48] - 1;
                v50 -= 4;
                v40 = v47;
              }

              while (v42 == v52);
              v41 = &v39[4 * v48 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v54 = v44[v47] + v45;
          }

          v19 += v53;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v60 = __p;
        operator delete(__p);
      }

      if (v57)
      {
        v58 = v57;
        operator delete(v57);
      }

      if (v55)
      {
        v56 = v55;
        operator delete(v55);
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

      if (v62)
      {
        v63 = v62;
        operator delete(v62);
      }

      break;
  }
}

void sub_25A7A7E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::Subtract>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::Subtract>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::Subtract>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::Subtract>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v61, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v54, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v53 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::Subtract>,3,true>(a1 + v61, &a2[v54], a3 + v19, a6, a7, a8, a9, v15);
          v21 = v63 - v62;
          v22 = (v63 - v62) >> 2;
          if (v22)
          {
            v23 = v66;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v66 + 4 * v24;
            v26 = *v25;
            v27 = v62 + 4 * v24;
            v28 = v64;
            v29 = v61;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v62 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v61 = v29;
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
            v61 = v28[v31] + v29;
          }

          v37 = v56 - v55;
          v38 = (v56 - v55) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v55 + 4 * v40;
            v44 = v57;
            v45 = v54;
            if (v38 >= 2 && v42 == *v43 - 1)
            {
              v48 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v48 - 1;
              v49 = 4 * v48;
              v50 = v55 - 8;
              do
              {
                v51 = v47;
                *v41 = 0;
                v45 -= v44[v40] * (*v43 - 1);
                v54 = v45;
                --v47;
                v41 = &v39[v49 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v51 < 2)
                {
                  break;
                }

                v43 = &v50[v49];
                v52 = *&v50[4 * v48] - 1;
                v50 -= 4;
                v40 = v47;
              }

              while (v42 == v52);
              v41 = &v39[4 * v48 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v54 = v44[v47] + v45;
          }

          v19 += v53;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v60 = __p;
        operator delete(__p);
      }

      if (v57)
      {
        v58 = v57;
        operator delete(v57);
      }

      if (v55)
      {
        v56 = v55;
        operator delete(v55);
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

      if (v62)
      {
        v63 = v62;
        operator delete(v62);
      }

      break;
  }
}

void sub_25A7A8220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::Subtract>>(unsigned __int8 *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::Subtract>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::Subtract>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::Subtract>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v61, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v54, a6, a8, v15);
      if (a5 >= 1)
      {
        v18 = a5;
        v19 = 0;
        v53 = *(*a9 + 8 * a4 - 32);
        v20 = v18;
        do
        {
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::Subtract>,3,true>(&a1[v61], a2 + v54, a3 + v19, a6, a7, a8, a9, v15);
          v21 = v63 - v62;
          v22 = (v63 - v62) >> 2;
          if (v22)
          {
            v23 = v66;
            v24 = ((v21 << 30) - 0x100000000) >> 32;
            v25 = v66 + 4 * v24;
            v26 = *v25;
            v27 = v62 + 4 * v24;
            v28 = v64;
            v29 = v61;
            if (v22 >= 2 && v26 == *v27 - 1)
            {
              v32 = (v21 >> 2) & 0x7FFFFFFF;
              v31 = v32 - 1;
              v33 = 4 * v32;
              v34 = v62 - 8;
              do
              {
                v35 = v31;
                *v25 = 0;
                v29 -= v28[v24] * (*v27 - 1);
                v61 = v29;
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
            v61 = v28[v31] + v29;
          }

          v37 = v56 - v55;
          v38 = (v56 - v55) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v55 + 4 * v40;
            v44 = v57;
            v45 = v54;
            if (v38 >= 2 && v42 == *v43 - 1)
            {
              v48 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v48 - 1;
              v49 = 4 * v48;
              v50 = v55 - 8;
              do
              {
                v51 = v47;
                *v41 = 0;
                v45 -= v44[v40] * (*v43 - 1);
                v54 = v45;
                --v47;
                v41 = &v39[v49 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v51 < 2)
                {
                  break;
                }

                v43 = &v50[v49];
                v52 = *&v50[4 * v48] - 1;
                v50 -= 4;
                v40 = v47;
              }

              while (v42 == v52);
              v41 = &v39[4 * v48 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v54 = v44[v47] + v45;
          }

          v19 += v53;
        }

        while (v19 < v20);
      }

      if (__p)
      {
        v60 = __p;
        operator delete(__p);
      }

      if (v57)
      {
        v58 = v57;
        operator delete(v57);
      }

      if (v55)
      {
        v56 = v55;
        operator delete(v55);
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

      if (v62)
      {
        v63 = v62;
        operator delete(v62);
      }

      break;
  }
}

void sub_25A7A8634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Subtract>,1,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    do
    {
      if (v12 >= 1)
      {
        v13 = 0;
        v14 = v12 + 1;
        do
        {
          *(a3 + v13) = (*(result + v13) & 1) != (*(a2 + v13) & 1);
          ++v13;
          --v14;
        }

        while (v14 > 1);
      }

      a3 += v12;
      result += v10;
      a2 += v11;
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Subtract>,2,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a5 + 8 * a8);
    v16 = *(*a6 + 8 * a8);
    v17 = *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Subtract>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}