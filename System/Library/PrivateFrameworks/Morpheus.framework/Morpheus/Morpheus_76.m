void sub_25A6A4C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::Greater>>(_DWORD *a1, _OWORD *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, double a9, double a10, void *a11)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
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
          mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,3,true>(&a1[v62], (a2 + 4 * v55), (a3 + v21), a6, a7, a8, a11, v16, v19, v20);
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

void sub_25A6A5088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,BOOL,false,mlx::core::detail::Greater>(float *a1, float *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::Greater,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::Greater,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 > *v13;
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
          mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::Greater,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A6A54A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,1,true>(float *result, float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v13++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgtq_f32(*&result[v17], *&a2[v17]), vcgtq_f32(*&result[v17 + 4], *&a2[v17 + 4]))), 0x101010101010101);
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
          v13->i8[0] = v21 > v22;
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

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,2,true>(float *result, float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,3,true>(float *result, float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,1,true>(_OWORD *result, _DWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
          *v16++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgtq_f32(v20, v18), vcgtq_f32(v21, v18))), 0x101010101010101);
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
          v16->i8[0] = v24 > *&a10;
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

_OWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,2,true>(_OWORD *result, _DWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,1,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,3,true>(_OWORD *result, _DWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,2,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,1,true>(_DWORD *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
          *v16++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgtq_f32(v18, v20), vcgtq_f32(v18, v21))), 0x101010101010101);
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
          v16->i8[0] = *&a10 > v24;
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

_DWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,2,true>(_DWORD *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,1,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,3,true>(_DWORD *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,2,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::Greater,2,false>(float *result, float *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = *v20 > *v19;
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

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::Greater,3,false>(float *result, float *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::Greater,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::VectorVector<mlx::core::detail::Greater>>(double *a1, double *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6A6150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::Greater>>(_OWORD *a1, double *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,3,true>((a1 + 8 * v58), &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6A6558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::Greater>>(double *a1, _OWORD *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,3,true>(&a1[v58], (a2 + 8 * v51), (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6A6960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,BOOL,false,mlx::core::detail::Greater>(double *a1, double *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::Greater,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::Greater,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 > *v13;
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
          mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::Greater,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A6A6D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,1,true>(double *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v13++ = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgtq_f64(*&result[v17], *&a2[v17]), vcgtq_f64(*&result[v17 + 2], *&a2[v17 + 2]))), 0x1000100010001), 0x1000100010001).u32[0];
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
          *v13 = v21 > v22;
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

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,2,true>(double *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,3,true>(double *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,1,true>(_OWORD *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v15++ = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgtq_f64(v19, v17), vcgtq_f64(v20, v17))), 0x1000100010001), 0x1000100010001).u32[0];
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
          *v15 = v23 > *&v13;
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

_OWORD *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,2,true>(_OWORD *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,3,true>(_OWORD *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,1,true>(double *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v15++ = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgtq_f64(v17, v19), vcgtq_f64(v17, v20))), 0x1000100010001), 0x1000100010001).u32[0];
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
          *v15 = *&v13 > v23;
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

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,2,true>(double *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,3,true>(double *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::Greater,2,false>(double *result, double *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = *v20 > *v19;
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

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::Greater,3,false>(double *result, double *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::Greater,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::VectorVector<mlx::core::detail::Greater>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,3,true>(a1 + 2 * v58, a2 + 2 * v51, a3 + v17, a6, a7, a8, a9, v14);
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

void sub_25A6A7A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::Greater>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,3,true>(a1 + 2 * v58, &a2[v51], a3 + v17, a6, a7, a8, a9, v14);
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

void sub_25A6A7E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::Greater>>(unsigned __int16 *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,3,true>(&a1[v58], a2 + 2 * v51, a3 + v17, a6, a7, a8, a9, v14);
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

void sub_25A6A8244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,false,mlx::core::detail::Greater>(unsigned __int16 *a1, unsigned __int16 *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::Greater,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::Greater,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = COERCE_FLOAT(*v14 << 16) > COERCE_FLOAT(*v13 << 16);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::Greater,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A6A8674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,1,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *(a3 + v13) = COERCE_FLOAT(*(result + 2 * v13) << 16) > COERCE_FLOAT(*(a2 + 2 * v13) << 16);
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

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,2,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,3,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,1,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *(a3 + v13) = COERCE_FLOAT(*(result + 2 * v13) << 16) > v14;
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

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,2,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,3,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,1,true>(unsigned __int16 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *(a3 + v13) = v14 > COERCE_FLOAT(*(a2 + 2 * v13) << 16);
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

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,2,true>(unsigned __int16 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,3,true>(unsigned __int16 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::Greater,2,false>(unsigned __int16 *result, unsigned __int16 *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = COERCE_FLOAT(*v21 << 16) > COERCE_FLOAT(*v20 << 16);
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

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::Greater,3,false>(unsigned __int16 *result, unsigned __int16 *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::Greater,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::VectorVector<mlx::core::detail::Greater>>(uint64_t a1, uint64_t a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,3,true>(a1 + 8 * v58, a2 + 8 * v51, &a3[v17], a6, a7, a8, a9, v14);
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

void sub_25A6A9274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::Greater>>(float *a1, float *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,3,true>(&a1[2 * v58], &a2[2 * v51], &a3[v17], a6, a7, a8, a9, v14);
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

void sub_25A6A967C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::Greater>>(float *a1, float *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,3,true>(&a1[2 * v58], &a2[2 * v51], &a3[v17], a6, a7, a8, a9, v14);
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

void sub_25A6A9A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,false,mlx::core::detail::Greater>(uint64_t a1, uint64_t a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::Greater,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::Greater,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::Greater,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::Greater,3,false>(a1 + 8 * v58, a2 + 8 * v51, &a3[v17], a6, a7, a8, a9, v14);
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

void sub_25A6A9E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,1,true>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v16 = *(result + v13);
          v17 = *(a2 + v13);
          v18 = v16 > v17 || v16 == v17 && *(result + v13 + 4) > *(a2 + v13 + 4);
          *v15++ = v18;
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

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,2,true>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,3,true>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::Greater>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,1,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v18 = *v16 > v13 || *v16 == v13 && v16[1] > v14;
          *v17++ = v18;
          v16 += 2;
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

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,2,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,3,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::Greater>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,1,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v18 = v13 > *v16 || v13 == *v16 && v14 > v16[1];
          *v17++ = v18;
          v16 += 2;
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

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,2,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,3,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::Greater>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::Greater,1,false>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = *(*a7 + 8 * a8);
    v10 = (result + 4);
    v11 = 8 * *(*a5 + 8 * a8);
    v12 = (a2 + 4);
    v13 = 8 * *(*a6 + 8 * a8);
    do
    {
      v14 = *(v10 - 1);
      v15 = *(v12 - 1);
      v16 = v14 > v15 || v14 == v15 && *v10 > *v12;
      *a3 = v16;
      a3 += v9;
      v10 = (v10 + v11);
      v12 = (v12 + v13);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::Greater,2,false>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::Greater,1,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::Greater,3,false>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::Greater,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::Greater>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Greater,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::Greater>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Greater,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C01C30;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::Greater>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Greater,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::Greater>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Greater,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C01C30;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::Greater>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Greater,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::Greater>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Greater,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286C01C30;
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

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::Greater>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Greater,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::Greater>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Greater,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::Greater>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Greater,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::Greater>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Greater,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::Greater>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Greater,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::Greater>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Greater,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_113comparison_opINS3_6detail12GreaterEqualEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286C01D28;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_113comparison_opINS3_6detail12GreaterEqualEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286C01D28;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_113comparison_opINS3_6detail12GreaterEqualEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C01D28;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_113comparison_opINS3_6detail12GreaterEqualEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_113comparison_opINS3_6detail12GreaterEqualEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_113comparison_opINS3_6detail12GreaterEqualEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEEclEv(uint64_t a1, double a2)
{
  v3 = mlx::core::scheduler::scheduler(v2);

  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_113comparison_opINS3_6detail12GreaterEqualEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::GreaterEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::GreaterEqual,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1, double a2)
{
  switch(*(*a1 + 56))
  {
    case 0:
      mlx::core::binary_op<BOOL,BOOL,mlx::core::detail::GreaterEqual>(a1, (a1 + 16), (a1 + 32), *(a1 + 48));
      break;
    case 1:
      mlx::core::binary_op<unsigned char,BOOL,mlx::core::detail::GreaterEqual>(a1, (a1 + 16), (a1 + 32), *(a1 + 48));
      break;
    case 2:
      mlx::core::binary_op<unsigned short,BOOL,mlx::core::detail::GreaterEqual>(a1, (a1 + 16), (a1 + 32), *(a1 + 48));
      break;
    case 3:
      mlx::core::binary_op<unsigned int,BOOL,mlx::core::detail::GreaterEqual>(a1, (a1 + 16), (a1 + 32), *(a1 + 48));
      break;
    case 4:
      mlx::core::binary_op<unsigned long long,BOOL,mlx::core::detail::GreaterEqual>(a1, (a1 + 16), (a1 + 32), *(a1 + 48));
      break;
    case 5:
      mlx::core::binary_op<signed char,BOOL,mlx::core::detail::GreaterEqual>(a1, (a1 + 16), (a1 + 32), *(a1 + 48));
      break;
    case 6:
      mlx::core::binary_op<short,BOOL,mlx::core::detail::GreaterEqual>(a1, (a1 + 16), (a1 + 32), *(a1 + 48));
      break;
    case 7:
      mlx::core::binary_op<int,BOOL,mlx::core::detail::GreaterEqual>(a1, (a1 + 16), (a1 + 32), *(a1 + 48));
      break;
    case 8:
      mlx::core::binary_op<long long,BOOL,mlx::core::detail::GreaterEqual>(a1, (a1 + 16), (a1 + 32), *(a1 + 48));
      break;
    case 9:
      mlx::core::binary_op<half,BOOL,mlx::core::detail::GreaterEqual>(a1, (a1 + 16), (a1 + 32), *(a1 + 48), *&a2);
      break;
    case 0xA:
      mlx::core::binary_op<float,BOOL,mlx::core::detail::GreaterEqual>(a1, (a1 + 16), (a1 + 32), *(a1 + 48), a2);
      break;
    case 0xB:
      mlx::core::binary_op<double,BOOL,mlx::core::detail::GreaterEqual>(a1, (a1 + 16), (a1 + 32), *(a1 + 48));
      break;
    case 0xC:
      mlx::core::binary_op<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::GreaterEqual>(a1, (a1 + 16), (a1 + 32), *(a1 + 48));
      break;
    case 0xD:
      mlx::core::binary_op<mlx::core::complex64_t,BOOL,mlx::core::detail::GreaterEqual>(a1, (a1 + 16), (a1 + 32), *(a1 + 48));
      break;
    default:
      return;
  }
}

void mlx::core::binary_op<BOOL,BOOL,mlx::core::detail::GreaterEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      *v11 = *v9 | *v10 ^ 1;
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
          *v11++ = v13 >= (v15 & 1u);
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
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      default:
        LODWORD(v50) = v54;
LABEL_68:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,false,mlx::core::detail::GreaterEqual>(v9, v10, v11, v50, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
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
        *v11++ = (v37 & 1u) >= v35;
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
        *v11++ = (v18 & 1u) >= (v20 & 1u);
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_71:
  v56 = *MEMORY[0x277D85DE8];
}

void sub_25A6AB360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<unsigned char,BOOL,mlx::core::detail::GreaterEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v80 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      *v11 = *v9 >= *v10;
      goto LABEL_85;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      v13 = *v9;
      if (v12 < 16)
      {
        v17 = *(*a2 + 160);
      }

      else
      {
        v14 = vdupq_n_s8(v13);
        v15.i64[0] = 0x101010101010101;
        v15.i64[1] = 0x101010101010101;
        do
        {
          v16 = *v10;
          v10 += 16;
          *v11 = vandq_s8(vcgeq_u8(v14, v16), v15);
          v11 += 16;
          v17 = v12 - 16;
          v18 = v12 > 0x1F;
          v12 -= 16;
        }

        while (v18);
      }

      if (v17 >= 1)
      {
        v62 = v17 + 1;
        do
        {
          v63 = *v10++;
          *v11++ = v13 >= v63;
          --v62;
        }

        while (v62 > 1);
      }

      goto LABEL_85;
    }

LABEL_14:
    memset(v76, 0, sizeof(v76));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v76, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v25 = *a2;
    memset(v77, 0, sizeof(v77));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v77, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 3);
    v26 = *a3;
    v79[0] = 0;
    v79[1] = 0;
    v78 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v78, *(v26 + 24), *(v26 + 32), (*(v26 + 32) - *(v26 + 24)) >> 3);
    memset(v71, 0, sizeof(v71));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v71, v76, &v80, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v71, 0x7FFFFFFFuLL, &__p);
    v75 = v71;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v75);
    for (i = 0; i != -9; i -= 3)
    {
      v28 = v79[i - 1];
      if (v28)
      {
        v79[i] = v28;
        operator delete(v28);
      }
    }

    v29 = v74 + 6;
    v30 = *v74;
    v31 = (v74[1] - *v74) >> 3;
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
        goto LABEL_30;
      }
    }

    v34 = v33;
LABEL_30:
    v44 = v74[3];
    v45 = (v74[4] - v44) >> 3;
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
      if (*(v44 + v51) != *(*v29 + v51))
      {
        goto LABEL_37;
      }
    }

    v48 = v47;
LABEL_37:
    v52 = v31 + 1;
    while ((v35 & 0x80000000) == 0)
    {
      v53 = *(v30 + 8 * (v35 & 0x7FFFFFFF));
      --v52;
      --v35;
      if (v53)
      {
        goto LABEL_42;
      }
    }

    v52 = v33;
LABEL_42:
    v54 = v45 + 1;
    while ((v49 & 0x80000000) == 0)
    {
      v55 = *(v44 + 8 * (v49 & 0x7FFFFFFF));
      --v54;
      --v49;
      if (v55)
      {
        goto LABEL_47;
      }
    }

    v54 = v47;
LABEL_47:
    v56 = (v73 - __p) >> 2;
    if (v34 <= v48)
    {
      v57 = v48;
    }

    else
    {
      v57 = v34;
    }

    if (v34 <= v54)
    {
      v34 = v54;
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
      v48 = (v73 - __p) >> 2;
      v58 = a4;
    }

    if (v56 > v34)
    {
      v59 = 2;
    }

    else
    {
      v34 = v48;
      v59 = v58;
    }

    if (v56 <= v57)
    {
      v60 = v34;
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

    if (!v60 || *(*v29 + 8 * v60 - 8) < 16)
    {
      goto LABEL_68;
    }

    switch(v61)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<unsigned char,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned char,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned char,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      default:
        LODWORD(v56) = v60;
LABEL_68:
        mlx::core::binary_op_dispatch_dims<unsigned char,BOOL,false,mlx::core::detail::GreaterEqual>(v9, v10, v11, v56, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
    }

    v76[0] = &v74;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v76);
    if (__p)
    {
      v73 = __p;
      operator delete(__p);
    }

    goto LABEL_85;
  }

  if (a4 == 2)
  {
    v38 = *(v8 + 160);
    v39 = *v10;
    if (v38 < 16)
    {
      v43 = *(v8 + 160);
    }

    else
    {
      v40 = vdupq_n_s8(v39);
      v41.i64[0] = 0x101010101010101;
      v41.i64[1] = 0x101010101010101;
      do
      {
        v42 = *v9;
        v9 += 16;
        *v11 = vandq_s8(vcgeq_u8(v42, v40), v41);
        v11 += 16;
        v43 = v38 - 16;
        v18 = v38 > 0x1F;
        v38 -= 16;
      }

      while (v18);
    }

    if (v43 >= 1)
    {
      v68 = v43 + 1;
      do
      {
        v69 = *v9++;
        *v11++ = v69 >= v39;
        --v68;
      }

      while (v68 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_14;
    }

    v19 = *(v8 + 48);
    if (v19 < 16)
    {
      v24 = *(v8 + 48);
    }

    else
    {
      v20.i64[0] = 0x101010101010101;
      v20.i64[1] = 0x101010101010101;
      do
      {
        v21 = *v9;
        v9 += 16;
        v22 = v21;
        v23 = *v10;
        v10 += 16;
        *v11 = vandq_s8(vcgeq_u8(v22, v23), v20);
        v11 += 16;
        v24 = v19 - 16;
        v18 = v19 > 0x1F;
        v19 -= 16;
      }

      while (v18);
    }

    if (v24 >= 1)
    {
      v64 = v24 + 1;
      do
      {
        v66 = *v9++;
        v65 = v66;
        v67 = *v10++;
        *v11++ = v65 >= v67;
        --v64;
      }

      while (v64 > 1);
    }
  }

LABEL_85:
  v70 = *MEMORY[0x277D85DE8];
}

void sub_25A6AB91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<unsigned short,BOOL,mlx::core::detail::GreaterEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v83 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v11->i8[0] = v9->u16[0] >= *v10;
      goto LABEL_85;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      v13 = v9->u16[0];
      if (v12 < 16)
      {
        v18 = *(*a2 + 160);
      }

      else
      {
        v14 = vdupq_n_s16(v13);
        v15.i64[0] = 0x101010101010101;
        v15.i64[1] = 0x101010101010101;
        do
        {
          v16 = *v10;
          v17 = *(v10 + 1);
          v10 += 2;
          *v11++ = vandq_s8(vuzp1q_s8(vcgeq_u16(v14, v16), vcgeq_u16(v14, v17)), v15);
          v18 = v12 - 16;
          v19 = v12 > 0x1F;
          v12 -= 16;
        }

        while (v19);
      }

      if (v18 >= 1)
      {
        v65 = v18 + 1;
        do
        {
          v66 = *v10;
          v10 = (v10 + 2);
          v11->i8[0] = v13 >= v66;
          v11 = (v11 + 1);
          --v65;
        }

        while (v65 > 1);
      }

      goto LABEL_85;
    }

LABEL_14:
    memset(v79, 0, sizeof(v79));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v79, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v27 = *a2;
    memset(v80, 0, sizeof(v80));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v80, *(v27 + 24), *(v27 + 32), (*(v27 + 32) - *(v27 + 24)) >> 3);
    v28 = *a3;
    v82[0] = 0;
    v82[1] = 0;
    v81 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v81, *(v28 + 24), *(v28 + 32), (*(v28 + 32) - *(v28 + 24)) >> 3);
    memset(v74, 0, sizeof(v74));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v74, v79, &v83, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v74, 0x7FFFFFFFuLL, &__p);
    v78 = v74;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v78);
    for (i = 0; i != -9; i -= 3)
    {
      v30 = v82[i - 1];
      if (v30)
      {
        v82[i] = v30;
        operator delete(v30);
      }
    }

    v31 = v77 + 6;
    v32 = *v77;
    v33 = (v77[1] - *v77) >> 3;
    v34 = v33 - 1;
    if (v33 - 1 >= -1)
    {
      v34 = -1;
    }

    v35 = v34 + 1;
    v36 = v33 + 1;
    v37 = v33 - 1;
    v38 = v33 - 1;
    while ((v38 & 0x80000000) == 0)
    {
      v39 = 8 * (v38 & 0x7FFFFFFF);
      --v36;
      --v38;
      if (*(v32 + v39) != *(*v31 + v39))
      {
        goto LABEL_30;
      }
    }

    v36 = v35;
LABEL_30:
    v47 = v77[3];
    v48 = (v77[4] - v47) >> 3;
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
      if (*(v47 + v54) != *(*v31 + v54))
      {
        goto LABEL_37;
      }
    }

    v51 = v50;
LABEL_37:
    v55 = v33 + 1;
    while ((v37 & 0x80000000) == 0)
    {
      v56 = *(v32 + 8 * (v37 & 0x7FFFFFFF));
      --v55;
      --v37;
      if (v56)
      {
        goto LABEL_42;
      }
    }

    v55 = v35;
LABEL_42:
    v57 = v48 + 1;
    while ((v52 & 0x80000000) == 0)
    {
      v58 = *(v47 + 8 * (v52 & 0x7FFFFFFF));
      --v57;
      --v52;
      if (v58)
      {
        goto LABEL_47;
      }
    }

    v57 = v50;
LABEL_47:
    v59 = (v76 - __p) >> 2;
    if (v36 <= v51)
    {
      v60 = v51;
    }

    else
    {
      v60 = v36;
    }

    if (v36 <= v57)
    {
      v36 = v57;
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
      v51 = (v76 - __p) >> 2;
      v61 = a4;
    }

    if (v59 > v36)
    {
      v62 = 2;
    }

    else
    {
      v36 = v51;
      v62 = v61;
    }

    if (v59 <= v60)
    {
      v63 = v36;
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

    if (!v63 || *(*v31 + 8 * v63 - 8) < 16)
    {
      goto LABEL_68;
    }

    switch(v64)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<unsigned short,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v63, *(*a1 + 48), &__p, v77, v77 + 3, v77 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned short,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v63, *(*a1 + 48), &__p, v77, v77 + 3, v77 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned short,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v63, *(*a1 + 48), &__p, v77, v77 + 3, v77 + 6);
        break;
      default:
        LODWORD(v59) = v63;
LABEL_68:
        mlx::core::binary_op_dispatch_dims<unsigned short,BOOL,false,mlx::core::detail::GreaterEqual>(v9, v10, v11->i8, v59, *(*a1 + 48), &__p, v77, v77 + 3, v77 + 6);
        break;
    }

    v79[0] = &v77;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v79);
    if (__p)
    {
      v76 = __p;
      operator delete(__p);
    }

    goto LABEL_85;
  }

  if (a4 == 2)
  {
    v40 = *(v8 + 160);
    v41 = *v10;
    if (v40 < 16)
    {
      v46 = *(v8 + 160);
    }

    else
    {
      v42 = vdupq_n_s16(v41);
      v43.i64[0] = 0x101010101010101;
      v43.i64[1] = 0x101010101010101;
      do
      {
        v44 = *v9;
        v45 = v9[1];
        v9 += 2;
        *v11++ = vandq_s8(vuzp1q_s8(vcgeq_u16(v44, v42), vcgeq_u16(v45, v42)), v43);
        v46 = v40 - 16;
        v19 = v40 > 0x1F;
        v40 -= 16;
      }

      while (v19);
    }

    if (v46 >= 1)
    {
      v71 = v46 + 1;
      do
      {
        v72 = v9->u16[0];
        v9 = (v9 + 2);
        v11->i8[0] = v72 >= v41;
        v11 = (v11 + 1);
        --v71;
      }

      while (v71 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_14;
    }

    v20 = *(v8 + 48);
    if (v20 < 16)
    {
      v26 = *(v8 + 48);
    }

    else
    {
      v21.i64[0] = 0x101010101010101;
      v21.i64[1] = 0x101010101010101;
      do
      {
        v22 = *v9;
        v23 = v9[1];
        v9 += 2;
        v24 = *v10;
        v25 = *(v10 + 1);
        v10 += 2;
        *v11++ = vandq_s8(vuzp1q_s8(vcgeq_u16(v22, v24), vcgeq_u16(v23, v25)), v21);
        v26 = v20 - 16;
        v19 = v20 > 0x1F;
        v20 -= 16;
      }

      while (v19);
    }

    if (v26 >= 1)
    {
      v67 = v26 + 1;
      do
      {
        v69 = v9->u16[0];
        v9 = (v9 + 2);
        v68 = v69;
        v70 = *v10;
        v10 = (v10 + 2);
        v11->i8[0] = v68 >= v70;
        v11 = (v11 + 1);
        --v67;
      }

      while (v67 > 1);
    }
  }

LABEL_85:
  v73 = *MEMORY[0x277D85DE8];
}

void sub_25A6ABEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<unsigned int,BOOL,mlx::core::detail::GreaterEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v80 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v11->i8[0] = v9->i32[0] >= *v10;
      goto LABEL_84;
    }

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
          v15 = *v10;
          v16 = *(v10 + 1);
          v10 += 2;
          *v11++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_u32(v14, v15), vcgeq_u32(v14, v16))), 0x101010101010101);
          v17 = v12 - 8;
          v18 = v12 > 0xF;
          v12 -= 8;
        }

        while (v18);
      }

      if (v17 >= 1)
      {
        v62 = v17 + 1;
        do
        {
          v63 = *v10;
          v10 = (v10 + 4);
          v11->i8[0] = v13 >= v63;
          v11 = (v11 + 1);
          --v62;
        }

        while (v62 > 1);
      }

      goto LABEL_84;
    }

