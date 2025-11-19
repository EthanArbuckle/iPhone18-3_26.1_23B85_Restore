void sub_25A77FFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,BOOL,false,mlx::core::detail::NotEqual>(_DWORD *a1, _DWORD *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::detail::NotEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::detail::NotEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = **a9;
        v19 = 4 * **a7;
        v20 = 4 * **a8;
        do
        {
          *v12 = *v14 != *v13;
          v12 += v18;
          v14 = (v14 + v19);
          v13 = (v13 + v20);
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
        v23 = (*a9)[a4 - 4];
        do
        {
          mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::detail::NotEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A78040C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

int *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(int *result, int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      v13 = a3;
      v14 = v10;
      v15 = a2;
      v16 = result;
      if (v10 >= 8)
      {
        v17 = 0;
        v14 = v10;
        v13 = a3;
        do
        {
          v18 = v14;
          *v13++ = vand_s8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqq_s32(*&result[v17], *&a2[v17]), vceqq_s32(*&result[v17 + 4], *&a2[v17 + 4])))), 0x101010101010101);
          v14 -= 8;
          v17 += 8;
        }

        while (v18 > 0xF);
        v16 = &result[v17];
        v15 = &a2[v17];
      }

      if (v14 >= 1)
      {
        v19 = v14 + 1;
        do
        {
          v21 = *v16++;
          v20 = v21;
          v22 = *v15++;
          v13->i8[0] = v20 != v22;
          v13 = (v13 + 1);
          --v19;
        }

        while (v19 > 1);
      }

      a3 = (a3 + v10);
      result = (result + v11);
      a2 = (a2 + v12);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

int *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(int *result, int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(int *result, int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(_OWORD *result, unsigned int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      if (v12 >= 8)
      {
        v17 = vdupq_n_s32(v13);
        v16 = result;
        v15 = a3;
        v18 = v12;
        do
        {
          v19 = *v16;
          v20 = *(v16 + 1);
          v16 += 2;
          *v15++ = vand_s8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqq_s32(v19, v17), vceqq_s32(v20, v17)))), 0x101010101010101);
          v14 = v18 - 8;
          v21 = v18 > 0xF;
          v18 -= 8;
        }

        while (v21);
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v23 = *v16;
          v16 = (v16 + 4);
          v15->i8[0] = v23 != v13;
          v15 = (v15 + 1);
          --v22;
        }

        while (v22 > 1);
      }

      a3 = (a3 + v12);
      result = (result + 4 * v10);
      a2 += v11;
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(_OWORD *result, unsigned int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>(_OWORD *result, unsigned int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(unsigned int *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      if (v12 >= 8)
      {
        v17 = vdupq_n_s32(v13);
        v16 = a2;
        v15 = a3;
        v18 = v12;
        do
        {
          v19 = *v16;
          v20 = *(v16 + 1);
          v16 += 2;
          *v15++ = vand_s8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqq_s32(v17, v19), vceqq_s32(v17, v20)))), 0x101010101010101);
          v14 = v18 - 8;
          v21 = v18 > 0xF;
          v18 -= 8;
        }

        while (v21);
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v23 = *v16;
          v16 = (v16 + 4);
          v15->i8[0] = v13 != v23;
          v15 = (v15 + 1);
          --v22;
        }

        while (v22 > 1);
      }

      a3 = (a3 + v12);
      result += v10;
      a2 = (a2 + 4 * v11);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(unsigned int *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(unsigned int *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::detail::NotEqual,2,false>(_DWORD *result, _DWORD *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *a4;
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a7 + 8 * a8);
    v12 = a8 + 1;
    v13 = *(*a7 + 8 * v12);
    v14 = *(v8 + 4 * v12);
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a5 + 8 * v12);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a6 + 8 * v12);
    do
    {
      if (v14 >= 1)
      {
        v19 = a2;
        v20 = result;
        v21 = v14;
        v22 = a3;
        do
        {
          *v22 = *v20 != *v19;
          v22 += v13;
          v20 = (v20 + v16);
          v19 = (v19 + v18);
          --v21;
        }

        while (v21);
      }

      a3 += v11;
      ++v10;
      result = (result + v15);
      a2 = (a2 + v17);
    }

    while (v10 != v9);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::detail::NotEqual,3,false>(_DWORD *result, _DWORD *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::detail::NotEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,BOOL,true,mlx::core::VectorVector<mlx::core::detail::NotEqual>>(uint64_t *a1, uint64_t *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v58, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v51, a6, a8, v14);
      if (a5 >= 1)
      {
        v17 = 0;
        v18 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
          v19 = v60 - v59;
          v20 = (v60 - v59) >> 2;
          if (v20)
          {
            v21 = v63;
            v22 = ((v19 << 30) - 0x100000000) >> 32;
            v23 = v63 + 4 * v22;
            v24 = *v23;
            v25 = v59 + 4 * v22;
            v26 = v61;
            v27 = v58;
            if (v20 >= 2 && v24 == *v25 - 1)
            {
              v30 = (v19 >> 2) & 0x7FFFFFFF;
              v29 = v30 - 1;
              v31 = 4 * v30;
              v32 = v59 - 8;
              do
              {
                v33 = v29;
                *v23 = 0;
                v27 -= v26[v22] * (*v25 - 1);
                v58 = v27;
                --v29;
                v23 = &v21[v31 - 8];
                v24 = *v23;
                v21 -= 4;
                if (v33 < 2)
                {
                  break;
                }

                v25 = &v32[v31];
                v34 = *&v32[4 * v30] - 1;
                v32 -= 4;
                v22 = v29;
              }

              while (v24 == v34);
              v23 = &v21[4 * v30 - 4];
            }

            else
            {
              v29 = ((v19 << 30) - 0x100000000) >> 32;
            }

            *v23 = v24 + 1;
            v58 = v26[v29] + v27;
          }

          v35 = v53 - v52;
          v36 = (v53 - v52) >> 2;
          if (v36)
          {
            v37 = __p;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = __p + 4 * v38;
            v40 = *v39;
            v41 = v54;
            v42 = v51;
            if (v36 >= 2 && (v43 = v52 + 4 * v38, v40 == *v43 - 1))
            {
              v44 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v44 - 1;
              v46 = 4 * v44;
              v47 = v52 - 8;
              do
              {
                v48 = v45;
                *v39 = 0;
                v42 -= v41[v38] * (*v43 - 1);
                v51 = v42;
                --v45;
                v39 = &v37[v46 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v43 = &v47[v46];
                v49 = *&v47[4 * v44] - 1;
                v47 -= 4;
                v38 = v45;
              }

              while (v40 == v49);
              v39 = &v37[4 * v44 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v51 = v41[v45] + v42;
          }

          v17 += v18;
        }

        while (v17 < a5);
      }

      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
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

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      break;
  }
}

void sub_25A7810C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::NotEqual>>(_OWORD *a1, unint64_t *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v58, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v51, a6, a8, v14);
      if (a5 >= 1)
      {
        v17 = 0;
        v18 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>((a1 + 8 * v58), &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
          v19 = v60 - v59;
          v20 = (v60 - v59) >> 2;
          if (v20)
          {
            v21 = v63;
            v22 = ((v19 << 30) - 0x100000000) >> 32;
            v23 = v63 + 4 * v22;
            v24 = *v23;
            v25 = v59 + 4 * v22;
            v26 = v61;
            v27 = v58;
            if (v20 >= 2 && v24 == *v25 - 1)
            {
              v30 = (v19 >> 2) & 0x7FFFFFFF;
              v29 = v30 - 1;
              v31 = 4 * v30;
              v32 = v59 - 8;
              do
              {
                v33 = v29;
                *v23 = 0;
                v27 -= v26[v22] * (*v25 - 1);
                v58 = v27;
                --v29;
                v23 = &v21[v31 - 8];
                v24 = *v23;
                v21 -= 4;
                if (v33 < 2)
                {
                  break;
                }

                v25 = &v32[v31];
                v34 = *&v32[4 * v30] - 1;
                v32 -= 4;
                v22 = v29;
              }

              while (v24 == v34);
              v23 = &v21[4 * v30 - 4];
            }

            else
            {
              v29 = ((v19 << 30) - 0x100000000) >> 32;
            }

            *v23 = v24 + 1;
            v58 = v26[v29] + v27;
          }

          v35 = v53 - v52;
          v36 = (v53 - v52) >> 2;
          if (v36)
          {
            v37 = __p;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = __p + 4 * v38;
            v40 = *v39;
            v41 = v54;
            v42 = v51;
            if (v36 >= 2 && (v43 = v52 + 4 * v38, v40 == *v43 - 1))
            {
              v44 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v44 - 1;
              v46 = 4 * v44;
              v47 = v52 - 8;
              do
              {
                v48 = v45;
                *v39 = 0;
                v42 -= v41[v38] * (*v43 - 1);
                v51 = v42;
                --v45;
                v39 = &v37[v46 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v43 = &v47[v46];
                v49 = *&v47[4 * v44] - 1;
                v47 -= 4;
                v38 = v45;
              }

              while (v40 == v49);
              v39 = &v37[4 * v44 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v51 = v41[v45] + v42;
          }

          v17 += v18;
        }

        while (v17 < a5);
      }

      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
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

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      break;
  }
}

void sub_25A7814C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::NotEqual>>(unint64_t *a1, _OWORD *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v58, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v51, a6, a8, v14);
      if (a5 >= 1)
      {
        v17 = 0;
        v18 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(&a1[v58], (a2 + 8 * v51), (a3 + v17), a6, a7, a8, a9, v14);
          v19 = v60 - v59;
          v20 = (v60 - v59) >> 2;
          if (v20)
          {
            v21 = v63;
            v22 = ((v19 << 30) - 0x100000000) >> 32;
            v23 = v63 + 4 * v22;
            v24 = *v23;
            v25 = v59 + 4 * v22;
            v26 = v61;
            v27 = v58;
            if (v20 >= 2 && v24 == *v25 - 1)
            {
              v30 = (v19 >> 2) & 0x7FFFFFFF;
              v29 = v30 - 1;
              v31 = 4 * v30;
              v32 = v59 - 8;
              do
              {
                v33 = v29;
                *v23 = 0;
                v27 -= v26[v22] * (*v25 - 1);
                v58 = v27;
                --v29;
                v23 = &v21[v31 - 8];
                v24 = *v23;
                v21 -= 4;
                if (v33 < 2)
                {
                  break;
                }

                v25 = &v32[v31];
                v34 = *&v32[4 * v30] - 1;
                v32 -= 4;
                v22 = v29;
              }

              while (v24 == v34);
              v23 = &v21[4 * v30 - 4];
            }

            else
            {
              v29 = ((v19 << 30) - 0x100000000) >> 32;
            }

            *v23 = v24 + 1;
            v58 = v26[v29] + v27;
          }

          v35 = v53 - v52;
          v36 = (v53 - v52) >> 2;
          if (v36)
          {
            v37 = __p;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = __p + 4 * v38;
            v40 = *v39;
            v41 = v54;
            v42 = v51;
            if (v36 >= 2 && (v43 = v52 + 4 * v38, v40 == *v43 - 1))
            {
              v44 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v44 - 1;
              v46 = 4 * v44;
              v47 = v52 - 8;
              do
              {
                v48 = v45;
                *v39 = 0;
                v42 -= v41[v38] * (*v43 - 1);
                v51 = v42;
                --v45;
                v39 = &v37[v46 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v43 = &v47[v46];
                v49 = *&v47[4 * v44] - 1;
                v47 -= 4;
                v38 = v45;
              }

              while (v40 == v49);
              v39 = &v37[4 * v44 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v51 = v41[v45] + v42;
          }

          v17 += v18;
        }

        while (v17 < a5);
      }

      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
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

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      break;
  }
}

void sub_25A7818D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,BOOL,false,mlx::core::detail::NotEqual>(void *a1, void *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::detail::NotEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::detail::NotEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = **a9;
        v19 = 8 * **a7;
        v20 = 8 * **a8;
        do
        {
          *v12 = *v14 != *v13;
          v12 += v18;
          v14 = (v14 + v19);
          v13 = (v13 + v20);
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
        v23 = (*a9)[a4 - 4];
        do
        {
          mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::detail::NotEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A781CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(uint64_t *result, uint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      v13 = a3;
      v14 = v10;
      v15 = a2;
      v16 = result;
      if (v10 >= 4)
      {
        v17 = 0;
        v14 = v10;
        v13 = a3;
        do
        {
          v18 = v14;
          *v13++ = vuzp1_s8(vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&result[v17], *&a2[v17]), vceqq_s64(*&result[v17 + 2], *&a2[v17 + 2])))), 0x1000100010001), 0x1000100010001).u32[0];
          v14 -= 4;
          v17 += 4;
        }

        while (v18 > 7);
        v16 = &result[v17];
        v15 = &a2[v17];
      }

      if (v14 >= 1)
      {
        v19 = v14 + 1;
        do
        {
          v21 = *v16++;
          v20 = v21;
          v22 = *v15++;
          *v13 = v20 != v22;
          v13 = (v13 + 1);
          --v19;
        }

        while (v19 > 1);
      }

      a3 = (a3 + v10);
      result = (result + v11);
      a2 = (a2 + v12);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(uint64_t *result, uint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(uint64_t *result, uint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(_OWORD *result, unint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      if (v12 >= 4)
      {
        v17 = vdupq_n_s64(v13);
        v16 = result;
        v15 = a3;
        v18 = v12;
        do
        {
          v19 = *v16;
          v20 = *(v16 + 1);
          v16 += 2;
          *v15++ = vuzp1_s8(vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v19, v17), vceqq_s64(v20, v17)))), 0x1000100010001), 0x1000100010001).u32[0];
          v14 = v18 - 4;
          v21 = v18 > 7;
          v18 -= 4;
        }

        while (v21);
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v23 = *v16;
          v16 = (v16 + 8);
          *v15 = v23 != v13;
          v15 = (v15 + 1);
          --v22;
        }

        while (v22 > 1);
      }

      a3 = (a3 + v12);
      result = (result + 8 * v10);
      a2 += v11;
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(_OWORD *result, unint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>(_OWORD *result, unint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(unint64_t *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      if (v12 >= 4)
      {
        v17 = vdupq_n_s64(v13);
        v16 = a2;
        v15 = a3;
        v18 = v12;
        do
        {
          v19 = *v16;
          v20 = *(v16 + 1);
          v16 += 2;
          *v15++ = vuzp1_s8(vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v17, v19), vceqq_s64(v17, v20)))), 0x1000100010001), 0x1000100010001).u32[0];
          v14 = v18 - 4;
          v21 = v18 > 7;
          v18 -= 4;
        }

        while (v21);
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v23 = *v16;
          v16 = (v16 + 8);
          *v15 = v13 != v23;
          v15 = (v15 + 1);
          --v22;
        }

        while (v22 > 1);
      }

      a3 = (a3 + v12);
      result += v10;
      a2 = (a2 + 8 * v11);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(unint64_t *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(unint64_t *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::detail::NotEqual,2,false>(void *result, void *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *a4;
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a7 + 8 * a8);
    v12 = a8 + 1;
    v13 = *(*a7 + 8 * v12);
    v14 = *(v8 + 4 * v12);
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * v12);
    v17 = 8 * *(*a6 + 8 * a8);
    v18 = 8 * *(*a6 + 8 * v12);
    do
    {
      if (v14 >= 1)
      {
        v19 = a2;
        v20 = result;
        v21 = v14;
        v22 = a3;
        do
        {
          *v22 = *v20 != *v19;
          v22 += v13;
          v20 = (v20 + v16);
          v19 = (v19 + v18);
          --v21;
        }

        while (v21);
      }

      a3 += v11;
      ++v10;
      result = (result + v15);
      a2 = (a2 + v17);
    }

    while (v10 != v9);
  }

  return result;
}

