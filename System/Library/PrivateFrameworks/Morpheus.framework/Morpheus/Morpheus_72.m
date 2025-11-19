void sub_25A6701D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorVector<mlx::core::detail::Remainder>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(a1 + 8 * v60, a2 + 8 * v53, a3 + 8 * v19, a6, a7, a8, a9, v15);
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

void sub_25A670658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorScalar<mlx::core::detail::Remainder>>(uint64_t a1, float *a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(a1 + 8 * v60, &a2[2 * v53], a3 + 8 * v19, a6, a7, a8, a9, v15);
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

void sub_25A670A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::ScalarVector<mlx::core::detail::Remainder>>(float *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(&a1[2 * v60], a2 + 8 * v53, a3 + 8 * v19, a6, a7, a8, a9, v15);
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

void sub_25A670E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,false,mlx::core::detail::Remainder>(float *a1, float *a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Remainder,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Remainder,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Remainder,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Remainder,3,false>(&a1[2 * v60], &a2[2 * v53], a3 + 8 * v19, a6, a7, a8, a9, v15);
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

void sub_25A6712A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v18 = *(*a4 + 4 * a8);
  if (v18 >= 1)
  {
    v11 = 0;
    v12 = *(*a7 + 8 * a8);
    v17 = 8 * *(*a5 + 8 * a8);
    v13 = 8 * *(*a6 + 8 * a8);
    do
    {
      if (v12 >= 1)
      {
        v14 = 0;
        v15 = v12 + 1;
        do
        {
          v16 = a3 + v14;
          *v16 = remainderf(*(a1 + v14), *(a2 + v14));
          *(v16 + 4) = 0;
          v14 += 8;
          --v15;
        }

        while (v15 > 1);
      }

      ++v11;
      a1 += v17;
      a2 += v13;
      a3 += 8 * v12;
    }

    while (v11 != v18);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 += v15;
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(uint64_t a1, float *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v19 = *(*a4 + 4 * a8);
  if (v19 >= 1)
  {
    v11 = 0;
    v18 = *(*a6 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    do
    {
      if (v12 >= 1)
      {
        v14 = 0;
        v15 = *a2;
        v16 = v12 + 1;
        do
        {
          v17 = a3 + v14;
          *v17 = remainderf(*(a1 + v14), v15);
          *(v17 + 4) = 0;
          v14 += 8;
          --v16;
        }

        while (v16 > 1);
      }

      a2 += 2 * v18;
      ++v11;
      a1 += v13;
      a3 += 8 * v12;
    }

    while (v11 != v19);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(uint64_t a1, float *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 += v15;
      a2 = (a2 + v16);
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(uint64_t a1, float *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 += v15;
      a2 = (a2 + v16);
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(float *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v19 = *(*a4 + 4 * a8);
  if (v19 >= 1)
  {
    v11 = 0;
    v18 = *(*a5 + 8 * a8);
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a6 + 8 * a8);
    do
    {
      if (v12 >= 1)
      {
        v14 = 0;
        v15 = *a1;
        v16 = v12 + 1;
        do
        {
          v17 = a3 + v14;
          *v17 = remainderf(v15, *(a2 + v14));
          *(v17 + 4) = 0;
          v14 += 8;
          --v16;
        }

        while (v16 > 1);
      }

      a1 += 2 * v18;
      ++v11;
      a2 += v13;
      a3 += 8 * v12;
    }

    while (v11 != v19);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(float *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(float *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 += v16;
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Remainder,1,false>(float *a1, float *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v11 = 8 * *(*a5 + 8 * a8);
    v12 = 8 * *(*a6 + 8 * a8);
    v13 = (a3 + 4);
    v14 = 8 * *(*a7 + 8 * a8);
    do
    {
      *(v13 - 1) = remainderf(*a1, *a2);
      *v13 = 0.0;
      a1 = (a1 + v11);
      a2 = (a2 + v12);
      v13 = (v13 + v14);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Remainder,2,false>(float *a1, float *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Remainder,1,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Remainder,3,false>(float *a1, float *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Remainder,2,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 += v17;
      --v8;
    }

    while (v8);
  }
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Remainder>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Remainder,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Remainder>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Remainder,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C017C8;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Remainder>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Remainder,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Remainder>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Remainder,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C017C8;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Remainder>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Remainder,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Remainder>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Remainder,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286C017C8;
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

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Remainder>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Remainder,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Remainder>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Remainder,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Remainder>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Remainder,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Remainder>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Remainder,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Remainder>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Remainder,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::binary<mlx::core::detail::Remainder>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Remainder,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5Equal8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286C018C0;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5Equal8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286C018C0;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5Equal8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C018C0;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5Equal8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5Equal8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5Equal8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1, double a2)
{
  std::__bind<mlx::core::Equal::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::operator()[abi:ne200100]<>((a1 + 24), a2);
  v3 = mlx::core::scheduler::scheduler(v2);

  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5Equal8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<mlx::core::Equal::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::operator()[abi:ne200100]<>(uint64_t *a1, double a2)
{
  v2 = *(*a1 + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {
      v7 = *(a1 + 12);

      mlx::core::binary_op<half,BOOL,mlx::core::detail::NaNEqual>(a1, a1 + 2, a1 + 4, v7, *&a2);
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      v4 = *(a1 + 12);

      mlx::core::binary_op<float,BOOL,mlx::core::detail::NaNEqual>(a1, a1 + 2, a1 + 4, v4, a2);
    }
  }

  else
  {
    switch(v2)
    {
      case 11:
        v5 = *(a1 + 12);

        mlx::core::binary_op<double,BOOL,mlx::core::detail::NaNEqual>(a1, a1 + 2, a1 + 4, v5);
        break;
      case 12:
        v6 = *(a1 + 12);

        mlx::core::binary_op<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::NaNEqual>(a1, a1 + 2, a1 + 4, v6);
        break;
      case 13:
        v3 = *(a1 + 12);

        mlx::core::binary_op<mlx::core::complex64_t,BOOL,mlx::core::detail::NaNEqual>(a1, a1 + 2, a1 + 4, v3);
        return;
      default:
LABEL_22:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[NanEqual::eval_cpu] Only for floating point types.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void mlx::core::binary_op<half,BOOL,mlx::core::detail::NaNEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int16x4_t a5)
{
  v80 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*a1 + 152);
  v11 = *(*a2 + 152);
  v12 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v12->i8[0] = *v10->i16 == *v11->i16;
      goto LABEL_84;
    }

    if (a4 == 1)
    {
      v13 = *(*a2 + 160);
      a5.i16[0] = v10->i16[0];
      if (v13 < 8)
      {
        v17 = *(*a2 + 160);
      }

      else
      {
        v14 = vdupq_lane_s16(a5, 0);
        v15 = vceqq_f16(v14, v14);
        do
        {
          v16 = *v11++;
          *v12++ = vand_s8(vmovn_s16(vorrq_s8(vbicq_s8(vmvnq_s8(vceqq_f16(v16, v16)), v15), vceqq_f16(v14, v16))), 0x101010101010101);
          v17 = v13 - 8;
          v18 = v13 > 0xF;
          v13 -= 8;
        }

        while (v18);
      }

      if (v17 >= 1)
      {
        v62 = v17 + 1;
        do
        {
          v63 = *v11->i16;
          v11 = (v11 + 2);
          v12->i8[0] = *a5.i16 == v63;
          v12 = (v12 + 1);
          --v62;
        }

        while (v62 > 1);
      }

      goto LABEL_84;
    }

LABEL_13:
    memset(v76, 0, sizeof(v76));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v76, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
    v24 = *a2;
    memset(v77, 0, sizeof(v77));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v77, *(v24 + 24), *(v24 + 32), (*(v24 + 32) - *(v24 + 24)) >> 3);
    v25 = *a3;
    v79[0] = 0;
    v79[1] = 0;
    v78 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v78, *(v25 + 24), *(v25 + 32), (*(v25 + 32) - *(v25 + 24)) >> 3);
    memset(v71, 0, sizeof(v71));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v71, v76, &v80, 3uLL);
    mlx::core::collapse_contiguous_dims(v9, v71, 0x7FFFFFFFuLL, &__p);
    v75 = v71;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v75);
    for (i = 0; i != -9; i -= 3)
    {
      v29 = v79[i - 1];
      if (v29)
      {
        v79[i] = v29;
        operator delete(v29);
      }
    }

    v30 = v74 + 6;
    v31 = *v74;
    v32 = (v74[1] - *v74) >> 3;
    v33 = v32 - 1;
    if (v32 - 1 >= -1)
    {
      v33 = -1;
    }

    v34 = v33 + 1;
    v35 = v32 + 1;
    v36 = v32 - 1;
    v37 = v32 - 1;
    while ((v37 & 0x80000000) == 0)
    {
      v38 = 8 * (v37 & 0x7FFFFFFF);
      --v35;
      --v37;
      if (*(v31 + v38) != *(*v30 + v38))
      {
        goto LABEL_29;
      }
    }

    v35 = v34;
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
      if (*(v44 + v51) != *(*v30 + v51))
      {
        goto LABEL_36;
      }
    }

    v48 = v47;
LABEL_36:
    v52 = v32 + 1;
    while ((v36 & 0x80000000) == 0)
    {
      v53 = *(v31 + 8 * (v36 & 0x7FFFFFFF));
      --v52;
      --v36;
      if (v53)
      {
        goto LABEL_41;
      }
    }

    v52 = v34;
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
    if (v35 <= v48)
    {
      v57 = v48;
    }

    else
    {
      v57 = v35;
    }

    if (v35 <= v54)
    {
      v35 = v54;
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

    if (v56 > v35)
    {
      v59 = 2;
    }

    else
    {
      v35 = v48;
      v59 = v58;
    }

    if (v56 <= v57)
    {
      v60 = v35;
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

    if (!v60 || *(*v30 + 8 * v60 - 8) < 16)
    {
      goto LABEL_67;
    }

    switch(v61)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>>(v10->i16, v11, v12, v60, *(*a1 + 48), &__p, v74, v74 + 3, v26, v27, v74 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>>(v10, v11->i16, v12, v60, *(*a1 + 48), &__p, v74, v74 + 3, v26, v27, v74 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::VectorVector<mlx::core::detail::NaNEqual>>(v10->i16, v11->i16, v12, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      default:
        LODWORD(v56) = v60;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<half,BOOL,false,mlx::core::detail::NaNEqual>(v10->i16, v11->i16, v12, v56, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
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
    v39 = *(v9 + 160);
    a5.i16[0] = v11->i16[0];
    if (v39 < 8)
    {
      v43 = *(v9 + 160);
    }

    else
    {
      v40 = vdupq_lane_s16(a5, 0);
      v41 = vceqq_f16(v40, v40);
      do
      {
        v42 = *v10++;
        *v12++ = vand_s8(vmovn_s16(vorrq_s8(vbicq_s8(vmvnq_s8(vceqq_f16(v42, v42)), v41), vceqq_f16(v42, v40))), 0x101010101010101);
        v43 = v39 - 8;
        v18 = v39 > 0xF;
        v39 -= 8;
      }

      while (v18);
    }

    if (v43 >= 1)
    {
      v68 = v43 + 1;
      do
      {
        v69 = *v10->i16;
        v10 = (v10 + 2);
        v12->i8[0] = v69 == *a5.i16;
        v12 = (v12 + 1);
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

    v19 = *(v9 + 48);
    if (v19 < 8)
    {
      v23 = *(v9 + 48);
    }

    else
    {
      do
      {
        v20 = *v10++;
        v21 = v20;
        v22 = *v11++;
        *v12++ = vand_s8(vmovn_s16(vorrq_s8(vbicq_s8(vmvnq_s8(vceqq_f16(v22, v22)), vceqq_f16(v21, v21)), vceqq_f16(v21, v22))), 0x101010101010101);
        v23 = v19 - 8;
        v18 = v19 > 0xF;
        v19 -= 8;
      }

      while (v18);
    }

    if (v23 >= 1)
    {
      v64 = v23 + 1;
      do
      {
        v65 = *v10->i16;
        v10 = (v10 + 2);
        v66 = v65;
        v67 = *v11->i16;
        v11 = (v11 + 2);
        v12->i8[0] = v66 == v67;
        v12 = (v12 + 1);
        --v64;
      }

      while (v64 > 1);
    }
  }

LABEL_84:
  v70 = *MEMORY[0x277D85DE8];
}

void sub_25A6729B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<float,BOOL,mlx::core::detail::NaNEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, double a5)
{
  v85 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*a1 + 152);
  v11 = *(*a2 + 152);
  v12 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v12->i8[0] = v10->f32[0] == *v11;
      goto LABEL_84;
    }

    if (a4 == 1)
    {
      v13 = *(*a2 + 160);
      LODWORD(a5) = v10->i32[0];
      if (v13 < 8)
      {
        v19 = *(*a2 + 160);
      }

      else
      {
        v14 = vdupq_lane_s32(*&a5, 0);
        v15 = vceqq_f32(v14, v14);
        v16 = vuzp1q_s16(v15, v15);
        do
        {
          v17 = *v11;
          v18 = *(v11 + 1);
          v11 += 2;
          *v12++ = vand_s8(vmovn_s16(vorrq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqq_f32(v17, v17), vceqq_f32(v18, v18))), v16), vuzp1q_s16(vceqq_f32(v14, v17), vceqq_f32(v14, v18)))), 0x101010101010101);
          v19 = v13 - 8;
          v20 = v13 > 0xF;
          v13 -= 8;
        }

        while (v20);
      }

      if (v19 >= 1)
      {
        v67 = v19 + 1;
        do
        {
          v68 = *v11;
          v11 = (v11 + 4);
          v12->i8[0] = *&a5 == v68;
          v12 = (v12 + 1);
          --v67;
        }

        while (v67 > 1);
      }

      goto LABEL_84;
    }

LABEL_13:
    memset(v81, 0, sizeof(v81));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v81, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
    v27 = *a2;
    memset(v82, 0, sizeof(v82));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v82, *(v27 + 24), *(v27 + 32), (*(v27 + 32) - *(v27 + 24)) >> 3);
    v28 = *a3;
    v84[0] = 0;
    v84[1] = 0;
    v83 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v83, *(v28 + 24), *(v28 + 32), (*(v28 + 32) - *(v28 + 24)) >> 3);
    memset(v76, 0, sizeof(v76));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v76, v81, &v85, 3uLL);
    mlx::core::collapse_contiguous_dims(v9, v76, 0x7FFFFFFFuLL, &__p);
    v80 = v76;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v80);
    for (i = 0; i != -9; i -= 3)
    {
      v32 = v84[i - 1];
      if (v32)
      {
        v84[i] = v32;
        operator delete(v32);
      }
    }

    v33 = v79 + 6;
    v34 = *v79;
    v35 = (v79[1] - *v79) >> 3;
    v36 = v35 - 1;
    if (v35 - 1 >= -1)
    {
      v36 = -1;
    }

    v37 = v36 + 1;
    v38 = v35 + 1;
    v39 = v35 - 1;
    v40 = v35 - 1;
    while ((v40 & 0x80000000) == 0)
    {
      v41 = 8 * (v40 & 0x7FFFFFFF);
      --v38;
      --v40;
      if (*(v34 + v41) != *(*v33 + v41))
      {
        goto LABEL_29;
      }
    }

    v38 = v37;
LABEL_29:
    v49 = v79[3];
    v50 = (v79[4] - v49) >> 3;
    v51 = v50 - 1;
    if (v50 - 1 >= -1)
    {
      v51 = -1;
    }

    v52 = v51 + 1;
    v53 = v50 + 1;
    v54 = v50 - 1;
    v55 = v50 - 1;
    while ((v55 & 0x80000000) == 0)
    {
      v56 = 8 * (v55 & 0x7FFFFFFF);
      --v53;
      --v55;
      if (*(v49 + v56) != *(*v33 + v56))
      {
        goto LABEL_36;
      }
    }

    v53 = v52;
LABEL_36:
    v57 = v35 + 1;
    while ((v39 & 0x80000000) == 0)
    {
      v58 = *(v34 + 8 * (v39 & 0x7FFFFFFF));
      --v57;
      --v39;
      if (v58)
      {
        goto LABEL_41;
      }
    }

    v57 = v37;
LABEL_41:
    v59 = v50 + 1;
    while ((v54 & 0x80000000) == 0)
    {
      v60 = *(v49 + 8 * (v54 & 0x7FFFFFFF));
      --v59;
      --v54;
      if (v60)
      {
        goto LABEL_46;
      }
    }

    v59 = v52;
LABEL_46:
    v61 = (v78 - __p) >> 2;
    if (v38 <= v53)
    {
      v62 = v53;
    }

    else
    {
      v62 = v38;
    }

    if (v38 <= v59)
    {
      v38 = v59;
    }

    if (v57 > v53)
    {
      v53 = v57;
    }

    if (v61 > v53)
    {
      v63 = 1;
    }

    else
    {
      v53 = (v78 - __p) >> 2;
      v63 = a4;
    }

    if (v61 > v38)
    {
      v64 = 2;
    }

    else
    {
      v38 = v53;
      v64 = v63;
    }

    if (v61 <= v62)
    {
      v65 = v38;
    }

    else
    {
      v65 = v62;
    }

    if (v61 <= v62)
    {
      v66 = v64;
    }

    else
    {
      v66 = 3;
    }

    if (!v65 || *(*v33 + 8 * v65 - 8) < 16)
    {
      goto LABEL_67;
    }

    switch(v66)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<float,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>>(v10, v11, v12, v65, *(*a1 + 48), &__p, v79, v79 + 3, v29, v30, v79 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<float,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>>(v10, v11, v12, v65, *(*a1 + 48), &__p, v79, v79 + 3, v29, v30, v79 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<float,BOOL,true,mlx::core::VectorVector<mlx::core::detail::NaNEqual>>(v10->f32, v11, v12, v65, *(*a1 + 48), &__p, v79, v79 + 3, v79 + 6);
        break;
      default:
        LODWORD(v61) = v65;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<float,BOOL,false,mlx::core::detail::NaNEqual>(v10->f32, v11, v12, v61, *(*a1 + 48), &__p, v79, v79 + 3, v79 + 6);
        break;
    }

    v81[0] = &v79;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v81);
    if (__p)
    {
      v78 = __p;
      operator delete(__p);
    }

    goto LABEL_84;
  }

  if (a4 == 2)
  {
    v42 = *(v9 + 160);
    LODWORD(a5) = *v11;
    if (v42 < 8)
    {
      v48 = *(v9 + 160);
    }

    else
    {
      v43 = vdupq_lane_s32(*&a5, 0);
      v44 = vceqq_f32(v43, v43);
      v45 = vuzp1q_s16(v44, v44);
      do
      {
        v46 = *v10;
        v47 = v10[1];
        v10 += 2;
        *v12++ = vand_s8(vmovn_s16(vorrq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqq_f32(v46, v46), vceqq_f32(v47, v47))), v45), vuzp1q_s16(vceqq_f32(v46, v43), vceqq_f32(v47, v43)))), 0x101010101010101);
        v48 = v42 - 8;
        v20 = v42 > 0xF;
        v42 -= 8;
      }

      while (v20);
    }

    if (v48 >= 1)
    {
      v73 = v48 + 1;
      do
      {
        v74 = v10->f32[0];
        v10 = (v10 + 4);
        v12->i8[0] = v74 == *&a5;
        v12 = (v12 + 1);
        --v73;
      }

      while (v73 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_13;
    }

    v21 = *(v9 + 48);
    if (v21 < 8)
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
        v25 = *(v11 + 1);
        v11 += 2;
        *v12++ = vand_s8(vmovn_s16(vorrq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqq_f32(v24, v24), vceqq_f32(v25, v25))), vuzp1q_s16(vceqq_f32(v22, v22), vceqq_f32(v23, v23))), vuzp1q_s16(vceqq_f32(v22, v24), vceqq_f32(v23, v25)))), 0x101010101010101);
        v26 = v21 - 8;
        v20 = v21 > 0xF;
        v21 -= 8;
      }

      while (v20);
    }

    if (v26 >= 1)
    {
      v69 = v26 + 1;
      do
      {
        v70 = v10->f32[0];
        v10 = (v10 + 4);
        v71 = v70;
        v72 = *v11;
        v11 = (v11 + 4);
        v12->i8[0] = v71 == v72;
        v12 = (v12 + 1);
        --v69;
      }

      while (v69 > 1);
    }
  }

