void sub_25A71B314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorVector<mlx::core::detail::LogicalOr>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
              *(v12 + v22) = (*(v14 + v22) | *(v13 + v22)) & 1;
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
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(v14 + v68, v13 + v61, v12 + v26, a6, a7, a8, a9, v15);
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

void sub_25A71B7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>>(uint64_t a1, char *a2, uint64_t a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
              *(v12 + v22) = (*(v14 + v22) | v23) & 1;
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
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(v14 + v69, &v13[v62], v12 + v27, a6, a7, a8, a9, v15);
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

void sub_25A71BC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>>(char *a1, uint64_t a2, uint64_t a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
              *(v12 + v22) = (v23 | *(v13 + v22)) & 1;
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
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(&v14[v69], v13 + v62, v12 + v27, a6, a7, a8, a9, v15);
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

void sub_25A71C048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
              *(v21 + v22) = (*(v19 + v22) | *(v20 + v22)) & 1;
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

uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(uint64_t result, char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
              *(v21 + v22) = (*(v19 + v22) | v23) & 1;
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

uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(uint64_t result, char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(char *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
              *(v21 + v22) = (v23 | *(v20 + v22)) & 1;
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

char *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(char *result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<unsigned char,unsigned char,mlx::core::detail::LogicalOr>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      *v11 = (*v10 | *v9) != 0;
      goto LABEL_84;
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
        do
        {
          v15 = *v10;
          v10 += 16;
          v16 = vorrq_s8(v15, v14);
          *v11 = vtstq_s8(v16, v16);
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
          *v11++ = (v63 | v13) != 0;
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
        mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::VectorVector<mlx::core::detail::LogicalOr>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      default:
        LODWORD(v56) = v60;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,false,mlx::core::detail::LogicalOr>(v9, v10, v11, v56, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
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
    if (v38 < 16)
    {
      v43 = *(v8 + 160);
    }

    else
    {
      v40 = vdupq_n_s8(v39);
      do
      {
        v41 = *v9;
        v9 += 16;
        v42 = vorrq_s8(v41, v40);
        *v11 = vtstq_s8(v42, v42);
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
        *v11++ = (v69 | v39) != 0;
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
    if (v19 < 16)
    {
      v24 = *(v8 + 48);
    }

    else
    {
      do
      {
        v20 = *v9;
        v9 += 16;
        v21 = v20;
        v22 = *v10;
        v10 += 16;
        v23 = vorrq_s8(v22, v21);
        *v11 = vtstq_s8(v23, v23);
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
        *v11++ = (v67 | v65) != 0;
        --v64;
      }

      while (v64 > 1);
    }
  }

LABEL_84:
  v70 = *MEMORY[0x277D85DE8];
}

void sub_25A71CA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::VectorVector<mlx::core::detail::LogicalOr>>(unsigned __int8 *a1, unsigned __int8 *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A71CEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>>(unsigned __int8 *a1, unsigned __int8 *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A71D304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>>(unsigned __int8 *a1, unsigned __int8 *a2, BOOL *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A71D718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,false,mlx::core::detail::LogicalOr>(unsigned __int8 *a1, unsigned __int8 *a2, BOOL *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::LogicalOr,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::LogicalOr,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = (*v13 | *v14) != 0;
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
          mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::LogicalOr,3,false>(&v14[v65], &v13[v58], &v12[v23], a6, a7, a8, a9, v15);
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

void sub_25A71DB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v19 = vorrq_s8(*&a2[v17], *&result[v17]);
          *&a3[v17] = vtstq_s8(v19, v19);
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
        v20 = v13 + 1;
        do
        {
          v22 = *v16++;
          v21 = v22;
          v23 = *v15++;
          *v14++ = (v23 | v21) != 0;
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

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,1,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v20 = vorrq_s8(*&result[v17], v18);
          *&a3[v17] = vtstq_s8(v20, v20);
          v14 -= 16;
          v17 += 16;
        }

        while (v19 > 0x1F);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v21 = v14 + 1;
        do
        {
          v22 = *v16++;
          *v15++ = (v22 | v13) != 0;
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

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,1,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v20 = vorrq_s8(*&a2[v17], v18);
          *&a3[v17] = vtstq_s8(v20, v20);
          v14 -= 16;
          v17 += 16;
        }

        while (v19 > 0x1F);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v21 = v14 + 1;
        do
        {
          v22 = *v16++;
          *v15++ = (v22 | v13) != 0;
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

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::LogicalOr,2,false>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v20 = (*v19 | *v18) != 0;
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

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::LogicalOr,3,false>(unsigned __int8 *result, unsigned __int8 *a2, BOOL *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::LogicalOr,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<unsigned short,unsigned short,mlx::core::detail::LogicalOr>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v11->i16[0] = (v10->u16[0] | v9->u16[0]) != 0;
      goto LABEL_84;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      v13 = v9->u16[0];
      if (v12 < 16)
      {
        v19 = *(*a2 + 160);
      }

      else
      {
        v14 = vdupq_n_s16(v13);
        do
        {
          v15 = *v10;
          v16 = v10[1];
          v10 += 2;
          v17 = vorrq_s8(v16, v14);
          v18 = vorrq_s8(v15, v14);
          *v11 = vtstq_s16(v18, v18);
          v11[1] = vtstq_s16(v17, v17);
          v11 += 2;
          v19 = v12 - 16;
          v20 = v12 > 0x1F;
          v12 -= 16;
        }

        while (v20);
      }

      if (v19 >= 1)
      {
        v68 = v19 + 1;
        do
        {
          v69 = v10->u16[0];
          v10 = (v10 + 2);
          v11->i16[0] = (v69 | v13) != 0;
          v11 = (v11 + 2);
          --v68;
        }

        while (v68 > 1);
      }

      goto LABEL_84;
    }

LABEL_13:
    memset(v82, 0, sizeof(v82));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v82, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v29 = *a2;
    memset(v83, 0, sizeof(v83));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v83, *(v29 + 24), *(v29 + 32), (*(v29 + 32) - *(v29 + 24)) >> 3);
    v30 = *a3;
    v85[0] = 0;
    v85[1] = 0;
    v84 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v84, *(v30 + 24), *(v30 + 32), (*(v30 + 32) - *(v30 + 24)) >> 3);
    memset(v77, 0, sizeof(v77));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v77, v82, &v86, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v77, 0x7FFFFFFFuLL, &__p);
    v81 = v77;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v81);
    for (i = 0; i != -9; i -= 3)
    {
      v32 = v85[i - 1];
      if (v32)
      {
        v85[i] = v32;
        operator delete(v32);
      }
    }

    v33 = v80 + 6;
    v34 = *v80;
    v35 = (v80[1] - *v80) >> 3;
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
    v50 = v80[3];
    v51 = (v80[4] - v50) >> 3;
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
      if (*(v50 + v57) != *(*v33 + v57))
      {
        goto LABEL_36;
      }
    }

    v54 = v53;
LABEL_36:
    v58 = v35 + 1;
    while ((v39 & 0x80000000) == 0)
    {
      v59 = *(v34 + 8 * (v39 & 0x7FFFFFFF));
      --v58;
      --v39;
      if (v59)
      {
        goto LABEL_41;
      }
    }

    v58 = v37;
LABEL_41:
    v60 = v51 + 1;
    while ((v55 & 0x80000000) == 0)
    {
      v61 = *(v50 + 8 * (v55 & 0x7FFFFFFF));
      --v60;
      --v55;
      if (v61)
      {
        goto LABEL_46;
      }
    }

    v60 = v53;
LABEL_46:
    v62 = (v79 - __p) >> 2;
    if (v38 <= v54)
    {
      v63 = v54;
    }

    else
    {
      v63 = v38;
    }

    if (v38 <= v60)
    {
      v38 = v60;
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
      v54 = (v79 - __p) >> 2;
      v64 = a4;
    }

    if (v62 > v38)
    {
      v65 = 2;
    }

    else
    {
      v38 = v54;
      v65 = v64;
    }

    if (v62 <= v63)
    {
      v66 = v38;
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

    if (!v66 || *(*v33 + 8 * v66 - 8) < 16)
    {
      goto LABEL_67;
    }

    switch(v67)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>>(v9, v10, v11, v66, *(*a1 + 48), &__p, v80, v80 + 3, v80 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>>(v9, v10, v11, v66, *(*a1 + 48), &__p, v80, v80 + 3, v80 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::VectorVector<mlx::core::detail::LogicalOr>>(v9, v10, v11, v66, *(*a1 + 48), &__p, v80, v80 + 3, v80 + 6);
        break;
      default:
        LODWORD(v62) = v66;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,false,mlx::core::detail::LogicalOr>(v9, v10, v11, v62, *(*a1 + 48), &__p, v80, v80 + 3, v80 + 6);
        break;
    }

    v82[0] = &v80;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v82);
    if (__p)
    {
      v79 = __p;
      operator delete(__p);
    }

    goto LABEL_84;
  }

  if (a4 == 2)
  {
    v42 = *(v8 + 160);
    v43 = v10->u16[0];
    if (v42 < 16)
    {
      v49 = *(v8 + 160);
    }

    else
    {
      v44 = vdupq_n_s16(v43);
      do
      {
        v45 = *v9;
        v46 = v9[1];
        v9 += 2;
        v47 = vorrq_s8(v46, v44);
        v48 = vorrq_s8(v45, v44);
        *v11 = vtstq_s16(v48, v48);
        v11[1] = vtstq_s16(v47, v47);
        v11 += 2;
        v49 = v42 - 16;
        v20 = v42 > 0x1F;
        v42 -= 16;
      }

      while (v20);
    }

    if (v49 >= 1)
    {
      v74 = v49 + 1;
      do
      {
        v75 = v9->u16[0];
        v9 = (v9 + 2);
        v11->i16[0] = (v75 | v43) != 0;
        v11 = (v11 + 2);
        --v74;
      }

      while (v74 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_13;
    }

    v21 = *(v8 + 48);
    if (v21 < 16)
    {
      v28 = *(v8 + 48);
    }

    else
    {
      do
      {
        v22 = *v9;
        v23 = v9[1];
        v9 += 2;
        v24 = *v10;
        v25 = v10[1];
        v10 += 2;
        v26 = vorrq_s8(v25, v23);
        v27 = vorrq_s8(v24, v22);
        *v11 = vtstq_s16(v27, v27);
        v11[1] = vtstq_s16(v26, v26);
        v11 += 2;
        v28 = v21 - 16;
        v20 = v21 > 0x1F;
        v21 -= 16;
      }

      while (v20);
    }

    if (v28 >= 1)
    {
      v70 = v28 + 1;
      do
      {
        v72 = v9->u16[0];
        v9 = (v9 + 2);
        v71 = v72;
        v73 = v10->u16[0];
        v10 = (v10 + 2);
        v11->i16[0] = (v73 | v71) != 0;
        v11 = (v11 + 2);
        --v70;
      }

      while (v70 > 1);
    }
  }

LABEL_84:
  v76 = *MEMORY[0x277D85DE8];
}

void sub_25A71E918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::VectorVector<mlx::core::detail::LogicalOr>>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A71ED98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A71F1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A71F5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,false,mlx::core::detail::LogicalOr>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::LogicalOr,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::LogicalOr,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = (*v13 | *v14) != 0;
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
          mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::LogicalOr,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A71F9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v20 = vorrq_s8(*&a2[v17 + 8], *&result[v17 + 8]);
          v21 = vorrq_s8(*&a2[v17], *&result[v17]);
          *v19 = vtstq_s16(v21, v21);
          v19[1] = vtstq_s16(v20, v20);
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
        v22 = v15 + 1;
        do
        {
          v24 = *v16++;
          v23 = v24;
          v25 = *v13++;
          *v14++ = (v25 | v23) != 0;
          --v22;
        }

        while (v22 > 1);
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

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,1,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v21 = vorrq_s8(*&result[v17 + 8], v18);
          v22 = vorrq_s8(*&result[v17], v18);
          *v20 = vtstq_s16(v22, v22);
          v20[1] = vtstq_s16(v21, v21);
          v14 -= 16;
          v17 += 16;
        }

        while (v19 > 0x1F);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v23 = v14 + 1;
        do
        {
          v24 = *v16++;
          *v15++ = (v24 | v13) != 0;
          --v23;
        }

        while (v23 > 1);
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

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,1,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v21 = vorrq_s8(*&a2[v17 + 8], v18);
          v22 = vorrq_s8(*&a2[v17], v18);
          *v20 = vtstq_s16(v22, v22);
          v20[1] = vtstq_s16(v21, v21);
          v14 -= 16;
          v17 += 16;
        }

        while (v19 > 0x1F);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v23 = v14 + 1;
        do
        {
          v24 = *v16++;
          *v15++ = (v24 | v13) != 0;
          --v23;
        }

        while (v23 > 1);
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

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::LogicalOr,2,false>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v21 = (*v22 | *v23) != 0;
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

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::LogicalOr,3,false>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::LogicalOr,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<unsigned int,unsigned int,mlx::core::detail::LogicalOr>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v11->i32[0] = (v10->i32[0] | v9->i32[0]) != 0;
      goto LABEL_84;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      v13 = v9->i32[0];
      if (v12 < 8)
      {
        v19 = *(*a2 + 160);
      }

      else
      {
        v14 = vdupq_n_s32(v13);
        do
        {
          v15 = *v10;
          v16 = v10[1];
          v10 += 2;
          v17 = vorrq_s8(v16, v14);
          v18 = vorrq_s8(v15, v14);
          *v11 = vtstq_s32(v18, v18);
          v11[1] = vtstq_s32(v17, v17);
          v11 += 2;
          v19 = v12 - 8;
          v20 = v12 > 0xF;
          v12 -= 8;
        }

        while (v20);
      }

      if (v19 >= 1)
      {
        v68 = v19 + 1;
        do
        {
          v69 = v10->i32[0];
          v10 = (v10 + 4);
          v11->i32[0] = (v69 | v13) != 0;
          v11 = (v11 + 4);
          --v68;
        }

        while (v68 > 1);
      }

      goto LABEL_84;
    }

LABEL_13:
    memset(v82, 0, sizeof(v82));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v82, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v29 = *a2;
    memset(v83, 0, sizeof(v83));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v83, *(v29 + 24), *(v29 + 32), (*(v29 + 32) - *(v29 + 24)) >> 3);
    v30 = *a3;
    v85[0] = 0;
    v85[1] = 0;
    v84 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v84, *(v30 + 24), *(v30 + 32), (*(v30 + 32) - *(v30 + 24)) >> 3);
    memset(v77, 0, sizeof(v77));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v77, v82, &v86, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v77, 0x7FFFFFFFuLL, &__p);
    v81 = v77;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v81);
    for (i = 0; i != -9; i -= 3)
    {
      v32 = v85[i - 1];
      if (v32)
      {
        v85[i] = v32;
        operator delete(v32);
      }
    }

    v33 = v80 + 6;
    v34 = *v80;
    v35 = (v80[1] - *v80) >> 3;
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
    v50 = v80[3];
    v51 = (v80[4] - v50) >> 3;
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
      if (*(v50 + v57) != *(*v33 + v57))
      {
        goto LABEL_36;
      }
    }

    v54 = v53;