void *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::detail::NotEqual,3,false>(void *result, void *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::detail::NotEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::VectorVector<mlx::core::detail::NotEqual>>(short float *a1, short float *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v58, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v51, a6, a8, v14);
      if (a5 >= 1)
      {
        v17 = 0;
        v18 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
          v19 = v60 - v59;
          v20 = (v60 - v59) >> 2;
          if (v20)
          {
            v21 = v63;
            v22 = ((v19 << 30) - 0x100000000) >> 32;
            v23 = v63 + 4 * v22;
            v24 = *v23;
            v25 = v59 + 4 * v22;
            v26 = v61;
            v27 = v58;
            if (v20 >= 2 && v24 == *v25 - 1)
            {
              v30 = (v19 >> 2) & 0x7FFFFFFF;
              v29 = v30 - 1;
              v31 = 4 * v30;
              v32 = v59 - 8;
              do
              {
                v33 = v29;
                *v23 = 0;
                v27 -= v26[v22] * (*v25 - 1);
                v58 = v27;
                --v29;
                v23 = &v21[v31 - 8];
                v24 = *v23;
                v21 -= 4;
                if (v33 < 2)
                {
                  break;
                }

                v25 = &v32[v31];
                v34 = *&v32[4 * v30] - 1;
                v32 -= 4;
                v22 = v29;
              }

              while (v24 == v34);
              v23 = &v21[4 * v30 - 4];
            }

            else
            {
              v29 = ((v19 << 30) - 0x100000000) >> 32;
            }

            *v23 = v24 + 1;
            v58 = v26[v29] + v27;
          }

          v35 = v53 - v52;
          v36 = (v53 - v52) >> 2;
          if (v36)
          {
            v37 = __p;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = __p + 4 * v38;
            v40 = *v39;
            v41 = v54;
            v42 = v51;
            if (v36 >= 2 && (v43 = v52 + 4 * v38, v40 == *v43 - 1))
            {
              v44 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v44 - 1;
              v46 = 4 * v44;
              v47 = v52 - 8;
              do
              {
                v48 = v45;
                *v39 = 0;
                v42 -= v41[v38] * (*v43 - 1);
                v51 = v42;
                --v45;
                v39 = &v37[v46 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v43 = &v47[v46];
                v49 = *&v47[4 * v44] - 1;
                v47 -= 4;
                v38 = v45;
              }

              while (v40 == v49);
              v39 = &v37[4 * v44 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v51 = v41[v45] + v42;
          }

          v17 += v18;
        }

        while (v17 < a5);
      }

      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
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

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      break;
  }
}

void sub_25A7829B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::NotEqual>>(float16x8_t *a1, __int16 *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, double a9, int16x4_t a10, void *a11)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v16);
      if (a5 >= 1)
      {
        v21 = 0;
        v22 = *(*a11 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>((a1 + 2 * v62), &a2[v55], (a3 + v21), a6, a7, a8, a11, v16, v19, v20);
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

          v21 += v22;
        }

        while (v21 < a5);
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

void sub_25A782DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::NotEqual>>(__int16 *a1, float16x8_t *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, double a9, int16x4_t a10, void *a11)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v16);
      if (a5 >= 1)
      {
        v21 = 0;
        v22 = *(*a11 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(&a1[v62], (a2 + 2 * v55), (a3 + v21), a6, a7, a8, a11, v16, v19, v20);
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

          v21 += v22;
        }

        while (v21 < a5);
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

void sub_25A7831C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,BOOL,false,mlx::core::detail::NotEqual>(short float *a1, short float *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::NotEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::NotEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = **a9;
        v19 = 2 * **a7;
        v20 = 2 * **a8;
        do
        {
          *v12 = *v14 != *v13;
          v12 += v18;
          v14 = (v14 + v19);
          v13 = (v13 + v20);
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
        v23 = (*a9)[a4 - 4];
        do
        {
          mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::NotEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A7835E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

short float *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(short float *result, short float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
        v14 = a3;
        v13 = v10;
        do
        {
          v18 = v13;
          *v14++ = vand_s8(vmovn_s16(vmvnq_s8(vceqq_f16(*&result[v17], *&a2[v17]))), 0x101010101010101);
          v13 -= 8;
          v17 += 8;
        }

        while (v18 > 0xF);
        v16 = &result[v17];
        v15 = &a2[v17];
      }

      if (v13 >= 1)
      {
        v19 = v13 + 1;
        do
        {
          v20 = *v16++;
          v21 = v20;
          v22 = *v15++;
          v14->i8[0] = v21 != v22;
          v14 = (v14 + 1);
          --v19;
        }

        while (v19 > 1);
      }

      a3 = (a3 + v10);
      result = (result + v11);
      a2 = (a2 + v12);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

short float *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(short float *result, short float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

short float *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(short float *result, short float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float16x8_t *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(float16x8_t *result, __int16 *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(*a5 + 8 * a8);
    v13 = *(*a6 + 8 * a8);
    v14 = *(*a7 + 8 * a8);
    do
    {
      a10.i16[0] = *a2;
      v15 = v14;
      v16 = a3;
      v17 = result;
      if (v14 >= 8)
      {
        v18 = vdupq_lane_s16(a10, 0);
        v17 = result;
        v16 = a3;
        v19 = v14;
        do
        {
          v20 = *v17++;
          *v16++ = vand_s8(vmovn_s16(vmvnq_s8(vceqq_f16(v20, v18))), 0x101010101010101);
          v15 = v19 - 8;
          v21 = v19 > 0xF;
          v19 -= 8;
        }

        while (v21);
      }

      if (v15 >= 1)
      {
        v22 = v15 + 1;
        do
        {
          v23 = *v17->i16;
          v17 = (v17 + 2);
          v16->i8[0] = v23 != *a10.i16;
          v16 = (v16 + 1);
          --v22;
        }

        while (v22 > 1);
      }

      a3 = (a3 + v14);
      result = (result + 2 * v12);
      a2 += v13;
      ++v11;
    }

    while (v11 != v10);
  }

  return result;
}

float16x8_t *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(float16x8_t *result, __int16 *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v16 = result;
    v17 = *(*a7 + 8 * a8);
    v18 = 2 * *(*a5 + 8 * a8);
    v19 = 2 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

float16x8_t *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>(float16x8_t *result, __int16 *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v16 = result;
    v17 = *(*a7 + 8 * a8);
    v18 = 2 * *(*a5 + 8 * a8);
    v19 = 2 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(__int16 *result, float16x8_t *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(*a5 + 8 * a8);
    v13 = *(*a6 + 8 * a8);
    v14 = *(*a7 + 8 * a8);
    do
    {
      a10.i16[0] = *result;
      v15 = v14;
      v16 = a3;
      v17 = a2;
      if (v14 >= 8)
      {
        v18 = vdupq_lane_s16(a10, 0);
        v17 = a2;
        v16 = a3;
        v19 = v14;
        do
        {
          v20 = *v17++;
          *v16++ = vand_s8(vmovn_s16(vmvnq_s8(vceqq_f16(v18, v20))), 0x101010101010101);
          v15 = v19 - 8;
          v21 = v19 > 0xF;
          v19 -= 8;
        }

        while (v21);
      }

      if (v15 >= 1)
      {
        v22 = v15 + 1;
        do
        {
          v23 = *v17->i16;
          v17 = (v17 + 2);
          v16->i8[0] = *a10.i16 != v23;
          v16 = (v16 + 1);
          --v22;
        }

        while (v22 > 1);
      }

      a3 = (a3 + v14);
      result += v12;
      a2 = (a2 + 2 * v13);
      ++v11;
    }

    while (v11 != v10);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(__int16 *result, float16x8_t *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v16 = result;
    v17 = *(*a7 + 8 * a8);
    v18 = 2 * *(*a5 + 8 * a8);
    v19 = 2 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(__int16 *result, float16x8_t *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v16 = result;
    v17 = *(*a7 + 8 * a8);
    v18 = 2 * *(*a5 + 8 * a8);
    v19 = 2 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

short float *mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::NotEqual,2,false>(short float *result, short float *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *a4;
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a7 + 8 * a8);
    v12 = a8 + 1;
    v13 = *(*a7 + 8 * v12);
    v14 = *(v8 + 4 * v12);
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a5 + 8 * v12);
    v17 = 2 * *(*a6 + 8 * a8);
    v18 = 2 * *(*a6 + 8 * v12);
    do
    {
      if (v14 >= 1)
      {
        v19 = a2;
        v20 = result;
        v21 = v14;
        v22 = a3;
        do
        {
          *v22 = *v20 != *v19;
          v22 += v13;
          v20 = (v20 + v16);
          v19 = (v19 + v18);
          --v21;
        }

        while (v21);
      }

      a3 += v11;
      ++v10;
      result = (result + v15);
      a2 = (a2 + v17);
    }

    while (v10 != v9);
  }

  return result;
}

short float *mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::NotEqual,3,false>(short float *result, short float *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::NotEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<float,BOOL,true,mlx::core::VectorVector<mlx::core::detail::NotEqual>>(float *a1, float *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v58, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v51, a6, a8, v14);
      if (a5 >= 1)
      {
        v17 = 0;
        v18 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
          v19 = v60 - v59;
          v20 = (v60 - v59) >> 2;
          if (v20)
          {
            v21 = v63;
            v22 = ((v19 << 30) - 0x100000000) >> 32;
            v23 = v63 + 4 * v22;
            v24 = *v23;
            v25 = v59 + 4 * v22;
            v26 = v61;
            v27 = v58;
            if (v20 >= 2 && v24 == *v25 - 1)
            {
              v30 = (v19 >> 2) & 0x7FFFFFFF;
              v29 = v30 - 1;
              v31 = 4 * v30;
              v32 = v59 - 8;
              do
              {
                v33 = v29;
                *v23 = 0;
                v27 -= v26[v22] * (*v25 - 1);
                v58 = v27;
                --v29;
                v23 = &v21[v31 - 8];
                v24 = *v23;
                v21 -= 4;
                if (v33 < 2)
                {
                  break;
                }

                v25 = &v32[v31];
                v34 = *&v32[4 * v30] - 1;
                v32 -= 4;
                v22 = v29;
              }

              while (v24 == v34);
              v23 = &v21[4 * v30 - 4];
            }

            else
            {
              v29 = ((v19 << 30) - 0x100000000) >> 32;
            }

            *v23 = v24 + 1;
            v58 = v26[v29] + v27;
          }

          v35 = v53 - v52;
          v36 = (v53 - v52) >> 2;
          if (v36)
          {
            v37 = __p;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = __p + 4 * v38;
            v40 = *v39;
            v41 = v54;
            v42 = v51;
            if (v36 >= 2 && (v43 = v52 + 4 * v38, v40 == *v43 - 1))
            {
              v44 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v44 - 1;
              v46 = 4 * v44;
              v47 = v52 - 8;
              do
              {
                v48 = v45;
                *v39 = 0;
                v42 -= v41[v38] * (*v43 - 1);
                v51 = v42;
                --v45;
                v39 = &v37[v46 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v43 = &v47[v46];
                v49 = *&v47[4 * v44] - 1;
                v47 -= 4;
                v38 = v45;
              }

              while (v40 == v49);
              v39 = &v37[4 * v44 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v51 = v41[v45] + v42;
          }

          v17 += v18;
        }

        while (v17 < a5);
      }

      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
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

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      break;
  }
}

void sub_25A784274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::NotEqual>>(_OWORD *a1, _DWORD *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, double a9, double a10, void *a11)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v16);
      if (a5 >= 1)
      {
        v21 = 0;
        v22 = *(*a11 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>((a1 + 4 * v62), &a2[v55], (a3 + v21), a6, a7, a8, a11, v16, v19, v20);
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

          v21 += v22;
        }

        while (v21 < a5);
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

void sub_25A78467C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::NotEqual>>(_DWORD *a1, _OWORD *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, double a9, double a10, void *a11)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v55, a6, a8, v16);
      if (a5 >= 1)
      {
        v21 = 0;
        v22 = *(*a11 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(&a1[v62], (a2 + 4 * v55), (a3 + v21), a6, a7, a8, a11, v16, v19, v20);
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

          v21 += v22;
        }

        while (v21 < a5);
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

void sub_25A784A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,BOOL,false,mlx::core::detail::NotEqual>(float *a1, float *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::NotEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::NotEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = **a9;
        v19 = 4 * **a7;
        v20 = 4 * **a8;
        do
        {
          *v12 = *v14 != *v13;
          v12 += v18;
          v14 = (v14 + v19);
          v13 = (v13 + v20);
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
        v23 = (*a9)[a4 - 4];
        do
        {
          mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::NotEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A784EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(float *result, float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      v13 = a3;
      v14 = v10;
      v15 = a2;
      v16 = result;
      if (v10 >= 8)
      {
        v17 = 0;
        v14 = v10;
        v13 = a3;
        do
        {
          v18 = v14;
          *v13++ = vand_s8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqq_f32(*&result[v17], *&a2[v17]), vceqq_f32(*&result[v17 + 4], *&a2[v17 + 4])))), 0x101010101010101);
          v14 -= 8;
          v17 += 8;
        }

        while (v18 > 0xF);
        v16 = &result[v17];
        v15 = &a2[v17];
      }

      if (v14 >= 1)
      {
        v19 = v14 + 1;
        do
        {
          v20 = *v16++;
          v21 = v20;
          v22 = *v15++;
          v13->i8[0] = v21 != v22;
          v13 = (v13 + 1);
          --v19;
        }

        while (v19 > 1);
      }

      a3 = (a3 + v10);
      result = (result + v11);
      a2 = (a2 + v12);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(float *result, float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(float *result, float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(_OWORD *result, _DWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(*a5 + 8 * a8);
    v13 = *(*a6 + 8 * a8);
    v14 = *(*a7 + 8 * a8);
    do
    {
      LODWORD(a10) = *a2;
      v15 = v14;
      v16 = a3;
      v17 = result;
      if (v14 >= 8)
      {
        v18 = vdupq_lane_s32(*&a10, 0);
        v17 = result;
        v16 = a3;
        v19 = v14;
        do
        {
          v20 = *v17;
          v21 = *(v17 + 1);
          v17 += 2;
          *v16++ = vand_s8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqq_f32(v20, v18), vceqq_f32(v21, v18)))), 0x101010101010101);
          v15 = v19 - 8;
          v22 = v19 > 0xF;
          v19 -= 8;
        }

        while (v22);
      }

      if (v15 >= 1)
      {
        v23 = v15 + 1;
        do
        {
          v24 = *v17;
          v17 = (v17 + 4);
          v16->i8[0] = v24 != *&a10;
          v16 = (v16 + 1);
          --v23;
        }

        while (v23 > 1);
      }

      a3 = (a3 + v14);
      result = (result + 4 * v12);
      a2 += v13;
      ++v11;
    }

    while (v11 != v10);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(_OWORD *result, _DWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v16 = result;
    v17 = *(*a7 + 8 * a8);
    v18 = 4 * *(*a5 + 8 * a8);
    v19 = 4 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>(_OWORD *result, _DWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v16 = result;
    v17 = *(*a7 + 8 * a8);
    v18 = 4 * *(*a5 + 8 * a8);
    v19 = 4 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(_DWORD *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(*a5 + 8 * a8);
    v13 = *(*a6 + 8 * a8);
    v14 = *(*a7 + 8 * a8);
    do
    {
      LODWORD(a10) = *result;
      v15 = v14;
      v16 = a3;
      v17 = a2;
      if (v14 >= 8)
      {
        v18 = vdupq_lane_s32(*&a10, 0);
        v17 = a2;
        v16 = a3;
        v19 = v14;
        do
        {
          v20 = *v17;
          v21 = *(v17 + 1);
          v17 += 2;
          *v16++ = vand_s8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqq_f32(v18, v20), vceqq_f32(v18, v21)))), 0x101010101010101);
          v15 = v19 - 8;
          v22 = v19 > 0xF;
          v19 -= 8;
        }

        while (v22);
      }

      if (v15 >= 1)
      {
        v23 = v15 + 1;
        do
        {
          v24 = *v17;
          v17 = (v17 + 4);
          v16->i8[0] = *&a10 != v24;
          v16 = (v16 + 1);
          --v23;
        }

        while (v23 > 1);
      }

      a3 = (a3 + v14);
      result += v12;
      a2 = (a2 + 4 * v13);
      ++v11;
    }

    while (v11 != v10);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(_DWORD *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v16 = result;
    v17 = *(*a7 + 8 * a8);
    v18 = 4 * *(*a5 + 8 * a8);
    v19 = 4 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(_DWORD *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v16 = result;
    v17 = *(*a7 + 8 * a8);
    v18 = 4 * *(*a5 + 8 * a8);
    v19 = 4 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::NotEqual,2,false>(float *result, float *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *a4;
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a7 + 8 * a8);
    v12 = a8 + 1;
    v13 = *(*a7 + 8 * v12);
    v14 = *(v8 + 4 * v12);
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a5 + 8 * v12);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a6 + 8 * v12);
    do
    {
      if (v14 >= 1)
      {
        v19 = a2;
        v20 = result;
        v21 = v14;
        v22 = a3;
        do
        {
          *v22 = *v20 != *v19;
          v22 += v13;
          v20 = (v20 + v16);
          v19 = (v19 + v18);
          --v21;
        }

        while (v21);
      }

      a3 += v11;
      ++v10;
      result = (result + v15);
      a2 = (a2 + v17);
    }

    while (v10 != v9);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::NotEqual,3,false>(float *result, float *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::NotEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::VectorVector<mlx::core::detail::NotEqual>>(double *a1, double *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v58, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v51, a6, a8, v14);
      if (a5 >= 1)
      {
        v17 = 0;
        v18 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
          v19 = v60 - v59;
          v20 = (v60 - v59) >> 2;
          if (v20)
          {
            v21 = v63;
            v22 = ((v19 << 30) - 0x100000000) >> 32;
            v23 = v63 + 4 * v22;
            v24 = *v23;
            v25 = v59 + 4 * v22;
            v26 = v61;
            v27 = v58;
            if (v20 >= 2 && v24 == *v25 - 1)
            {
              v30 = (v19 >> 2) & 0x7FFFFFFF;
              v29 = v30 - 1;
              v31 = 4 * v30;
              v32 = v59 - 8;
              do
              {
                v33 = v29;
                *v23 = 0;
                v27 -= v26[v22] * (*v25 - 1);
                v58 = v27;
                --v29;
                v23 = &v21[v31 - 8];
                v24 = *v23;
                v21 -= 4;
                if (v33 < 2)
                {
                  break;
                }

                v25 = &v32[v31];
                v34 = *&v32[4 * v30] - 1;
                v32 -= 4;
                v22 = v29;
              }

              while (v24 == v34);
              v23 = &v21[4 * v30 - 4];
            }

            else
            {
              v29 = ((v19 << 30) - 0x100000000) >> 32;
            }

            *v23 = v24 + 1;
            v58 = v26[v29] + v27;
          }

          v35 = v53 - v52;
          v36 = (v53 - v52) >> 2;
          if (v36)
          {
            v37 = __p;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = __p + 4 * v38;
            v40 = *v39;
            v41 = v54;
            v42 = v51;
            if (v36 >= 2 && (v43 = v52 + 4 * v38, v40 == *v43 - 1))
            {
              v44 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v44 - 1;
              v46 = 4 * v44;
              v47 = v52 - 8;
              do
              {
                v48 = v45;
                *v39 = 0;
                v42 -= v41[v38] * (*v43 - 1);
                v51 = v42;
                --v45;
                v39 = &v37[v46 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v43 = &v47[v46];
                v49 = *&v47[4 * v44] - 1;
                v47 -= 4;
                v38 = v45;
              }

              while (v40 == v49);
              v39 = &v37[4 * v44 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v51 = v41[v45] + v42;
          }

          v17 += v18;
        }

        while (v17 < a5);
      }

      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
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

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      break;
  }
}

void sub_25A785B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::NotEqual>>(_OWORD *a1, double *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v58, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v51, a6, a8, v14);
      if (a5 >= 1)
      {
        v17 = 0;
        v18 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>((a1 + 8 * v58), &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
          v19 = v60 - v59;
          v20 = (v60 - v59) >> 2;
          if (v20)
          {
            v21 = v63;
            v22 = ((v19 << 30) - 0x100000000) >> 32;
            v23 = v63 + 4 * v22;
            v24 = *v23;
            v25 = v59 + 4 * v22;
            v26 = v61;
            v27 = v58;
            if (v20 >= 2 && v24 == *v25 - 1)
            {
              v30 = (v19 >> 2) & 0x7FFFFFFF;
              v29 = v30 - 1;
              v31 = 4 * v30;
              v32 = v59 - 8;
              do
              {
                v33 = v29;
                *v23 = 0;
                v27 -= v26[v22] * (*v25 - 1);
                v58 = v27;
                --v29;
                v23 = &v21[v31 - 8];
                v24 = *v23;
                v21 -= 4;
                if (v33 < 2)
                {
                  break;
                }

                v25 = &v32[v31];
                v34 = *&v32[4 * v30] - 1;
                v32 -= 4;
                v22 = v29;
              }

              while (v24 == v34);
              v23 = &v21[4 * v30 - 4];
            }

            else
            {
              v29 = ((v19 << 30) - 0x100000000) >> 32;
            }

            *v23 = v24 + 1;
            v58 = v26[v29] + v27;
          }

          v35 = v53 - v52;
          v36 = (v53 - v52) >> 2;
          if (v36)
          {
            v37 = __p;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = __p + 4 * v38;
            v40 = *v39;
            v41 = v54;
            v42 = v51;
            if (v36 >= 2 && (v43 = v52 + 4 * v38, v40 == *v43 - 1))
            {
              v44 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v44 - 1;
              v46 = 4 * v44;
              v47 = v52 - 8;
              do
              {
                v48 = v45;
                *v39 = 0;
                v42 -= v41[v38] * (*v43 - 1);
                v51 = v42;
                --v45;
                v39 = &v37[v46 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v43 = &v47[v46];
                v49 = *&v47[4 * v44] - 1;
                v47 -= 4;
                v38 = v45;
              }

              while (v40 == v49);
              v39 = &v37[4 * v44 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v51 = v41[v45] + v42;
          }

          v17 += v18;
        }

        while (v17 < a5);
      }

      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
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

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      break;
  }
}

void sub_25A785F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::NotEqual>>(double *a1, _OWORD *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v58, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v51, a6, a8, v14);
      if (a5 >= 1)
      {
        v17 = 0;
        v18 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(&a1[v58], (a2 + 8 * v51), (a3 + v17), a6, a7, a8, a9, v14);
          v19 = v60 - v59;
          v20 = (v60 - v59) >> 2;
          if (v20)
          {
            v21 = v63;
            v22 = ((v19 << 30) - 0x100000000) >> 32;
            v23 = v63 + 4 * v22;
            v24 = *v23;
            v25 = v59 + 4 * v22;
            v26 = v61;
            v27 = v58;
            if (v20 >= 2 && v24 == *v25 - 1)
            {
              v30 = (v19 >> 2) & 0x7FFFFFFF;
              v29 = v30 - 1;
              v31 = 4 * v30;
              v32 = v59 - 8;
              do
              {
                v33 = v29;
                *v23 = 0;
                v27 -= v26[v22] * (*v25 - 1);
                v58 = v27;
                --v29;
                v23 = &v21[v31 - 8];
                v24 = *v23;
                v21 -= 4;
                if (v33 < 2)
                {
                  break;
                }

                v25 = &v32[v31];
                v34 = *&v32[4 * v30] - 1;
                v32 -= 4;
                v22 = v29;
              }

              while (v24 == v34);
              v23 = &v21[4 * v30 - 4];
            }

            else
            {
              v29 = ((v19 << 30) - 0x100000000) >> 32;
            }

            *v23 = v24 + 1;
            v58 = v26[v29] + v27;
          }

          v35 = v53 - v52;
          v36 = (v53 - v52) >> 2;
          if (v36)
          {
            v37 = __p;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = __p + 4 * v38;
            v40 = *v39;
            v41 = v54;
            v42 = v51;
            if (v36 >= 2 && (v43 = v52 + 4 * v38, v40 == *v43 - 1))
            {
              v44 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v44 - 1;
              v46 = 4 * v44;
              v47 = v52 - 8;
              do
              {
                v48 = v45;
                *v39 = 0;
                v42 -= v41[v38] * (*v43 - 1);
                v51 = v42;
                --v45;
                v39 = &v37[v46 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v43 = &v47[v46];
                v49 = *&v47[4 * v44] - 1;
                v47 -= 4;
                v38 = v45;
              }

              while (v40 == v49);
              v39 = &v37[4 * v44 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v51 = v41[v45] + v42;
          }

          v17 += v18;
        }

        while (v17 < a5);
      }

      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
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

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      break;
  }
}

void sub_25A786368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,BOOL,false,mlx::core::detail::NotEqual>(double *a1, double *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::NotEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::NotEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = **a9;
        v19 = 8 * **a7;
        v20 = 8 * **a8;
        do
        {
          *v12 = *v14 != *v13;
          v12 += v18;
          v14 = (v14 + v19);
          v13 = (v13 + v20);
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
        v23 = (*a9)[a4 - 4];
        do
        {
          mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::NotEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A786788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(double *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      v13 = a3;
      v14 = v10;
      v15 = a2;
      v16 = result;
      if (v10 >= 4)
      {
        v17 = 0;
        v14 = v10;
        v13 = a3;
        do
        {
          v18 = v14;
          *v13++ = vuzp1_s8(vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&result[v17], *&a2[v17]), vceqq_f64(*&result[v17 + 2], *&a2[v17 + 2])))), 0x1000100010001), 0x1000100010001).u32[0];
          v14 -= 4;
          v17 += 4;
        }

        while (v18 > 7);
        v16 = &result[v17];
        v15 = &a2[v17];
      }

      if (v14 >= 1)
      {
        v19 = v14 + 1;
        do
        {
          v20 = *v16++;
          v21 = v20;
          v22 = *v15++;
          *v13 = v21 != v22;
          v13 = (v13 + 1);
          --v19;
        }

        while (v19 > 1);
      }

      a3 = (a3 + v10);
      result = (result + v11);
      a2 = (a2 + v12);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(double *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(double *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(_OWORD *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      if (v12 >= 4)
      {
        v17 = vdupq_lane_s64(v13, 0);
        v16 = result;
        v15 = a3;
        v18 = v12;
        do
        {
          v19 = *v16;
          v20 = *(v16 + 1);
          v16 += 2;
          *v15++ = vuzp1_s8(vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v19, v17), vceqq_f64(v20, v17)))), 0x1000100010001), 0x1000100010001).u32[0];
          v14 = v18 - 4;
          v21 = v18 > 7;
          v18 -= 4;
        }

        while (v21);
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v23 = *v16;
          v16 = (v16 + 8);
          *v15 = v23 != *&v13;
          v15 = (v15 + 1);
          --v22;
        }

        while (v22 > 1);
      }

      a3 = (a3 + v12);
      result = (result + 8 * v10);
      a2 += v11;
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(_OWORD *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>(_OWORD *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(double *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      if (v12 >= 4)
      {
        v17 = vdupq_lane_s64(v13, 0);
        v16 = a2;
        v15 = a3;
        v18 = v12;
        do
        {
          v19 = *v16;
          v20 = *(v16 + 1);
          v16 += 2;
          *v15++ = vuzp1_s8(vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v17, v19), vceqq_f64(v17, v20)))), 0x1000100010001), 0x1000100010001).u32[0];
          v14 = v18 - 4;
          v21 = v18 > 7;
          v18 -= 4;
        }

        while (v21);
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v23 = *v16;
          v16 = (v16 + 8);
          *v15 = *&v13 != v23;
          v15 = (v15 + 1);
          --v22;
        }

        while (v22 > 1);
      }

      a3 = (a3 + v12);
      result += v10;
      a2 = (a2 + 8 * v11);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(double *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(double *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::NotEqual,2,false>(double *result, double *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *a4;
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a7 + 8 * a8);
    v12 = a8 + 1;
    v13 = *(*a7 + 8 * v12);
    v14 = *(v8 + 4 * v12);
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * v12);
    v17 = 8 * *(*a6 + 8 * a8);
    v18 = 8 * *(*a6 + 8 * v12);
    do
    {
      if (v14 >= 1)
      {
        v19 = a2;
        v20 = result;
        v21 = v14;
        v22 = a3;
        do
        {
          *v22 = *v20 != *v19;
          v22 += v13;
          v20 = (v20 + v16);
          v19 = (v19 + v18);
          --v21;
        }

        while (v21);
      }

      a3 += v11;
      ++v10;
      result = (result + v15);
      a2 = (a2 + v17);
    }

    while (v10 != v9);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::NotEqual,3,false>(double *result, double *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::NotEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::VectorVector<mlx::core::detail::NotEqual>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v58, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v51, a6, a8, v14);
      if (a5 >= 1)
      {
        v17 = 0;
        v18 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(a1 + 2 * v58, a2 + 2 * v51, a3 + v17, a6, a7, a8, a9, v14);
          v19 = v60 - v59;
          v20 = (v60 - v59) >> 2;
          if (v20)
          {
            v21 = v63;
            v22 = ((v19 << 30) - 0x100000000) >> 32;
            v23 = v63 + 4 * v22;
            v24 = *v23;
            v25 = v59 + 4 * v22;
            v26 = v61;
            v27 = v58;
            if (v20 >= 2 && v24 == *v25 - 1)
            {
              v30 = (v19 >> 2) & 0x7FFFFFFF;
              v29 = v30 - 1;
              v31 = 4 * v30;
              v32 = v59 - 8;
              do
              {
                v33 = v29;
                *v23 = 0;
                v27 -= v26[v22] * (*v25 - 1);
                v58 = v27;
                --v29;
                v23 = &v21[v31 - 8];
                v24 = *v23;
                v21 -= 4;
                if (v33 < 2)
                {
                  break;
                }

                v25 = &v32[v31];
                v34 = *&v32[4 * v30] - 1;
                v32 -= 4;
                v22 = v29;
              }

              while (v24 == v34);
              v23 = &v21[4 * v30 - 4];
            }

            else
            {
              v29 = ((v19 << 30) - 0x100000000) >> 32;
            }

            *v23 = v24 + 1;
            v58 = v26[v29] + v27;
          }

          v35 = v53 - v52;
          v36 = (v53 - v52) >> 2;
          if (v36)
          {
            v37 = __p;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = __p + 4 * v38;
            v40 = *v39;
            v41 = v54;
            v42 = v51;
            if (v36 >= 2 && (v43 = v52 + 4 * v38, v40 == *v43 - 1))
            {
              v44 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v44 - 1;
              v46 = 4 * v44;
              v47 = v52 - 8;
              do
              {
                v48 = v45;
                *v39 = 0;
                v42 -= v41[v38] * (*v43 - 1);
                v51 = v42;
                --v45;
                v39 = &v37[v46 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v43 = &v47[v46];
                v49 = *&v47[4 * v44] - 1;
                v47 -= 4;
                v38 = v45;
              }

              while (v40 == v49);
              v39 = &v37[4 * v44 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v51 = v41[v45] + v42;
          }

          v17 += v18;
        }

        while (v17 < a5);
      }

      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
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

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      break;
  }
}

void sub_25A787448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::NotEqual>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v58, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v51, a6, a8, v14);
      if (a5 >= 1)
      {
        v17 = 0;
        v18 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>(a1 + 2 * v58, &a2[v51], a3 + v17, a6, a7, a8, a9, v14);
          v19 = v60 - v59;
          v20 = (v60 - v59) >> 2;
          if (v20)
          {
            v21 = v63;
            v22 = ((v19 << 30) - 0x100000000) >> 32;
            v23 = v63 + 4 * v22;
            v24 = *v23;
            v25 = v59 + 4 * v22;
            v26 = v61;
            v27 = v58;
            if (v20 >= 2 && v24 == *v25 - 1)
            {
              v30 = (v19 >> 2) & 0x7FFFFFFF;
              v29 = v30 - 1;
              v31 = 4 * v30;
              v32 = v59 - 8;
              do
              {
                v33 = v29;
                *v23 = 0;
                v27 -= v26[v22] * (*v25 - 1);
                v58 = v27;
                --v29;
                v23 = &v21[v31 - 8];
                v24 = *v23;
                v21 -= 4;
                if (v33 < 2)
                {
                  break;
                }

                v25 = &v32[v31];
                v34 = *&v32[4 * v30] - 1;
                v32 -= 4;
                v22 = v29;
              }

              while (v24 == v34);
              v23 = &v21[4 * v30 - 4];
            }

            else
            {
              v29 = ((v19 << 30) - 0x100000000) >> 32;
            }

            *v23 = v24 + 1;
            v58 = v26[v29] + v27;
          }

          v35 = v53 - v52;
          v36 = (v53 - v52) >> 2;
          if (v36)
          {
            v37 = __p;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = __p + 4 * v38;
            v40 = *v39;
            v41 = v54;
            v42 = v51;
            if (v36 >= 2 && (v43 = v52 + 4 * v38, v40 == *v43 - 1))
            {
              v44 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v44 - 1;
              v46 = 4 * v44;
              v47 = v52 - 8;
              do
              {
                v48 = v45;
                *v39 = 0;
                v42 -= v41[v38] * (*v43 - 1);
                v51 = v42;
                --v45;
                v39 = &v37[v46 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v43 = &v47[v46];
                v49 = *&v47[4 * v44] - 1;
                v47 -= 4;
                v38 = v45;
              }

              while (v40 == v49);
              v39 = &v37[4 * v44 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v51 = v41[v45] + v42;
          }

          v17 += v18;
        }

        while (v17 < a5);
      }

      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
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

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      break;
  }
}

void sub_25A787850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::NotEqual>>(unsigned __int16 *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v58, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v51, a6, a8, v14);
      if (a5 >= 1)
      {
        v17 = 0;
        v18 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(&a1[v58], a2 + 2 * v51, a3 + v17, a6, a7, a8, a9, v14);
          v19 = v60 - v59;
          v20 = (v60 - v59) >> 2;
          if (v20)
          {
            v21 = v63;
            v22 = ((v19 << 30) - 0x100000000) >> 32;
            v23 = v63 + 4 * v22;
            v24 = *v23;
            v25 = v59 + 4 * v22;
            v26 = v61;
            v27 = v58;
            if (v20 >= 2 && v24 == *v25 - 1)
            {
              v30 = (v19 >> 2) & 0x7FFFFFFF;
              v29 = v30 - 1;
              v31 = 4 * v30;
              v32 = v59 - 8;
              do
              {
                v33 = v29;
                *v23 = 0;
                v27 -= v26[v22] * (*v25 - 1);
                v58 = v27;
                --v29;
                v23 = &v21[v31 - 8];
                v24 = *v23;
                v21 -= 4;
                if (v33 < 2)
                {
                  break;
                }

                v25 = &v32[v31];
                v34 = *&v32[4 * v30] - 1;
                v32 -= 4;
                v22 = v29;
              }

              while (v24 == v34);
              v23 = &v21[4 * v30 - 4];
            }

            else
            {
              v29 = ((v19 << 30) - 0x100000000) >> 32;
            }

            *v23 = v24 + 1;
            v58 = v26[v29] + v27;
          }

          v35 = v53 - v52;
          v36 = (v53 - v52) >> 2;
          if (v36)
          {
            v37 = __p;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = __p + 4 * v38;
            v40 = *v39;
            v41 = v54;
            v42 = v51;
            if (v36 >= 2 && (v43 = v52 + 4 * v38, v40 == *v43 - 1))
            {
              v44 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v44 - 1;
              v46 = 4 * v44;
              v47 = v52 - 8;
              do
              {
                v48 = v45;
                *v39 = 0;
                v42 -= v41[v38] * (*v43 - 1);
                v51 = v42;
                --v45;
                v39 = &v37[v46 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v43 = &v47[v46];
                v49 = *&v47[4 * v44] - 1;
                v47 -= 4;
                v38 = v45;
              }

              while (v40 == v49);
              v39 = &v37[4 * v44 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v51 = v41[v45] + v42;
          }

          v17 += v18;
        }

        while (v17 < a5);
      }

      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
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

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      break;
  }
}

void sub_25A787C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,false,mlx::core::detail::NotEqual>(unsigned __int16 *a1, unsigned __int16 *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::NotEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::NotEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = **a9;
        v19 = 2 * **a7;
        v20 = 2 * **a8;
        do
        {
          *v12 = COERCE_FLOAT(*v14 << 16) != COERCE_FLOAT(*v13 << 16);
          v12 += v18;
          v14 = (v14 + v19);
          v13 = (v13 + v20);
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
        v23 = (*a9)[a4 - 4];
        do
        {
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::NotEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A788088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *(a3 + v13) = COERCE_FLOAT(*(result + 2 * v13) << 16) != COERCE_FLOAT(*(a2 + 2 * v13) << 16);
          ++v13;
          --v14;
        }

        while (v14 > 1);
      }

      a3 += v10;
      ++v9;
      result += v11;
      a2 += v12;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
        LODWORD(v14) = *a2 << 16;
        v15 = v11 + 1;
        do
        {
          *(a3 + v13) = COERCE_FLOAT(*(result + 2 * v13) << 16) != v14;
          ++v13;
          --v15;
        }

        while (v15 > 1);
      }

      a3 += v11;
      a2 += v10;
      ++v9;
      result += v12;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(unsigned __int16 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
        LODWORD(v14) = *result << 16;
        v15 = v11 + 1;
        do
        {
          *(a3 + v13) = v14 != COERCE_FLOAT(*(a2 + 2 * v13) << 16);
          ++v13;
          --v15;
        }

        while (v15 > 1);
      }

      a3 += v11;
      result += v10;
      ++v9;
      a2 += v12;
    }

    while (v9 != v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(unsigned __int16 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(unsigned __int16 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::NotEqual,2,false>(unsigned __int16 *result, unsigned __int16 *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *a4;
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a7 + 8 * a8);
    v12 = a8 + 1;
    v13 = *(*a7 + 8 * v12);
    v14 = *(v8 + 4 * v12);
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a5 + 8 * v12);
    v17 = 2 * *(*a6 + 8 * a8);
    v18 = 2 * *(*a6 + 8 * v12);
    do
    {
      if (v14 >= 1)
      {
        v19 = v14;
        v20 = a2;
        v21 = result;
        v22 = a3;
        do
        {
          *v22 = COERCE_FLOAT(*v21 << 16) != COERCE_FLOAT(*v20 << 16);
          v22 += v13;
          v21 = (v21 + v16);
          v20 = (v20 + v18);
          --v19;
        }

        while (v19);
      }

      a3 += v11;
      ++v10;
      result = (result + v15);
      a2 = (a2 + v17);
    }

    while (v10 != v9);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::NotEqual,3,false>(unsigned __int16 *result, unsigned __int16 *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::NotEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::VectorVector<mlx::core::detail::NotEqual>>(uint64_t a1, uint64_t a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v58, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v51, a6, a8, v14);
      if (a5 >= 1)
      {
        v17 = 0;
        v18 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(a1 + 8 * v58, a2 + 8 * v51, &a3[v17], a6, a7, a8, a9, v14);
          v19 = v60 - v59;
          v20 = (v60 - v59) >> 2;
          if (v20)
          {
            v21 = v63;
            v22 = ((v19 << 30) - 0x100000000) >> 32;
            v23 = v63 + 4 * v22;
            v24 = *v23;
            v25 = v59 + 4 * v22;
            v26 = v61;
            v27 = v58;
            if (v20 >= 2 && v24 == *v25 - 1)
            {
              v30 = (v19 >> 2) & 0x7FFFFFFF;
              v29 = v30 - 1;
              v31 = 4 * v30;
              v32 = v59 - 8;
              do
              {
                v33 = v29;
                *v23 = 0;
                v27 -= v26[v22] * (*v25 - 1);
                v58 = v27;
                --v29;
                v23 = &v21[v31 - 8];
                v24 = *v23;
                v21 -= 4;
                if (v33 < 2)
                {
                  break;
                }

                v25 = &v32[v31];
                v34 = *&v32[4 * v30] - 1;
                v32 -= 4;
                v22 = v29;
              }

              while (v24 == v34);
              v23 = &v21[4 * v30 - 4];
            }

            else
            {
              v29 = ((v19 << 30) - 0x100000000) >> 32;
            }

            *v23 = v24 + 1;
            v58 = v26[v29] + v27;
          }

          v35 = v53 - v52;
          v36 = (v53 - v52) >> 2;
          if (v36)
          {
            v37 = __p;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = __p + 4 * v38;
            v40 = *v39;
            v41 = v54;
            v42 = v51;
            if (v36 >= 2 && (v43 = v52 + 4 * v38, v40 == *v43 - 1))
            {
              v44 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v44 - 1;
              v46 = 4 * v44;
              v47 = v52 - 8;
              do
              {
                v48 = v45;
                *v39 = 0;
                v42 -= v41[v38] * (*v43 - 1);
                v51 = v42;
                --v45;
                v39 = &v37[v46 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v43 = &v47[v46];
                v49 = *&v47[4 * v44] - 1;
                v47 -= 4;
                v38 = v45;
              }

              while (v40 == v49);
              v39 = &v37[4 * v44 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v51 = v41[v45] + v42;
          }

          v17 += v18;
        }

        while (v17 < a5);
      }

      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
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

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      break;
  }
}

void sub_25A788C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::NotEqual>>(float *a1, float *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v58, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v51, a6, a8, v14);
      if (a5 >= 1)
      {
        v17 = 0;
        v18 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>(&a1[2 * v58], &a2[2 * v51], &a3[v17], a6, a7, a8, a9, v14);
          v19 = v60 - v59;
          v20 = (v60 - v59) >> 2;
          if (v20)
          {
            v21 = v63;
            v22 = ((v19 << 30) - 0x100000000) >> 32;
            v23 = v63 + 4 * v22;
            v24 = *v23;
            v25 = v59 + 4 * v22;
            v26 = v61;
            v27 = v58;
            if (v20 >= 2 && v24 == *v25 - 1)
            {
              v30 = (v19 >> 2) & 0x7FFFFFFF;
              v29 = v30 - 1;
              v31 = 4 * v30;
              v32 = v59 - 8;
              do
              {
                v33 = v29;
                *v23 = 0;
                v27 -= v26[v22] * (*v25 - 1);
                v58 = v27;
                --v29;
                v23 = &v21[v31 - 8];
                v24 = *v23;
                v21 -= 4;
                if (v33 < 2)
                {
                  break;
                }

                v25 = &v32[v31];
                v34 = *&v32[4 * v30] - 1;
                v32 -= 4;
                v22 = v29;
              }

              while (v24 == v34);
              v23 = &v21[4 * v30 - 4];
            }

            else
            {
              v29 = ((v19 << 30) - 0x100000000) >> 32;
            }

            *v23 = v24 + 1;
            v58 = v26[v29] + v27;
          }

          v35 = v53 - v52;
          v36 = (v53 - v52) >> 2;
          if (v36)
          {
            v37 = __p;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = __p + 4 * v38;
            v40 = *v39;
            v41 = v54;
            v42 = v51;
            if (v36 >= 2 && (v43 = v52 + 4 * v38, v40 == *v43 - 1))
            {
              v44 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v44 - 1;
              v46 = 4 * v44;
              v47 = v52 - 8;
              do
              {
                v48 = v45;
                *v39 = 0;
                v42 -= v41[v38] * (*v43 - 1);
                v51 = v42;
                --v45;
                v39 = &v37[v46 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v43 = &v47[v46];
                v49 = *&v47[4 * v44] - 1;
                v47 -= 4;
                v38 = v45;
              }

              while (v40 == v49);
              v39 = &v37[4 * v44 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v51 = v41[v45] + v42;
          }

          v17 += v18;
        }

        while (v17 < a5);
      }

      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
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

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      break;
  }
}

void sub_25A789090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::NotEqual>>(float *a1, float *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v58, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v51, a6, a8, v14);
      if (a5 >= 1)
      {
        v17 = 0;
        v18 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(&a1[2 * v58], &a2[2 * v51], &a3[v17], a6, a7, a8, a9, v14);
          v19 = v60 - v59;
          v20 = (v60 - v59) >> 2;
          if (v20)
          {
            v21 = v63;
            v22 = ((v19 << 30) - 0x100000000) >> 32;
            v23 = v63 + 4 * v22;
            v24 = *v23;
            v25 = v59 + 4 * v22;
            v26 = v61;
            v27 = v58;
            if (v20 >= 2 && v24 == *v25 - 1)
            {
              v30 = (v19 >> 2) & 0x7FFFFFFF;
              v29 = v30 - 1;
              v31 = 4 * v30;
              v32 = v59 - 8;
              do
              {
                v33 = v29;
                *v23 = 0;
                v27 -= v26[v22] * (*v25 - 1);
                v58 = v27;
                --v29;
                v23 = &v21[v31 - 8];
                v24 = *v23;
                v21 -= 4;
                if (v33 < 2)
                {
                  break;
                }

                v25 = &v32[v31];
                v34 = *&v32[4 * v30] - 1;
                v32 -= 4;
                v22 = v29;
              }

              while (v24 == v34);
              v23 = &v21[4 * v30 - 4];
            }

            else
            {
              v29 = ((v19 << 30) - 0x100000000) >> 32;
            }

            *v23 = v24 + 1;
            v58 = v26[v29] + v27;
          }

          v35 = v53 - v52;
          v36 = (v53 - v52) >> 2;
          if (v36)
          {
            v37 = __p;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = __p + 4 * v38;
            v40 = *v39;
            v41 = v54;
            v42 = v51;
            if (v36 >= 2 && (v43 = v52 + 4 * v38, v40 == *v43 - 1))
            {
              v44 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v44 - 1;
              v46 = 4 * v44;
              v47 = v52 - 8;
              do
              {
                v48 = v45;
                *v39 = 0;
                v42 -= v41[v38] * (*v43 - 1);
                v51 = v42;
                --v45;
                v39 = &v37[v46 - 8];
                v40 = *v39;
                v37 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v43 = &v47[v46];
                v49 = *&v47[4 * v44] - 1;
                v47 -= 4;
                v38 = v45;
              }

              while (v40 == v49);
              v39 = &v37[4 * v44 - 4];
            }

            else
            {
              v45 = ((v35 << 30) - 0x100000000) >> 32;
            }

            *v39 = v40 + 1;
            v51 = v41[v45] + v42;
          }

          v17 += v18;
        }

        while (v17 < a5);
      }

      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
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

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      break;
  }
}