LABEL_84:
  v75 = *MEMORY[0x277D85DE8];
}

void sub_25A67303C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<double,BOOL,mlx::core::detail::NaNEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v84 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      *v11 = *v9 == *v10;
      goto LABEL_84;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      v13 = *v9;
      if (v12 < 4)
      {
        v19 = *(*a2 + 160);
      }

      else
      {
        v14 = vdupq_lane_s64(v13, 0);
        v15 = vceqq_f64(v14, v14);
        v16 = vuzp1q_s32(v15, v15);
        do
        {
          v17 = *v10;
          v18 = *(v10 + 1);
          v10 += 2;
          *v11 = vuzp1_s8(vand_s8(vmovn_s32(vorrq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s32(vceqq_f64(v17, v17), vceqq_f64(v18, v18))), v16), vuzp1q_s32(vceqq_f64(v14, v17), vceqq_f64(v14, v18)))), 0x1000100010001), v13).u32[0];
          v11 += 4;
          v19 = v12 - 4;
          v20 = v12 > 7;
          v12 -= 4;
        }

        while (v20);
      }

      if (v19 >= 1)
      {
        v66 = v19 + 1;
        do
        {
          v67 = *v10;
          v10 = (v10 + 8);
          *v11++ = *&v13 == v67;
          --v66;
        }

        while (v66 > 1);
      }

      goto LABEL_84;
    }