LABEL_13:
    memset(v76, 0, sizeof(v76));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v76, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v25 = *a2;
    memset(v77, 0, sizeof(v77));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v77, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 3);
    v26 = *a3;
    v79[0] = 0;
    v79[1] = 0;
    v78 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v78, *(v26 + 24), *(v26 + 32), (*(v26 + 32) - *(v26 + 24)) >> 3);
    memset(v71, 0, sizeof(v71));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v71, v76, &v80, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v71, 0x7FFFFFFFuLL, &__p);
    v75 = v71;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v75);
    for (i = 0; i != -9; i -= 3)
    {
      v28 = v79[i - 1];
      if (v28)
      {
        v79[i] = v28;
        operator delete(v28);
      }
    }

    v29 = v74 + 6;
    v30 = *v74;
    v31 = (v74[1] - *v74) >> 3;
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
        goto LABEL_29;
      }
    }

    v34 = v33;
LABEL_29:
    v44 = v74[3];
    v45 = (v74[4] - v44) >> 3;
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
      if (*(v44 + v51) != *(*v29 + v51))
      {
        goto LABEL_36;
      }
    }

    v48 = v47;
LABEL_36:
    v52 = v31 + 1;
    while ((v35 & 0x80000000) == 0)
    {
      v53 = *(v30 + 8 * (v35 & 0x7FFFFFFF));
      --v52;
      --v35;
      if (v53)
      {
        goto LABEL_41;
      }
    }

    v52 = v33;
LABEL_41:
    v54 = v45 + 1;
    while ((v49 & 0x80000000) == 0)
    {
      v55 = *(v44 + 8 * (v49 & 0x7FFFFFFF));
      --v54;
      --v49;
      if (v55)
      {
        goto LABEL_46;
      }
    }

    v54 = v47;
LABEL_46:
    v56 = (v73 - __p) >> 2;
    if (v34 <= v48)
    {
      v57 = v48;
    }

    else
    {
      v57 = v34;
    }

    if (v34 <= v54)
    {
      v34 = v54;
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
      v48 = (v73 - __p) >> 2;
      v58 = a4;
    }

    if (v56 > v34)
    {
      v59 = 2;
    }

    else
    {
      v34 = v48;
      v59 = v58;
    }

    if (v56 <= v57)
    {
      v60 = v34;
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

    if (!v60 || *(*v29 + 8 * v60 - 8) < 16)
    {
      goto LABEL_67;
    }

    switch(v61)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<unsigned int,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned int,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned int,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      default:
        LODWORD(v56) = v60;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<unsigned int,BOOL,false,mlx::core::detail::GreaterEqual>(v9, v10, v11, v56, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
    }

    v76[0] = &v74;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v76);
    if (__p)
    {
      v73 = __p;
      operator delete(__p);
    }

    goto LABEL_84;
  }

  if (a4 == 2)
  {
    v38 = *(v8 + 160);
    v39 = *v10;
    if (v38 < 8)
    {
      v43 = *(v8 + 160);
    }

    else
    {
      v40 = vdupq_n_s32(v39);
      do
      {
        v41 = *v9;
        v42 = v9[1];
        v9 += 2;
        *v11++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_u32(v41, v40), vcgeq_u32(v42, v40))), 0x101010101010101);
        v43 = v38 - 8;
        v18 = v38 > 0xF;
        v38 -= 8;
      }

      while (v18);
    }

    if (v43 >= 1)
    {
      v68 = v43 + 1;
      do
      {
        v69 = v9->i32[0];
        v9 = (v9 + 4);
        v11->i8[0] = v69 >= v39;
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

    v19 = *(v8 + 48);
    if (v19 < 8)
    {
      v24 = *(v8 + 48);
    }

    else
    {
      do
      {
        v20 = *v9;
        v21 = v9[1];
        v9 += 2;
        v22 = *v10;
        v23 = *(v10 + 1);
        v10 += 2;
        *v11++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_u32(v20, v22), vcgeq_u32(v21, v23))), 0x101010101010101);
        v24 = v19 - 8;
        v18 = v19 > 0xF;
        v19 -= 8;
      }

      while (v18);
    }

    if (v24 >= 1)
    {
      v64 = v24 + 1;
      do
      {
        v66 = v9->i32[0];
        v9 = (v9 + 4);
        v65 = v66;
        v67 = *v10;
        v10 = (v10 + 4);
        v11->i8[0] = v65 >= v67;
        v11 = (v11 + 1);
        --v64;
      }

      while (v64 > 1);
    }
  }

LABEL_84:
  v70 = *MEMORY[0x277D85DE8];
}

void sub_25A6AC4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<unsigned long long,BOOL,mlx::core::detail::GreaterEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v80 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      *v11 = v9->i64[0] >= *v10;
      goto LABEL_84;
    }

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
          v15 = *v10;
          v16 = *(v10 + 1);
          v10 += 2;
          *v11 = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_u64(v14, v15), vcgeq_u64(v14, v16))), 0x1000100010001), *v14.i8).u32[0];
          v11 += 4;
          v17 = v12 - 4;
          v18 = v12 > 7;
          v12 -= 4;
        }

        while (v18);
      }

      if (v17 >= 1)
      {
        v62 = v17 + 1;
        do
        {
          v63 = *v10;
          v10 = (v10 + 8);
          *v11++ = v13 >= v63;
          --v62;
        }

        while (v62 > 1);
      }

      goto LABEL_84;
    }

LABEL_13:
    memset(v76, 0, sizeof(v76));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v76, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v25 = *a2;
    memset(v77, 0, sizeof(v77));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v77, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 3);
    v26 = *a3;
    v79[0] = 0;
    v79[1] = 0;
    v78 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v78, *(v26 + 24), *(v26 + 32), (*(v26 + 32) - *(v26 + 24)) >> 3);
    memset(v71, 0, sizeof(v71));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v71, v76, &v80, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v71, 0x7FFFFFFFuLL, &__p);
    v75 = v71;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v75);
    for (i = 0; i != -9; i -= 3)
    {
      v28 = v79[i - 1];
      if (v28)
      {
        v79[i] = v28;
        operator delete(v28);
      }
    }

    v29 = v74 + 6;
    v30 = *v74;
    v31 = (v74[1] - *v74) >> 3;
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
        goto LABEL_29;
      }
    }

    v34 = v33;
LABEL_29:
    v44 = v74[3];
    v45 = (v74[4] - v44) >> 3;
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
      if (*(v44 + v51) != *(*v29 + v51))
      {
        goto LABEL_36;
      }
    }

    v48 = v47;
LABEL_36:
    v52 = v31 + 1;
    while ((v35 & 0x80000000) == 0)
    {
      v53 = *(v30 + 8 * (v35 & 0x7FFFFFFF));
      --v52;
      --v35;
      if (v53)
      {
        goto LABEL_41;
      }
    }

    v52 = v33;
LABEL_41:
    v54 = v45 + 1;
    while ((v49 & 0x80000000) == 0)
    {
      v55 = *(v44 + 8 * (v49 & 0x7FFFFFFF));
      --v54;
      --v49;
      if (v55)
      {
        goto LABEL_46;
      }
    }

    v54 = v47;