void sub_25A789498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,false,mlx::core::detail::NotEqual>(uint64_t a1, uint64_t a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::NotEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::NotEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v16 = **a6;
      if (v16 >= 1)
      {
        v17 = **a9;
        v18 = (a1 + 4);
        v19 = 8 * **a7;
        v20 = (a2 + 4);
        v21 = 8 * **a8;
        do
        {
          v22 = *(v18 - 1) != *(v20 - 1);
          if (*v18 != *v20)
          {
            v22 = 1;
          }

          *v12 = v22;
          v12 += v17;
          v18 = (v18 + v19);
          v20 = (v20 + v21);
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
        v25 = (*a9)[a4 - 4];
        do
        {
          mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::NotEqual,3,false>(a1 + 8 * v65, a2 + 8 * v58, &v12[v24], a6, a7, a8, a9, v14);
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

void sub_25A7898C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
        v15 = a3;
        do
        {
          v16 = *(result + v13) != *(a2 + v13);
          if (*(result + v13 + 4) != *(a2 + v13 + 4))
          {
            v16 = 1;
          }

          *v15++ = v16;
          v13 += 8;
          --v14;
        }

        while (v14 > 1);
      }

      a3 += v10;
      ++v9;
      result += v11;
      a2 += v12;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,3,true>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NotEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
        v13 = *a2;
        v14 = a2[1];
        v15 = v12 + 1;
        v16 = result;
        v17 = a3;
        do
        {
          v18 = *v16;
          v19 = v16[1];
          v16 += 2;
          v20 = v18 != v13;
          if (v19 != v14)
          {
            v20 = 1;
          }

          *v17++ = v20;
          --v15;
        }

        while (v15 > 1);
      }

      a3 += v12;
      result += 2 * v10;
      a2 += 2 * v11;
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,3,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NotEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
        v13 = *result;
        v14 = result[1];
        v15 = v12 + 1;
        v16 = a2;
        v17 = a3;
        do
        {
          v18 = *v16;
          v19 = v16[1];
          v16 += 2;
          v20 = v13 != v18;
          if (v14 != v19)
          {
            v20 = 1;
          }

          *v17++ = v20;
          --v15;
        }

        while (v15 > 1);
      }

      a3 += v12;
      result += 2 * v10;
      a2 += 2 * v11;
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,3,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NotEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::NotEqual,2,false>(uint64_t result, uint64_t a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *a4;
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a7 + 8 * a8);
    v12 = a8 + 1;
    v13 = *(*a7 + 8 * v12);
    v14 = *(v8 + 4 * v12);
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = (result + 4);
    v17 = 8 * *(*a5 + 8 * v12);
    v18 = (a2 + 4);
    v19 = 8 * *(*a6 + 8 * a8);
    result = 8 * *(*a6 + 8 * v12);
    do
    {
      if (v14 >= 1)
      {
        v20 = v14;
        v21 = v18;
        v22 = v16;
        v23 = a3;
        do
        {
          v24 = *(v22 - 1) != *(v21 - 1);
          if (*v22 != *v21)
          {
            v24 = 1;
          }

          *v23 = v24;
          v23 += v13;
          v22 = (v22 + v17);
          v21 = (v21 + result);
          --v20;
        }

        while (v20);
      }

      a3 += v11;
      ++v10;
      v16 = (v16 + v15);
      v18 = (v18 + v19);
    }

    while (v10 != v9);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::NotEqual,3,false>(uint64_t result, uint64_t a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v14 = result;
    v15 = *(*a7 + 8 * a8);
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::NotEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::NotEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::NotEqual,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::NotEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::NotEqual,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C02AE0;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::NotEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::NotEqual,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::NotEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::NotEqual,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C02AE0;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::NotEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::NotEqual,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::NotEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::NotEqual,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286C02AE0;
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

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::NotEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::NotEqual,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::NotEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::NotEqual,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::NotEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::NotEqual,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::NotEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::NotEqual,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::NotEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::NotEqual,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::NotEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::NotEqual,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail5PowerEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286C02BD8;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail5PowerEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286C02BD8;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail5PowerEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C02BD8;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail5PowerEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail5PowerEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail5PowerEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEEclEv(uint64_t a1, int8x16_t a2, double a3, int64x2_t a4, int8x16_t a5)
{
  v6 = mlx::core::scheduler::scheduler(v5);

  mlx::core::scheduler::Scheduler::notify_task_completion(v6);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail5PowerEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Power>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Power,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1, int8x16_t a2, double a3, int64x2_t a4, int8x16_t a5)
{
  v5 = (a1 + 32);
  switch(*(*(a1 + 32) + 56))
  {
    case 0:
      mlx::core::binary_op<BOOL,BOOL,mlx::core::detail::Power>(a1, (a1 + 16), v5, *(a1 + 48));
      break;
    case 1:
      mlx::core::binary_op<unsigned char,unsigned char,mlx::core::detail::Power>(a1, (a1 + 16), v5, *(a1 + 48));
      break;
    case 2:
      mlx::core::binary_op<unsigned short,unsigned short,mlx::core::detail::Power>(a1, (a1 + 16), v5, *(a1 + 48));
      break;
    case 3:
      mlx::core::binary_op<unsigned int,unsigned int,mlx::core::detail::Power>(a1, (a1 + 16), v5, *(a1 + 48));
      break;
    case 4:
      mlx::core::binary_op<unsigned long long,unsigned long long,mlx::core::detail::Power>(a1, (a1 + 16), v5, *(a1 + 48), a2, a3, a4, a5);
      break;
    case 5:
      mlx::core::binary_op<signed char,signed char,mlx::core::detail::Power>(a1, (a1 + 16), v5, *(a1 + 48));
      break;
    case 6:
      mlx::core::binary_op<short,short,mlx::core::detail::Power>(a1, (a1 + 16), v5, *(a1 + 48));
      break;
    case 7:
      mlx::core::binary_op<int,int,mlx::core::detail::Power>(a1, (a1 + 16), v5, *(a1 + 48));
      break;
    case 8:
      mlx::core::binary_op<long long,long long,mlx::core::detail::Power>(a1, (a1 + 16), v5, *(a1 + 48));
      break;
    case 9:
      mlx::core::binary_op<half,half,mlx::core::detail::Power>(a1, (a1 + 16), v5, *(a1 + 48), *a2.i8);
      break;
    case 0xA:
      mlx::core::binary_op<float,float,mlx::core::detail::Power>(a1, (a1 + 16), v5, *(a1 + 48), *a2.i8);
      break;
    case 0xB:
      mlx::core::binary_op<double,double,mlx::core::detail::Power>(a1, (a1 + 16), v5, *(a1 + 48));
      break;
    case 0xC:
      mlx::core::binary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Power>(a1, (a1 + 16), v5, *(a1 + 48));
      break;
    case 0xD:
      mlx::core::binary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Power>(a1, (a1 + 16), v5, *(a1 + 48));
      break;
    default:
      return;
  }
}

void mlx::core::binary_op<BOOL,BOOL,mlx::core::detail::Power>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      v37 = *v10;
      v38 = 1;
      do
      {
        v39 = v38;
        v40 = v37;
        v38 = *v9;
        v37 = 0;
      }

      while ((v40 & 1) != 0);
      *v11 = v39 & 1;
      goto LABEL_81;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      if (v12 >= 1)
      {
        v13 = *v9;
        do
        {
          v14 = *v10;
          v15 = 1;
          do
          {
            v16 = v15;
            v17 = v14;
            v15 = v13;
            v14 = 0;
          }

          while ((v17 & 1) != 0);
          *v11++ = v16 & 1;
          ++v10;
          v18 = __OFSUB__(v12--, 1);
        }

        while (!((v12 < 0) ^ v18 | (v12 == 0)));
      }

      goto LABEL_81;
    }

LABEL_19:
    memset(v71, 0, sizeof(v71));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v71, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v24 = *a2;
    memset(v72, 0, sizeof(v72));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v72, *(v24 + 24), *(v24 + 32), (*(v24 + 32) - *(v24 + 24)) >> 3);
    v25 = *a3;
    v74[0] = 0;
    v74[1] = 0;
    v73 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v73, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 3);
    memset(v66, 0, sizeof(v66));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v66, v71, &v75, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v66, 0x7FFFFFFFuLL, &__p);
    v70 = v66;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v70);
    for (i = 0; i != -9; i -= 3)
    {
      v27 = v74[i - 1];
      if (v27)
      {
        v74[i] = v27;
        operator delete(v27);
      }
    }

    v28 = v69 + 6;
    v29 = *v69;
    v30 = (v69[1] - *v69) >> 3;
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
        goto LABEL_40;
      }
    }

    v33 = v32;