LABEL_13:
    memset(v80, 0, sizeof(v80));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v80, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v27 = *a2;
    memset(v81, 0, sizeof(v81));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v81, *(v27 + 24), *(v27 + 32), (*(v27 + 32) - *(v27 + 24)) >> 3);
    v28 = *a3;
    v83[0] = 0;
    v83[1] = 0;
    v82 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v82, *(v28 + 24), *(v28 + 32), (*(v28 + 32) - *(v28 + 24)) >> 3);
    memset(v75, 0, sizeof(v75));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v75, v80, &v84, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v75, 0x7FFFFFFFuLL, &__p);
    v79 = v75;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v79);
    for (i = 0; i != -9; i -= 3)
    {
      v30 = v83[i - 1];
      if (v30)
      {
        v83[i] = v30;
        operator delete(v30);
      }
    }

    v31 = v78 + 6;
    v32 = *v78;
    v33 = (v78[1] - *v78) >> 3;
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
    v48 = v78[3];
    v49 = (v78[4] - v48) >> 3;
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
        goto LABEL_36;
      }
    }

    v52 = v51;
LABEL_36:
    v56 = v33 + 1;
    while ((v37 & 0x80000000) == 0)
    {
      v57 = *(v32 + 8 * (v37 & 0x7FFFFFFF));
      --v56;
      --v37;
      if (v57)
      {
        goto LABEL_41;
      }
    }

    v56 = v35;
