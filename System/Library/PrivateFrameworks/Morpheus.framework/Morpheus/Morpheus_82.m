signed int *mlx::core::binary_op_dims<int,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(signed int *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

signed int *mlx::core::binary_op_dims<int,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(signed int *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<int,BOOL,mlx::core::detail::LessEqual,2,false>(_DWORD *result, _DWORD *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = *v20 <= *v19;
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

_DWORD *mlx::core::binary_op_dims<int,BOOL,mlx::core::detail::LessEqual,3,false>(_DWORD *result, _DWORD *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,BOOL,mlx::core::detail::LessEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<long long,BOOL,true,mlx::core::VectorVector<mlx::core::detail::LessEqual>>(uint64_t *a1, uint64_t *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6F2BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<long long,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::LessEqual>>(_OWORD *a1, int64_t *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>((a1 + 8 * v58), &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6F2FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<long long,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::LessEqual>>(int64_t *a1, _OWORD *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(&a1[v58], (a2 + 8 * v51), (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6F33CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<long long,BOOL,false,mlx::core::detail::LessEqual>(void *a1, void *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::detail::LessEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,BOOL,mlx::core::detail::LessEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 <= *v13;
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
          mlx::core::binary_op_dims<long long,BOOL,mlx::core::detail::LessEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A6F37EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t *mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(uint64_t *result, uint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v13++ = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_s64(*&a2[v17], *&result[v17]), vcgeq_s64(*&a2[v17 + 2], *&result[v17 + 2]))), 0x1000100010001), 0x1000100010001).u32[0];
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
          *v13 = v20 <= v22;
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

uint64_t *mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(uint64_t *result, uint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(uint64_t *result, uint64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(_OWORD *result, int64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v15 = v23 <= v13;
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

_OWORD *mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(_OWORD *result, int64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>(_OWORD *result, int64_t *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int64_t *mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(int64_t *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v15 = v13 <= v23;
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

int64_t *mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(int64_t *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int64_t *mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(int64_t *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void *mlx::core::binary_op_dims<long long,BOOL,mlx::core::detail::LessEqual,2,false>(void *result, void *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = *v20 <= *v19;
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

void *mlx::core::binary_op_dims<long long,BOOL,mlx::core::detail::LessEqual,3,false>(void *result, void *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,BOOL,mlx::core::detail::LessEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::VectorVector<mlx::core::detail::LessEqual>>(short float *a1, short float *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6F44A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::LessEqual>>(float16x8_t *a1, __int16 *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, double a9, int16x4_t a10, void *a11)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
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
          mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>((a1 + 2 * v62), &a2[v55], (a3 + v21), a6, a7, a8, a11, v16, v19, v20);
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

void sub_25A6F48A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::LessEqual>>(__int16 *a1, float16x8_t *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, double a9, int16x4_t a10, void *a11)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
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
          mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(&a1[v62], (a2 + 2 * v55), (a3 + v21), a6, a7, a8, a11, v16, v19, v20);
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

void sub_25A6F4CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,BOOL,false,mlx::core::detail::LessEqual>(short float *a1, short float *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::LessEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::LessEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 <= *v13;
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
          mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::LessEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A6F50D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

short float *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(short float *result, short float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v14++ = vand_s8(vmovn_s16(vcgeq_f16(*&a2[v17], *&result[v17])), 0x101010101010101);
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
          v14->i8[0] = v21 <= v22;
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

short float *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(short float *result, short float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

short float *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(short float *result, short float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float16x8_t *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(float16x8_t *result, __int16 *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
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
          *v16++ = vand_s8(vmovn_s16(vcgeq_f16(v18, v20)), 0x101010101010101);
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
          v16->i8[0] = v23 <= *a10.i16;
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

float16x8_t *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(float16x8_t *result, __int16 *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
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
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

float16x8_t *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>(float16x8_t *result, __int16 *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
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
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(__int16 *result, float16x8_t *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
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
          *v16++ = vand_s8(vmovn_s16(vcgeq_f16(v20, v18)), 0x101010101010101);
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
          v16->i8[0] = *a10.i16 <= v23;
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

__int16 *mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(__int16 *result, float16x8_t *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
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
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(__int16 *result, float16x8_t *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
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
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

short float *mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::LessEqual,2,false>(short float *result, short float *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = *v20 <= *v19;
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

short float *mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::LessEqual,3,false>(short float *result, short float *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::LessEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<float,BOOL,true,mlx::core::VectorVector<mlx::core::detail::LessEqual>>(float *a1, float *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6F5D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::LessEqual>>(_OWORD *a1, _DWORD *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, double a9, double a10, void *a11)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
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
          mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>((a1 + 4 * v62), &a2[v55], (a3 + v21), a6, a7, a8, a11, v16, v19, v20);
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

void sub_25A6F6160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::LessEqual>>(_DWORD *a1, _OWORD *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, double a9, double a10, void *a11)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
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
          mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(&a1[v62], (a2 + 4 * v55), (a3 + v21), a6, a7, a8, a11, v16, v19, v20);
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

void sub_25A6F6568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,BOOL,false,mlx::core::detail::LessEqual>(float *a1, float *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::LessEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::LessEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 <= *v13;
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
          mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::LessEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A6F6988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(float *result, float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v13++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_f32(*&a2[v17], *&result[v17]), vcgeq_f32(*&a2[v17 + 4], *&result[v17 + 4]))), 0x101010101010101);
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
          v13->i8[0] = v21 <= v22;
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

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(float *result, float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(float *result, float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(_OWORD *result, _DWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
          *v16++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_f32(v18, v20), vcgeq_f32(v18, v21))), 0x101010101010101);
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
          v16->i8[0] = v24 <= *&a10;
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

_OWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(_OWORD *result, _DWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>(_OWORD *result, _DWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(_DWORD *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
          *v16++ = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_f32(v20, v18), vcgeq_f32(v21, v18))), 0x101010101010101);
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
          v16->i8[0] = *&a10 <= v24;
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

_DWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(_DWORD *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(_DWORD *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::LessEqual,2,false>(float *result, float *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = *v20 <= *v19;
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

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::LessEqual,3,false>(float *result, float *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::LessEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::VectorVector<mlx::core::detail::LessEqual>>(double *a1, double *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6F7630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::LessEqual>>(_OWORD *a1, double *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>((a1 + 8 * v58), &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6F7A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::LessEqual>>(double *a1, _OWORD *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(&a1[v58], (a2 + 8 * v51), (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A6F7E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,BOOL,false,mlx::core::detail::LessEqual>(double *a1, double *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::LessEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::LessEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 <= *v13;
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
          mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::LessEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A6F8260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(double *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v13++ = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_f64(*&a2[v17], *&result[v17]), vcgeq_f64(*&a2[v17 + 2], *&result[v17 + 2]))), 0x1000100010001), 0x1000100010001).u32[0];
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
          *v13 = v21 <= v22;
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

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(double *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(double *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(_OWORD *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v15++ = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_f64(v17, v19), vcgeq_f64(v17, v20))), 0x1000100010001), 0x1000100010001).u32[0];
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
          *v15 = v23 <= *&v13;
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

_OWORD *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(_OWORD *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>(_OWORD *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(double *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v15++ = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgeq_f64(v19, v17), vcgeq_f64(v20, v17))), 0x1000100010001), 0x1000100010001).u32[0];
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
          *v15 = *&v13 <= v23;
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

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(double *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(double *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::LessEqual,2,false>(double *result, double *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = *v20 <= *v19;
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

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::LessEqual,3,false>(double *result, double *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::LessEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::VectorVector<mlx::core::detail::LessEqual>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(a1 + 2 * v58, a2 + 2 * v51, a3 + v17, a6, a7, a8, a9, v14);
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

void sub_25A6F8F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::LessEqual>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>(a1 + 2 * v58, &a2[v51], a3 + v17, a6, a7, a8, a9, v14);
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

void sub_25A6F931C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::LessEqual>>(unsigned __int16 *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(&a1[v58], a2 + 2 * v51, a3 + v17, a6, a7, a8, a9, v14);
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

void sub_25A6F9724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,false,mlx::core::detail::LessEqual>(unsigned __int16 *a1, unsigned __int16 *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::LessEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::LessEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = COERCE_FLOAT(*v14 << 16) <= COERCE_FLOAT(*v13 << 16);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::LessEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A6F9B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *(a3 + v13) = COERCE_FLOAT(*(result + 2 * v13) << 16) <= COERCE_FLOAT(*(a2 + 2 * v13) << 16);
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

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *(a3 + v13) = COERCE_FLOAT(*(result + 2 * v13) << 16) <= v14;
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

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(unsigned __int16 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *(a3 + v13) = v14 <= COERCE_FLOAT(*(a2 + 2 * v13) << 16);
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

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(unsigned __int16 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(unsigned __int16 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::LessEqual,2,false>(unsigned __int16 *result, unsigned __int16 *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = COERCE_FLOAT(*v21 << 16) <= COERCE_FLOAT(*v20 << 16);
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

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::LessEqual,3,false>(unsigned __int16 *result, unsigned __int16 *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::LessEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::VectorVector<mlx::core::detail::LessEqual>>(uint64_t a1, uint64_t a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(a1 + 8 * v58, a2 + 8 * v51, &a3[v17], a6, a7, a8, a9, v14);
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

void sub_25A6FA754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::LessEqual>>(float *a1, float *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>(&a1[2 * v58], &a2[2 * v51], &a3[v17], a6, a7, a8, a9, v14);
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

void sub_25A6FAB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::LessEqual>>(float *a1, float *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(&a1[2 * v58], &a2[2 * v51], &a3[v17], a6, a7, a8, a9, v14);
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

void sub_25A6FAF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,false,mlx::core::detail::LessEqual>(uint64_t a1, uint64_t a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::LessEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::LessEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::LessEqual,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::LessEqual,3,false>(a1 + 8 * v58, a2 + 8 * v51, &a3[v17], a6, a7, a8, a9, v14);
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

void sub_25A6FB36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v18 = v17 > v16 || v17 == v16 && *(a2 + v13 + 4) >= *(result + v13 + 4);
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

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,3,true>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::LessEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v18 = v13 > *v16 || v13 == *v16 && v14 >= v16[1];
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

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,3,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::LessEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v18 = *v16 > v13 || *v16 == v13 && v16[1] >= v14;
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

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,3,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::LessEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::LessEqual,1,false>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      v16 = v15 > v14 || v15 == v14 && *v12 >= *v10;
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

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::LessEqual,2,false>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::LessEqual,1,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::LessEqual,3,false>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::LessEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::LessEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LessEqual,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::LessEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LessEqual,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C02098;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::LessEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LessEqual,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::LessEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LessEqual,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C02098;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::LessEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LessEqual,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::LessEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LessEqual,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286C02098;
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

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::LessEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LessEqual,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::LessEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LessEqual,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::LessEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LessEqual,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::LessEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LessEqual,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::LessEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LessEqual,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::LessEqual>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LessEqual,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112binary_floatINS3_6detail9LogAddExpEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286C02190;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112binary_floatINS3_6detail9LogAddExpEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286C02190;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112binary_floatINS3_6detail9LogAddExpEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C02190;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112binary_floatINS3_6detail9LogAddExpEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112binary_floatINS3_6detail9LogAddExpEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112binary_floatINS3_6detail9LogAddExpEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEEclEv(uint64_t a1, __n128 a2, __n128 a3)
{
  v4 = mlx::core::scheduler::scheduler(v3);

  mlx::core::scheduler::Scheduler::notify_task_completion(v4);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112binary_floatINS3_6detail9LogAddExpEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::binary_float<mlx::core::detail::LogAddExp>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogAddExp,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1, __n128 a2, __n128 a3)
{
  v3 = (a1 + 32);
  v4 = *(*(a1 + 32) + 56);
  if (v4 <= 10)
  {
    if (v4 == 9)
    {
      v9 = *(a1 + 48);

      mlx::core::binary_op<half,half,mlx::core::detail::LogAddExp>(a1, (a1 + 16), v3, v9, a2, a3);
    }

    else
    {
      if (v4 != 10)
      {
        goto LABEL_22;
      }

      v6 = *(a1 + 48);

      mlx::core::binary_op<float,float,mlx::core::detail::LogAddExp>(a1, (a1 + 16), v3, v6, a2.n128_u64[0]);
    }
  }

  else
  {
    switch(v4)
    {
      case 11:
        v7 = *(a1 + 48);

        mlx::core::binary_op<double,double,mlx::core::detail::LogAddExp>(a1, (a1 + 16), v3, v7);
        break;
      case 12:
        v8 = *(a1 + 48);

        mlx::core::binary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogAddExp>(a1, (a1 + 16), v3, v8);
        break;
      case 13:
        v5 = *(a1 + 48);

        mlx::core::binary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogAddExp>(a1, (a1 + 16), v3, v5);
        return;
      default:
LABEL_22:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[binary_float] Only supports floating point types.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void mlx::core::binary_op<half,half,mlx::core::detail::LogAddExp>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, __n128 a5, __n128 a6)
{
  v58 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v11 = *(*a1 + 152);
  v12 = *(*a2 + 152);
  v13 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      mlx::core::VectorScalar<mlx::core::detail::LogAddExp>::operator()<half,half>(a5, v54, v11, v12, v13, *(v10 + 160));
      goto LABEL_62;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::LogAddExp>::operator()<half,half>(a5, a6, v54, v11, v12, v13, *(v10 + 48));
      goto LABEL_62;
    }
  }

  else
  {
    if (!a4)
    {
      a5.n128_u16[0] = v11->i16[0];
      a6.n128_u16[0] = v12->i16[0];
      mlx::core::detail::LogAddExp::operator()<1,half>(a5, a6);
      v13->n128_u16[0] = v29;
      goto LABEL_62;
    }

    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::LogAddExp>::operator()<half,half>(a5, a6, v54, v11, v12, v13, *(*a2 + 160));
      goto LABEL_62;
    }
  }

  memset(v54, 0, sizeof(v54));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v54, *(v10 + 24), *(v10 + 32), (*(v10 + 32) - *(v10 + 24)) >> 3);
  v14 = *a2;
  memset(v55, 0, sizeof(v55));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v55, *(v14 + 24), *(v14 + 32), (*(v14 + 32) - *(v14 + 24)) >> 3);
  v15 = *a3;
  v57[0] = 0;
  v57[1] = 0;
  v56 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v56, *(v15 + 24), *(v15 + 32), (*(v15 + 32) - *(v15 + 24)) >> 3);
  memset(v49, 0, sizeof(v49));
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v49, v54, &v58, 3uLL);
  mlx::core::collapse_contiguous_dims(v10, v49, 0x7FFFFFFFuLL, &__p);
  v53 = v49;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v53);
  for (i = 0; i != -9; i -= 3)
  {
    v19 = v57[i - 1];
    if (v19)
    {
      v57[i] = v19;
      operator delete(v19);
    }
  }

  v20 = v52 + 6;
  v21 = *v52;
  v22 = (v52[1] - *v52) >> 3;
  v23 = v22 - 1;
  if (v22 - 1 >= -1)
  {
    v23 = -1;
  }

  v24 = v23 + 1;
  v25 = v22 + 1;
  v26 = v22 - 1;
  v27 = v22 - 1;
  while ((v27 & 0x80000000) == 0)
  {
    v28 = 8 * (v27 & 0x7FFFFFFF);
    --v25;
    --v27;
    if (*(v21 + v28) != *(*v20 + v28))
    {
      goto LABEL_21;
    }
  }

  v25 = v24;
LABEL_21:
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
    if (*(v30 + v37) != *(*v20 + v37))
    {
      goto LABEL_28;
    }
  }

  v34 = v33;
LABEL_28:
  v38 = v22 + 1;
  while ((v26 & 0x80000000) == 0)
  {
    v39 = *(v21 + 8 * (v26 & 0x7FFFFFFF));
    --v38;
    --v26;
    if (v39)
    {
      goto LABEL_33;
    }
  }

  v38 = v24;
LABEL_33:
  v40 = v31 + 1;
  while ((v35 & 0x80000000) == 0)
  {
    v41 = *(v30 + 8 * (v35 & 0x7FFFFFFF));
    --v40;
    --v35;
    if (v41)
    {
      goto LABEL_38;
    }
  }

  v40 = v33;
LABEL_38:
  v42 = (v51 - __p) >> 2;
  if (v25 <= v34)
  {
    v43 = v34;
  }

  else
  {
    v43 = v25;
  }

  if (v25 <= v40)
  {
    v25 = v40;
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

  if (v42 > v25)
  {
    v45 = 2;
  }

  else
  {
    v25 = v34;
    v45 = v44;
  }

  if (v42 <= v43)
  {
    v46 = v25;
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

  if (!v46 || *(*v20 + 8 * v46 - 8) < 16)
  {
    goto LABEL_59;
  }

  switch(v47)
  {
    case 1:
      mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>>(v11, v12, v13, v46, *(*a1 + 48), &__p, v52, v52 + 3, v16, v17, v52 + 6);
      break;
    case 2:
      mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>>(v11, v12, v13, v46, *(*a1 + 48), &__p, v52, v52 + 3, v16, v52 + 6);
      break;
    case 3:
      mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorVector<mlx::core::detail::LogAddExp>>(v11, v12, v13, v46, *(*a1 + 48), &__p, v52, v52 + 3, v16, v17, v52 + 6);
      break;
    default:
      LODWORD(v42) = v46;
LABEL_59:
      mlx::core::binary_op_dispatch_dims<half,half,false,mlx::core::detail::LogAddExp>(v11, v12, v13, v42, *(*a1 + 48), &__p, v52, v52 + 3, v16, v17, v52 + 6);
      break;
  }

  v54[0] = &v52;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v54);
  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

LABEL_62:
  v48 = *MEMORY[0x277D85DE8];
}

void sub_25A6FC7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::LogAddExp>::operator()<half,half>(__n128 a1, __n128 a2, uint64_t a3, unsigned __int16 *a4, float16x8_t *a5, _OWORD *a6, int a7)
{
  v7 = a7;
  a1.n128_u16[0] = *a4;
  v19 = a1;
  if (a7 < 8)
  {
    v12 = a7;
  }

  else
  {
    v18 = vdupq_lane_s16(a1.n128_u64[0], 0);
    do
    {
      v10 = *a5++;
      *&v11 = mlx::core::detail::LogAddExp::operator()<8,half>(v18, v10);
      *a6++ = v11;
      v12 = v7 - 8;
      v13 = v7 >= 0xF;
      v14 = v7 == 15;
      v7 -= 8;
    }

    while (!v14 && v13);
  }

  if (v12 >= 1)
  {
    v15 = v12 + 1;
    do
    {
      v16 = a5->i16[0];
      a5 = (a5 + 2);
      a2.n128_u16[0] = v16;
      mlx::core::detail::LogAddExp::operator()<1,half>(v19, a2);
      *a6 = v17;
      a6 = (a6 + 2);
      --v15;
    }

    while (v15 > 1);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::LogAddExp>::operator()<half,half>(__n128 a1, uint64_t a2, float16x8_t *a3, unsigned __int16 *a4, __n128 *a5, int a6)
{
  v6 = a6;
  a1.n128_u16[0] = *a4;
  v16 = a1;
  if (a6 < 8)
  {
    v10 = a6;
  }

  else
  {
    v15 = vdupq_lane_s16(a1.n128_u64[0], 0);
    do
    {
      v9 = *a3++;
      a1.n128_f64[0] = mlx::core::detail::LogAddExp::operator()<8,half>(v9, v15);
      *a5++ = a1;
      v10 = v6 - 8;
      v11 = v6 >= 0xF;
      v12 = v6 == 15;
      v6 -= 8;
    }

    while (!v12 && v11);
  }

  if (v10 >= 1)
  {
    v13 = v10 + 1;
    do
    {
      v14 = a3->i16[0];
      a3 = (a3 + 2);
      a1.n128_u16[0] = v14;
      mlx::core::detail::LogAddExp::operator()<1,half>(a1, v16);
      a5->n128_u16[0] = a1.n128_u16[0];
      a5 = (a5 + 2);
      --v13;
    }

    while (v13 > 1);
  }
}

void mlx::core::VectorVector<mlx::core::detail::LogAddExp>::operator()<half,half>(__n128 a1, __n128 a2, uint64_t a3, float16x8_t *a4, float16x8_t *a5, __n128 *a6, int a7)
{
  v7 = a7;
  if (a7 < 8)
  {
    v14 = a7;
  }

  else
  {
    do
    {
      v11 = *a4++;
      v12 = v11;
      v13 = *a5++;
      a1.n128_f64[0] = mlx::core::detail::LogAddExp::operator()<8,half>(v12, v13);
      *a6++ = a1;
      v14 = v7 - 8;
      v15 = v7 > 0xF;
      v7 -= 8;
    }

    while (v15);
  }

  if (v14 >= 1)
  {
    v16 = v14 + 1;
    do
    {
      v17 = a4->i16[0];
      a4 = (a4 + 2);
      a1.n128_u16[0] = v17;
      v18 = a5->i16[0];
      a5 = (a5 + 2);
      a2.n128_u16[0] = v18;
      mlx::core::detail::LogAddExp::operator()<1,half>(a1, a2);
      a6->n128_u16[0] = a1.n128_u16[0];
      a6 = (a6 + 2);
      --v16;
    }

    while (v16 > 1);
  }
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorVector<mlx::core::detail::LogAddExp>>(float16x8_t *a1, float16x8_t *a2, __n128 *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, __n128 a9, __n128 a10, void *a11)
{
  v17 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v64, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v57, a6, a8, v17);
      if (a5 >= 1)
      {
        v22 = a5;
        v23 = 0;
        v56 = *(*a11 + 8 * a4 - 32);
        v24 = v22;
        do
        {
          mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,3,true>((a1 + 2 * v64), (a2 + 2 * v57), (a3 + 2 * v23), a6, a7, a8, a11, v17, v20, v21);
          v25 = v66 - v65;
          v26 = (v66 - v65) >> 2;
          if (v26)
          {
            v27 = v69;
            v28 = ((v25 << 30) - 0x100000000) >> 32;
            v29 = v69 + 4 * v28;
            v30 = *v29;
            v31 = v65 + 4 * v28;
            v32 = v67;
            v33 = v64;
            if (v26 >= 2 && v30 == *v31 - 1)
            {
              v36 = (v25 >> 2) & 0x7FFFFFFF;
              v35 = v36 - 1;
              v37 = 4 * v36;
              v38 = v65 - 8;
              do
              {
                v39 = v35;
                *v29 = 0;
                v33 -= v32[v28] * (*v31 - 1);
                v64 = v33;
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
            v64 = v32[v35] + v33;
          }

          v41 = v59 - v58;
          v42 = (v59 - v58) >> 2;
          if (v42)
          {
            v43 = __p;
            v44 = ((v41 << 30) - 0x100000000) >> 32;
            v45 = __p + 4 * v44;
            v46 = *v45;
            v47 = v60;
            v48 = v57;
            if (v42 >= 2 && (v49 = v58 + 4 * v44, v46 == *v49 - 1))
            {
              v50 = (v41 >> 2) & 0x7FFFFFFF;
              v51 = v50 - 1;
              v52 = 4 * v50;
              v53 = v58 - 8;
              do
              {
                v54 = v51;
                *v45 = 0;
                v48 -= v47[v44] * (*v49 - 1);
                v57 = v48;
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
            v57 = v47[v51] + v48;
          }

          v23 += v56;
        }

        while (v23 < v24);
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

void sub_25A6FCE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>>(float16x8_t *a1, unsigned __int16 *a2, __n128 *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, __n128 a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,3,true>((a1 + 2 * v62), &a2[v55], (a3 + 2 * v21), a6, a7, a8, a10, v16, v19);
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

void sub_25A6FD270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>>(unsigned __int16 *a1, float16x8_t *a2, _OWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, __n128 a9, __n128 a10, void *a11)
{
  v17 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v64, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v57, a6, a8, v17);
      if (a5 >= 1)
      {
        v22 = a5;
        v23 = 0;
        v56 = *(*a11 + 8 * a4 - 32);
        v24 = v22;
        do
        {
          mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,3,true>(&a1[v64], (a2 + 2 * v57), (a3 + 2 * v23), a6, a7, a8, a11, v17, v20, v21);
          v25 = v66 - v65;
          v26 = (v66 - v65) >> 2;
          if (v26)
          {
            v27 = v69;
            v28 = ((v25 << 30) - 0x100000000) >> 32;
            v29 = v69 + 4 * v28;
            v30 = *v29;
            v31 = v65 + 4 * v28;
            v32 = v67;
            v33 = v64;
            if (v26 >= 2 && v30 == *v31 - 1)
            {
              v36 = (v25 >> 2) & 0x7FFFFFFF;
              v35 = v36 - 1;
              v37 = 4 * v36;
              v38 = v65 - 8;
              do
              {
                v39 = v35;
                *v29 = 0;
                v33 -= v32[v28] * (*v31 - 1);
                v64 = v33;
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
            v64 = v32[v35] + v33;
          }

          v41 = v59 - v58;
          v42 = (v59 - v58) >> 2;
          if (v42)
          {
            v43 = __p;
            v44 = ((v41 << 30) - 0x100000000) >> 32;
            v45 = __p + 4 * v44;
            v46 = *v45;
            v47 = v60;
            v48 = v57;
            if (v42 >= 2 && (v49 = v58 + 4 * v44, v46 == *v49 - 1))
            {
              v50 = (v41 >> 2) & 0x7FFFFFFF;
              v51 = v50 - 1;
              v52 = 4 * v50;
              v53 = v58 - 8;
              do
              {
                v54 = v51;
                *v45 = 0;
                v48 -= v47[v44] * (*v49 - 1);
                v57 = v48;
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
            v57 = v47[v51] + v48;
          }

          v23 += v56;
        }

        while (v23 < v24);
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

void sub_25A6FD688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,false,mlx::core::detail::LogAddExp>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, __n128 a9, __n128 a10, void *a11)
{
  v17 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::detail::LogAddExp,3,false>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::detail::LogAddExp,2,false>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::detail::LogAddExp,1,false>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v64, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v57, a6, a8, v17);
      if (a5 >= 1)
      {
        v22 = a5;
        v23 = 0;
        v56 = *(*a11 + 8 * a4 - 32);
        v24 = v22;
        do
        {
          mlx::core::binary_op_dims<half,half,mlx::core::detail::LogAddExp,3,false>(&a1[v64], &a2[v57], &a3[v23], a6, a7, a8, a11, v17, v20, v21);
          v25 = v66 - v65;
          v26 = (v66 - v65) >> 2;
          if (v26)
          {
            v27 = v69;
            v28 = ((v25 << 30) - 0x100000000) >> 32;
            v29 = v69 + 4 * v28;
            v30 = *v29;
            v31 = v65 + 4 * v28;
            v32 = v67;
            v33 = v64;
            if (v26 >= 2 && v30 == *v31 - 1)
            {
              v36 = (v25 >> 2) & 0x7FFFFFFF;
              v35 = v36 - 1;
              v37 = 4 * v36;
              v38 = v65 - 8;
              do
              {
                v39 = v35;
                *v29 = 0;
                v33 -= v32[v28] * (*v31 - 1);
                v64 = v33;
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
            v64 = v32[v35] + v33;
          }

          v41 = v59 - v58;
          v42 = (v59 - v58) >> 2;
          if (v42)
          {
            v43 = __p;
            v44 = ((v41 << 30) - 0x100000000) >> 32;
            v45 = __p + 4 * v44;
            v46 = *v45;
            v47 = v60;
            v48 = v57;
            if (v42 >= 2 && (v49 = v58 + 4 * v44, v46 == *v49 - 1))
            {
              v50 = (v41 >> 2) & 0x7FFFFFFF;
              v51 = v50 - 1;
              v52 = 4 * v50;
              v53 = v58 - 8;
              do
              {
                v54 = v51;
                *v45 = 0;
                v48 -= v47[v44] * (*v49 - 1);
                v57 = v48;
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
            v57 = v47[v51] + v48;
          }

          v23 += v56;
        }

        while (v23 < v24);
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

void sub_25A6FDAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

double mlx::core::detail::LogAddExp::operator()<8,half>(float16x8_t a1, float16x8_t a2)
{
  v35 = vmaxnmq_f16(a1, a2);
  v2 = vminnmq_f16(a1, a2);
  v3.i64[0] = 0xFC00FC00FC00FC00;
  v3.i64[1] = 0xFC00FC00FC00FC00;
  v4 = vceqq_f16(v2, v3);
  v3.i64[0] = 0x7C007C007C007C00;
  v3.i64[1] = 0x7C007C007C007C00;
  v36 = vorrq_s8(v4, vceqq_f16(v35, v3));
  v5 = vsubq_f16(v2, v35);
  v6 = vdupq_n_s32(0x3FB8AA3Bu);
  v7 = vmulq_f32(vcvt_hight_f32_f16(v5), v6);
  v8 = vmulq_f32(vcvtq_f32_f16(*v5.i8), v6);
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  v9 = vaddq_f32(v8, v6);
  v10 = vrndmq_f32(vaddq_f32(v7, v6));
  v11 = vrndmq_f32(v9);
  v12 = vsubq_f32(v8, v11);
  v13 = vdupq_n_s32(0x3920FDDEu);
  v14 = vsubq_f32(v7, v10);
  v15 = vdupq_n_s32(0x3AAF9F29u);
  v16 = vmlaq_f32(v15, v13, v14);
  v17 = vmlaq_f32(v15, v13, v12);
  v18 = vdupq_n_s32(0x3C1D96A6u);
  v19 = vmlaq_f32(v18, v12, v17);
  v20 = vdupq_n_s32(0x3D635774u);
  v21 = vmlaq_f32(v20, v14, vmlaq_f32(v18, v14, v16));
  v22 = vdupq_n_s32(0x3E75FDEEu);
  v23 = vmlaq_f32(v22, v12, vmlaq_f32(v20, v12, v19));
  v24 = vdupq_n_s32(0x3F317218u);
  v25 = vmlaq_f32(v24, v14, vmlaq_f32(v22, v14, v21));
  __asm { FMOV            V6.4S, #1.0 }

  v31 = vbicq_s8(vbslq_s8(vcgtq_f16(v5, vdupq_n_s16(0x5580u)), v3, vbslq_s8(vceqq_f16(v5, v5), vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(vmlaq_f32(_Q6, v12, vmlaq_f32(v24, v12, v23)), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v11), 0x17uLL), _Q6))), vmulq_f32(vmlaq_f32(_Q6, v14, v25), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v10), 0x17uLL), _Q6))), v5)), vcgtq_f16(vdupq_n_s16(0xD580u), v5));
  x = vcvt_hight_f32_f16(v31);
  v33 = _simd_log1p_f4(vcvtq_f32_f16(*v31.i8));
  *&result = vbslq_s8(v36, v35, vaddq_f16(v35, vcvt_hight_f16_f32(vcvt_f16_f32(v33), _simd_log1p_f4(x)))).u64[0];
  return result;
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,1,true>(float16x8_t *a1, float16x8_t *a2, __n128 *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v14 = *(*a7 + 8 * a8);
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::LogAddExp>::operator()<half,half>(a9, a10, &v17, a1, a2, a3, v14);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + 2 * v14);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,2,true>(float16x8_t *a1, float16x8_t *a2, __n128 *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v17 = 2 * *(*a5 + 8 * a8);
    v18 = 2 * *(*a6 + 8 * a8);
    v19 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a1 = (a1 + v17);
      a2 = (a2 + v18);
      a3 = (a3 + v19);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,3,true>(float16x8_t *a1, float16x8_t *a2, __n128 *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v17 = 2 * *(*a5 + 8 * a8);
    v18 = 2 * *(*a6 + 8 * a8);
    v19 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a1 = (a1 + v17);
      a2 = (a2 + v18);
      a3 = (a3 + v19);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,1,true>(float16x8_t *a1, unsigned __int16 *a2, __n128 *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v13 = *(*a7 + 8 * a8);
    v14 = 2 * *(*a5 + 8 * a8);
    v15 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::LogAddExp>::operator()<half,half>(a9, &v16, a1, a2, a3, v13);
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + 2 * v13);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,2,true>(float16x8_t *a1, unsigned __int16 *a2, __n128 *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    v18 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,3,true>(float16x8_t *a1, unsigned __int16 *a2, __n128 *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    v18 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,1,true>(unsigned __int16 *a1, float16x8_t *a2, _OWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v14 = *(*a7 + 8 * a8);
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::LogAddExp>::operator()<half,half>(a9, a10, &v17, a1, a2, a3, v14);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + 2 * v14);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,2,true>(unsigned __int16 *a1, float16x8_t *a2, _OWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v17 = 2 * *(*a5 + 8 * a8);
    v18 = 2 * *(*a6 + 8 * a8);
    v19 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a1 = (a1 + v17);
      a2 = (a2 + v18);
      a3 = (a3 + v19);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,3,true>(unsigned __int16 *a1, float16x8_t *a2, _OWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v17 = 2 * *(*a5 + 8 * a8);
    v18 = 2 * *(*a6 + 8 * a8);
    v19 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a1 = (a1 + v17);
      a2 = (a2 + v18);
      a3 = (a3 + v19);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::detail::LogAddExp,1,false>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v14 = 2 * *(*a5 + 8 * a8);
    v15 = 2 * *(*a6 + 8 * a8);
    v16 = 2 * *(*a7 + 8 * a8);
    do
    {
      a9.n128_u16[0] = *a1;
      a10.n128_u16[0] = *a2;
      mlx::core::detail::LogAddExp::operator()<1,half>(a9, a10);
      *a3 = a9.n128_u16[0];
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + v16);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::detail::LogAddExp,2,false>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v17 = 2 * *(*a5 + 8 * a8);
    v18 = 2 * *(*a6 + 8 * a8);
    v19 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::detail::LogAddExp,1,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a1 = (a1 + v17);
      a2 = (a2 + v18);
      a3 = (a3 + v19);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::detail::LogAddExp,3,false>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v17 = 2 * *(*a5 + 8 * a8);
    v18 = 2 * *(*a6 + 8 * a8);
    v19 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::detail::LogAddExp,2,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a1 = (a1 + v17);
      a2 = (a2 + v18);
      a3 = (a3 + v19);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op<float,float,mlx::core::detail::LogAddExp>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int32x2_t a5)
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
      mlx::core::VectorScalar<mlx::core::detail::LogAddExp>::operator()<float,float>(a5, v52, v10, v11, v12, *(v9 + 160));
      goto LABEL_62;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::LogAddExp>::operator()<float,float>(v52, v10, v11, v12, *(v9 + 48));
      goto LABEL_62;
    }
  }

  else
  {
    if (!a4)
    {
      mlx::core::detail::LogAddExp::operator()<1,float>(*v10, *v11);
      v12->i32[0] = v27;
      goto LABEL_62;
    }

    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::LogAddExp>::operator()<float,float>(a5, v52, v10, v11, v12, *(*a2 + 160));
      goto LABEL_62;
    }
  }

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
      goto LABEL_21;
    }
  }

  v23 = v22;
LABEL_21:
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
      goto LABEL_28;
    }
  }

  v32 = v31;
LABEL_28:
  v36 = v20 + 1;
  while ((v24 & 0x80000000) == 0)
  {
    v37 = *(v19 + 8 * (v24 & 0x7FFFFFFF));
    --v36;
    --v24;
    if (v37)
    {
      goto LABEL_33;
    }
  }

  v36 = v22;
LABEL_33:
  v38 = v29 + 1;
  while ((v33 & 0x80000000) == 0)
  {
    v39 = *(v28 + 8 * (v33 & 0x7FFFFFFF));
    --v38;
    --v33;
    if (v39)
    {
      goto LABEL_38;
    }
  }

  v38 = v31;
LABEL_38:
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
    goto LABEL_59;
  }

  switch(v45)
  {
    case 1:
      mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>>(v10, v11, v12, v44, *(*a1 + 48), &__p, v50, v50 + 3, v15, v50 + 6);
      break;
    case 2:
      mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>>(v10, v11, v12, v44, *(*a1 + 48), &__p, v50, v50 + 3, v15, v50 + 6);
      break;
    case 3:
      mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorVector<mlx::core::detail::LogAddExp>>(v10, v11, v12, v44, *(*a1 + 48), &__p, v50, v50 + 3, v50 + 6);
      break;
    default:
      LODWORD(v40) = v44;
LABEL_59:
      mlx::core::binary_op_dispatch_dims<float,float,false,mlx::core::detail::LogAddExp>(v10, v11, v12, v40, *(*a1 + 48), &__p, v50, v50 + 3, v50 + 6);
      break;
  }

  v52[0] = &v50;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v52);
  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

LABEL_62:
  v46 = *MEMORY[0x277D85DE8];
}

void sub_25A6FE998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::LogAddExp>::operator()<float,float>(int32x2_t a1, uint64_t a2, float *a3, _OWORD *a4, int8x16_t *a5, int a6)
{
  v6 = a6;
  v18 = *a3;
  if (a6 < 8)
  {
    v12 = a6;
  }

  else
  {
    a1.i32[0] = *a3;
    v17 = vdupq_lane_s32(a1, 0);
    do
    {
      v20[1] = v17;
      v20[0] = v17;
      v9 = *a4;
      v10 = *(a4 + 1);
      a4 += 2;
      v19[0] = v9;
      v19[1] = v10;
      mlx::core::detail::LogAddExp::operator()<8,float>(v20, v19, v21);
      v11 = v21[1];
      *a5 = v21[0];
      a5[1] = v11;
      a5 += 2;
      v12 = v6 - 8;
      v13 = v6 > 0xF;
      v6 -= 8;
    }

    while (v13);
  }

  if (v12 >= 1)
  {
    v14 = v12 + 1;
    do
    {
      v15 = *a4;
      a4 = (a4 + 4);
      mlx::core::detail::LogAddExp::operator()<1,float>(v18, v15);
      a5->i32[0] = v16;
      a5 = (a5 + 4);
      --v14;
    }

    while (v14 > 1);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::LogAddExp>::operator()<float,float>(int32x2_t a1, uint64_t a2, _OWORD *a3, float *a4, int8x16_t *a5, int a6)
{
  v6 = a6;
  v18 = *a4;
  if (a6 < 8)
  {
    v12 = a6;
  }

  else
  {
    a1.i32[0] = *a4;
    v17 = vdupq_lane_s32(a1, 0);
    do
    {
      v9 = *a3;
      v10 = *(a3 + 1);
      a3 += 2;
      v20[0] = v9;
      v20[1] = v10;
      v19[0] = v17;
      v19[1] = v17;
      mlx::core::detail::LogAddExp::operator()<8,float>(v20, v19, v21);
      v11 = v21[1];
      *a5 = v21[0];
      a5[1] = v11;
      a5 += 2;
      v12 = v6 - 8;
      v13 = v6 > 0xF;
      v6 -= 8;
    }

    while (v13);
  }

  if (v12 >= 1)
  {
    v14 = v12 + 1;
    do
    {
      v15 = *a3;
      a3 = (a3 + 4);
      mlx::core::detail::LogAddExp::operator()<1,float>(v15, v18);
      a5->i32[0] = v16;
      a5 = (a5 + 4);
      --v14;
    }

    while (v14 > 1);
  }
}

void mlx::core::VectorVector<mlx::core::detail::LogAddExp>::operator()<float,float>(uint64_t a1, _OWORD *a2, _OWORD *a3, int8x16_t *a4, int a5)
{
  v5 = a5;
  if (a5 < 8)
  {
    v14 = a5;
  }

  else
  {
    do
    {
      v9 = *a2;
      v10 = *(a2 + 1);
      a2 += 2;
      v22[0] = v9;
      v22[1] = v10;
      v11 = *a3;
      v12 = *(a3 + 1);
      a3 += 2;
      v21[0] = v11;
      v21[1] = v12;
      mlx::core::detail::LogAddExp::operator()<8,float>(v22, v21, v23);
      v13 = v23[1];
      *a4 = v23[0];
      a4[1] = v13;
      a4 += 2;
      v14 = v5 - 8;
      v15 = v5 > 0xF;
      v5 -= 8;
    }

    while (v15);
  }

  if (v14 >= 1)
  {
    v16 = v14 + 1;
    do
    {
      v17 = *a2;
      a2 = (a2 + 4);
      v18 = v17;
      v19 = *a3;
      a3 = (a3 + 4);
      mlx::core::detail::LogAddExp::operator()<1,float>(v18, v19);
      a4->i32[0] = v20;
      a4 = (a4 + 4);
      --v16;
    }

    while (v16 > 1);
  }
}

void mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorVector<mlx::core::detail::LogAddExp>>(_OWORD *a1, _OWORD *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,3,true>((a1 + 4 * v60), (a2 + 4 * v53), (a3 + 4 * v19), a6, a7, a8, a9, v15);
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

void sub_25A6FF054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>>(_OWORD *a1, float *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int32x2_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,3,true>((a1 + 4 * v62), &a2[v55], (a3 + 4 * v21), a6, a7, a8, a10, v16, v19);
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

void sub_25A6FF46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>>(float *a1, _OWORD *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int32x2_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,3,true>(&a1[v62], (a2 + 4 * v55), (a3 + 4 * v21), a6, a7, a8, a10, v16, v19);
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

void sub_25A6FF884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,float,false,mlx::core::detail::LogAddExp>(float *a1, float *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::detail::LogAddExp,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::detail::LogAddExp,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::detail::LogAddExp,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<float,float,mlx::core::detail::LogAddExp,3,false>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A6FFC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

int8x16_t mlx::core::detail::LogAddExp::operator()<8,float>@<Q0>(float32x4_t *a1@<X1>, float32x4_t *a2@<X2>, int8x16_t *a3@<X8>)
{
  v4 = a1[1];
  v5 = a2[1];
  v48 = vmaxnmq_f32(*a1, *a2);
  v49 = vmaxnmq_f32(v4, v5);
  v6 = vminnmq_f32(*a1, *a2);
  v7 = vminnmq_f32(v4, v5);
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  v8 = vceqq_f32(v7, v4);
  v9 = vceqq_f32(v6, v4);
  v10 = vnegq_f32(v4);
  v50 = vorrq_s8(v8, vceqq_f32(v49, v10));
  v51 = vorrq_s8(v9, vceqq_f32(v48, v10));
  v11 = vsubq_f32(v7, v49);
  v12 = vsubq_f32(v6, v48);
  v13 = vdupq_n_s32(0x3FB8AA3Bu);
  v14 = vmulq_f32(v12, v13);
  v15 = vmulq_f32(v11, v13);
  v16.i64[0] = 0x3F0000003F000000;
  v16.i64[1] = 0x3F0000003F000000;
  v17 = vaddq_f32(v15, v16);
  v18 = vrndmq_f32(vaddq_f32(v14, v16));
  v19 = vrndmq_f32(v17);
  v20 = vsubq_f32(v15, v19);
  v21 = vsubq_f32(v14, v18);
  v22 = vdupq_n_s32(0x3920FDDEu);
  v23 = vdupq_n_s32(0x3AAF9F29u);
  v24 = vmlaq_f32(v23, v22, v21);
  v25 = vmlaq_f32(v23, v22, v20);
  v26 = vdupq_n_s32(0x3C1D96A6u);
  v27 = vmlaq_f32(v26, v20, v25);
  v28 = vdupq_n_s32(0x3D635774u);
  v29 = vmlaq_f32(v28, v21, vmlaq_f32(v26, v21, v24));
  v30 = vdupq_n_s32(0x3E75FDEEu);
  v31 = vmlaq_f32(v30, v20, vmlaq_f32(v28, v20, v27));
  v32 = vdupq_n_s32(0x3F317218u);
  v33 = vmlaq_f32(v32, v21, vmlaq_f32(v30, v21, v29));
  v34 = vmlaq_f32(v32, v20, v31);
  __asm { FMOV            V7.4S, #1.0 }

  v40 = vmlaq_f32(_Q7, v21, v33);
  v41 = vbslq_s8(vceqq_f32(v11, v11), vmulq_f32(vmlaq_f32(_Q7, v20, v34), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v19), 0x17uLL), _Q7)), v11);
  v42 = vdupq_n_s32(0x42B00000u);
  v43 = vbslq_s8(vceqq_f32(v12, v12), vmulq_f32(v40, vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v18), 0x17uLL), _Q7)), v12);
  v44 = vdupq_n_s32(0xC2B00000);
  x = vbicq_s8(vbslq_s8(vcgtq_f32(v11, v42), v10, v41), vcgtq_f32(v44, v11));
  v46 = _simd_log1p_f4(vbicq_s8(vbslq_s8(vcgtq_f32(v12, v42), v10, v43), vcgtq_f32(v44, v12)));
  result = vbslq_s8(v50, v49, vaddq_f32(v49, _simd_log1p_f4(x)));
  *a3 = vbslq_s8(v51, v48, vaddq_f32(v48, v46));
  a3[1] = result;
  return result;
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,1,true>(_OWORD *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * a8);
    v14 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::LogAddExp>::operator()<float,float>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 4 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,2,true>(_OWORD *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,3,true>(_OWORD *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,1,true>(_OWORD *a1, float *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v13 = *(*a7 + 8 * a8);
    v14 = 4 * *(*a5 + 8 * a8);
    v15 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::LogAddExp>::operator()<float,float>(a9, &v16, a1, a2, a3, v13);
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + 4 * v13);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,2,true>(_OWORD *a1, float *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,3,true>(_OWORD *a1, float *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,1,true>(float *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v13 = *(*a7 + 8 * a8);
    v14 = 4 * *(*a5 + 8 * a8);
    v15 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::LogAddExp>::operator()<float,float>(a9, &v16, a1, a2, a3, v13);
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + 4 * v13);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,2,true>(float *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,3,true>(float *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::detail::LogAddExp,1,false>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = 4 * *(*a5 + 8 * a8);
    v13 = 4 * *(*a6 + 8 * a8);
    v14 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::detail::LogAddExp::operator()<1,float>(*a1, *a2);
      *a3 = v15;
      a1 = (a1 + v12);
      a2 = (a2 + v13);
      a3 = (a3 + v14);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::detail::LogAddExp,2,false>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::detail::LogAddExp,1,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::detail::LogAddExp,3,false>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::detail::LogAddExp,2,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op<double,double,mlx::core::detail::LogAddExp>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      mlx::core::VectorScalar<mlx::core::detail::LogAddExp>::operator()<double,double>(v50, v9, v10, v11, *(v8 + 160));
      goto LABEL_62;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::LogAddExp>::operator()<double,double>(v50, v9, v10, v11, *(v8 + 48));
      goto LABEL_62;
    }
  }

  else
  {
    if (!a4)
    {
      mlx::core::detail::LogAddExp::operator()<1,double>(*v9, *v10);
      v11->i64[0] = v25;
      goto LABEL_62;
    }

    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::LogAddExp>::operator()<double,double>(v50, v9, v10, v11, *(*a2 + 160));
      goto LABEL_62;
    }
  }

  memset(v50, 0, sizeof(v50));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v50, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
  v12 = *a2;
  memset(v51, 0, sizeof(v51));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v51, *(v12 + 24), *(v12 + 32), (*(v12 + 32) - *(v12 + 24)) >> 3);
  v13 = *a3;
  v53[0] = 0;
  v53[1] = 0;
  v52 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v52, *(v13 + 24), *(v13 + 32), (*(v13 + 32) - *(v13 + 24)) >> 3);
  memset(v45, 0, sizeof(v45));
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v45, v50, &v54, 3uLL);
  mlx::core::collapse_contiguous_dims(v8, v45, 0x7FFFFFFFuLL, &__p);
  v49 = v45;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v49);
  for (i = 0; i != -9; i -= 3)
  {
    v15 = v53[i - 1];
    if (v15)
    {
      v53[i] = v15;
      operator delete(v15);
    }
  }

  v16 = v48 + 6;
  v17 = *v48;
  v18 = (v48[1] - *v48) >> 3;
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
  v26 = v48[3];
  v27 = (v48[4] - v26) >> 3;
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
    if (*(v26 + v33) != *(*v16 + v33))
    {
      goto LABEL_28;
    }
  }

  v30 = v29;
LABEL_28:
  v34 = v18 + 1;
  while ((v22 & 0x80000000) == 0)
  {
    v35 = *(v17 + 8 * (v22 & 0x7FFFFFFF));
    --v34;
    --v22;
    if (v35)
    {
      goto LABEL_33;
    }
  }

  v34 = v20;
LABEL_33:
  v36 = v27 + 1;
  while ((v31 & 0x80000000) == 0)
  {
    v37 = *(v26 + 8 * (v31 & 0x7FFFFFFF));
    --v36;
    --v31;
    if (v37)
    {
      goto LABEL_38;
    }
  }

  v36 = v29;
LABEL_38:
  v38 = (v47 - __p) >> 2;
  if (v21 <= v30)
  {
    v39 = v30;
  }

  else
  {
    v39 = v21;
  }

  if (v21 <= v36)
  {
    v21 = v36;
  }

  if (v34 > v30)
  {
    v30 = v34;
  }

  if (v38 > v30)
  {
    v40 = 1;
  }

  else
  {
    v30 = (v47 - __p) >> 2;
    v40 = a4;
  }

  if (v38 > v21)
  {
    v41 = 2;
  }

  else
  {
    v21 = v30;
    v41 = v40;
  }

  if (v38 <= v39)
  {
    v42 = v21;
  }

  else
  {
    v42 = v39;
  }

  if (v38 <= v39)
  {
    v43 = v41;
  }

  else
  {
    v43 = 3;
  }

  if (!v42 || *(*v16 + 8 * v42 - 8) < 16)
  {
    goto LABEL_59;
  }

  switch(v43)
  {
    case 1:
      mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>>(v9, v10, v11, v42, *(*a1 + 48), &__p, v48, v48 + 3, v48 + 6);
      break;
    case 2:
      mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>>(v9, v10, v11, v42, *(*a1 + 48), &__p, v48, v48 + 3, v48 + 6);
      break;
    case 3:
      mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorVector<mlx::core::detail::LogAddExp>>(v9, v10, v11, v42, *(*a1 + 48), &__p, v48, v48 + 3, v48 + 6);
      break;
    default:
      LODWORD(v38) = v42;
LABEL_59:
      mlx::core::binary_op_dispatch_dims<double,double,false,mlx::core::detail::LogAddExp>(v9, v10, v11, v38, *(*a1 + 48), &__p, v48, v48 + 3, v48 + 6);
      break;
  }

  v50[0] = &v48;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v50);
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }

LABEL_62:
  v44 = *MEMORY[0x277D85DE8];
}