LABEL_40:
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
      if (*(v47 + v54) != *(*v28 + v54))
      {
        goto LABEL_47;
      }
    }

    v51 = v50;
LABEL_47:
    v55 = v30 + 1;
    while ((v34 & 0x80000000) == 0)
    {
      v56 = *(v29 + 8 * (v34 & 0x7FFFFFFF));
      --v55;
      --v34;
      if (v56)
      {
        goto LABEL_52;
      }
    }

    v55 = v32;
LABEL_52:
    v57 = v48 + 1;
    while ((v52 & 0x80000000) == 0)
    {
      v58 = *(v47 + 8 * (v52 & 0x7FFFFFFF));
      --v57;
      --v52;
      if (v58)
      {
        goto LABEL_57;
      }
    }

    v57 = v50;
LABEL_57:
    v59 = (v68 - __p) >> 2;
    if (v33 <= v51)
    {
      v60 = v51;
    }

    else
    {
      v60 = v33;
    }

    if (v33 <= v57)
    {
      v33 = v57;
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

    if (v59 > v33)
    {
      v62 = 2;
    }

    else
    {
      v33 = v51;
      v62 = v61;
    }

    if (v59 <= v60)
    {
      v63 = v33;
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

    if (!v63 || *(*v28 + 8 * v63 - 8) < 16)
    {
      goto LABEL_78;
    }

    switch(v64)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(v9, v10, v11, v63, *(*a1 + 48), &__p, v69, v69 + 3, v69 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(v9, v10, v11, v63, *(*a1 + 48), &__p, v69, v69 + 3, v69 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorVector<mlx::core::detail::Power>>(v9, v10, v11, v63, *(*a1 + 48), &__p, v69, v69 + 3, v69 + 6);
        break;
      default:
        LODWORD(v59) = v63;
LABEL_78:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,false,mlx::core::detail::Power>(v9, v10, v11, v59, *(*a1 + 48), &__p, v69, v69 + 3, v69 + 6);
        break;
    }

    v71[0] = &v69;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v71);
    if (__p)
    {
      v68 = __p;
      operator delete(__p);
    }

    goto LABEL_81;
  }

  if (a4 == 2)
  {
    v41 = *(v8 + 160);
    if (v41 >= 1)
    {
      v42 = *v10;
      do
      {
        v43 = 1;
        v44 = v42;
        do
        {
          v45 = v43;
          v46 = v44;
          v43 = *v9;
          v44 = 0;
        }

        while ((v46 & 1) != 0);
        *v11++ = v45 & 1;
        ++v9;
        v18 = __OFSUB__(v41--, 1);
      }

      while (!((v41 < 0) ^ v18 | (v41 == 0)));
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_19;
    }

    v19 = *(v8 + 48);
    if (v19 >= 1)
    {
      do
      {
        v20 = *v10;
        v21 = 1;
        do
        {
          v22 = v21;
          v23 = v20;
          v21 = *v9;
          v20 = 0;
        }

        while ((v23 & 1) != 0);
        *v11++ = v22 & 1;
        ++v9;
        ++v10;
        v18 = __OFSUB__(v19--, 1);
      }

      while (!((v19 < 0) ^ v18 | (v19 == 0)));
    }
  }

LABEL_81:
  v65 = *MEMORY[0x277D85DE8];
}