LABEL_41:
    v58 = v49 + 1;
    while ((v53 & 0x80000000) == 0)
    {
      v59 = *(v48 + 8 * (v53 & 0x7FFFFFFF));
      --v58;
      --v53;
      if (v59)
      {
        goto LABEL_46;
      }
    }

    v58 = v51;
LABEL_46:
    v60 = (v77 - __p) >> 2;
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
      v52 = (v77 - __p) >> 2;
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
      goto LABEL_67;
    }

    switch(v65)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>>(v9, v10, v11, v64, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>>(v9, v10, v11, v64, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::VectorVector<mlx::core::detail::NaNEqual>>(v9, v10, v11, v64, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
        break;
      default:
        LODWORD(v60) = v64;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<double,BOOL,false,mlx::core::detail::NaNEqual>(v9, v10, v11, v60, *(*a1 + 48), &__p, v78, v78 + 3, v78 + 6);
        break;
    }

    v80[0] = &v78;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v80);
    if (__p)
    {
      v77 = __p;
      operator delete(__p);
    }

    goto LABEL_84;
  }

  if (a4 == 2)
  {
    v40 = *(v8 + 160);
    v41 = *v10;
    if (v40 < 4)
    {
      v47 = *(v8 + 160);
    }

    else
    {
      v42 = vdupq_lane_s64(v41, 0);
      v43 = vceqq_f64(v42, v42);
      v44 = vuzp1q_s32(v43, v43);
      do
      {
        v45 = *v9;
        v46 = *(v9 + 16);
        v9 += 32;
        *v11 = vuzp1_s8(vand_s8(vmovn_s32(vorrq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s32(vceqq_f64(v45, v45), vceqq_f64(v46, v46))), v44), vuzp1q_s32(vceqq_f64(v45, v42), vceqq_f64(v46, v42)))), 0x1000100010001), v41).u32[0];
        v11 += 4;
        v47 = v40 - 4;
        v20 = v40 > 7;
        v40 -= 4;
      }

      while (v20);
    }

    if (v47 >= 1)
    {
      v72 = v47 + 1;
      do
      {
        v73 = *v9;
        v9 += 8;
        *v11++ = v73 == *&v41;
        --v72;
      }

      while (v72 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_13;
    }

    v21 = *(v8 + 48);
    if (v21 < 4)
    {
      v26 = *(v8 + 48);
    }

    else
    {
      do
      {
        v22 = *v9;
        v23 = *(v9 + 16);
        v9 += 32;
        v24 = *v10;
        v25 = *(v10 + 1);
        v10 += 2;
        *v11 = vuzp1_s8(vand_s8(vmovn_s32(vorrq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s32(vceqq_f64(v24, v24), vceqq_f64(v25, v25))), vuzp1q_s32(vceqq_f64(v22, v22), vceqq_f64(v23, v23))), vuzp1q_s32(vceqq_f64(v22, v24), vceqq_f64(v23, v25)))), 0x1000100010001), 0x1000100010001).u32[0];
        v11 += 4;
        v26 = v21 - 4;
        v20 = v21 > 7;
        v21 -= 4;
      }

      while (v20);
    }

    if (v26 >= 1)
    {
      v68 = v26 + 1;
      do
      {
        v69 = *v9;
        v9 += 8;
        v70 = v69;
        v71 = *v10;
        v10 = (v10 + 8);
        *v11++ = v70 == v71;
        --v68;
      }

      while (v68 > 1);
    }
  }

LABEL_84:
  v74 = *MEMORY[0x277D85DE8];
}

void sub_25A6736CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::NaNEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      *v11 = COERCE_FLOAT(*v9 << 16) == COERCE_FLOAT(*v10 << 16);
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
          *v11++ = v13 == COERCE_FLOAT(v15 << 16);
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
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::VectorVector<mlx::core::detail::NaNEqual>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      default:
        LODWORD(v50) = v54;
LABEL_68:
        mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,false,mlx::core::detail::NaNEqual>(v9, v10, v11, v50, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
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
        *v11++ = COERCE_FLOAT(v37 << 16) == v35;
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
        v19 = *v10++;
        v18 = v19;
        v20 = *v9++;
        *v11++ = COERCE_FLOAT(v20 << 16) == COERCE_FLOAT(v18 << 16);
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_71:
  v56 = *MEMORY[0x277D85DE8];
}

void sub_25A673C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<mlx::core::complex64_t,BOOL,mlx::core::detail::NaNEqual>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v79 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v42 = v9[1] == v10[1] && *v9 == *v10;
      *v11 = v42;
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
          v16 = *v10;
          v17 = v10[1];
          v10 += 2;
          v19 = v14 == v17 && v13 == v16;
          *v11++ = v19;
          --v15;
        }

        while (v15 > 1);
      }

      goto LABEL_95;
    }

LABEL_26:
    memset(v75, 0, sizeof(v75));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v75, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v28 = *a2;
    memset(v76, 0, sizeof(v76));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v76, *(v28 + 24), *(v28 + 32), (*(v28 + 32) - *(v28 + 24)) >> 3);
    v29 = *a3;
    v78[0] = 0;
    v78[1] = 0;
    v77 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v77, *(v29 + 24), *(v29 + 32), (*(v29 + 32) - *(v29 + 24)) >> 3);
    memset(v70, 0, sizeof(v70));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v70, v75, &v79, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v70, 0x7FFFFFFFuLL, &__p);
    v74 = v70;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v74);
    for (i = 0; i != -9; i -= 3)
    {
      v31 = v78[i - 1];
      if (v31)
      {
        v78[i] = v31;
        operator delete(v31);
      }
    }

    v32 = v73 + 6;
    v33 = *v73;
    v34 = (v73[1] - *v73) >> 3;
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
        goto LABEL_54;
      }
    }

    v37 = v36;