LABEL_46:
    v56 = (v73 - __p) >> 2;
    if (v34 <= v48)
    {
      v57 = v48;
    }

    else
    {
      v57 = v34;
    }

    if (v34 <= v54)
    {
      v34 = v54;
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
      v48 = (v73 - __p) >> 2;
      v58 = a4;
    }

    if (v56 > v34)
    {
      v59 = 2;
    }

    else
    {
      v34 = v48;
      v59 = v58;
    }

    if (v56 <= v57)
    {
      v60 = v34;
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

    if (!v60 || *(*v29 + 8 * v60 - 8) < 16)
    {
      goto LABEL_67;
    }

    switch(v61)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<unsigned long long,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned long long,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned long long,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      default:
        LODWORD(v56) = v60;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<unsigned long long,BOOL,false,mlx::core::detail::GreaterEqual>(v9, v10, v11, v56, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
    }

    v76[0] = &v74;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v76);
    if (__p)
    {
      v73 = __p;
      operator delete(__p);
    }

    goto LABEL_84;
  }

  if (a4 == 2)
  {
    v38 = *(v8 + 160);
    v39 = *v10;
    if (v38 < 4)
    {
      v43 = *(v8 + 160);
    }

    else
    {
      v40 = vdupq_n_s64(v39);
      do
      {
        v41 = *v9;
        v42 = v9[1];
        v9 += 2;
        *v11 = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_u64(v41, v40), vcgeq_u64(v42, v40))), 0x1000100010001), *v40.i8).u32[0];
        v11 += 4;
        v43 = v38 - 4;
        v18 = v38 > 7;
        v38 -= 4;
      }

      while (v18);
    }

    if (v43 >= 1)
    {
      v68 = v43 + 1;
      do
      {
        v69 = v9->i64[0];
        v9 = (v9 + 8);
        *v11++ = v69 >= v39;
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

    v19 = *(v8 + 48);
    if (v19 < 4)
    {
      v24 = *(v8 + 48);
    }

    else
    {
      do
      {
        v20 = *v9;
        v21 = v9[1];
        v9 += 2;
        v22 = *v10;
        v23 = *(v10 + 1);
        v10 += 2;
        *v11 = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_u64(v20, v22), vcgeq_u64(v21, v23))), 0x1000100010001), 0x1000100010001).u32[0];
        v11 += 4;
        v24 = v19 - 4;
        v18 = v19 > 7;
        v19 -= 4;
      }

      while (v18);
    }

    if (v24 >= 1)
    {
      v64 = v24 + 1;
      do
      {
        v66 = v9->i64[0];
        v9 = (v9 + 8);
        v65 = v66;
        v67 = *v10;
        v10 = (v10 + 8);
        *v11++ = v65 >= v67;
        --v64;
      }

      while (v64 > 1);
    }
  }

LABEL_84:
  v70 = *MEMORY[0x277D85DE8];
}

void sub_25A6ACABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<signed char,BOOL,mlx::core::detail::GreaterEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v11->i8[0] = v9->u8[0] << 24 >= v10->u8[0] << 24;
      goto LABEL_77;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      v13 = v9->u8[0];
      if (v12 < 16)
      {
        v17 = *(*a2 + 160);
      }

      else
      {
        v14 = vdupq_n_s8(v13);
        v15.i64[0] = 0x101010101010101;
        v15.i64[1] = 0x101010101010101;
        do
        {
          v16 = *v10++;
          *v11++ = vandq_s8(vcgeq_s8(v14, v16), v15);
          v17 = v12 - 16;
          v18 = v12 > 0x1F;
          v12 -= 16;
        }

        while (v18);
      }

      if (v17 >= 1)
      {
        v56 = v13 << 24;
        v57 = v17 + 1;
        do
        {
          v58 = v10->u8[0];
          v10 = (v10 + 1);
          v11->i8[0] = v56 >= v58 << 24;
          v11 = (v11 + 1);
          --v57;
        }

        while (v57 > 1);
      }

      goto LABEL_77;
    }

LABEL_11:
    memset(v68, 0, sizeof(v68));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v68, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v19 = *a2;
    memset(v69, 0, sizeof(v69));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v69, *(v19 + 24), *(v19 + 32), (*(v19 + 32) - *(v19 + 24)) >> 3);
    v20 = *a3;
    v71[0] = 0;
    v71[1] = 0;
    v70 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v70, *(v20 + 24), *(v20 + 32), (*(v20 + 32) - *(v20 + 24)) >> 3);
    memset(v63, 0, sizeof(v63));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v63, v68, &v72, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v63, 0x7FFFFFFFuLL, &__p);
    v67 = v63;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v67);
    for (i = 0; i != -9; i -= 3)
    {
      v22 = v71[i - 1];
      if (v22)
      {
        v71[i] = v22;
        operator delete(v22);
      }
    }

    v23 = v66 + 6;
    v24 = *v66;
    v25 = (v66[1] - *v66) >> 3;
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
        goto LABEL_27;
      }
    }

    v28 = v27;
LABEL_27:
    v38 = v66[3];
    v39 = (v66[4] - v38) >> 3;
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
      if (*(v38 + v45) != *(*v23 + v45))
      {
        goto LABEL_34;
      }
    }

    v42 = v41;
LABEL_34:
    v46 = v25 + 1;
    while ((v29 & 0x80000000) == 0)
    {
      v47 = *(v24 + 8 * (v29 & 0x7FFFFFFF));
      --v46;
      --v29;
      if (v47)
      {
        goto LABEL_39;
      }
    }

    v46 = v27;
LABEL_39:
    v48 = v39 + 1;
    while ((v43 & 0x80000000) == 0)
    {
      v49 = *(v38 + 8 * (v43 & 0x7FFFFFFF));
      --v48;
      --v43;
      if (v49)
      {
        goto LABEL_44;
      }
    }

    v48 = v41;
LABEL_44:
    v50 = (v65 - __p) >> 2;
    if (v28 <= v42)
    {
      v51 = v42;
    }

    else
    {
      v51 = v28;
    }

    if (v28 <= v48)
    {
      v28 = v48;
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
      v42 = (v65 - __p) >> 2;
      v52 = a4;
    }

    if (v50 > v28)
    {
      v53 = 2;
    }

    else
    {
      v28 = v42;
      v53 = v52;
    }

    if (v50 <= v51)
    {
      v54 = v28;
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

    if (!v54 || *(*v23 + 8 * v54 - 8) < 16)
    {
      goto LABEL_65;
    }

    switch(v55)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<signed char,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11->i8, v54, *(*a1 + 48), &__p, v66, v66 + 3, v66 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<signed char,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(v9, v10, v11->i8, v54, *(*a1 + 48), &__p, v66, v66 + 3, v66 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<signed char,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v66, v66 + 3, v66 + 6);
        break;
      default:
        LODWORD(v50) = v54;
LABEL_65:
        mlx::core::binary_op_dispatch_dims<signed char,BOOL,false,mlx::core::detail::GreaterEqual>(v9, v10, v11->i8, v50, *(*a1 + 48), &__p, v66, v66 + 3, v66 + 6);
        break;
    }

    v68[0] = &v66;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v68);
    if (__p)
    {
      v65 = __p;
      operator delete(__p);
    }

    goto LABEL_77;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::GreaterEqual>::operator()<signed char,BOOL>(v68, v9, v10, v11, *(v8 + 48));
      goto LABEL_77;
    }

    goto LABEL_11;
  }

  v32 = *(v8 + 160);
  v33 = v10->u8[0];
  if (v32 < 16)
  {
    v37 = *(v8 + 160);
  }

  else
  {
    v34 = vdupq_n_s8(v33);
    v35.i64[0] = 0x101010101010101;
    v35.i64[1] = 0x101010101010101;
    do
    {
      v36 = *v9++;
      *v11++ = vandq_s8(vcgeq_s8(v36, v34), v35);
      v37 = v32 - 16;
      v18 = v32 > 0x1F;
      v32 -= 16;
    }

    while (v18);
  }

  if (v37 >= 1)
  {
    v59 = v33 << 24;
    v60 = v37 + 1;
    do
    {
      v61 = v9->u8[0];
      v9 = (v9 + 1);
      v11->i8[0] = v59 <= v61 << 24;
      v11 = (v11 + 1);
      --v60;
    }

    while (v60 > 1);
  }

LABEL_77:
  v62 = *MEMORY[0x277D85DE8];
}

void sub_25A6AD034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<short,BOOL,mlx::core::detail::GreaterEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v74 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v11->i8[0] = v9->u16[0] << 16 >= *v10 << 16;
      goto LABEL_77;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      v13 = v9->u16[0];
      if (v12 < 16)
      {
        v18 = *(*a2 + 160);
      }

      else
      {
        v14 = vdupq_n_s16(v13);
        v15.i64[0] = 0x101010101010101;
        v15.i64[1] = 0x101010101010101;
        do
        {
          v16 = *v10;
          v17 = *(v10 + 1);
          v10 += 2;
          *v11++ = vandq_s8(vuzp1q_s8(vcgeq_s16(v14, v16), vcgeq_s16(v14, v17)), v15);
          v18 = v12 - 16;
          v19 = v12 > 0x1F;
          v12 -= 16;
        }

        while (v19);
      }

      if (v18 >= 1)
      {
        v58 = v13 << 16;
        v59 = v18 + 1;
        do
        {
          v60 = *v10;
          v10 = (v10 + 2);
          v11->i8[0] = v58 >= v60 << 16;
          v11 = (v11 + 1);
          --v59;
        }

        while (v59 > 1);
      }

      goto LABEL_77;
    }

LABEL_11:
    memset(v70, 0, sizeof(v70));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v70, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v20 = *a2;
    memset(v71, 0, sizeof(v71));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v71, *(v20 + 24), *(v20 + 32), (*(v20 + 32) - *(v20 + 24)) >> 3);
    v21 = *a3;
    v73[0] = 0;
    v73[1] = 0;
    v72 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v72, *(v21 + 24), *(v21 + 32), (*(v21 + 32) - *(v21 + 24)) >> 3);
    memset(v65, 0, sizeof(v65));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v65, v70, &v74, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v65, 0x7FFFFFFFuLL, &__p);
    v69 = v65;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v69);
    for (i = 0; i != -9; i -= 3)
    {
      v23 = v73[i - 1];
      if (v23)
      {
        v73[i] = v23;
        operator delete(v23);
      }
    }

    v24 = v68 + 6;
    v25 = *v68;
    v26 = (v68[1] - *v68) >> 3;
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
      if (*(v25 + v32) != *(*v24 + v32))
      {
        goto LABEL_27;
      }
    }

    v29 = v28;
