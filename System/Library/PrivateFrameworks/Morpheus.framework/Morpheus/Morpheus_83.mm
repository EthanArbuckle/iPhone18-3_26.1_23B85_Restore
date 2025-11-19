void sub_25A700BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::LogAddExp>::operator()<double,double>(uint64_t a1, uint64_t *a2, _OWORD *a3, int8x16_t *a4, int a5)
{
  v5 = a5;
  v17 = *a2;
  if (a5 < 4)
  {
    v11 = a5;
  }

  else
  {
    v16 = vdupq_lane_s64(*a2, 0);
    do
    {
      v19[1] = v16;
      v19[0] = v16;
      v8 = *a3;
      v9 = *(a3 + 1);
      a3 += 2;
      v18[0] = v8;
      v18[1] = v9;
      mlx::core::detail::LogAddExp::operator()<4,double>(v19, v18, v20);
      v10 = v20[1];
      *a4 = v20[0];
      a4[1] = v10;
      a4 += 2;
      v11 = v5 - 4;
      v12 = v5 > 7;
      v5 -= 4;
    }

    while (v12);
  }

  if (v11 >= 1)
  {
    v13 = v11 + 1;
    do
    {
      v14 = *a3;
      a3 = (a3 + 8);
      mlx::core::detail::LogAddExp::operator()<1,double>(*&v17, v14);
      a4->i64[0] = v15;
      a4 = (a4 + 8);
      --v13;
    }

    while (v13 > 1);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::LogAddExp>::operator()<double,double>(uint64_t a1, _OWORD *a2, uint64_t *a3, int8x16_t *a4, int a5)
{
  v5 = a5;
  v17 = *a3;
  if (a5 < 4)
  {
    v11 = a5;
  }

  else
  {
    v16 = vdupq_lane_s64(*a3, 0);
    do
    {
      v8 = *a2;
      v9 = *(a2 + 1);
      a2 += 2;
      v19[0] = v8;
      v19[1] = v9;
      v18[0] = v16;
      v18[1] = v16;
      mlx::core::detail::LogAddExp::operator()<4,double>(v19, v18, v20);
      v10 = v20[1];
      *a4 = v20[0];
      a4[1] = v10;
      a4 += 2;
      v11 = v5 - 4;
      v12 = v5 > 7;
      v5 -= 4;
    }

    while (v12);
  }

  if (v11 >= 1)
  {
    v13 = v11 + 1;
    do
    {
      v14 = *a2;
      a2 = (a2 + 8);
      mlx::core::detail::LogAddExp::operator()<1,double>(v14, *&v17);
      a4->i64[0] = v15;
      a4 = (a4 + 8);
      --v13;
    }

    while (v13 > 1);
  }
}

void mlx::core::VectorVector<mlx::core::detail::LogAddExp>::operator()<double,double>(uint64_t a1, _OWORD *a2, _OWORD *a3, int8x16_t *a4, int a5)
{
  v5 = a5;
  if (a5 < 4)
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
      mlx::core::detail::LogAddExp::operator()<4,double>(v22, v21, v23);
      v13 = v23[1];
      *a4 = v23[0];
      a4[1] = v13;
      a4 += 2;
      v14 = v5 - 4;
      v15 = v5 > 7;
      v5 -= 4;
    }

    while (v15);
  }

  if (v14 >= 1)
  {
    v16 = v14 + 1;
    do
    {
      v17 = *a2;
      a2 = (a2 + 8);
      v18 = v17;
      v19 = *a3;
      a3 = (a3 + 8);
      mlx::core::detail::LogAddExp::operator()<1,double>(v18, v19);
      a4->i64[0] = v20;
      a4 = (a4 + 8);
      --v16;
    }

    while (v16 > 1);
  }
}

void mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorVector<mlx::core::detail::LogAddExp>>(_OWORD *a1, _OWORD *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,3,true>((a1 + 8 * v60), (a2 + 8 * v53), (a3 + 8 * v19), a6, a7, a8, a9, v15);
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

void sub_25A701284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>>(_OWORD *a1, uint64_t *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,3,true>((a1 + 8 * v60), &a2[v53], (a3 + 8 * v19), a6, a7, a8, a9, v15);
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

void sub_25A70169C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>>(uint64_t *a1, _OWORD *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,3,true>(&a1[v60], (a2 + 8 * v53), (a3 + 8 * v19), a6, a7, a8, a9, v15);
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

void sub_25A701AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,double,false,mlx::core::detail::LogAddExp>(double *a1, double *a2, void *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::detail::LogAddExp,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::detail::LogAddExp,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,double,mlx::core::detail::LogAddExp,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,double,mlx::core::detail::LogAddExp,3,false>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A701ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

int8x16_t mlx::core::detail::LogAddExp::operator()<4,double>@<Q0>(float64x2_t *a1@<X1>, float64x2_t *a2@<X2>, int8x16_t *a3@<X8>)
{
  v4 = a1[1];
  v5 = a2[1];
  v24 = vmaxnmq_f64(*a1, *a2);
  v25 = vmaxnmq_f64(v4, v5);
  v6 = vminnmq_f64(*a1, *a2);
  v7 = vminnmq_f64(v4, v5);
  v8 = vdupq_n_s64(0xFFF0000000000000);
  v9 = vdupq_n_s64(0x7FF0000000000000uLL);
  v27 = vorrq_s8(vceqq_f64(v6, v8), vceqq_f64(v24, v9));
  v26 = vorrq_s8(vceqq_f64(v7, v8), vceqq_f64(v25, v9));
  v10 = vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(v6, v24)), vsubq_f64(v7, v25));
  v11 = vmulq_f32(v10, vdupq_n_s32(0x3FB8AA3Bu));
  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v12 = vrndmq_f32(vaddq_f32(v11, v8));
  v13 = vsubq_f32(v11, v12);
  __asm { FMOV            V3.4S, #1.0 }

  v19 = vmulq_f32(vmlaq_f32(_Q3, v13, vmlaq_f32(vdupq_n_s32(0x3F317218u), v13, vmlaq_f32(vdupq_n_s32(0x3E75FDEEu), v13, vmlaq_f32(vdupq_n_s32(0x3D635774u), v13, vmlaq_f32(vdupq_n_s32(0x3C1D96A6u), v13, vmlaq_f32(vdupq_n_s32(0x3AAF9F29u), vdupq_n_s32(0x3920FDDEu), v13)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v12), 0x17uLL), _Q3));
  _Q3.i64[0] = 0x7F0000007FLL;
  _Q3.i64[1] = 0x7F0000007FLL;
  v20 = vbicq_s8(vbslq_s8(vcgtq_f32(v10, vdupq_n_s32(0x42B00000u)), vnegq_f32(_Q3), vbslq_s8(vceqq_f32(v10, v10), v19, v10)), vcgtq_f32(vdupq_n_s32(0xC2B00000), v10));
  x = vcvt_hight_f64_f32(v20);
  v22 = _simd_log1p_d2(vcvtq_f64_f32(*v20.f32));
  result = vbslq_s8(v26, v25, vaddq_f64(v25, _simd_log1p_d2(x)));
  *a3 = vbslq_s8(v27, v24, vaddq_f64(v24, v22));
  a3[1] = result;
  return result;
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,1,true>(_OWORD *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::LogAddExp>::operator()<double,double>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 8 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,2,true>(_OWORD *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,3,true>(_OWORD *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,1,true>(_OWORD *a1, uint64_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::LogAddExp>::operator()<double,double>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 8 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,2,true>(_OWORD *a1, uint64_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,3,true>(_OWORD *a1, uint64_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,1,true>(uint64_t *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::LogAddExp>::operator()<double,double>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 8 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,2,true>(uint64_t *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,3,true>(uint64_t *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::detail::LogAddExp,1,false>(double *a1, double *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = 8 * *(*a5 + 8 * a8);
    v13 = 8 * *(*a6 + 8 * a8);
    v14 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::detail::LogAddExp::operator()<1,double>(*a1, *a2);
      *a3 = v15;
      a1 = (a1 + v12);
      a2 = (a2 + v13);
      a3 = (a3 + v14);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::detail::LogAddExp,2,false>(double *a1, double *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::detail::LogAddExp,1,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::detail::LogAddExp,3,false>(double *a1, double *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::detail::LogAddExp,2,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogAddExp>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      *v11 = mlx::core::detail::LogAddExp::operator()<1,mlx::core::_MLX_BFloat16>(v57, *v9, *v10);
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
          *v11++ = mlx::core::detail::LogAddExp::operator()<1,mlx::core::_MLX_BFloat16>(v57, v13, *v10++);
          --v14;
        }

        while (v14 > 1);
      }

      goto LABEL_71;
    }

LABEL_14:
    memset(v57, 0, sizeof(v57));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v57, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v17 = *a2;
    memset(v58, 0, sizeof(v58));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v58, *(v17 + 24), *(v17 + 32), (*(v17 + 32) - *(v17 + 24)) >> 3);
    v18 = *a3;
    v60[0] = 0;
    v60[1] = 0;
    v59 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v59, *(v18 + 24), *(v18 + 32), (*(v18 + 32) - *(v18 + 24)) >> 3);
    memset(v52, 0, sizeof(v52));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v52, v57, &v61, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v52, 0x7FFFFFFFuLL, &__p);
    v56 = v52;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v56);
    for (i = 0; i != -9; i -= 3)
    {
      v20 = v60[i - 1];
      if (v20)
      {
        v60[i] = v20;
        operator delete(v20);
      }
    }

    v21 = v55 + 6;
    v22 = *v55;
    v23 = (v55[1] - *v55) >> 3;
    v24 = v23 - 1;
    if (v23 - 1 >= -1)
    {
      v24 = -1;
    }

    v25 = v24 + 1;
    v26 = v23 + 1;
    v27 = v23 - 1;
    v28 = v23 - 1;
    while ((v28 & 0x80000000) == 0)
    {
      v29 = 8 * (v28 & 0x7FFFFFFF);
      --v26;
      --v28;
      if (*(v22 + v29) != *(*v21 + v29))
      {
        goto LABEL_30;
      }
    }

    v26 = v25;
LABEL_30:
    v33 = v55[3];
    v34 = (v55[4] - v33) >> 3;
    v35 = v34 - 1;
    if (v34 - 1 >= -1)
    {
      v35 = -1;
    }

    v36 = v35 + 1;
    v37 = v34 + 1;
    v38 = v34 - 1;
    v39 = v34 - 1;
    while ((v39 & 0x80000000) == 0)
    {
      v40 = 8 * (v39 & 0x7FFFFFFF);
      --v37;
      --v39;
      if (*(v33 + v40) != *(*v21 + v40))
      {
        goto LABEL_37;
      }
    }

    v37 = v36;
LABEL_37:
    v41 = v23 + 1;
    while ((v27 & 0x80000000) == 0)
    {
      v42 = *(v22 + 8 * (v27 & 0x7FFFFFFF));
      --v41;
      --v27;
      if (v42)
      {
        goto LABEL_42;
      }
    }

    v41 = v25;
LABEL_42:
    v43 = v34 + 1;
    while ((v38 & 0x80000000) == 0)
    {
      v44 = *(v33 + 8 * (v38 & 0x7FFFFFFF));
      --v43;
      --v38;
      if (v44)
      {
        goto LABEL_47;
      }
    }

    v43 = v36;
LABEL_47:
    v45 = (v54 - __p) >> 2;
    if (v26 <= v37)
    {
      v46 = v37;
    }

    else
    {
      v46 = v26;
    }

    if (v26 <= v43)
    {
      v26 = v43;
    }

    if (v41 > v37)
    {
      v37 = v41;
    }

    if (v45 > v37)
    {
      v47 = 1;
    }

    else
    {
      v37 = (v54 - __p) >> 2;
      v47 = a4;
    }

    if (v45 > v26)
    {
      v48 = 2;
    }

    else
    {
      v26 = v37;
      v48 = v47;
    }

    if (v45 <= v46)
    {
      v49 = v26;
    }

    else
    {
      v49 = v46;
    }

    if (v45 <= v46)
    {
      v50 = v48;
    }

    else
    {
      v50 = 3;
    }

    if (!v49 || *(*v21 + 8 * v49 - 8) < 16)
    {
      goto LABEL_68;
    }

    switch(v50)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>>(v9, v10, v11, v49, *(*a1 + 48), &__p, v55, v55 + 3, v55 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>>(v9, v10, v11, v49, *(*a1 + 48), &__p, v55, v55 + 3, v55 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorVector<mlx::core::detail::LogAddExp>>(v9, v10, v11, v49, *(*a1 + 48), &__p, v55, v55 + 3, v55 + 6);
        break;
      default:
        LODWORD(v45) = v49;
LABEL_68:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,false,mlx::core::detail::LogAddExp>(v9, v10, v11, v45, *(*a1 + 48), &__p, v55, v55 + 3, v55 + 6);
        break;
    }

    v57[0] = &v55;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v57);
    if (__p)
    {
      v54 = __p;
      operator delete(__p);
    }

    goto LABEL_71;
  }

  if (a4 == 2)
  {
    v30 = *(v8 + 160);
    if (v30 >= 1)
    {
      v31 = *v10;
      v32 = v30 + 1;
      do
      {
        *v11++ = mlx::core::detail::LogAddExp::operator()<1,mlx::core::_MLX_BFloat16>(v57, *v9++, v31);
        --v32;
      }

      while (v32 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_14;
    }

    v15 = *(v8 + 48);
    if (v15 >= 1)
    {
      v16 = v15 + 1;
      do
      {
        *v11++ = mlx::core::detail::LogAddExp::operator()<1,mlx::core::_MLX_BFloat16>(v57, *v9++, *v10++);
        --v16;
      }

      while (v16 > 1);
    }
  }

LABEL_71:
  v51 = *MEMORY[0x277D85DE8];
}

void sub_25A702E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorVector<mlx::core::detail::LogAddExp>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,3,true>(a1 + 2 * v60, a2 + 2 * v53, a3 + 2 * v19, a6, a7, a8, a9, v15);
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

void sub_25A703298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,3,true>(a1 + 2 * v60, &a2[v53], a3 + 2 * v19, a6, a7, a8, a9, v15);
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

void sub_25A7036B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,3,true>(a1 + 2 * v60, a2 + 2 * v53, a3 + 2 * v19, a6, a7, a8, a9, v15);
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

void sub_25A703AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,false,mlx::core::detail::LogAddExp>(uint64_t a1, unsigned __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogAddExp,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogAddExp,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogAddExp,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogAddExp,3,false>(a1 + 2 * v60, &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A703EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,1,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v17 = *(*a4 + 4 * a8);
  if (v17 >= 1)
  {
    v10 = result;
    v11 = 0;
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    v14 = 2 * *(*a6 + 8 * a8);
    do
    {
      if (v12 >= 1)
      {
        v15 = 0;
        v16 = v12 + 1;
        do
        {
          result = mlx::core::detail::LogAddExp::operator()<1,mlx::core::_MLX_BFloat16>(&v18, *(v10 + v15), *(a2 + v15));
          *(a3 + v15) = result;
          v15 += 2;
          --v16;
        }

        while (v16 > 1);
      }

      ++v11;
      v10 += v13;
      a2 += v14;
      a3 += 2 * v12;
    }

    while (v11 != v17);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,2,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,3,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,1,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v18 = *(*a4 + 4 * a8);
  if (v18 >= 1)
  {
    v10 = result;
    v11 = 0;
    v17 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    do
    {
      if (v12 >= 1)
      {
        v14 = 0;
        v15 = *a2;
        v16 = v12 + 1;
        do
        {
          result = mlx::core::detail::LogAddExp::operator()<1,mlx::core::_MLX_BFloat16>(&v19, *(v10 + v14), v15);
          *(a3 + v14) = result;
          v14 += 2;
          --v16;
        }

        while (v16 > 1);
      }

      a2 += v17;
      ++v11;
      v10 += v13;
      a3 += 2 * v12;
    }

    while (v11 != v18);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,2,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,3,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,1,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v18 = *(*a4 + 4 * a8);
  if (v18 >= 1)
  {
    v10 = result;
    v11 = 0;
    v17 = *(*a5 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a6 + 8 * a8);
    do
    {
      if (v12 >= 1)
      {
        v14 = 0;
        v15 = *v10;
        v16 = v12 + 1;
        do
        {
          result = mlx::core::detail::LogAddExp::operator()<1,mlx::core::_MLX_BFloat16>(&v19, v15, *(a2 + v14));
          *(a3 + v14) = result;
          v14 += 2;
          --v16;
        }

        while (v16 > 1);
      }

      v10 += v17;
      ++v11;
      a2 += v13;
      a3 += 2 * v12;
    }

    while (v11 != v18);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,2,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,3,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogAddExp,1,false>(uint64_t result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v11 = result;
    v12 = 2 * *(*a5 + 8 * a8);
    v13 = 2 * *(*a6 + 8 * a8);
    v14 = 2 * *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::detail::LogAddExp::operator()<1,mlx::core::_MLX_BFloat16>(&v15, *v11, *a2);
      *a3 = result;
      v11 = (v11 + v12);
      a2 = (a2 + v13);
      a3 = (a3 + v14);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogAddExp,2,false>(uint64_t result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogAddExp,1,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogAddExp,3,false>(uint64_t result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogAddExp,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogAddExp>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      mlx::core::VectorScalar<mlx::core::detail::LogAddExp>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(v51, v9, v10, v11, *(v8 + 160));
      goto LABEL_62;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::LogAddExp>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(v51, v9, v10, v11, *(v8 + 48));
      goto LABEL_62;
    }
  }

  else
  {
    if (!a4)
    {
      mlx::core::detail::LogAddExp::operator()<1,mlx::core::complex64_t>(*v9, v9[1], *v10, v10[1]);
      *v11 = v25;
      v11[1] = v26;
      goto LABEL_62;
    }

    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::LogAddExp>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(v51, v9, v10, v11, *(*a2 + 160));
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
      mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>>(v9, v10, v11, v43, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
      break;
    case 2:
      mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>>(v9, v10, v11, v43, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
      break;
    case 3:
      mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorVector<mlx::core::detail::LogAddExp>>(v9, v10, v11, v43, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
      break;
    default:
      LODWORD(v39) = v43;
LABEL_59:
      mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,false,mlx::core::detail::LogAddExp>(v9, v10, v11, v39, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
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

void sub_25A704D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::LogAddExp>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(uint64_t a1, float *a2, float *a3, _DWORD *a4, int a5)
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
      mlx::core::detail::LogAddExp::operator()<1,mlx::core::complex64_t>(v8, v7, v10, v11);
      *a4 = v12;
      a4[1] = v13;
      a4 += 2;
      --v9;
    }

    while (v9 > 1);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::LogAddExp>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(uint64_t a1, float *a2, float *a3, _DWORD *a4, int a5)
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
      mlx::core::detail::LogAddExp::operator()<1,mlx::core::complex64_t>(v10, v11, v8, v7);
      *a4 = v12;
      a4[1] = v13;
      a4 += 2;
      --v9;
    }

    while (v9 > 1);
  }
}

void mlx::core::VectorVector<mlx::core::detail::LogAddExp>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(uint64_t a1, float *a2, float *a3, _DWORD *a4, int a5)
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
      mlx::core::detail::LogAddExp::operator()<1,mlx::core::complex64_t>(v9, v10, v11, v12);
      *a4 = v13;
      a4[1] = v14;
      a4 += 2;
      --v8;
    }

    while (v8 > 1);
  }
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorVector<mlx::core::detail::LogAddExp>>(float *a1, float *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,3,true>(&a1[2 * v60], &a2[2 * v53], &a3[2 * v19], a6, a7, a8, a9, v15);
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

void sub_25A7052D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>>(float *a1, float *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,3,true>(&a1[2 * v60], &a2[2 * v53], &a3[2 * v19], a6, a7, a8, a9, v15);
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

void sub_25A7056F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>>(float *a1, float *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,3,true>(&a1[2 * v60], &a2[2 * v53], &a3[2 * v19], a6, a7, a8, a9, v15);
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

void sub_25A705B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,false,mlx::core::detail::LogAddExp>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogAddExp,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogAddExp,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogAddExp,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogAddExp,3,false>(a1 + 8 * v60, a2 + 8 * v53, a3 + 8 * v19, a6, a7, a8, a9, v15);
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

void sub_25A705F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,1,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::LogAddExp>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 += 2 * v12;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,2,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,3,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,1,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::LogAddExp>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 += 2 * v12;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,2,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,3,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,1,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::LogAddExp>::operator()<mlx::core::complex64_t,mlx::core::complex64_t>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 += 2 * v12;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,2,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,3,true>(float *a1, float *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::LogAddExp>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogAddExp,1,false>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      mlx::core::detail::LogAddExp::operator()<1,mlx::core::complex64_t>(*(v10 - 1), *v10, *(v11 - 1), *v11);
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

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogAddExp,2,false>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogAddExp,1,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogAddExp,3,false>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogAddExp,2,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary_float<mlx::core::detail::LogAddExp>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogAddExp,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary_float<mlx::core::detail::LogAddExp>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogAddExp,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C02210;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary_float<mlx::core::detail::LogAddExp>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogAddExp,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary_float<mlx::core::detail::LogAddExp>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogAddExp,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C02210;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary_float<mlx::core::detail::LogAddExp>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogAddExp,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary_float<mlx::core::detail::LogAddExp>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogAddExp,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286C02210;
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

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary_float<mlx::core::detail::LogAddExp>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogAddExp,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary_float<mlx::core::detail::LogAddExp>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogAddExp,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary_float<mlx::core::detail::LogAddExp>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogAddExp,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary_float<mlx::core::detail::LogAddExp>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogAddExp,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary_float<mlx::core::detail::LogAddExp>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogAddExp,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary_float<mlx::core::detail::LogAddExp>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogAddExp,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail10LogicalAndEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286C02308;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail10LogicalAndEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286C02308;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail10LogicalAndEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C02308;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail10LogicalAndEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail10LogicalAndEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail10LogicalAndEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEEclEv(uint64_t a1, int8x16_t a2)
{
  v3 = mlx::core::scheduler::scheduler(v2);

  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_16binaryINS3_6detail10LogicalAndEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::LogicalAnd>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::LogicalAnd,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1, int8x16_t a2)
{
  v2 = (a1 + 32);
  switch(*(*(a1 + 32) + 56))
  {
    case 0:
      mlx::core::binary_op<BOOL,BOOL,mlx::core::detail::LogicalAnd>(a1, (a1 + 16), v2, *(a1 + 48));
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
      mlx::core::binary_op<unsigned char,unsigned char,mlx::core::detail::LogicalAnd>(a1, v10, v2, v9, a2);
      return;
    case 6:
      v5 = *(a1 + 48);
      v6 = (a1 + 16);
LABEL_9:
      mlx::core::binary_op<unsigned short,unsigned short,mlx::core::detail::LogicalAnd>(a1, v6, v2, v5, a2);
      break;
    case 7:
      v7 = *(a1 + 48);
      v8 = (a1 + 16);
LABEL_11:
      mlx::core::binary_op<unsigned int,unsigned int,mlx::core::detail::LogicalAnd>(a1, v8, v2, v7, a2);
      break;
    case 8:
      v3 = *(a1 + 48);
      v4 = (a1 + 16);
LABEL_5:
      mlx::core::binary_op<unsigned long long,unsigned long long,mlx::core::detail::LogicalAnd>(a1, v4, v2, v3, a2);
      break;
    case 9:
      mlx::core::binary_op<half,half,mlx::core::detail::LogicalAnd>(a1, (a1 + 16), v2, *(a1 + 48), a2);
      break;
    case 0xA:
      mlx::core::binary_op<float,float,mlx::core::detail::LogicalAnd>(a1, (a1 + 16), v2, *(a1 + 48), a2);
      break;
    case 0xB:
      mlx::core::binary_op<double,double,mlx::core::detail::LogicalAnd>(a1, (a1 + 16), v2, *(a1 + 48), a2);
      break;
    case 0xC:
      mlx::core::binary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::LogicalAnd>(a1, (a1 + 16), v2, *(a1 + 48));
      break;
    case 0xD:
      mlx::core::binary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::LogicalAnd>(a1, (a1 + 16), v2, *(a1 + 48));
      break;
    default:
      return;
  }
}

void mlx::core::binary_op<BOOL,BOOL,mlx::core::detail::LogicalAnd>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      *v11 = *v10 & *v9;
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
          *v11++ = v13 & v15;
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
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      default:
        LODWORD(v50) = v54;
LABEL_68:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,false,mlx::core::detail::LogicalAnd>(v9, v10, v11, v50, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
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
        *v11++ = v37 & v35 & 1;
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
        *v11++ = v18 & v20 & 1;
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_71:
  v56 = *MEMORY[0x277D85DE8];
}

void sub_25A7073DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
            v22 = 0;
            v23 = v21 + 1;
            do
            {
              *(v12 + v22) = *(v14 + v22) & *(v13 + v22) & 1;
              ++v22;
              --v23;
            }

            while (v23 > 1);
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
      mlx::core::ContiguousIterator::ContiguousIterator(&v68, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v61, a6, a8, v15);
      if (a5 >= 1)
      {
        v25 = a5;
        v26 = 0;
        v60 = (*a9)[a4 - 4];
        v27 = v25;
        do
        {
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(v14 + v68, v13 + v61, v12 + v26, a6, a7, a8, a9, v15);
          v28 = v70 - v69;
          v29 = (v70 - v69) >> 2;
          if (v29)
          {
            v30 = v73;
            v31 = ((v28 << 30) - 0x100000000) >> 32;
            v32 = v73 + 4 * v31;
            v33 = *v32;
            v34 = v69 + 4 * v31;
            v35 = v71;
            v36 = v68;
            if (v29 >= 2 && v33 == *v34 - 1)
            {
              v39 = (v28 >> 2) & 0x7FFFFFFF;
              v38 = v39 - 1;
              v40 = 4 * v39;
              v41 = v69 - 8;
              do
              {
                v42 = v38;
                *v32 = 0;
                v36 -= v35[v31] * (*v34 - 1);
                v68 = v36;
                --v38;
                v32 = &v30[v40 - 8];
                v33 = *v32;
                v30 -= 4;
                if (v42 < 2)
                {
                  break;
                }

                v34 = &v41[v40];
                v43 = *&v41[4 * v39] - 1;
                v41 -= 4;
                v31 = v38;
              }

              while (v33 == v43);
              v32 = &v30[4 * v39 - 4];
            }

            else
            {
              v38 = ((v28 << 30) - 0x100000000) >> 32;
            }

            *v32 = v33 + 1;
            v68 = v35[v38] + v36;
          }

          v44 = v63 - v62;
          v45 = (v63 - v62) >> 2;
          if (v45)
          {
            v46 = __p;
            v47 = ((v44 << 30) - 0x100000000) >> 32;
            v48 = __p + 4 * v47;
            v49 = *v48;
            v50 = v62 + 4 * v47;
            v51 = v64;
            v52 = v61;
            if (v45 >= 2 && v49 == *v50 - 1)
            {
              v55 = (v44 >> 2) & 0x7FFFFFFF;
              v54 = v55 - 1;
              v56 = 4 * v55;
              v57 = v62 - 8;
              do
              {
                v58 = v54;
                *v48 = 0;
                v52 -= v51[v47] * (*v50 - 1);
                v61 = v52;
                --v54;
                v48 = &v46[v56 - 8];
                v49 = *v48;
                v46 -= 4;
                if (v58 < 2)
                {
                  break;
                }

                v50 = &v57[v56];
                v59 = *&v57[4 * v55] - 1;
                v57 -= 4;
                v47 = v54;
              }

              while (v49 == v59);
              v48 = &v46[4 * v55 - 4];
            }

            else
            {
              v54 = ((v44 << 30) - 0x100000000) >> 32;
            }

            *v48 = v49 + 1;
            v61 = v51[v54] + v52;
          }

          v26 += v60;
        }

        while (v26 < v27);
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

void sub_25A707888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(uint64_t a1, char *a2, uint64_t a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
            v22 = 0;
            v23 = *v13;
            v24 = v21 + 1;
            do
            {
              *(v12 + v22) = *(v14 + v22) & v23 & 1;
              ++v22;
              --v24;
            }

            while (v24 > 1);
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
      mlx::core::ContiguousIterator::ContiguousIterator(&v69, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a8, v15);
      if (a5 >= 1)
      {
        v26 = a5;
        v27 = 0;
        v61 = (*a9)[a4 - 4];
        v28 = v26;
        do
        {
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(v14 + v69, &v13[v62], v12 + v27, a6, a7, a8, a9, v15);
          v29 = v71 - v70;
          v30 = (v71 - v70) >> 2;
          if (v30)
          {
            v31 = v74;
            v32 = ((v29 << 30) - 0x100000000) >> 32;
            v33 = v74 + 4 * v32;
            v34 = *v33;
            v35 = v70 + 4 * v32;
            v36 = v72;
            v37 = v69;
            if (v30 >= 2 && v34 == *v35 - 1)
            {
              v40 = (v29 >> 2) & 0x7FFFFFFF;
              v39 = v40 - 1;
              v41 = 4 * v40;
              v42 = v70 - 8;
              do
              {
                v43 = v39;
                *v33 = 0;
                v37 -= v36[v32] * (*v35 - 1);
                v69 = v37;
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
            v69 = v36[v39] + v37;
          }

          v45 = v64 - v63;
          v46 = (v64 - v63) >> 2;
          if (v46)
          {
            v47 = __p;
            v48 = ((v45 << 30) - 0x100000000) >> 32;
            v49 = __p + 4 * v48;
            v50 = *v49;
            v51 = v63 + 4 * v48;
            v52 = v65;
            v53 = v62;
            if (v46 >= 2 && v50 == *v51 - 1)
            {
              v56 = (v45 >> 2) & 0x7FFFFFFF;
              v55 = v56 - 1;
              v57 = 4 * v56;
              v58 = v63 - 8;
              do
              {
                v59 = v55;
                *v49 = 0;
                v53 -= v52[v48] * (*v51 - 1);
                v62 = v53;
                --v55;
                v49 = &v47[v57 - 8];
                v50 = *v49;
                v47 -= 4;
                if (v59 < 2)
                {
                  break;
                }

                v51 = &v58[v57];
                v60 = *&v58[4 * v56] - 1;
                v58 -= 4;
                v48 = v55;
              }

              while (v50 == v60);
              v49 = &v47[4 * v56 - 4];
            }

            else
            {
              v55 = ((v45 << 30) - 0x100000000) >> 32;
            }

            *v49 = v50 + 1;
            v62 = v52[v55] + v53;
          }

          v27 += v61;
        }

        while (v27 < v28);
      }

      if (__p)
      {
        v68 = __p;
        operator delete(__p);
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

      if (v74)
      {
        v75 = v74;
        operator delete(v74);
      }

      if (v72)
      {
        v73 = v72;
        operator delete(v72);
      }

      if (v70)
      {
        v71 = v70;
        operator delete(v70);
      }

      break;
  }
}

void sub_25A707CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(char *a1, uint64_t a2, uint64_t a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
            v22 = 0;
            v23 = *v14;
            v24 = v21 + 1;
            do
            {
              *(v12 + v22) = v23 & *(v13 + v22);
              ++v22;
              --v24;
            }

            while (v24 > 1);
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
      mlx::core::ContiguousIterator::ContiguousIterator(&v69, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v62, a6, a8, v15);
      if (a5 >= 1)
      {
        v26 = a5;
        v27 = 0;
        v61 = (*a9)[a4 - 4];
        v28 = v26;
        do
        {
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(&v14[v69], v13 + v62, v12 + v27, a6, a7, a8, a9, v15);
          v29 = v71 - v70;
          v30 = (v71 - v70) >> 2;
          if (v30)
          {
            v31 = v74;
            v32 = ((v29 << 30) - 0x100000000) >> 32;
            v33 = v74 + 4 * v32;
            v34 = *v33;
            v35 = v70 + 4 * v32;
            v36 = v72;
            v37 = v69;
            if (v30 >= 2 && v34 == *v35 - 1)
            {
              v40 = (v29 >> 2) & 0x7FFFFFFF;
              v39 = v40 - 1;
              v41 = 4 * v40;
              v42 = v70 - 8;
              do
              {
                v43 = v39;
                *v33 = 0;
                v37 -= v36[v32] * (*v35 - 1);
                v69 = v37;
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
            v69 = v36[v39] + v37;
          }

          v45 = v64 - v63;
          v46 = (v64 - v63) >> 2;
          if (v46)
          {
            v47 = __p;
            v48 = ((v45 << 30) - 0x100000000) >> 32;
            v49 = __p + 4 * v48;
            v50 = *v49;
            v51 = v63 + 4 * v48;
            v52 = v65;
            v53 = v62;
            if (v46 >= 2 && v50 == *v51 - 1)
            {
              v56 = (v45 >> 2) & 0x7FFFFFFF;
              v55 = v56 - 1;
              v57 = 4 * v56;
              v58 = v63 - 8;
              do
              {
                v59 = v55;
                *v49 = 0;
                v53 -= v52[v48] * (*v51 - 1);
                v62 = v53;
                --v55;
                v49 = &v47[v57 - 8];
                v50 = *v49;
                v47 -= 4;
                if (v59 < 2)
                {
                  break;
                }

                v51 = &v58[v57];
                v60 = *&v58[4 * v56] - 1;
                v58 -= 4;
                v48 = v55;
              }

              while (v50 == v60);
              v49 = &v47[4 * v56 - 4];
            }

            else
            {
              v55 = ((v45 << 30) - 0x100000000) >> 32;
            }

            *v49 = v50 + 1;
            v62 = v52[v55] + v53;
          }

          v27 += v61;
        }

        while (v27 < v28);
      }

      if (__p)
      {
        v68 = __p;
        operator delete(__p);
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

      if (v74)
      {
        v75 = v74;
        operator delete(v74);
      }

      if (v72)
      {
        v73 = v72;
        operator delete(v72);
      }

      if (v70)
      {
        v71 = v70;
        operator delete(v70);
      }

      break;
  }
}

void sub_25A70810C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,false,mlx::core::detail::LogicalAnd>(_BYTE *a1, _BYTE *a2, _BYTE *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::LogicalAnd,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::LogicalAnd,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v13 & *v14;
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
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::LogicalAnd,3,false>(&v14[v65], &v13[v58], &v12[v23], a6, a7, a8, a9, v15);
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

void sub_25A708520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = a8 + 1;
    v14 = *(*a5 + 8 * v13);
    v15 = *(*a6 + 8 * v13);
    v16 = *(*a7 + 8 * v13);
    v17 = *(*a4 + 4 * v13);
    do
    {
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = result;
        v20 = a2;
        v21 = a3;
        do
        {
          if (v16 >= 1)
          {
            v22 = 0;
            v23 = v16 + 1;
            do
            {
              *(v21 + v22) = *(v19 + v22) & *(v20 + v22) & 1;
              ++v22;
              --v23;
            }

            while (v23 > 1);
          }

          v21 += v16;
          v19 += v14;
          v20 += v15;
          ++v18;
        }

        while (v18 != v17);
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

uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(uint64_t result, char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = a8 + 1;
    v14 = *(*a5 + 8 * v13);
    v15 = *(*a6 + 8 * v13);
    v16 = *(*a7 + 8 * v13);
    v17 = *(*a4 + 4 * v13);
    do
    {
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = result;
        v20 = a2;
        v21 = a3;
        do
        {
          if (v16 >= 1)
          {
            v22 = 0;
            v23 = *v20;
            v24 = v16 + 1;
            do
            {
              *(v21 + v22) = *(v19 + v22) & v23 & 1;
              ++v22;
              --v24;
            }

            while (v24 > 1);
          }

          v21 += v16;
          v19 += v14;
          v20 += v15;
          ++v18;
        }

        while (v18 != v17);
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

uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(uint64_t result, char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(char *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = a8 + 1;
    v14 = *(*a5 + 8 * v13);
    v15 = *(*a6 + 8 * v13);
    v16 = *(*a7 + 8 * v13);
    v17 = *(*a4 + 4 * v13);
    do
    {
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = result;
        v20 = a2;
        v21 = a3;
        do
        {
          if (v16 >= 1)
          {
            v22 = 0;
            v23 = *v19;
            v24 = v16 + 1;
            do
            {
              *(v21 + v22) = v23 & *(v20 + v22);
              ++v22;
              --v24;
            }

            while (v24 > 1);
          }

          v21 += v16;
          v19 += v14;
          v20 += v15;
          ++v18;
        }

        while (v18 != v17);
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

char *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(char *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

_BYTE *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::LogicalAnd,2,false>(_BYTE *result, _BYTE *a2, _BYTE *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = *v21 & *v20;
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

_BYTE *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::LogicalAnd,3,false>(_BYTE *result, _BYTE *a2, _BYTE *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::LogicalAnd,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<unsigned char,unsigned char,mlx::core::detail::LogicalAnd>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int8x16_t a5)
{
  v90 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*a1 + 152);
  v11 = *(*a2 + 152);
  v12 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      if (*v10)
      {
        v38 = *v11 == 0;
      }

      else
      {
        v38 = 1;
      }

      v39 = !v38;
      *v12 = v39;
      goto LABEL_108;
    }

    if (a4 == 1)
    {
      v13 = *(*a2 + 160);
      v14 = *v10;
      if (v13 < 16)
      {
        v17 = *(*a2 + 160);
      }

      else
      {
        a5.i32[0] = *v10;
        v15 = vdupq_lane_s8(*&vtstq_s8(a5, a5), 0);
        do
        {
          v16 = *v11;
          v11 += 16;
          *v12 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v15, vceqzq_s8(v16)), 7uLL));
          v12 += 16;
          v17 = v13 - 16;
          v18 = v13 > 0x1F;
          v13 -= 16;
        }

        while (v18);
      }

      if (v17 >= 1)
      {
        v63 = v17 + 1;
        do
        {
          v65 = *v11++;
          v64 = v65;
          if (v14)
          {
            v66 = v64 == 0;
          }

          else
          {
            v66 = 1;
          }

          v67 = !v66;
          *v12++ = v67;
          --v63;
        }

        while (v63 > 1);
      }

      goto LABEL_108;
    }

LABEL_13:
    memset(v86, 0, sizeof(v86));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v86, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
    v24 = *a2;
    memset(v87, 0, sizeof(v87));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v87, *(v24 + 24), *(v24 + 32), (*(v24 + 32) - *(v24 + 24)) >> 3);
    v25 = *a3;
    v89[0] = 0;
    v89[1] = 0;
    v88 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v88, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 3);
    memset(v81, 0, sizeof(v81));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v81, v86, &v90, 3uLL);
    mlx::core::collapse_contiguous_dims(v9, v81, 0x7FFFFFFFuLL, &__p);
    v85 = v81;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v85);
    for (i = 0; i != -9; i -= 3)
    {
      v28 = v89[i - 1];
      if (v28)
      {
        v89[i] = v28;
        operator delete(v28);
      }
    }

    v29 = v84 + 6;
    v30 = *v84;
    v31 = (v84[1] - *v84) >> 3;
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
        goto LABEL_35;
      }
    }

    v34 = v33;
LABEL_35:
    v45 = v84[3];
    v46 = (v84[4] - v45) >> 3;
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
        goto LABEL_42;
      }
    }

    v49 = v48;
LABEL_42:
    v53 = v31 + 1;
    while ((v35 & 0x80000000) == 0)
    {
      v54 = *(v30 + 8 * (v35 & 0x7FFFFFFF));
      --v53;
      --v35;
      if (v54)
      {
        goto LABEL_47;
      }
    }

    v53 = v33;
LABEL_47:
    v55 = v46 + 1;
    while ((v50 & 0x80000000) == 0)
    {
      v56 = *(v45 + 8 * (v50 & 0x7FFFFFFF));
      --v55;
      --v50;
      if (v56)
      {
        goto LABEL_52;
      }
    }

    v55 = v48;
LABEL_52:
    v57 = (v83 - __p) >> 2;
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
      v49 = (v83 - __p) >> 2;
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
      goto LABEL_73;
    }

    switch(v62)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(v10, v11, v12, v61, *(*a1 + 48), &__p, v84, v84 + 3, v26, v84 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(v10, v11, v12, v61, *(*a1 + 48), &__p, v84, v84 + 3, v26, v84 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(v10, v11, v12, v61, *(*a1 + 48), &__p, v84, v84 + 3, v84 + 6);
        break;
      default:
        LODWORD(v57) = v61;
LABEL_73:
        mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,false,mlx::core::detail::LogicalAnd>(v10, v11, v12, v57, *(*a1 + 48), &__p, v84, v84 + 3, v84 + 6);
        break;
    }

    v86[0] = &v84;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v86);
    if (__p)
    {
      v83 = __p;
      operator delete(__p);
    }

    goto LABEL_108;
  }

  if (a4 == 2)
  {
    v40 = *(v9 + 160);
    v41 = *v11;
    if (v40 < 16)
    {
      v44 = *(v9 + 160);
    }

    else
    {
      a5.i32[0] = *v11;
      v42 = vdupq_lane_s8(*&vtstq_s8(a5, a5), 0);
      do
      {
        v43 = *v10;
        v10 += 16;
        *v12 = vcltzq_s8(vshlq_n_s8(vbicq_s8(v42, vceqzq_s8(v43)), 7uLL));
        v12 += 16;
        v44 = v40 - 16;
        v18 = v40 > 0x1F;
        v40 -= 16;
      }

      while (v18);
    }

    if (v44 >= 1)
    {
      v75 = v44 + 1;
      do
      {
        v77 = *v10++;
        v76 = v77;
        if (v41)
        {
          v78 = v76 == 0;
        }

        else
        {
          v78 = 1;
        }

        v79 = !v78;
        *v12++ = v79;
        --v75;
      }

      while (v75 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_13;
    }

    v19 = *(v9 + 48);
    if (v19 < 16)
    {
      v23 = *(v9 + 48);
    }

    else
    {
      do
      {
        v20 = *v10;
        v10 += 16;
        v21 = v20;
        v22 = *v11;
        v11 += 16;
        *v12 = vbicq_s8(vtstq_s8(v22, v22), vceqzq_s8(v21));
        v12 += 16;
        v23 = v19 - 16;
        v18 = v19 > 0x1F;
        v19 -= 16;
      }

      while (v18);
    }

    if (v23 >= 1)
    {
      v68 = v23 + 1;
      do
      {
        v70 = *v10++;
        v69 = v70;
        v72 = *v11++;
        v71 = v72;
        if (v69)
        {
          v73 = v71 == 0;
        }

        else
        {
          v73 = 1;
        }

        v74 = !v73;
        *v12++ = v74;
        --v68;
      }

      while (v68 > 1);
    }
  }

LABEL_108:
  v80 = *MEMORY[0x277D85DE8];
}

void sub_25A7090CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(unsigned __int8 *a1, unsigned __int8 *a2, char *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A709548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(unsigned __int8 *a1, unsigned __int8 *a2, char *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int8x16_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v63, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v56, a6, a8, v16);
      if (a5 >= 1)
      {
        v20 = a5;
        v21 = 0;
        v55 = *(*a10 + 8 * a4 - 32);
        v22 = v20;
        do
        {
          mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(&a1[v63], &a2[v56], &a3[v21], a6, a7, a8, a10, v16, v19);
          v23 = v65 - v64;
          v24 = (v65 - v64) >> 2;
          if (v24)
          {
            v25 = v68;
            v26 = ((v23 << 30) - 0x100000000) >> 32;
            v27 = v68 + 4 * v26;
            v28 = *v27;
            v29 = v64 + 4 * v26;
            v30 = v66;
            v31 = v63;
            if (v24 >= 2 && v28 == *v29 - 1)
            {
              v34 = (v23 >> 2) & 0x7FFFFFFF;
              v33 = v34 - 1;
              v35 = 4 * v34;
              v36 = v64 - 8;
              do
              {
                v37 = v33;
                *v27 = 0;
                v31 -= v30[v26] * (*v29 - 1);
                v63 = v31;
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
            v63 = v30[v33] + v31;
          }

          v39 = v58 - v57;
          v40 = (v58 - v57) >> 2;
          if (v40)
          {
            v41 = __p;
            v42 = ((v39 << 30) - 0x100000000) >> 32;
            v43 = __p + 4 * v42;
            v44 = *v43;
            v45 = v57 + 4 * v42;
            v46 = v59;
            v47 = v56;
            if (v40 >= 2 && v44 == *v45 - 1)
            {
              v50 = (v39 >> 2) & 0x7FFFFFFF;
              v49 = v50 - 1;
              v51 = 4 * v50;
              v52 = v57 - 8;
              do
              {
                v53 = v49;
                *v43 = 0;
                v47 -= v46[v42] * (*v45 - 1);
                v56 = v47;
                --v49;
                v43 = &v41[v51 - 8];
                v44 = *v43;
                v41 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v45 = &v52[v51];
                v54 = *&v52[4 * v50] - 1;
                v52 -= 4;
                v42 = v49;
              }

              while (v44 == v54);
              v43 = &v41[4 * v50 - 4];
            }

            else
            {
              v49 = ((v39 << 30) - 0x100000000) >> 32;
            }

            *v43 = v44 + 1;
            v56 = v46[v49] + v47;
          }

          v21 += v55;
        }

        while (v21 < v22);
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

void sub_25A70995C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(unsigned __int8 *a1, unsigned __int8 *a2, char *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int8x16_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v63, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v56, a6, a8, v16);
      if (a5 >= 1)
      {
        v20 = a5;
        v21 = 0;
        v55 = *(*a10 + 8 * a4 - 32);
        v22 = v20;
        do
        {
          mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(&a1[v63], &a2[v56], &a3[v21], a6, a7, a8, a10, v16, v19);
          v23 = v65 - v64;
          v24 = (v65 - v64) >> 2;
          if (v24)
          {
            v25 = v68;
            v26 = ((v23 << 30) - 0x100000000) >> 32;
            v27 = v68 + 4 * v26;
            v28 = *v27;
            v29 = v64 + 4 * v26;
            v30 = v66;
            v31 = v63;
            if (v24 >= 2 && v28 == *v29 - 1)
            {
              v34 = (v23 >> 2) & 0x7FFFFFFF;
              v33 = v34 - 1;
              v35 = 4 * v34;
              v36 = v64 - 8;
              do
              {
                v37 = v33;
                *v27 = 0;
                v31 -= v30[v26] * (*v29 - 1);
                v63 = v31;
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
            v63 = v30[v33] + v31;
          }

          v39 = v58 - v57;
          v40 = (v58 - v57) >> 2;
          if (v40)
          {
            v41 = __p;
            v42 = ((v39 << 30) - 0x100000000) >> 32;
            v43 = __p + 4 * v42;
            v44 = *v43;
            v45 = v57 + 4 * v42;
            v46 = v59;
            v47 = v56;
            if (v40 >= 2 && v44 == *v45 - 1)
            {
              v50 = (v39 >> 2) & 0x7FFFFFFF;
              v49 = v50 - 1;
              v51 = 4 * v50;
              v52 = v57 - 8;
              do
              {
                v53 = v49;
                *v43 = 0;
                v47 -= v46[v42] * (*v45 - 1);
                v56 = v47;
                --v49;
                v43 = &v41[v51 - 8];
                v44 = *v43;
                v41 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v45 = &v52[v51];
                v54 = *&v52[4 * v50] - 1;
                v52 -= 4;
                v42 = v49;
              }

              while (v44 == v54);
              v43 = &v41[4 * v50 - 4];
            }

            else
            {
              v49 = ((v39 << 30) - 0x100000000) >> 32;
            }

            *v43 = v44 + 1;
            v56 = v46[v49] + v47;
          }

          v21 += v55;
        }

        while (v21 < v22);
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

void sub_25A709D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,false,mlx::core::detail::LogicalAnd>(_BYTE *a1, _BYTE *a2, char *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::LogicalAnd,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::LogicalAnd,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          v12 += v20;
          v14 += v18;
          v13 += v19;
          --v17;
        }

        while (v17);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v67, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v60, a6, a8, v15);
      if (a5 >= 1)
      {
        v24 = a5;
        v25 = 0;
        v59 = (*a9)[a4 - 4];
        v26 = v24;
        do
        {
          mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::LogicalAnd,3,false>(&v14[v67], &v13[v60], &v12[v25], a6, a7, a8, a9, v15);
          v27 = v69 - v68;
          v28 = (v69 - v68) >> 2;
          if (v28)
          {
            v29 = v72;
            v30 = ((v27 << 30) - 0x100000000) >> 32;
            v31 = v72 + 4 * v30;
            v32 = *v31;
            v33 = v68 + 4 * v30;
            v34 = v70;
            v35 = v67;
            if (v28 >= 2 && v32 == *v33 - 1)
            {
              v38 = (v27 >> 2) & 0x7FFFFFFF;
              v37 = v38 - 1;
              v39 = 4 * v38;
              v40 = v68 - 8;
              do
              {
                v41 = v37;
                *v31 = 0;
                v35 -= v34[v30] * (*v33 - 1);
                v67 = v35;
                --v37;
                v31 = &v29[v39 - 8];
                v32 = *v31;
                v29 -= 4;
                if (v41 < 2)
                {
                  break;
                }

                v33 = &v40[v39];
                v42 = *&v40[4 * v38] - 1;
                v40 -= 4;
                v30 = v37;
              }

              while (v32 == v42);
              v31 = &v29[4 * v38 - 4];
            }

            else
            {
              v37 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v31 = v32 + 1;
            v67 = v34[v37] + v35;
          }

          v43 = v62 - v61;
          v44 = (v62 - v61) >> 2;
          if (v44)
          {
            v45 = __p;
            v46 = ((v43 << 30) - 0x100000000) >> 32;
            v47 = __p + 4 * v46;
            v48 = *v47;
            v49 = v61 + 4 * v46;
            v50 = v63;
            v51 = v60;
            if (v44 >= 2 && v48 == *v49 - 1)
            {
              v54 = (v43 >> 2) & 0x7FFFFFFF;
              v53 = v54 - 1;
              v55 = 4 * v54;
              v56 = v61 - 8;
              do
              {
                v57 = v53;
                *v47 = 0;
                v51 -= v50[v46] * (*v49 - 1);
                v60 = v51;
                --v53;
                v47 = &v45[v55 - 8];
                v48 = *v47;
                v45 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v49 = &v56[v55];
                v58 = *&v56[4 * v54] - 1;
                v56 -= 4;
                v46 = v53;
              }

              while (v48 == v58);
              v47 = &v45[4 * v54 - 4];
            }

            else
            {
              v53 = ((v43 << 30) - 0x100000000) >> 32;
            }

            *v47 = v48 + 1;
            v60 = v50[v53] + v51;
          }

          v25 += v59;
        }

        while (v25 < v26);
      }

      if (__p)
      {
        v66 = __p;
        operator delete(__p);
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

      if (v72)
      {
        v73 = v72;
        operator delete(v72);
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

      break;
  }
}

void sub_25A70A18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(unsigned __int8 *result, unsigned __int8 *a2, char *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *&a3[v17] = vbicq_s8(vtstq_s8(*&a2[v17], *&a2[v17]), vceqzq_s8(*&result[v17]));
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
          if (v20)
          {
            v24 = v22 == 0;
          }

          else
          {
            v24 = 1;
          }

          v25 = !v24;
          *v14++ = v25;
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

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(unsigned __int8 *result, unsigned __int8 *a2, char *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(unsigned __int8 *result, unsigned __int8 *a2, char *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(unsigned __int8 *result, unsigned __int8 *a2, char *a3, void *a4, void *a5, void *a6, void *a7, int a8, int8x16_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a5 + 8 * a8);
    v12 = *(*a6 + 8 * a8);
    v13 = *(*a7 + 8 * a8);
    do
    {
      v14 = *a2;
      v15 = v13;
      v16 = a3;
      v17 = result;
      if (v13 >= 16)
      {
        v18 = 0;
        a9.i32[0] = *a2;
        a9 = vdupq_lane_s8(*&vtstq_s8(a9, a9), 0);
        v15 = v13;
        do
        {
          v19 = v15;
          *&a3[v18] = vcltzq_s8(vshlq_n_s8(vbicq_s8(a9, vceqzq_s8(*&result[v18])), 7uLL));
          v15 -= 16;
          v18 += 16;
        }

        while (v19 > 0x1F);
        v17 = &result[v18];
        v16 = &a3[v18];
      }

      if (v15 >= 1)
      {
        v20 = v15 + 1;
        do
        {
          v22 = *v17++;
          v21 = v22;
          if (v14)
          {
            v23 = v21 == 0;
          }

          else
          {
            v23 = 1;
          }

          v24 = !v23;
          *v16++ = v24;
          --v20;
        }

        while (v20 > 1);
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

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(unsigned __int8 *result, unsigned __int8 *a2, char *a3, void *a4, void *a5, void *a6, void *a7, int a8, int8x16_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = *(*a5 + 8 * a8);
    v17 = *(*a6 + 8 * a8);
    v18 = *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a3 += v18;
      v15 += v16;
      a2 += v17;
      --v9;
    }

    while (v9);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(unsigned __int8 *result, unsigned __int8 *a2, char *a3, void *a4, void *a5, void *a6, void *a7, int a8, int8x16_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = *(*a5 + 8 * a8);
    v17 = *(*a6 + 8 * a8);
    v18 = *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a3 += v18;
      v15 += v16;
      a2 += v17;
      --v9;
    }

    while (v9);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(unsigned __int8 *result, unsigned __int8 *a2, char *a3, void *a4, void *a5, void *a6, void *a7, int a8, int8x16_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(*a5 + 8 * a8);
    v12 = *(*a6 + 8 * a8);
    v13 = *(*a7 + 8 * a8);
    do
    {
      v14 = *result;
      v15 = v13;
      v16 = a3;
      v17 = a2;
      if (v13 >= 16)
      {
        v18 = 0;
        a9.i32[0] = *result;
        a9 = vdupq_lane_s8(*&vtstq_s8(a9, a9), 0);
        v15 = v13;
        do
        {
          v19 = v15;
          *&a3[v18] = vcltzq_s8(vshlq_n_s8(vbicq_s8(a9, vceqzq_s8(*&a2[v18])), 7uLL));
          v15 -= 16;
          v18 += 16;
        }

        while (v19 > 0x1F);
        v17 = &a2[v18];
        v16 = &a3[v18];
      }

      if (v15 >= 1)
      {
        v20 = v15 + 1;
        do
        {
          v22 = *v17++;
          v21 = v22;
          if (v14)
          {
            v23 = v21 == 0;
          }

          else
          {
            v23 = 1;
          }

          v24 = !v23;
          *v16++ = v24;
          --v20;
        }

        while (v20 > 1);
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

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(unsigned __int8 *result, unsigned __int8 *a2, char *a3, void *a4, void *a5, void *a6, void *a7, int a8, int8x16_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = *(*a5 + 8 * a8);
    v17 = *(*a6 + 8 * a8);
    v18 = *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a3 += v18;
      v15 += v16;
      a2 += v17;
      --v9;
    }

    while (v9);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(unsigned __int8 *result, unsigned __int8 *a2, char *a3, void *a4, void *a5, void *a6, void *a7, int a8, int8x16_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v15 = result;
    v16 = *(*a5 + 8 * a8);
    v17 = *(*a6 + 8 * a8);
    v18 = *(*a7 + 8 * a8);
    do
    {
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a3 += v18;
      v15 += v16;
      a2 += v17;
      --v9;
    }

    while (v9);
  }

  return result;
}

_BYTE *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::LogicalAnd,2,false>(_BYTE *result, _BYTE *a2, char *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          if (*v18)
          {
            v21 = *v19 == 0;
          }

          else
          {
            v21 = 1;
          }

          v22 = !v21;
          *v20 = v22;
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

_BYTE *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::LogicalAnd,3,false>(_BYTE *result, _BYTE *a2, char *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::LogicalAnd,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<unsigned short,unsigned short,mlx::core::detail::LogicalAnd>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int16x8_t a5)
{
  v95 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*a1 + 152);
  v11 = *(*a2 + 152);
  v12 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      if (v10->i16[0])
      {
        v41 = v11->u16[0] == 0;
      }

      else
      {
        v41 = 1;
      }

      v42 = !v41;
      v12->i16[0] = v42;
      goto LABEL_108;
    }

    if (a4 == 1)
    {
      v13 = *(*a2 + 160);
      v14 = v10->u16[0];
      if (v13 < 16)
      {
        v19 = *(*a2 + 160);
      }

      else
      {
        a5.i32[0] = v10->u16[0];
        v15 = vdupq_lane_s8(vmovn_s16(vtstq_s16(a5, a5)), 0);
        v16 = vextq_s8(v15, v15, 8uLL).u64[0];
        do
        {
          v17 = *v11;
          v18 = v11[1];
          v11 += 2;
          *v12 = vcltzq_s16(vshlq_n_s16(vmovl_u8(vand_s8(vmovn_s16(vtstq_s16(v17, v17)), *v15.i8)), 0xFuLL));
          v12[1] = vcltzq_s16(vshlq_n_s16(vmovl_u8(vand_s8(vmovn_s16(vtstq_s16(v18, v18)), v16)), 0xFuLL));
          v12 += 2;
          v19 = v13 - 16;
          v20 = v13 > 0x1F;
          v13 -= 16;
        }

        while (v20);
      }

      if (v19 >= 1)
      {
        v68 = v19 + 1;
        do
        {
          v70 = v11->u16[0];
          v11 = (v11 + 2);
          v69 = v70;
          if (v14)
          {
            v71 = v69 == 0;
          }

          else
          {
            v71 = 1;
          }

          v72 = !v71;
          v12->i16[0] = v72;
          v12 = (v12 + 2);
          --v68;
        }

        while (v68 > 1);
      }

      goto LABEL_108;
    }

LABEL_13:
    memset(v91, 0, sizeof(v91));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v91, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
    v27 = *a2;
    memset(v92, 0, sizeof(v92));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v92, *(v27 + 24), *(v27 + 32), (*(v27 + 32) - *(v27 + 24)) >> 3);
    v28 = *a3;
    v94[0] = 0;
    v94[1] = 0;
    v93 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v93, *(v28 + 24), *(v28 + 32), (*(v28 + 32) - *(v28 + 24)) >> 3);
    memset(v86, 0, sizeof(v86));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v86, v91, &v95, 3uLL);
    mlx::core::collapse_contiguous_dims(v9, v86, 0x7FFFFFFFuLL, &__p);
    v90 = v86;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v90);
    for (i = 0; i != -9; i -= 3)
    {
      v31 = v94[i - 1];
      if (v31)
      {
        v94[i] = v31;
        operator delete(v31);
      }
    }

    v32 = v89 + 6;
    v33 = *v89;
    v34 = (v89[1] - *v89) >> 3;
    v35 = v34 - 1;
    if (v34 - 1 >= -1)
    {
      v35 = -1;
    }

    v36 = v35 + 1;
    v37 = v34 + 1;
    v38 = v34 - 1;
    v39 = v34 - 1;
    while ((v39 & 0x80000000) == 0)
    {
      v40 = 8 * (v39 & 0x7FFFFFFF);
      --v37;
      --v39;
      if (*(v33 + v40) != *(*v32 + v40))
      {
        goto LABEL_35;
      }
    }

    v37 = v36;
LABEL_35:
    v50 = v89[3];
    v51 = (v89[4] - v50) >> 3;
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
      if (*(v50 + v57) != *(*v32 + v57))
      {
        goto LABEL_42;
      }
    }

    v54 = v53;
LABEL_42:
    v58 = v34 + 1;
    while ((v38 & 0x80000000) == 0)
    {
      v59 = *(v33 + 8 * (v38 & 0x7FFFFFFF));
      --v58;
      --v38;
      if (v59)
      {
        goto LABEL_47;
      }
    }

    v58 = v36;
LABEL_47:
    v60 = v51 + 1;
    while ((v55 & 0x80000000) == 0)
    {
      v61 = *(v50 + 8 * (v55 & 0x7FFFFFFF));
      --v60;
      --v55;
      if (v61)
      {
        goto LABEL_52;
      }
    }

    v60 = v53;
LABEL_52:
    v62 = (v88 - __p) >> 2;
    if (v37 <= v54)
    {
      v63 = v54;
    }

    else
    {
      v63 = v37;
    }

    if (v37 <= v60)
    {
      v37 = v60;
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
      v54 = (v88 - __p) >> 2;
      v64 = a4;
    }

    if (v62 > v37)
    {
      v65 = 2;
    }

    else
    {
      v37 = v54;
      v65 = v64;
    }

    if (v62 <= v63)
    {
      v66 = v37;
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

    if (!v66 || *(*v32 + 8 * v66 - 8) < 16)
    {
      goto LABEL_73;
    }

    switch(v67)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(v10, v11, v12->i16, v66, *(*a1 + 48), &__p, v89, v89 + 3, v29, v89 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(v10, v11, v12->i16, v66, *(*a1 + 48), &__p, v89, v89 + 3, v29, v89 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(v10, v11, v12->i16, v66, *(*a1 + 48), &__p, v89, v89 + 3, v89 + 6);
        break;
      default:
        LODWORD(v62) = v66;
LABEL_73:
        mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,false,mlx::core::detail::LogicalAnd>(v10, v11, v12->i16, v62, *(*a1 + 48), &__p, v89, v89 + 3, v89 + 6);
        break;
    }

    v91[0] = &v89;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v91);
    if (__p)
    {
      v88 = __p;
      operator delete(__p);
    }

    goto LABEL_108;
  }

  if (a4 == 2)
  {
    v43 = *(v9 + 160);
    v44 = v11->u16[0];
    if (v43 < 16)
    {
      v49 = *(v9 + 160);
    }

    else
    {
      a5.i32[0] = v11->u16[0];
      v45 = vdupq_lane_s8(vmovn_s16(vtstq_s16(a5, a5)), 0);
      v46 = vextq_s8(v45, v45, 8uLL).u64[0];
      do
      {
        v47 = *v10;
        v48 = v10[1];
        v10 += 2;
        *v12 = vcltzq_s16(vshlq_n_s16(vmovl_u8(vand_s8(vmovn_s16(vtstq_s16(v47, v47)), *v45.i8)), 0xFuLL));
        v12[1] = vcltzq_s16(vshlq_n_s16(vmovl_u8(vand_s8(vmovn_s16(vtstq_s16(v48, v48)), v46)), 0xFuLL));
        v12 += 2;
        v49 = v43 - 16;
        v20 = v43 > 0x1F;
        v43 -= 16;
      }

      while (v20);
    }

    if (v49 >= 1)
    {
      v80 = v49 + 1;
      do
      {
        v82 = v10->u16[0];
        v10 = (v10 + 2);
        v81 = v82;
        if (v44)
        {
          v83 = v81 == 0;
        }

        else
        {
          v83 = 1;
        }

        v84 = !v83;
        v12->i16[0] = v84;
        v12 = (v12 + 2);
        --v80;
      }

      while (v80 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_13;
    }

    v21 = *(v9 + 48);
    if (v21 < 16)
    {
      v26 = *(v9 + 48);
    }

    else
    {
      do
      {
        v22 = *v10;
        v23 = v10[1];
        v10 += 2;
        v24 = *v11;
        v25 = v11[1];
        v11 += 2;
        *v12 = vbicq_s8(vtstq_s16(v24, v24), vceqzq_s16(v22));
        v12[1] = vbicq_s8(vtstq_s16(v25, v25), vceqzq_s16(v23));
        v12 += 2;
        v26 = v21 - 16;
        v20 = v21 > 0x1F;
        v21 -= 16;
      }

      while (v20);
    }

    if (v26 >= 1)
    {
      v73 = v26 + 1;
      do
      {
        v75 = v10->u16[0];
        v10 = (v10 + 2);
        v74 = v75;
        v77 = v11->u16[0];
        v11 = (v11 + 2);
        v76 = v77;
        if (v74)
        {
          v78 = v76 == 0;
        }

        else
        {
          v78 = 1;
        }

        v79 = !v78;
        v12->i16[0] = v79;
        v12 = (v12 + 2);
        --v73;
      }

      while (v73 > 1);
    }
  }

LABEL_108:
  v85 = *MEMORY[0x277D85DE8];
}

void sub_25A70AFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(unsigned __int16 *a1, unsigned __int16 *a2, __int16 *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A70B47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(unsigned __int16 *a1, unsigned __int16 *a2, __int16 *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int8x16_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(&a1[v62], &a2[v55], &a3[v21], a6, a7, a8, a10, v16, v19);
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

void sub_25A70B894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(unsigned __int16 *a1, unsigned __int16 *a2, __int16 *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int8x16_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(&a1[v62], &a2[v55], &a3[v21], a6, a7, a8, a10, v16, v19);
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

void sub_25A70BCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,false,mlx::core::detail::LogicalAnd>(_WORD *a1, unsigned __int16 *a2, __int16 *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::LogicalAnd,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::LogicalAnd,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::LogicalAnd,3,false>(&v14[v64], &v13[v57], &v12[v24], a6, a7, a8, a9, v15);
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

void sub_25A70C0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(unsigned __int16 *result, unsigned __int16 *a2, __int16 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v20 = vbicq_s8(vtstq_s16(*&a2[v17 + 8], *&a2[v17 + 8]), vceqzq_s16(*&result[v17 + 8]));
          *v19 = vbicq_s8(vtstq_s16(*&a2[v17], *&a2[v17]), vceqzq_s16(*&result[v17]));
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

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(unsigned __int16 *result, unsigned __int16 *a2, __int16 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(unsigned __int16 *result, unsigned __int16 *a2, __int16 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(unsigned __int16 *result, unsigned __int16 *a2, __int16 *a3, void *a4, void *a5, void *a6, void *a7, int a8, int8x16_t a9)
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
      v14 = *a2;
      v15 = v12;
      v16 = a3;
      v17 = result;
      if (v12 >= 16)
      {
        v18 = 0;
        a9.i32[0] = *a2;
        a9 = vdupq_lane_s8(vmovn_s16(vtstq_s16(a9, a9)), 0);
        v19 = vextq_s8(a9, a9, 8uLL).u64[0];
        v15 = v12;
        do
        {
          v20 = v15;
          v21 = &a3[v18];
          v22 = vcltzq_s16(vshlq_n_s16(vmovl_u8(vand_s8(vmovn_s16(vtstq_s16(*&result[v18 + 8], *&result[v18 + 8])), v19)), 0xFuLL));
          *v21 = vcltzq_s16(vshlq_n_s16(vmovl_u8(vand_s8(vmovn_s16(vtstq_s16(*&result[v18], *&result[v18])), *a9.i8)), 0xFuLL));
          v21[1] = v22;
          v15 -= 16;
          v18 += 16;
        }

        while (v20 > 0x1F);
        v17 = &result[v18];
        v16 = &a3[v18];
      }

      if (v15 >= 1)
      {
        v23 = v15 + 1;
        do
        {
          v25 = *v17++;
          v24 = v25;
          if (v14)
          {
            v26 = v24 == 0;
          }

          else
          {
            v26 = 1;
          }

          v27 = !v26;
          *v16++ = v27;
          --v23;
        }

        while (v23 > 1);
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

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(unsigned __int16 *result, unsigned __int16 *a2, __int16 *a3, void *a4, void *a5, void *a6, void *a7, int a8, int8x16_t a9)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(unsigned __int16 *result, unsigned __int16 *a2, __int16 *a3, void *a4, void *a5, void *a6, void *a7, int a8, int8x16_t a9)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(unsigned __int16 *result, unsigned __int16 *a2, __int16 *a3, void *a4, void *a5, void *a6, void *a7, int a8, int8x16_t a9)
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
      v14 = *result;
      v15 = v12;
      v16 = a3;
      v17 = a2;
      if (v12 >= 16)
      {
        v18 = 0;
        a9.i32[0] = *result;
        a9 = vdupq_lane_s8(vmovn_s16(vtstq_s16(a9, a9)), 0);
        v19 = vextq_s8(a9, a9, 8uLL).u64[0];
        v15 = v12;
        do
        {
          v20 = v15;
          v21 = &a3[v18];
          v22 = vcltzq_s16(vshlq_n_s16(vmovl_u8(vand_s8(vmovn_s16(vtstq_s16(*&a2[v18 + 8], *&a2[v18 + 8])), v19)), 0xFuLL));
          *v21 = vcltzq_s16(vshlq_n_s16(vmovl_u8(vand_s8(vmovn_s16(vtstq_s16(*&a2[v18], *&a2[v18])), *a9.i8)), 0xFuLL));
          v21[1] = v22;
          v15 -= 16;
          v18 += 16;
        }

        while (v20 > 0x1F);
        v17 = &a2[v18];
        v16 = &a3[v18];
      }

      if (v15 >= 1)
      {
        v23 = v15 + 1;
        do
        {
          v25 = *v17++;
          v24 = v25;
          if (v14)
          {
            v26 = v24 == 0;
          }

          else
          {
            v26 = 1;
          }

          v27 = !v26;
          *v16++ = v27;
          --v23;
        }

        while (v23 > 1);
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

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(unsigned __int16 *result, unsigned __int16 *a2, __int16 *a3, void *a4, void *a5, void *a6, void *a7, int a8, int8x16_t a9)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(unsigned __int16 *result, unsigned __int16 *a2, __int16 *a3, void *a4, void *a5, void *a6, void *a7, int a8, int8x16_t a9)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

_WORD *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::LogicalAnd,2,false>(_WORD *result, unsigned __int16 *a2, __int16 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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

_WORD *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::LogicalAnd,3,false>(_WORD *result, unsigned __int16 *a2, __int16 *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::LogicalAnd,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<unsigned int,unsigned int,mlx::core::detail::LogicalAnd>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int32x4_t a5)
{
  v93 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*a1 + 152);
  v11 = *(*a2 + 152);
  v12 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      if (v10->i32[0])
      {
        v40 = v11->i32[0] == 0;
      }

      else
      {
        v40 = 1;
      }

      v41 = !v40;
      v12->i32[0] = v41;
      goto LABEL_108;
    }

    if (a4 == 1)
    {
      v13 = *(*a2 + 160);
      v14 = v10->i32[0];
      if (v13 < 8)
      {
        v18 = *(*a2 + 160);
      }

      else
      {
        a5.i32[0] = v10->i32[0];
        v15 = vmovn_s32(vtstq_s32(a5, a5));
        *a5.i8 = vdup_lane_s8(vuzp1_s8(v15, v15), 0);
        do
        {
          v16 = *v11;
          v17 = v11[1];
          v11 += 2;
          *v16.i8 = vand_s8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(v16), vceqzq_s32(v17)))), *a5.i8);
          *v12 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v16.i8, *a5.i8)), 0x1FuLL));
          v12[1] = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v16.i8, *a5.i8)), 0x1FuLL));
          v12 += 2;
          v18 = v13 - 8;
          v19 = v13 > 0xF;
          v13 -= 8;
        }

        while (v19);
      }

      if (v18 >= 1)
      {
        v66 = v18 + 1;
        do
        {
          v68 = v11->i32[0];
          v11 = (v11 + 4);
          v67 = v68;
          if (v14)
          {
            v69 = v67 == 0;
          }

          else
          {
            v69 = 1;
          }

          v70 = !v69;
          v12->i32[0] = v70;
          v12 = (v12 + 4);
          --v66;
        }

        while (v66 > 1);
      }

      goto LABEL_108;
    }

LABEL_13:
    memset(v89, 0, sizeof(v89));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v89, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
    v26 = *a2;
    memset(v90, 0, sizeof(v90));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v90, *(v26 + 24), *(v26 + 32), (*(v26 + 32) - *(v26 + 24)) >> 3);
    v27 = *a3;
    v92[0] = 0;
    v92[1] = 0;
    v91 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v91, *(v27 + 24), *(v27 + 32), (*(v27 + 32) - *(v27 + 24)) >> 3);
    memset(v84, 0, sizeof(v84));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v84, v89, &v93, 3uLL);
    mlx::core::collapse_contiguous_dims(v9, v84, 0x7FFFFFFFuLL, &__p);
    v88 = v84;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v88);
    for (i = 0; i != -9; i -= 3)
    {
      v30 = v92[i - 1];
      if (v30)
      {
        v92[i] = v30;
        operator delete(v30);
      }
    }

    v31 = v87 + 6;
    v32 = *v87;
    v33 = (v87[1] - *v87) >> 3;
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
        goto LABEL_35;
      }
    }

    v36 = v35;
LABEL_35:
    v48 = v87[3];
    v49 = (v87[4] - v48) >> 3;
    v50 = v49 - 1;
    if (v49 - 1 >= -1)
    {
      v50 = -1;
    }

    v51 = v50 + 1;
    v52 = v49 + 1;
    v53 = v49 - 1;
    v54 = v49 - 1;
    while ((v54 & 0x80000000) == 0)
    {
      v55 = 8 * (v54 & 0x7FFFFFFF);
      --v52;
      --v54;
      if (*(v48 + v55) != *(*v31 + v55))
      {
        goto LABEL_42;
      }
    }

    v52 = v51;
LABEL_42:
    v56 = v33 + 1;
    while ((v37 & 0x80000000) == 0)
    {
      v57 = *(v32 + 8 * (v37 & 0x7FFFFFFF));
      --v56;
      --v37;
      if (v57)
      {
        goto LABEL_47;
      }
    }

    v56 = v35;
LABEL_47:
    v58 = v49 + 1;
    while ((v53 & 0x80000000) == 0)
    {
      v59 = *(v48 + 8 * (v53 & 0x7FFFFFFF));
      --v58;
      --v53;
      if (v59)
      {
        goto LABEL_52;
      }
    }

    v58 = v51;
LABEL_52:
    v60 = (v86 - __p) >> 2;
    if (v36 <= v52)
    {
      v61 = v52;
    }

    else
    {
      v61 = v36;
    }

    if (v36 <= v58)
    {
      v36 = v58;
    }

    if (v56 > v52)
    {
      v52 = v56;
    }

    if (v60 > v52)
    {
      v62 = 1;
    }

    else
    {
      v52 = (v86 - __p) >> 2;
      v62 = a4;
    }

    if (v60 > v36)
    {
      v63 = 2;
    }

    else
    {
      v36 = v52;
      v63 = v62;
    }

    if (v60 <= v61)
    {
      v64 = v36;
    }

    else
    {
      v64 = v61;
    }

    if (v60 <= v61)
    {
      v65 = v63;
    }

    else
    {
      v65 = 3;
    }

    if (!v64 || *(*v31 + 8 * v64 - 8) < 16)
    {
      goto LABEL_73;
    }

    switch(v65)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(v10, v11->i32, v12->i32, v64, *(*a1 + 48), &__p, v87, v87 + 3, v28, v87 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(v10->i32, v11, v12->i32, v64, *(*a1 + 48), &__p, v87, v87 + 3, v28, v87 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(v10->i32, v11->i32, v12->i32, v64, *(*a1 + 48), &__p, v87, v87 + 3, v87 + 6);
        break;
      default:
        LODWORD(v60) = v64;
LABEL_73:
        mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,false,mlx::core::detail::LogicalAnd>(v10, v11, v12->i32, v60, *(*a1 + 48), &__p, v87, v87 + 3, v87 + 6);
        break;
    }

    v89[0] = &v87;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v89);
    if (__p)
    {
      v86 = __p;
      operator delete(__p);
    }

    goto LABEL_108;
  }

  if (a4 == 2)
  {
    v42 = *(v9 + 160);
    v43 = v11->i32[0];
    if (v42 < 8)
    {
      v47 = *(v9 + 160);
    }

    else
    {
      a5.i32[0] = v11->i32[0];
      v44 = vmovn_s32(vtstq_s32(a5, a5));
      *a5.i8 = vdup_lane_s8(vuzp1_s8(v44, v44), 0);
      do
      {
        v45 = *v10;
        v46 = v10[1];
        v10 += 2;
        *v45.i8 = vand_s8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(v45), vceqzq_s32(v46)))), *a5.i8);
        *v12 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v45.i8, *a5.i8)), 0x1FuLL));
        v12[1] = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v45.i8, *a5.i8)), 0x1FuLL));
        v12 += 2;
        v47 = v42 - 8;
        v19 = v42 > 0xF;
        v42 -= 8;
      }

      while (v19);
    }

    if (v47 >= 1)
    {
      v78 = v47 + 1;
      do
      {
        v80 = v10->i32[0];
        v10 = (v10 + 4);
        v79 = v80;
        if (v43)
        {
          v81 = v79 == 0;
        }

        else
        {
          v81 = 1;
        }

        v82 = !v81;
        v12->i32[0] = v82;
        v12 = (v12 + 4);
        --v78;
      }

      while (v78 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_13;
    }

    v20 = *(v9 + 48);
    if (v20 < 8)
    {
      v25 = *(v9 + 48);
    }

    else
    {
      do
      {
        v21 = *v10;
        v22 = v10[1];
        v10 += 2;
        v23 = *v11;
        v24 = v11[1];
        v11 += 2;
        *v21.i8 = vmovn_s16(vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqzq_s32(v23), vceqzq_s32(v24))), vuzp1q_s16(vceqzq_s32(v21), vceqzq_s32(v22))));
        *v12 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v21.i8, *v21.i8)), 0x1FuLL));
        v12[1] = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v21.i8, *v21.i8)), 0x1FuLL));
        v12 += 2;
        v25 = v20 - 8;
        v19 = v20 > 0xF;
        v20 -= 8;
      }

      while (v19);
    }

    if (v25 >= 1)
    {
      v71 = v25 + 1;
      do
      {
        v73 = v10->i32[0];
        v10 = (v10 + 4);
        v72 = v73;
        v75 = v11->i32[0];
        v11 = (v11 + 4);
        v74 = v75;
        if (v72)
        {
          v76 = v74 == 0;
        }

        else
        {
          v76 = 1;
        }

        v77 = !v76;
        v12->i32[0] = v77;
        v12 = (v12 + 4);
        --v71;
      }

      while (v71 > 1);
    }
  }

LABEL_108:
  v83 = *MEMORY[0x277D85DE8];
}

void sub_25A70D044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>>(int *a1, int *a2, int *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalAnd>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A70D4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>>(int *a1, unsigned __int32 *a2, int *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int32x4_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalAnd>,3,true>(&a1[v62], &a2[v55], &a3[v21], a6, a7, a8, a10, v16, v19);
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

void sub_25A70D8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>>(unsigned __int32 *a1, int *a2, int *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int32x4_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalAnd>,3,true>(&a1[v62], &a2[v55], &a3[v21], a6, a7, a8, a10, v16, v19);
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

void sub_25A70DCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,false,mlx::core::detail::LogicalAnd>(_DWORD *a1, _DWORD *a2, int *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::LogicalAnd,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::LogicalAnd,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::LogicalAnd,3,false>(&v14[v64], &v13[v57], &v12[v24], a6, a7, a8, a9, v15);
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