LABEL_54:
    v51 = v73[3];
    v52 = (v73[4] - v51) >> 3;
    v53 = v52 - 1;
    if (v52 - 1 >= -1)
    {
      v53 = -1;
    }

    v54 = v53 + 1;
    v55 = v52 + 1;
    v56 = v52 - 1;
    v57 = v52 - 1;
    while ((v57 & 0x80000000) == 0)
    {
      v58 = 8 * (v57 & 0x7FFFFFFF);
      --v55;
      --v57;
      if (*(v51 + v58) != *(*v32 + v58))
      {
        goto LABEL_61;
      }
    }

    v55 = v54;
LABEL_61:
    v59 = v34 + 1;
    while ((v38 & 0x80000000) == 0)
    {
      v60 = *(v33 + 8 * (v38 & 0x7FFFFFFF));
      --v59;
      --v38;
      if (v60)
      {
        goto LABEL_66;
      }
    }

    v59 = v36;
LABEL_66:
    v61 = v52 + 1;
    while ((v56 & 0x80000000) == 0)
    {
      v62 = *(v51 + 8 * (v56 & 0x7FFFFFFF));
      --v61;
      --v56;
      if (v62)
      {
        goto LABEL_71;
      }
    }

    v61 = v54;
LABEL_71:
    v63 = (v72 - __p) >> 2;
    if (v37 <= v55)
    {
      v64 = v55;
    }

    else
    {
      v64 = v37;
    }

    if (v37 <= v61)
    {
      v37 = v61;
    }

    if (v59 > v55)
    {
      v55 = v59;
    }

    if (v63 > v55)
    {
      v65 = 1;
    }

    else
    {
      v55 = (v72 - __p) >> 2;
      v65 = a4;
    }

    if (v63 > v37)
    {
      v66 = 2;
    }

    else
    {
      v37 = v55;
      v66 = v65;
    }

    if (v63 <= v64)
    {
      v67 = v37;
    }

    else
    {
      v67 = v64;
    }

    if (v63 <= v64)
    {
      v68 = v66;
    }

    else
    {
      v68 = 3;
    }

    if (!v67 || *(*v32 + 8 * v67 - 8) < 16)
    {
      goto LABEL_92;
    }

    switch(v68)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>>(v9, v10, v11, v67, *(*a1 + 48), &__p, v73, v73 + 3, v73 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>>(v9, v10, v11, v67, *(*a1 + 48), &__p, v73, v73 + 3, v73 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::VectorVector<mlx::core::detail::NaNEqual>>(v9, v10, v11, v67, *(*a1 + 48), &__p, v73, v73 + 3, v73 + 6);
        break;
      default:
        LODWORD(v63) = v67;
LABEL_92:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,false,mlx::core::detail::NaNEqual>(v9, v10, v11, v63, *(*a1 + 48), &__p, v73, v73 + 3, v73 + 6);
        break;
    }

    v75[0] = &v73;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v75);
    if (__p)
    {
      v72 = __p;
      operator delete(__p);
    }

    goto LABEL_95;
  }

  if (a4 == 2)
  {
    v43 = *(v8 + 160);
    if (v43 >= 1)
    {
      v44 = *v10;
      v45 = v10[1];
      v46 = v43 + 1;
      do
      {
        v47 = *v9;
        v48 = v9[1];
        v9 += 2;
        v50 = v48 == v45 && v47 == v44;
        *v11++ = v50;
        --v46;
      }

      while (v46 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_26;
    }

    v20 = *(v8 + 48);
    if (v20 >= 1)
    {
      v21 = v20 + 1;
      do
      {
        v22 = *v9;
        v23 = v9[1];
        v9 += 2;
        v24 = *v10;
        v25 = v10[1];
        v10 += 2;
        v27 = v23 == v25 && v22 == v24;
        *v11++ = v27;
        --v21;
      }

      while (v21 > 1);
    }
  }

LABEL_95:
  v69 = *MEMORY[0x277D85DE8];
}