LABEL_27:
    v40 = v68[3];
    v41 = (v68[4] - v40) >> 3;
    v42 = v41 - 1;
    if (v41 - 1 >= -1)
    {
      v42 = -1;
    }

    v43 = v42 + 1;
    v44 = v41 + 1;
    v45 = v41 - 1;
    v46 = v41 - 1;
    while ((v46 & 0x80000000) == 0)
    {
      v47 = 8 * (v46 & 0x7FFFFFFF);
      --v44;
      --v46;
      if (*(v40 + v47) != *(*v24 + v47))
      {
        goto LABEL_34;
      }
    }

    v44 = v43;
LABEL_34:
    v48 = v26 + 1;
    while ((v30 & 0x80000000) == 0)
    {
      v49 = *(v25 + 8 * (v30 & 0x7FFFFFFF));
      --v48;
      --v30;
      if (v49)
      {
        goto LABEL_39;
      }
    }

    v48 = v28;
LABEL_39:
    v50 = v41 + 1;
    while ((v45 & 0x80000000) == 0)
    {
      v51 = *(v40 + 8 * (v45 & 0x7FFFFFFF));
      --v50;
      --v45;
      if (v51)
      {
        goto LABEL_44;
      }
    }

    v50 = v43;
LABEL_44:
    v52 = (v67 - __p) >> 2;
    if (v29 <= v44)
    {
      v53 = v44;
    }

    else
    {
      v53 = v29;
    }

    if (v29 <= v50)
    {
      v29 = v50;
    }

    if (v48 > v44)
    {
      v44 = v48;
    }

    if (v52 > v44)
    {
      v54 = 1;
    }

    else
    {
      v44 = (v67 - __p) >> 2;
      v54 = a4;
    }

    if (v52 > v29)
    {
      v55 = 2;
    }

    else
    {
      v29 = v44;
      v55 = v54;
    }

    if (v52 <= v53)
    {
      v56 = v29;
    }

    else
    {
      v56 = v53;
    }

    if (v52 <= v53)
    {
      v57 = v55;
    }

    else
    {
      v57 = 3;
    }

    if (!v56 || *(*v24 + 8 * v56 - 8) < 16)
    {
      goto LABEL_65;
    }

    switch(v57)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<short,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v56, *(*a1 + 48), &__p, v68, v68 + 3, v68 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<short,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v56, *(*a1 + 48), &__p, v68, v68 + 3, v68 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<short,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v56, *(*a1 + 48), &__p, v68, v68 + 3, v68 + 6);
        break;
      default:
        LODWORD(v52) = v56;
LABEL_65:
        mlx::core::binary_op_dispatch_dims<short,BOOL,false,mlx::core::detail::GreaterEqual>(v9, v10, v11->i8, v52, *(*a1 + 48), &__p, v68, v68 + 3, v68 + 6);
        break;
    }

    v70[0] = &v68;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v70);
    if (__p)
    {
      v67 = __p;
      operator delete(__p);
    }

    goto LABEL_77;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::GreaterEqual>::operator()<short,BOOL>(v70, v9, v10, v11, *(v8 + 48));
      goto LABEL_77;
    }

    goto LABEL_11;
  }

  v33 = *(v8 + 160);
  v34 = *v10;
  if (v33 < 16)
  {
    v39 = *(v8 + 160);
  }

  else
  {
    v35 = vdupq_n_s16(v34);
    v36.i64[0] = 0x101010101010101;
    v36.i64[1] = 0x101010101010101;
    do
    {
      v37 = *v9;
      v38 = v9[1];
      v9 += 2;
      *v11++ = vandq_s8(vuzp1q_s8(vcgeq_s16(v37, v35), vcgeq_s16(v38, v35)), v36);
      v39 = v33 - 16;
      v19 = v33 > 0x1F;
      v33 -= 16;
    }

    while (v19);
  }

  if (v39 >= 1)
  {
    v61 = v34 << 16;
    v62 = v39 + 1;
    do
    {
      v63 = v9->u16[0];
      v9 = (v9 + 2);
      v11->i8[0] = v61 <= v63 << 16;
      v11 = (v11 + 1);
      --v62;
    }

    while (v62 > 1);
  }

LABEL_77:
  v64 = *MEMORY[0x277D85DE8];
}

void sub_25A6AD5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<int,BOOL,mlx::core::detail::GreaterEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v80 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v11->i8[0] = v9->i32[0] >= *v10;
      goto LABEL_84;
    }

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
          v15 = *v10;
          v16 = *(v10 + 1);
          v10 += 2;
          *v11++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_s32(v14, v15), vcgeq_s32(v14, v16))), 0x101010101010101);
          v17 = v12 - 8;
          v18 = v12 > 0xF;
          v12 -= 8;
        }

        while (v18);
      }

      if (v17 >= 1)
      {
        v62 = v17 + 1;
        do
        {
          v63 = *v10;
          v10 = (v10 + 4);
          v11->i8[0] = v13 >= v63;
          v11 = (v11 + 1);
          --v62;
        }

        while (v62 > 1);
      }

      goto LABEL_84;
    }

LABEL_13:
    memset(v76, 0, sizeof(v76));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v76, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v25 = *a2;
    memset(v77, 0, sizeof(v77));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v77, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 3);
    v26 = *a3;
    v79[0] = 0;
    v79[1] = 0;
    v78 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v78, *(v26 + 24), *(v26 + 32), (*(v26 + 32) - *(v26 + 24)) >> 3);
    memset(v71, 0, sizeof(v71));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v71, v76, &v80, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v71, 0x7FFFFFFFuLL, &__p);
    v75 = v71;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v75);
    for (i = 0; i != -9; i -= 3)
    {
      v28 = v79[i - 1];
      if (v28)
      {
        v79[i] = v28;
        operator delete(v28);
      }
    }

    v29 = v74 + 6;
    v30 = *v74;
    v31 = (v74[1] - *v74) >> 3;
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
        goto LABEL_29;
      }
    }

    v34 = v33;
LABEL_29:
    v44 = v74[3];
    v45 = (v74[4] - v44) >> 3;
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
      if (*(v44 + v51) != *(*v29 + v51))
      {
        goto LABEL_36;
      }
    }

    v48 = v47;
LABEL_36:
    v52 = v31 + 1;
    while ((v35 & 0x80000000) == 0)
    {
      v53 = *(v30 + 8 * (v35 & 0x7FFFFFFF));
      --v52;
      --v35;
      if (v53)
      {
        goto LABEL_41;
      }
    }

    v52 = v33;
LABEL_41:
    v54 = v45 + 1;
    while ((v49 & 0x80000000) == 0)
    {
      v55 = *(v44 + 8 * (v49 & 0x7FFFFFFF));
      --v54;
      --v49;
      if (v55)
      {
        goto LABEL_46;
      }
    }

    v54 = v47;
LABEL_46:
    v56 = (v73 - __p) >> 2;
    if (v34 <= v48)
    {
      v57 = v48;
    }

    else
    {
      v57 = v34;
    }

    if (v34 <= v54)
    {
      v34 = v54;
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
      v48 = (v73 - __p) >> 2;
      v58 = a4;
    }

    if (v56 > v34)
    {
      v59 = 2;
    }

    else
    {
      v34 = v48;
      v59 = v58;
    }

    if (v56 <= v57)
    {
      v60 = v34;
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

    if (!v60 || *(*v29 + 8 * v60 - 8) < 16)
    {
      goto LABEL_67;
    }

    switch(v61)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<int,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(v9->i32, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<int,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<int,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(v9->i32, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      default:
        LODWORD(v56) = v60;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<int,BOOL,false,mlx::core::detail::GreaterEqual>(v9, v10, v11, v56, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
    }

    v76[0] = &v74;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v76);
    if (__p)
    {
      v73 = __p;
      operator delete(__p);
    }

    goto LABEL_84;
  }

  if (a4 == 2)
  {
    v38 = *(v8 + 160);
    v39 = *v10;
    if (v38 < 8)
    {
      v43 = *(v8 + 160);
    }

    else
    {
      v40 = vdupq_n_s32(v39);
      do
      {
        v41 = *v9;
        v42 = v9[1];
        v9 += 2;
        *v11++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_s32(v41, v40), vcgeq_s32(v42, v40))), 0x101010101010101);
        v43 = v38 - 8;
        v18 = v38 > 0xF;
        v38 -= 8;
      }

      while (v18);
    }

    if (v43 >= 1)
    {
      v68 = v43 + 1;
      do
      {
        v69 = v9->i32[0];
        v9 = (v9 + 4);
        v11->i8[0] = v69 >= v39;
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

    v19 = *(v8 + 48);
    if (v19 < 8)
    {
      v24 = *(v8 + 48);
    }

    else
    {
      do
      {
        v20 = *v9;
        v21 = v9[1];
        v9 += 2;
        v22 = *v10;
        v23 = *(v10 + 1);
        v10 += 2;
        *v11++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_s32(v20, v22), vcgeq_s32(v21, v23))), 0x101010101010101);
        v24 = v19 - 8;
        v18 = v19 > 0xF;
        v19 -= 8;
      }

      while (v18);
    }

    if (v24 >= 1)
    {
      v64 = v24 + 1;
      do
      {
        v66 = v9->i32[0];
        v9 = (v9 + 4);
        v65 = v66;
        v67 = *v10;
        v10 = (v10 + 4);
        v11->i8[0] = v65 >= v67;
        v11 = (v11 + 1);
        --v64;
      }

      while (v64 > 1);
    }
  }

LABEL_84:
  v70 = *MEMORY[0x277D85DE8];
}

void sub_25A6ADBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<long long,BOOL,mlx::core::detail::GreaterEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v80 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      *v11 = v9->i64[0] >= *v10;
      goto LABEL_84;
    }

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
          v15 = *v10;
          v16 = *(v10 + 1);
          v10 += 2;
          *v11 = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_s64(v14, v15), vcgeq_s64(v14, v16))), 0x1000100010001), *v14.i8).u32[0];
          v11 += 4;
          v17 = v12 - 4;
          v18 = v12 > 7;
          v12 -= 4;
        }

        while (v18);
      }

      if (v17 >= 1)
      {
        v62 = v17 + 1;
        do
        {
          v63 = *v10;
          v10 = (v10 + 8);
          *v11++ = v13 >= v63;
          --v62;
        }

        while (v62 > 1);
      }

      goto LABEL_84;
    }