LABEL_36:
    v58 = v35 + 1;
    while ((v39 & 0x80000000) == 0)
    {
      v59 = *(v34 + 8 * (v39 & 0x7FFFFFFF));
      --v58;
      --v39;
      if (v59)
      {
        goto LABEL_41;
      }
    }

    v58 = v37;
LABEL_41:
    v60 = v51 + 1;
    while ((v55 & 0x80000000) == 0)
    {
      v61 = *(v50 + 8 * (v55 & 0x7FFFFFFF));
      --v60;
      --v55;
      if (v61)
      {
        goto LABEL_46;
      }
    }

    v60 = v53;
LABEL_46:
    v62 = (v79 - __p) >> 2;
    if (v38 <= v54)
    {
      v63 = v54;
    }

    else
    {
      v63 = v38;
    }

    if (v38 <= v60)
    {
      v38 = v60;
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
      v54 = (v79 - __p) >> 2;
      v64 = a4;
    }

    if (v62 > v38)
    {
      v65 = 2;
    }

    else
    {
      v38 = v54;
      v65 = v64;
    }

    if (v62 <= v63)
    {
      v66 = v38;
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

    if (!v66 || *(*v33 + 8 * v66 - 8) < 16)
    {
      goto LABEL_67;
    }

    switch(v67)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>>(v9, v10->i32, v11, v66, *(*a1 + 48), &__p, v80, v80 + 3, v80 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>>(v9->i32, v10, v11, v66, *(*a1 + 48), &__p, v80, v80 + 3, v80 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::VectorVector<mlx::core::detail::LogicalOr>>(v9->i32, v10->i32, v11, v66, *(*a1 + 48), &__p, v80, v80 + 3, v80 + 6);
        break;
      default:
        LODWORD(v62) = v66;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,false,mlx::core::detail::LogicalOr>(v9, v10, v11, v62, *(*a1 + 48), &__p, v80, v80 + 3, v80 + 6);
        break;
    }

    v82[0] = &v80;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v82);
    if (__p)
    {
      v79 = __p;
      operator delete(__p);
    }

    goto LABEL_84;
  }

  if (a4 == 2)
  {
    v42 = *(v8 + 160);
    v43 = v10->i32[0];
    if (v42 < 8)
    {
      v49 = *(v8 + 160);
    }

    else
    {
      v44 = vdupq_n_s32(v43);
      do
      {
        v45 = *v9;
        v46 = v9[1];
        v9 += 2;
        v47 = vorrq_s8(v46, v44);
        v48 = vorrq_s8(v45, v44);
        *v11 = vtstq_s32(v48, v48);
        v11[1] = vtstq_s32(v47, v47);
        v11 += 2;
        v49 = v42 - 8;
        v20 = v42 > 0xF;
        v42 -= 8;
      }

      while (v20);
    }

    if (v49 >= 1)
    {
      v74 = v49 + 1;
      do
      {
        v75 = v9->i32[0];
        v9 = (v9 + 4);
        v11->i32[0] = (v75 | v43) != 0;
        v11 = (v11 + 4);
        --v74;
      }

      while (v74 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_13;
    }

    v21 = *(v8 + 48);
    if (v21 < 8)
    {
      v28 = *(v8 + 48);
    }

    else
    {
      do
      {
        v22 = *v9;
        v23 = v9[1];
        v9 += 2;
        v24 = *v10;
        v25 = v10[1];
        v10 += 2;
        v26 = vorrq_s8(v25, v23);
        v27 = vorrq_s8(v24, v22);
        *v11 = vtstq_s32(v27, v27);
        v11[1] = vtstq_s32(v26, v26);
        v11 += 2;
        v28 = v21 - 8;
        v20 = v21 > 0xF;
        v21 -= 8;
      }

      while (v20);
    }

    if (v28 >= 1)
    {
      v70 = v28 + 1;
      do
      {
        v72 = v9->i32[0];
        v9 = (v9 + 4);
        v71 = v72;
        v73 = v10->i32[0];
        v10 = (v10 + 4);
        v11->i32[0] = (v73 | v71) != 0;
        v11 = (v11 + 4);
        --v70;
      }

      while (v70 > 1);
    }
  }

LABEL_84:
  v76 = *MEMORY[0x277D85DE8];
}

