void sub_25A78D4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(unsigned __int8 *a1, uint8x16_t *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(&a1[v61], (a2 + v54), (a3 + v19), a6, a7, a8, a9, v15);
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

void sub_25A78D8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,false,mlx::core::detail::Power>(char *a1, _BYTE *a2, char *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::Power,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::Power,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::Power,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::Power,3,false>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A78DCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(_OWORD *a1, uint8x16_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a5 + 8 * a8);
    v13 = *(*a6 + 8 * a8);
    v14 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<unsigned char,unsigned char>(&v15, a1, a2, a3, v14);
      a3 = (a3 + v14);
      a1 = (a1 + v12);
      a2 = (a2 + v13);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(_OWORD *a1, uint8x16_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = *(*a5 + 8 * a8);
    v16 = *(*a6 + 8 * a8);
    v17 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v17);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(_OWORD *a1, uint8x16_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = *(*a5 + 8 * a8);
    v16 = *(*a6 + 8 * a8);
    v17 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v17);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(_OWORD *a1, unsigned __int8 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a5 + 8 * a8);
    v13 = *(*a6 + 8 * a8);
    v14 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<unsigned char,unsigned char>(&v15, a1, a2, a3, v14);
      a3 = (a3 + v14);
      a1 = (a1 + v12);
      a2 += v13;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(_OWORD *a1, unsigned __int8 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = *(*a5 + 8 * a8);
    v16 = *(*a6 + 8 * a8);
    v17 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v17);
      a1 = (a1 + v15);
      a2 += v16;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(_OWORD *a1, unsigned __int8 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = *(*a5 + 8 * a8);
    v16 = *(*a6 + 8 * a8);
    v17 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v17);
      a1 = (a1 + v15);
      a2 += v16;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(unsigned __int8 *a1, uint8x16_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a5 + 8 * a8);
    v13 = *(*a6 + 8 * a8);
    v14 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<unsigned char,unsigned char>(&v15, a1, a2, a3, v14);
      a3 = (a3 + v14);
      a1 += v12;
      a2 = (a2 + v13);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(unsigned __int8 *a1, uint8x16_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = *(*a5 + 8 * a8);
    v16 = *(*a6 + 8 * a8);
    v17 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v17);
      a1 += v15;
      a2 = (a2 + v16);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(unsigned __int8 *a1, uint8x16_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = *(*a5 + 8 * a8);
    v16 = *(*a6 + 8 * a8);
    v17 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v17);
      a1 += v15;
      a2 = (a2 + v16);
      --v8;
    }

    while (v8);
  }
}