LABEL_13:
    memset(v76, 0, sizeof(v76));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v76, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v25 = *a2;
    memset(v77, 0, sizeof(v77));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v77, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 3);
    v26 = *a3;
    v79[0] = 0;
    v79[1] = 0;
    v78 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v78, *(v26 + 24), *(v26 + 32), (*(v26 + 32) - *(v26 + 24)) >> 3);
    memset(v71, 0, sizeof(v71));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v71, v76, &v80, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v71, 0x7FFFFFFFuLL, &__p);
    v75 = v71;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v75);
    for (i = 0; i != -9; i -= 3)
    {
      v28 = v79[i - 1];
      if (v28)
      {
        v79[i] = v28;
        operator delete(v28);
      }
    }

    v29 = v74 + 6;
    v30 = *v74;
    v31 = (v74[1] - *v74) >> 3;
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
        goto LABEL_29;
      }
    }

    v34 = v33;
LABEL_29:
    v44 = v74[3];
    v45 = (v74[4] - v44) >> 3;
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
      if (*(v44 + v51) != *(*v29 + v51))
      {
        goto LABEL_36;
      }
    }

    v48 = v47;
LABEL_36:
    v52 = v31 + 1;
    while ((v35 & 0x80000000) == 0)
    {
      v53 = *(v30 + 8 * (v35 & 0x7FFFFFFF));
      --v52;
      --v35;
      if (v53)
      {
        goto LABEL_41;
      }
    }

    v52 = v33;
LABEL_41:
    v54 = v45 + 1;
    while ((v49 & 0x80000000) == 0)
    {
      v55 = *(v44 + 8 * (v49 & 0x7FFFFFFF));
      --v54;
      --v49;
      if (v55)
      {
        goto LABEL_46;
      }
    }

    v54 = v47;
LABEL_46:
    v56 = (v73 - __p) >> 2;
    if (v34 <= v48)
    {
      v57 = v48;
    }

    else
    {
      v57 = v34;
    }

    if (v34 <= v54)
    {
      v34 = v54;
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
      v48 = (v73 - __p) >> 2;
      v58 = a4;
    }

    if (v56 > v34)
    {
      v59 = 2;
    }

    else
    {
      v34 = v48;
      v59 = v58;
    }

    if (v56 <= v57)
    {
      v60 = v34;
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

    if (!v60 || *(*v29 + 8 * v60 - 8) < 16)
    {
      goto LABEL_67;
    }

    switch(v61)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<long long,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(v9->i64, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<long long,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<long long,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(v9->i64, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      default:
        LODWORD(v56) = v60;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<long long,BOOL,false,mlx::core::detail::GreaterEqual>(v9, v10, v11, v56, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
    }

    v76[0] = &v74;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v76);
    if (__p)
    {
      v73 = __p;
      operator delete(__p);
    }

    goto LABEL_84;
  }

  if (a4 == 2)
  {
    v38 = *(v8 + 160);
    v39 = *v10;
    if (v38 < 4)
    {
      v43 = *(v8 + 160);
    }

    else
    {
      v40 = vdupq_n_s64(v39);
      do
      {
        v41 = *v9;
        v42 = v9[1];
        v9 += 2;
        *v11 = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_s64(v41, v40), vcgeq_s64(v42, v40))), 0x1000100010001), *v40.i8).u32[0];
        v11 += 4;
        v43 = v38 - 4;
        v18 = v38 > 7;
        v38 -= 4;
      }

      while (v18);
    }

    if (v43 >= 1)
    {
      v68 = v43 + 1;
      do
      {
        v69 = v9->i64[0];
        v9 = (v9 + 8);
        *v11++ = v69 >= v39;
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

    v19 = *(v8 + 48);
    if (v19 < 4)
    {
      v24 = *(v8 + 48);
    }

    else
    {
      do
      {
        v20 = *v9;
        v21 = v9[1];
        v9 += 2;
        v22 = *v10;
        v23 = *(v10 + 1);
        v10 += 2;
        *v11 = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_s64(v20, v22), vcgeq_s64(v21, v23))), 0x1000100010001), 0x1000100010001).u32[0];
        v11 += 4;
        v24 = v19 - 4;
        v18 = v19 > 7;
        v19 -= 4;
      }

      while (v18);
    }

    if (v24 >= 1)
    {
      v64 = v24 + 1;
      do
      {
        v66 = v9->i64[0];
        v9 = (v9 + 8);
        v65 = v66;
        v67 = *v10;
        v10 = (v10 + 8);
        *v11++ = v65 >= v67;
        --v64;
      }

      while (v64 > 1);
    }
  }

LABEL_84:
  v70 = *MEMORY[0x277D85DE8];
}

void sub_25A6AE190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<half,BOOL,mlx::core::detail::GreaterEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int16x4_t a5)
{
  v78 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*a1 + 152);
  v11 = *(*a2 + 152);
  v12 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v12->i8[0] = *v10->i16 >= *v11->i16;
      goto LABEL_84;
    }

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
          *v12++ = vand_s8(vmovn_s16(vcgeq_f16(v14, v15)), 0x101010101010101);
          v16 = v13 - 8;
          v17 = v13 > 0xF;
          v13 -= 8;
        }

        while (v17);
      }

      if (v16 >= 1)
      {
        v60 = v16 + 1;
        do
        {
          v61 = *v11->i16;
          v11 = (v11 + 2);
          v12->i8[0] = *a5.i16 >= v61;
          v12 = (v12 + 1);
          --v60;
        }

        while (v60 > 1);
      }

      goto LABEL_84;
    }

LABEL_13:
    memset(v74, 0, sizeof(v74));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v74, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
    v23 = *a2;
    memset(v75, 0, sizeof(v75));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v75, *(v23 + 24), *(v23 + 32), (*(v23 + 32) - *(v23 + 24)) >> 3);
    v24 = *a3;
    v77[0] = 0;
    v77[1] = 0;
    v76 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v76, *(v24 + 24), *(v24 + 32), (*(v24 + 32) - *(v24 + 24)) >> 3);
    memset(v69, 0, sizeof(v69));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v69, v74, &v78, 3uLL);
    mlx::core::collapse_contiguous_dims(v9, v69, 0x7FFFFFFFuLL, &__p);
    v73 = v69;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v73);
    for (i = 0; i != -9; i -= 3)
    {
      v28 = v77[i - 1];
      if (v28)
      {
        v77[i] = v28;
        operator delete(v28);
      }
    }

    v29 = v72 + 6;
    v30 = *v72;
    v31 = (v72[1] - *v72) >> 3;
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
        goto LABEL_29;
      }
    }

    v34 = v33;
LABEL_29:
    v42 = v72[3];
    v43 = (v72[4] - v42) >> 3;
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
      if (*(v42 + v49) != *(*v29 + v49))
      {
        goto LABEL_36;
      }
    }

    v46 = v45;
LABEL_36:
    v50 = v31 + 1;
    while ((v35 & 0x80000000) == 0)
    {
      v51 = *(v30 + 8 * (v35 & 0x7FFFFFFF));
      --v50;
      --v35;
      if (v51)
      {
        goto LABEL_41;
      }
    }

    v50 = v33;
LABEL_41:
    v52 = v43 + 1;
    while ((v47 & 0x80000000) == 0)
    {
      v53 = *(v42 + 8 * (v47 & 0x7FFFFFFF));
      --v52;
      --v47;
      if (v53)
      {
        goto LABEL_46;
      }
    }

    v52 = v45;
LABEL_46:
    v54 = (v71 - __p) >> 2;
    if (v34 <= v46)
    {
      v55 = v46;
    }

    else
    {
      v55 = v34;
    }

    if (v34 <= v52)
    {
      v34 = v52;
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
      v46 = (v71 - __p) >> 2;
      v56 = a4;
    }

    if (v54 > v34)
    {
      v57 = 2;
    }

    else
    {
      v34 = v46;
      v57 = v56;
    }

    if (v54 <= v55)
    {
      v58 = v34;
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

    if (!v58 || *(*v29 + 8 * v58 - 8) < 16)
    {
      goto LABEL_67;
    }

    switch(v59)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(v10->i16, v11, v12, v58, *(*a1 + 48), &__p, v72, v72 + 3, v25, v26, v72 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(v10, v11->i16, v12, v58, *(*a1 + 48), &__p, v72, v72 + 3, v25, v26, v72 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(v10->i16, v11->i16, v12, v58, *(*a1 + 48), &__p, v72, v72 + 3, v72 + 6);
        break;
      default:
        LODWORD(v54) = v58;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<half,BOOL,false,mlx::core::detail::GreaterEqual>(v10->i16, v11->i16, v12, v54, *(*a1 + 48), &__p, v72, v72 + 3, v72 + 6);
        break;
    }

    v74[0] = &v72;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v74);
    if (__p)
    {
      v71 = __p;
      operator delete(__p);
    }

    goto LABEL_84;
  }

  if (a4 == 2)
  {
    v38 = *(v9 + 160);
    a5.i16[0] = v11->i16[0];
    if (v38 < 8)
    {
      v41 = *(v9 + 160);
    }

    else
    {
      v39 = vdupq_lane_s16(a5, 0);
      do
      {
        v40 = *v10++;
        *v12++ = vand_s8(vmovn_s16(vcgeq_f16(v40, v39)), 0x101010101010101);
        v41 = v38 - 8;
        v17 = v38 > 0xF;
        v38 -= 8;
      }

      while (v17);
    }

    if (v41 >= 1)
    {
      v66 = v41 + 1;
      do
      {
        v67 = *v10->i16;
        v10 = (v10 + 2);
        v12->i8[0] = v67 >= *a5.i16;
        v12 = (v12 + 1);
        --v66;
      }

      while (v66 > 1);
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
        v19 = *v10++;
        v20 = v19;
        v21 = *v11++;
        *v12++ = vand_s8(vmovn_s16(vcgeq_f16(v20, v21)), 0x101010101010101);
        v22 = v18 - 8;
        v17 = v18 > 0xF;
        v18 -= 8;
      }

      while (v17);
    }

    if (v22 >= 1)
    {
      v62 = v22 + 1;
      do
      {
        v63 = *v10->i16;
        v10 = (v10 + 2);
        v64 = v63;
        v65 = *v11->i16;
        v11 = (v11 + 2);
        v12->i8[0] = v64 >= v65;
        v12 = (v12 + 1);
        --v62;
      }

      while (v62 > 1);
    }
  }

LABEL_84:
  v68 = *MEMORY[0x277D85DE8];
}