void sub_25A720854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::VectorVector<mlx::core::detail::LogicalOr>>(int *a1, int *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A720CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>>(int *a1, unsigned int *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A7210EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>>(unsigned int *a1, int *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A721504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,false,mlx::core::detail::LogicalOr>(_DWORD *a1, _DWORD *a2, _DWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::LogicalOr,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::LogicalOr,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = (*v13 | *v14) != 0;
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
          mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::LogicalOr,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A72192C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(int *result, int *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v20 = vorrq_s8(*&a2[v17 + 4], *&result[v17 + 4]);
          v21 = vorrq_s8(*&a2[v17], *&result[v17]);
          *v19 = vtstq_s32(v21, v21);
          v19[1] = vtstq_s32(v20, v20);
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
        v22 = v15 + 1;
        do
        {
          v24 = *v16++;
          v23 = v24;
          v25 = *v13++;
          *v14++ = (v25 | v23) != 0;
          --v22;
        }

        while (v22 > 1);
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

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(int *result, int *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(int *result, int *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,1,true>(int *result, unsigned int *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v21 = vorrq_s8(*&result[v17 + 4], v18);
          v22 = vorrq_s8(*&result[v17], v18);
          *v20 = vtstq_s32(v22, v22);
          v20[1] = vtstq_s32(v21, v21);
          v14 -= 8;
          v17 += 8;
        }

        while (v19 > 0xF);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v23 = v14 + 1;
        do
        {
          v24 = *v16++;
          *v15++ = (v24 | v13) != 0;
          --v23;
        }

        while (v23 > 1);
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

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(int *result, unsigned int *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(int *result, unsigned int *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,1,true>(unsigned int *result, int *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v21 = vorrq_s8(*&a2[v17 + 4], v18);
          v22 = vorrq_s8(*&a2[v17], v18);
          *v20 = vtstq_s32(v22, v22);
          v20[1] = vtstq_s32(v21, v21);
          v14 -= 8;
          v17 += 8;
        }

        while (v19 > 0xF);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v23 = v14 + 1;
        do
        {
          v24 = *v16++;
          *v15++ = (v24 | v13) != 0;
          --v23;
        }

        while (v23 > 1);
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

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(unsigned int *result, int *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(unsigned int *result, int *a2, _DWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::LogicalOr,2,false>(_DWORD *result, _DWORD *a2, _DWORD *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v19 = (*v20 | *v21) != 0;
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

_DWORD *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::LogicalOr,3,false>(_DWORD *result, _DWORD *a2, _DWORD *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::LogicalOr,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<unsigned long long,unsigned long long,mlx::core::detail::LogicalOr>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      v11->i64[0] = (v10->i64[0] | v9->i64[0]) != 0;
      goto LABEL_84;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      v13 = v9->i64[0];
      if (v12 < 4)
      {
        v19 = *(*a2 + 160);
      }

      else
      {
        v14 = vdupq_n_s64(v13);
        do
        {
          v15 = *v10;
          v16 = v10[1];
          v10 += 2;
          v17 = vorrq_s8(v16, v14);
          v18 = vorrq_s8(v15, v14);
          *v11 = vtstq_s64(v18, v18);
          v11[1] = vtstq_s64(v17, v17);
          v11 += 2;
          v19 = v12 - 4;
          v20 = v12 > 7;
          v12 -= 4;
        }

        while (v20);
      }

      if (v19 >= 1)
      {
        v68 = v19 + 1;
        do
        {
          v69 = v10->i64[0];
          v10 = (v10 + 8);
          v11->i64[0] = (v69 | v13) != 0;
          v11 = (v11 + 8);
          --v68;
        }

        while (v68 > 1);
      }

      goto LABEL_84;
    }

LABEL_13:
    memset(v82, 0, sizeof(v82));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v82, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v29 = *a2;
    memset(v83, 0, sizeof(v83));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v83, *(v29 + 24), *(v29 + 32), (*(v29 + 32) - *(v29 + 24)) >> 3);
    v30 = *a3;
    v85[0] = 0;
    v85[1] = 0;
    v84 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v84, *(v30 + 24), *(v30 + 32), (*(v30 + 32) - *(v30 + 24)) >> 3);
    memset(v77, 0, sizeof(v77));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v77, v82, &v86, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v77, 0x7FFFFFFFuLL, &__p);
    v81 = v77;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v81);
    for (i = 0; i != -9; i -= 3)
    {
      v32 = v85[i - 1];
      if (v32)
      {
        v85[i] = v32;
        operator delete(v32);
      }
    }

    v33 = v80 + 6;
    v34 = *v80;
    v35 = (v80[1] - *v80) >> 3;
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
    v50 = v80[3];
    v51 = (v80[4] - v50) >> 3;
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
      if (*(v50 + v57) != *(*v33 + v57))
      {
        goto LABEL_36;
      }
    }

    v54 = v53;
LABEL_36:
    v58 = v35 + 1;
    while ((v39 & 0x80000000) == 0)
    {
      v59 = *(v34 + 8 * (v39 & 0x7FFFFFFF));
      --v58;
      --v39;
      if (v59)
      {
        goto LABEL_41;
      }
    }

    v58 = v37;
LABEL_41:
    v60 = v51 + 1;
    while ((v55 & 0x80000000) == 0)
    {
      v61 = *(v50 + 8 * (v55 & 0x7FFFFFFF));
      --v60;
      --v55;
      if (v61)
      {
        goto LABEL_46;
      }
    }

    v60 = v53;
LABEL_46:
    v62 = (v79 - __p) >> 2;
    if (v38 <= v54)
    {
      v63 = v54;
    }

    else
    {
      v63 = v38;
    }

    if (v38 <= v60)
    {
      v38 = v60;
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
      v54 = (v79 - __p) >> 2;
      v64 = a4;
    }

    if (v62 > v38)
    {
      v65 = 2;
    }

    else
    {
      v38 = v54;
      v65 = v64;
    }

    if (v62 <= v63)
    {
      v66 = v38;
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

    if (!v66 || *(*v33 + 8 * v66 - 8) < 16)
    {
      goto LABEL_67;
    }

    switch(v67)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>>(v9, v10->i64, v11, v66, *(*a1 + 48), &__p, v80, v80 + 3, v80 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>>(v9->i64, v10, v11, v66, *(*a1 + 48), &__p, v80, v80 + 3, v80 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorVector<mlx::core::detail::LogicalOr>>(v9->i64, v10->i64, v11, v66, *(*a1 + 48), &__p, v80, v80 + 3, v80 + 6);
        break;
      default:
        LODWORD(v62) = v66;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,false,mlx::core::detail::LogicalOr>(v9, v10, v11, v62, *(*a1 + 48), &__p, v80, v80 + 3, v80 + 6);
        break;
    }

    v82[0] = &v80;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v82);
    if (__p)
    {
      v79 = __p;
      operator delete(__p);
    }

    goto LABEL_84;
  }

  if (a4 == 2)
  {
    v42 = *(v8 + 160);
    v43 = v10->i64[0];
    if (v42 < 4)
    {
      v49 = *(v8 + 160);
    }

    else
    {
      v44 = vdupq_n_s64(v43);
      do
      {
        v45 = *v9;
        v46 = v9[1];
        v9 += 2;
        v47 = vorrq_s8(v46, v44);
        v48 = vorrq_s8(v45, v44);
        *v11 = vtstq_s64(v48, v48);
        v11[1] = vtstq_s64(v47, v47);
        v11 += 2;
        v49 = v42 - 4;
        v20 = v42 > 7;
        v42 -= 4;
      }

      while (v20);
    }

    if (v49 >= 1)
    {
      v74 = v49 + 1;
      do
      {
        v75 = v9->i64[0];
        v9 = (v9 + 8);
        v11->i64[0] = (v75 | v43) != 0;
        v11 = (v11 + 8);
        --v74;
      }

      while (v74 > 1);
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
      v28 = *(v8 + 48);
    }

    else
    {
      do
      {
        v22 = *v9;
        v23 = v9[1];
        v9 += 2;
        v24 = *v10;
        v25 = v10[1];
        v10 += 2;
        v26 = vorrq_s8(v25, v23);
        v27 = vorrq_s8(v24, v22);
        *v11 = vtstq_s64(v27, v27);
        v11[1] = vtstq_s64(v26, v26);
        v11 += 2;
        v28 = v21 - 4;
        v20 = v21 > 7;
        v21 -= 4;
      }

      while (v20);
    }

    if (v28 >= 1)
    {
      v70 = v28 + 1;
      do
      {
        v72 = v9->i64[0];
        v9 = (v9 + 8);
        v71 = v72;
        v73 = v10->i64[0];
        v10 = (v10 + 8);
        v11->i64[0] = (v73 | v71) != 0;
        v11 = (v11 + 8);
        --v70;
      }

      while (v70 > 1);
    }
  }

LABEL_84:
  v76 = *MEMORY[0x277D85DE8];
}

void sub_25A722794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorVector<mlx::core::detail::LogicalOr>>(uint64_t *a1, uint64_t *a2, void *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A722C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>>(uint64_t *a1, unint64_t *a2, void *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A72302C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>>(unint64_t *a1, uint64_t *a2, void *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A723444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,false,mlx::core::detail::LogicalOr>(void *a1, void *a2, void *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::LogicalOr,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::LogicalOr,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = (*v13 | *v14) != 0;
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
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::LogicalOr,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A72386C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(uint64_t *result, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v20 = vorrq_s8(*&a2[v17 + 2], *&result[v17 + 2]);
          v21 = vorrq_s8(*&a2[v17], *&result[v17]);
          *v19 = vtstq_s64(v21, v21);
          v19[1] = vtstq_s64(v20, v20);
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
        v22 = v15 + 1;
        do
        {
          v24 = *v16++;
          v23 = v24;
          v25 = *v13++;
          *v14++ = (v25 | v23) != 0;
          --v22;
        }

        while (v22 > 1);
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

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(uint64_t *result, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(uint64_t *result, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,1,true>(uint64_t *result, unint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v21 = vorrq_s8(*&result[v17 + 2], v18);
          v22 = vorrq_s8(*&result[v17], v18);
          *v20 = vtstq_s64(v22, v22);
          v20[1] = vtstq_s64(v21, v21);
          v14 -= 4;
          v17 += 4;
        }

        while (v19 > 7);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v23 = v14 + 1;
        do
        {
          v24 = *v16++;
          *v15++ = (v24 | v13) != 0;
          --v23;
        }

        while (v23 > 1);
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

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(uint64_t *result, unint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(uint64_t *result, unint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,1,true>(unint64_t *result, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v21 = vorrq_s8(*&a2[v17 + 2], v18);
          v22 = vorrq_s8(*&a2[v17], v18);
          *v20 = vtstq_s64(v22, v22);
          v20[1] = vtstq_s64(v21, v21);
          v14 -= 4;
          v17 += 4;
        }

        while (v19 > 7);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v23 = v14 + 1;
        do
        {
          v24 = *v16++;
          *v15++ = (v24 | v13) != 0;
          --v23;
        }

        while (v23 > 1);
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

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(unint64_t *result, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(unint64_t *result, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::LogicalOr,2,false>(void *result, void *a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int a8)
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
          *v21 = (*v22 | *v23) != 0;
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

void *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::LogicalOr,3,false>(void *result, void *a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::LogicalOr,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<half,half,mlx::core::detail::LogicalOr>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, float16x8_t a5)
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
          *v12 = vcvtq_f16_s16(vmovl_s8(vcltz_s8(vshl_n_s8(vorr_s8(vmovn_s16(vmvnq_s8(vceqzq_f16(v48))), v47), 7uLL))));
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

          if (!_ZF)
          {
            v81 = 1;
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
          *v12 = vcvtq_f16_s16(vornq_s8(vmvnq_s8(vceqzq_f16(v21)), vceqzq_f16(v20)));
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

          if (!_ZF)
          {
            v77 = 1;
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
            *v12 = vcvtq_f16_s16(vmovl_s8(vcltz_s8(vshl_n_s8(vorr_s8(vmovn_s16(vmvnq_s8(vceqzq_f16(v15))), v14), 7uLL))));
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

            if (!_ZF)
            {
              v70 = 1;
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
          mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>>(v10, v11, v12, v66, *(*a1 + 48), &__p, v88, v88 + 3, v25, v88 + 6);
          break;
        case 2:
          mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>>(v10, v11, v12, v66, *(*a1 + 48), &__p, v88, v88 + 3, v25, v88 + 6);
          break;
        case 3:
          mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorVector<mlx::core::detail::LogicalOr>>(v10, v11, v12, v66, *(*a1 + 48), &__p, v88, v88 + 3, v88 + 6);
          break;
        default:
          LODWORD(v62) = v66;
LABEL_72:
          mlx::core::binary_op_dispatch_dims<half,half,false,mlx::core::detail::LogicalOr>(v10, v11, v12, v62, *(*a1 + 48), &__p, v88, v88 + 3, v88 + 6);
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

    if (!_ZF)
    {
      v44 = 1;
    }

    *v12 = v44;
  }

LABEL_104:
  v84 = *MEMORY[0x277D85DE8];
}

void sub_25A72473C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorVector<mlx::core::detail::LogicalOr>>(__int16 *a1, __int16 *a2, short float *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A724BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>>(__int16 *a1, unsigned __int16 *a2, short float *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, float16x8_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(&a1[v62], &a2[v55], &a3[v21], a6, a7, a8, a10, v16, v19);
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

void sub_25A724FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>>(unsigned __int16 *a1, __int16 *a2, short float *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, float16x8_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(&a1[v62], &a2[v55], &a3[v21], a6, a7, a8, a10, v16, v19);
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

void sub_25A7253EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,false,mlx::core::detail::LogicalOr>(__int16 *a1, __int16 *a2, short float *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::detail::LogicalOr,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::detail::LogicalOr,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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

          if (!_ZF)
          {
            v27 = 1;
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
          mlx::core::binary_op_dims<half,half,mlx::core::detail::LogicalOr,3,false>(&v14[v70], &v13[v63], &v12[v30], a6, a7, a8, a9, v15);
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

void sub_25A72581C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(__int16 *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *&a3[v17] = vcvtq_f16_s16(vornq_s8(vmvnq_s8(vceqzq_f16(*&a2[v17])), vceqzq_f16(*&result[v17])));
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

          if (!_ZF)
          {
            v27 = 1;
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

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(__int16 *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(__int16 *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,1,true>(__int16 *result, unsigned __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, float16x8_t a9)
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
          *&a3[v17] = vcvtq_f16_s16(vmovl_s8(vcltz_s8(vshl_n_s8(vorr_s8(vmovn_s16(vmvnq_s8(vceqzq_f16(*&result[v17]))), v18), 7uLL))));
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

          if (!_ZF)
          {
            v26 = 1;
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

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(__int16 *result, unsigned __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, float16x8_t a9)
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
      result = mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,1,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(__int16 *result, unsigned __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, float16x8_t a9)
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
      result = mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,1,true>(unsigned __int16 *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, float16x8_t a9)
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
          *&a3[v17] = vcvtq_f16_s16(vmovl_s8(vcltz_s8(vshl_n_s8(vorr_s8(vmovn_s16(vmvnq_s8(vceqzq_f16(*&a2[v17]))), v18), 7uLL))));
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

          if (!_ZF)
          {
            v26 = 1;
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

unsigned __int16 *mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(unsigned __int16 *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, float16x8_t a9)
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
      result = mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,1,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(unsigned __int16 *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8, float16x8_t a9)
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
      result = mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(v15, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      v15 = (v15 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::detail::LogicalOr,2,false>(__int16 *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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

          if (!_ZF)
          {
            v32 = 1;
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

__int16 *mlx::core::binary_op_dims<half,half,mlx::core::detail::LogicalOr,3,false>(__int16 *result, __int16 *a2, short float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<half,half,mlx::core::detail::LogicalOr,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<float,float,mlx::core::detail::LogicalOr>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, float32x4_t a5)
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
      mlx::core::VectorScalar<mlx::core::detail::LogicalOr>::operator()<float,float>(a5, v52, v10, v11, v12, *(v9 + 160));
      goto LABEL_64;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::LogicalOr>::operator()<float,float>(v52, v10, v11, v12, *(v9 + 48));
      goto LABEL_64;
    }

    goto LABEL_8;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::LogicalOr>::operator()<float,float>(a5, v52, v10, v11, v12, *(*a2 + 160));
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
        mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>>(v10, v11, v12, v44, *(*a1 + 48), &__p, v50, v50 + 3, v15, v50 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>>(v10, v11, v12, v44, *(*a1 + 48), &__p, v50, v50 + 3, v15, v50 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorVector<mlx::core::detail::LogicalOr>>(v10, v11, v12, v44, *(*a1 + 48), &__p, v50, v50 + 3, v50 + 6);
        break;
      default:
        LODWORD(v40) = v44;
LABEL_61:
        mlx::core::binary_op_dispatch_dims<float,float,false,mlx::core::detail::LogicalOr>(v10, v11, v12->f32, v40, *(*a1 + 48), &__p, v50, v50 + 3, v50 + 6);
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
  if (*v11 != 0.0)
  {
    v27 = 1;
  }

  v12->f32[0] = v27;
LABEL_64:
  v46 = *MEMORY[0x277D85DE8];
}

void sub_25A7265C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::LogicalOr>::operator()<float,float>(float32x4_t a1, uint64_t a2, unsigned __int32 *a3, _OWORD *a4, float32x4_t *a5, int a6)
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
      *v7.f32 = vorr_s8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_f32(v7), vceqzq_f32(v8)))), v6);
      *a5 = vcvtq_f32_s32(vmovl_s16(vcltz_s16(vshl_n_s16(vzip1_s8(*v7.f32, *a1.f32), 0xFuLL))));
      a5[1] = vcvtq_f32_s32(vmovl_s16(vcltz_s16(vshl_n_s16(vzip2_s8(*v7.f32, *a1.f32), 0xFuLL))));
      a5 += 2;
      v9 = a6 - 8;
      v10 = a6 >= 0xF;
      v11 = a6 == 15;
      a6 -= 8;
    }

    while (!v11 && v10);
  }

  if (v9 >= 1)
  {
    v12 = v9 + 1;
    do
    {
      v13 = a1.f32[0] != 0.0;
      v14 = *a4;
      a4 = (a4 + 4);
      if (v14 != 0.0)
      {
        v13 = 1;
      }

      a5->f32[0] = v13;
      a5 = (a5 + 4);
      --v12;
    }

    while (v12 > 1);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::LogicalOr>::operator()<float,float>(float32x4_t a1, uint64_t a2, _OWORD *a3, unsigned __int32 *a4, float32x4_t *a5, int a6)
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
      *v7.f32 = vorr_s8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_f32(v7), vceqzq_f32(v8)))), v6);
      *a5 = vcvtq_f32_s32(vmovl_s16(vcltz_s16(vshl_n_s16(vzip1_s8(*v7.f32, *a1.f32), 0xFuLL))));
      a5[1] = vcvtq_f32_s32(vmovl_s16(vcltz_s16(vshl_n_s16(vzip2_s8(*v7.f32, *a1.f32), 0xFuLL))));
      a5 += 2;
      v9 = a6 - 8;
      v10 = a6 >= 0xF;
      v11 = a6 == 15;
      a6 -= 8;
    }

    while (!v11 && v10);
  }

  if (v9 >= 1)
  {
    v12 = v9 + 1;
    do
    {
      v13 = a1.f32[0] != 0.0;
      v14 = *a3;
      a3 = (a3 + 4);
      if (v14 != 0.0)
      {
        v13 = 1;
      }

      a5->f32[0] = v13;
      a5 = (a5 + 4);
      --v12;
    }

    while (v12 > 1);
  }
}

float32_t mlx::core::VectorVector<mlx::core::detail::LogicalOr>::operator()<float,float>(uint64_t a1, _OWORD *a2, _OWORD *a3, float32x4_t *a4, int a5)
{
  if (a5 < 8)
  {
    v11 = a5;
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
      *v5.f32 = vmovn_s16(vornq_s8(vmvnq_s8(vuzp1q_s16(vceqzq_f32(v7), vceqzq_f32(v8))), vuzp1q_s16(vceqzq_f32(v5), vceqzq_f32(v6))));
      v9 = vcvtq_f32_s32(vmovl_s16(vcltz_s16(vshl_n_s16(vzip1_s8(*v5.f32, *v5.f32), 0xFuLL))));
      v10 = vcvtq_f32_s32(vmovl_s16(vcltz_s16(vshl_n_s16(vzip2_s8(*v5.f32, *v5.f32), 0xFuLL))));
      *a4 = v9;
      a4[1] = v10;
      a4 += 2;
      v11 = a5 - 8;
      v12 = a5 >= 0xF;
      v13 = a5 == 15;
      a5 -= 8;
    }

    while (!v13 && v12);
  }

  if (v11 >= 1)
  {
    v14 = v11 + 1;
    do
    {
      v15 = *a2;
      a2 = (a2 + 4);
      v16 = v15;
      v17 = *a3;
      a3 = (a3 + 4);
      v18 = v16 != 0.0;
      if (v17 != 0.0)
      {
        v18 = 1;
      }

      v10.f32[0] = v18;
      a4->f32[0] = v18;
      a4 = (a4 + 4);
      --v14;
    }

    while (v14 > 1);
  }

  return v10.f32[0];
}

void mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorVector<mlx::core::detail::LogicalOr>>(_OWORD *a1, _OWORD *a2, float32x4_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>((a1 + 4 * v60), (a2 + 4 * v53), (a3 + 4 * v19), a6, a7, a8, a9, v15);
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

void sub_25A726C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>>(_OWORD *a1, unsigned __int32 *a2, float32x4_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, float32x4_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,3,true>((a1 + 4 * v62), &a2[v55], (a3 + 4 * v21), a6, a7, a8, a10, v16, v19);
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

void sub_25A727080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>>(unsigned __int32 *a1, _OWORD *a2, float32x4_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, float32x4_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::LogicalOr>,3,true>(&a1[v62], (a2 + 4 * v55), (a3 + 4 * v21), a6, a7, a8, a10, v16, v19);
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

void sub_25A727498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,float,false,mlx::core::detail::LogicalOr>(float *a1, float *a2, float *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::detail::LogicalOr,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::detail::LogicalOr,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          v21 = *v14 != 0.0;
          if (*v13 != 0.0)
          {
            v21 = 1;
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
          mlx::core::binary_op_dims<float,float,mlx::core::detail::LogicalOr,3,false>(&v14[v63], &v13[v56], &v12[v23], a6, a7, a8, a9, v15);
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

void sub_25A7278C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(_OWORD *a1, _OWORD *a2, float32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * a8);
    v14 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::LogicalOr>::operator()<float,float>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 4 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(_OWORD *a1, _OWORD *a2, float32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,3,true>(_OWORD *a1, _OWORD *a2, float32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::LogicalOr>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::LogicalOr>,1,true>(_OWORD *a1, unsigned __int32 *a2, float32x4_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, float32x4_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v13 = *(*a7 + 8 * a8);
    v14 = 4 * *(*a5 + 8 * a8);
    v15 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::LogicalOr>::operator()<float,float>(a9, &v16, a1, a2, a3, v13);
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + 4 * v13);
      --v9;
    }

    while (v9);
  }
}