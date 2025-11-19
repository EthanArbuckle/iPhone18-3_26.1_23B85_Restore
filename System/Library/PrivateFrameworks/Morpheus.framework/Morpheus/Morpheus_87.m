void sub_25A734B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,false,mlx::core::detail::Maximum>(int *a1, int *a2, int *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Maximum,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Maximum,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          v21 = *v14;
          if (*v14 <= *v13)
          {
            v21 = *v13;
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
          mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Maximum,3,false>(&v14[v63], &v13[v56], &v12[v23], a6, a7, a8, a9, v15);
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

void sub_25A734F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(unsigned int *result, unsigned int *a2, unsigned int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v20 = vmaxq_u32(*&result[v17 + 4], *&a2[v17 + 4]);
          *v19 = vmaxq_u32(*&result[v17], *&a2[v17]);
          v19[1] = v20;
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
          if (v22 <= v25)
          {
            v22 = v24;
          }

          *v14++ = v22;
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

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(unsigned int *result, unsigned int *a2, unsigned int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(unsigned int *result, unsigned int *a2, unsigned int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(unsigned int *result, unsigned int *a2, unsigned int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a6 + 8 * a8);
    v11 = *(*a7 + 8 * a8);
    v12 = 4 * *(*a5 + 8 * a8);
    do
    {
      v13 = *a2;
      v14 = v11;
      v15 = a3;
      v16 = result;
      if (v11 >= 8)
      {
        v17 = 0;
        v18 = vdupq_n_s32(v13);
        v14 = v11;
        do
        {
          v19 = v14;
          v20 = &a3[v17];
          v21 = vmaxq_u32(*&result[v17 + 4], v18);
          *v20 = vmaxq_u32(*&result[v17], v18);
          v20[1] = v21;
          v14 -= 8;
          v17 += 8;
        }

        while (v19 > 0xF);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v24 = *v16++;
          v23 = v24;
          if (v24 <= v13)
          {
            v23 = v13;
          }

          *v15++ = v23;
          --v22;
        }

        while (v22 > 1);
      }

      a3 += v11;
      result = (result + v12);
      a2 += v10;
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(unsigned int *result, unsigned int *a2, unsigned int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(unsigned int *result, unsigned int *a2, unsigned int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(unsigned int *result, unsigned int *a2, unsigned int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a7 + 8 * a8);
    v12 = 4 * *(*a6 + 8 * a8);
    do
    {
      v13 = *result;
      v14 = v11;
      v15 = a3;
      v16 = a2;
      if (v11 >= 8)
      {
        v17 = 0;
        v18 = vdupq_n_s32(v13);
        v14 = v11;
        do
        {
          v19 = v14;
          v20 = &a3[v17];
          v21 = vmaxq_u32(v18, *&a2[v17 + 4]);
          *v20 = vmaxq_u32(v18, *&a2[v17]);
          v20[1] = v21;
          v14 -= 8;
          v17 += 8;
        }

        while (v19 > 0xF);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v24 = *v16++;
          v23 = v24;
          if (v13 > v24)
          {
            v23 = v13;
          }

          *v15++ = v23;
          --v22;
        }

        while (v22 > 1);
      }

      a3 += v11;
      result += v10;
      a2 = (a2 + v12);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(unsigned int *result, unsigned int *a2, unsigned int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(unsigned int *result, unsigned int *a2, unsigned int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Maximum,2,false>(int *result, int *a2, _DWORD *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          v22 = *v21;
          if (*v21 <= *v20)
          {
            v22 = *v20;
          }

          *v19 = v22;
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

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Maximum,3,false>(int *result, int *a2, _DWORD *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Maximum,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<unsigned long long,unsigned long long,mlx::core::detail::Maximum>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v84 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v39 = *(v8 + 160);
      v40 = v10->i64[0];
      if (v39 < 4)
      {
        v44 = *(v8 + 160);
      }

      else
      {
        v41 = vdupq_n_s64(v40);
        do
        {
          v43 = *v9;
          v42 = v9[1];
          v9 += 2;
          *v11 = vbslq_s8(vcgtq_u64(v43, v41), v43, v41);
          v11[1] = vbslq_s8(vcgtq_u64(v42, v41), v42, v41);
          v11 += 2;
          v44 = v39 - 4;
          v18 = v39 > 7;
          v39 -= 4;
        }

        while (v18);
      }

      if (v44 >= 1)
      {
        v71 = v44 + 1;
        do
        {
          v73 = v9->i64[0];
          v9 = (v9 + 8);
          v72 = v73;
          if (v73 <= v40)
          {
            v72 = v40;
          }

          v11->i64[0] = v72;
          v11 = (v11 + 8);
          --v71;
        }

        while (v71 > 1);
      }
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_13;
      }

      v19 = *(v8 + 48);
      if (v19 < 4)
      {
        v24 = *(v8 + 48);
      }

      else
      {
        do
        {
          v21 = *v9;
          v20 = v9[1];
          v9 += 2;
          v23 = *v10;
          v22 = v10[1];
          v10 += 2;
          *v11 = vbslq_s8(vcgtq_u64(v21, v23), v21, v23);
          v11[1] = vbslq_s8(vcgtq_u64(v20, v22), v20, v22);
          v11 += 2;
          v24 = v19 - 4;
          v18 = v19 > 7;
          v19 -= 4;
        }

        while (v18);
      }

      if (v24 >= 1)
      {
        v66 = v24 + 1;
        do
        {
          v68 = v9->i64[0];
          v9 = (v9 + 8);
          v67 = v68;
          v70 = v10->i64[0];
          v10 = (v10 + 8);
          v69 = v70;
          if (v67 <= v70)
          {
            v67 = v69;
          }

          v11->i64[0] = v67;
          v11 = (v11 + 8);
          --v66;
        }

        while (v66 > 1);
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
        v13 = v9->i64[0];
        if (v12 < 4)
        {
          v17 = *(*a2 + 160);
        }

        else
        {
          v14 = vdupq_n_s64(v13);
          do
          {
            v16 = *v10;
            v15 = v10[1];
            v10 += 2;
            *v11 = vbslq_s8(vcgtq_u64(v14, v16), v14, v16);
            v11[1] = vbslq_s8(vcgtq_u64(v14, v15), v14, v15);
            v11 += 2;
            v17 = v12 - 4;
            v18 = v12 > 7;
            v12 -= 4;
          }

          while (v18);
        }

        if (v17 >= 1)
        {
          v63 = v17 + 1;
          do
          {
            v65 = v10->i64[0];
            v10 = (v10 + 8);
            v64 = v65;
            if (v13 > v65)
            {
              v64 = v13;
            }

            v11->i64[0] = v64;
            v11 = (v11 + 8);
            --v63;
          }

          while (v63 > 1);
        }

        goto LABEL_92;
      }

LABEL_13:
      memset(v80, 0, sizeof(v80));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v80, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
      v25 = *a2;
      memset(v81, 0, sizeof(v81));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v81, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 3);
      v26 = *a3;
      v83[0] = 0;
      v83[1] = 0;
      v82 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v82, *(v26 + 24), *(v26 + 32), (*(v26 + 32) - *(v26 + 24)) >> 3);
      memset(v75, 0, sizeof(v75));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v75, v80, &v84, 3uLL);
      mlx::core::collapse_contiguous_dims(v8, v75, 0x7FFFFFFFuLL, &__p);
      v79 = v75;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v79);
      for (i = 0; i != -9; i -= 3)
      {
        v28 = v83[i - 1];
        if (v28)
        {
          v83[i] = v28;
          operator delete(v28);
        }
      }

      v29 = v78 + 6;
      v30 = *v78;
      v31 = (v78[1] - *v78) >> 3;
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
          goto LABEL_31;
        }
      }

      v34 = v33;
LABEL_31:
      v45 = v78[3];
      v46 = (v78[4] - v45) >> 3;
      v47 = v46 - 1;
      if (v46 - 1 >= -1)
      {
        v47 = -1;
      }

      v48 = v47 + 1;
      v49 = v46 + 1;
      v50 = v46 - 1;
      v51 = v46 - 1;
      while ((v51 & 0x80000000) == 0)
      {
        v52 = 8 * (v51 & 0x7FFFFFFF);
        --v49;
        --v51;
        if (*(v45 + v52) != *(*v29 + v52))
        {
          goto LABEL_38;
        }
      }

      v49 = v48;
LABEL_38:
      v53 = v31 + 1;
      while ((v35 & 0x80000000) == 0)
      {
        v54 = *(v30 + 8 * (v35 & 0x7FFFFFFF));
        --v53;
        --v35;
        if (v54)
        {
          goto LABEL_43;
        }
      }

      v53 = v33;
LABEL_43:
      v55 = v46 + 1;
      while ((v50 & 0x80000000) == 0)
      {
        v56 = *(v45 + 8 * (v50 & 0x7FFFFFFF));
        --v55;
        --v50;
        if (v56)
        {
          goto LABEL_48;
        }
      }

      v55 = v48;
LABEL_48:
      v57 = (v77 - __p) >> 2;
      if (v34 <= v49)
      {
        v58 = v49;
      }

      else
      {
        v58 = v34;
      }

      if (v34 <= v55)
      {
        v34 = v55;
      }

      if (v53 > v49)
      {
        v49 = v53;
      }

      if (v57 > v49)
      {
        v59 = 1;
      }

      else
      {
        v49 = (v77 - __p) >> 2;
        v59 = a4;
      }

      if (v57 > v34)
      {
        v60 = 2;
      }

      else
      {
        v34 = v49;
        v60 = v59;
      }

      if (v57 <= v58)
      {
        v61 = v34;
      }

      else
      {
        v61 = v58;
      }

      if (v57 <= v58)
      {
        v62 = v60;
      }

      else
      {
        v62 = 3;
      }

      if (!v61 || *(*v29 + 8 * v61 - 8) < 16)
      {
        goto LABEL_69;
      }

      switch(v62)
      {
        case 1:
          mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::ScalarVector<mlx::core::detail::Maximum>>(v9, v10, v11, v61, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
          break;
        case 2:
          mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorScalar<mlx::core::detail::Maximum>>(v9, v10, v11, v61, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
          break;
        case 3:
          mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorVector<mlx::core::detail::Maximum>>(v9, v10, v11, v61, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
          break;
        default:
          LODWORD(v57) = v61;
LABEL_69:
          mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,false,mlx::core::detail::Maximum>(v9->i64, v10->i64, v11->i64, v57, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
          break;
      }

      v80[0] = &v78;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v80);
      if (__p)
      {
        v77 = __p;
        operator delete(__p);
      }

      goto LABEL_92;
    }

    v38 = v9->i64[0];
    if (v9->i64[0] <= v10->i64[0])
    {
      v38 = v10->i64[0];
    }

    v11->i64[0] = v38;
  }

LABEL_92:
  v74 = *MEMORY[0x277D85DE8];
}

void sub_25A735DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorVector<mlx::core::detail::Maximum>>(unint64_t *a1, unint64_t *a2, unint64_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A736248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorScalar<mlx::core::detail::Maximum>>(unint64_t *a1, unint64_t *a2, unint64_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A736660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::ScalarVector<mlx::core::detail::Maximum>>(unint64_t *a1, unint64_t *a2, unint64_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A736A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,false,mlx::core::detail::Maximum>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Maximum,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Maximum,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          v21 = *v14;
          if (*v14 <= *v13)
          {
            v21 = *v13;
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
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Maximum,3,false>(&v14[v63], &v13[v56], &v12[v23], a6, a7, a8, a9, v15);
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

void sub_25A736E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(unint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v20 = vbslq_s8(vcgtq_u64(*&result[v17 + 2], *&a2[v17 + 2]), *&result[v17 + 2], *&a2[v17 + 2]);
          *v19 = vbslq_s8(vcgtq_u64(*&result[v17], *&a2[v17]), *&result[v17], *&a2[v17]);
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
          if (v22 <= v25)
          {
            v22 = v24;
          }

          *v14++ = v22;
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

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(unint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(unint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(unint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      v13 = *a2;
      v14 = v11;
      v15 = a3;
      v16 = result;
      if (v11 >= 4)
      {
        v17 = 0;
        v18 = vdupq_n_s64(v13);
        v14 = v11;
        do
        {
          v19 = v14;
          v20 = &a3[v17];
          v21 = vbslq_s8(vcgtq_u64(*&result[v17 + 2], v18), *&result[v17 + 2], v18);
          *v20 = vbslq_s8(vcgtq_u64(*&result[v17], v18), *&result[v17], v18);
          v20[1] = v21;
          v14 -= 4;
          v17 += 4;
        }

        while (v19 > 7);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v24 = *v16++;
          v23 = v24;
          if (v24 <= v13)
          {
            v23 = v13;
          }

          *v15++ = v23;
          --v22;
        }

        while (v22 > 1);
      }

      a3 += v11;
      result = (result + v12);
      a2 += v10;
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(unint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(unint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(unint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      v13 = *result;
      v14 = v11;
      v15 = a3;
      v16 = a2;
      if (v11 >= 4)
      {
        v17 = 0;
        v18 = vdupq_n_s64(v13);
        v14 = v11;
        do
        {
          v19 = v14;
          v20 = &a3[v17];
          v21 = vbslq_s8(vcgtq_u64(v18, *&a2[v17 + 2]), v18, *&a2[v17 + 2]);
          *v20 = vbslq_s8(vcgtq_u64(v18, *&a2[v17]), v18, *&a2[v17]);
          v20[1] = v21;
          v14 -= 4;
          v17 += 4;
        }

        while (v19 > 7);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v24 = *v16++;
          v23 = v24;
          if (v13 > v24)
          {
            v23 = v13;
          }

          *v15++ = v23;
          --v22;
        }

        while (v22 > 1);
      }

      a3 += v11;
      result += v10;
      a2 = (a2 + v12);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(unint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(unint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Maximum,2,false>(uint64_t *result, uint64_t *a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int a8)
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
          v25 = *v23;
          if (*v23 <= *v22)
          {
            v25 = *v22;
          }

          *v21 = v25;
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

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Maximum,3,false>(uint64_t *result, uint64_t *a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Maximum,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<signed char,signed char,mlx::core::detail::Maximum>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v81 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v37 = *(v8 + 160);
      v38 = *v10;
      if (v37 < 16)
      {
        v41 = *(v8 + 160);
      }

      else
      {
        v39 = vdupq_n_s8(v38);
        do
        {
          v40 = *v9;
          v9 += 16;
          *v11++ = vmaxq_s8(v40, v39);
          v41 = v37 - 16;
          v17 = v37 > 0x1F;
          v37 -= 16;
        }

        while (v17);
      }

      if (v41 >= 1)
      {
        v68 = v41 + 1;
        do
        {
          v70 = *v9++;
          v69 = v70;
          if (v70 <= v38)
          {
            v69 = v38;
          }

          v11->i8[0] = v69;
          v11 = (v11 + 1);
          --v68;
        }

        while (v68 > 1);
      }
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_13;
      }

      v18 = *(v8 + 48);
      if (v18 < 16)
      {
        v22 = *(v8 + 48);
      }

      else
      {
        do
        {
          v19 = *v9;
          v9 += 16;
          v20 = v19;
          v21 = *v10;
          v10 += 16;
          *v11++ = vmaxq_s8(v20, v21);
          v22 = v18 - 16;
          v17 = v18 > 0x1F;
          v18 -= 16;
        }

        while (v17);
      }

      if (v22 >= 1)
      {
        v63 = v22 + 1;
        do
        {
          v65 = *v9++;
          v64 = v65;
          v67 = *v10++;
          v66 = v67;
          if (v64 <= v67)
          {
            LOBYTE(v64) = v66;
          }

          v11->i8[0] = v64;
          v11 = (v11 + 1);
          --v63;
        }

        while (v63 > 1);
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
        v13 = *v9;
        if (v12 < 16)
        {
          v16 = *(*a2 + 160);
        }

        else
        {
          v14 = vdupq_n_s8(v13);
          do
          {
            v15 = *v10;
            v10 += 16;
            *v11++ = vmaxq_s8(v14, v15);
            v16 = v12 - 16;
            v17 = v12 > 0x1F;
            v12 -= 16;
          }

          while (v17);
        }

        if (v16 >= 1)
        {
          v60 = v16 + 1;
          do
          {
            v62 = *v10++;
            v61 = v62;
            if (v13 > v62)
            {
              v61 = v13;
            }

            v11->i8[0] = v61;
            v11 = (v11 + 1);
            --v60;
          }

          while (v60 > 1);
        }

        goto LABEL_92;
      }

LABEL_13:
      memset(v77, 0, sizeof(v77));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v77, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
      v23 = *a2;
      memset(v78, 0, sizeof(v78));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v78, *(v23 + 24), *(v23 + 32), (*(v23 + 32) - *(v23 + 24)) >> 3);
      v24 = *a3;
      v80[0] = 0;
      v80[1] = 0;
      v79 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v79, *(v24 + 24), *(v24 + 32), (*(v24 + 32) - *(v24 + 24)) >> 3);
      memset(v72, 0, sizeof(v72));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v72, v77, &v81, 3uLL);
      mlx::core::collapse_contiguous_dims(v8, v72, 0x7FFFFFFFuLL, &__p);
      v76 = v72;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v76);
      for (i = 0; i != -9; i -= 3)
      {
        v26 = v80[i - 1];
        if (v26)
        {
          v80[i] = v26;
          operator delete(v26);
        }
      }

      v27 = v75 + 6;
      v28 = *v75;
      v29 = (v75[1] - *v75) >> 3;
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
        if (*(v28 + v35) != *(*v27 + v35))
        {
          goto LABEL_31;
        }
      }

      v32 = v31;
LABEL_31:
      v42 = v75[3];
      v43 = (v75[4] - v42) >> 3;
      v44 = v43 - 1;
      if (v43 - 1 >= -1)
      {
        v44 = -1;
      }

      v45 = v44 + 1;
      v46 = v43 + 1;
      v47 = v43 - 1;
      v48 = v43 - 1;
      while ((v48 & 0x80000000) == 0)
      {
        v49 = 8 * (v48 & 0x7FFFFFFF);
        --v46;
        --v48;
        if (*(v42 + v49) != *(*v27 + v49))
        {
          goto LABEL_38;
        }
      }

      v46 = v45;
LABEL_38:
      v50 = v29 + 1;
      while ((v33 & 0x80000000) == 0)
      {
        v51 = *(v28 + 8 * (v33 & 0x7FFFFFFF));
        --v50;
        --v33;
        if (v51)
        {
          goto LABEL_43;
        }
      }

      v50 = v31;
LABEL_43:
      v52 = v43 + 1;
      while ((v47 & 0x80000000) == 0)
      {
        v53 = *(v42 + 8 * (v47 & 0x7FFFFFFF));
        --v52;
        --v47;
        if (v53)
        {
          goto LABEL_48;
        }
      }

      v52 = v45;
LABEL_48:
      v54 = (v74 - __p) >> 2;
      if (v32 <= v46)
      {
        v55 = v46;
      }

      else
      {
        v55 = v32;
      }

      if (v32 <= v52)
      {
        v32 = v52;
      }

      if (v50 > v46)
      {
        v46 = v50;
      }

      if (v54 > v46)
      {
        v56 = 1;
      }

      else
      {
        v46 = (v74 - __p) >> 2;
        v56 = a4;
      }

      if (v54 > v32)
      {
        v57 = 2;
      }

      else
      {
        v32 = v46;
        v57 = v56;
      }

      if (v54 <= v55)
      {
        v58 = v32;
      }

      else
      {
        v58 = v55;
      }

      if (v54 <= v55)
      {
        v59 = v57;
      }

      else
      {
        v59 = 3;
      }

      if (!v58 || *(*v27 + 8 * v58 - 8) < 16)
      {
        goto LABEL_69;
      }

      switch(v59)
      {
        case 1:
          mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::ScalarVector<mlx::core::detail::Maximum>>(v9, v10, v11, v58, *(*a1 + 48), &__p, v75, v75 + 3, v75 + 6);
          break;
        case 2:
          mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::VectorScalar<mlx::core::detail::Maximum>>(v9, v10, v11, v58, *(*a1 + 48), &__p, v75, v75 + 3, v75 + 6);
          break;
        case 3:
          mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::VectorVector<mlx::core::detail::Maximum>>(v9, v10, v11, v58, *(*a1 + 48), &__p, v75, v75 + 3, v75 + 6);
          break;
        default:
          LODWORD(v54) = v58;
LABEL_69:
          mlx::core::binary_op_dispatch_dims<signed char,signed char,false,mlx::core::detail::Maximum>(v9, v10, v11, v54, *(*a1 + 48), &__p, v75, v75 + 3, v75 + 6);
          break;
      }

      v77[0] = &v75;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v77);
      if (__p)
      {
        v74 = __p;
        operator delete(__p);
      }

      goto LABEL_92;
    }

    v36 = *v9;
    if (v36 <= *v10)
    {
      LOBYTE(v36) = *v10;
    }

    v11->i8[0] = v36;
  }

LABEL_92:
  v71 = *MEMORY[0x277D85DE8];
}

void sub_25A737CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::VectorVector<mlx::core::detail::Maximum>>(char *a1, char *a2, _BYTE *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A738150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::VectorScalar<mlx::core::detail::Maximum>>(char *a1, unsigned __int8 *a2, _BYTE *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A738564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::ScalarVector<mlx::core::detail::Maximum>>(unsigned __int8 *a1, char *a2, _BYTE *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A738978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<signed char,signed char,false,mlx::core::detail::Maximum>(char *a1, _BYTE *a2, _BYTE *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Maximum,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Maximum,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = **a7;
        v19 = **a8;
        v20 = **a9;
        do
        {
          v21 = *v14;
          if (v21 <= *v13)
          {
            LOBYTE(v21) = *v13;
          }

          *v12 = v21;
          v12 += v20;
          v14 += v18;
          v13 += v19;
          --v17;
        }

        while (v17);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v66, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v59, a6, a8, v15);
      if (a5 >= 1)
      {
        v23 = a5;
        v24 = 0;
        v58 = (*a9)[a4 - 4];
        v25 = v23;
        do
        {
          mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Maximum,3,false>(&v14[v66], &v13[v59], &v12[v24], a6, a7, a8, a9, v15);
          v26 = v68 - v67;
          v27 = (v68 - v67) >> 2;
          if (v27)
          {
            v28 = v71;
            v29 = ((v26 << 30) - 0x100000000) >> 32;
            v30 = v71 + 4 * v29;
            v31 = *v30;
            v32 = v67 + 4 * v29;
            v33 = v69;
            v34 = v66;
            if (v27 >= 2 && v31 == *v32 - 1)
            {
              v37 = (v26 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v67 - 8;
              do
              {
                v40 = v36;
                *v30 = 0;
                v34 -= v33[v29] * (*v32 - 1);
                v66 = v34;
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
            v66 = v33[v36] + v34;
          }

          v42 = v61 - v60;
          v43 = (v61 - v60) >> 2;
          if (v43)
          {
            v44 = __p;
            v45 = ((v42 << 30) - 0x100000000) >> 32;
            v46 = __p + 4 * v45;
            v47 = *v46;
            v48 = v60 + 4 * v45;
            v49 = v62;
            v50 = v59;
            if (v43 >= 2 && v47 == *v48 - 1)
            {
              v53 = (v42 >> 2) & 0x7FFFFFFF;
              v52 = v53 - 1;
              v54 = 4 * v53;
              v55 = v60 - 8;
              do
              {
                v56 = v52;
                *v46 = 0;
                v50 -= v49[v45] * (*v48 - 1);
                v59 = v50;
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
            v59 = v49[v52] + v50;
          }

          v24 += v58;
        }

        while (v24 < v25);
      }

      if (__p)
      {
        v65 = __p;
        operator delete(__p);
      }

      if (v62)
      {
        v63 = v62;
        operator delete(v62);
      }

      if (v60)
      {
        v61 = v60;
        operator delete(v60);
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

      if (v67)
      {
        v68 = v67;
        operator delete(v67);
      }

      break;
  }
}

void sub_25A738D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(char *result, char *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      v13 = v12;
      v14 = a3;
      v15 = a2;
      v16 = result;
      if (v12 >= 16)
      {
        v17 = 0;
        v18 = v12 + 16;
        do
        {
          *&a3[v17] = vmaxq_s8(*&result[v17], *&a2[v17]);
          v17 += 16;
          v18 -= 16;
        }

        while (v18 > 0x1F);
        v16 = &result[v17];
        v15 = &a2[v17];
        v14 = &a3[v17];
        v13 = v12 - v17;
      }

      if (v13 >= 1)
      {
        v19 = v13 + 1;
        do
        {
          v21 = *v16++;
          v20 = v21;
          v23 = *v15++;
          v22 = v23;
          if (v20 <= v23)
          {
            LOBYTE(v20) = v22;
          }

          *v14++ = v20;
          --v19;
        }

        while (v19 > 1);
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

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(char *result, char *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(char *result, char *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(char *result, unsigned __int8 *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      v14 = v12;
      v15 = a3;
      v16 = result;
      if (v12 >= 16)
      {
        v17 = 0;
        v18 = vdupq_n_s8(v13);
        v14 = v12;
        do
        {
          v19 = v14;
          *&a3[v17] = vmaxq_s8(*&result[v17], v18);
          v14 -= 16;
          v17 += 16;
        }

        while (v19 > 0x1F);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v20 = v14 + 1;
        do
        {
          v22 = *v16++;
          v21 = v22;
          if (v22 <= v13)
          {
            v21 = v13;
          }

          *v15++ = v21;
          --v20;
        }

        while (v20 > 1);
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

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(char *result, unsigned __int8 *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(char *result, unsigned __int8 *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(unsigned __int8 *result, char *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      v13 = *result;
      v14 = v12;
      v15 = a3;
      v16 = a2;
      if (v12 >= 16)
      {
        v17 = 0;
        v18 = vdupq_n_s8(v13);
        v14 = v12;
        do
        {
          v19 = v14;
          *&a3[v17] = vmaxq_s8(v18, *&a2[v17]);
          v14 -= 16;
          v17 += 16;
        }

        while (v19 > 0x1F);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v20 = v14 + 1;
        do
        {
          v22 = *v16++;
          v21 = v22;
          if (v13 > v22)
          {
            v21 = v13;
          }

          *v15++ = v21;
          --v20;
        }

        while (v20 > 1);
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

unsigned __int8 *mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(unsigned __int8 *result, char *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(unsigned __int8 *result, char *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Maximum,2,false>(char *result, _BYTE *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = a8 + 1;
    do
    {
      v14 = *(*a4 + 4 * v13);
      if (v14 >= 1)
      {
        v15 = *(*a5 + 8 * v13);
        v16 = *(*a6 + 8 * v13);
        v17 = *(*a7 + 8 * v13);
        v18 = result;
        v19 = a2;
        v20 = a3;
        do
        {
          v21 = *v18;
          if (v21 <= *v19)
          {
            LOBYTE(v21) = *v19;
          }

          *v20 = v21;
          v20 += v17;
          v18 += v15;
          v19 += v16;
          --v14;
        }

        while (v14);
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

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Maximum,3,false>(char *result, _BYTE *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Maximum,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<short,short,mlx::core::detail::Maximum>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v84 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v39 = *(v8 + 160);
      v40 = v10->u16[0];
      if (v39 < 16)
      {
        v44 = *(v8 + 160);
      }

      else
      {
        v41 = vdupq_n_s16(v40);
        do
        {
          v43 = *v9;
          v42 = v9[1];
          v9 += 2;
          *v11 = vmaxq_s16(v43, v41);
          v11[1] = vmaxq_s16(v42, v41);
          v11 += 2;
          v44 = v39 - 16;
          v18 = v39 > 0x1F;
          v39 -= 16;
        }

        while (v18);
      }

      if (v44 >= 1)
      {
        v71 = v44 + 1;
        do
        {
          v73 = v9->i16[0];
          v9 = (v9 + 2);
          v72 = v73;
          if (v73 <= v40)
          {
            v72 = v40;
          }

          v11->i16[0] = v72;
          v11 = (v11 + 2);
          --v71;
        }

        while (v71 > 1);
      }
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_13;
      }

      v19 = *(v8 + 48);
      if (v19 < 16)
      {
        v24 = *(v8 + 48);
      }

      else
      {
        do
        {
          v21 = *v9;
          v20 = v9[1];
          v9 += 2;
          v23 = *v10;
          v22 = v10[1];
          v10 += 2;
          *v11 = vmaxq_s16(v21, v23);
          v11[1] = vmaxq_s16(v20, v22);
          v11 += 2;
          v24 = v19 - 16;
          v18 = v19 > 0x1F;
          v19 -= 16;
        }

        while (v18);
      }

      if (v24 >= 1)
      {
        v66 = v24 + 1;
        do
        {
          v68 = v9->i16[0];
          v9 = (v9 + 2);
          v67 = v68;
          v70 = v10->i16[0];
          v10 = (v10 + 2);
          v69 = v70;
          if (v67 <= v70)
          {
            LOWORD(v67) = v69;
          }

          v11->i16[0] = v67;
          v11 = (v11 + 2);
          --v66;
        }

        while (v66 > 1);
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
        v13 = v9->u16[0];
        if (v12 < 16)
        {
          v17 = *(*a2 + 160);
        }

        else
        {
          v14 = vdupq_n_s16(v13);
          do
          {
            v16 = *v10;
            v15 = v10[1];
            v10 += 2;
            *v11 = vmaxq_s16(v14, v16);
            v11[1] = vmaxq_s16(v14, v15);
            v11 += 2;
            v17 = v12 - 16;
            v18 = v12 > 0x1F;
            v12 -= 16;
          }

          while (v18);
        }

        if (v17 >= 1)
        {
          v63 = v17 + 1;
          do
          {
            v65 = v10->i16[0];
            v10 = (v10 + 2);
            v64 = v65;
            if (v13 > v65)
            {
              v64 = v13;
            }

            v11->i16[0] = v64;
            v11 = (v11 + 2);
            --v63;
          }

          while (v63 > 1);
        }

        goto LABEL_92;
      }

LABEL_13:
      memset(v80, 0, sizeof(v80));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v80, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
      v25 = *a2;
      memset(v81, 0, sizeof(v81));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v81, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 3);
      v26 = *a3;
      v83[0] = 0;
      v83[1] = 0;
      v82 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v82, *(v26 + 24), *(v26 + 32), (*(v26 + 32) - *(v26 + 24)) >> 3);
      memset(v75, 0, sizeof(v75));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v75, v80, &v84, 3uLL);
      mlx::core::collapse_contiguous_dims(v8, v75, 0x7FFFFFFFuLL, &__p);
      v79 = v75;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v79);
      for (i = 0; i != -9; i -= 3)
      {
        v28 = v83[i - 1];
        if (v28)
        {
          v83[i] = v28;
          operator delete(v28);
        }
      }

      v29 = v78 + 6;
      v30 = *v78;
      v31 = (v78[1] - *v78) >> 3;
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
          goto LABEL_31;
        }
      }

      v34 = v33;
LABEL_31:
      v45 = v78[3];
      v46 = (v78[4] - v45) >> 3;
      v47 = v46 - 1;
      if (v46 - 1 >= -1)
      {
        v47 = -1;
      }

      v48 = v47 + 1;
      v49 = v46 + 1;
      v50 = v46 - 1;
      v51 = v46 - 1;
      while ((v51 & 0x80000000) == 0)
      {
        v52 = 8 * (v51 & 0x7FFFFFFF);
        --v49;
        --v51;
        if (*(v45 + v52) != *(*v29 + v52))
        {
          goto LABEL_38;
        }
      }

      v49 = v48;
LABEL_38:
      v53 = v31 + 1;
      while ((v35 & 0x80000000) == 0)
      {
        v54 = *(v30 + 8 * (v35 & 0x7FFFFFFF));
        --v53;
        --v35;
        if (v54)
        {
          goto LABEL_43;
        }
      }

      v53 = v33;
LABEL_43:
      v55 = v46 + 1;
      while ((v50 & 0x80000000) == 0)
      {
        v56 = *(v45 + 8 * (v50 & 0x7FFFFFFF));
        --v55;
        --v50;
        if (v56)
        {
          goto LABEL_48;
        }
      }

      v55 = v48;
LABEL_48:
      v57 = (v77 - __p) >> 2;
      if (v34 <= v49)
      {
        v58 = v49;
      }

      else
      {
        v58 = v34;
      }

      if (v34 <= v55)
      {
        v34 = v55;
      }

      if (v53 > v49)
      {
        v49 = v53;
      }

      if (v57 > v49)
      {
        v59 = 1;
      }

      else
      {
        v49 = (v77 - __p) >> 2;
        v59 = a4;
      }

      if (v57 > v34)
      {
        v60 = 2;
      }

      else
      {
        v34 = v49;
        v60 = v59;
      }

      if (v57 <= v58)
      {
        v61 = v34;
      }

      else
      {
        v61 = v58;
      }

      if (v57 <= v58)
      {
        v62 = v60;
      }

      else
      {
        v62 = 3;
      }

      if (!v61 || *(*v29 + 8 * v61 - 8) < 16)
      {
        goto LABEL_69;
      }

      switch(v62)
      {
        case 1:
          mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::ScalarVector<mlx::core::detail::Maximum>>(v9, v10->i16, v11, v61, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
          break;
        case 2:
          mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::VectorScalar<mlx::core::detail::Maximum>>(v9->i16, v10, v11, v61, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
          break;
        case 3:
          mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::VectorVector<mlx::core::detail::Maximum>>(v9->i16, v10->i16, v11, v61, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
          break;
        default:
          LODWORD(v57) = v61;
LABEL_69:
          mlx::core::binary_op_dispatch_dims<short,short,false,mlx::core::detail::Maximum>(v9->i16, v10->i16, v11, v57, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
          break;
      }

      v80[0] = &v78;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v80);
      if (__p)
      {
        v77 = __p;
        operator delete(__p);
      }

      goto LABEL_92;
    }

    v38 = v9->i16[0];
    if (v38 <= v10->i16[0])
    {
      LOWORD(v38) = v10->i16[0];
    }

    v11->i16[0] = v38;
  }

LABEL_92:
  v74 = *MEMORY[0x277D85DE8];
}

void sub_25A739B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::VectorVector<mlx::core::detail::Maximum>>(__int16 *a1, __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A739FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::VectorScalar<mlx::core::detail::Maximum>>(__int16 *a1, unsigned __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A73A3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::ScalarVector<mlx::core::detail::Maximum>>(unsigned __int16 *a1, __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A73A7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<short,short,false,mlx::core::detail::Maximum>(__int16 *a1, __int16 *a2, _WORD *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,short,mlx::core::detail::Maximum,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,short,mlx::core::detail::Maximum,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          if (v21 <= *v13)
          {
            LOWORD(v21) = *v13;
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
          mlx::core::binary_op_dims<short,short,mlx::core::detail::Maximum,3,false>(&v14[v63], &v13[v56], &v12[v23], a6, a7, a8, a9, v15);
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

void sub_25A73AC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

__int16 *mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(__int16 *result, __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      v13 = a2;
      v14 = a3;
      v15 = v10;
      v16 = result;
      if (v10 >= 16)
      {
        v17 = 0;
        v15 = v10;
        do
        {
          v18 = v15;
          v19 = &a3[v17];
          v20 = vmaxq_s16(*&result[v17 + 8], *&a2[v17 + 8]);
          *v19 = vmaxq_s16(*&result[v17], *&a2[v17]);
          v19[1] = v20;
          v15 = v18 - 16;
          v17 += 16;
        }

        while (v18 > 0x1F);
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
          if (v22 <= v25)
          {
            LOWORD(v22) = v24;
          }

          *v14++ = v22;
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

__int16 *mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(__int16 *result, __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(__int16 *result, __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(__int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      v13 = *a2;
      v14 = v11;
      v15 = a3;
      v16 = result;
      if (v11 >= 16)
      {
        v17 = 0;
        v18 = vdupq_n_s16(v13);
        v14 = v11;
        do
        {
          v19 = v14;
          v20 = &a3[v17];
          v21 = vmaxq_s16(*&result[v17 + 8], v18);
          *v20 = vmaxq_s16(*&result[v17], v18);
          v20[1] = v21;
          v14 -= 16;
          v17 += 16;
        }

        while (v19 > 0x1F);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v24 = *v16++;
          v23 = v24;
          if (v24 <= v13)
          {
            v23 = v13;
          }

          *v15++ = v23;
          --v22;
        }

        while (v22 > 1);
      }

      a3 += v11;
      result = (result + v12);
      a2 += v10;
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(__int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(__int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(unsigned __int16 *result, __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      v13 = *result;
      v14 = v11;
      v15 = a3;
      v16 = a2;
      if (v11 >= 16)
      {
        v17 = 0;
        v18 = vdupq_n_s16(v13);
        v14 = v11;
        do
        {
          v19 = v14;
          v20 = &a3[v17];
          v21 = vmaxq_s16(v18, *&a2[v17 + 8]);
          *v20 = vmaxq_s16(v18, *&a2[v17]);
          v20[1] = v21;
          v14 -= 16;
          v17 += 16;
        }

        while (v19 > 0x1F);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v24 = *v16++;
          v23 = v24;
          if (v13 > v24)
          {
            v23 = v13;
          }

          *v15++ = v23;
          --v22;
        }

        while (v22 > 1);
      }

      a3 += v11;
      result += v10;
      a2 = (a2 + v12);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(unsigned __int16 *result, __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(unsigned __int16 *result, __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<short,short,mlx::core::detail::Maximum,2,false>(__int16 *result, __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          if (v25 <= *v22)
          {
            LOWORD(v25) = *v22;
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

__int16 *mlx::core::binary_op_dims<short,short,mlx::core::detail::Maximum,3,false>(__int16 *result, __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,short,mlx::core::detail::Maximum,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<int,int,mlx::core::detail::Maximum>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v84 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v39 = *(v8 + 160);
      v40 = v10->i32[0];
      if (v39 < 8)
      {
        v44 = *(v8 + 160);
      }

      else
      {
        v41 = vdupq_n_s32(v40);
        do
        {
          v43 = *v9;
          v42 = v9[1];
          v9 += 2;
          *v11 = vmaxq_s32(v43, v41);
          v11[1] = vmaxq_s32(v42, v41);
          v11 += 2;
          v44 = v39 - 8;
          v18 = v39 > 0xF;
          v39 -= 8;
        }

        while (v18);
      }

      if (v44 >= 1)
      {
        v71 = v44 + 1;
        do
        {
          v73 = v9->i32[0];
          v9 = (v9 + 4);
          v72 = v73;
          if (v73 <= v40)
          {
            v72 = v40;
          }

          v11->i32[0] = v72;
          v11 = (v11 + 4);
          --v71;
        }

        while (v71 > 1);
      }
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_13;
      }

      v19 = *(v8 + 48);
      if (v19 < 8)
      {
        v24 = *(v8 + 48);
      }

      else
      {
        do
        {
          v21 = *v9;
          v20 = v9[1];
          v9 += 2;
          v23 = *v10;
          v22 = v10[1];
          v10 += 2;
          *v11 = vmaxq_s32(v21, v23);
          v11[1] = vmaxq_s32(v20, v22);
          v11 += 2;
          v24 = v19 - 8;
          v18 = v19 > 0xF;
          v19 -= 8;
        }

        while (v18);
      }

      if (v24 >= 1)
      {
        v66 = v24 + 1;
        do
        {
          v68 = v9->i32[0];
          v9 = (v9 + 4);
          v67 = v68;
          v70 = v10->i32[0];
          v10 = (v10 + 4);
          v69 = v70;
          if (v67 <= v70)
          {
            v67 = v69;
          }

          v11->i32[0] = v67;
          v11 = (v11 + 4);
          --v66;
        }

        while (v66 > 1);
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
        v13 = v9->i32[0];
        if (v12 < 8)
        {
          v17 = *(*a2 + 160);
        }

        else
        {
          v14 = vdupq_n_s32(v13);
          do
          {
            v16 = *v10;
            v15 = v10[1];
            v10 += 2;
            *v11 = vmaxq_s32(v14, v16);
            v11[1] = vmaxq_s32(v14, v15);
            v11 += 2;
            v17 = v12 - 8;
            v18 = v12 > 0xF;
            v12 -= 8;
          }

          while (v18);
        }

        if (v17 >= 1)
        {
          v63 = v17 + 1;
          do
          {
            v65 = v10->i32[0];
            v10 = (v10 + 4);
            v64 = v65;
            if (v13 > v65)
            {
              v64 = v13;
            }

            v11->i32[0] = v64;
            v11 = (v11 + 4);
            --v63;
          }

          while (v63 > 1);
        }

        goto LABEL_92;
      }

LABEL_13:
      memset(v80, 0, sizeof(v80));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v80, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
      v25 = *a2;
      memset(v81, 0, sizeof(v81));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v81, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 3);
      v26 = *a3;
      v83[0] = 0;
      v83[1] = 0;
      v82 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v82, *(v26 + 24), *(v26 + 32), (*(v26 + 32) - *(v26 + 24)) >> 3);
      memset(v75, 0, sizeof(v75));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v75, v80, &v84, 3uLL);
      mlx::core::collapse_contiguous_dims(v8, v75, 0x7FFFFFFFuLL, &__p);
      v79 = v75;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v79);
      for (i = 0; i != -9; i -= 3)
      {
        v28 = v83[i - 1];
        if (v28)
        {
          v83[i] = v28;
          operator delete(v28);
        }
      }

      v29 = v78 + 6;
      v30 = *v78;
      v31 = (v78[1] - *v78) >> 3;
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
          goto LABEL_31;
        }
      }

      v34 = v33;
LABEL_31:
      v45 = v78[3];
      v46 = (v78[4] - v45) >> 3;
      v47 = v46 - 1;
      if (v46 - 1 >= -1)
      {
        v47 = -1;
      }

      v48 = v47 + 1;
      v49 = v46 + 1;
      v50 = v46 - 1;
      v51 = v46 - 1;
      while ((v51 & 0x80000000) == 0)
      {
        v52 = 8 * (v51 & 0x7FFFFFFF);
        --v49;
        --v51;
        if (*(v45 + v52) != *(*v29 + v52))
        {
          goto LABEL_38;
        }
      }

      v49 = v48;
LABEL_38:
      v53 = v31 + 1;
      while ((v35 & 0x80000000) == 0)
      {
        v54 = *(v30 + 8 * (v35 & 0x7FFFFFFF));
        --v53;
        --v35;
        if (v54)
        {
          goto LABEL_43;
        }
      }

      v53 = v33;
LABEL_43:
      v55 = v46 + 1;
      while ((v50 & 0x80000000) == 0)
      {
        v56 = *(v45 + 8 * (v50 & 0x7FFFFFFF));
        --v55;
        --v50;
        if (v56)
        {
          goto LABEL_48;
        }
      }

      v55 = v48;
LABEL_48:
      v57 = (v77 - __p) >> 2;
      if (v34 <= v49)
      {
        v58 = v49;
      }

      else
      {
        v58 = v34;
      }

      if (v34 <= v55)
      {
        v34 = v55;
      }

      if (v53 > v49)
      {
        v49 = v53;
      }

      if (v57 > v49)
      {
        v59 = 1;
      }

      else
      {
        v49 = (v77 - __p) >> 2;
        v59 = a4;
      }

      if (v57 > v34)
      {
        v60 = 2;
      }

      else
      {
        v34 = v49;
        v60 = v59;
      }

      if (v57 <= v58)
      {
        v61 = v34;
      }

      else
      {
        v61 = v58;
      }

      if (v57 <= v58)
      {
        v62 = v60;
      }

      else
      {
        v62 = 3;
      }

      if (!v61 || *(*v29 + 8 * v61 - 8) < 16)
      {
        goto LABEL_69;
      }

      switch(v62)
      {
        case 1:
          mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::ScalarVector<mlx::core::detail::Maximum>>(v9->i32, v10->i32, v11->i32, v61, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
          break;
        case 2:
          mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::VectorScalar<mlx::core::detail::Maximum>>(v9->i32, v10->i32, v11->i32, v61, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
          break;
        case 3:
          mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::VectorVector<mlx::core::detail::Maximum>>(v9->i32, v10->i32, v11, v61, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
          break;
        default:
          LODWORD(v57) = v61;
LABEL_69:
          mlx::core::binary_op_dispatch_dims<int,int,false,mlx::core::detail::Maximum>(v9->i32, v10->i32, v11->i32, v57, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
          break;
      }

      v80[0] = &v78;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v80);
      if (__p)
      {
        v77 = __p;
        operator delete(__p);
      }

      goto LABEL_92;
    }

    v38 = v9->i32[0];
    if (v9->i32[0] <= v10->i32[0])
    {
      v38 = v10->i32[0];
    }

    v11->i32[0] = v38;
  }

LABEL_92:
  v74 = *MEMORY[0x277D85DE8];
}

void sub_25A73BA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::VectorVector<mlx::core::detail::Maximum>>(int *a1, int *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A73BEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::VectorScalar<mlx::core::detail::Maximum>>(signed int *a1, signed int *a2, signed int *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A73C2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::ScalarVector<mlx::core::detail::Maximum>>(signed int *a1, signed int *a2, signed int *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A73C6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<int,int,false,mlx::core::detail::Maximum>(int *a1, int *a2, int *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<int,int,mlx::core::detail::Maximum,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<int,int,mlx::core::detail::Maximum,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          v21 = *v14;
          if (*v14 <= *v13)
          {
            v21 = *v13;
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
          mlx::core::binary_op_dims<int,int,mlx::core::detail::Maximum,3,false>(&v14[v63], &v13[v56], &v12[v23], a6, a7, a8, a9, v15);
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

void sub_25A73CB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

int *mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(int *result, int *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v20 = vmaxq_s32(*&result[v17 + 4], *&a2[v17 + 4]);
          *v19 = vmaxq_s32(*&result[v17], *&a2[v17]);
          v19[1] = v20;
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
          if (v22 <= v25)
          {
            v22 = v24;
          }

          *v14++ = v22;
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

int *mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(int *result, int *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int *mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(int *result, int *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

signed int *mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(signed int *result, signed int *a2, signed int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a6 + 8 * a8);
    v11 = *(*a7 + 8 * a8);
    v12 = 4 * *(*a5 + 8 * a8);
    do
    {
      v13 = *a2;
      v14 = v11;
      v15 = a3;
      v16 = result;
      if (v11 >= 8)
      {
        v17 = 0;
        v18 = vdupq_n_s32(v13);
        v14 = v11;
        do
        {
          v19 = v14;
          v20 = &a3[v17];
          v21 = vmaxq_s32(*&result[v17 + 4], v18);
          *v20 = vmaxq_s32(*&result[v17], v18);
          v20[1] = v21;
          v14 -= 8;
          v17 += 8;
        }

        while (v19 > 0xF);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v24 = *v16++;
          v23 = v24;
          if (v24 <= v13)
          {
            v23 = v13;
          }

          *v15++ = v23;
          --v22;
        }

        while (v22 > 1);
      }

      a3 += v11;
      result = (result + v12);
      a2 += v10;
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

signed int *mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(signed int *result, signed int *a2, signed int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

signed int *mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(signed int *result, signed int *a2, signed int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

signed int *mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(signed int *result, signed int *a2, signed int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a7 + 8 * a8);
    v12 = 4 * *(*a6 + 8 * a8);
    do
    {
      v13 = *result;
      v14 = v11;
      v15 = a3;
      v16 = a2;
      if (v11 >= 8)
      {
        v17 = 0;
        v18 = vdupq_n_s32(v13);
        v14 = v11;
        do
        {
          v19 = v14;
          v20 = &a3[v17];
          v21 = vmaxq_s32(v18, *&a2[v17 + 4]);
          *v20 = vmaxq_s32(v18, *&a2[v17]);
          v20[1] = v21;
          v14 -= 8;
          v17 += 8;
        }

        while (v19 > 0xF);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v24 = *v16++;
          v23 = v24;
          if (v13 > v24)
          {
            v23 = v13;
          }

          *v15++ = v23;
          --v22;
        }

        while (v22 > 1);
      }

      a3 += v11;
      result += v10;
      a2 = (a2 + v12);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

signed int *mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(signed int *result, signed int *a2, signed int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

signed int *mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(signed int *result, signed int *a2, signed int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int *mlx::core::binary_op_dims<int,int,mlx::core::detail::Maximum,2,false>(int *result, int *a2, _DWORD *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          v22 = *v21;
          if (*v21 <= *v20)
          {
            v22 = *v20;
          }

          *v19 = v22;
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

int *mlx::core::binary_op_dims<int,int,mlx::core::detail::Maximum,3,false>(int *result, int *a2, _DWORD *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,int,mlx::core::detail::Maximum,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<long long,long long,mlx::core::detail::Maximum>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v84 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v39 = *(v8 + 160);
      v40 = v10->i64[0];
      if (v39 < 4)
      {
        v44 = *(v8 + 160);
      }

      else
      {
        v41 = vdupq_n_s64(v40);
        do
        {
          v43 = *v9;
          v42 = v9[1];
          v9 += 2;
          *v11 = vbslq_s8(vcgtq_s64(v43, v41), v43, v41);
          v11[1] = vbslq_s8(vcgtq_s64(v42, v41), v42, v41);
          v11 += 2;
          v44 = v39 - 4;
          v18 = v39 > 7;
          v39 -= 4;
        }

        while (v18);
      }

      if (v44 >= 1)
      {
        v71 = v44 + 1;
        do
        {
          v73 = v9->i64[0];
          v9 = (v9 + 8);
          v72 = v73;
          if (v73 <= v40)
          {
            v72 = v40;
          }

          v11->i64[0] = v72;
          v11 = (v11 + 8);
          --v71;
        }

        while (v71 > 1);
      }
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_13;
      }

      v19 = *(v8 + 48);
      if (v19 < 4)
      {
        v24 = *(v8 + 48);
      }

      else
      {
        do
        {
          v21 = *v9;
          v20 = v9[1];
          v9 += 2;
          v23 = *v10;
          v22 = v10[1];
          v10 += 2;
          *v11 = vbslq_s8(vcgtq_s64(v21, v23), v21, v23);
          v11[1] = vbslq_s8(vcgtq_s64(v20, v22), v20, v22);
          v11 += 2;
          v24 = v19 - 4;
          v18 = v19 > 7;
          v19 -= 4;
        }

        while (v18);
      }

      if (v24 >= 1)
      {
        v66 = v24 + 1;
        do
        {
          v68 = v9->i64[0];
          v9 = (v9 + 8);
          v67 = v68;
          v70 = v10->i64[0];
          v10 = (v10 + 8);
          v69 = v70;
          if (v67 <= v70)
          {
            v67 = v69;
          }

          v11->i64[0] = v67;
          v11 = (v11 + 8);
          --v66;
        }

        while (v66 > 1);
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
        v13 = v9->i64[0];
        if (v12 < 4)
        {
          v17 = *(*a2 + 160);
        }

        else
        {
          v14 = vdupq_n_s64(v13);
          do
          {
            v16 = *v10;
            v15 = v10[1];
            v10 += 2;
            *v11 = vbslq_s8(vcgtq_s64(v14, v16), v14, v16);
            v11[1] = vbslq_s8(vcgtq_s64(v14, v15), v14, v15);
            v11 += 2;
            v17 = v12 - 4;
            v18 = v12 > 7;
            v12 -= 4;
          }

          while (v18);
        }

        if (v17 >= 1)
        {
          v63 = v17 + 1;
          do
          {
            v65 = v10->i64[0];
            v10 = (v10 + 8);
            v64 = v65;
            if (v13 > v65)
            {
              v64 = v13;
            }

            v11->i64[0] = v64;
            v11 = (v11 + 8);
            --v63;
          }

          while (v63 > 1);
        }

        goto LABEL_92;
      }

LABEL_13:
      memset(v80, 0, sizeof(v80));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v80, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
      v25 = *a2;
      memset(v81, 0, sizeof(v81));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v81, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 3);
      v26 = *a3;
      v83[0] = 0;
      v83[1] = 0;
      v82 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v82, *(v26 + 24), *(v26 + 32), (*(v26 + 32) - *(v26 + 24)) >> 3);
      memset(v75, 0, sizeof(v75));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v75, v80, &v84, 3uLL);
      mlx::core::collapse_contiguous_dims(v8, v75, 0x7FFFFFFFuLL, &__p);
      v79 = v75;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v79);
      for (i = 0; i != -9; i -= 3)
      {
        v28 = v83[i - 1];
        if (v28)
        {
          v83[i] = v28;
          operator delete(v28);
        }
      }

      v29 = v78 + 6;
      v30 = *v78;
      v31 = (v78[1] - *v78) >> 3;
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
          goto LABEL_31;
        }
      }

      v34 = v33;
LABEL_31:
      v45 = v78[3];
      v46 = (v78[4] - v45) >> 3;
      v47 = v46 - 1;
      if (v46 - 1 >= -1)
      {
        v47 = -1;
      }

      v48 = v47 + 1;
      v49 = v46 + 1;
      v50 = v46 - 1;
      v51 = v46 - 1;
      while ((v51 & 0x80000000) == 0)
      {
        v52 = 8 * (v51 & 0x7FFFFFFF);
        --v49;
        --v51;
        if (*(v45 + v52) != *(*v29 + v52))
        {
          goto LABEL_38;
        }
      }

      v49 = v48;
LABEL_38:
      v53 = v31 + 1;
      while ((v35 & 0x80000000) == 0)
      {
        v54 = *(v30 + 8 * (v35 & 0x7FFFFFFF));
        --v53;
        --v35;
        if (v54)
        {
          goto LABEL_43;
        }
      }

      v53 = v33;
LABEL_43:
      v55 = v46 + 1;
      while ((v50 & 0x80000000) == 0)
      {
        v56 = *(v45 + 8 * (v50 & 0x7FFFFFFF));
        --v55;
        --v50;
        if (v56)
        {
          goto LABEL_48;
        }
      }

      v55 = v48;
LABEL_48:
      v57 = (v77 - __p) >> 2;
      if (v34 <= v49)
      {
        v58 = v49;
      }

      else
      {
        v58 = v34;
      }

      if (v34 <= v55)
      {
        v34 = v55;
      }

      if (v53 > v49)
      {
        v49 = v53;
      }

      if (v57 > v49)
      {
        v59 = 1;
      }

      else
      {
        v49 = (v77 - __p) >> 2;
        v59 = a4;
      }

      if (v57 > v34)
      {
        v60 = 2;
      }

      else
      {
        v34 = v49;
        v60 = v59;
      }

      if (v57 <= v58)
      {
        v61 = v34;
      }

      else
      {
        v61 = v58;
      }

      if (v57 <= v58)
      {
        v62 = v60;
      }

      else
      {
        v62 = 3;
      }

      if (!v61 || *(*v29 + 8 * v61 - 8) < 16)
      {
        goto LABEL_69;
      }

      switch(v62)
      {
        case 1:
          mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::ScalarVector<mlx::core::detail::Maximum>>(v9->i64, v10->i64, v11->i64, v61, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
          break;
        case 2:
          mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::VectorScalar<mlx::core::detail::Maximum>>(v9->i64, v10->i64, v11->i64, v61, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
          break;
        case 3:
          mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::VectorVector<mlx::core::detail::Maximum>>(v9->i64, v10->i64, v11, v61, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
          break;
        default:
          LODWORD(v57) = v61;
LABEL_69:
          mlx::core::binary_op_dispatch_dims<long long,long long,false,mlx::core::detail::Maximum>(v9->i64, v10->i64, v11->i64, v57, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
          break;
      }

      v80[0] = &v78;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v80);
      if (__p)
      {
        v77 = __p;
        operator delete(__p);
      }

      goto LABEL_92;
    }

    v38 = v9->i64[0];
    if (v9->i64[0] <= v10->i64[0])
    {
      v38 = v10->i64[0];
    }

    v11->i64[0] = v38;
  }

LABEL_92:
  v74 = *MEMORY[0x277D85DE8];
}

void sub_25A73D934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::VectorVector<mlx::core::detail::Maximum>>(uint64_t *a1, uint64_t *a2, void *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A73DDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::VectorScalar<mlx::core::detail::Maximum>>(int64_t *a1, int64_t *a2, int64_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A73E1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::ScalarVector<mlx::core::detail::Maximum>>(int64_t *a1, int64_t *a2, int64_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A73E5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<long long,long long,false,mlx::core::detail::Maximum>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Maximum,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Maximum,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          v21 = *v14;
          if (*v14 <= *v13)
          {
            v21 = *v13;
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
          mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Maximum,3,false>(&v14[v63], &v13[v56], &v12[v23], a6, a7, a8, a9, v15);
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

void sub_25A73EA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t *mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(uint64_t *result, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v20 = vbslq_s8(vcgtq_s64(*&result[v17 + 2], *&a2[v17 + 2]), *&result[v17 + 2], *&a2[v17 + 2]);
          *v19 = vbslq_s8(vcgtq_s64(*&result[v17], *&a2[v17]), *&result[v17], *&a2[v17]);
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
          if (v22 <= v25)
          {
            v22 = v24;
          }

          *v14++ = v22;
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

uint64_t *mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(uint64_t *result, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(uint64_t *result, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int64_t *mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(int64_t *result, int64_t *a2, int64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      v13 = *a2;
      v14 = v11;
      v15 = a3;
      v16 = result;
      if (v11 >= 4)
      {
        v17 = 0;
        v18 = vdupq_n_s64(v13);
        v14 = v11;
        do
        {
          v19 = v14;
          v20 = &a3[v17];
          v21 = vbslq_s8(vcgtq_s64(*&result[v17 + 2], v18), *&result[v17 + 2], v18);
          *v20 = vbslq_s8(vcgtq_s64(*&result[v17], v18), *&result[v17], v18);
          v20[1] = v21;
          v14 -= 4;
          v17 += 4;
        }

        while (v19 > 7);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v24 = *v16++;
          v23 = v24;
          if (v24 <= v13)
          {
            v23 = v13;
          }

          *v15++ = v23;
          --v22;
        }

        while (v22 > 1);
      }

      a3 += v11;
      result = (result + v12);
      a2 += v10;
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

int64_t *mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(int64_t *result, int64_t *a2, int64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int64_t *mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(int64_t *result, int64_t *a2, int64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int64_t *mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(int64_t *result, int64_t *a2, int64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      v13 = *result;
      v14 = v11;
      v15 = a3;
      v16 = a2;
      if (v11 >= 4)
      {
        v17 = 0;
        v18 = vdupq_n_s64(v13);
        v14 = v11;
        do
        {
          v19 = v14;
          v20 = &a3[v17];
          v21 = vbslq_s8(vcgtq_s64(v18, *&a2[v17 + 2]), v18, *&a2[v17 + 2]);
          *v20 = vbslq_s8(vcgtq_s64(v18, *&a2[v17]), v18, *&a2[v17]);
          v20[1] = v21;
          v14 -= 4;
          v17 += 4;
        }

        while (v19 > 7);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v24 = *v16++;
          v23 = v24;
          if (v13 > v24)
          {
            v23 = v13;
          }

          *v15++ = v23;
          --v22;
        }

        while (v22 > 1);
      }

      a3 += v11;
      result += v10;
      a2 = (a2 + v12);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

int64_t *mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(int64_t *result, int64_t *a2, int64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int64_t *mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(int64_t *result, int64_t *a2, int64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Maximum,2,false>(uint64_t *result, uint64_t *a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int a8)
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
          v25 = *v23;
          if (*v23 <= *v22)
          {
            v25 = *v22;
          }

          *v21 = v25;
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

uint64_t *mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Maximum,3,false>(uint64_t *result, uint64_t *a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Maximum,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<half,half,mlx::core::detail::Maximum>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int16x4_t a5)
{
  v71 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*a1 + 152);
  v11 = *(*a2 + 152);
  v12 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        mlx::core::VectorVector<mlx::core::detail::Maximum>::operator()<half,half>(v67, v10, v11, v12, *(v9 + 48));
        goto LABEL_83;
      }

      goto LABEL_11;
    }

    v33 = *(v9 + 160);
    a5.i16[0] = v11->i16[0];
    if (v33 < 8)
    {
      v36 = *(v9 + 160);
    }

    else
    {
      v34 = vdupq_lane_s16(a5, 0);
      do
      {
        v35 = *v10++;
        *v12++ = vmaxnmq_f16(v35, v34);
        v36 = v33 - 8;
        v17 = v33 > 0xF;
        v33 -= 8;
      }

      while (v17);
    }

    if (v36 >= 1)
    {
      v58 = v36 + 1;
      do
      {
        v59 = *v10->i16;
        v10 = (v10 + 2);
        v60 = v59;
        if (v59 <= *a5.i16)
        {
          v60 = *a5.i16;
        }

        *v12->i16 = v60;
        v12 = (v12 + 2);
        --v58;
      }

      while (v58 > 1);
    }
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v13 = *(*a2 + 160);
        a5.i16[0] = v10->i16[0];
        if (v13 < 8)
        {
          v16 = *(*a2 + 160);
        }

        else
        {
          v14 = vdupq_lane_s16(a5, 0);
          do
          {
            v15 = *v11++;
            *v12++ = vmaxnmq_f16(v14, v15);
            v16 = v13 - 8;
            v17 = v13 > 0xF;
            v13 -= 8;
          }

          while (v17);
        }

        if (v16 >= 1)
        {
          v55 = v16 + 1;
          do
          {
            v56 = *v11->i16;
            v11 = (v11 + 2);
            v57 = v56;
            if (*a5.i16 > v56)
            {
              v57 = *a5.i16;
            }

            *v12->i16 = v57;
            v12 = (v12 + 2);
            --v55;
          }

          while (v55 > 1);
        }

        goto LABEL_83;
      }

LABEL_11:
      memset(v67, 0, sizeof(v67));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v67, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
      v18 = *a2;
      memset(v68, 0, sizeof(v68));
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v68, *(v18 + 24), *(v18 + 32), (*(v18 + 32) - *(v18 + 24)) >> 3);
      v19 = *a3;
      v70[0] = 0;
      v70[1] = 0;
      v69 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v69, *(v19 + 24), *(v19 + 32), (*(v19 + 32) - *(v19 + 24)) >> 3);
      memset(v62, 0, sizeof(v62));
      std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v62, v67, &v71, 3uLL);
      mlx::core::collapse_contiguous_dims(v9, v62, 0x7FFFFFFFuLL, &__p);
      v66 = v62;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v66);
      for (i = 0; i != -9; i -= 3)
      {
        v22 = v70[i - 1];
        if (v22)
        {
          v70[i] = v22;
          operator delete(v22);
        }
      }

      v23 = v65 + 6;
      v24 = *v65;
      v25 = (v65[1] - *v65) >> 3;
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
          goto LABEL_29;
        }
      }

      v28 = v27;
LABEL_29:
      v37 = v65[3];
      v38 = (v65[4] - v37) >> 3;
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
          goto LABEL_36;
        }
      }

      v41 = v40;
LABEL_36:
      v45 = v25 + 1;
      while ((v29 & 0x80000000) == 0)
      {
        v46 = *(v24 + 8 * (v29 & 0x7FFFFFFF));
        --v45;
        --v29;
        if (v46)
        {
          goto LABEL_41;
        }
      }

      v45 = v27;
LABEL_41:
      v47 = v38 + 1;
      while ((v42 & 0x80000000) == 0)
      {
        v48 = *(v37 + 8 * (v42 & 0x7FFFFFFF));
        --v47;
        --v42;
        if (v48)
        {
          goto LABEL_46;
        }
      }

      v47 = v40;
LABEL_46:
      v49 = (v64 - __p) >> 2;
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
        v41 = (v64 - __p) >> 2;
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
        goto LABEL_67;
      }

      switch(v54)
      {
        case 1:
          mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::ScalarVector<mlx::core::detail::Maximum>>(v10->i16, v11->i16, v12->i16, v53, *(*a1 + 48), &__p, v65, v65 + 3, v20, v65 + 6);
          break;
        case 2:
          mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorScalar<mlx::core::detail::Maximum>>(v10->i16, v11->i16, v12->i16, v53, *(*a1 + 48), &__p, v65, v65 + 3, v20, v65 + 6);
          break;
        case 3:
          mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorVector<mlx::core::detail::Maximum>>(v10, v11, v12, v53, *(*a1 + 48), &__p, v65, v65 + 3, v65 + 6);
          break;
        default:
          LODWORD(v49) = v53;
LABEL_67:
          mlx::core::binary_op_dispatch_dims<half,half,false,mlx::core::detail::Maximum>(v10->i16, v11->i16, v12->i16, v49, *(*a1 + 48), &__p, v65, v65 + 3, v65 + 6);
          break;
      }

      v67[0] = &v65;
      std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v67);
      if (__p)
      {
        v64 = __p;
        operator delete(__p);
      }

      goto LABEL_83;
    }

    v32 = v10->i16[0];
    if (*v10->i16 <= *v11->i16)
    {
      v32 = v11->i16[0];
    }

    v12->i16[0] = v32;
  }

LABEL_83:
  v61 = *MEMORY[0x277D85DE8];
}

void sub_25A73F7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::VectorVector<mlx::core::detail::Maximum>::operator()<half,half>(uint64_t a1, float16x8_t *a2, float16x8_t *a3, float16x8_t *a4, int a5)
{
  if (a5 < 8)
  {
    v8 = a5;
  }

  else
  {
    do
    {
      v5 = *a2++;
      v6 = v5;
      v7 = *a3++;
      *a4++ = vmaxnmq_f16(v6, v7);
      v8 = a5 - 8;
      v9 = a5 > 0xF;
      a5 -= 8;
    }

    while (v9);
  }

  if (v8 >= 1)
  {
    v10 = v8 + 1;
    do
    {
      v11 = *a2->i16;
      a2 = (a2 + 2);
      v12 = v11;
      v13 = *a3->i16;
      a3 = (a3 + 2);
      v14 = v13;
      if (v12 <= v13)
      {
        v12 = v14;
      }

      *a4->i16 = v12;
      a4 = (a4 + 2);
      --v10;
    }

    while (v10 > 1);
  }
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorVector<mlx::core::detail::Maximum>>(float16x8_t *a1, float16x8_t *a2, float16x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>((a1 + 2 * v60), (a2 + 2 * v53), (a3 + 2 * v19), a6, a7, a8, a9, v15);
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

void sub_25A73FCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorScalar<mlx::core::detail::Maximum>>(short float *a1, __int16 *a2, short float *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int16x4_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(&a1[v62], &a2[v55], &a3[v21], a6, a7, a8, a10, v16, v19);
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

void sub_25A7400FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::ScalarVector<mlx::core::detail::Maximum>>(__int16 *a1, short float *a2, short float *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int16x4_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(&a1[v62], &a2[v55], &a3[v21], a6, a7, a8, a10, v16, v19);
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

void sub_25A740514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,false,mlx::core::detail::Maximum>(short float *a1, short float *a2, short float *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::detail::Maximum,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::detail::Maximum,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          if (*v14 <= *v13)
          {
            v21 = *v13;
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
          mlx::core::binary_op_dims<half,half,mlx::core::detail::Maximum,3,false>(&v14[v63], &v13[v56], &v12[v23], a6, a7, a8, a9, v15);
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

void sub_25A74093C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(float16x8_t *a1, float16x8_t *a2, float16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    v14 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Maximum>::operator()<half,half>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 2 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(float16x8_t *a1, float16x8_t *a2, float16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Maximum>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Maximum>,3,true>(float16x8_t *a1, float16x8_t *a2, float16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Maximum>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

short float *mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(short float *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, int16x4_t a9)
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
      a9.i16[0] = *a2;
      v14 = v12;
      v15 = a3;
      v16 = result;
      if (v12 >= 8)
      {
        v17 = 0;
        v18 = vdupq_lane_s16(a9, 0);
        v14 = v12;
        do
        {
          v19 = v14;
          *&a3[v17] = vmaxnmq_f16(*&result[v17], v18);
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
          v21 = *v16++;
          v22 = v21;
          if (v21 <= *a9.i16)
          {
            v22 = *a9.i16;
          }

          *v15++ = v22;
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

short float *mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(short float *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, int16x4_t a9)
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
      result = mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Maximum>,1,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

short float *mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Maximum>,3,true>(short float *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, int16x4_t a9)
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
      result = mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Maximum>,2,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(__int16 *result, short float *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, int16x4_t a9)
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
      a9.i16[0] = *result;
      v14 = v12;
      v15 = a3;
      v16 = a2;
      if (v12 >= 8)
      {
        v17 = 0;
        v18 = vdupq_lane_s16(a9, 0);
        v14 = v12;
        do
        {
          v19 = v14;
          *&a3[v17] = vmaxnmq_f16(v18, *&a2[v17]);
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
          v21 = *v16++;
          v22 = v21;
          if (*a9.i16 > v21)
          {
            v22 = *a9.i16;
          }

          *v15++ = v22;
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

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(__int16 *result, short float *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, int16x4_t a9)
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
      result = mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Maximum>,1,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Maximum>,3,true>(__int16 *result, short float *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, int16x4_t a9)
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
      result = mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Maximum>,2,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}