void sub_25A78ACBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorVector<mlx::core::detail::Power>>(char *a1, char *a2, _BYTE *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = **a7;
        v20 = **a8;
        v21 = **a9;
        do
        {
          if (v21 >= 1)
          {
            v22 = v14;
            v23 = v13;
            v24 = v12;
            v25 = v21;
            do
            {
              v26 = *v23;
              v27 = 1;
              do
              {
                v28 = v27;
                v29 = v26;
                v27 = *v22;
                v26 = 0;
              }

              while ((v29 & 1) != 0);
              *v24++ = v28 & 1;
              ++v22;
              ++v23;
              v30 = __OFSUB__(v25--, 1);
            }

            while (!((v25 < 0) ^ v30 | (v25 == 0)));
          }

          v12 += v21;
          v14 += v19;
          v13 += v20;
          ++v18;
        }

        while (v18 != v17);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v75, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v68, a6, a8, v15);
      if (a5 >= 1)
      {
        v32 = a5;
        v33 = 0;
        v67 = (*a9)[a4 - 4];
        v34 = v32;
        do
        {
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(&v14[v75], &v13[v68], &v12[v33], a6, a7, a8, a9, v15);
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

          v33 += v67;
        }

        while (v33 < v34);
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

      break;
  }
}

void sub_25A78B180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(char *a1, char *a2, _BYTE *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = **a7;
        v20 = **a8;
        v21 = **a9;
        do
        {
          if (v21 >= 1)
          {
            v22 = *v13;
            v23 = v14;
            v24 = v12;
            v25 = v21;
            do
            {
              v26 = 1;
              v27 = v22;
              do
              {
                v28 = v26;
                v29 = v27;
                v26 = *v23;
                v27 = 0;
              }

              while ((v29 & 1) != 0);
              *v24++ = v28 & 1;
              ++v23;
              v30 = __OFSUB__(v25--, 1);
            }

            while (!((v25 < 0) ^ v30 | (v25 == 0)));
          }

          v12 += v21;
          v14 += v19;
          v13 += v20;
          ++v18;
        }

        while (v18 != v17);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v75, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v68, a6, a8, v15);
      if (a5 >= 1)
      {
        v32 = a5;
        v33 = 0;
        v67 = (*a9)[a4 - 4];
        v34 = v32;
        do
        {
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(&v14[v75], &v13[v68], &v12[v33], a6, a7, a8, a9, v15);
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

          v33 += v67;
        }

        while (v33 < v34);
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

      break;
  }
}