char *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::Power,1,false>(char *result, _BYTE *a2, char *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      a2 += v11;
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::Power,2,false>(char *result, _BYTE *a2, char *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::Power,1,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::Power,3,false>(char *result, _BYTE *a2, char *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::Power,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<unsigned short,unsigned short,mlx::core::detail::Power>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<unsigned short,unsigned short>(v54, v9, v10, v11, *(v8 + 160));
      goto LABEL_70;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<unsigned short,unsigned short>(v54, v9, v10, v11, *(v8 + 48));
      goto LABEL_70;
    }

    goto LABEL_8;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<unsigned short,unsigned short>(v54, v9, v10, v11, *(*a2 + 160));
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
        mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::VectorVector<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      default:
        LODWORD(v42) = v46;
LABEL_65:
        mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,false,mlx::core::detail::Power>(v9, v10, v11->i16, v42, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
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

  v25 = *v10;
  if (*v10)
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

  v11->i16[0] = v27;
LABEL_70:
  v48 = *MEMORY[0x277D85DE8];
}

void sub_25A78E9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<unsigned short,unsigned short>(uint64_t a1, unsigned __int16 *a2, _OWORD *a3, int16x8_t *a4, int a5)
{
  v5 = *a2;
  if (a5 < 16)
  {
    v14 = a5;
  }

  else
  {
    v6 = vdupq_n_s16(v5);
    v7.i64[0] = 0x1000100010001;
    v7.i64[1] = 0x1000100010001;
    do
    {
      v9 = *a3;
      v8 = *(a3 + 1);
      v10 = v6;
      v11 = v6;
      v12.i64[0] = 0x1000100010001;
      v12.i64[1] = 0x1000100010001;
      v13.i64[0] = 0x1000100010001;
      v13.i64[1] = 0x1000100010001;
      while ((vmaxvq_u16(vorrq_s8(v9, v8)) & 0x8000) != 0)
      {
        v12 = vbslq_s8(vandq_s8(v9, v7), vmulq_s16(v12, v10), v12);
        v13 = vbslq_s8(vandq_s8(v8, v7), vmulq_s16(v13, v11), v13);
        v10 = vbslq_s8(v9, vmulq_s16(v10, v10), v10);
        v11 = vbslq_s8(v8, vmulq_s16(v11, v11), v11);
        v9 = vshrq_n_u16(v9, 1uLL);
        v8 = vshrq_n_u16(v8, 1uLL);
      }

      *a4 = v12;
      a4[1] = v13;
      a4 += 2;
      a3 += 2;
      v14 = a5 - 16;
      v15 = a5 <= 31;
      a5 -= 16;
    }

    while (!v15);
  }

  if (v14 >= 1)
  {
    do
    {
      v16 = *a3;
      if (*a3)
      {
        v17 = 1;
        v18 = v5;
        do
        {
          if (v16)
          {
            v19 = v18;
          }

          else
          {
            v19 = 1;
          }

          v17 *= v19;
          v18 *= v18;
          v15 = v16 > 1;
          v16 >>= 1;
        }

        while (v15);
      }

      else
      {
        v17 = 1;
      }

      a4->i16[0] = v17;
      a4 = (a4 + 2);
      a3 = (a3 + 2);
      v15 = v14-- <= 1;
    }

    while (!v15);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<unsigned short,unsigned short>(uint64_t a1, _OWORD *a2, unsigned __int16 *a3, int16x8_t *a4, int a5)
{
  v5 = *a3;
  if (a5 < 16)
  {
    v14 = a5;
  }

  else
  {
    v6 = vdupq_n_s16(v5);
    v7.i64[0] = 0x1000100010001;
    v7.i64[1] = 0x1000100010001;
    do
    {
      v9 = *a2;
      v8 = *(a2 + 1);
      v10 = v6;
      v11 = v6;
      v12.i64[0] = 0x1000100010001;
      v12.i64[1] = 0x1000100010001;
      v13.i64[0] = 0x1000100010001;
      v13.i64[1] = 0x1000100010001;
      while ((vmaxvq_u16(vorrq_s8(v10, v11)) & 0x8000) != 0)
      {
        v12 = vbslq_s8(vandq_s8(v10, v7), vmulq_s16(v12, v9), v12);
        v13 = vbslq_s8(vandq_s8(v11, v7), vmulq_s16(v13, v8), v13);
        v9 = vbslq_s8(v10, vmulq_s16(v9, v9), v9);
        v8 = vbslq_s8(v11, vmulq_s16(v8, v8), v8);
        v10 = vshrq_n_u16(v10, 1uLL);
        v11 = vshrq_n_u16(v11, 1uLL);
      }

      *a4 = v12;
      a4[1] = v13;
      a4 += 2;
      a2 += 2;
      v14 = a5 - 16;
      v15 = a5 <= 31;
      a5 -= 16;
    }

    while (!v15);
  }

  if (v14 >= 1)
  {
    do
    {
      if (v5)
      {
        v16 = *a2;
        v17 = 1;
        v18 = v5;
        do
        {
          v19 = v18;
          if (v18)
          {
            v20 = v16;
          }

          else
          {
            v20 = 1;
          }

          v17 *= v20;
          v18 >>= 1;
          v16 *= v16;
        }

        while (v19 > 1);
      }

      else
      {
        v17 = 1;
      }

      a4->i16[0] = v17;
      a4 = (a4 + 2);
      a2 = (a2 + 2);
      v15 = v14-- <= 1;
    }

    while (!v15);
  }
}

void mlx::core::VectorVector<mlx::core::detail::Power>::operator()<unsigned short,unsigned short>(uint64_t a1, _OWORD *a2, _OWORD *a3, int16x8_t *a4, int a5)
{
  if (a5 < 16)
  {
    v12 = a5;
  }

  else
  {
    v5.i64[0] = 0x1000100010001;
    v5.i64[1] = 0x1000100010001;
    do
    {
      v7 = *a2;
      v6 = *(a2 + 1);
      v8.i64[0] = 0x1000100010001;
      v8.i64[1] = 0x1000100010001;
      v9.i64[0] = 0x1000100010001;
      v9.i64[1] = 0x1000100010001;
      v11 = *a3;
      for (i = *(a3 + 1); (vmaxvq_u16(vorrq_s8(v11, i)) & 0x8000) != 0; i = vshrq_n_u16(i, 1uLL))
      {
        v8 = vbslq_s8(vandq_s8(v11, v5), vmulq_s16(v8, v7), v8);
        v9 = vbslq_s8(vandq_s8(i, v5), vmulq_s16(v9, v6), v9);
        v7 = vbslq_s8(v11, vmulq_s16(v7, v7), v7);
        v6 = vbslq_s8(i, vmulq_s16(v6, v6), v6);
        v11 = vshrq_n_u16(v11, 1uLL);
      }

      *a4 = v8;
      a4[1] = v9;
      a4 += 2;
      a2 += 2;
      a3 += 2;
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
      v14 = *a3;
      if (*a3)
      {
        v15 = *a2;
        v16 = 1;
        do
        {
          if (v14)
          {
            v17 = v15;
          }

          else
          {
            v17 = 1;
          }

          v16 *= v17;
          v15 *= v15;
          v13 = v14 > 1;
          v14 >>= 1;
        }

        while (v13);
      }

      else
      {
        v16 = 1;
      }

      a4->i16[0] = v16;
      a4 = (a4 + 2);
      a2 = (a2 + 2);
      a3 = (a3 + 2);
      v13 = v12-- <= 1;
    }

    while (!v13);
  }
}

void mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::VectorVector<mlx::core::detail::Power>>(_OWORD *a1, _OWORD *a2, int16x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>((a1 + 2 * v60), (a2 + 2 * v53), (a3 + 2 * v19), a6, a7, a8, a9, v15);
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

void sub_25A78F10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(_OWORD *a1, unsigned __int16 *a2, int16x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>((a1 + 2 * v60), &a2[v53], (a3 + 2 * v19), a6, a7, a8, a9, v15);
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

void sub_25A78F524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(unsigned __int16 *a1, _OWORD *a2, int16x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(&a1[v60], (a2 + 2 * v53), (a3 + 2 * v19), a6, a7, a8, a9, v15);
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

void sub_25A78F93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,false,mlx::core::detail::Power>(__int16 *a1, _WORD *a2, __int16 *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::Power,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::Power,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::Power,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::Power,3,false>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A78FD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(_OWORD *a1, _OWORD *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    v14 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<unsigned short,unsigned short>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 2 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(_OWORD *a1, _OWORD *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(_OWORD *a1, _OWORD *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(_OWORD *a1, unsigned __int16 *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    v14 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<unsigned short,unsigned short>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 2 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(_OWORD *a1, unsigned __int16 *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(_OWORD *a1, unsigned __int16 *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(unsigned __int16 *a1, _OWORD *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    v14 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<unsigned short,unsigned short>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 2 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(unsigned __int16 *a1, _OWORD *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(unsigned __int16 *a1, _OWORD *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

__int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::Power,1,false>(__int16 *result, _WORD *a2, __int16 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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

__int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::Power,2,false>(__int16 *result, _WORD *a2, __int16 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::Power,1,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::Power,3,false>(__int16 *result, _WORD *a2, __int16 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::Power,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<unsigned int,unsigned int,mlx::core::detail::Power>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<unsigned int,unsigned int>(v54, v9, v10, v11, *(v8 + 160));
      goto LABEL_70;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<unsigned int,unsigned int>(v54, v9, v10, v11, *(v8 + 48));
      goto LABEL_70;
    }

    goto LABEL_8;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<unsigned int,unsigned int>(v54, v9, v10, v11, *(*a2 + 160));
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
        mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::VectorVector<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      default:
        LODWORD(v42) = v46;
LABEL_65:
        mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,false,mlx::core::detail::Power>(v9, v10, v11->i32, v42, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
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

  v25 = v10->i32[0];
  if (v10->i32[0])
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

  v11->i32[0] = v27;
LABEL_70:
  v48 = *MEMORY[0x277D85DE8];
}

void sub_25A790ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<unsigned int,unsigned int>(uint64_t a1, unsigned int *a2, int8x16_t *a3, int32x4_t *a4, int a5)
{
  v5 = *a2;
  if (a5 < 8)
  {
    v14 = a5;
  }

  else
  {
    v6 = vdupq_n_s32(v5);
    v7.i64[0] = 0x100000001;
    v7.i64[1] = 0x100000001;
    do
    {
      v9 = *a3;
      v8 = a3[1];
      v10.i64[0] = 0x100000001;
      v10.i64[1] = 0x100000001;
      v11.i64[0] = 0x100000001;
      v11.i64[1] = 0x100000001;
      if ((vmaxvq_u32(vorrq_s8(*a3, v8)) & 0x80000000) != 0)
      {
        v12 = v6;
        v13 = v6;
        do
        {
          v10 = vbslq_s8(vandq_s8(v9, v7), vmulq_s32(v10, v12), v10);
          v11 = vbslq_s8(vandq_s8(v8, v7), vmulq_s32(v11, v13), v11);
          v12 = vbslq_s8(v9, vmulq_s32(v12, v12), v12);
          v13 = vbslq_s8(v8, vmulq_s32(v13, v13), v13);
          v9 = vshrq_n_u32(v9, 1uLL);
          v8 = vshrq_n_u32(v8, 1uLL);
        }

        while ((vmaxvq_u32(vorrq_s8(v9, v8)) & 0x80000000) != 0);
      }

      *a4 = v10;
      a4[1] = v11;
      a4 += 2;
      a3 += 2;
      v14 = a5 - 8;
      v15 = a5 <= 15;
      a5 -= 8;
    }

    while (!v15);
  }

  if (v14 >= 1)
  {
    do
    {
      v16 = a3->i32[0];
      if (a3->i32[0])
      {
        v17 = 1;
        v18 = v5;
        do
        {
          if (v16)
          {
            v19 = v18;
          }

          else
          {
            v19 = 1;
          }

          v17 *= v19;
          v18 *= v18;
          v15 = v16 > 1;
          v16 >>= 1;
        }

        while (v15);
      }

      else
      {
        v17 = 1;
      }

      a4->i32[0] = v17;
      a4 = (a4 + 4);
      a3 = (a3 + 4);
      v15 = v14-- <= 1;
    }

    while (!v15);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<unsigned int,unsigned int>(uint64_t a1, _OWORD *a2, unsigned int *a3, int32x4_t *a4, int a5)
{
  v5 = *a3;
  if (a5 < 8)
  {
    v15 = a5;
  }

  else
  {
    v6 = vdupq_n_s32(v5);
    v7 = vmaxvq_u32(v6);
    v8.i64[0] = 0x100000001;
    v8.i64[1] = 0x100000001;
    do
    {
      v9.i64[0] = 0x100000001;
      v9.i64[1] = 0x100000001;
      v10.i64[0] = 0x100000001;
      v10.i64[1] = 0x100000001;
      if ((v7 & 0x80000000) != 0)
      {
        v12 = *a2;
        v11 = *(a2 + 1);
        v13 = v6;
        v14 = v6;
        do
        {
          v9 = vbslq_s8(vandq_s8(v13, v8), vmulq_s32(v9, v12), v9);
          v10 = vbslq_s8(vandq_s8(v14, v8), vmulq_s32(v10, v11), v10);
          v12 = vbslq_s8(v13, vmulq_s32(v12, v12), v12);
          v11 = vbslq_s8(v14, vmulq_s32(v11, v11), v11);
          v13 = vshrq_n_u32(v13, 1uLL);
          v14 = vshrq_n_u32(v14, 1uLL);
        }

        while ((vmaxvq_u32(vorrq_s8(v13, v14)) & 0x80000000) != 0);
      }

      *a4 = v9;
      a4[1] = v10;
      a4 += 2;
      a2 += 2;
      v15 = a5 - 8;
      v16 = a5 <= 15;
      a5 -= 8;
    }

    while (!v16);
  }

  if (v15 >= 1)
  {
    do
    {
      if (v5)
      {
        v17 = *a2;
        v18 = 1;
        v19 = v5;
        do
        {
          if (v19)
          {
            v20 = v17;
          }

          else
          {
            v20 = 1;
          }

          v18 *= v20;
          v17 *= v17;
          v16 = v19 > 1;
          v19 >>= 1;
        }

        while (v16);
      }

      else
      {
        v18 = 1;
      }

      a4->i32[0] = v18;
      a4 = (a4 + 4);
      a2 = (a2 + 4);
      v16 = v15-- <= 1;
    }

    while (!v16);
  }
}

void mlx::core::VectorVector<mlx::core::detail::Power>::operator()<unsigned int,unsigned int>(uint64_t a1, _OWORD *a2, int8x16_t *a3, int32x4_t *a4, int a5)
{
  if (a5 < 8)
  {
    v12 = a5;
  }

  else
  {
    v5.i64[0] = 0x100000001;
    v5.i64[1] = 0x100000001;
    do
    {
      v7 = *a3;
      v6 = a3[1];
      v8.i64[0] = 0x100000001;
      v8.i64[1] = 0x100000001;
      v9.i64[0] = 0x100000001;
      v9.i64[1] = 0x100000001;
      if ((vmaxvq_u32(vorrq_s8(*a3, v6)) & 0x80000000) != 0)
      {
        v11 = *a2;
        v10 = *(a2 + 1);
        do
        {
          v8 = vbslq_s8(vandq_s8(v7, v5), vmulq_s32(v8, v11), v8);
          v9 = vbslq_s8(vandq_s8(v6, v5), vmulq_s32(v9, v10), v9);
          v11 = vbslq_s8(v7, vmulq_s32(v11, v11), v11);
          v10 = vbslq_s8(v6, vmulq_s32(v10, v10), v10);
          v7 = vshrq_n_u32(v7, 1uLL);
          v6 = vshrq_n_u32(v6, 1uLL);
        }

        while ((vmaxvq_u32(vorrq_s8(v7, v6)) & 0x80000000) != 0);
      }

      *a4 = v8;
      a4[1] = v9;
      a4 += 2;
      a2 += 2;
      a3 += 2;
      v12 = a5 - 8;
      v13 = a5 <= 15;
      a5 -= 8;
    }

    while (!v13);
  }

  if (v12 >= 1)
  {
    do
    {
      v14 = a3->i32[0];
      if (a3->i32[0])
      {
        v15 = *a2;
        v16 = 1;
        do
        {
          if (v14)
          {
            v17 = v15;
          }

          else
          {
            v17 = 1;
          }

          v16 *= v17;
          v15 *= v15;
          v13 = v14 > 1;
          v14 >>= 1;
        }

        while (v13);
      }

      else
      {
        v16 = 1;
      }

      a4->i32[0] = v16;
      a4 = (a4 + 4);
      a2 = (a2 + 4);
      a3 = (a3 + 4);
      v13 = v12-- <= 1;
    }

    while (!v13);
  }
}

void mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::VectorVector<mlx::core::detail::Power>>(_OWORD *a1, int8x16_t *a2, int32x4_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>((a1 + 4 * v60), (a2 + 4 * v53), (a3 + 4 * v19), a6, a7, a8, a9, v15);
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

void sub_25A791214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(_OWORD *a1, unsigned int *a2, int32x4_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>((a1 + 4 * v60), &a2[v53], (a3 + 4 * v19), a6, a7, a8, a9, v15);
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

void sub_25A79162C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(unsigned int *a1, int8x16_t *a2, int32x4_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(&a1[v60], (a2 + 4 * v53), (a3 + 4 * v19), a6, a7, a8, a9, v15);
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

void sub_25A791A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,false,mlx::core::detail::Power>(int *a1, unsigned int *a2, int *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Power,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Power,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Power,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Power,3,false>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A791E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(_OWORD *a1, int8x16_t *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * a8);
    v14 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<unsigned int,unsigned int>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 4 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(_OWORD *a1, int8x16_t *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(_OWORD *a1, int8x16_t *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(_OWORD *a1, unsigned int *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * a8);
    v14 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<unsigned int,unsigned int>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 4 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(_OWORD *a1, unsigned int *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(_OWORD *a1, unsigned int *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(unsigned int *a1, int8x16_t *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * a8);
    v14 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<unsigned int,unsigned int>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 4 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(unsigned int *a1, int8x16_t *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(unsigned int *a1, int8x16_t *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Power,1,false>(int *result, unsigned int *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Power,2,false>(int *result, unsigned int *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Power,1,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Power,3,false>(int *result, unsigned int *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Power,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<unsigned long long,unsigned long long,mlx::core::detail::Power>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int8x16_t a5, double a6, int64x2_t a7, int8x16_t a8)
{
  v66 = *MEMORY[0x277D85DE8];
  v12 = *a1;
  v13 = *(*a1 + 152);
  v14 = *(*a2 + 152);
  v15 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<unsigned long long,unsigned long long>(a5, a6, a7, a8, v62, v13, v14, v15, *(v12 + 160));
      goto LABEL_70;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<unsigned long long,unsigned long long>(a5, v62, v13, v14, v15, *(v12 + 48));
      goto LABEL_70;
    }

    goto LABEL_8;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<unsigned long long,unsigned long long>(a5, v62, v13, v14, v15, *(*a2 + 160));
      goto LABEL_70;
    }

LABEL_8:
    memset(v62, 0, sizeof(v62));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v62, *(v12 + 24), *(v12 + 32), (*(v12 + 32) - *(v12 + 24)) >> 3);
    v16 = *a2;
    memset(v63, 0, sizeof(v63));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v63, *(v16 + 24), *(v16 + 32), (*(v16 + 32) - *(v16 + 24)) >> 3);
    v17 = *a3;
    v65[0] = 0;
    v65[1] = 0;
    v64 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v64, *(v17 + 24), *(v17 + 32), (*(v17 + 32) - *(v17 + 24)) >> 3);
    memset(v57, 0, sizeof(v57));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v57, v62, &v66, 3uLL);
    mlx::core::collapse_contiguous_dims(v12, v57, 0x7FFFFFFFuLL, &__p);
    v61 = v57;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v61);
    for (i = 0; i != -9; i -= 3)
    {
      v23 = v65[i - 1];
      if (v23)
      {
        v65[i] = v23;
        operator delete(v23);
      }
    }

    v24 = v60 + 6;
    v25 = *v60;
    v26 = (v60[1] - *v60) >> 3;
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
      if (*(v38 + v45) != *(*v24 + v45))
      {
        goto LABEL_34;
      }
    }

    v42 = v41;
LABEL_34:
    v46 = v26 + 1;
    while ((v30 & 0x80000000) == 0)
    {
      v47 = *(v25 + 8 * (v30 & 0x7FFFFFFF));
      --v46;
      --v30;
      if (v47)
      {
        goto LABEL_39;
      }
    }

    v46 = v28;
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
    v50 = (v59 - __p) >> 2;
    if (v29 <= v42)
    {
      v51 = v42;
    }

    else
    {
      v51 = v29;
    }

    if (v29 <= v48)
    {
      v29 = v48;
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

    if (v50 > v29)
    {
      v53 = 2;
    }

    else
    {
      v29 = v42;
      v53 = v52;
    }

    if (v50 <= v51)
    {
      v54 = v29;
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

    if (!v54 || *(*v24 + 8 * v54 - 8) < 16)
    {
      goto LABEL_65;
    }

    switch(v55)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(v13, v14, v15, v54, *(*a1 + 48), &__p, v60, v60 + 3, v18, v60 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(v13, v14, v15, v54, *(*a1 + 48), &__p, v60, v60 + 3, v18, v19, v20, v21, v60 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorVector<mlx::core::detail::Power>>(v13, v14, v15, v54, *(*a1 + 48), &__p, v60, v60 + 3, v18, v60 + 6);
        break;
      default:
        LODWORD(v50) = v54;
LABEL_65:
        mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,false,mlx::core::detail::Power>(v13, v14, v15->i64, v50, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
    }

    v62[0] = &v60;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v62);
    if (__p)
    {
      v59 = __p;
      operator delete(__p);
    }

    goto LABEL_70;
  }

  v33 = *v14;
  if (*v14)
  {
    v34 = *v13;
    v35 = 1;
    do
    {
      if (v33)
      {
        v36 = v34;
      }

      else
      {
        v36 = 1;
      }

      v35 *= v36;
      v34 *= v34;
      v37 = v33 > 1;
      v33 >>= 1;
    }

    while (v37);
  }

  else
  {
    v35 = 1;
  }

  v15->i64[0] = v35;
LABEL_70:
  v56 = *MEMORY[0x277D85DE8];
}

void sub_25A792BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<unsigned long long,unsigned long long>(int64x2_t a1, uint64_t a2, unint64_t *a3, _OWORD *a4, int64x2_t *a5, int a6)
{
  v6 = *a3;
  if (a6 < 4)
  {
    v16 = a6;
  }

  else
  {
    a1.i64[0] = 0;
    v7 = vdupq_n_s64(v6);
    v8 = vdupq_n_s64(1uLL);
    do
    {
      v10 = *a4;
      v9 = *(a4 + 1);
      a4 += 2;
      v11 = vorrq_s8(v10, v9);
      v12 = vdupq_lane_s64(vcgtq_s64(a1, vorrq_s8(v11, vdupq_laneq_s64(v11, 1))).i64[0], 0);
      v13 = vandq_s8(v10, v8);
      v14 = vmvnq_s8(v12);
      v15 = vandq_s8(v9, v8);
      *a5 = vsubq_s64(vandq_s8(vorrq_s8(vandq_s8(v13, v7), veorq_s8(v13, v8)), v12), v14);
      a5[1] = vsubq_s64(vandq_s8(vorrq_s8(vandq_s8(v15, v7), veorq_s8(v15, v8)), v12), v14);
      a5 += 2;
      v16 = a6 - 4;
      v17 = a6 > 7;
      a6 -= 4;
    }

    while (v17);
  }

  if (v16 >= 1)
  {
    do
    {
      v18 = *a4;
      if (*a4)
      {
        v19 = 1;
        v20 = v6;
        do
        {
          if (v18)
          {
            v21 = v20;
          }

          else
          {
            v21 = 1;
          }

          v19 *= v21;
          v20 *= v20;
          v17 = v18 > 1;
          v18 >>= 1;
        }

        while (v17);
      }

      else
      {
        v19 = 1;
      }

      a5->i64[0] = v19;
      a5 = (a5 + 8);
      a4 = (a4 + 8);
      v17 = v16-- <= 1;
    }

    while (!v17);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<unsigned long long,unsigned long long>(int8x16_t a1, double a2, int64x2_t a3, int8x16_t a4, uint64_t a5, _OWORD *a6, unint64_t *a7, int64x2_t *a8, int a9)
{
  v9 = *a7;
  if (a9 < 4)
  {
    v16 = a9;
  }

  else
  {
    a3.i64[0] = 0;
    a1.i64[0] = *a7;
    a4.i64[0] = 1;
    v10 = vdupq_lane_s64(vandq_s8(a1, a4).i64[0], 0);
    v11 = veorq_s8(v10, vdupq_n_s64(1uLL));
    a4.i64[0] = *a7;
    v12 = vdupq_lane_s64(vcgtq_s64(a3, a4).i64[0], 0);
    v13 = vmvnq_s8(v12);
    do
    {
      v14 = *a6;
      v15 = *(a6 + 1);
      a6 += 2;
      *a8 = vsubq_s64(vandq_s8(vorrq_s8(vandq_s8(v14, v10), v11), v12), v13);
      a8[1] = vsubq_s64(vandq_s8(vorrq_s8(vandq_s8(v15, v10), v11), v12), v13);
      a8 += 2;
      v16 = a9 - 4;
      v17 = a9 > 7;
      a9 -= 4;
    }

    while (v17);
  }

  if (v16 >= 1)
  {
    do
    {
      if (v9)
      {
        v18 = *a6;
        v19 = 1;
        v20 = v9;
        do
        {
          if (v20)
          {
            v21 = v18;
          }

          else
          {
            v21 = 1;
          }

          v19 *= v21;
          v18 *= v18;
          v17 = v20 > 1;
          v20 >>= 1;
        }

        while (v17);
      }

      else
      {
        v19 = 1;
      }

      a8->i64[0] = v19;
      a8 = (a8 + 8);
      a6 = (a6 + 8);
      v17 = v16-- <= 1;
    }

    while (!v17);
  }
}

void mlx::core::VectorVector<mlx::core::detail::Power>::operator()<unsigned long long,unsigned long long>(int64x2_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4, int64x2_t *a5, int a6)
{
  if (a6 < 4)
  {
    v17 = a6;
  }

  else
  {
    a1.i64[0] = 0;
    v6 = vdupq_n_s64(1uLL);
    do
    {
      v8 = *a3;
      v7 = *(a3 + 1);
      a3 += 2;
      v10 = *a4;
      v9 = *(a4 + 1);
      a4 += 2;
      v11 = vorrq_s8(v10, v9);
      v12 = vdupq_lane_s64(vcgtq_s64(a1, vorrq_s8(v11, vdupq_laneq_s64(v11, 1))).i64[0], 0);
      v13 = vandq_s8(v10, v6);
      v14 = vandq_s8(vorrq_s8(vandq_s8(v13, v8), veorq_s8(v13, v6)), v12);
      v15 = vmvnq_s8(v12);
      v16 = vandq_s8(v9, v6);
      *a5 = vsubq_s64(v14, v15);
      a5[1] = vsubq_s64(vandq_s8(vorrq_s8(vandq_s8(v16, v7), veorq_s8(v16, v6)), v12), v15);
      a5 += 2;
      v17 = a6 - 4;
      v18 = a6 > 7;
      a6 -= 4;
    }

    while (v18);
  }

  if (v17 >= 1)
  {
    do
    {
      v19 = *a4;
      if (*a4)
      {
        v20 = *a3;
        v21 = 1;
        do
        {
          if (v19)
          {
            v22 = v20;
          }

          else
          {
            v22 = 1;
          }

          v21 *= v22;
          v20 *= v20;
          v18 = v19 > 1;
          v19 >>= 1;
        }

        while (v18);
      }

      else
      {
        v21 = 1;
      }

      a5->i64[0] = v21;
      a5 = (a5 + 8);
      a3 = (a3 + 8);
      a4 = (a4 + 8);
      v18 = v17-- <= 1;
    }

    while (!v18);
  }
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorVector<mlx::core::detail::Power>>(_OWORD *a1, _OWORD *a2, int64x2_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int64x2_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>((a1 + 8 * v62), (a2 + 8 * v55), (a3 + 8 * v21), a6, a7, a8, a10, v16, v19);
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

void sub_25A7932E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(_OWORD *a1, unint64_t *a2, int64x2_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int8x16_t a9, double a10, int64x2_t a11, int8x16_t a12, void *a13)
{
  v19 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a13, 0, a9, a10, a11, a12);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a13, 0, a9, a10, a11, a12);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a13, 0, a9, a10, a11, a12);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v68, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v61, a6, a8, v19);
      if (a5 >= 1)
      {
        v26 = a5;
        v27 = 0;
        v60 = *(*a13 + 8 * a4 - 32);
        v28 = v26;
        do
        {
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>((a1 + 8 * v68), &a2[v61], (a3 + 8 * v27), a6, a7, a8, a13, v19, v22, v23, v24, v25);
          v29 = v70 - v69;
          v30 = (v70 - v69) >> 2;
          if (v30)
          {
            v31 = v73;
            v32 = ((v29 << 30) - 0x100000000) >> 32;
            v33 = v73 + 4 * v32;
            v34 = *v33;
            v35 = v69 + 4 * v32;
            v36 = v71;
            v37 = v68;
            if (v30 >= 2 && v34 == *v35 - 1)
            {
              v40 = (v29 >> 2) & 0x7FFFFFFF;
              v39 = v40 - 1;
              v41 = 4 * v40;
              v42 = v69 - 8;
              do
              {
                v43 = v39;
                *v33 = 0;
                v37 -= v36[v32] * (*v35 - 1);
                v68 = v37;
                --v39;
                v33 = &v31[v41 - 8];
                v34 = *v33;
                v31 -= 4;
                if (v43 < 2)
                {
                  break;
                }

                v35 = &v42[v41];
                v44 = *&v42[4 * v40] - 1;
                v42 -= 4;
                v32 = v39;
              }

              while (v34 == v44);
              v33 = &v31[4 * v40 - 4];
            }

            else
            {
              v39 = ((v29 << 30) - 0x100000000) >> 32;
            }

            *v33 = v34 + 1;
            v68 = v36[v39] + v37;
          }

          v45 = v63 - v62;
          v46 = (v63 - v62) >> 2;
          if (v46)
          {
            v47 = __p;
            v48 = ((v45 << 30) - 0x100000000) >> 32;
            v49 = __p + 4 * v48;
            v50 = *v49;
            v51 = v64;
            v52 = v61;
            if (v46 >= 2 && (v53 = v62 + 4 * v48, v50 == *v53 - 1))
            {
              v54 = (v45 >> 2) & 0x7FFFFFFF;
              v55 = v54 - 1;
              v56 = 4 * v54;
              v57 = v62 - 8;
              do
              {
                v58 = v55;
                *v49 = 0;
                v52 -= v51[v48] * (*v53 - 1);
                v61 = v52;
                --v55;
                v49 = &v47[v56 - 8];
                v50 = *v49;
                v47 -= 4;
                if (v58 < 2)
                {
                  break;
                }

                v53 = &v57[v56];
                v59 = *&v57[4 * v54] - 1;
                v57 -= 4;
                v48 = v55;
              }

              while (v50 == v59);
              v49 = &v47[4 * v54 - 4];
            }

            else
            {
              v55 = ((v45 << 30) - 0x100000000) >> 32;
            }

            *v49 = v50 + 1;
            v61 = v51[v55] + v52;
          }

          v27 += v60;
        }

        while (v27 < v28);
      }

      if (__p)
      {
        v67 = __p;
        operator delete(__p);
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

      if (v69)
      {
        v70 = v69;
        operator delete(v69);
      }

      break;
  }
}

void sub_25A7936F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(unint64_t *a1, _OWORD *a2, int64x2_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int64x2_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(&a1[v62], (a2 + 8 * v55), (a3 + 8 * v21), a6, a7, a8, a10, v16, v19);
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

void sub_25A793B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,false,mlx::core::detail::Power>(uint64_t *a1, unint64_t *a2, uint64_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Power,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Power,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Power,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Power,3,false>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A793F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(_OWORD *a1, _OWORD *a2, int64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v13 = *(*a7 + 8 * a8);
    v14 = 8 * *(*a5 + 8 * a8);
    v15 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<unsigned long long,unsigned long long>(a9, &v16, a1, a2, a3, v13);
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + 8 * v13);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(_OWORD *a1, _OWORD *a2, int64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    v18 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(_OWORD *a1, _OWORD *a2, int64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    v18 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(_OWORD *a1, unint64_t *a2, int64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int8x16_t a9, double a10, int64x2_t a11, int8x16_t a12)
{
  v12 = *(*a4 + 4 * a8);
  if (v12 >= 1)
  {
    v16 = *(*a7 + 8 * a8);
    v17 = 8 * *(*a5 + 8 * a8);
    v18 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<unsigned long long,unsigned long long>(a9, a10, a11, a12, &v19, a1, a2, a3, v16);
      a1 = (a1 + v17);
      a2 = (a2 + v18);
      a3 = (a3 + 8 * v16);
      --v12;
    }

    while (v12);
  }
}

void mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(_OWORD *a1, unint64_t *a2, int64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int8x16_t a9, double a10, int64x2_t a11, int8x16_t a12)
{
  v12 = *(*a4 + 4 * a8);
  if (v12 >= 1)
  {
    v19 = 8 * *(*a5 + 8 * a8);
    v20 = 8 * *(*a6 + 8 * a8);
    v21 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10, a11, a12);
      a1 = (a1 + v19);
      a2 = (a2 + v20);
      a3 = (a3 + v21);
      --v12;
    }

    while (v12);
  }
}

void mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(_OWORD *a1, unint64_t *a2, int64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int8x16_t a9, double a10, int64x2_t a11, int8x16_t a12)
{
  v12 = *(*a4 + 4 * a8);
  if (v12 >= 1)
  {
    v19 = 8 * *(*a5 + 8 * a8);
    v20 = 8 * *(*a6 + 8 * a8);
    v21 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10, a11, a12);
      a1 = (a1 + v19);
      a2 = (a2 + v20);
      a3 = (a3 + v21);
      --v12;
    }

    while (v12);
  }
}

void mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(unint64_t *a1, _OWORD *a2, int64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v13 = *(*a7 + 8 * a8);
    v14 = 8 * *(*a5 + 8 * a8);
    v15 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<unsigned long long,unsigned long long>(a9, &v16, a1, a2, a3, v13);
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + 8 * v13);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(unint64_t *a1, _OWORD *a2, int64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    v18 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(unint64_t *a1, _OWORD *a2, int64x2_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int64x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 8 * *(*a5 + 8 * a8);
    v17 = 8 * *(*a6 + 8 * a8);
    v18 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Power,1,false>(uint64_t *result, unint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Power,2,false>(uint64_t *result, unint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Power,1,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Power,3,false>(uint64_t *result, unint64_t *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Power,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<signed char,signed char,mlx::core::detail::Power>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<signed char,signed char>(v54, v9, v10, v11, *(v8 + 160));
      goto LABEL_70;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<signed char,signed char>(v54, v9, v10, v11, *(v8 + 48));
      goto LABEL_70;
    }

    goto LABEL_8;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<signed char,signed char>(v54, v9, v10, v11, *(*a2 + 160));
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
        mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::VectorVector<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      default:
        LODWORD(v42) = v46;
LABEL_65:
        mlx::core::binary_op_dispatch_dims<signed char,signed char,false,mlx::core::detail::Power>(v9, v10, v11->i8, v42, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
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

  LOBYTE(v25) = v10->i8[0];
  if (v10->i8[0])
  {
    v26 = *v9;
    v27 = 1;
    do
    {
      v28 = v25;
      if (v25)
      {
        v29 = v26;
      }

      else
      {
        v29 = 1;
      }

      v27 *= v29;
      v25 = v25 >> 1;
      v26 *= v26;
    }

    while (v28 > 1);
  }

  else
  {
    v27 = 1;
  }

  v11->i8[0] = v27;
LABEL_70:
  v48 = *MEMORY[0x277D85DE8];
}

void sub_25A794C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<signed char,signed char>(uint64_t a1, unsigned __int8 *a2, uint8x16_t *a3, int8x16_t *a4, int a5)
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
          v8 = vshrq_n_s8(v8, 1uLL);
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
      LOBYTE(v13) = a3->i8[0];
      if (a3->i8[0])
      {
        v14 = 1;
        v15 = v5;
        do
        {
          v16 = v13;
          if (v13)
          {
            v17 = v15;
          }

          else
          {
            v17 = 1;
          }

          v14 *= v17;
          v13 = v13 >> 1;
          v15 *= v15;
        }

        while (v16 > 1);
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

void mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<signed char,signed char>(uint64_t a1, _OWORD *a2, unsigned __int8 *a3, int8x16_t *a4, int a5)
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
          v11 = vshrq_n_s8(v11, 1uLL);
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
        LOBYTE(v16) = v5;
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
          v16 = v16 >> 1;
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

void mlx::core::VectorVector<mlx::core::detail::Power>::operator()<signed char,signed char>(uint64_t a1, _OWORD *a2, uint8x16_t *a3, int8x16_t *a4, int a5)
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
          v6 = vshrq_n_s8(v6, 1uLL);
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
      LOBYTE(v11) = a3->i8[0];
      if (a3->i8[0])
      {
        v12 = *a2;
        v13 = 1;
        do
        {
          v14 = v11;
          if (v11)
          {
            v15 = v12;
          }

          else
          {
            v15 = 1;
          }

          v13 *= v15;
          v11 = v11 >> 1;
          v12 *= v12;
        }

        while (v14 > 1);
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

void mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::VectorVector<mlx::core::detail::Power>>(_OWORD *a1, uint8x16_t *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>((a1 + v61), (a2 + v54), (a3 + v19), a6, a7, a8, a9, v15);
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

void sub_25A795374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(_OWORD *a1, unsigned __int8 *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>((a1 + v61), &a2[v54], (a3 + v19), a6, a7, a8, a9, v15);
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

void sub_25A795788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(unsigned __int8 *a1, uint8x16_t *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(&a1[v61], (a2 + v54), (a3 + v19), a6, a7, a8, a9, v15);
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

void sub_25A795B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<signed char,signed char,false,mlx::core::detail::Power>(char *a1, _BYTE *a2, char *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Power,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Power,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Power,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Power,3,false>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A795FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(_OWORD *a1, uint8x16_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a5 + 8 * a8);
    v13 = *(*a6 + 8 * a8);
    v14 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<signed char,signed char>(&v15, a1, a2, a3, v14);
      a3 = (a3 + v14);
      a1 = (a1 + v12);
      a2 = (a2 + v13);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(_OWORD *a1, uint8x16_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = *(*a5 + 8 * a8);
    v16 = *(*a6 + 8 * a8);
    v17 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v17);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(_OWORD *a1, uint8x16_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = *(*a5 + 8 * a8);
    v16 = *(*a6 + 8 * a8);
    v17 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v17);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(_OWORD *a1, unsigned __int8 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a5 + 8 * a8);
    v13 = *(*a6 + 8 * a8);
    v14 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<signed char,signed char>(&v15, a1, a2, a3, v14);
      a3 = (a3 + v14);
      a1 = (a1 + v12);
      a2 += v13;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(_OWORD *a1, unsigned __int8 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = *(*a5 + 8 * a8);
    v16 = *(*a6 + 8 * a8);
    v17 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v17);
      a1 = (a1 + v15);
      a2 += v16;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(_OWORD *a1, unsigned __int8 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = *(*a5 + 8 * a8);
    v16 = *(*a6 + 8 * a8);
    v17 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v17);
      a1 = (a1 + v15);
      a2 += v16;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(unsigned __int8 *a1, uint8x16_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a5 + 8 * a8);
    v13 = *(*a6 + 8 * a8);
    v14 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<signed char,signed char>(&v15, a1, a2, a3, v14);
      a3 = (a3 + v14);
      a1 += v12;
      a2 = (a2 + v13);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(unsigned __int8 *a1, uint8x16_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = *(*a5 + 8 * a8);
    v16 = *(*a6 + 8 * a8);
    v17 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v17);
      a1 += v15;
      a2 = (a2 + v16);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(unsigned __int8 *a1, uint8x16_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = *(*a5 + 8 * a8);
    v16 = *(*a6 + 8 * a8);
    v17 = *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v17);
      a1 += v15;
      a2 = (a2 + v16);
      --v8;
    }

    while (v8);
  }
}

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Power,1,false>(char *result, _BYTE *a2, char *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      LOBYTE(v13) = *a2;
      if (*a2)
      {
        v14 = *result;
        v15 = 1;
        do
        {
          v16 = v13;
          if (v13)
          {
            v17 = v14;
          }

          else
          {
            v17 = 1;
          }

          v15 *= v17;
          v13 = v13 >> 1;
          v14 *= v14;
        }

        while (v16 > 1);
      }

      else
      {
        v15 = 1;
      }

      *a3 = v15;
      a3 += v12;
      result += v10;
      a2 += v11;
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Power,2,false>(char *result, _BYTE *a2, char *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Power,1,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Power,3,false>(char *result, _BYTE *a2, char *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Power,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<short,short,mlx::core::detail::Power>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<short,short>(v54, v9, v10, v11, *(v8 + 160));
      goto LABEL_70;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<short,short>(v54, v9, v10, v11, *(v8 + 48));
      goto LABEL_70;
    }

    goto LABEL_8;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<short,short>(v54, v9, v10, v11, *(*a2 + 160));
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
        mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::VectorVector<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      default:
        LODWORD(v42) = v46;
LABEL_65:
        mlx::core::binary_op_dispatch_dims<short,short,false,mlx::core::detail::Power>(v9, v10, v11->i16, v42, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
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

  LOWORD(v25) = *v10;
  if (*v10)
  {
    v26 = *v9;
    v27 = 1;
    do
    {
      v28 = v25;
      if (v25)
      {
        v29 = v26;
      }

      else
      {
        v29 = 1;
      }

      v27 *= v29;
      v25 = v25 >> 1;
      v26 *= v26;
    }

    while (v28 > 1);
  }

  else
  {
    v27 = 1;
  }

  v11->i16[0] = v27;
LABEL_70:
  v48 = *MEMORY[0x277D85DE8];
}

void sub_25A796CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<short,short>(uint64_t a1, unsigned __int16 *a2, _OWORD *a3, int16x8_t *a4, int a5)
{
  v5 = *a2;
  if (a5 < 16)
  {
    v14 = a5;
  }

  else
  {
    v6 = vdupq_n_s16(v5);
    v7.i64[0] = 0x1000100010001;
    v7.i64[1] = 0x1000100010001;
    do
    {
      v9 = *a3;
      v8 = *(a3 + 1);
      v10 = v6;
      v11 = v6;
      v12.i64[0] = 0x1000100010001;
      v12.i64[1] = 0x1000100010001;
      v13.i64[0] = 0x1000100010001;
      v13.i64[1] = 0x1000100010001;
      while ((vmaxvq_u16(vorrq_s8(v9, v8)) & 0x8000) != 0)
      {
        v12 = vbslq_s8(vandq_s8(v9, v7), vmulq_s16(v12, v10), v12);
        v13 = vbslq_s8(vandq_s8(v8, v7), vmulq_s16(v13, v11), v13);
        v10 = vbslq_s8(v9, vmulq_s16(v10, v10), v10);
        v11 = vbslq_s8(v8, vmulq_s16(v11, v11), v11);
        v9 = vshrq_n_s16(v9, 1uLL);
        v8 = vshrq_n_s16(v8, 1uLL);
      }

      *a4 = v12;
      a4[1] = v13;
      a4 += 2;
      a3 += 2;
      v14 = a5 - 16;
      v15 = a5 <= 31;
      a5 -= 16;
    }

    while (!v15);
  }

  if (v14 >= 1)
  {
    do
    {
      LOWORD(v16) = *a3;
      if (*a3)
      {
        v17 = 1;
        v18 = v5;
        do
        {
          v19 = v16;
          if (v16)
          {
            v20 = v18;
          }

          else
          {
            v20 = 1;
          }

          v17 *= v20;
          v16 = v16 >> 1;
          v18 *= v18;
        }

        while (v19 > 1);
      }

      else
      {
        v17 = 1;
      }

      a4->i16[0] = v17;
      a4 = (a4 + 2);
      a3 = (a3 + 2);
      v15 = v14-- <= 1;
    }

    while (!v15);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<short,short>(uint64_t a1, _OWORD *a2, unsigned __int16 *a3, int16x8_t *a4, int a5)
{
  v5 = *a3;
  if (a5 < 16)
  {
    v14 = a5;
  }

  else
  {
    v6 = vdupq_n_s16(v5);
    v7.i64[0] = 0x1000100010001;
    v7.i64[1] = 0x1000100010001;
    do
    {
      v9 = *a2;
      v8 = *(a2 + 1);
      v10 = v6;
      v11 = v6;
      v12.i64[0] = 0x1000100010001;
      v12.i64[1] = 0x1000100010001;
      v13.i64[0] = 0x1000100010001;
      v13.i64[1] = 0x1000100010001;
      while ((vmaxvq_u16(vorrq_s8(v10, v11)) & 0x8000) != 0)
      {
        v12 = vbslq_s8(vandq_s8(v10, v7), vmulq_s16(v12, v9), v12);
        v13 = vbslq_s8(vandq_s8(v11, v7), vmulq_s16(v13, v8), v13);
        v9 = vbslq_s8(v10, vmulq_s16(v9, v9), v9);
        v8 = vbslq_s8(v11, vmulq_s16(v8, v8), v8);
        v10 = vshrq_n_s16(v10, 1uLL);
        v11 = vshrq_n_s16(v11, 1uLL);
      }

      *a4 = v12;
      a4[1] = v13;
      a4 += 2;
      a2 += 2;
      v14 = a5 - 16;
      v15 = a5 <= 31;
      a5 -= 16;
    }

    while (!v15);
  }

  if (v14 >= 1)
  {
    do
    {
      if (v5)
      {
        v16 = *a2;
        v17 = 1;
        LOWORD(v18) = v5;
        do
        {
          v19 = v18;
          if (v18)
          {
            v20 = v16;
          }

          else
          {
            v20 = 1;
          }

          v17 *= v20;
          v18 = v18 >> 1;
          v16 *= v16;
        }

        while (v19 > 1);
      }

      else
      {
        v17 = 1;
      }

      a4->i16[0] = v17;
      a4 = (a4 + 2);
      a2 = (a2 + 2);
      v15 = v14-- <= 1;
    }

    while (!v15);
  }
}

void mlx::core::VectorVector<mlx::core::detail::Power>::operator()<short,short>(uint64_t a1, _OWORD *a2, _OWORD *a3, int16x8_t *a4, int a5)
{
  if (a5 < 16)
  {
    v12 = a5;
  }

  else
  {
    v5.i64[0] = 0x1000100010001;
    v5.i64[1] = 0x1000100010001;
    do
    {
      v7 = *a2;
      v6 = *(a2 + 1);
      v8.i64[0] = 0x1000100010001;
      v8.i64[1] = 0x1000100010001;
      v9.i64[0] = 0x1000100010001;
      v9.i64[1] = 0x1000100010001;
      v11 = *a3;
      for (i = *(a3 + 1); (vmaxvq_u16(vorrq_s8(v11, i)) & 0x8000) != 0; i = vshrq_n_s16(i, 1uLL))
      {
        v8 = vbslq_s8(vandq_s8(v11, v5), vmulq_s16(v8, v7), v8);
        v9 = vbslq_s8(vandq_s8(i, v5), vmulq_s16(v9, v6), v9);
        v7 = vbslq_s8(v11, vmulq_s16(v7, v7), v7);
        v6 = vbslq_s8(i, vmulq_s16(v6, v6), v6);
        v11 = vshrq_n_s16(v11, 1uLL);
      }

      *a4 = v8;
      a4[1] = v9;
      a4 += 2;
      a2 += 2;
      a3 += 2;
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
      LOWORD(v14) = *a3;
      if (*a3)
      {
        v15 = *a2;
        v16 = 1;
        do
        {
          v17 = v14;
          if (v14)
          {
            v18 = v15;
          }

          else
          {
            v18 = 1;
          }

          v16 *= v18;
          v14 = v14 >> 1;
          v15 *= v15;
        }

        while (v17 > 1);
      }

      else
      {
        v16 = 1;
      }

      a4->i16[0] = v16;
      a4 = (a4 + 2);
      a2 = (a2 + 2);
      a3 = (a3 + 2);
      v13 = v12-- <= 1;
    }

    while (!v13);
  }
}

void mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::VectorVector<mlx::core::detail::Power>>(_OWORD *a1, _OWORD *a2, int16x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>((a1 + 2 * v60), (a2 + 2 * v53), (a3 + 2 * v19), a6, a7, a8, a9, v15);
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

void sub_25A7973EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(_OWORD *a1, unsigned __int16 *a2, int16x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>((a1 + 2 * v60), &a2[v53], (a3 + 2 * v19), a6, a7, a8, a9, v15);
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

void sub_25A797804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(unsigned __int16 *a1, _OWORD *a2, int16x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(&a1[v60], (a2 + 2 * v53), (a3 + 2 * v19), a6, a7, a8, a9, v15);
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

void sub_25A797C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<short,short,false,mlx::core::detail::Power>(__int16 *a1, _WORD *a2, __int16 *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,short,mlx::core::detail::Power,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,short,mlx::core::detail::Power,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<short,short,mlx::core::detail::Power,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<short,short,mlx::core::detail::Power,3,false>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A798034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(_OWORD *a1, _OWORD *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    v14 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<short,short>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 2 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(_OWORD *a1, _OWORD *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(_OWORD *a1, _OWORD *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(_OWORD *a1, unsigned __int16 *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    v14 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<short,short>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 2 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(_OWORD *a1, unsigned __int16 *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(_OWORD *a1, unsigned __int16 *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(unsigned __int16 *a1, _OWORD *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    v14 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<short,short>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 2 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(unsigned __int16 *a1, _OWORD *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(unsigned __int16 *a1, _OWORD *a2, int16x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

__int16 *mlx::core::binary_op_dims<short,short,mlx::core::detail::Power,1,false>(__int16 *result, _WORD *a2, __int16 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      LOWORD(v13) = *a2;
      if (*a2)
      {
        v14 = *result;
        v15 = 1;
        do
        {
          v16 = v13;
          if (v13)
          {
            v17 = v14;
          }

          else
          {
            v17 = 1;
          }

          v15 *= v17;
          v13 = v13 >> 1;
          v14 *= v14;
        }

        while (v16 > 1);
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

__int16 *mlx::core::binary_op_dims<short,short,mlx::core::detail::Power,2,false>(__int16 *result, _WORD *a2, __int16 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,short,mlx::core::detail::Power,1,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<short,short,mlx::core::detail::Power,3,false>(__int16 *result, _WORD *a2, __int16 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,short,mlx::core::detail::Power,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<int,int,mlx::core::detail::Power>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<int,int>(v54, v9, v10, v11, *(v8 + 160));
      goto LABEL_70;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<int,int>(v54, v9, v10, v11, *(v8 + 48));
      goto LABEL_70;
    }

    goto LABEL_8;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<int,int>(v54, v9, v10, v11, *(*a2 + 160));
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
        mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::VectorVector<mlx::core::detail::Power>>(v9, v10, v11, v46, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
        break;
      default:
        LODWORD(v42) = v46;
LABEL_65:
        mlx::core::binary_op_dispatch_dims<int,int,false,mlx::core::detail::Power>(v9, v10->i32, v11->i32, v42, *(*a1 + 48), &__p, v52, v52 + 3, v52 + 6);
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

  v25 = v10->i32[0];
  if (v10->i32[0])
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

  v11->i32[0] = v27;
LABEL_70:
  v48 = *MEMORY[0x277D85DE8];
}

void sub_25A798D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::Power>::operator()<int,int>(uint64_t a1, unsigned int *a2, int32x4_t *a3, int32x4_t *a4, int a5)
{
  v5 = *a2;
  if (a5 < 8)
  {
    v14 = a5;
  }

  else
  {
    v6 = vdupq_n_s32(v5);
    v7.i64[0] = 0x100000001;
    v7.i64[1] = 0x100000001;
    do
    {
      v9 = *a3;
      v8 = a3[1];
      v10.i64[0] = 0x100000001;
      v10.i64[1] = 0x100000001;
      v11.i64[0] = 0x100000001;
      v11.i64[1] = 0x100000001;
      if ((vmaxvq_u32(vorrq_s8(*a3, v8)) & 0x80000000) != 0)
      {
        v12 = v6;
        v13 = v6;
        do
        {
          v10 = vbslq_s8(vandq_s8(v9, v7), vmulq_s32(v10, v12), v10);
          v11 = vbslq_s8(vandq_s8(v8, v7), vmulq_s32(v11, v13), v11);
          v12 = vbslq_s8(v9, vmulq_s32(v12, v12), v12);
          v13 = vbslq_s8(v8, vmulq_s32(v13, v13), v13);
          v9 = vshrq_n_s32(v9, 1uLL);
          v8 = vshrq_n_s32(v8, 1uLL);
        }

        while ((vmaxvq_u32(vorrq_s8(v9, v8)) & 0x80000000) != 0);
      }

      *a4 = v10;
      a4[1] = v11;
      a4 += 2;
      a3 += 2;
      v14 = a5 - 8;
      v15 = a5 <= 15;
      a5 -= 8;
    }

    while (!v15);
  }

  if (v14 >= 1)
  {
    do
    {
      v16 = a3->i32[0];
      if (a3->i32[0])
      {
        v17 = 1;
        v18 = v5;
        do
        {
          if (v16)
          {
            v19 = v18;
          }

          else
          {
            v19 = 1;
          }

          v17 *= v19;
          v18 *= v18;
          v15 = v16 > 1;
          v16 >>= 1;
        }

        while (v15);
      }

      else
      {
        v17 = 1;
      }

      a4->i32[0] = v17;
      a4 = (a4 + 4);
      a3 = (a3 + 4);
      v15 = v14-- <= 1;
    }

    while (!v15);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<int,int>(uint64_t a1, _OWORD *a2, unsigned int *a3, int32x4_t *a4, int a5)
{
  v5 = *a3;
  if (a5 < 8)
  {
    v15 = a5;
  }

  else
  {
    v6 = vdupq_n_s32(v5);
    v7 = vmaxvq_u32(v6);
    v8.i64[0] = 0x100000001;
    v8.i64[1] = 0x100000001;
    do
    {
      v9.i64[0] = 0x100000001;
      v9.i64[1] = 0x100000001;
      v10.i64[0] = 0x100000001;
      v10.i64[1] = 0x100000001;
      if ((v7 & 0x80000000) != 0)
      {
        v12 = *a2;
        v11 = *(a2 + 1);
        v13 = v6;
        v14 = v6;
        do
        {
          v9 = vbslq_s8(vandq_s8(v13, v8), vmulq_s32(v9, v12), v9);
          v10 = vbslq_s8(vandq_s8(v14, v8), vmulq_s32(v10, v11), v10);
          v12 = vbslq_s8(v13, vmulq_s32(v12, v12), v12);
          v11 = vbslq_s8(v14, vmulq_s32(v11, v11), v11);
          v13 = vshrq_n_s32(v13, 1uLL);
          v14 = vshrq_n_s32(v14, 1uLL);
        }

        while ((vmaxvq_u32(vorrq_s8(v13, v14)) & 0x80000000) != 0);
      }

      *a4 = v9;
      a4[1] = v10;
      a4 += 2;
      a2 += 2;
      v15 = a5 - 8;
      v16 = a5 <= 15;
      a5 -= 8;
    }

    while (!v16);
  }

  if (v15 >= 1)
  {
    do
    {
      if (v5)
      {
        v17 = *a2;
        v18 = 1;
        v19 = v5;
        do
        {
          if (v19)
          {
            v20 = v17;
          }

          else
          {
            v20 = 1;
          }

          v18 *= v20;
          v17 *= v17;
          v16 = v19 > 1;
          v19 >>= 1;
        }

        while (v16);
      }

      else
      {
        v18 = 1;
      }

      a4->i32[0] = v18;
      a4 = (a4 + 4);
      a2 = (a2 + 4);
      v16 = v15-- <= 1;
    }

    while (!v16);
  }
}

void mlx::core::VectorVector<mlx::core::detail::Power>::operator()<int,int>(uint64_t a1, _OWORD *a2, int32x4_t *a3, int32x4_t *a4, int a5)
{
  if (a5 < 8)
  {
    v12 = a5;
  }

  else
  {
    v5.i64[0] = 0x100000001;
    v5.i64[1] = 0x100000001;
    do
    {
      v7 = *a3;
      v6 = a3[1];
      v8.i64[0] = 0x100000001;
      v8.i64[1] = 0x100000001;
      v9.i64[0] = 0x100000001;
      v9.i64[1] = 0x100000001;
      if ((vmaxvq_u32(vorrq_s8(*a3, v6)) & 0x80000000) != 0)
      {
        v11 = *a2;
        v10 = *(a2 + 1);
        do
        {
          v8 = vbslq_s8(vandq_s8(v7, v5), vmulq_s32(v8, v11), v8);
          v9 = vbslq_s8(vandq_s8(v6, v5), vmulq_s32(v9, v10), v9);
          v11 = vbslq_s8(v7, vmulq_s32(v11, v11), v11);
          v10 = vbslq_s8(v6, vmulq_s32(v10, v10), v10);
          v7 = vshrq_n_s32(v7, 1uLL);
          v6 = vshrq_n_s32(v6, 1uLL);
        }

        while ((vmaxvq_u32(vorrq_s8(v7, v6)) & 0x80000000) != 0);
      }

      *a4 = v8;
      a4[1] = v9;
      a4 += 2;
      a2 += 2;
      a3 += 2;
      v12 = a5 - 8;
      v13 = a5 <= 15;
      a5 -= 8;
    }

    while (!v13);
  }

  if (v12 >= 1)
  {
    do
    {
      v14 = a3->i32[0];
      if (a3->i32[0])
      {
        v15 = *a2;
        v16 = 1;
        do
        {
          if (v14)
          {
            v17 = v15;
          }

          else
          {
            v17 = 1;
          }

          v16 *= v17;
          v15 *= v15;
          v13 = v14 > 1;
          v14 >>= 1;
        }

        while (v13);
      }

      else
      {
        v16 = 1;
      }

      a4->i32[0] = v16;
      a4 = (a4 + 4);
      a2 = (a2 + 4);
      a3 = (a3 + 4);
      v13 = v12-- <= 1;
    }

    while (!v13);
  }
}

void mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::VectorVector<mlx::core::detail::Power>>(_OWORD *a1, int32x4_t *a2, int32x4_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>((a1 + 4 * v60), (a2 + 4 * v53), (a3 + 4 * v19), a6, a7, a8, a9, v15);
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

void sub_25A7994F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::VectorScalar<mlx::core::detail::Power>>(_OWORD *a1, unsigned int *a2, int32x4_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Power>,3,true>((a1 + 4 * v60), &a2[v53], (a3 + 4 * v19), a6, a7, a8, a9, v15);
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

void sub_25A79990C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::ScalarVector<mlx::core::detail::Power>>(unsigned int *a1, int32x4_t *a2, int32x4_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Power>,3,true>(&a1[v60], (a2 + 4 * v53), (a3 + 4 * v19), a6, a7, a8, a9, v15);
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

void sub_25A799D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<int,int,false,mlx::core::detail::Power>(int *a1, int *a2, int *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<int,int,mlx::core::detail::Power,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<int,int,mlx::core::detail::Power,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<int,int,mlx::core::detail::Power,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<int,int,mlx::core::detail::Power,3,false>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A79A13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(_OWORD *a1, int32x4_t *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * a8);
    v14 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Power>::operator()<int,int>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 4 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(_OWORD *a1, int32x4_t *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Power>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Power>,3,true>(_OWORD *a1, int32x4_t *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Power>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Power>,1,true>(_OWORD *a1, unsigned int *a2, int32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * a8);
    v14 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::Power>::operator()<int,int>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 4 * v12);
      --v8;
    }

    while (v8);
  }
}