void sub_25A6AE758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<float,BOOL,mlx::core::detail::GreaterEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, double a5)
{
  v81 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*a1 + 152);
  v11 = *(*a2 + 152);
  v12 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v12->i8[0] = v10->f32[0] >= *v11;
      goto LABEL_84;
    }

    if (a4 == 1)
    {
      v13 = *(*a2 + 160);
      LODWORD(a5) = v10->i32[0];
      if (v13 < 8)
      {
        v17 = *(*a2 + 160);
      }

      else
      {
        v14 = vdupq_lane_s32(*&a5, 0);
        do
        {
          v15 = *v11;
          v16 = *(v11 + 1);
          v11 += 2;
          *v12++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_f32(v14, v15), vcgeq_f32(v14, v16))), 0x101010101010101);
          v17 = v13 - 8;
          v18 = v13 > 0xF;
          v13 -= 8;
        }

        while (v18);
      }

      if (v17 >= 1)
      {
        v63 = v17 + 1;
        do
        {
          v64 = *v11;
          v11 = (v11 + 4);
          v12->i8[0] = *&a5 >= v64;
          v12 = (v12 + 1);
          --v63;
        }

        while (v63 > 1);
      }

      goto LABEL_84;
    }

LABEL_13:
    memset(v77, 0, sizeof(v77));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v77, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
    v25 = *a2;
    memset(v78, 0, sizeof(v78));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v78, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 3);
    v26 = *a3;
    v80[0] = 0;
    v80[1] = 0;
    v79 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v79, *(v26 + 24), *(v26 + 32), (*(v26 + 32) - *(v26 + 24)) >> 3);
    memset(v72, 0, sizeof(v72));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v72, v77, &v81, 3uLL);
    mlx::core::collapse_contiguous_dims(v9, v72, 0x7FFFFFFFuLL, &__p);
    v76 = v72;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v76);
    for (i = 0; i != -9; i -= 3)
    {
      v30 = v80[i - 1];
      if (v30)
      {
        v80[i] = v30;
        operator delete(v30);
      }
    }

    v31 = v75 + 6;
    v32 = *v75;
    v33 = (v75[1] - *v75) >> 3;
    v34 = v33 - 1;
    if (v33 - 1 >= -1)
    {
      v34 = -1;
    }

    v35 = v34 + 1;
    v36 = v33 + 1;
    v37 = v33 - 1;
    v38 = v33 - 1;
    while ((v38 & 0x80000000) == 0)
    {
      v39 = 8 * (v38 & 0x7FFFFFFF);
      --v36;
      --v38;
      if (*(v32 + v39) != *(*v31 + v39))
      {
        goto LABEL_29;
      }
    }

    v36 = v35;
LABEL_29:
    v45 = v75[3];
    v46 = (v75[4] - v45) >> 3;
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
      if (*(v45 + v52) != *(*v31 + v52))
      {
        goto LABEL_36;
      }
    }

    v49 = v48;
LABEL_36:
    v53 = v33 + 1;
    while ((v37 & 0x80000000) == 0)
    {
      v54 = *(v32 + 8 * (v37 & 0x7FFFFFFF));
      --v53;
      --v37;
      if (v54)
      {
        goto LABEL_41;
      }
    }

    v53 = v35;
LABEL_41:
    v55 = v46 + 1;
    while ((v50 & 0x80000000) == 0)
    {
      v56 = *(v45 + 8 * (v50 & 0x7FFFFFFF));
      --v55;
      --v50;
      if (v56)
      {
        goto LABEL_46;
      }
    }

    v55 = v48;
LABEL_46:
    v57 = (v74 - __p) >> 2;
    if (v36 <= v49)
    {
      v58 = v49;
    }

    else
    {
      v58 = v36;
    }

    if (v36 <= v55)
    {
      v36 = v55;
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
      v49 = (v74 - __p) >> 2;
      v59 = a4;
    }

    if (v57 > v36)
    {
      v60 = 2;
    }

    else
    {
      v36 = v49;
      v60 = v59;
    }

    if (v57 <= v58)
    {
      v61 = v36;
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

    if (!v61 || *(*v31 + 8 * v61 - 8) < 16)
    {
      goto LABEL_67;
    }

    switch(v62)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<float,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(v10, v11, v12, v61, *(*a1 + 48), &__p, v75, v75 + 3, v27, v28, v75 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<float,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(v10, v11, v12, v61, *(*a1 + 48), &__p, v75, v75 + 3, v27, v28, v75 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<float,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(v10->f32, v11, v12, v61, *(*a1 + 48), &__p, v75, v75 + 3, v75 + 6);
        break;
      default:
        LODWORD(v57) = v61;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<float,BOOL,false,mlx::core::detail::GreaterEqual>(v10->f32, v11, v12, v57, *(*a1 + 48), &__p, v75, v75 + 3, v75 + 6);
        break;
    }

    v77[0] = &v75;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v77);
    if (__p)
    {
      v74 = __p;
      operator delete(__p);
    }

    goto LABEL_84;
  }

  if (a4 == 2)
  {
    v40 = *(v9 + 160);
    LODWORD(a5) = *v11;
    if (v40 < 8)
    {
      v44 = *(v9 + 160);
    }

    else
    {
      v41 = vdupq_lane_s32(*&a5, 0);
      do
      {
        v42 = *v10;
        v43 = v10[1];
        v10 += 2;
        *v12++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_f32(v42, v41), vcgeq_f32(v43, v41))), 0x101010101010101);
        v44 = v40 - 8;
        v18 = v40 > 0xF;
        v40 -= 8;
      }

      while (v18);
    }

    if (v44 >= 1)
    {
      v69 = v44 + 1;
      do
      {
        v70 = v10->f32[0];
        v10 = (v10 + 4);
        v12->i8[0] = v70 >= *&a5;
        v12 = (v12 + 1);
        --v69;
      }

      while (v69 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_13;
    }

    v19 = *(v9 + 48);
    if (v19 < 8)
    {
      v24 = *(v9 + 48);
    }

    else
    {
      do
      {
        v20 = *v10;
        v21 = v10[1];
        v10 += 2;
        v22 = *v11;
        v23 = *(v11 + 1);
        v11 += 2;
        *v12++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_f32(v20, v22), vcgeq_f32(v21, v23))), 0x101010101010101);
        v24 = v19 - 8;
        v18 = v19 > 0xF;
        v19 -= 8;
      }

      while (v18);
    }

    if (v24 >= 1)
    {
      v65 = v24 + 1;
      do
      {
        v66 = v10->f32[0];
        v10 = (v10 + 4);
        v67 = v66;
        v68 = *v11;
        v11 = (v11 + 4);
        v12->i8[0] = v67 >= v68;
        v12 = (v12 + 1);
        --v65;
      }

      while (v65 > 1);
    }
  }

LABEL_84:
  v71 = *MEMORY[0x277D85DE8];
}

void sub_25A6AED38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<double,BOOL,mlx::core::detail::GreaterEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v80 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      *v11 = *v9 >= *v10;
      goto LABEL_84;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      v13 = *v9;
      if (v12 < 4)
      {
        v17 = *(*a2 + 160);
      }

      else
      {
        v14 = vdupq_lane_s64(v13, 0);
        do
        {
          v15 = *v10;
          v16 = *(v10 + 1);
          v10 += 2;
          *v11 = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_f64(v14, v15), vcgeq_f64(v14, v16))), 0x1000100010001), v13).u32[0];
          v11 += 4;
          v17 = v12 - 4;
          v18 = v12 > 7;
          v12 -= 4;
        }

        while (v18);
      }

      if (v17 >= 1)
      {
        v62 = v17 + 1;
        do
        {
          v63 = *v10;
          v10 = (v10 + 8);
          *v11++ = *&v13 >= v63;
          --v62;
        }

        while (v62 > 1);
      }

      goto LABEL_84;
    }

LABEL_13:
    memset(v76, 0, sizeof(v76));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v76, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v25 = *a2;
    memset(v77, 0, sizeof(v77));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v77, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 3);
    v26 = *a3;
    v79[0] = 0;
    v79[1] = 0;
    v78 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v78, *(v26 + 24), *(v26 + 32), (*(v26 + 32) - *(v26 + 24)) >> 3);
    memset(v71, 0, sizeof(v71));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v71, v76, &v80, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v71, 0x7FFFFFFFuLL, &__p);
    v75 = v71;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v75);
    for (i = 0; i != -9; i -= 3)
    {
      v28 = v79[i - 1];
      if (v28)
      {
        v79[i] = v28;
        operator delete(v28);
      }
    }

    v29 = v74 + 6;
    v30 = *v74;
    v31 = (v74[1] - *v74) >> 3;
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
        goto LABEL_29;
      }
    }

    v34 = v33;
LABEL_29:
    v44 = v74[3];
    v45 = (v74[4] - v44) >> 3;
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
      if (*(v44 + v51) != *(*v29 + v51))
      {
        goto LABEL_36;
      }
    }

    v48 = v47;
LABEL_36:
    v52 = v31 + 1;
    while ((v35 & 0x80000000) == 0)
    {
      v53 = *(v30 + 8 * (v35 & 0x7FFFFFFF));
      --v52;
      --v35;
      if (v53)
      {
        goto LABEL_41;
      }
    }

    v52 = v33;
LABEL_41:
    v54 = v45 + 1;
    while ((v49 & 0x80000000) == 0)
    {
      v55 = *(v44 + 8 * (v49 & 0x7FFFFFFF));
      --v54;
      --v49;
      if (v55)
      {
        goto LABEL_46;
      }
    }

    v54 = v47;
LABEL_46:
    v56 = (v73 - __p) >> 2;
    if (v34 <= v48)
    {
      v57 = v48;
    }

    else
    {
      v57 = v34;
    }

    if (v34 <= v54)
    {
      v34 = v54;
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
      v48 = (v73 - __p) >> 2;
      v58 = a4;
    }

    if (v56 > v34)
    {
      v59 = 2;
    }

    else
    {
      v34 = v48;
      v59 = v58;
    }

    if (v56 <= v57)
    {
      v60 = v34;
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

    if (!v60 || *(*v29 + 8 * v60 - 8) < 16)
    {
      goto LABEL_67;
    }

    switch(v61)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      default:
        LODWORD(v56) = v60;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<double,BOOL,false,mlx::core::detail::GreaterEqual>(v9, v10, v11, v56, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
    }

    v76[0] = &v74;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v76);
    if (__p)
    {
      v73 = __p;
      operator delete(__p);
    }

    goto LABEL_84;
  }

  if (a4 == 2)
  {
    v38 = *(v8 + 160);
    v39 = *v10;
    if (v38 < 4)
    {
      v43 = *(v8 + 160);
    }

    else
    {
      v40 = vdupq_lane_s64(v39, 0);
      do
      {
        v41 = *v9;
        v42 = *(v9 + 16);
        v9 += 32;
        *v11 = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_f64(v41, v40), vcgeq_f64(v42, v40))), 0x1000100010001), v39).u32[0];
        v11 += 4;
        v43 = v38 - 4;
        v18 = v38 > 7;
        v38 -= 4;
      }

      while (v18);
    }

    if (v43 >= 1)
    {
      v68 = v43 + 1;
      do
      {
        v69 = *v9;
        v9 += 8;
        *v11++ = v69 >= *&v39;
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

    v19 = *(v8 + 48);
    if (v19 < 4)
    {
      v24 = *(v8 + 48);
    }

    else
    {
      do
      {
        v20 = *v9;
        v21 = *(v9 + 16);
        v9 += 32;
        v22 = *v10;
        v23 = *(v10 + 1);
        v10 += 2;
        *v11 = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_f64(v20, v22), vcgeq_f64(v21, v23))), 0x1000100010001), 0x1000100010001).u32[0];
        v11 += 4;
        v24 = v19 - 4;
        v18 = v19 > 7;
        v19 -= 4;
      }

      while (v18);
    }

    if (v24 >= 1)
    {
      v64 = v24 + 1;
      do
      {
        v65 = *v9;
        v9 += 8;
        v66 = v65;
        v67 = *v10;
        v10 = (v10 + 8);
        *v11++ = v66 >= v67;
        --v64;
      }

      while (v64 > 1);
    }
  }