void sub_25A78B5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(char *a1, char *a2, _BYTE *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = **a7;
        v20 = **a8;
        v21 = **a9;
        do
        {
          if (v21 >= 1)
          {
            v22 = *v14;
            v23 = v13;
            v24 = v12;
            v25 = v21;
            do
            {
              v26 = *v23;
              v27 = 1;
              do
              {
                v28 = v27;
                v29 = v26;
                v27 = v22;
                v26 = 0;
              }

              while ((v29 & 1) != 0);
              *v24++ = v28 & 1;
              ++v23;
              v30 = __OFSUB__(v25--, 1);
            }

            while (!((v25 < 0) ^ v30 | (v25 == 0)));
          }

          v12 += v21;
          v14 += v19;
          v13 += v20;
          ++v18;
        }

        while (v18 != v17);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v75, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v68, a6, a8, v15);
      if (a5 >= 1)
      {
        v32 = a5;
        v33 = 0;
        v67 = (*a9)[a4 - 4];
        v34 = v32;
        do
        {
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(&v14[v75], &v13[v68], &v12[v33], a6, a7, a8, a9, v15);
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

          v33 += v67;
        }

        while (v33 < v34);
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

      break;
  }
}

void sub_25A78BA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,false,mlx::core::detail::Power>(char *a1, char *a2, _BYTE *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::Power,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::Power,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = **a7;
        v20 = **a8;
        v21 = **a9;
        do
        {
          v22 = *v13;
          v23 = 1;
          do
          {
            v24 = v23;
            v25 = v22;
            v23 = *v14;
            v22 = 0;
          }

          while ((v25 & 1) != 0);
          *v12 = v24 & 1;
          v12 += v21;
          v14 += v19;
          v13 += v20;
          ++v18;
        }

        while (v18 != v17);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v70, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v63, a6, a8, v15);
      if (a5 >= 1)
      {
        v27 = a5;
        v28 = 0;
        v62 = (*a9)[a4 - 4];
        v29 = v27;
        do
        {
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::Power,3,false>(&v14[v70], &v13[v63], &v12[v28], a6, a7, a8, a9, v15);
          v30 = v72 - v71;
          v31 = (v72 - v71) >> 2;
          if (v31)
          {
            v32 = v75;
            v33 = ((v30 << 30) - 0x100000000) >> 32;
            v34 = v75 + 4 * v33;
            v35 = *v34;
            v36 = v71 + 4 * v33;
            v37 = v73;
            v38 = v70;
            if (v31 >= 2 && v35 == *v36 - 1)
            {
              v41 = (v30 >> 2) & 0x7FFFFFFF;
              v40 = v41 - 1;
              v42 = 4 * v41;
              v43 = v71 - 8;
              do
              {
                v44 = v40;
                *v34 = 0;
                v38 -= v37[v33] * (*v36 - 1);
                v70 = v38;
                --v40;
                v34 = &v32[v42 - 8];
                v35 = *v34;
                v32 -= 4;
                if (v44 < 2)
                {
                  break;
                }

                v36 = &v43[v42];
                v45 = *&v43[4 * v41] - 1;
                v43 -= 4;
                v33 = v40;
              }

              while (v35 == v45);
              v34 = &v32[4 * v41 - 4];
            }

            else
            {
              v40 = ((v30 << 30) - 0x100000000) >> 32;
            }

            *v34 = v35 + 1;
            v70 = v37[v40] + v38;
          }

          v46 = v65 - v64;
          v47 = (v65 - v64) >> 2;
          if (v47)
          {
            v48 = __p;
            v49 = ((v46 << 30) - 0x100000000) >> 32;
            v50 = __p + 4 * v49;
            v51 = *v50;
            v52 = v64 + 4 * v49;
            v53 = v66;
            v54 = v63;
            if (v47 >= 2 && v51 == *v52 - 1)
            {
              v57 = (v46 >> 2) & 0x7FFFFFFF;
              v56 = v57 - 1;
              v58 = 4 * v57;
              v59 = v64 - 8;
              do
              {
                v60 = v56;
                *v50 = 0;
                v54 -= v53[v49] * (*v52 - 1);
                v63 = v54;
                --v56;
                v50 = &v48[v58 - 8];
                v51 = *v50;
                v48 -= 4;
                if (v60 < 2)
                {
                  break;
                }

                v52 = &v59[v58];
                v61 = *&v59[4 * v57] - 1;
                v59 -= 4;
                v49 = v56;
              }

              while (v51 == v61);
              v50 = &v48[4 * v57 - 4];
            }

            else
            {
              v56 = ((v46 << 30) - 0x100000000) >> 32;
            }

            *v50 = v51 + 1;
            v63 = v53[v56] + v54;
          }

          v28 += v62;
        }

        while (v28 < v29);
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

void sub_25A78BE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

char *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(char *result, char *a2, _BYTE *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *a4;
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a5 + 8 * a8);
    v12 = *(*a6 + 8 * a8);
    v13 = *(*a7 + 8 * a8);
    v14 = a8 + 1;
    v15 = *(*a5 + 8 * v14);
    v16 = *(*a6 + 8 * v14);
    v17 = *(*a7 + 8 * v14);
    v18 = *(v8 + 4 * v14);
    do
    {
      if (v18 >= 1)
      {
        v19 = 0;
        v20 = result;
        v21 = a2;
        v22 = a3;
        do
        {
          if (v17 >= 1)
          {
            v23 = v20;
            v24 = v21;
            v25 = v22;
            v26 = v17;
            do
            {
              v27 = *v24;
              v28 = 1;
              do
              {
                v29 = v28;
                v30 = v27;
                v28 = *v23;
                v27 = 0;
              }

              while ((v30 & 1) != 0);
              *v25++ = v29 & 1;
              ++v23;
              ++v24;
              v31 = __OFSUB__(v26--, 1);
            }

            while (!((v26 < 0) ^ v31 | (v26 == 0)));
          }

          v22 += v17;
          v20 += v15;
          v21 += v16;
          ++v19;
        }

        while (v19 != v18);
      }

      a3 += v13;
      result += v11;
      a2 += v12;
      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

char *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(char *result, char *a2, _BYTE *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(char *result, char *a2, _BYTE *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *a4;
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a5 + 8 * a8);
    v12 = *(*a6 + 8 * a8);
    v13 = *(*a7 + 8 * a8);
    v14 = a8 + 1;
    v15 = *(*a5 + 8 * v14);
    v16 = *(*a6 + 8 * v14);
    v17 = *(*a7 + 8 * v14);
    v18 = *(v8 + 4 * v14);
    do
    {
      if (v18 >= 1)
      {
        v19 = 0;
        v20 = result;
        v21 = a2;
        v22 = a3;
        do
        {
          if (v17 >= 1)
          {
            v23 = *v21;
            v24 = v20;
            v25 = v22;
            v26 = v17;
            do
            {
              v27 = 1;
              v28 = v23;
              do
              {
                v29 = v27;
                v30 = v28;
                v27 = *v24;
                v28 = 0;
              }

              while ((v30 & 1) != 0);
              *v25++ = v29 & 1;
              ++v24;
              v31 = __OFSUB__(v26--, 1);
            }

            while (!((v26 < 0) ^ v31 | (v26 == 0)));
          }

          v22 += v17;
          v20 += v15;
          v21 += v16;
          ++v19;
        }

        while (v19 != v18);
      }

      a3 += v13;
      result += v11;
      a2 += v12;
      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

char *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(char *result, char *a2, _BYTE *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(char *result, char *a2, _BYTE *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *a4;
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a5 + 8 * a8);
    v12 = *(*a6 + 8 * a8);
    v13 = *(*a7 + 8 * a8);
    v14 = a8 + 1;
    v15 = *(*a5 + 8 * v14);
    v16 = *(*a6 + 8 * v14);
    v17 = *(*a7 + 8 * v14);
    v18 = *(v8 + 4 * v14);
    do
    {
      if (v18 >= 1)
      {
        v19 = 0;
        v20 = result;
        v21 = a2;
        v22 = a3;
        do
        {
          if (v17 >= 1)
          {
            v23 = *v20;
            v24 = v21;
            v25 = v22;
            v26 = v17;
            do
            {
              v27 = *v24;
              v28 = 1;
              do
              {
                v29 = v28;
                v30 = v27;
                v28 = v23;
                v27 = 0;
              }

              while ((v30 & 1) != 0);
              *v25++ = v29 & 1;
              ++v24;
              v31 = __OFSUB__(v26--, 1);
            }

            while (!((v26 < 0) ^ v31 | (v26 == 0)));
          }

          v22 += v17;
          v20 += v15;
          v21 += v16;
          ++v19;
        }

        while (v19 != v18);
      }

      a3 += v13;
      result += v11;
      a2 += v12;
      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

char *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(char *result, char *a2, _BYTE *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::Power,2,false>(char *result, char *a2, _BYTE *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *a4;
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a5 + 8 * a8);
    v12 = *(*a6 + 8 * a8);
    v13 = *(*a7 + 8 * a8);
    v14 = a8 + 1;
    v15 = *(*a5 + 8 * v14);
    v16 = *(*a6 + 8 * v14);
    v17 = *(*a7 + 8 * v14);
    v18 = *(v8 + 4 * v14);
    do
    {
      if (v18 >= 1)
      {
        v19 = 0;
        v20 = result;
        v21 = a2;
        v22 = a3;
        do
        {
          v23 = *v21;
          v24 = 1;
          do
          {
            v25 = v24;
            v26 = v23;
            v24 = *v20;
            v23 = 0;
          }

          while ((v26 & 1) != 0);
          *v22 = v25 & 1;
          v22 += v17;
          v20 += v15;
          v21 += v16;
          ++v19;
        }

        while (v19 != v18);
      }

      a3 += v13;
      result += v11;
      a2 += v12;
      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

char *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::Power,3,false>(char *result, char *a2, _BYTE *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::Power,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<unsigned char,unsigned char,mlx::core::detail::Power>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<unsigned char,unsigned char>(v54, v9, v10, v11, *(v8 + 160));
      goto LABEL_70;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<unsigned char,unsigned char>(v54, v9, v10, v11, *(v8 + 48));
      goto LABEL_70;
    }

    goto LABEL_8;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<unsigned char,unsigned char>(v54, v9, v10, v11, *(*a2 + 160));
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
        mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::VectorVector<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      default:
        LODWORD(v42) = v46;
LABEL_65:
        mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,false,mlx::core::detail::Power>(v9, v10, v11->i8, v42, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
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

  v25 = v10->u8[0];
  if (v10->i8[0])
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

  v11->i8[0] = v27;
LABEL_70:
  v48 = *MEMORY[0x277D85DE8];
}

void sub_25A78C9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<unsigned char,unsigned char>(uint64_t a1, unsigned __int8 *a2, uint8x16_t *a3, int8x16_t *a4, int a5)
{
  v5 = *a2;
  if (a5 < 16)
  {
    v11 = a5;
  }

  else
  {
    v6 = vdupq_n_s8(v5);
    v7.i64[0] = 0x101010101010101;
    v7.i64[1] = 0x101010101010101;
    do
    {
      v8 = *a3;
      v9.i64[0] = 0x101010101010101;
      v9.i64[1] = 0x101010101010101;
      if ((vmaxvq_u8(*a3) & 0x80) != 0)
      {
        v10 = v6;
        do
        {
          v9 = vbslq_s8(vandq_s8(v8, v7), vmulq_s8(v9, v10), v9);
          v10 = vbslq_s8(v8, vmulq_s8(v10, v10), v10);
          v8 = vshrq_n_u8(v8, 1uLL);
        }

        while ((vmaxvq_u8(v8) & 0x80) != 0);
      }

      *a4++ = v9;
      ++a3;
      v11 = a5 - 16;
      v12 = a5 <= 31;
      a5 -= 16;
    }

    while (!v12);
  }

  if (v11 >= 1)
  {
    do
    {
      v13 = a3->u8[0];
      if (a3->i8[0])
      {
        v14 = 1;
        v15 = v5;
        do
        {
          if (v13)
          {
            v16 = v15;
          }

          else
          {
            v16 = 1;
          }

          v14 *= v16;
          v15 *= v15;
          v12 = v13 > 1;
          v13 >>= 1;
        }

        while (v12);
      }

      else
      {
        v14 = 1;
      }

      a4->i8[0] = v14;
      a4 = (a4 + 1);
      a3 = (a3 + 1);
      v12 = v11-- <= 1;
    }

    while (!v12);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<unsigned char,unsigned char>(uint64_t a1, _OWORD *a2, unsigned __int8 *a3, int8x16_t *a4, int a5)
{
  v5 = *a3;
  if (a5 < 16)
  {
    v12 = a5;
  }

  else
  {
    v6 = vdupq_n_s8(v5);
    v7 = vmaxvq_u8(v6);
    v8.i64[0] = 0x101010101010101;
    v8.i64[1] = 0x101010101010101;
    do
    {
      v9.i64[0] = 0x101010101010101;
      v9.i64[1] = 0x101010101010101;
      if ((v7 & 0x80) != 0)
      {
        v10 = *a2;
        v11 = v6;
        do
        {
          v9 = vbslq_s8(vandq_s8(v11, v8), vmulq_s8(v9, v10), v9);
          v10 = vbslq_s8(v11, vmulq_s8(v10, v10), v10);
          v11 = vshrq_n_u8(v11, 1uLL);
        }

        while ((vmaxvq_u8(v11) & 0x80) != 0);
      }

      *a4++ = v9;
      ++a2;
      v12 = a5 - 16;
      v13 = a5 <= 31;
      a5 -= 16;
    }

    while (!v13);
  }

  if (v12 >= 1)
  {
    do
    {
      if (v5)
      {
        v14 = *a2;
        v15 = 1;
        v16 = v5;
        do
        {
          v17 = v16;
          if (v16)
          {
            v18 = v14;
          }

          else
          {
            v18 = 1;
          }

          v15 *= v18;
          v16 >>= 1;
          v14 *= v14;
        }

        while (v17 > 1);
      }

      else
      {
        v15 = 1;
      }

      a4->i8[0] = v15;
      a4 = (a4 + 1);
      a2 = (a2 + 1);
      v13 = v12-- <= 1;
    }

    while (!v13);
  }
}

void mlx::core::VectorVector<mlx::core::detail::Power>::operator()<unsigned char,unsigned char>(uint64_t a1, _OWORD *a2, uint8x16_t *a3, int8x16_t *a4, int a5)
{
  if (a5 < 16)
  {
    v9 = a5;
  }

  else
  {
    v5.i64[0] = 0x101010101010101;
    v5.i64[1] = 0x101010101010101;
    do
    {
      v6 = *a3;
      v7.i64[0] = 0x101010101010101;
      v7.i64[1] = 0x101010101010101;
      if ((vmaxvq_u8(*a3) & 0x80) != 0)
      {
        v8 = *a2;
        do
        {
          v7 = vbslq_s8(vandq_s8(v6, v5), vmulq_s8(v7, v8), v7);
          v8 = vbslq_s8(v6, vmulq_s8(v8, v8), v8);
          v6 = vshrq_n_u8(v6, 1uLL);
        }

        while ((vmaxvq_u8(v6) & 0x80) != 0);
      }

      *a4++ = v7;
      ++a2;
      ++a3;
      v9 = a5 - 16;
      v10 = a5 <= 31;
      a5 -= 16;
    }

    while (!v10);
  }

  if (v9 >= 1)
  {
    do
    {
      v11 = a3->u8[0];
      if (a3->i8[0])
      {
        v12 = *a2;
        v13 = 1;
        do
        {
          if (v11)
          {
            v14 = v12;
          }

          else
          {
            v14 = 1;
          }

          v13 *= v14;
          v12 *= v12;
          v10 = v11 > 1;
          v11 >>= 1;
        }

        while (v10);
      }

      else
      {
        v13 = 1;
      }

      a4->i8[0] = v13;
      a4 = (a4 + 1);
      a2 = (a2 + 1);
      a3 = (a3 + 1);
      v10 = v9-- <= 1;
    }

    while (!v10);
  }
}

void mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::VectorVector<mlx::core::detail::Power>>(_OWORD *a1, uint8x16_t *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>((a1 + v61), (a2 + v54), (a3 + v19), a6, a7, a8, a9, v15);
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

void sub_25A78D094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(_OWORD *a1, unsigned __int8 *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>((a1 + v61), &a2[v54], (a3 + v19), a6, a7, a8, a9, v15);
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