void sub_25A6741C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::VectorVector<mlx::core::detail::NaNEqual>>(short float *a1, short float *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A674634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>>(float16x8_t *a1, __int16 *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, double a9, int16x4_t a10, void *a11)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
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
          mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,3,true>((a1 + 2 * v62), &a2[v55], (a3 + v21), a6, a7, a8, a11, v16, v19, v20);
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

void sub_25A674A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>>(__int16 *a1, float16x8_t *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, double a9, int16x4_t a10, void *a11)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
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
          mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,3,true>(&a1[v62], (a2 + 2 * v55), (a3 + v21), a6, a7, a8, a11, v16, v19, v20);
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

void sub_25A674E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,BOOL,false,mlx::core::detail::NaNEqual>(short float *a1, short float *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::NaNEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::NaNEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 == *v13;
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
          mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::NaNEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A675274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

short float *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,1,true>(short float *result, short float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v14++ = vand_s8(vmovn_s16(vorrq_s8(vbicq_s8(vmvnq_s8(vceqq_f16(*&a2[v17], *&a2[v17])), vceqq_f16(*&result[v17], *&result[v17])), vceqq_f16(*&result[v17], *&a2[v17]))), 0x101010101010101);
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
          v14->i8[0] = v21 == v22;
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

short float *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,2,true>(short float *result, short float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

short float *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,3,true>(short float *result, short float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float16x8_t *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,1,true>(float16x8_t *result, __int16 *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
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
        v19 = vceqq_f16(v18, v18);
        v17 = result;
        v16 = a3;
        v20 = v14;
        do
        {
          v21 = *v17++;
          *v16++ = vand_s8(vmovn_s16(vorrq_s8(vbicq_s8(vmvnq_s8(vceqq_f16(v21, v21)), v19), vceqq_f16(v21, v18))), 0x101010101010101);
          v15 = v20 - 8;
          v22 = v20 > 0xF;
          v20 -= 8;
        }

        while (v22);
      }

      if (v15 >= 1)
      {
        v23 = v15 + 1;
        do
        {
          v24 = *v17->i16;
          v17 = (v17 + 2);
          v16->i8[0] = v24 == *a10.i16;
          v16 = (v16 + 1);
          --v23;
        }

        while (v23 > 1);
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

float16x8_t *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,2,true>(float16x8_t *result, __int16 *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
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
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,1,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

float16x8_t *mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,3,true>(float16x8_t *result, __int16 *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
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
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,2,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,1,true>(__int16 *result, float16x8_t *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
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
        v19 = vceqq_f16(v18, v18);
        v17 = a2;
        v16 = a3;
        v20 = v14;
        do
        {
          v21 = *v17++;
          *v16++ = vand_s8(vmovn_s16(vorrq_s8(vbicq_s8(vmvnq_s8(vceqq_f16(v21, v21)), v19), vceqq_f16(v18, v21))), 0x101010101010101);
          v15 = v20 - 8;
          v22 = v20 > 0xF;
          v20 -= 8;
        }

        while (v22);
      }

      if (v15 >= 1)
      {
        v23 = v15 + 1;
        do
        {
          v24 = *v17->i16;
          v17 = (v17 + 2);
          v16->i8[0] = *a10.i16 == v24;
          v16 = (v16 + 1);
          --v23;
        }

        while (v23 > 1);
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

__int16 *mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,2,true>(__int16 *result, float16x8_t *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
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
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,1,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,3,true>(__int16 *result, float16x8_t *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, int16x4_t a10)
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
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,2,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

short float *mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::NaNEqual,2,false>(short float *result, short float *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = *v20 == *v19;
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

short float *mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::NaNEqual,3,false>(short float *result, short float *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<half,BOOL,mlx::core::detail::NaNEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<float,BOOL,true,mlx::core::VectorVector<mlx::core::detail::NaNEqual>>(float *a1, float *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A675F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>>(_OWORD *a1, _DWORD *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, double a9, double a10, void *a11)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
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
          mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,3,true>((a1 + 4 * v62), &a2[v55], (a3 + v21), a6, a7, a8, a11, v16, v19, v20);
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

void sub_25A676380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>>(_DWORD *a1, _OWORD *a2, int8x8_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, double a9, double a10, void *a11)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
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
          mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,3,true>(&a1[v62], (a2 + 4 * v55), (a3 + v21), a6, a7, a8, a11, v16, v19, v20);
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

void sub_25A676788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,BOOL,false,mlx::core::detail::NaNEqual>(float *a1, float *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::NaNEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::NaNEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 == *v13;
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
          mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::NaNEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A676BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,1,true>(float *result, float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v19 = *&result[v17];
          *v13++ = vand_s8(vmovn_s16(vorrq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqq_f32(*&a2[v17], *&a2[v17]), vceqq_f32(*&a2[v17 + 4], *&a2[v17 + 4]))), vuzp1q_s16(vceqq_f32(v19, v19), vceqq_f32(*&result[v17 + 4], *&result[v17 + 4]))), vuzp1q_s16(vceqq_f32(v19, *&a2[v17]), vceqq_f32(*&result[v17 + 4], *&a2[v17 + 4])))), 0x101010101010101);
          v14 -= 8;
          v17 += 8;
        }

        while (v18 > 0xF);
        v16 = &result[v17];
        v15 = &a2[v17];
      }

      if (v14 >= 1)
      {
        v20 = v14 + 1;
        do
        {
          v21 = *v16++;
          v22 = v21;
          v23 = *v15++;
          v13->i8[0] = v22 == v23;
          v13 = (v13 + 1);
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

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,2,true>(float *result, float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,3,true>(float *result, float *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,1,true>(_OWORD *result, _DWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
        v19 = vceqq_f32(v18, v18);
        v20 = vuzp1q_s16(v19, v19);
        v17 = result;
        v16 = a3;
        v21 = v14;
        do
        {
          v22 = *v17;
          v23 = *(v17 + 1);
          v17 += 2;
          *v16++ = vand_s8(vmovn_s16(vorrq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqq_f32(v22, v22), vceqq_f32(v23, v23))), v20), vuzp1q_s16(vceqq_f32(v22, v18), vceqq_f32(v23, v18)))), 0x101010101010101);
          v15 = v21 - 8;
          v24 = v21 > 0xF;
          v21 -= 8;
        }

        while (v24);
      }

      if (v15 >= 1)
      {
        v25 = v15 + 1;
        do
        {
          v26 = *v17;
          v17 = (v17 + 4);
          v16->i8[0] = v26 == *&a10;
          v16 = (v16 + 1);
          --v25;
        }

        while (v25 > 1);
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

_OWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,2,true>(_OWORD *result, _DWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,1,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,3,true>(_OWORD *result, _DWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,2,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,1,true>(_DWORD *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
        v19 = vceqq_f32(v18, v18);
        v20 = vuzp1q_s16(v19, v19);
        v17 = a2;
        v16 = a3;
        v21 = v14;
        do
        {
          v22 = *v17;
          v23 = *(v17 + 1);
          v17 += 2;
          *v16++ = vand_s8(vmovn_s16(vorrq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqq_f32(v22, v22), vceqq_f32(v23, v23))), v20), vuzp1q_s16(vceqq_f32(v18, v22), vceqq_f32(v18, v23)))), 0x101010101010101);
          v15 = v21 - 8;
          v24 = v21 > 0xF;
          v21 -= 8;
        }

        while (v24);
      }

      if (v15 >= 1)
      {
        v25 = v15 + 1;
        do
        {
          v26 = *v17;
          v17 = (v17 + 4);
          v16->i8[0] = *&a10 == v26;
          v16 = (v16 + 1);
          --v25;
        }

        while (v25 > 1);
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

_DWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,2,true>(_DWORD *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,1,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,3,true>(_DWORD *result, _OWORD *a2, int8x8_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, double a9, double a10)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,2,true>(v16, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a3 = (a3 + v17);
      v16 = (v16 + v18);
      a2 = (a2 + v19);
      --v10;
    }

    while (v10);
  }

  return result;
}

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::NaNEqual,2,false>(float *result, float *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = *v20 == *v19;
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

float *mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::NaNEqual,3,false>(float *result, float *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<float,BOOL,mlx::core::detail::NaNEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::VectorVector<mlx::core::detail::NaNEqual>>(double *a1, double *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,3,true>(&a1[v58], &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A677904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>>(_OWORD *a1, double *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,3,true>((a1 + 8 * v58), &a2[v51], (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A677D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>>(double *a1, _OWORD *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,3,true>(&a1[v58], (a2 + 8 * v51), (a3 + v17), a6, a7, a8, a9, v14);
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

void sub_25A678114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,BOOL,false,mlx::core::detail::NaNEqual>(double *a1, double *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::NaNEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::NaNEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 == *v13;
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
          mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::NaNEqual,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A678544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,1,true>(double *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v19 = *&result[v17];
          *v13++ = vuzp1_s8(vand_s8(vmovn_s32(vorrq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&a2[v17], *&a2[v17]), vceqq_f64(*&a2[v17 + 2], *&a2[v17 + 2]))), vuzp1q_s32(vceqq_f64(v19, v19), vceqq_f64(*&result[v17 + 2], *&result[v17 + 2]))), vuzp1q_s32(vceqq_f64(v19, *&a2[v17]), vceqq_f64(*&result[v17 + 2], *&a2[v17 + 2])))), 0x1000100010001), 0x1000100010001).u32[0];
          v14 -= 4;
          v17 += 4;
        }

        while (v18 > 7);
        v16 = &result[v17];
        v15 = &a2[v17];
      }

      if (v14 >= 1)
      {
        v20 = v14 + 1;
        do
        {
          v21 = *v16++;
          v22 = v21;
          v23 = *v15++;
          *v13 = v22 == v23;
          v13 = (v13 + 1);
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

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,2,true>(double *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,3,true>(double *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,1,true>(_OWORD *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
        v18 = vceqq_f64(v17, v17);
        v19 = vuzp1q_s32(v18, v18);
        v16 = result;
        v15 = a3;
        v20 = v12;
        do
        {
          v21 = *v16;
          v22 = *(v16 + 1);
          v16 += 2;
          *v15++ = vuzp1_s8(vand_s8(vmovn_s32(vorrq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s32(vceqq_f64(v21, v21), vceqq_f64(v22, v22))), v19), vuzp1q_s32(vceqq_f64(v21, v17), vceqq_f64(v22, v17)))), 0x1000100010001), 0x1000100010001).u32[0];
          v14 = v20 - 4;
          v23 = v20 > 7;
          v20 -= 4;
        }

        while (v23);
      }

      if (v14 >= 1)
      {
        v24 = v14 + 1;
        do
        {
          v25 = *v16;
          v16 = (v16 + 8);
          *v15 = v25 == *&v13;
          v15 = (v15 + 1);
          --v24;
        }

        while (v24 > 1);
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

_OWORD *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,2,true>(_OWORD *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_OWORD *mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,3,true>(_OWORD *result, double *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,1,true>(double *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
        v18 = vceqq_f64(v17, v17);
        v19 = vuzp1q_s32(v18, v18);
        v16 = a2;
        v15 = a3;
        v20 = v12;
        do
        {
          v21 = *v16;
          v22 = *(v16 + 1);
          v16 += 2;
          *v15++ = vuzp1_s8(vand_s8(vmovn_s32(vorrq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s32(vceqq_f64(v21, v21), vceqq_f64(v22, v22))), v19), vuzp1q_s32(vceqq_f64(v17, v21), vceqq_f64(v17, v22)))), 0x1000100010001), 0x1000100010001).u32[0];
          v14 = v20 - 4;
          v23 = v20 > 7;
          v20 -= 4;
        }

        while (v23);
      }

      if (v14 >= 1)
      {
        v24 = v14 + 1;
        do
        {
          v25 = *v16;
          v16 = (v16 + 8);
          *v15 = *&v13 == v25;
          v15 = (v15 + 1);
          --v24;
        }

        while (v24 > 1);
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

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,2,true>(double *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,3,true>(double *result, _OWORD *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 = (a3 + v15);
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::NaNEqual,2,false>(double *result, double *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v22 = *v20 == *v19;
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

double *mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::NaNEqual,3,false>(double *result, double *a2, BOOL *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<double,BOOL,mlx::core::detail::NaNEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::VectorVector<mlx::core::detail::NaNEqual>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,3,true>(a1 + 2 * v58, a2 + 2 * v51, a3 + v17, a6, a7, a8, a9, v14);
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

void sub_25A67929C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,3,true>(a1 + 2 * v58, &a2[v51], a3 + v17, a6, a7, a8, a9, v14);
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

void sub_25A6796A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>>(unsigned __int16 *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,3,true>(&a1[v58], a2 + 2 * v51, a3 + v17, a6, a7, a8, a9, v14);
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

void sub_25A679AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,BOOL,false,mlx::core::detail::NaNEqual>(unsigned __int16 *a1, unsigned __int16 *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::NaNEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::NaNEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::NaNEqual,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::NaNEqual,3,false>(&a1[v58], &a2[v51], &a3[v17], a6, a7, a8, a9, v14);
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

void sub_25A679EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,1,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *(a3 + v13) = COERCE_FLOAT(*(result + 2 * v13) << 16) == COERCE_FLOAT(*(a2 + 2 * v13) << 16);
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

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,2,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,3,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,1,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *(a3 + v13) = COERCE_FLOAT(*(result + 2 * v13) << 16) == v14;
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

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,2,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,3,true>(uint64_t result, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,1,true>(unsigned __int16 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *(a3 + v13) = v14 == COERCE_FLOAT(*(a2 + 2 * v13) << 16);
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

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,2,true>(unsigned __int16 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,3,true>(unsigned __int16 *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::NaNEqual,1,false>(unsigned __int16 *result, unsigned __int16 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = *(*a7 + 8 * a8);
    v10 = 2 * *(*a5 + 8 * a8);
    v11 = 2 * *(*a6 + 8 * a8);
    do
    {
      *a3 = COERCE_FLOAT(*result << 16) == COERCE_FLOAT(*a2 << 16);
      a3 += v9;
      result = (result + v10);
      a2 = (a2 + v11);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::NaNEqual,2,false>(unsigned __int16 *result, unsigned __int16 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::NaNEqual,1,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::NaNEqual,3,false>(unsigned __int16 *result, unsigned __int16 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::NaNEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::VectorVector<mlx::core::detail::NaNEqual>>(uint64_t a1, uint64_t a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,3,true>(a1 + 8 * v58, a2 + 8 * v51, &a3[v17], a6, a7, a8, a9, v14);
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

void sub_25A67AB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>>(float *a1, float *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,3,true>(&a1[2 * v58], &a2[2 * v51], &a3[v17], a6, a7, a8, a9, v14);
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

void sub_25A67AF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>>(float *a1, float *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,3,true>(&a1[2 * v58], &a2[2 * v51], &a3[v17], a6, a7, a8, a9, v14);
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

void sub_25A67B378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,BOOL,false,mlx::core::detail::NaNEqual>(uint64_t a1, uint64_t a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::NaNEqual,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::NaNEqual,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::NaNEqual,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::NaNEqual,3,false>(a1 + 8 * v58, a2 + 8 * v51, &a3[v17], a6, a7, a8, a9, v14);
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

void sub_25A67B780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,1,true>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v17 = *(result + v13 + 4) == *(a2 + v13 + 4) && *(result + v13) == *(a2 + v13);
          *v15++ = v17;
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

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,2,true>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,3,true>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorVector<mlx::core::detail::NaNEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,1,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v21 = v19 == v14 && v18 == v13;
          *v17++ = v21;
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

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,2,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,3,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::VectorScalar<mlx::core::detail::NaNEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,1,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v21 = v14 == v19 && v13 == v18;
          *v17++ = v21;
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

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,2,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

float *mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,3,true>(float *result, float *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::ScalarVector<mlx::core::detail::NaNEqual>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 = (v14 + v16);
      a2 = (a2 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::NaNEqual,1,false>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      v15 = *v10 == *v12 && *(v10 - 1) == *(v12 - 1);
      *a3 = v15;
      a3 += v9;
      v10 = (v10 + v11);
      v12 = (v12 + v13);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::NaNEqual,2,false>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::NaNEqual,1,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::NaNEqual,3,false>(uint64_t result, uint64_t a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<mlx::core::complex64_t,BOOL,mlx::core::detail::NaNEqual,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v15;
      v14 += v16;
      a2 += v17;
      --v8;
    }

    while (v8);
  }

  return result;
}

void *std::__function::__func<std::__bind<mlx::core::Equal::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Equal::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C01940;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::Equal::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Equal::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286C01940;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::Equal::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Equal::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286C01940;
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

void std::__function::__func<std::__bind<mlx::core::Equal::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Equal::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<mlx::core::Equal::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Equal::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::Equal::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Equal::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_113comparison_opINS3_6detail5EqualEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286C01A38;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_113comparison_opINS3_6detail5EqualEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286C01A38;
  v2 = (a1 + 5);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_113comparison_opINS3_6detail5EqualEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C01A38;
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

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_113comparison_opINS3_6detail5EqualEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_113comparison_opINS3_6detail5EqualEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_113comparison_opINS3_6detail5EqualEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEEclEv(uint64_t a1, double a2)
{
  v3 = mlx::core::scheduler::scheduler(v2);

  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_113comparison_opINS3_6detail5EqualEEEvRKNS3_5arrayESD_RSB_T_NS3_6StreamEEUlvE_JEEEvOSF_DpOT0_EUlvE_NS_9allocatorISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::anonymous namespace::comparison_op<mlx::core::detail::Equal>(mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Equal,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1, double a2)
{
  switch(*(*a1 + 56))
  {
    case 0:
      mlx::core::binary_op<BOOL,BOOL,mlx::core::detail::Equal>(a1, (a1 + 16), (a1 + 32), *(a1 + 48));
      return;
    case 1:
      v11 = *(a1 + 48);
      v12 = (a1 + 16);
      v13 = (a1 + 32);
      goto LABEL_14;
    case 2:
      v5 = *(a1 + 48);
      v6 = (a1 + 16);
      v7 = (a1 + 32);
      goto LABEL_9;
    case 3:
      v8 = *(a1 + 48);
      v9 = (a1 + 16);
      v10 = (a1 + 32);
      goto LABEL_11;
    case 4:
      v2 = *(a1 + 48);
      v3 = (a1 + 16);
      v4 = (a1 + 32);
      goto LABEL_5;
    case 5:
      v11 = *(a1 + 48);
      v12 = (a1 + 16);
      v13 = (a1 + 32);
LABEL_14:
      mlx::core::binary_op<unsigned char,BOOL,mlx::core::detail::Equal>(a1, v12, v13, v11);
      return;
    case 6:
      v5 = *(a1 + 48);
      v6 = (a1 + 16);
      v7 = (a1 + 32);
LABEL_9:
      mlx::core::binary_op<unsigned short,BOOL,mlx::core::detail::Equal>(a1, v6, v7, v5);
      break;
    case 7:
      v8 = *(a1 + 48);
      v9 = (a1 + 16);
      v10 = (a1 + 32);
LABEL_11:
      mlx::core::binary_op<unsigned int,BOOL,mlx::core::detail::Equal>(a1, v9, v10, v8);
      break;
    case 8:
      v2 = *(a1 + 48);
      v3 = (a1 + 16);
      v4 = (a1 + 32);
LABEL_5:
      mlx::core::binary_op<unsigned long long,BOOL,mlx::core::detail::Equal>(a1, v3, v4, v2);
      break;
    case 9:
      mlx::core::binary_op<half,BOOL,mlx::core::detail::Equal>(a1, (a1 + 16), (a1 + 32), *(a1 + 48), *&a2);
      break;
    case 0xA:
      mlx::core::binary_op<float,BOOL,mlx::core::detail::Equal>(a1, (a1 + 16), (a1 + 32), *(a1 + 48), a2);
      break;
    case 0xB:
      mlx::core::binary_op<double,BOOL,mlx::core::detail::Equal>(a1, (a1 + 16), (a1 + 32), *(a1 + 48));
      break;
    case 0xC:
      mlx::core::binary_op<mlx::core::_MLX_BFloat16,BOOL,mlx::core::detail::Equal>(a1, (a1 + 16), (a1 + 32), *(a1 + 48));
      break;
    case 0xD:
      mlx::core::binary_op<mlx::core::complex64_t,BOOL,mlx::core::detail::Equal>(a1, (a1 + 16), (a1 + 32), *(a1 + 48));
      break;
    default:
      return;
  }
}

void mlx::core::binary_op<BOOL,BOOL,mlx::core::detail::Equal>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      *v11 = *v9 == *v10;
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
          *v11++ = v13 ^ v15 & 1 ^ 1;
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
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::Equal>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::Equal>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorVector<mlx::core::detail::Equal>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      default:
        LODWORD(v50) = v54;
LABEL_68:
        mlx::core::binary_op_dispatch_dims<BOOL,BOOL,false,mlx::core::detail::Equal>(v9, v10, v11, v50, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
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
        *v11++ = v35 ^ v37 & 1 ^ 1;
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
        *v11++ = ((v20 ^ v18) & 1) == 0;
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_71:
  v56 = *MEMORY[0x277D85DE8];
}

void sub_25A67CC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<unsigned char,BOOL,mlx::core::detail::Equal>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      *v11 = *v10 == *v9;
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
          *v11 = vandq_s8(vceqq_s8(v14, v16), v15);
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
          *v11++ = v63 == v13;
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
        mlx::core::binary_op_dispatch_dims<unsigned char,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::Equal>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned char,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::Equal>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned char,BOOL,true,mlx::core::VectorVector<mlx::core::detail::Equal>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      default:
        LODWORD(v56) = v60;
LABEL_68:
        mlx::core::binary_op_dispatch_dims<unsigned char,BOOL,false,mlx::core::detail::Equal>(v9, v10, v11, v56, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
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
        *v11 = vandq_s8(vceqq_s8(v42, v40), v41);
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
        *v11++ = v39 == v69;
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
        *v11 = vandq_s8(vceqq_s8(v22, v23), v20);
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
        *v11++ = v67 == v65;
        --v64;
      }

      while (v64 > 1);
    }
  }

LABEL_85:
  v70 = *MEMORY[0x277D85DE8];
}

void sub_25A67D1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<unsigned short,BOOL,mlx::core::detail::Equal>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      v11->i8[0] = *v10 == v9->u16[0];
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
          *v11++ = vandq_s8(vuzp1q_s8(vceqq_s16(v14, v16), vceqq_s16(v14, v17)), v15);
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
          v11->i8[0] = v66 == v13;
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
        mlx::core::binary_op_dispatch_dims<unsigned short,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::Equal>>(v9, v10, v11, v63, *(*a1 + 48), &__p, v77, v77 + 3, v77 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned short,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::Equal>>(v9, v10, v11, v63, *(*a1 + 48), &__p, v77, v77 + 3, v77 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned short,BOOL,true,mlx::core::VectorVector<mlx::core::detail::Equal>>(v9, v10, v11, v63, *(*a1 + 48), &__p, v77, v77 + 3, v77 + 6);
        break;
      default:
        LODWORD(v59) = v63;
LABEL_68:
        mlx::core::binary_op_dispatch_dims<unsigned short,BOOL,false,mlx::core::detail::Equal>(v9, v10, v11->i8, v59, *(*a1 + 48), &__p, v77, v77 + 3, v77 + 6);
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
        *v11++ = vandq_s8(vuzp1q_s8(vceqq_s16(v44, v42), vceqq_s16(v45, v42)), v43);
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
        v11->i8[0] = v41 == v72;
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
        *v11++ = vandq_s8(vuzp1q_s8(vceqq_s16(v22, v24), vceqq_s16(v23, v25)), v21);
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
        v11->i8[0] = v70 == v68;
        v11 = (v11 + 1);
        --v67;
      }

      while (v67 > 1);
    }
  }

LABEL_85:
  v73 = *MEMORY[0x277D85DE8];
}

void sub_25A67D7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op<unsigned int,BOOL,mlx::core::detail::Equal>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      v11->i8[0] = v9->i32[0] == *v10;
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
          *v11++ = vand_s8(vmovn_s16(vuzp1q_s16(vceqq_s32(v14, v15), vceqq_s32(v14, v16))), 0x101010101010101);
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
          v11->i8[0] = v13 == v63;
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
        mlx::core::binary_op_dispatch_dims<unsigned int,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::Equal>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned int,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::Equal>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned int,BOOL,true,mlx::core::VectorVector<mlx::core::detail::Equal>>(v9->i32, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      default:
        LODWORD(v56) = v60;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<unsigned int,BOOL,false,mlx::core::detail::Equal>(v9, v10, v11, v56, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
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
        *v11++ = vand_s8(vmovn_s16(vuzp1q_s16(vceqq_s32(v41, v40), vceqq_s32(v42, v40))), 0x101010101010101);
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
        v11->i8[0] = v69 == v39;
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
        *v11++ = vand_s8(vmovn_s16(vuzp1q_s16(vceqq_s32(v20, v22), vceqq_s32(v21, v23))), 0x101010101010101);
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
        v11->i8[0] = v65 == v67;
        v11 = (v11 + 1);
        --v64;
      }

      while (v64 > 1);
    }
  }

LABEL_84:
  v70 = *MEMORY[0x277D85DE8];
}