LABEL_84:
  v70 = *MEMORY[0x277D85DE8];
}

void sub_25A6AF324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::GreaterEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      *v11 = COERCE_FLOAT(*v9 << 16) >= COERCE_FLOAT(*v10 << 16);
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
          v15 = *v10++;
          *v11++ = v13 >= COERCE_FLOAT(v15 << 16);
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
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      default:
        LODWORD(v50) = v54;
LABEL_68:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,false,mlx::core::detail::GreaterEqual>(v9, v10, v11, v50, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
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
      LODWORD(v35) = *v10 << 16;
      v36 = v34 + 1;
      do
      {
        v37 = *v9++;
        *v11++ = COERCE_FLOAT(v37 << 16) >= v35;
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
        *v11++ = COERCE_FLOAT(v18 << 16) >= COERCE_FLOAT(v20 << 16);
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_71:
  v56 = *MEMORY[0x277D85DE8];
}

void sub_25A6AF878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<mlx::core::complex64_t,BOOL,mlx::core::detail::GreaterEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v67 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v33 = *v9 > *v10 || *v9 == *v10 && v9[1] >= v10[1];
      *v11 = v33;
      goto LABEL_95;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      if (v12 >= 1)
      {
        v13 = *v9;
        v14 = v9[1];
        v15 = v12 + 1;
        do
        {
          v16 = v13 > *v10 || v13 == *v10 && v14 >= v10[1];
          *v11++ = v16;
          v10 += 2;
          --v15;
        }

        while (v15 > 1);
      }

      goto LABEL_95;
    }

LABEL_24:
    memset(v63, 0, sizeof(v63));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v63, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v20 = *a2;
    memset(v64, 0, sizeof(v64));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v64, *(v20 + 24), *(v20 + 32), (*(v20 + 32) - *(v20 + 24)) >> 3);
    v21 = *a3;
    v66[0] = 0;
    v66[1] = 0;
    v65 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v65, *(v21 + 24), *(v21 + 32), (*(v21 + 32) - *(v21 + 24)) >> 3);
    memset(v58, 0, sizeof(v58));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v58, v63, &v67, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v58, 0x7FFFFFFFuLL, &__p);
    v62 = v58;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v62);
    for (i = 0; i != -9; i -= 3)
    {
      v23 = v66[i - 1];
      if (v23)
      {
        v66[i] = v23;
        operator delete(v23);
      }
    }

    v24 = v61 + 6;
    v25 = *v61;
    v26 = (v61[1] - *v61) >> 3;
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
      if (*(v25 + v32) != *(*v24 + v32))
      {
        goto LABEL_46;
      }
    }

    v29 = v28;
LABEL_46:
    v39 = v61[3];
    v40 = (v61[4] - v39) >> 3;
    v41 = v40 - 1;
    if (v40 - 1 >= -1)
    {
      v41 = -1;
    }

    v42 = v41 + 1;
    v43 = v40 + 1;
    v44 = v40 - 1;
    v45 = v40 - 1;
    while ((v45 & 0x80000000) == 0)
    {
      v46 = 8 * (v45 & 0x7FFFFFFF);
      --v43;
      --v45;
      if (*(v39 + v46) != *(*v24 + v46))
      {
        goto LABEL_53;
      }
    }

    v43 = v42;
LABEL_53:
    v47 = v26 + 1;
    while ((v30 & 0x80000000) == 0)
    {
      v48 = *(v25 + 8 * (v30 & 0x7FFFFFFF));
      --v47;
      --v30;
      if (v48)
      {
        goto LABEL_58;
      }
    }

    v47 = v28;
LABEL_58:
    v49 = v40 + 1;
    while ((v44 & 0x80000000) == 0)
    {
      v50 = *(v39 + 8 * (v44 & 0x7FFFFFFF));
      --v49;
      --v44;
      if (v50)
      {
        goto LABEL_63;
      }
    }

    v49 = v42;
LABEL_63:
    v51 = (v60 - __p) >> 2;
    if (v29 <= v43)
    {
      v52 = v43;
    }

    else
    {
      v52 = v29;
    }

    if (v29 <= v49)
    {
      v29 = v49;
    }

    if (v47 > v43)
    {
      v43 = v47;
    }

    if (v51 > v43)
    {
      v53 = 1;
    }

    else
    {
      v43 = (v60 - __p) >> 2;
      v53 = a4;
    }

    if (v51 > v29)
    {
      v54 = 2;
    }

    else
    {
      v29 = v43;
      v54 = v53;
    }

    if (v51 <= v52)
    {
      v55 = v29;
    }

    else
    {
      v55 = v52;
    }

    if (v51 <= v52)
    {
      v56 = v54;
    }

    else
    {
      v56 = 3;
    }

    if (!v55 || *(*v24 + 8 * v55 - 8) < 16)
    {
      goto LABEL_84;
    }

    switch(v56)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v55, *(*a1 + 48), &__p, v61, v61 + 3, v61 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v55, *(*a1 + 48), &__p, v61, v61 + 3, v61 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(v9, v10, v11, v55, *(*a1 + 48), &__p, v61, v61 + 3, v61 + 6);
        break;
      default:
        LODWORD(v51) = v55;
LABEL_84:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,false,mlx::core::detail::GreaterEqual>(v9, v10, v11, v51, *(*a1 + 48), &__p, v61, v61 + 3, v61 + 6);
        break;
    }

    v63[0] = &v61;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v63);
    if (__p)
    {
      v60 = __p;
      operator delete(__p);
    }

    goto LABEL_95;
  }

  if (a4 == 2)
  {
    v34 = *(v8 + 160);
    if (v34 >= 1)
    {
      v35 = *v10;
      v36 = v10[1];
      v37 = v34 + 1;
      do
      {
        v38 = *v9 > v35 || *v9 == v35 && v9[1] >= v36;
        *v11++ = v38;
        v9 += 2;
        --v37;
      }

      while (v37 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_24;
    }

    v17 = *(v8 + 48);
    if (v17 >= 1)
    {
      v18 = v17 + 1;
      do
      {
        v19 = *v9 > *v10 || *v9 == *v10 && v9[1] >= v10[1];
        *v11++ = v19;
        v9 += 2;
        v10 += 2;
        --v18;
      }

      while (v18 > 1);
    }
  }

LABEL_95:
  v57 = *MEMORY[0x277D85DE8];
}

void sub_25A6AFE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(a1 + v61, a2 + v54, a3 + v19, a6, a7, a8, a9, v15);
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

void sub_25A6B02A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(a1 + v61, &a2[v54], a3 + v19, a6, a7, a8, a9, v15);
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

void sub_25A6B06B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(unsigned __int8 *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(&a1[v61], a2 + v54, a3 + v19, a6, a7, a8, a9, v15);
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

void sub_25A6B0AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,false,mlx::core::detail::GreaterEqual>(_BYTE *a1, _BYTE *a2, _BYTE *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::GreaterEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::GreaterEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 | *v13 ^ 1;
          v12 += v20;
          v14 += v18;
          v13 += v19;
          --v17;
        }

        while (v17);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v65, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v58, a6, a8, v15);
      if (a5 >= 1)
      {
        v22 = a5;
        v23 = 0;
        v57 = (*a9)[a4 - 4];
        v24 = v22;
        do
        {
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::GreaterEqual,3,false>(&v14[v65], &v13[v58], &v12[v23], a6, a7, a8, a9, v15);
          v25 = v67 - v66;
          v26 = (v67 - v66) >> 2;
          if (v26)
          {
            v27 = v70;
            v28 = ((v25 << 30) - 0x100000000) >> 32;
            v29 = v70 + 4 * v28;
            v30 = *v29;
            v31 = v66 + 4 * v28;
            v32 = v68;
            v33 = v65;
            if (v26 >= 2 && v30 == *v31 - 1)
            {
              v36 = (v25 >> 2) & 0x7FFFFFFF;
              v35 = v36 - 1;
              v37 = 4 * v36;
              v38 = v66 - 8;
              do
              {
                v39 = v35;
                *v29 = 0;
                v33 -= v32[v28] * (*v31 - 1);
                v65 = v33;
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
            v65 = v32[v35] + v33;
          }

          v41 = v60 - v59;
          v42 = (v60 - v59) >> 2;
          if (v42)
          {
            v43 = __p;
            v44 = ((v41 << 30) - 0x100000000) >> 32;
            v45 = __p + 4 * v44;
            v46 = *v45;
            v47 = v59 + 4 * v44;
            v48 = v61;
            v49 = v58;
            if (v42 >= 2 && v46 == *v47 - 1)
            {
              v52 = (v41 >> 2) & 0x7FFFFFFF;
              v51 = v52 - 1;
              v53 = 4 * v52;
              v54 = v59 - 8;
              do
              {
                v55 = v51;
                *v45 = 0;
                v49 -= v48[v44] * (*v47 - 1);
                v58 = v49;
                --v51;
                v45 = &v43[v53 - 8];
                v46 = *v45;
                v43 -= 4;
                if (v55 < 2)
                {
                  break;
                }

                v47 = &v54[v53];
                v56 = *&v54[4 * v52] - 1;
                v54 -= 4;
                v44 = v51;
              }

              while (v46 == v56);
              v45 = &v43[4 * v52 - 4];
            }

            else
            {
              v51 = ((v41 << 30) - 0x100000000) >> 32;
            }

            *v45 = v46 + 1;
            v58 = v48[v51] + v49;
          }

          v23 += v57;
        }

        while (v23 < v24);
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

void sub_25A6B0EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *(a3 + v13) = (*(result + v13) & 1u) >= (*(a2 + v13) & 1u);
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