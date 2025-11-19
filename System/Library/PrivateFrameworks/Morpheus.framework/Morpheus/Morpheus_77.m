uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(uint64_t result, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
        v14 = *a2;
        v15 = v12 + 1;
        do
        {
          *(a3 + v13) = (*(result + v13) & 1u) >= v14;
          ++v13;
          --v15;
        }

        while (v15 > 1);
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

uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(uint64_t result, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(uint64_t result, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(unsigned __int8 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
        v14 = *result;
        v15 = v12 + 1;
        do
        {
          *(a3 + v13) = v14 >= (*(a2 + v13) & 1u);
          ++v13;
          --v15;
        }

        while (v15 > 1);
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

unsigned __int8 *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(unsigned __int8 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(unsigned __int8 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

_BYTE *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::GreaterEqual,2,false>(_BYTE *result, _BYTE *a2, _BYTE *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
        v19 = v18;
        v20 = result;
        v21 = a2;
        v22 = a3;
        do
        {
          *v22 = *v20 | *v21 ^ 1;
          v22 += v17;
          v20 += v15;
          v21 += v16;
          --v19;
        }

        while (v19);
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

_BYTE *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::GreaterEqual,3,false>(_BYTE *result, _BYTE *a2, _BYTE *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::GreaterEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<unsigned char,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(unsigned __int8 *a1, unsigned __int8 *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A6B1A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(unsigned __int8 *a1, unsigned __int8 *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A6B1E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(unsigned __int8 *a1, unsigned __int8 *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A6B22A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,BOOL,false,mlx::core::detail::GreaterEqual>(unsigned __int8 *a1, unsigned __int8 *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::detail::GreaterEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::detail::GreaterEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 >= *v13;
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
          mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::detail::GreaterEqual,3,false>(&v14[v65], &v13[v58], &v12[v23], a6, a7, a8, a9, v15);
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

void sub_25A6B26C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13.i64[0] = 0x101010101010101;
    v13.i64[1] = 0x101010101010101;
    do
    {
      v14 = v12;
      v15 = a3;
      v16 = a2;
      v17 = result;
      if (v12 >= 16)
      {
        v18 = 0;
        v19 = v12 + 16;
        do
        {
          *&a3[v18] = vandq_s8(vcgeq_u8(*&result[v18], *&a2[v18]), v13);
          v18 += 16;
          v19 -= 16;
        }

        while (v19 > 0x1F);
        v17 = &result[v18];
        v16 = &a2[v18];
        v15 = &a3[v18];
        v14 = v12 - v18;
      }

      if (v14 >= 1)
      {
        v20 = v14 + 1;
        do
        {
          v22 = *v17++;
          v21 = v22;
          v23 = *v16++;
          *v15++ = v21 >= v23;
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

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13.i64[0] = 0x101010101010101;
    v13.i64[1] = 0x101010101010101;
    do
    {
      v14 = *a2;
      v15 = v12;
      v16 = a3;
      v17 = result;
      if (v12 >= 16)
      {
        v18 = 0;
        v19 = vdupq_n_s8(v14);
        v15 = v12;
        do
        {
          v20 = v15;
          *&a3[v18] = vandq_s8(vcgeq_u8(*&result[v18], v19), v13);
          v15 -= 16;
          v18 += 16;
        }

        while (v20 > 0x1F);
        v17 = &result[v18];
        v16 = &a3[v18];
      }

      if (v15 >= 1)
      {
        v21 = v15 + 1;
        do
        {
          v22 = *v17++;
          *v16++ = v22 >= v14;
          --v21;
        }

        while (v21 > 1);
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

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13.i64[0] = 0x101010101010101;
    v13.i64[1] = 0x101010101010101;
    do
    {
      v14 = *result;
      v15 = v12;
      v16 = a3;
      v17 = a2;
      if (v12 >= 16)
      {
        v18 = 0;
        v19 = vdupq_n_s8(v14);
        v15 = v12;
        do
        {
          v20 = v15;
          *&a3[v18] = vandq_s8(vcgeq_u8(v19, *&a2[v18]), v13);
          v15 -= 16;
          v18 += 16;
        }

        while (v20 > 0x1F);
        v17 = &a2[v18];
        v16 = &a3[v18];
      }

      if (v15 >= 1)
      {
        v21 = v15 + 1;
        do
        {
          v22 = *v17++;
          *v16++ = v14 >= v22;
          --v21;
        }

        while (v21 > 1);
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

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::detail::GreaterEqual,2,false>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
        v19 = v18;
        v20 = result;
        v21 = a2;
        v22 = a3;
        do
        {
          *v22 = *v20 >= *v21;
          v22 += v17;
          v20 += v15;
          v21 += v16;
          --v19;
        }

        while (v19);
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

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::detail::GreaterEqual,3,false>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,BOOL,mlx::core::detail::GreaterEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<unsigned short,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(unsigned __int16 *a1, unsigned __int16 *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6B331C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(_OWORD *a1, unsigned __int16 *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>((a1 + 2 * v58), &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6B3724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(unsigned __int16 *a1, _OWORD *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(&a1[v58], (a2 + 2 * v51), (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6B3B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,BOOL,false,mlx::core::detail::GreaterEqual>(unsigned __int16 *a1, unsigned __int16 *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::detail::GreaterEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::detail::GreaterEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 >= *v13;
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
          mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::detail::GreaterEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A6B3F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(unsigned __int16 *result, unsigned __int16 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a7 + 8 * a8);
    v11 = 2 * *(*a5 + 8 * a8);
    v12 = 2 * *(*a6 + 8 * a8);
    v13.i64[0] = 0x101010101010101;
    v13.i64[1] = 0x101010101010101;
    do
    {
      v14 = a3;
      v15 = v10;
      v16 = a2;
      v17 = result;
      if (v10 >= 16)
      {
        v18 = 0;
        v15 = v10;
        v14 = a3;
        do
        {
          v19 = v15;
          *v14++ = vandq_s8(vuzp1q_s8(vcgeq_u16(*&result[v18], *&a2[v18]), vcgeq_u16(*&result[v18 + 8], *&a2[v18 + 8])), v13);
          v15 -= 16;
          v18 += 16;
        }

        while (v19 > 0x1F);
        v17 = &result[v18];
        v16 = &a2[v18];
      }

      if (v15 >= 1)
      {
        v20 = v15 + 1;
        do
        {
          v22 = *v17++;
          v21 = v22;
          v23 = *v16++;
          v14->i8[0] = v21 >= v23;
          v14 = (v14 + 1);
          --v20;
        }

        while (v20 > 1);
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

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(unsigned __int16 *result, unsigned __int16 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(unsigned __int16 *result, unsigned __int16 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(_OWORD *result, unsigned __int16 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13.i64[0] = 0x101010101010101;
    v13.i64[1] = 0x101010101010101;
    do
    {
      v14 = *a2;
      v15 = v12;
      v16 = a3;
      v17 = result;
      if (v12 >= 16)
      {
        v18 = vdupq_n_s16(v14);
        v17 = result;
        v16 = a3;
        v19 = v12;
        do
        {
          v20 = *v17;
          v21 = *(v17 + 1);
          v17 += 2;
          *v16++ = vandq_s8(vuzp1q_s8(vcgeq_u16(v20, v18), vcgeq_u16(v21, v18)), v13);
          v15 = v19 - 16;
          v22 = v19 > 0x1F;
          v19 -= 16;
        }

        while (v22);
      }

      if (v15 >= 1)
      {
        v23 = v15 + 1;
        do
        {
          v24 = *v17;
          v17 = (v17 + 2);
          v16->i8[0] = v24 >= v14;
          v16 = (v16 + 1);
          --v23;
        }

        while (v23 > 1);
      }

      a3 = (a3 + v12);
      result = (result + 2 * v10);
      a2 += v11;
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(_OWORD *result, unsigned __int16 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(_OWORD *result, unsigned __int16 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(unsigned __int16 *result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13.i64[0] = 0x101010101010101;
    v13.i64[1] = 0x101010101010101;
    do
    {
      v14 = *result;
      v15 = v12;
      v16 = a3;
      v17 = a2;
      if (v12 >= 16)
      {
        v18 = vdupq_n_s16(v14);
        v17 = a2;
        v16 = a3;
        v19 = v12;
        do
        {
          v20 = *v17;
          v21 = *(v17 + 1);
          v17 += 2;
          *v16++ = vandq_s8(vuzp1q_s8(vcgeq_u16(v18, v20), vcgeq_u16(v18, v21)), v13);
          v15 = v19 - 16;
          v22 = v19 > 0x1F;
          v19 -= 16;
        }

        while (v22);
      }

      if (v15 >= 1)
      {
        v23 = v15 + 1;
        do
        {
          v24 = *v17;
          v17 = (v17 + 2);
          v16->i8[0] = v14 >= v24;
          v16 = (v16 + 1);
          --v23;
        }

        while (v23 > 1);
      }

      a3 = (a3 + v12);
      result += v10;
      a2 = (a2 + 2 * v11);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(unsigned __int16 *result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(unsigned __int16 *result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::detail::GreaterEqual,2,false>(unsigned __int16 *result, unsigned __int16 *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = *v20 >= *v19;
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

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::detail::GreaterEqual,3,false>(unsigned __int16 *result, unsigned __int16 *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,BOOL,mlx::core::detail::GreaterEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<unsigned int,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(unsigned int *a1, unsigned int *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6B4BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(_OWORD *a1, unsigned int *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>((a1 + 4 * v58), &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6B4FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(unsigned int *a1, _OWORD *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(&a1[v58], (a2 + 4 * v51), (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6B53F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,BOOL,false,mlx::core::detail::GreaterEqual>(_DWORD *a1, _DWORD *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::detail::GreaterEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::detail::GreaterEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 >= *v13;
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
          mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::detail::GreaterEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A6B5818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

unsigned int *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(unsigned int *result, unsigned int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v13++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_u32(*&result[v17], *&a2[v17]), vcgeq_u32(*&result[v17 + 4], *&a2[v17 + 4]))), 0x101010101010101);
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
          v13->i8[0] = v20 >= v22;
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

unsigned int *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(unsigned int *result, unsigned int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(unsigned int *result, unsigned int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(_OWORD *result, unsigned int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v15++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_u32(v19, v17), vcgeq_u32(v20, v17))), 0x101010101010101);
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
          v15->i8[0] = v23 >= v13;
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

_OWORD *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(_OWORD *result, unsigned int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(_OWORD *result, unsigned int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(unsigned int *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v15++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_u32(v17, v19), vcgeq_u32(v17, v20))), 0x101010101010101);
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
          v15->i8[0] = v13 >= v23;
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

unsigned int *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(unsigned int *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(unsigned int *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::detail::GreaterEqual,2,false>(_DWORD *result, _DWORD *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = *v20 >= *v19;
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

_DWORD *mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::detail::GreaterEqual,3,false>(_DWORD *result, _DWORD *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,BOOL,mlx::core::detail::GreaterEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(unint64_t *a1, unint64_t *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6B64C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(_OWORD *a1, unint64_t *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>((a1 + 8 * v58), &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6B68C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(unint64_t *a1, _OWORD *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(&a1[v58], (a2 + 8 * v51), (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6B6CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,BOOL,false,mlx::core::detail::GreaterEqual>(void *a1, void *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::detail::GreaterEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::detail::GreaterEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 >= *v13;
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
          mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::detail::GreaterEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A6B70F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(unint64_t *result, unint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v13++ = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_u64(*&result[v17], *&a2[v17]), vcgeq_u64(*&result[v17 + 2], *&a2[v17 + 2]))), 0x1000100010001), 0x1000100010001).u32[0];
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
          *v13 = v20 >= v22;
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

unint64_t *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(unint64_t *result, unint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(unint64_t *result, unint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(_OWORD *result, unint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v15++ = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_u64(v19, v17), vcgeq_u64(v20, v17))), 0x1000100010001), 0x1000100010001).u32[0];
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
          *v15 = v23 >= v13;
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

_OWORD *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(_OWORD *result, unint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(_OWORD *result, unint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(unint64_t *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v15++ = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_u64(v17, v19), vcgeq_u64(v17, v20))), 0x1000100010001), 0x1000100010001).u32[0];
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
          *v15 = v13 >= v23;
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

unint64_t *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(unint64_t *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(unint64_t *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::detail::GreaterEqual,2,false>(void *result, void *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = *v20 >= *v19;
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

void *mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::detail::GreaterEqual,3,false>(void *result, void *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,BOOL,mlx::core::detail::GreaterEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::VectorVector<mlx::core::detail::GreaterEqual>::operator()<signed char,BOOL>(uint64_t a1, int8x16_t *a2, int8x16_t *a3, int8x16_t *a4, int a5)
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
      v6 = *a2++;
      v7 = v6;
      v8 = *a3++;
      *a4++ = vandq_s8(vcgeq_s8(v7, v8), v5);
      v9 = a5 - 16;
      v10 = a5 > 0x1F;
      a5 -= 16;
    }

    while (v10);
  }

  if (v9 >= 1)
  {
    v11 = v9 + 1;
    do
    {
      v13 = a2->u8[0];
      a2 = (a2 + 1);
      v12 = v13;
      v14 = a3->u8[0];
      a3 = (a3 + 1);
      a4->i8[0] = v12 << 24 >= v14 << 24;
      a4 = (a4 + 1);
      --v11;
    }

    while (v11 > 1);
  }
}

void mlx::core::binary_op_dispatch_dims<signed char,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>((a1 + v61), (a2 + v54), (a3 + v19), a6, a7, a8, a9, v15);
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

void sub_25A6B7E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<signed char,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(unsigned __int8 *a1, unsigned __int8 *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A6B8230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<signed char,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(unsigned __int8 *a1, unsigned __int8 *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<signed char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<signed char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<signed char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<signed char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A6B8644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<signed char,BOOL,false,mlx::core::detail::GreaterEqual>(unsigned __int8 *a1, unsigned __int8 *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<signed char,BOOL,mlx::core::detail::GreaterEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<signed char,BOOL,mlx::core::detail::GreaterEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 << 24 >= *v13 << 24;
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
          mlx::core::binary_op_dims<signed char,BOOL,mlx::core::detail::GreaterEqual,3,false>(&v14[v65], &v13[v58], &v12[v23], a6, a7, a8, a9, v15);
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

void sub_25A6B8A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a5 + 8 * a8);
    v13 = *(*a6 + 8 * a8);
    v14 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::GreaterEqual>::operator()<signed char,BOOL>(&v15, a1, a2, a3, v14);
      a3 = (a3 + v14);
      a1 = (a1 + v12);
      a2 = (a2 + v13);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = *(*a5 + 8 * a8);
    v16 = *(*a6 + 8 * a8);
    v17 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v17);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = *(*a5 + 8 * a8);
    v16 = *(*a6 + 8 * a8);
    v17 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v17);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      --v8;
    }

    while (v8);
  }
}

unsigned __int8 *mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13.i64[0] = 0x101010101010101;
    v13.i64[1] = 0x101010101010101;
    do
    {
      v14 = *a2;
      v15 = v12;
      v16 = a3;
      v17 = result;
      if (v12 >= 16)
      {
        v18 = 0;
        v19 = vdupq_n_s8(v14);
        v15 = v12;
        do
        {
          v20 = v15;
          *&a3[v18] = vandq_s8(vcgeq_s8(*&result[v18], v19), v13);
          v15 -= 16;
          v18 += 16;
        }

        while (v20 > 0x1F);
        v17 = &result[v18];
        v16 = &a3[v18];
      }

      if (v15 >= 1)
      {
        v21 = v14 << 24;
        v22 = v15 + 1;
        do
        {
          v23 = *v17++;
          *v16++ = v21 <= v23 << 24;
          --v22;
        }

        while (v22 > 1);
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

unsigned __int8 *mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<signed char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13.i64[0] = 0x101010101010101;
    v13.i64[1] = 0x101010101010101;
    do
    {
      v14 = *result;
      v15 = v12;
      v16 = a3;
      v17 = a2;
      if (v12 >= 16)
      {
        v18 = 0;
        v19 = vdupq_n_s8(v14);
        v15 = v12;
        do
        {
          v20 = v15;
          *&a3[v18] = vandq_s8(vcgeq_s8(v19, *&a2[v18]), v13);
          v15 -= 16;
          v18 += 16;
        }

        while (v20 > 0x1F);
        v17 = &a2[v18];
        v16 = &a3[v18];
      }

      if (v15 >= 1)
      {
        v21 = v14 << 24;
        v22 = v15 + 1;
        do
        {
          v23 = *v17++;
          *v16++ = v21 >= v23 << 24;
          --v22;
        }

        while (v22 > 1);
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

unsigned __int8 *mlx::core::binary_op_dims<signed char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<signed char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<signed char,BOOL,mlx::core::detail::GreaterEqual,2,false>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
        v19 = v18;
        v20 = result;
        v21 = a2;
        v22 = a3;
        do
        {
          *v22 = *v20 << 24 >= *v21 << 24;
          v22 += v17;
          v20 += v15;
          v21 += v16;
          --v19;
        }

        while (v19);
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

unsigned __int8 *mlx::core::binary_op_dims<signed char,BOOL,mlx::core::detail::GreaterEqual,3,false>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,BOOL,mlx::core::detail::GreaterEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::VectorVector<mlx::core::detail::GreaterEqual>::operator()<short,BOOL>(uint64_t a1, _OWORD *a2, _OWORD *a3, int8x16_t *a4, int a5)
{
  if (a5 < 16)
  {
    v10 = a5;
  }

  else
  {
    v5.i64[0] = 0x101010101010101;
    v5.i64[1] = 0x101010101010101;
    do
    {
      v6 = *a2;
      v7 = *(a2 + 1);
      a2 += 2;
      v8 = *a3;
      v9 = *(a3 + 1);
      a3 += 2;
      *a4++ = vandq_s8(vuzp1q_s8(vcgeq_s16(v6, v8), vcgeq_s16(v7, v9)), v5);
      v10 = a5 - 16;
      v11 = a5 > 0x1F;
      a5 -= 16;
    }

    while (v11);
  }

  if (v10 >= 1)
  {
    v12 = v10 + 1;
    do
    {
      v14 = *a2;
      a2 = (a2 + 2);
      v13 = v14;
      v15 = *a3;
      a3 = (a3 + 2);
      a4->i8[0] = v13 << 16 >= v15 << 16;
      a4 = (a4 + 1);
      --v12;
    }

    while (v12 > 1);
  }
}

void mlx::core::binary_op_dispatch_dims<short,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(_OWORD *a1, _OWORD *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>((a1 + 2 * v58), (a2 + 2 * v51), (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6B9708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<short,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(_OWORD *a1, unsigned __int16 *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>((a1 + 2 * v58), &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6B9B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<short,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(unsigned __int16 *a1, _OWORD *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(&a1[v58], (a2 + 2 * v51), (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6B9F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<short,BOOL,false,mlx::core::detail::GreaterEqual>(unsigned __int16 *a1, unsigned __int16 *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,BOOL,mlx::core::detail::GreaterEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,BOOL,mlx::core::detail::GreaterEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 << 16 >= *v13 << 16;
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
          mlx::core::binary_op_dims<short,BOOL,mlx::core::detail::GreaterEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A6BA33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(_OWORD *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    v14 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::GreaterEqual>::operator()<short,BOOL>(&v15, a1, a2, a3, v12);
      a3 = (a3 + v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(_OWORD *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = *(*a7 + 8 * a8);
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(_OWORD *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = *(*a7 + 8 * a8);
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }
}

_OWORD *mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(_OWORD *result, unsigned __int16 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13.i64[0] = 0x101010101010101;
    v13.i64[1] = 0x101010101010101;
    do
    {
      v14 = *a2;
      v15 = v12;
      v16 = a3;
      v17 = result;
      if (v12 >= 16)
      {
        v18 = vdupq_n_s16(v14);
        v17 = result;
        v16 = a3;
        v19 = v12;
        do
        {
          v20 = *v17;
          v21 = *(v17 + 1);
          v17 += 2;
          *v16++ = vandq_s8(vuzp1q_s8(vcgeq_s16(v20, v18), vcgeq_s16(v21, v18)), v13);
          v15 = v19 - 16;
          v22 = v19 > 0x1F;
          v19 -= 16;
        }

        while (v22);
      }

      if (v15 >= 1)
      {
        v23 = v14 << 16;
        v24 = v15 + 1;
        do
        {
          v25 = *v17;
          v17 = (v17 + 2);
          v16->i8[0] = v23 <= v25 << 16;
          v16 = (v16 + 1);
          --v24;
        }

        while (v24 > 1);
      }

      a3 = (a3 + v12);
      result = (result + 2 * v10);
      a2 += v11;
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(_OWORD *result, unsigned __int16 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(_OWORD *result, unsigned __int16 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(unsigned __int16 *result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13.i64[0] = 0x101010101010101;
    v13.i64[1] = 0x101010101010101;
    do
    {
      v14 = *result;
      v15 = v12;
      v16 = a3;
      v17 = a2;
      if (v12 >= 16)
      {
        v18 = vdupq_n_s16(v14);
        v17 = a2;
        v16 = a3;
        v19 = v12;
        do
        {
          v20 = *v17;
          v21 = *(v17 + 1);
          v17 += 2;
          *v16++ = vandq_s8(vuzp1q_s8(vcgeq_s16(v18, v20), vcgeq_s16(v18, v21)), v13);
          v15 = v19 - 16;
          v22 = v19 > 0x1F;
          v19 -= 16;
        }

        while (v22);
      }

      if (v15 >= 1)
      {
        v23 = v14 << 16;
        v24 = v15 + 1;
        do
        {
          v25 = *v17;
          v17 = (v17 + 2);
          v16->i8[0] = v23 >= v25 << 16;
          v16 = (v16 + 1);
          --v24;
        }

        while (v24 > 1);
      }

      a3 = (a3 + v12);
      result += v10;
      a2 = (a2 + 2 * v11);
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(unsigned __int16 *result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(unsigned __int16 *result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<short,BOOL,mlx::core::detail::GreaterEqual,2,false>(unsigned __int16 *result, unsigned __int16 *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = *v20 << 16 >= *v19 << 16;
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

unsigned __int16 *mlx::core::binary_op_dims<short,BOOL,mlx::core::detail::GreaterEqual,3,false>(unsigned __int16 *result, unsigned __int16 *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,BOOL,mlx::core::detail::GreaterEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<int,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(int *a1, int *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6BAFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<int,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(_OWORD *a1, signed int *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>((a1 + 4 * v58), &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6BB3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<int,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(signed int *a1, _OWORD *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(&a1[v58], (a2 + 4 * v51), (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6BB7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<int,BOOL,false,mlx::core::detail::GreaterEqual>(_DWORD *a1, _DWORD *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<int,BOOL,mlx::core::detail::GreaterEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<int,BOOL,mlx::core::detail::GreaterEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 >= *v13;
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
          mlx::core::binary_op_dims<int,BOOL,mlx::core::detail::GreaterEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A6BBBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

int *mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(int *result, int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v13++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_s32(*&result[v17], *&a2[v17]), vcgeq_s32(*&result[v17 + 4], *&a2[v17 + 4]))), 0x101010101010101);
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
          v13->i8[0] = v20 >= v22;
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

int *mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(int *result, int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int *mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(int *result, int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(_OWORD *result, signed int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v15++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_s32(v19, v17), vcgeq_s32(v20, v17))), 0x101010101010101);
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
          v15->i8[0] = v23 >= v13;
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

_OWORD *mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(_OWORD *result, signed int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(_OWORD *result, signed int *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

signed int *mlx::core::binary_op_dims<int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(signed int *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v15++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_s32(v17, v19), vcgeq_s32(v17, v20))), 0x101010101010101);
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
          v15->i8[0] = v13 >= v23;
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

signed int *mlx::core::binary_op_dims<int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(signed int *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

signed int *mlx::core::binary_op_dims<int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(signed int *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<int,BOOL,mlx::core::detail::GreaterEqual,2,false>(_DWORD *result, _DWORD *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = *v20 >= *v19;
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

_DWORD *mlx::core::binary_op_dims<int,BOOL,mlx::core::detail::GreaterEqual,3,false>(_DWORD *result, _DWORD *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,BOOL,mlx::core::detail::GreaterEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<long long,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(uint64_t *a1, uint64_t *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6BC87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<long long,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(_OWORD *a1, int64_t *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>((a1 + 8 * v58), &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6BCC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<long long,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(int64_t *a1, _OWORD *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(&a1[v58], (a2 + 8 * v51), (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6BD08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<long long,BOOL,false,mlx::core::detail::GreaterEqual>(void *a1, void *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::detail::GreaterEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::detail::GreaterEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 >= *v13;
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
          mlx::core::binary_op_dims<long long,BOOL,mlx::core::detail::GreaterEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A6BD4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t *mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(uint64_t *result, uint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v13++ = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_s64(*&result[v17], *&a2[v17]), vcgeq_s64(*&result[v17 + 2], *&a2[v17 + 2]))), 0x1000100010001), 0x1000100010001).u32[0];
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
          *v13 = v20 >= v22;
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

uint64_t *mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(uint64_t *result, uint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(uint64_t *result, uint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(_OWORD *result, int64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v15++ = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_s64(v19, v17), vcgeq_s64(v20, v17))), 0x1000100010001), 0x1000100010001).u32[0];
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
          *v15 = v23 >= v13;
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

_OWORD *mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(_OWORD *result, int64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(_OWORD *result, int64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int64_t *mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(int64_t *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v15++ = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_s64(v17, v19), vcgeq_s64(v17, v20))), 0x1000100010001), 0x1000100010001).u32[0];
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
          *v15 = v13 >= v23;
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

int64_t *mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(int64_t *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int64_t *mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(int64_t *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void *mlx::core::binary_op_dims<long long,BOOL,mlx::core::detail::GreaterEqual,2,false>(void *result, void *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = *v20 >= *v19;
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

void *mlx::core::binary_op_dims<long long,BOOL,mlx::core::detail::GreaterEqual,3,false>(void *result, void *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,BOOL,mlx::core::detail::GreaterEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>>(short float *a1, short float *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::GreaterEqual>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6BE160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>>(float16x8_t *a1, __int16 *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, double a9, int16x4_t a10, void *a11)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
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
          mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::GreaterEqual>,3,true>((a1 + 2 * v62), &a2[v55], (a3 + v21), a6, a7, a8, a11, v16, v19, v20);
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

void sub_25A6BE568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>>(__int16 *a1, float16x8_t *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, double a9, int16x4_t a10, void *a11)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
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
          mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::GreaterEqual>,3,true>(&a1[v62], (a2 + 2 * v55), (a3 + v21), a6, a7, a8, a11, v16, v19, v20);
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