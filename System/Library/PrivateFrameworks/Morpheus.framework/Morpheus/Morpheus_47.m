void mlx::core::scatter_axis<BOOL,unsigned short,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v94 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v74 = *(*a3 + 152);
  v75 = *(*a2 + 152);
  v76 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v67 = v26 * v21;
    v28 = v84;
    v29 = (v86 - v85) >> 2;
    v30 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v31 = v85 + 4 * v30;
    v32 = v77;
    v33 = (v79 - v78) >> 2;
    v34 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v35 = v78 + 4 * v34;
    v36 = 2 * v17;
    v37 = 4 * (v29 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v70 = v78 - 8;
    v68 = v23;
    do
    {
      v69 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v87;
        v73 = v89;
        v41 = v89 + 4 * v30;
        v42 = v80;
        v72 = __p;
        v43 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v74 + v32);
            v45 = v20;
            v46 = (v75 + 2 * v28);
            do
            {
              *(v76 + v39 + v19 * *v46) |= *v44;
              v44 += v18;
              v46 = (v46 + v36);
              --v45;
            }

            while (v45);
          }

          if (v29)
          {
            v47 = *v41;
            if (v29 >= 2 && v47 == *v31 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v29 & 0x7FFFFFFF) - 1;
              v51 = v31;
              v52 = v41;
              v53 = v30;
              do
              {
                v54 = v50;
                *v52 = 0;
                v28 -= v40[v53] * (*v51 - 1);
                v84 = v28;
                --v50;
                v52 = &v48[v37 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v37];
                v55 = *&v49[4 * (v29 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v37 - 4];
            }

            else
            {
              v50 = v30;
              v56 = v41;
            }

            *v56 = v47 + 1;
            v28 += v40[v50];
            v84 = v28;
          }

          if (v33)
          {
            v57 = *v43;
            if (v33 >= 2 && v57 == *v35 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v33 & 0x7FFFFFFF) - 1;
              v61 = v35;
              v62 = v43;
              v63 = v34;
              do
              {
                v64 = v60;
                *v62 = 0;
                v32 -= v42[v63] * (*v61 - 1);
                v77 = v32;
                --v60;
                v62 = &v58[v38 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v38];
                v65 = *&v59[4 * (v33 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v38 - 4];
            }

            else
            {
              v60 = v34;
              v66 = v43;
            }

            *v66 = v57 + 1;
            v32 += v42[v60];
            v77 = v32;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v76 += v67;
      v27 = v69 + 1;
    }

    while (v69 + 1 != v68);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
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

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A4FB2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<BOOL,unsigned int,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v94 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v74 = *(*a3 + 152);
  v75 = *(*a2 + 152);
  v76 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v67 = v26 * v21;
    v28 = v84;
    v29 = (v86 - v85) >> 2;
    v30 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v31 = v85 + 4 * v30;
    v32 = v77;
    v33 = (v79 - v78) >> 2;
    v34 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v35 = v78 + 4 * v34;
    v36 = 4 * v17;
    v37 = 4 * (v29 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v70 = v78 - 8;
    v68 = v23;
    do
    {
      v69 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v87;
        v73 = v89;
        v41 = v89 + 4 * v30;
        v42 = v80;
        v72 = __p;
        v43 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v74 + v32);
            v45 = v20;
            v46 = (v75 + 4 * v28);
            do
            {
              *(v76 + v39 + v19 * *v46) = *v44;
              v44 += v18;
              v46 = (v46 + v36);
              --v45;
            }

            while (v45);
          }

          if (v29)
          {
            v47 = *v41;
            if (v29 >= 2 && v47 == *v31 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v29 & 0x7FFFFFFF) - 1;
              v51 = v31;
              v52 = v41;
              v53 = v30;
              do
              {
                v54 = v50;
                *v52 = 0;
                v28 -= v40[v53] * (*v51 - 1);
                v84 = v28;
                --v50;
                v52 = &v48[v37 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v37];
                v55 = *&v49[4 * (v29 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v37 - 4];
            }

            else
            {
              v50 = v30;
              v56 = v41;
            }

            *v56 = v47 + 1;
            v28 += v40[v50];
            v84 = v28;
          }

          if (v33)
          {
            v57 = *v43;
            if (v33 >= 2 && v57 == *v35 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v33 & 0x7FFFFFFF) - 1;
              v61 = v35;
              v62 = v43;
              v63 = v34;
              do
              {
                v64 = v60;
                *v62 = 0;
                v32 -= v42[v63] * (*v61 - 1);
                v77 = v32;
                --v60;
                v62 = &v58[v38 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v38];
                v65 = *&v59[4 * (v33 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v38 - 4];
            }

            else
            {
              v60 = v34;
              v66 = v43;
            }

            *v66 = v57 + 1;
            v32 += v42[v60];
            v77 = v32;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v76 += v67;
      v27 = v69 + 1;
    }

    while (v69 + 1 != v68);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
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

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A4FB89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<BOOL,unsigned int,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v94 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v74 = *(*a3 + 152);
  v75 = *(*a2 + 152);
  v76 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v67 = v26 * v21;
    v28 = v84;
    v29 = (v86 - v85) >> 2;
    v30 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v31 = v85 + 4 * v30;
    v32 = v77;
    v33 = (v79 - v78) >> 2;
    v34 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v35 = v78 + 4 * v34;
    v36 = 4 * v17;
    v37 = 4 * (v29 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v70 = v78 - 8;
    v68 = v23;
    do
    {
      v69 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v87;
        v73 = v89;
        v41 = v89 + 4 * v30;
        v42 = v80;
        v72 = __p;
        v43 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v74 + v32);
            v45 = v20;
            v46 = (v75 + 4 * v28);
            do
            {
              *(v76 + v39 + v19 * *v46) |= *v44;
              v44 += v18;
              v46 = (v46 + v36);
              --v45;
            }

            while (v45);
          }

          if (v29)
          {
            v47 = *v41;
            if (v29 >= 2 && v47 == *v31 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v29 & 0x7FFFFFFF) - 1;
              v51 = v31;
              v52 = v41;
              v53 = v30;
              do
              {
                v54 = v50;
                *v52 = 0;
                v28 -= v40[v53] * (*v51 - 1);
                v84 = v28;
                --v50;
                v52 = &v48[v37 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v37];
                v55 = *&v49[4 * (v29 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v37 - 4];
            }

            else
            {
              v50 = v30;
              v56 = v41;
            }

            *v56 = v47 + 1;
            v28 += v40[v50];
            v84 = v28;
          }

          if (v33)
          {
            v57 = *v43;
            if (v33 >= 2 && v57 == *v35 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v33 & 0x7FFFFFFF) - 1;
              v61 = v35;
              v62 = v43;
              v63 = v34;
              do
              {
                v64 = v60;
                *v62 = 0;
                v32 -= v42[v63] * (*v61 - 1);
                v77 = v32;
                --v60;
                v62 = &v58[v38 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v38];
                v65 = *&v59[4 * (v33 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v38 - 4];
            }

            else
            {
              v60 = v34;
              v66 = v43;
            }

            *v66 = v57 + 1;
            v32 += v42[v60];
            v77 = v32;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v76 += v67;
      v27 = v69 + 1;
    }

    while (v69 + 1 != v68);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
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

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A4FBE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<BOOL,unsigned long long,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v94 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v74 = *(*a3 + 152);
  v75 = *(*a2 + 152);
  v76 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v67 = v26 * v21;
    v28 = v84;
    v29 = (v86 - v85) >> 2;
    v30 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v31 = v85 + 4 * v30;
    v32 = v77;
    v33 = (v79 - v78) >> 2;
    v34 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v35 = v78 + 4 * v34;
    v36 = 8 * v17;
    v37 = 4 * (v29 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v70 = v78 - 8;
    v68 = v23;
    do
    {
      v69 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v87;
        v73 = v89;
        v41 = v89 + 4 * v30;
        v42 = v80;
        v72 = __p;
        v43 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v74 + v32);
            v45 = v20;
            v46 = (v75 + 8 * v28);
            do
            {
              *(v76 + v39 + *v46 * v19) = *v44;
              v44 += v18;
              v46 = (v46 + v36);
              --v45;
            }

            while (v45);
          }

          if (v29)
          {
            v47 = *v41;
            if (v29 >= 2 && v47 == *v31 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v29 & 0x7FFFFFFF) - 1;
              v51 = v31;
              v52 = v41;
              v53 = v30;
              do
              {
                v54 = v50;
                *v52 = 0;
                v28 -= v40[v53] * (*v51 - 1);
                v84 = v28;
                --v50;
                v52 = &v48[v37 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v37];
                v55 = *&v49[4 * (v29 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v37 - 4];
            }

            else
            {
              v50 = v30;
              v56 = v41;
            }

            *v56 = v47 + 1;
            v28 += v40[v50];
            v84 = v28;
          }

          if (v33)
          {
            v57 = *v43;
            if (v33 >= 2 && v57 == *v35 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v33 & 0x7FFFFFFF) - 1;
              v61 = v35;
              v62 = v43;
              v63 = v34;
              do
              {
                v64 = v60;
                *v62 = 0;
                v32 -= v42[v63] * (*v61 - 1);
                v77 = v32;
                --v60;
                v62 = &v58[v38 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v38];
                v65 = *&v59[4 * (v33 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v38 - 4];
            }

            else
            {
              v60 = v34;
              v66 = v43;
            }

            *v66 = v57 + 1;
            v32 += v42[v60];
            v77 = v32;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v76 += v67;
      v27 = v69 + 1;
    }

    while (v69 + 1 != v68);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
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

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A4FC474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<BOOL,unsigned long long,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v94 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v74 = *(*a3 + 152);
  v75 = *(*a2 + 152);
  v76 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v67 = v26 * v21;
    v28 = v84;
    v29 = (v86 - v85) >> 2;
    v30 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v31 = v85 + 4 * v30;
    v32 = v77;
    v33 = (v79 - v78) >> 2;
    v34 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v35 = v78 + 4 * v34;
    v36 = 8 * v17;
    v37 = 4 * (v29 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v70 = v78 - 8;
    v68 = v23;
    do
    {
      v69 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v87;
        v73 = v89;
        v41 = v89 + 4 * v30;
        v42 = v80;
        v72 = __p;
        v43 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v74 + v32);
            v45 = v20;
            v46 = (v75 + 8 * v28);
            do
            {
              *(v76 + v39 + *v46 * v19) |= *v44;
              v44 += v18;
              v46 = (v46 + v36);
              --v45;
            }

            while (v45);
          }

          if (v29)
          {
            v47 = *v41;
            if (v29 >= 2 && v47 == *v31 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v29 & 0x7FFFFFFF) - 1;
              v51 = v31;
              v52 = v41;
              v53 = v30;
              do
              {
                v54 = v50;
                *v52 = 0;
                v28 -= v40[v53] * (*v51 - 1);
                v84 = v28;
                --v50;
                v52 = &v48[v37 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v37];
                v55 = *&v49[4 * (v29 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v37 - 4];
            }

            else
            {
              v50 = v30;
              v56 = v41;
            }

            *v56 = v47 + 1;
            v28 += v40[v50];
            v84 = v28;
          }

          if (v33)
          {
            v57 = *v43;
            if (v33 >= 2 && v57 == *v35 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v33 & 0x7FFFFFFF) - 1;
              v61 = v35;
              v62 = v43;
              v63 = v34;
              do
              {
                v64 = v60;
                *v62 = 0;
                v32 -= v42[v63] * (*v61 - 1);
                v77 = v32;
                --v60;
                v62 = &v58[v38 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v38];
                v65 = *&v59[4 * (v33 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v38 - 4];
            }

            else
            {
              v60 = v34;
              v66 = v43;
            }

            *v66 = v57 + 1;
            v32 += v42[v60];
            v77 = v32;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v76 += v67;
      v27 = v69 + 1;
    }

    while (v69 + 1 != v68);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
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

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A4FCA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<BOOL,signed char,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v97 = 0;
  v98 = 0;
  v96 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v96, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v96[8 * a4];
  v10 = v97 - (v9 + 8);
  if (v97 != v9 + 8)
  {
    memmove(&v96[8 * a4], v9 + 8, v97 - (v9 + 8));
  }

  v97 = &v9[v10];
  v11 = *a2;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v93, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v93[4 * a4];
  v13 = v94 - (v12 + 4);
  if (v94 != v12 + 4)
  {
    memmove(&v93[4 * a4], v12 + 4, v94 - (v12 + 4));
  }

  v94 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v86, &v93, &v96, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v96 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v96, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v96[v14];
  v16 = v97 - &v96[v14 + 8];
  if (v97 != &v96[v14 + 8])
  {
    memmove(&v96[v14], &v96[v14 + 8], v97 - (v15 + 8));
  }

  v97 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v79, &v93, &v96, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v75 = *(*a3 + 152);
  v76 = *(*a2 + 152);
  v78 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v28 = v21;
    v68 = v26 * v21;
    v29 = v86;
    v30 = (v88 - v87) >> 2;
    v77 = (((v88 - v87) << 30) - 0x100000000) >> 32;
    v31 = v87 + 4 * v77;
    v32 = v79;
    v33 = (v81 - v80) >> 2;
    v34 = (((v81 - v80) << 30) - 0x100000000) >> 32;
    v35 = v80 + 4 * v34;
    v36 = 4 * (v30 & 0x7FFFFFFF);
    v72 = v87 - 8;
    v37 = 4 * (v33 & 0x7FFFFFFF);
    v71 = v80 - 8;
    v69 = v23;
    do
    {
      v70 = v27;
      if (v26)
      {
        v38 = 0;
        v39 = v89;
        v40 = v91 + 4 * v77;
        v41 = v82;
        v73 = __p;
        v74 = v91;
        v42 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v43 = (v76 + v29);
            v44 = (v75 + v32);
            v45 = v20;
            do
            {
              v46 = *v43;
              if (v46 >= 0)
              {
                v47 = 0;
              }

              else
              {
                v47 = v28;
              }

              *(v78 + v38 + (v47 + v46) * v19) = *v44;
              v44 += v18;
              v43 += v17;
              --v45;
            }

            while (v45);
          }

          if (v30)
          {
            v48 = *v40;
            if (v30 >= 2 && v48 == *v31 - 1)
            {
              v49 = v74;
              v50 = v72;
              v51 = (v30 & 0x7FFFFFFF) - 1;
              v52 = v31;
              v53 = v40;
              v54 = v77;
              do
              {
                v55 = v51;
                *v53 = 0;
                v29 -= v39[v54] * (*v52 - 1);
                v86 = v29;
                --v51;
                v53 = &v49[v36 - 8];
                v48 = *v53;
                v49 -= 4;
                if (v55 < 2)
                {
                  break;
                }

                v52 = &v50[v36];
                v56 = *&v50[4 * (v30 & 0x7FFFFFFF)] - 1;
                v50 -= 4;
                v54 = v51;
              }

              while (v48 == v56);
              v57 = &v49[v36 - 4];
            }

            else
            {
              v51 = v77;
              v57 = v40;
            }

            *v57 = v48 + 1;
            v29 += v39[v51];
            v86 = v29;
          }

          if (v33)
          {
            v58 = *v42;
            if (v33 >= 2 && v58 == *v35 - 1)
            {
              v59 = v73;
              v60 = v71;
              v61 = (v33 & 0x7FFFFFFF) - 1;
              v62 = v35;
              v63 = v42;
              v64 = v34;
              do
              {
                v65 = v61;
                *v63 = 0;
                v32 -= v41[v64] * (*v62 - 1);
                v79 = v32;
                --v61;
                v63 = &v59[v37 - 8];
                v58 = *v63;
                v59 -= 4;
                if (v65 < 2)
                {
                  break;
                }

                v62 = &v60[v37];
                v66 = *&v60[4 * (v33 & 0x7FFFFFFF)] - 1;
                v60 -= 4;
                v64 = v61;
              }

              while (v58 == v66);
              v67 = &v59[v37 - 4];
            }

            else
            {
              v61 = v34;
              v67 = v42;
            }

            *v67 = v58 + 1;
            v32 += v41[v61];
            v79 = v32;
          }

          ++v38;
        }

        while (v38 != v26);
      }

      v78 += v68;
      v27 = v70 + 1;
    }

    while (v70 + 1 != v69);
  }

  if (__p)
  {
    v85 = __p;
    operator delete(__p);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }
}

void sub_25A4FD054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<BOOL,signed char,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v97 = 0;
  v98 = 0;
  v96 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v96, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v96[8 * a4];
  v10 = v97 - (v9 + 8);
  if (v97 != v9 + 8)
  {
    memmove(&v96[8 * a4], v9 + 8, v97 - (v9 + 8));
  }

  v97 = &v9[v10];
  v11 = *a2;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v93, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v93[4 * a4];
  v13 = v94 - (v12 + 4);
  if (v94 != v12 + 4)
  {
    memmove(&v93[4 * a4], v12 + 4, v94 - (v12 + 4));
  }

  v94 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v86, &v93, &v96, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v96 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v96, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v96[v14];
  v16 = v97 - &v96[v14 + 8];
  if (v97 != &v96[v14 + 8])
  {
    memmove(&v96[v14], &v96[v14 + 8], v97 - (v15 + 8));
  }

  v97 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v79, &v93, &v96, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v75 = *(*a3 + 152);
  v76 = *(*a2 + 152);
  v78 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v28 = v21;
    v68 = v26 * v21;
    v29 = v86;
    v30 = (v88 - v87) >> 2;
    v77 = (((v88 - v87) << 30) - 0x100000000) >> 32;
    v31 = v87 + 4 * v77;
    v32 = v79;
    v33 = (v81 - v80) >> 2;
    v34 = (((v81 - v80) << 30) - 0x100000000) >> 32;
    v35 = v80 + 4 * v34;
    v36 = 4 * (v30 & 0x7FFFFFFF);
    v72 = v87 - 8;
    v37 = 4 * (v33 & 0x7FFFFFFF);
    v71 = v80 - 8;
    v69 = v23;
    do
    {
      v70 = v27;
      if (v26)
      {
        v38 = 0;
        v39 = v89;
        v40 = v91 + 4 * v77;
        v41 = v82;
        v73 = __p;
        v74 = v91;
        v42 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v43 = (v76 + v29);
            v44 = (v75 + v32);
            v45 = v20;
            do
            {
              v46 = *v43;
              if (v46 >= 0)
              {
                v47 = 0;
              }

              else
              {
                v47 = v28;
              }

              *(v78 + v38 + (v47 + v46) * v19) |= *v44;
              v44 += v18;
              v43 += v17;
              --v45;
            }

            while (v45);
          }

          if (v30)
          {
            v48 = *v40;
            if (v30 >= 2 && v48 == *v31 - 1)
            {
              v49 = v74;
              v50 = v72;
              v51 = (v30 & 0x7FFFFFFF) - 1;
              v52 = v31;
              v53 = v40;
              v54 = v77;
              do
              {
                v55 = v51;
                *v53 = 0;
                v29 -= v39[v54] * (*v52 - 1);
                v86 = v29;
                --v51;
                v53 = &v49[v36 - 8];
                v48 = *v53;
                v49 -= 4;
                if (v55 < 2)
                {
                  break;
                }

                v52 = &v50[v36];
                v56 = *&v50[4 * (v30 & 0x7FFFFFFF)] - 1;
                v50 -= 4;
                v54 = v51;
              }

              while (v48 == v56);
              v57 = &v49[v36 - 4];
            }

            else
            {
              v51 = v77;
              v57 = v40;
            }

            *v57 = v48 + 1;
            v29 += v39[v51];
            v86 = v29;
          }

          if (v33)
          {
            v58 = *v42;
            if (v33 >= 2 && v58 == *v35 - 1)
            {
              v59 = v73;
              v60 = v71;
              v61 = (v33 & 0x7FFFFFFF) - 1;
              v62 = v35;
              v63 = v42;
              v64 = v34;
              do
              {
                v65 = v61;
                *v63 = 0;
                v32 -= v41[v64] * (*v62 - 1);
                v79 = v32;
                --v61;
                v63 = &v59[v37 - 8];
                v58 = *v63;
                v59 -= 4;
                if (v65 < 2)
                {
                  break;
                }

                v62 = &v60[v37];
                v66 = *&v60[4 * (v33 & 0x7FFFFFFF)] - 1;
                v60 -= 4;
                v64 = v61;
              }

              while (v58 == v66);
              v67 = &v59[v37 - 4];
            }

            else
            {
              v61 = v34;
              v67 = v42;
            }

            *v67 = v58 + 1;
            v32 += v41[v61];
            v79 = v32;
          }

          ++v38;
        }

        while (v38 != v26);
      }

      v78 += v68;
      v27 = v70 + 1;
    }

    while (v70 + 1 != v69);
  }

  if (__p)
  {
    v85 = __p;
    operator delete(__p);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }
}

void sub_25A4FD64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<BOOL,short,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v98 = 0;
  v99 = 0;
  v97 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v97, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v97[8 * a4];
  v10 = v98 - (v9 + 8);
  if (v98 != v9 + 8)
  {
    memmove(&v97[8 * a4], v9 + 8, v98 - (v9 + 8));
  }

  v98 = &v9[v10];
  v11 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v94, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v94[4 * a4];
  v13 = v95 - (v12 + 4);
  if (v95 != v12 + 4)
  {
    memmove(&v94[4 * a4], v12 + 4, v95 - (v12 + 4));
  }

  v95 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v94, &v97, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v97 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v97, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v97[v14];
  v16 = v98 - &v97[v14 + 8];
  if (v98 != &v97[v14 + 8])
  {
    memmove(&v97[v14], &v97[v14 + 8], v98 - (v15 + 8));
  }

  v98 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v80, &v94, &v97, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v76 = *(*a3 + 152);
  v77 = *(*a2 + 152);
  v79 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v28 = v21;
    v69 = v26 * v21;
    v29 = v87;
    v30 = (v89 - v88) >> 2;
    v78 = (((v89 - v88) << 30) - 0x100000000) >> 32;
    v31 = v88 + 4 * v78;
    v32 = v80;
    v33 = (v82 - v81) >> 2;
    v34 = (((v82 - v81) << 30) - 0x100000000) >> 32;
    v35 = v81 + 4 * v34;
    v36 = 2 * v17;
    v37 = 4 * (v30 & 0x7FFFFFFF);
    v73 = v88 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v72 = v81 - 8;
    v70 = v23;
    do
    {
      v71 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v90;
        v41 = v92 + 4 * v78;
        v42 = v83;
        v74 = __p;
        v75 = v92;
        v43 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v76 + v32);
            v45 = v20;
            v46 = (v77 + 2 * v29);
            do
            {
              v47 = *v46;
              if (v47 >= 0)
              {
                v48 = 0;
              }

              else
              {
                v48 = v28;
              }

              *(v79 + v39 + (v48 + v47) * v19) = *v44;
              v44 += v18;
              v46 = (v46 + v36);
              --v45;
            }

            while (v45);
          }

          if (v30)
          {
            v49 = *v41;
            if (v30 >= 2 && v49 == *v31 - 1)
            {
              v50 = v75;
              v51 = v73;
              v52 = (v30 & 0x7FFFFFFF) - 1;
              v53 = v31;
              v54 = v41;
              v55 = v78;
              do
              {
                v56 = v52;
                *v54 = 0;
                v29 -= v40[v55] * (*v53 - 1);
                v87 = v29;
                --v52;
                v54 = &v50[v37 - 8];
                v49 = *v54;
                v50 -= 4;
                if (v56 < 2)
                {
                  break;
                }

                v53 = &v51[v37];
                v57 = *&v51[4 * (v30 & 0x7FFFFFFF)] - 1;
                v51 -= 4;
                v55 = v52;
              }

              while (v49 == v57);
              v58 = &v50[v37 - 4];
            }

            else
            {
              v52 = v78;
              v58 = v41;
            }

            *v58 = v49 + 1;
            v29 += v40[v52];
            v87 = v29;
          }

          if (v33)
          {
            v59 = *v43;
            if (v33 >= 2 && v59 == *v35 - 1)
            {
              v60 = v74;
              v61 = v72;
              v62 = (v33 & 0x7FFFFFFF) - 1;
              v63 = v35;
              v64 = v43;
              v65 = v34;
              do
              {
                v66 = v62;
                *v64 = 0;
                v32 -= v42[v65] * (*v63 - 1);
                v80 = v32;
                --v62;
                v64 = &v60[v38 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v61[v38];
                v67 = *&v61[4 * (v33 & 0x7FFFFFFF)] - 1;
                v61 -= 4;
                v65 = v62;
              }

              while (v59 == v67);
              v68 = &v60[v38 - 4];
            }

            else
            {
              v62 = v34;
              v68 = v43;
            }

            *v68 = v59 + 1;
            v32 += v42[v62];
            v80 = v32;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v79 += v69;
      v27 = v71 + 1;
    }

    while (v71 + 1 != v70);
  }

  if (__p)
  {
    v86 = __p;
    operator delete(__p);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }
}

void sub_25A4FDC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<BOOL,short,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v98 = 0;
  v99 = 0;
  v97 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v97, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v97[8 * a4];
  v10 = v98 - (v9 + 8);
  if (v98 != v9 + 8)
  {
    memmove(&v97[8 * a4], v9 + 8, v98 - (v9 + 8));
  }

  v98 = &v9[v10];
  v11 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v94, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v94[4 * a4];
  v13 = v95 - (v12 + 4);
  if (v95 != v12 + 4)
  {
    memmove(&v94[4 * a4], v12 + 4, v95 - (v12 + 4));
  }

  v95 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v94, &v97, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v97 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v97, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v97[v14];
  v16 = v98 - &v97[v14 + 8];
  if (v98 != &v97[v14 + 8])
  {
    memmove(&v97[v14], &v97[v14 + 8], v98 - (v15 + 8));
  }

  v98 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v80, &v94, &v97, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v76 = *(*a3 + 152);
  v77 = *(*a2 + 152);
  v79 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v28 = v21;
    v69 = v26 * v21;
    v29 = v87;
    v30 = (v89 - v88) >> 2;
    v78 = (((v89 - v88) << 30) - 0x100000000) >> 32;
    v31 = v88 + 4 * v78;
    v32 = v80;
    v33 = (v82 - v81) >> 2;
    v34 = (((v82 - v81) << 30) - 0x100000000) >> 32;
    v35 = v81 + 4 * v34;
    v36 = 2 * v17;
    v37 = 4 * (v30 & 0x7FFFFFFF);
    v73 = v88 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v72 = v81 - 8;
    v70 = v23;
    do
    {
      v71 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v90;
        v41 = v92 + 4 * v78;
        v42 = v83;
        v74 = __p;
        v75 = v92;
        v43 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v76 + v32);
            v45 = v20;
            v46 = (v77 + 2 * v29);
            do
            {
              v47 = *v46;
              if (v47 >= 0)
              {
                v48 = 0;
              }

              else
              {
                v48 = v28;
              }

              *(v79 + v39 + (v48 + v47) * v19) |= *v44;
              v44 += v18;
              v46 = (v46 + v36);
              --v45;
            }

            while (v45);
          }

          if (v30)
          {
            v49 = *v41;
            if (v30 >= 2 && v49 == *v31 - 1)
            {
              v50 = v75;
              v51 = v73;
              v52 = (v30 & 0x7FFFFFFF) - 1;
              v53 = v31;
              v54 = v41;
              v55 = v78;
              do
              {
                v56 = v52;
                *v54 = 0;
                v29 -= v40[v55] * (*v53 - 1);
                v87 = v29;
                --v52;
                v54 = &v50[v37 - 8];
                v49 = *v54;
                v50 -= 4;
                if (v56 < 2)
                {
                  break;
                }

                v53 = &v51[v37];
                v57 = *&v51[4 * (v30 & 0x7FFFFFFF)] - 1;
                v51 -= 4;
                v55 = v52;
              }

              while (v49 == v57);
              v58 = &v50[v37 - 4];
            }

            else
            {
              v52 = v78;
              v58 = v41;
            }

            *v58 = v49 + 1;
            v29 += v40[v52];
            v87 = v29;
          }

          if (v33)
          {
            v59 = *v43;
            if (v33 >= 2 && v59 == *v35 - 1)
            {
              v60 = v74;
              v61 = v72;
              v62 = (v33 & 0x7FFFFFFF) - 1;
              v63 = v35;
              v64 = v43;
              v65 = v34;
              do
              {
                v66 = v62;
                *v64 = 0;
                v32 -= v42[v65] * (*v63 - 1);
                v80 = v32;
                --v62;
                v64 = &v60[v38 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v61[v38];
                v67 = *&v61[4 * (v33 & 0x7FFFFFFF)] - 1;
                v61 -= 4;
                v65 = v62;
              }

              while (v59 == v67);
              v68 = &v60[v38 - 4];
            }

            else
            {
              v62 = v34;
              v68 = v43;
            }

            *v68 = v59 + 1;
            v32 += v42[v62];
            v80 = v32;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v79 += v69;
      v27 = v71 + 1;
    }

    while (v71 + 1 != v70);
  }

  if (__p)
  {
    v86 = __p;
    operator delete(__p);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }
}

void sub_25A4FE23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<BOOL,int,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v98 = 0;
  v99 = 0;
  v97 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v97, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v97[8 * a4];
  v10 = v98 - (v9 + 8);
  if (v98 != v9 + 8)
  {
    memmove(&v97[8 * a4], v9 + 8, v98 - (v9 + 8));
  }

  v98 = &v9[v10];
  v11 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v94, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v94[4 * a4];
  v13 = v95 - (v12 + 4);
  if (v95 != v12 + 4)
  {
    memmove(&v94[4 * a4], v12 + 4, v95 - (v12 + 4));
  }

  v95 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v94, &v97, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v97 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v97, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v97[v14];
  v16 = v98 - &v97[v14 + 8];
  if (v98 != &v97[v14 + 8])
  {
    memmove(&v97[v14], &v97[v14 + 8], v98 - (v15 + 8));
  }

  v98 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v80, &v94, &v97, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v76 = *(*a3 + 152);
  v77 = *(*a2 + 152);
  v79 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v28 = v21;
    v69 = v26 * v21;
    v29 = v87;
    v30 = (v89 - v88) >> 2;
    v78 = (((v89 - v88) << 30) - 0x100000000) >> 32;
    v31 = v88 + 4 * v78;
    v32 = v80;
    v33 = (v82 - v81) >> 2;
    v34 = (((v82 - v81) << 30) - 0x100000000) >> 32;
    v35 = v81 + 4 * v34;
    v36 = 4 * v17;
    v37 = 4 * (v30 & 0x7FFFFFFF);
    v73 = v88 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v72 = v81 - 8;
    v70 = v23;
    do
    {
      v71 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v90;
        v41 = v92 + 4 * v78;
        v42 = v83;
        v74 = __p;
        v75 = v92;
        v43 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v76 + v32);
            v45 = v20;
            v46 = (v77 + 4 * v29);
            do
            {
              v47 = *v46;
              if (v47 >= 0)
              {
                v48 = 0;
              }

              else
              {
                v48 = v28;
              }

              *(v79 + v39 + (v48 + v47) * v19) = *v44;
              v44 += v18;
              v46 = (v46 + v36);
              --v45;
            }

            while (v45);
          }

          if (v30)
          {
            v49 = *v41;
            if (v30 >= 2 && v49 == *v31 - 1)
            {
              v50 = v75;
              v51 = v73;
              v52 = (v30 & 0x7FFFFFFF) - 1;
              v53 = v31;
              v54 = v41;
              v55 = v78;
              do
              {
                v56 = v52;
                *v54 = 0;
                v29 -= v40[v55] * (*v53 - 1);
                v87 = v29;
                --v52;
                v54 = &v50[v37 - 8];
                v49 = *v54;
                v50 -= 4;
                if (v56 < 2)
                {
                  break;
                }

                v53 = &v51[v37];
                v57 = *&v51[4 * (v30 & 0x7FFFFFFF)] - 1;
                v51 -= 4;
                v55 = v52;
              }

              while (v49 == v57);
              v58 = &v50[v37 - 4];
            }

            else
            {
              v52 = v78;
              v58 = v41;
            }

            *v58 = v49 + 1;
            v29 += v40[v52];
            v87 = v29;
          }

          if (v33)
          {
            v59 = *v43;
            if (v33 >= 2 && v59 == *v35 - 1)
            {
              v60 = v74;
              v61 = v72;
              v62 = (v33 & 0x7FFFFFFF) - 1;
              v63 = v35;
              v64 = v43;
              v65 = v34;
              do
              {
                v66 = v62;
                *v64 = 0;
                v32 -= v42[v65] * (*v63 - 1);
                v80 = v32;
                --v62;
                v64 = &v60[v38 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v61[v38];
                v67 = *&v61[4 * (v33 & 0x7FFFFFFF)] - 1;
                v61 -= 4;
                v65 = v62;
              }

              while (v59 == v67);
              v68 = &v60[v38 - 4];
            }

            else
            {
              v62 = v34;
              v68 = v43;
            }

            *v68 = v59 + 1;
            v32 += v42[v62];
            v80 = v32;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v79 += v69;
      v27 = v71 + 1;
    }

    while (v71 + 1 != v70);
  }

  if (__p)
  {
    v86 = __p;
    operator delete(__p);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }
}

void sub_25A4FE830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<BOOL,int,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v98 = 0;
  v99 = 0;
  v97 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v97, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v97[8 * a4];
  v10 = v98 - (v9 + 8);
  if (v98 != v9 + 8)
  {
    memmove(&v97[8 * a4], v9 + 8, v98 - (v9 + 8));
  }

  v98 = &v9[v10];
  v11 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v94, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v94[4 * a4];
  v13 = v95 - (v12 + 4);
  if (v95 != v12 + 4)
  {
    memmove(&v94[4 * a4], v12 + 4, v95 - (v12 + 4));
  }

  v95 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v94, &v97, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v97 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v97, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v97[v14];
  v16 = v98 - &v97[v14 + 8];
  if (v98 != &v97[v14 + 8])
  {
    memmove(&v97[v14], &v97[v14 + 8], v98 - (v15 + 8));
  }

  v98 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v80, &v94, &v97, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v76 = *(*a3 + 152);
  v77 = *(*a2 + 152);
  v79 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v28 = v21;
    v69 = v26 * v21;
    v29 = v87;
    v30 = (v89 - v88) >> 2;
    v78 = (((v89 - v88) << 30) - 0x100000000) >> 32;
    v31 = v88 + 4 * v78;
    v32 = v80;
    v33 = (v82 - v81) >> 2;
    v34 = (((v82 - v81) << 30) - 0x100000000) >> 32;
    v35 = v81 + 4 * v34;
    v36 = 4 * v17;
    v37 = 4 * (v30 & 0x7FFFFFFF);
    v73 = v88 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v72 = v81 - 8;
    v70 = v23;
    do
    {
      v71 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v90;
        v41 = v92 + 4 * v78;
        v42 = v83;
        v74 = __p;
        v75 = v92;
        v43 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v76 + v32);
            v45 = v20;
            v46 = (v77 + 4 * v29);
            do
            {
              v47 = *v46;
              if (v47 >= 0)
              {
                v48 = 0;
              }

              else
              {
                v48 = v28;
              }

              *(v79 + v39 + (v48 + v47) * v19) |= *v44;
              v44 += v18;
              v46 = (v46 + v36);
              --v45;
            }

            while (v45);
          }

          if (v30)
          {
            v49 = *v41;
            if (v30 >= 2 && v49 == *v31 - 1)
            {
              v50 = v75;
              v51 = v73;
              v52 = (v30 & 0x7FFFFFFF) - 1;
              v53 = v31;
              v54 = v41;
              v55 = v78;
              do
              {
                v56 = v52;
                *v54 = 0;
                v29 -= v40[v55] * (*v53 - 1);
                v87 = v29;
                --v52;
                v54 = &v50[v37 - 8];
                v49 = *v54;
                v50 -= 4;
                if (v56 < 2)
                {
                  break;
                }

                v53 = &v51[v37];
                v57 = *&v51[4 * (v30 & 0x7FFFFFFF)] - 1;
                v51 -= 4;
                v55 = v52;
              }

              while (v49 == v57);
              v58 = &v50[v37 - 4];
            }

            else
            {
              v52 = v78;
              v58 = v41;
            }

            *v58 = v49 + 1;
            v29 += v40[v52];
            v87 = v29;
          }

          if (v33)
          {
            v59 = *v43;
            if (v33 >= 2 && v59 == *v35 - 1)
            {
              v60 = v74;
              v61 = v72;
              v62 = (v33 & 0x7FFFFFFF) - 1;
              v63 = v35;
              v64 = v43;
              v65 = v34;
              do
              {
                v66 = v62;
                *v64 = 0;
                v32 -= v42[v65] * (*v63 - 1);
                v80 = v32;
                --v62;
                v64 = &v60[v38 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v61[v38];
                v67 = *&v61[4 * (v33 & 0x7FFFFFFF)] - 1;
                v61 -= 4;
                v65 = v62;
              }

              while (v59 == v67);
              v68 = &v60[v38 - 4];
            }

            else
            {
              v62 = v34;
              v68 = v43;
            }

            *v68 = v59 + 1;
            v32 += v42[v62];
            v80 = v32;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v79 += v69;
      v27 = v71 + 1;
    }

    while (v71 + 1 != v70);
  }

  if (__p)
  {
    v86 = __p;
    operator delete(__p);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }
}

void sub_25A4FEE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<BOOL,long long,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v96 = 0;
  v97 = 0;
  v95 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v95, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v95[8 * a4];
  v10 = v96 - (v9 + 8);
  if (v96 != v9 + 8)
  {
    memmove(&v95[8 * a4], v9 + 8, v96 - (v9 + 8));
  }

  v96 = &v9[v10];
  v11 = *a2;
  v93 = 0;
  v94 = 0;
  v92 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v92, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v92[4 * a4];
  v13 = v93 - (v12 + 4);
  if (v93 != v12 + 4)
  {
    memmove(&v92[4 * a4], v12 + 4, v93 - (v12 + 4));
  }

  v93 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v85, &v92, &v95, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v95 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v95, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v95[v14];
  v16 = v96 - &v95[v14 + 8];
  if (v96 != &v95[v14 + 8])
  {
    memmove(&v95[v14], &v95[v14 + 8], v96 - (v15 + 8));
  }

  v96 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v78, &v92, &v95, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v74 = *(*a3 + 152);
  v75 = *(*a2 + 152);
  v77 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v28 = v21;
    v67 = v26 * v21;
    v29 = v85;
    v30 = (v87 - v86) >> 2;
    v76 = (((v87 - v86) << 30) - 0x100000000) >> 32;
    v31 = v86 + 4 * v76;
    v32 = v78;
    v33 = (v80 - v79) >> 2;
    v34 = (((v80 - v79) << 30) - 0x100000000) >> 32;
    v35 = v79 + 4 * v34;
    v36 = 8 * v17;
    v37 = 4 * (v30 & 0x7FFFFFFF);
    v71 = v86 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v70 = v79 - 8;
    v68 = v23;
    do
    {
      v69 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v88;
        v41 = v90 + 4 * v76;
        v42 = v81;
        v72 = __p;
        v73 = v90;
        v43 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v74 + v32);
            v45 = v20;
            v46 = (v75 + 8 * v29);
            do
            {
              *(v77 + v39 + ((v28 & (*v46 >> 63)) + *v46) * v19) = *v44;
              v44 += v18;
              v46 = (v46 + v36);
              --v45;
            }

            while (v45);
          }

          if (v30)
          {
            v47 = *v41;
            if (v30 >= 2 && v47 == *v31 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v30 & 0x7FFFFFFF) - 1;
              v51 = v31;
              v52 = v41;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v29 -= v40[v53] * (*v51 - 1);
                v85 = v29;
                --v50;
                v52 = &v48[v37 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v37];
                v55 = *&v49[4 * (v30 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v37 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v41;
            }

            *v56 = v47 + 1;
            v29 += v40[v50];
            v85 = v29;
          }

          if (v33)
          {
            v57 = *v43;
            if (v33 >= 2 && v57 == *v35 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v33 & 0x7FFFFFFF) - 1;
              v61 = v35;
              v62 = v43;
              v63 = v34;
              do
              {
                v64 = v60;
                *v62 = 0;
                v32 -= v42[v63] * (*v61 - 1);
                v78 = v32;
                --v60;
                v62 = &v58[v38 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v38];
                v65 = *&v59[4 * (v33 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v38 - 4];
            }

            else
            {
              v60 = v34;
              v66 = v43;
            }

            *v66 = v57 + 1;
            v32 += v42[v60];
            v78 = v32;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v77 += v67;
      v27 = v69 + 1;
    }

    while (v69 + 1 != v68);
  }

  if (__p)
  {
    v84 = __p;
    operator delete(__p);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }
}

void sub_25A4FF41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<BOOL,long long,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v97 = 0;
  v98 = 0;
  v96 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v96, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v96[8 * a4];
  v10 = v97 - (v9 + 8);
  if (v97 != v9 + 8)
  {
    memmove(&v96[8 * a4], v9 + 8, v97 - (v9 + 8));
  }

  v97 = &v9[v10];
  v11 = *a2;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v93, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v93[4 * a4];
  v13 = v94 - (v12 + 4);
  if (v94 != v12 + 4)
  {
    memmove(&v93[4 * a4], v12 + 4, v94 - (v12 + 4));
  }

  v94 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v86, &v93, &v96, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v96 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v96, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v96[v14];
  v16 = v97 - &v96[v14 + 8];
  if (v97 != &v96[v14 + 8])
  {
    memmove(&v96[v14], &v96[v14 + 8], v97 - (v15 + 8));
  }

  v97 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v79, &v93, &v96, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v75 = *(*a3 + 152);
  v76 = *(*a2 + 152);
  v78 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v28 = v21;
    v68 = v26 * v21;
    v29 = v86;
    v30 = (v88 - v87) >> 2;
    v77 = (((v88 - v87) << 30) - 0x100000000) >> 32;
    v31 = v87 + 4 * v77;
    v32 = v79;
    v33 = (v81 - v80) >> 2;
    v34 = (((v81 - v80) << 30) - 0x100000000) >> 32;
    v35 = v80 + 4 * v34;
    v36 = 8 * v17;
    v37 = 4 * (v30 & 0x7FFFFFFF);
    v72 = v87 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v71 = v80 - 8;
    v69 = v23;
    do
    {
      v70 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v89;
        v41 = v91 + 4 * v77;
        v42 = v82;
        v73 = __p;
        v74 = v91;
        v43 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + v32);
            v45 = v20;
            v46 = (v76 + 8 * v29);
            do
            {
              v47 = ((v28 & (*v46 >> 63)) + *v46) * v19;
              *(v78 + v39 + v47) |= *v44;
              v44 += v18;
              v46 = (v46 + v36);
              --v45;
            }

            while (v45);
          }

          if (v30)
          {
            v48 = *v41;
            if (v30 >= 2 && v48 == *v31 - 1)
            {
              v49 = v74;
              v50 = v72;
              v51 = (v30 & 0x7FFFFFFF) - 1;
              v52 = v31;
              v53 = v41;
              v54 = v77;
              do
              {
                v55 = v51;
                *v53 = 0;
                v29 -= v40[v54] * (*v52 - 1);
                v86 = v29;
                --v51;
                v53 = &v49[v37 - 8];
                v48 = *v53;
                v49 -= 4;
                if (v55 < 2)
                {
                  break;
                }

                v52 = &v50[v37];
                v56 = *&v50[4 * (v30 & 0x7FFFFFFF)] - 1;
                v50 -= 4;
                v54 = v51;
              }

              while (v48 == v56);
              v57 = &v49[v37 - 4];
            }

            else
            {
              v51 = v77;
              v57 = v41;
            }

            *v57 = v48 + 1;
            v29 += v40[v51];
            v86 = v29;
          }

          if (v33)
          {
            v58 = *v43;
            if (v33 >= 2 && v58 == *v35 - 1)
            {
              v59 = v73;
              v60 = v71;
              v61 = (v33 & 0x7FFFFFFF) - 1;
              v62 = v35;
              v63 = v43;
              v64 = v34;
              do
              {
                v65 = v61;
                *v63 = 0;
                v32 -= v42[v64] * (*v62 - 1);
                v79 = v32;
                --v61;
                v63 = &v59[v38 - 8];
                v58 = *v63;
                v59 -= 4;
                if (v65 < 2)
                {
                  break;
                }

                v62 = &v60[v38];
                v66 = *&v60[4 * (v33 & 0x7FFFFFFF)] - 1;
                v60 -= 4;
                v64 = v61;
              }

              while (v58 == v66);
              v67 = &v59[v38 - 4];
            }

            else
            {
              v61 = v34;
              v67 = v43;
            }

            *v67 = v58 + 1;
            v32 += v42[v61];
            v79 = v32;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v78 += v68;
      v27 = v70 + 1;
    }

    while (v70 + 1 != v69);
  }

  if (__p)
  {
    v85 = __p;
    operator delete(__p);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }
}

void sub_25A4FFA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::dispatch_scatter_axis_op<unsigned char,unsigned char>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<unsigned char,unsigned char,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<unsigned char,unsigned char,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<unsigned char,unsigned short>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<unsigned char,unsigned short,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<unsigned char,unsigned short,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<unsigned char,unsigned int>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<unsigned char,unsigned int,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<unsigned char,unsigned int,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<unsigned char,unsigned long long>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<unsigned char,unsigned long long,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<unsigned char,unsigned long long,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<unsigned char,signed char>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<unsigned char,signed char,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<unsigned char,signed char,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<unsigned char,short>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<unsigned char,short,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<unsigned char,short,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<unsigned char,int>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<unsigned char,int,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<unsigned char,int,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<unsigned char,long long>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<unsigned char,long long,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<unsigned char,long long,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::scatter_axis<unsigned char,unsigned char,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v83, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v83[8 * a4];
  v10 = v84 - (v9 + 8);
  if (v84 != v9 + 8)
  {
    memmove(&v83[8 * a4], v9 + 8, v84 - (v9 + 8));
  }

  v84 = &v9[v10];
  v11 = *a2;
  v81 = 0;
  v82 = 0;
  v80 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v80, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v80[4 * a4];
  v13 = v81 - (v12 + 4);
  if (v81 != v12 + 4)
  {
    memmove(&v80[4 * a4], v12 + 4, v81 - (v12 + 4));
  }

  v81 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v73, &v80, &v83, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v83 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v83, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v83[v14];
  v16 = v84 - &v83[v14 + 8];
  if (v84 != &v83[v14 + 8])
  {
    memmove(&v83[v14], &v83[v14 + 8], v84 - (v15 + 8));
  }

  v84 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v66, &v80, &v83, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v64 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v65 = 1;
  }

  else
  {
    v24 = 0;
    v65 = 1;
    do
    {
      v65 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v25 = a4 + 1;
  for (i = 1; v25 < (*(*a2 + 8) - **a2) >> 2; ++v25)
  {
    i *= mlx::core::array::shape(a2, v25);
  }

  if (v65)
  {
    for (j = 0; j != v65; ++j)
    {
      if (i)
      {
        for (k = 0; k != i; ++k)
        {
          if (v23 >= 1)
          {
            v29 = v23;
            v30 = v17;
            v31 = v18;
            do
            {
              *(v19 + k + v22 * *(v30 + v73)) = *(v31 + v66);
              v31 += v21;
              v30 += v20;
              --v29;
            }

            while (v29);
          }

          v32 = v75 - v74;
          v33 = (v75 - v74) >> 2;
          if (v33)
          {
            v34 = v78;
            v35 = ((v32 << 30) - 0x100000000) >> 32;
            v36 = v78 + 4 * v35;
            v37 = *v36;
            v38 = v74 + 4 * v35;
            v39 = v76;
            v40 = v73;
            if (v33 >= 2 && v37 == *v38 - 1)
            {
              v43 = (v32 >> 2) & 0x7FFFFFFF;
              v42 = v43 - 1;
              v44 = 4 * v43;
              v45 = v74 - 8;
              do
              {
                v46 = v42;
                *v36 = 0;
                v40 -= v39[v35] * (*v38 - 1);
                v73 = v40;
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
            v73 = v39[v42] + v40;
          }

          v48 = v68 - v67;
          v49 = (v68 - v67) >> 2;
          if (v49)
          {
            v50 = __p;
            v51 = ((v48 << 30) - 0x100000000) >> 32;
            v52 = __p + 4 * v51;
            v53 = *v52;
            v54 = v67 + 4 * v51;
            v55 = v69;
            v56 = v66;
            if (v49 >= 2 && v53 == *v54 - 1)
            {
              v59 = (v48 >> 2) & 0x7FFFFFFF;
              v58 = v59 - 1;
              v60 = 4 * v59;
              v61 = v67 - 8;
              do
              {
                v62 = v58;
                *v52 = 0;
                v56 -= v55[v51] * (*v54 - 1);
                v66 = v56;
                --v58;
                v52 = &v50[v60 - 8];
                v53 = *v52;
                v50 -= 4;
                if (v62 < 2)
                {
                  break;
                }

                v54 = &v61[v60];
                v63 = *&v61[4 * v59] - 1;
                v61 -= 4;
                v51 = v58;
              }

              while (v53 == v63);
              v52 = &v50[4 * v59 - 4];
            }

            else
            {
              v58 = ((v48 << 30) - 0x100000000) >> 32;
            }

            *v52 = v53 + 1;
            v66 = v55[v58] + v56;
          }
        }
      }

      v19 += i * v64;
    }
  }

  if (__p)
  {
    v72 = __p;
    operator delete(__p);
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

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }
}

void sub_25A5004C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 112);
  if (v17)
  {
    *(v14 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<unsigned char,unsigned char,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v83, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v83[8 * a4];
  v10 = v84 - (v9 + 8);
  if (v84 != v9 + 8)
  {
    memmove(&v83[8 * a4], v9 + 8, v84 - (v9 + 8));
  }

  v84 = &v9[v10];
  v11 = *a2;
  v81 = 0;
  v82 = 0;
  v80 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v80, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v80[4 * a4];
  v13 = v81 - (v12 + 4);
  if (v81 != v12 + 4)
  {
    memmove(&v80[4 * a4], v12 + 4, v81 - (v12 + 4));
  }

  v81 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v73, &v80, &v83, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v83 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v83, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v83[v14];
  v16 = v84 - &v83[v14 + 8];
  if (v84 != &v83[v14 + 8])
  {
    memmove(&v83[v14], &v83[v14 + 8], v84 - (v15 + 8));
  }

  v84 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v66, &v80, &v83, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v64 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v65 = 1;
  }

  else
  {
    v24 = 0;
    v65 = 1;
    do
    {
      v65 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v25 = a4 + 1;
  for (i = 1; v25 < (*(*a2 + 8) - **a2) >> 2; ++v25)
  {
    i *= mlx::core::array::shape(a2, v25);
  }

  if (v65)
  {
    for (j = 0; j != v65; ++j)
    {
      if (i)
      {
        for (k = 0; k != i; ++k)
        {
          if (v23 >= 1)
          {
            v29 = v23;
            v30 = v17;
            v31 = v18;
            do
            {
              *(v19 + k + v22 * *(v30 + v73)) += *(v31 + v66);
              v31 += v21;
              v30 += v20;
              --v29;
            }

            while (v29);
          }

          v32 = v75 - v74;
          v33 = (v75 - v74) >> 2;
          if (v33)
          {
            v34 = v78;
            v35 = ((v32 << 30) - 0x100000000) >> 32;
            v36 = v78 + 4 * v35;
            v37 = *v36;
            v38 = v74 + 4 * v35;
            v39 = v76;
            v40 = v73;
            if (v33 >= 2 && v37 == *v38 - 1)
            {
              v43 = (v32 >> 2) & 0x7FFFFFFF;
              v42 = v43 - 1;
              v44 = 4 * v43;
              v45 = v74 - 8;
              do
              {
                v46 = v42;
                *v36 = 0;
                v40 -= v39[v35] * (*v38 - 1);
                v73 = v40;
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
            v73 = v39[v42] + v40;
          }

          v48 = v68 - v67;
          v49 = (v68 - v67) >> 2;
          if (v49)
          {
            v50 = __p;
            v51 = ((v48 << 30) - 0x100000000) >> 32;
            v52 = __p + 4 * v51;
            v53 = *v52;
            v54 = v67 + 4 * v51;
            v55 = v69;
            v56 = v66;
            if (v49 >= 2 && v53 == *v54 - 1)
            {
              v59 = (v48 >> 2) & 0x7FFFFFFF;
              v58 = v59 - 1;
              v60 = 4 * v59;
              v61 = v67 - 8;
              do
              {
                v62 = v58;
                *v52 = 0;
                v56 -= v55[v51] * (*v54 - 1);
                v66 = v56;
                --v58;
                v52 = &v50[v60 - 8];
                v53 = *v52;
                v50 -= 4;
                if (v62 < 2)
                {
                  break;
                }

                v54 = &v61[v60];
                v63 = *&v61[4 * v59] - 1;
                v61 -= 4;
                v51 = v58;
              }

              while (v53 == v63);
              v52 = &v50[4 * v59 - 4];
            }

            else
            {
              v58 = ((v48 << 30) - 0x100000000) >> 32;
            }

            *v52 = v53 + 1;
            v66 = v55[v58] + v56;
          }
        }
      }

      v19 += i * v64;
    }
  }

  if (__p)
  {
    v72 = __p;
    operator delete(__p);
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

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }
}

void sub_25A500A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 112);
  if (v17)
  {
    *(v14 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<unsigned char,unsigned short,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v85, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v85[8 * a4];
  v10 = v86 - (v9 + 8);
  if (v86 != v9 + 8)
  {
    memmove(&v85[8 * a4], v9 + 8, v86 - (v9 + 8));
  }

  v86 = &v9[v10];
  v11 = *a2;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v82, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v82[4 * a4];
  v13 = v83 - (v12 + 4);
  if (v83 != v12 + 4)
  {
    memmove(&v82[4 * a4], v12 + 4, v83 - (v12 + 4));
  }

  v83 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v75, &v82, &v85, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v85 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v85, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v85[v14];
  v16 = v86 - &v85[v14 + 8];
  if (v86 != &v85[v14 + 8])
  {
    memmove(&v85[v14], &v85[v14 + 8], v86 - (v15 + 8));
  }

  v86 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v68, &v82, &v85, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v66 = mlx::core::array::shape(a1, a4);
  v67 = v20;
  if (a4 < 1)
  {
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v25 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v26 = a4 + 1;
  v27 = *(*a2 + 8) - **a2;
  v28 = 1;
  while (v26 < v27 >> 2)
  {
    v28 *= mlx::core::array::shape(a2, v26++);
    v27 = *(*a2 + 8) - **a2;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (v28)
      {
        for (j = 0; j != v28; ++j)
        {
          if (v23 >= 1)
          {
            v31 = v23;
            v32 = v17;
            v33 = v18;
            do
            {
              *(v19 + j + v22 * *(v32 + 2 * v75)) = *(v33 + v68);
              v33 += v21;
              v32 += 2 * v67;
              --v31;
            }

            while (v31);
          }

          v34 = v77 - v76;
          v35 = (v77 - v76) >> 2;
          if (v35)
          {
            v36 = v80;
            v37 = ((v34 << 30) - 0x100000000) >> 32;
            v38 = v80 + 4 * v37;
            v39 = *v38;
            v40 = v76 + 4 * v37;
            v41 = v78;
            v42 = v75;
            if (v35 >= 2 && v39 == *v40 - 1)
            {
              v45 = (v34 >> 2) & 0x7FFFFFFF;
              v44 = v45 - 1;
              v46 = 4 * v45;
              v47 = v76 - 8;
              do
              {
                v48 = v44;
                *v38 = 0;
                v42 -= v41[v37] * (*v40 - 1);
                v75 = v42;
                --v44;
                v38 = &v36[v46 - 8];
                v39 = *v38;
                v36 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v40 = &v47[v46];
                v49 = *&v47[4 * v45] - 1;
                v47 -= 4;
                v37 = v44;
              }

              while (v39 == v49);
              v38 = &v36[4 * v45 - 4];
            }

            else
            {
              v44 = ((v34 << 30) - 0x100000000) >> 32;
            }

            *v38 = v39 + 1;
            v75 = v41[v44] + v42;
          }

          v50 = v70 - v69;
          v51 = (v70 - v69) >> 2;
          if (v51)
          {
            v52 = __p;
            v53 = ((v50 << 30) - 0x100000000) >> 32;
            v54 = __p + 4 * v53;
            v55 = *v54;
            v56 = v69 + 4 * v53;
            v57 = v71;
            v58 = v68;
            if (v51 >= 2 && v55 == *v56 - 1)
            {
              v61 = (v50 >> 2) & 0x7FFFFFFF;
              v60 = v61 - 1;
              v62 = 4 * v61;
              v63 = v69 - 8;
              do
              {
                v64 = v60;
                *v54 = 0;
                v58 -= v57[v53] * (*v56 - 1);
                v68 = v58;
                --v60;
                v54 = &v52[v62 - 8];
                v55 = *v54;
                v52 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v56 = &v63[v62];
                v65 = *&v63[4 * v61] - 1;
                v63 -= 4;
                v53 = v60;
              }

              while (v55 == v65);
              v54 = &v52[4 * v61 - 4];
            }

            else
            {
              v60 = ((v50 << 30) - 0x100000000) >> 32;
            }

            *v54 = v55 + 1;
            v68 = v57[v60] + v58;
          }
        }
      }

      v19 += v28 * v66;
    }
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

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }
}

void sub_25A500FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 112);
  if (v17)
  {
    *(v14 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<unsigned char,unsigned short,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v86, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v86[8 * a4];
  v10 = v87 - (v9 + 8);
  if (v87 != v9 + 8)
  {
    memmove(&v86[8 * a4], v9 + 8, v87 - (v9 + 8));
  }

  v87 = &v9[v10];
  v11 = *a2;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v83, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v83[4 * a4];
  v13 = v84 - (v12 + 4);
  if (v84 != v12 + 4)
  {
    memmove(&v83[4 * a4], v12 + 4, v84 - (v12 + 4));
  }

  v84 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v76, &v83, &v86, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v86 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v86, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v86[v14];
  v16 = v87 - &v86[v14 + 8];
  if (v87 != &v86[v14 + 8])
  {
    memmove(&v86[v14], &v86[v14 + 8], v87 - (v15 + 8));
  }

  v87 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v69, &v83, &v86, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v67 = mlx::core::array::shape(a1, a4);
  v68 = v20;
  if (a4 < 1)
  {
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v25 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v26 = a4 + 1;
  v27 = *(*a2 + 8) - **a2;
  v28 = 1;
  while (v26 < v27 >> 2)
  {
    v28 *= mlx::core::array::shape(a2, v26++);
    v27 = *(*a2 + 8) - **a2;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (v28)
      {
        for (j = 0; j != v28; ++j)
        {
          if (v23 >= 1)
          {
            v31 = v23;
            v32 = v17;
            v33 = v18;
            do
            {
              v34 = v22 * *(v32 + 2 * v76);
              *(v19 + j + v34) += *(v33 + v69);
              v33 += v21;
              v32 += 2 * v68;
              --v31;
            }

            while (v31);
          }

          v35 = v78 - v77;
          v36 = (v78 - v77) >> 2;
          if (v36)
          {
            v37 = v81;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = v81 + 4 * v38;
            v40 = *v39;
            v41 = v77 + 4 * v38;
            v42 = v79;
            v43 = v76;
            if (v36 >= 2 && v40 == *v41 - 1)
            {
              v46 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v46 - 1;
              v47 = 4 * v46;
              v48 = v77 - 8;
              do
              {
                v49 = v45;
                *v39 = 0;
                v43 -= v42[v38] * (*v41 - 1);
                v76 = v43;
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
            v76 = v42[v45] + v43;
          }

          v51 = v71 - v70;
          v52 = (v71 - v70) >> 2;
          if (v52)
          {
            v53 = __p;
            v54 = ((v51 << 30) - 0x100000000) >> 32;
            v55 = __p + 4 * v54;
            v56 = *v55;
            v57 = v70 + 4 * v54;
            v58 = v72;
            v59 = v69;
            if (v52 >= 2 && v56 == *v57 - 1)
            {
              v62 = (v51 >> 2) & 0x7FFFFFFF;
              v61 = v62 - 1;
              v63 = 4 * v62;
              v64 = v70 - 8;
              do
              {
                v65 = v61;
                *v55 = 0;
                v59 -= v58[v54] * (*v57 - 1);
                v69 = v59;
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
            v69 = v58[v61] + v59;
          }
        }
      }

      v19 += v28 * v67;
    }
  }

  if (__p)
  {
    v75 = __p;
    operator delete(__p);
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

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }
}

void sub_25A501544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 112);
  if (v17)
  {
    *(v14 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<unsigned char,unsigned int,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v85, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v85[8 * a4];
  v10 = v86 - (v9 + 8);
  if (v86 != v9 + 8)
  {
    memmove(&v85[8 * a4], v9 + 8, v86 - (v9 + 8));
  }

  v86 = &v9[v10];
  v11 = *a2;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v82, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v82[4 * a4];
  v13 = v83 - (v12 + 4);
  if (v83 != v12 + 4)
  {
    memmove(&v82[4 * a4], v12 + 4, v83 - (v12 + 4));
  }

  v83 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v75, &v82, &v85, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v85 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v85, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v85[v14];
  v16 = v86 - &v85[v14 + 8];
  if (v86 != &v85[v14 + 8])
  {
    memmove(&v85[v14], &v85[v14 + 8], v86 - (v15 + 8));
  }

  v86 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v68, &v82, &v85, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v66 = mlx::core::array::shape(a1, a4);
  v67 = v20;
  if (a4 < 1)
  {
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v25 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v26 = a4 + 1;
  v27 = *(*a2 + 8) - **a2;
  v28 = 1;
  while (v26 < v27 >> 2)
  {
    v28 *= mlx::core::array::shape(a2, v26++);
    v27 = *(*a2 + 8) - **a2;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (v28)
      {
        for (j = 0; j != v28; ++j)
        {
          if (v23 >= 1)
          {
            v31 = v23;
            v32 = v17;
            v33 = v18;
            do
            {
              *(v19 + j + v22 * *(v32 + 4 * v75)) = *(v33 + v68);
              v33 += v21;
              v32 += 4 * v67;
              --v31;
            }

            while (v31);
          }

          v34 = v77 - v76;
          v35 = (v77 - v76) >> 2;
          if (v35)
          {
            v36 = v80;
            v37 = ((v34 << 30) - 0x100000000) >> 32;
            v38 = v80 + 4 * v37;
            v39 = *v38;
            v40 = v76 + 4 * v37;
            v41 = v78;
            v42 = v75;
            if (v35 >= 2 && v39 == *v40 - 1)
            {
              v45 = (v34 >> 2) & 0x7FFFFFFF;
              v44 = v45 - 1;
              v46 = 4 * v45;
              v47 = v76 - 8;
              do
              {
                v48 = v44;
                *v38 = 0;
                v42 -= v41[v37] * (*v40 - 1);
                v75 = v42;
                --v44;
                v38 = &v36[v46 - 8];
                v39 = *v38;
                v36 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v40 = &v47[v46];
                v49 = *&v47[4 * v45] - 1;
                v47 -= 4;
                v37 = v44;
              }

              while (v39 == v49);
              v38 = &v36[4 * v45 - 4];
            }

            else
            {
              v44 = ((v34 << 30) - 0x100000000) >> 32;
            }

            *v38 = v39 + 1;
            v75 = v41[v44] + v42;
          }

          v50 = v70 - v69;
          v51 = (v70 - v69) >> 2;
          if (v51)
          {
            v52 = __p;
            v53 = ((v50 << 30) - 0x100000000) >> 32;
            v54 = __p + 4 * v53;
            v55 = *v54;
            v56 = v69 + 4 * v53;
            v57 = v71;
            v58 = v68;
            if (v51 >= 2 && v55 == *v56 - 1)
            {
              v61 = (v50 >> 2) & 0x7FFFFFFF;
              v60 = v61 - 1;
              v62 = 4 * v61;
              v63 = v69 - 8;
              do
              {
                v64 = v60;
                *v54 = 0;
                v58 -= v57[v53] * (*v56 - 1);
                v68 = v58;
                --v60;
                v54 = &v52[v62 - 8];
                v55 = *v54;
                v52 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v56 = &v63[v62];
                v65 = *&v63[4 * v61] - 1;
                v63 -= 4;
                v53 = v60;
              }

              while (v55 == v65);
              v54 = &v52[4 * v61 - 4];
            }

            else
            {
              v60 = ((v50 << 30) - 0x100000000) >> 32;
            }

            *v54 = v55 + 1;
            v68 = v57[v60] + v58;
          }
        }
      }

      v19 += v28 * v66;
    }
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

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }
}

void sub_25A501AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 112);
  if (v17)
  {
    *(v14 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<unsigned char,unsigned int,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v86, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v86[8 * a4];
  v10 = v87 - (v9 + 8);
  if (v87 != v9 + 8)
  {
    memmove(&v86[8 * a4], v9 + 8, v87 - (v9 + 8));
  }

  v87 = &v9[v10];
  v11 = *a2;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v83, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v83[4 * a4];
  v13 = v84 - (v12 + 4);
  if (v84 != v12 + 4)
  {
    memmove(&v83[4 * a4], v12 + 4, v84 - (v12 + 4));
  }

  v84 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v76, &v83, &v86, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v86 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v86, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v86[v14];
  v16 = v87 - &v86[v14 + 8];
  if (v87 != &v86[v14 + 8])
  {
    memmove(&v86[v14], &v86[v14 + 8], v87 - (v15 + 8));
  }

  v87 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v69, &v83, &v86, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v67 = mlx::core::array::shape(a1, a4);
  v68 = v20;
  if (a4 < 1)
  {
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v25 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v26 = a4 + 1;
  v27 = *(*a2 + 8) - **a2;
  v28 = 1;
  while (v26 < v27 >> 2)
  {
    v28 *= mlx::core::array::shape(a2, v26++);
    v27 = *(*a2 + 8) - **a2;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (v28)
      {
        for (j = 0; j != v28; ++j)
        {
          if (v23 >= 1)
          {
            v31 = v23;
            v32 = v17;
            v33 = v18;
            do
            {
              v34 = v22 * *(v32 + 4 * v76);
              *(v19 + j + v34) += *(v33 + v69);
              v33 += v21;
              v32 += 4 * v68;
              --v31;
            }

            while (v31);
          }

          v35 = v78 - v77;
          v36 = (v78 - v77) >> 2;
          if (v36)
          {
            v37 = v81;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = v81 + 4 * v38;
            v40 = *v39;
            v41 = v77 + 4 * v38;
            v42 = v79;
            v43 = v76;
            if (v36 >= 2 && v40 == *v41 - 1)
            {
              v46 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v46 - 1;
              v47 = 4 * v46;
              v48 = v77 - 8;
              do
              {
                v49 = v45;
                *v39 = 0;
                v43 -= v42[v38] * (*v41 - 1);
                v76 = v43;
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
            v76 = v42[v45] + v43;
          }

          v51 = v71 - v70;
          v52 = (v71 - v70) >> 2;
          if (v52)
          {
            v53 = __p;
            v54 = ((v51 << 30) - 0x100000000) >> 32;
            v55 = __p + 4 * v54;
            v56 = *v55;
            v57 = v70 + 4 * v54;
            v58 = v72;
            v59 = v69;
            if (v52 >= 2 && v56 == *v57 - 1)
            {
              v62 = (v51 >> 2) & 0x7FFFFFFF;
              v61 = v62 - 1;
              v63 = 4 * v62;
              v64 = v70 - 8;
              do
              {
                v65 = v61;
                *v55 = 0;
                v59 -= v58[v54] * (*v57 - 1);
                v69 = v59;
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
            v69 = v58[v61] + v59;
          }
        }
      }

      v19 += v28 * v67;
    }
  }

  if (__p)
  {
    v75 = __p;
    operator delete(__p);
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

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }
}

void sub_25A50202C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 112);
  if (v17)
  {
    *(v14 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<unsigned char,unsigned long long,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v85, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v85[8 * a4];
  v10 = v86 - (v9 + 8);
  if (v86 != v9 + 8)
  {
    memmove(&v85[8 * a4], v9 + 8, v86 - (v9 + 8));
  }

  v86 = &v9[v10];
  v11 = *a2;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v82, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v82[4 * a4];
  v13 = v83 - (v12 + 4);
  if (v83 != v12 + 4)
  {
    memmove(&v82[4 * a4], v12 + 4, v83 - (v12 + 4));
  }

  v83 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v75, &v82, &v85, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v85 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v85, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v85[v14];
  v16 = v86 - &v85[v14 + 8];
  if (v86 != &v85[v14 + 8])
  {
    memmove(&v85[v14], &v85[v14 + 8], v86 - (v15 + 8));
  }

  v86 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v68, &v82, &v85, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v66 = mlx::core::array::shape(a1, a4);
  v67 = v20;
  if (a4 < 1)
  {
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v25 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v26 = a4 + 1;
  v27 = *(*a2 + 8) - **a2;
  v28 = 1;
  while (v26 < v27 >> 2)
  {
    v28 *= mlx::core::array::shape(a2, v26++);
    v27 = *(*a2 + 8) - **a2;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (v28)
      {
        for (j = 0; j != v28; ++j)
        {
          if (v23 >= 1)
          {
            v31 = v23;
            v32 = v17;
            v33 = v18;
            do
            {
              *(v19 + j + *(v32 + 8 * v75) * v22) = *(v33 + v68);
              v33 += v21;
              v32 += 8 * v67;
              --v31;
            }

            while (v31);
          }

          v34 = v77 - v76;
          v35 = (v77 - v76) >> 2;
          if (v35)
          {
            v36 = v80;
            v37 = ((v34 << 30) - 0x100000000) >> 32;
            v38 = v80 + 4 * v37;
            v39 = *v38;
            v40 = v76 + 4 * v37;
            v41 = v78;
            v42 = v75;
            if (v35 >= 2 && v39 == *v40 - 1)
            {
              v45 = (v34 >> 2) & 0x7FFFFFFF;
              v44 = v45 - 1;
              v46 = 4 * v45;
              v47 = v76 - 8;
              do
              {
                v48 = v44;
                *v38 = 0;
                v42 -= v41[v37] * (*v40 - 1);
                v75 = v42;
                --v44;
                v38 = &v36[v46 - 8];
                v39 = *v38;
                v36 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v40 = &v47[v46];
                v49 = *&v47[4 * v45] - 1;
                v47 -= 4;
                v37 = v44;
              }

              while (v39 == v49);
              v38 = &v36[4 * v45 - 4];
            }

            else
            {
              v44 = ((v34 << 30) - 0x100000000) >> 32;
            }

            *v38 = v39 + 1;
            v75 = v41[v44] + v42;
          }

          v50 = v70 - v69;
          v51 = (v70 - v69) >> 2;
          if (v51)
          {
            v52 = __p;
            v53 = ((v50 << 30) - 0x100000000) >> 32;
            v54 = __p + 4 * v53;
            v55 = *v54;
            v56 = v69 + 4 * v53;
            v57 = v71;
            v58 = v68;
            if (v51 >= 2 && v55 == *v56 - 1)
            {
              v61 = (v50 >> 2) & 0x7FFFFFFF;
              v60 = v61 - 1;
              v62 = 4 * v61;
              v63 = v69 - 8;
              do
              {
                v64 = v60;
                *v54 = 0;
                v58 -= v57[v53] * (*v56 - 1);
                v68 = v58;
                --v60;
                v54 = &v52[v62 - 8];
                v55 = *v54;
                v52 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v56 = &v63[v62];
                v65 = *&v63[4 * v61] - 1;
                v63 -= 4;
                v53 = v60;
              }

              while (v55 == v65);
              v54 = &v52[4 * v61 - 4];
            }

            else
            {
              v60 = ((v50 << 30) - 0x100000000) >> 32;
            }

            *v54 = v55 + 1;
            v68 = v57[v60] + v58;
          }
        }
      }

      v19 += v28 * v66;
    }
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

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }
}

void sub_25A50259C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 112);
  if (v17)
  {
    *(v14 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<unsigned char,unsigned long long,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v85, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v85[8 * a4];
  v10 = v86 - (v9 + 8);
  if (v86 != v9 + 8)
  {
    memmove(&v85[8 * a4], v9 + 8, v86 - (v9 + 8));
  }

  v86 = &v9[v10];
  v11 = *a2;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v82, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v82[4 * a4];
  v13 = v83 - (v12 + 4);
  if (v83 != v12 + 4)
  {
    memmove(&v82[4 * a4], v12 + 4, v83 - (v12 + 4));
  }

  v83 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v75, &v82, &v85, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v85 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v85, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v85[v14];
  v16 = v86 - &v85[v14 + 8];
  if (v86 != &v85[v14 + 8])
  {
    memmove(&v85[v14], &v85[v14 + 8], v86 - (v15 + 8));
  }

  v86 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v68, &v82, &v85, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v66 = mlx::core::array::shape(a1, a4);
  v67 = v20;
  if (a4 < 1)
  {
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v25 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v26 = a4 + 1;
  v27 = *(*a2 + 8) - **a2;
  v28 = 1;
  while (v26 < v27 >> 2)
  {
    v28 *= mlx::core::array::shape(a2, v26++);
    v27 = *(*a2 + 8) - **a2;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (v28)
      {
        for (j = 0; j != v28; ++j)
        {
          if (v23 >= 1)
          {
            v31 = v23;
            v32 = v17;
            v33 = v18;
            do
            {
              *(v19 + j + *(v32 + 8 * v75) * v22) += *(v33 + v68);
              v33 += v21;
              v32 += 8 * v67;
              --v31;
            }

            while (v31);
          }

          v34 = v77 - v76;
          v35 = (v77 - v76) >> 2;
          if (v35)
          {
            v36 = v80;
            v37 = ((v34 << 30) - 0x100000000) >> 32;
            v38 = v80 + 4 * v37;
            v39 = *v38;
            v40 = v76 + 4 * v37;
            v41 = v78;
            v42 = v75;
            if (v35 >= 2 && v39 == *v40 - 1)
            {
              v45 = (v34 >> 2) & 0x7FFFFFFF;
              v44 = v45 - 1;
              v46 = 4 * v45;
              v47 = v76 - 8;
              do
              {
                v48 = v44;
                *v38 = 0;
                v42 -= v41[v37] * (*v40 - 1);
                v75 = v42;
                --v44;
                v38 = &v36[v46 - 8];
                v39 = *v38;
                v36 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v40 = &v47[v46];
                v49 = *&v47[4 * v45] - 1;
                v47 -= 4;
                v37 = v44;
              }

              while (v39 == v49);
              v38 = &v36[4 * v45 - 4];
            }

            else
            {
              v44 = ((v34 << 30) - 0x100000000) >> 32;
            }

            *v38 = v39 + 1;
            v75 = v41[v44] + v42;
          }

          v50 = v70 - v69;
          v51 = (v70 - v69) >> 2;
          if (v51)
          {
            v52 = __p;
            v53 = ((v50 << 30) - 0x100000000) >> 32;
            v54 = __p + 4 * v53;
            v55 = *v54;
            v56 = v69 + 4 * v53;
            v57 = v71;
            v58 = v68;
            if (v51 >= 2 && v55 == *v56 - 1)
            {
              v61 = (v50 >> 2) & 0x7FFFFFFF;
              v60 = v61 - 1;
              v62 = 4 * v61;
              v63 = v69 - 8;
              do
              {
                v64 = v60;
                *v54 = 0;
                v58 -= v57[v53] * (*v56 - 1);
                v68 = v58;
                --v60;
                v54 = &v52[v62 - 8];
                v55 = *v54;
                v52 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v56 = &v63[v62];
                v65 = *&v63[4 * v61] - 1;
                v63 -= 4;
                v53 = v60;
              }

              while (v55 == v65);
              v54 = &v52[4 * v61 - 4];
            }

            else
            {
              v60 = ((v50 << 30) - 0x100000000) >> 32;
            }

            *v54 = v55 + 1;
            v68 = v57[v60] + v58;
          }
        }
      }

      v19 += v28 * v66;
    }
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

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }
}

void sub_25A502B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 112);
  if (v17)
  {
    *(v14 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<unsigned char,signed char,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v85, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v85[8 * a4];
  v10 = v86 - (v9 + 8);
  if (v86 != v9 + 8)
  {
    memmove(&v85[8 * a4], v9 + 8, v86 - (v9 + 8));
  }

  v86 = &v9[v10];
  v11 = *a2;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v82, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v82[4 * a4];
  v13 = v83 - (v12 + 4);
  if (v83 != v12 + 4)
  {
    memmove(&v82[4 * a4], v12 + 4, v83 - (v12 + 4));
  }

  v83 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v75, &v82, &v85, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v85 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v85, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v85[v14];
  v16 = v86 - &v85[v14 + 8];
  if (v86 != &v85[v14 + 8])
  {
    memmove(&v85[v14], &v85[v14 + 8], v86 - (v15 + 8));
  }

  v86 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v68, &v82, &v85, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v66 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v67 = 1;
  }

  else
  {
    v24 = 0;
    v67 = 1;
    do
    {
      v67 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v25 = a4 + 1;
  for (i = 1; v25 < (*(*a2 + 8) - **a2) >> 2; ++v25)
  {
    i *= mlx::core::array::shape(a2, v25);
  }

  if (v67)
  {
    for (j = 0; j != v67; ++j)
    {
      if (i)
      {
        for (k = 0; k != i; ++k)
        {
          if (v23 >= 1)
          {
            v29 = v23;
            v30 = v17;
            v31 = v18;
            do
            {
              v32 = *(v30 + v75);
              if (v32 >= 0)
              {
                v33 = 0;
              }

              else
              {
                v33 = v66;
              }

              *(v19 + k + (v33 + v32) * v22) = *(v31 + v68);
              v31 += v21;
              v30 += v20;
              --v29;
            }

            while (v29);
          }

          v34 = v77 - v76;
          v35 = (v77 - v76) >> 2;
          if (v35)
          {
            v36 = v80;
            v37 = ((v34 << 30) - 0x100000000) >> 32;
            v38 = v80 + 4 * v37;
            v39 = *v38;
            v40 = v76 + 4 * v37;
            v41 = v78;
            v42 = v75;
            if (v35 >= 2 && v39 == *v40 - 1)
            {
              v45 = (v34 >> 2) & 0x7FFFFFFF;
              v44 = v45 - 1;
              v46 = 4 * v45;
              v47 = v76 - 8;
              do
              {
                v48 = v44;
                *v38 = 0;
                v42 -= v41[v37] * (*v40 - 1);
                v75 = v42;
                --v44;
                v38 = &v36[v46 - 8];
                v39 = *v38;
                v36 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v40 = &v47[v46];
                v49 = *&v47[4 * v45] - 1;
                v47 -= 4;
                v37 = v44;
              }

              while (v39 == v49);
              v38 = &v36[4 * v45 - 4];
            }

            else
            {
              v44 = ((v34 << 30) - 0x100000000) >> 32;
            }

            *v38 = v39 + 1;
            v75 = v41[v44] + v42;
          }

          v50 = v70 - v69;
          v51 = (v70 - v69) >> 2;
          if (v51)
          {
            v52 = __p;
            v53 = ((v50 << 30) - 0x100000000) >> 32;
            v54 = __p + 4 * v53;
            v55 = *v54;
            v56 = v69 + 4 * v53;
            v57 = v71;
            v58 = v68;
            if (v51 >= 2 && v55 == *v56 - 1)
            {
              v61 = (v50 >> 2) & 0x7FFFFFFF;
              v60 = v61 - 1;
              v62 = 4 * v61;
              v63 = v69 - 8;
              do
              {
                v64 = v60;
                *v54 = 0;
                v58 -= v57[v53] * (*v56 - 1);
                v68 = v58;
                --v60;
                v54 = &v52[v62 - 8];
                v55 = *v54;
                v52 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v56 = &v63[v62];
                v65 = *&v63[4 * v61] - 1;
                v63 -= 4;
                v53 = v60;
              }

              while (v55 == v65);
              v54 = &v52[4 * v61 - 4];
            }

            else
            {
              v60 = ((v50 << 30) - 0x100000000) >> 32;
            }

            *v54 = v55 + 1;
            v68 = v57[v60] + v58;
          }
        }
      }

      v19 += i * v66;
    }
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

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }
}

void sub_25A5030B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 112);
  if (v17)
  {
    *(v14 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<unsigned char,signed char,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v85, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v85[8 * a4];
  v10 = v86 - (v9 + 8);
  if (v86 != v9 + 8)
  {
    memmove(&v85[8 * a4], v9 + 8, v86 - (v9 + 8));
  }

  v86 = &v9[v10];
  v11 = *a2;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v82, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v82[4 * a4];
  v13 = v83 - (v12 + 4);
  if (v83 != v12 + 4)
  {
    memmove(&v82[4 * a4], v12 + 4, v83 - (v12 + 4));
  }

  v83 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v75, &v82, &v85, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v85 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v85, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v85[v14];
  v16 = v86 - &v85[v14 + 8];
  if (v86 != &v85[v14 + 8])
  {
    memmove(&v85[v14], &v85[v14 + 8], v86 - (v15 + 8));
  }

  v86 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v68, &v82, &v85, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v66 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v67 = 1;
  }

  else
  {
    v24 = 0;
    v67 = 1;
    do
    {
      v67 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v25 = a4 + 1;
  for (i = 1; v25 < (*(*a2 + 8) - **a2) >> 2; ++v25)
  {
    i *= mlx::core::array::shape(a2, v25);
  }

  if (v67)
  {
    for (j = 0; j != v67; ++j)
    {
      if (i)
      {
        for (k = 0; k != i; ++k)
        {
          if (v23 >= 1)
          {
            v29 = v23;
            v30 = v17;
            v31 = v18;
            do
            {
              v32 = *(v30 + v75);
              if (v32 >= 0)
              {
                v33 = 0;
              }

              else
              {
                v33 = v66;
              }

              *(v19 + k + (v33 + v32) * v22) += *(v31 + v68);
              v31 += v21;
              v30 += v20;
              --v29;
            }

            while (v29);
          }

          v34 = v77 - v76;
          v35 = (v77 - v76) >> 2;
          if (v35)
          {
            v36 = v80;
            v37 = ((v34 << 30) - 0x100000000) >> 32;
            v38 = v80 + 4 * v37;
            v39 = *v38;
            v40 = v76 + 4 * v37;
            v41 = v78;
            v42 = v75;
            if (v35 >= 2 && v39 == *v40 - 1)
            {
              v45 = (v34 >> 2) & 0x7FFFFFFF;
              v44 = v45 - 1;
              v46 = 4 * v45;
              v47 = v76 - 8;
              do
              {
                v48 = v44;
                *v38 = 0;
                v42 -= v41[v37] * (*v40 - 1);
                v75 = v42;
                --v44;
                v38 = &v36[v46 - 8];
                v39 = *v38;
                v36 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v40 = &v47[v46];
                v49 = *&v47[4 * v45] - 1;
                v47 -= 4;
                v37 = v44;
              }

              while (v39 == v49);
              v38 = &v36[4 * v45 - 4];
            }

            else
            {
              v44 = ((v34 << 30) - 0x100000000) >> 32;
            }

            *v38 = v39 + 1;
            v75 = v41[v44] + v42;
          }

          v50 = v70 - v69;
          v51 = (v70 - v69) >> 2;
          if (v51)
          {
            v52 = __p;
            v53 = ((v50 << 30) - 0x100000000) >> 32;
            v54 = __p + 4 * v53;
            v55 = *v54;
            v56 = v69 + 4 * v53;
            v57 = v71;
            v58 = v68;
            if (v51 >= 2 && v55 == *v56 - 1)
            {
              v61 = (v50 >> 2) & 0x7FFFFFFF;
              v60 = v61 - 1;
              v62 = 4 * v61;
              v63 = v69 - 8;
              do
              {
                v64 = v60;
                *v54 = 0;
                v58 -= v57[v53] * (*v56 - 1);
                v68 = v58;
                --v60;
                v54 = &v52[v62 - 8];
                v55 = *v54;
                v52 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v56 = &v63[v62];
                v65 = *&v63[4 * v61] - 1;
                v63 -= 4;
                v53 = v60;
              }

              while (v55 == v65);
              v54 = &v52[4 * v61 - 4];
            }

            else
            {
              v60 = ((v50 << 30) - 0x100000000) >> 32;
            }

            *v54 = v55 + 1;
            v68 = v57[v60] + v58;
          }
        }
      }

      v19 += i * v66;
    }
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

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }
}

void sub_25A503654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 112);
  if (v17)
  {
    *(v14 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<unsigned char,short,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v88 = 0;
  v89 = 0;
  v87 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v87, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v87[8 * a4];
  v10 = v88 - (v9 + 8);
  if (v88 != v9 + 8)
  {
    memmove(&v87[8 * a4], v9 + 8, v88 - (v9 + 8));
  }

  v88 = &v9[v10];
  v11 = *a2;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v84, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v84[4 * a4];
  v13 = v85 - (v12 + 4);
  if (v85 != v12 + 4)
  {
    memmove(&v84[4 * a4], v12 + 4, v85 - (v12 + 4));
  }

  v85 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v84, &v87, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v87 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v87, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v87[v14];
  v16 = v88 - &v87[v14 + 8];
  if (v88 != &v87[v14 + 8])
  {
    memmove(&v87[v14], &v87[v14 + 8], v88 - (v15 + 8));
  }

  v88 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v70, &v84, &v87, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v68 = mlx::core::array::shape(a1, a4);
  v69 = v20;
  if (a4 < 1)
  {
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v25 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v26 = a4 + 1;
  v27 = *(*a2 + 8) - **a2;
  v28 = 1;
  while (v26 < v27 >> 2)
  {
    v28 *= mlx::core::array::shape(a2, v26++);
    v27 = *(*a2 + 8) - **a2;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (v28)
      {
        for (j = 0; j != v28; ++j)
        {
          if (v23 >= 1)
          {
            v31 = v23;
            v32 = v17;
            v33 = v18;
            do
            {
              v34 = *(v32 + 2 * v77);
              if (v34 >= 0)
              {
                v35 = 0;
              }

              else
              {
                v35 = v68;
              }

              *(v19 + j + (v35 + v34) * v22) = *(v33 + v70);
              v33 += v21;
              v32 += 2 * v69;
              --v31;
            }

            while (v31);
          }

          v36 = v79 - v78;
          v37 = (v79 - v78) >> 2;
          if (v37)
          {
            v38 = v82;
            v39 = ((v36 << 30) - 0x100000000) >> 32;
            v40 = v82 + 4 * v39;
            v41 = *v40;
            v42 = v78 + 4 * v39;
            v43 = v80;
            v44 = v77;
            if (v37 >= 2 && v41 == *v42 - 1)
            {
              v47 = (v36 >> 2) & 0x7FFFFFFF;
              v46 = v47 - 1;
              v48 = 4 * v47;
              v49 = v78 - 8;
              do
              {
                v50 = v46;
                *v40 = 0;
                v44 -= v43[v39] * (*v42 - 1);
                v77 = v44;
                --v46;
                v40 = &v38[v48 - 8];
                v41 = *v40;
                v38 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v42 = &v49[v48];
                v51 = *&v49[4 * v47] - 1;
                v49 -= 4;
                v39 = v46;
              }

              while (v41 == v51);
              v40 = &v38[4 * v47 - 4];
            }

            else
            {
              v46 = ((v36 << 30) - 0x100000000) >> 32;
            }

            *v40 = v41 + 1;
            v77 = v43[v46] + v44;
          }

          v52 = v72 - v71;
          v53 = (v72 - v71) >> 2;
          if (v53)
          {
            v54 = __p;
            v55 = ((v52 << 30) - 0x100000000) >> 32;
            v56 = __p + 4 * v55;
            v57 = *v56;
            v58 = v71 + 4 * v55;
            v59 = v73;
            v60 = v70;
            if (v53 >= 2 && v57 == *v58 - 1)
            {
              v63 = (v52 >> 2) & 0x7FFFFFFF;
              v62 = v63 - 1;
              v64 = 4 * v63;
              v65 = v71 - 8;
              do
              {
                v66 = v62;
                *v56 = 0;
                v60 -= v59[v55] * (*v58 - 1);
                v70 = v60;
                --v62;
                v56 = &v54[v64 - 8];
                v57 = *v56;
                v54 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v58 = &v65[v64];
                v67 = *&v65[4 * v63] - 1;
                v65 -= 4;
                v55 = v62;
              }

              while (v57 == v67);
              v56 = &v54[4 * v63 - 4];
            }

            else
            {
              v62 = ((v52 << 30) - 0x100000000) >> 32;
            }

            *v56 = v57 + 1;
            v70 = v59[v62] + v60;
          }
        }
      }

      v19 += v28 * v68;
    }
  }

  if (__p)
  {
    v76 = __p;
    operator delete(__p);
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

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
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

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }
}

void sub_25A503BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 112);
  if (v17)
  {
    *(v14 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<unsigned char,short,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v88 = 0;
  v89 = 0;
  v87 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v87, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v87[8 * a4];
  v10 = v88 - (v9 + 8);
  if (v88 != v9 + 8)
  {
    memmove(&v87[8 * a4], v9 + 8, v88 - (v9 + 8));
  }

  v88 = &v9[v10];
  v11 = *a2;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v84, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v84[4 * a4];
  v13 = v85 - (v12 + 4);
  if (v85 != v12 + 4)
  {
    memmove(&v84[4 * a4], v12 + 4, v85 - (v12 + 4));
  }

  v85 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v84, &v87, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v87 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v87, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v87[v14];
  v16 = v88 - &v87[v14 + 8];
  if (v88 != &v87[v14 + 8])
  {
    memmove(&v87[v14], &v87[v14 + 8], v88 - (v15 + 8));
  }

  v88 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v70, &v84, &v87, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v68 = mlx::core::array::shape(a1, a4);
  v69 = v20;
  if (a4 < 1)
  {
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v25 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v26 = a4 + 1;
  v27 = *(*a2 + 8) - **a2;
  v28 = 1;
  while (v26 < v27 >> 2)
  {
    v28 *= mlx::core::array::shape(a2, v26++);
    v27 = *(*a2 + 8) - **a2;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (v28)
      {
        for (j = 0; j != v28; ++j)
        {
          if (v23 >= 1)
          {
            v31 = v23;
            v32 = v17;
            v33 = v18;
            do
            {
              v34 = *(v32 + 2 * v77);
              if (v34 >= 0)
              {
                v35 = 0;
              }

              else
              {
                v35 = v68;
              }

              *(v19 + j + (v35 + v34) * v22) += *(v33 + v70);
              v33 += v21;
              v32 += 2 * v69;
              --v31;
            }

            while (v31);
          }

          v36 = v79 - v78;
          v37 = (v79 - v78) >> 2;
          if (v37)
          {
            v38 = v82;
            v39 = ((v36 << 30) - 0x100000000) >> 32;
            v40 = v82 + 4 * v39;
            v41 = *v40;
            v42 = v78 + 4 * v39;
            v43 = v80;
            v44 = v77;
            if (v37 >= 2 && v41 == *v42 - 1)
            {
              v47 = (v36 >> 2) & 0x7FFFFFFF;
              v46 = v47 - 1;
              v48 = 4 * v47;
              v49 = v78 - 8;
              do
              {
                v50 = v46;
                *v40 = 0;
                v44 -= v43[v39] * (*v42 - 1);
                v77 = v44;
                --v46;
                v40 = &v38[v48 - 8];
                v41 = *v40;
                v38 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v42 = &v49[v48];
                v51 = *&v49[4 * v47] - 1;
                v49 -= 4;
                v39 = v46;
              }

              while (v41 == v51);
              v40 = &v38[4 * v47 - 4];
            }

            else
            {
              v46 = ((v36 << 30) - 0x100000000) >> 32;
            }

            *v40 = v41 + 1;
            v77 = v43[v46] + v44;
          }

          v52 = v72 - v71;
          v53 = (v72 - v71) >> 2;
          if (v53)
          {
            v54 = __p;
            v55 = ((v52 << 30) - 0x100000000) >> 32;
            v56 = __p + 4 * v55;
            v57 = *v56;
            v58 = v71 + 4 * v55;
            v59 = v73;
            v60 = v70;
            if (v53 >= 2 && v57 == *v58 - 1)
            {
              v63 = (v52 >> 2) & 0x7FFFFFFF;
              v62 = v63 - 1;
              v64 = 4 * v63;
              v65 = v71 - 8;
              do
              {
                v66 = v62;
                *v56 = 0;
                v60 -= v59[v55] * (*v58 - 1);
                v70 = v60;
                --v62;
                v56 = &v54[v64 - 8];
                v57 = *v56;
                v54 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v58 = &v65[v64];
                v67 = *&v65[4 * v63] - 1;
                v65 -= 4;
                v55 = v62;
              }

              while (v57 == v67);
              v56 = &v54[4 * v63 - 4];
            }

            else
            {
              v62 = ((v52 << 30) - 0x100000000) >> 32;
            }

            *v56 = v57 + 1;
            v70 = v59[v62] + v60;
          }
        }
      }

      v19 += v28 * v68;
    }
  }

  if (__p)
  {
    v76 = __p;
    operator delete(__p);
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

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
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

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }
}

void sub_25A504154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 112);
  if (v17)
  {
    *(v14 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<unsigned char,int,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v88 = 0;
  v89 = 0;
  v87 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v87, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v87[8 * a4];
  v10 = v88 - (v9 + 8);
  if (v88 != v9 + 8)
  {
    memmove(&v87[8 * a4], v9 + 8, v88 - (v9 + 8));
  }

  v88 = &v9[v10];
  v11 = *a2;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v84, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v84[4 * a4];
  v13 = v85 - (v12 + 4);
  if (v85 != v12 + 4)
  {
    memmove(&v84[4 * a4], v12 + 4, v85 - (v12 + 4));
  }

  v85 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v84, &v87, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v87 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v87, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v87[v14];
  v16 = v88 - &v87[v14 + 8];
  if (v88 != &v87[v14 + 8])
  {
    memmove(&v87[v14], &v87[v14 + 8], v88 - (v15 + 8));
  }

  v88 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v70, &v84, &v87, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v68 = mlx::core::array::shape(a1, a4);
  v69 = v20;
  if (a4 < 1)
  {
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v25 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v26 = a4 + 1;
  v27 = *(*a2 + 8) - **a2;
  v28 = 1;
  while (v26 < v27 >> 2)
  {
    v28 *= mlx::core::array::shape(a2, v26++);
    v27 = *(*a2 + 8) - **a2;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (v28)
      {
        for (j = 0; j != v28; ++j)
        {
          if (v23 >= 1)
          {
            v31 = v23;
            v32 = v17;
            v33 = v18;
            do
            {
              v34 = *(v32 + 4 * v77);
              if (v34 >= 0)
              {
                v35 = 0;
              }

              else
              {
                v35 = v68;
              }

              *(v19 + j + (v35 + v34) * v22) = *(v33 + v70);
              v33 += v21;
              v32 += 4 * v69;
              --v31;
            }

            while (v31);
          }

          v36 = v79 - v78;
          v37 = (v79 - v78) >> 2;
          if (v37)
          {
            v38 = v82;
            v39 = ((v36 << 30) - 0x100000000) >> 32;
            v40 = v82 + 4 * v39;
            v41 = *v40;
            v42 = v78 + 4 * v39;
            v43 = v80;
            v44 = v77;
            if (v37 >= 2 && v41 == *v42 - 1)
            {
              v47 = (v36 >> 2) & 0x7FFFFFFF;
              v46 = v47 - 1;
              v48 = 4 * v47;
              v49 = v78 - 8;
              do
              {
                v50 = v46;
                *v40 = 0;
                v44 -= v43[v39] * (*v42 - 1);
                v77 = v44;
                --v46;
                v40 = &v38[v48 - 8];
                v41 = *v40;
                v38 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v42 = &v49[v48];
                v51 = *&v49[4 * v47] - 1;
                v49 -= 4;
                v39 = v46;
              }

              while (v41 == v51);
              v40 = &v38[4 * v47 - 4];
            }

            else
            {
              v46 = ((v36 << 30) - 0x100000000) >> 32;
            }

            *v40 = v41 + 1;
            v77 = v43[v46] + v44;
          }

          v52 = v72 - v71;
          v53 = (v72 - v71) >> 2;
          if (v53)
          {
            v54 = __p;
            v55 = ((v52 << 30) - 0x100000000) >> 32;
            v56 = __p + 4 * v55;
            v57 = *v56;
            v58 = v71 + 4 * v55;
            v59 = v73;
            v60 = v70;
            if (v53 >= 2 && v57 == *v58 - 1)
            {
              v63 = (v52 >> 2) & 0x7FFFFFFF;
              v62 = v63 - 1;
              v64 = 4 * v63;
              v65 = v71 - 8;
              do
              {
                v66 = v62;
                *v56 = 0;
                v60 -= v59[v55] * (*v58 - 1);
                v70 = v60;
                --v62;
                v56 = &v54[v64 - 8];
                v57 = *v56;
                v54 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v58 = &v65[v64];
                v67 = *&v65[4 * v63] - 1;
                v65 -= 4;
                v55 = v62;
              }

              while (v57 == v67);
              v56 = &v54[4 * v63 - 4];
            }

            else
            {
              v62 = ((v52 << 30) - 0x100000000) >> 32;
            }

            *v56 = v57 + 1;
            v70 = v59[v62] + v60;
          }
        }
      }

      v19 += v28 * v68;
    }
  }

  if (__p)
  {
    v76 = __p;
    operator delete(__p);
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

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
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

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }
}

void sub_25A5046D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 112);
  if (v17)
  {
    *(v14 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<unsigned char,int,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v88 = 0;
  v89 = 0;
  v87 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v87, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v87[8 * a4];
  v10 = v88 - (v9 + 8);
  if (v88 != v9 + 8)
  {
    memmove(&v87[8 * a4], v9 + 8, v88 - (v9 + 8));
  }

  v88 = &v9[v10];
  v11 = *a2;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v84, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v84[4 * a4];
  v13 = v85 - (v12 + 4);
  if (v85 != v12 + 4)
  {
    memmove(&v84[4 * a4], v12 + 4, v85 - (v12 + 4));
  }

  v85 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v84, &v87, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v87 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v87, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v87[v14];
  v16 = v88 - &v87[v14 + 8];
  if (v88 != &v87[v14 + 8])
  {
    memmove(&v87[v14], &v87[v14 + 8], v88 - (v15 + 8));
  }

  v88 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v70, &v84, &v87, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v68 = mlx::core::array::shape(a1, a4);
  v69 = v20;
  if (a4 < 1)
  {
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v25 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v26 = a4 + 1;
  v27 = *(*a2 + 8) - **a2;
  v28 = 1;
  while (v26 < v27 >> 2)
  {
    v28 *= mlx::core::array::shape(a2, v26++);
    v27 = *(*a2 + 8) - **a2;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (v28)
      {
        for (j = 0; j != v28; ++j)
        {
          if (v23 >= 1)
          {
            v31 = v23;
            v32 = v17;
            v33 = v18;
            do
            {
              v34 = *(v32 + 4 * v77);
              if (v34 >= 0)
              {
                v35 = 0;
              }

              else
              {
                v35 = v68;
              }

              *(v19 + j + (v35 + v34) * v22) += *(v33 + v70);
              v33 += v21;
              v32 += 4 * v69;
              --v31;
            }

            while (v31);
          }

          v36 = v79 - v78;
          v37 = (v79 - v78) >> 2;
          if (v37)
          {
            v38 = v82;
            v39 = ((v36 << 30) - 0x100000000) >> 32;
            v40 = v82 + 4 * v39;
            v41 = *v40;
            v42 = v78 + 4 * v39;
            v43 = v80;
            v44 = v77;
            if (v37 >= 2 && v41 == *v42 - 1)
            {
              v47 = (v36 >> 2) & 0x7FFFFFFF;
              v46 = v47 - 1;
              v48 = 4 * v47;
              v49 = v78 - 8;
              do
              {
                v50 = v46;
                *v40 = 0;
                v44 -= v43[v39] * (*v42 - 1);
                v77 = v44;
                --v46;
                v40 = &v38[v48 - 8];
                v41 = *v40;
                v38 -= 4;
                if (v50 < 2)
                {
                  break;
                }

                v42 = &v49[v48];
                v51 = *&v49[4 * v47] - 1;
                v49 -= 4;
                v39 = v46;
              }

              while (v41 == v51);
              v40 = &v38[4 * v47 - 4];
            }

            else
            {
              v46 = ((v36 << 30) - 0x100000000) >> 32;
            }

            *v40 = v41 + 1;
            v77 = v43[v46] + v44;
          }

          v52 = v72 - v71;
          v53 = (v72 - v71) >> 2;
          if (v53)
          {
            v54 = __p;
            v55 = ((v52 << 30) - 0x100000000) >> 32;
            v56 = __p + 4 * v55;
            v57 = *v56;
            v58 = v71 + 4 * v55;
            v59 = v73;
            v60 = v70;
            if (v53 >= 2 && v57 == *v58 - 1)
            {
              v63 = (v52 >> 2) & 0x7FFFFFFF;
              v62 = v63 - 1;
              v64 = 4 * v63;
              v65 = v71 - 8;
              do
              {
                v66 = v62;
                *v56 = 0;
                v60 -= v59[v55] * (*v58 - 1);
                v70 = v60;
                --v62;
                v56 = &v54[v64 - 8];
                v57 = *v56;
                v54 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v58 = &v65[v64];
                v67 = *&v65[4 * v63] - 1;
                v65 -= 4;
                v55 = v62;
              }

              while (v57 == v67);
              v56 = &v54[4 * v63 - 4];
            }

            else
            {
              v62 = ((v52 << 30) - 0x100000000) >> 32;
            }

            *v56 = v57 + 1;
            v70 = v59[v62] + v60;
          }
        }
      }

      v19 += v28 * v68;
    }
  }

  if (__p)
  {
    v76 = __p;
    operator delete(__p);
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

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
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

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }
}

void sub_25A504C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 112);
  if (v17)
  {
    *(v14 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<unsigned char,long long,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v85, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v85[8 * a4];
  v10 = v86 - (v9 + 8);
  if (v86 != v9 + 8)
  {
    memmove(&v85[8 * a4], v9 + 8, v86 - (v9 + 8));
  }

  v86 = &v9[v10];
  v11 = *a2;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v82, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v82[4 * a4];
  v13 = v83 - (v12 + 4);
  if (v83 != v12 + 4)
  {
    memmove(&v82[4 * a4], v12 + 4, v83 - (v12 + 4));
  }

  v83 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v75, &v82, &v85, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v85 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v85, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v85[v14];
  v16 = v86 - &v85[v14 + 8];
  if (v86 != &v85[v14 + 8])
  {
    memmove(&v85[v14], &v85[v14 + 8], v86 - (v15 + 8));
  }

  v86 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v68, &v82, &v85, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v66 = mlx::core::array::shape(a1, a4);
  v67 = v20;
  if (a4 < 1)
  {
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v25 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v26 = a4 + 1;
  v27 = *(*a2 + 8) - **a2;
  v28 = 1;
  while (v26 < v27 >> 2)
  {
    v28 *= mlx::core::array::shape(a2, v26++);
    v27 = *(*a2 + 8) - **a2;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (v28)
      {
        for (j = 0; j != v28; ++j)
        {
          if (v23 >= 1)
          {
            v31 = v23;
            v32 = v17;
            v33 = v18;
            do
            {
              *(v19 + j + ((v66 & (*(v32 + 8 * v75) >> 63)) + *(v32 + 8 * v75)) * v22) = *(v33 + v68);
              v33 += v21;
              v32 += 8 * v67;
              --v31;
            }

            while (v31);
          }

          v34 = v77 - v76;
          v35 = (v77 - v76) >> 2;
          if (v35)
          {
            v36 = v80;
            v37 = ((v34 << 30) - 0x100000000) >> 32;
            v38 = v80 + 4 * v37;
            v39 = *v38;
            v40 = v76 + 4 * v37;
            v41 = v78;
            v42 = v75;
            if (v35 >= 2 && v39 == *v40 - 1)
            {
              v45 = (v34 >> 2) & 0x7FFFFFFF;
              v44 = v45 - 1;
              v46 = 4 * v45;
              v47 = v76 - 8;
              do
              {
                v48 = v44;
                *v38 = 0;
                v42 -= v41[v37] * (*v40 - 1);
                v75 = v42;
                --v44;
                v38 = &v36[v46 - 8];
                v39 = *v38;
                v36 -= 4;
                if (v48 < 2)
                {
                  break;
                }

                v40 = &v47[v46];
                v49 = *&v47[4 * v45] - 1;
                v47 -= 4;
                v37 = v44;
              }

              while (v39 == v49);
              v38 = &v36[4 * v45 - 4];
            }

            else
            {
              v44 = ((v34 << 30) - 0x100000000) >> 32;
            }

            *v38 = v39 + 1;
            v75 = v41[v44] + v42;
          }

          v50 = v70 - v69;
          v51 = (v70 - v69) >> 2;
          if (v51)
          {
            v52 = __p;
            v53 = ((v50 << 30) - 0x100000000) >> 32;
            v54 = __p + 4 * v53;
            v55 = *v54;
            v56 = v69 + 4 * v53;
            v57 = v71;
            v58 = v68;
            if (v51 >= 2 && v55 == *v56 - 1)
            {
              v61 = (v50 >> 2) & 0x7FFFFFFF;
              v60 = v61 - 1;
              v62 = 4 * v61;
              v63 = v69 - 8;
              do
              {
                v64 = v60;
                *v54 = 0;
                v58 -= v57[v53] * (*v56 - 1);
                v68 = v58;
                --v60;
                v54 = &v52[v62 - 8];
                v55 = *v54;
                v52 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v56 = &v63[v62];
                v65 = *&v63[4 * v61] - 1;
                v63 -= 4;
                v53 = v60;
              }

              while (v55 == v65);
              v54 = &v52[4 * v61 - 4];
            }

            else
            {
              v60 = ((v50 << 30) - 0x100000000) >> 32;
            }

            *v54 = v55 + 1;
            v68 = v57[v60] + v58;
          }
        }
      }

      v19 += v28 * v66;
    }
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

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }
}

void sub_25A5051CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 112);
  if (v17)
  {
    *(v14 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<unsigned char,long long,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v86, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v86[8 * a4];
  v10 = v87 - (v9 + 8);
  if (v87 != v9 + 8)
  {
    memmove(&v86[8 * a4], v9 + 8, v87 - (v9 + 8));
  }

  v87 = &v9[v10];
  v11 = *a2;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v83, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v83[4 * a4];
  v13 = v84 - (v12 + 4);
  if (v84 != v12 + 4)
  {
    memmove(&v83[4 * a4], v12 + 4, v84 - (v12 + 4));
  }

  v84 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v76, &v83, &v86, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v86 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v86, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v86[v14];
  v16 = v87 - &v86[v14 + 8];
  if (v87 != &v86[v14 + 8])
  {
    memmove(&v86[v14], &v86[v14 + 8], v87 - (v15 + 8));
  }

  v87 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v69, &v83, &v86, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v67 = mlx::core::array::shape(a1, a4);
  v68 = v20;
  if (a4 < 1)
  {
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 1;
    do
    {
      v25 *= mlx::core::array::shape(a2, v24++);
    }

    while (a4 != v24);
  }

  v26 = a4 + 1;
  v27 = *(*a2 + 8) - **a2;
  v28 = 1;
  while (v26 < v27 >> 2)
  {
    v28 *= mlx::core::array::shape(a2, v26++);
    v27 = *(*a2 + 8) - **a2;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (v28)
      {
        for (j = 0; j != v28; ++j)
        {
          if (v23 >= 1)
          {
            v31 = v23;
            v32 = v17;
            v33 = v18;
            do
            {
              v34 = ((v67 & (*(v32 + 8 * v76) >> 63)) + *(v32 + 8 * v76)) * v22;
              *(v19 + j + v34) += *(v33 + v69);
              v33 += v21;
              v32 += 8 * v68;
              --v31;
            }

            while (v31);
          }

          v35 = v78 - v77;
          v36 = (v78 - v77) >> 2;
          if (v36)
          {
            v37 = v81;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = v81 + 4 * v38;
            v40 = *v39;
            v41 = v77 + 4 * v38;
            v42 = v79;
            v43 = v76;
            if (v36 >= 2 && v40 == *v41 - 1)
            {
              v46 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v46 - 1;
              v47 = 4 * v46;
              v48 = v77 - 8;
              do
              {
                v49 = v45;
                *v39 = 0;
                v43 -= v42[v38] * (*v41 - 1);
                v76 = v43;
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
            v76 = v42[v45] + v43;
          }

          v51 = v71 - v70;
          v52 = (v71 - v70) >> 2;
          if (v52)
          {
            v53 = __p;
            v54 = ((v51 << 30) - 0x100000000) >> 32;
            v55 = __p + 4 * v54;
            v56 = *v55;
            v57 = v70 + 4 * v54;
            v58 = v72;
            v59 = v69;
            if (v52 >= 2 && v56 == *v57 - 1)
            {
              v62 = (v51 >> 2) & 0x7FFFFFFF;
              v61 = v62 - 1;
              v63 = 4 * v62;
              v64 = v70 - 8;
              do
              {
                v65 = v61;
                *v55 = 0;
                v59 -= v58[v54] * (*v57 - 1);
                v69 = v59;
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
            v69 = v58[v61] + v59;
          }
        }
      }

      v19 += v28 * v67;
    }
  }

  if (__p)
  {
    v75 = __p;
    operator delete(__p);
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

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }
}

void sub_25A50574C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  v17 = *(v14 - 112);
  if (v17)
  {
    *(v14 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void mlx::core::dispatch_scatter_axis_op<unsigned short,unsigned char>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<unsigned short,unsigned char,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<unsigned short,unsigned char,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<unsigned short,unsigned short>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<unsigned short,unsigned short,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<unsigned short,unsigned short,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<unsigned short,unsigned int>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<unsigned short,unsigned int,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<unsigned short,unsigned int,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<unsigned short,unsigned long long>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<unsigned short,unsigned long long,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<unsigned short,unsigned long long,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<unsigned short,signed char>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<unsigned short,signed char,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<unsigned short,signed char,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<unsigned short,short>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<unsigned short,short,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<unsigned short,short,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<unsigned short,int>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<unsigned short,int,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<unsigned short,int,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<unsigned short,long long>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<unsigned short,long long,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<unsigned short,long long,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::scatter_axis<unsigned short,unsigned char,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v94 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v74 = *(*a3 + 152);
  v75 = *(*a2 + 152);
  v76 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v67 = v26 * v21;
    v28 = v84;
    v29 = (v86 - v85) >> 2;
    v30 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v31 = v85 + 4 * v30;
    v32 = v77;
    v33 = (v79 - v78) >> 2;
    v34 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v35 = v78 + 4 * v34;
    v36 = 2 * v18;
    v37 = 4 * (v29 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v70 = v78 - 8;
    v68 = v23;
    do
    {
      v69 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v87;
        v73 = v89;
        v41 = v89 + 4 * v30;
        v42 = v80;
        v72 = __p;
        v43 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + v28);
            v45 = (v74 + 2 * v32);
            v46 = v20;
            do
            {
              *(v76 + 2 * v39 + 2 * v19 * *v44) = *v45;
              v45 = (v45 + v36);
              v44 += v17;
              --v46;
            }

            while (v46);
          }

          if (v29)
          {
            v47 = *v41;
            if (v29 >= 2 && v47 == *v31 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v29 & 0x7FFFFFFF) - 1;
              v51 = v31;
              v52 = v41;
              v53 = v30;
              do
              {
                v54 = v50;
                *v52 = 0;
                v28 -= v40[v53] * (*v51 - 1);
                v84 = v28;
                --v50;
                v52 = &v48[v37 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v37];
                v55 = *&v49[4 * (v29 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v37 - 4];
            }

            else
            {
              v50 = v30;
              v56 = v41;
            }

            *v56 = v47 + 1;
            v28 += v40[v50];
            v84 = v28;
          }

          if (v33)
          {
            v57 = *v43;
            if (v33 >= 2 && v57 == *v35 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v33 & 0x7FFFFFFF) - 1;
              v61 = v35;
              v62 = v43;
              v63 = v34;
              do
              {
                v64 = v60;
                *v62 = 0;
                v32 -= v42[v63] * (*v61 - 1);
                v77 = v32;
                --v60;
                v62 = &v58[v38 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v38];
                v65 = *&v59[4 * (v33 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v38 - 4];
            }

            else
            {
              v60 = v34;
              v66 = v43;
            }

            *v66 = v57 + 1;
            v32 += v42[v60];
            v77 = v32;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v76 += 2 * v67;
      v27 = v69 + 1;
    }

    while (v69 + 1 != v68);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
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

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A506254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<unsigned short,unsigned char,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v94 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v74 = *(*a3 + 152);
  v75 = *(*a2 + 152);
  v76 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v67 = v26 * v21;
    v28 = v84;
    v29 = (v86 - v85) >> 2;
    v30 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v31 = v85 + 4 * v30;
    v32 = v77;
    v33 = (v79 - v78) >> 2;
    v34 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v35 = v78 + 4 * v34;
    v36 = 2 * v18;
    v37 = 4 * (v29 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v70 = v78 - 8;
    v68 = v23;
    do
    {
      v69 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v87;
        v73 = v89;
        v41 = v89 + 4 * v30;
        v42 = v80;
        v72 = __p;
        v43 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + v28);
            v45 = (v74 + 2 * v32);
            v46 = v20;
            do
            {
              *(v76 + 2 * v39 + 2 * v19 * *v44) += *v45;
              v45 = (v45 + v36);
              v44 += v17;
              --v46;
            }

            while (v46);
          }

          if (v29)
          {
            v47 = *v41;
            if (v29 >= 2 && v47 == *v31 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v29 & 0x7FFFFFFF) - 1;
              v51 = v31;
              v52 = v41;
              v53 = v30;
              do
              {
                v54 = v50;
                *v52 = 0;
                v28 -= v40[v53] * (*v51 - 1);
                v84 = v28;
                --v50;
                v52 = &v48[v37 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v37];
                v55 = *&v49[4 * (v29 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v37 - 4];
            }

            else
            {
              v50 = v30;
              v56 = v41;
            }

            *v56 = v47 + 1;
            v28 += v40[v50];
            v84 = v28;
          }

          if (v33)
          {
            v57 = *v43;
            if (v33 >= 2 && v57 == *v35 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v33 & 0x7FFFFFFF) - 1;
              v61 = v35;
              v62 = v43;
              v63 = v34;
              do
              {
                v64 = v60;
                *v62 = 0;
                v32 -= v42[v63] * (*v61 - 1);
                v77 = v32;
                --v60;
                v62 = &v58[v38 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v38];
                v65 = *&v59[4 * (v33 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v38 - 4];
            }

            else
            {
              v60 = v34;
              v66 = v43;
            }

            *v66 = v57 + 1;
            v32 += v42[v60];
            v77 = v32;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v76 += 2 * v67;
      v27 = v69 + 1;
    }

    while (v69 + 1 != v68);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
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

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A506844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<unsigned short,unsigned short,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v96 = 0;
  v97 = 0;
  v95 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v95, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v95[8 * a4];
  v10 = v96 - (v9 + 8);
  if (v96 != v9 + 8)
  {
    memmove(&v95[8 * a4], v9 + 8, v96 - (v9 + 8));
  }

  v96 = &v9[v10];
  v11 = *a2;
  v93 = 0;
  v94 = 0;
  v92 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v92, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v92[4 * a4];
  v13 = v93 - (v12 + 4);
  if (v93 != v12 + 4)
  {
    memmove(&v92[4 * a4], v12 + 4, v93 - (v12 + 4));
  }

  v93 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v85, &v92, &v95, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v95 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v95, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v95[v14];
  v16 = v96 - &v95[v14 + 8];
  if (v96 != &v95[v14 + 8])
  {
    memmove(&v95[v14], &v95[v14 + 8], v96 - (v15 + 8));
  }

  v96 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v78, &v92, &v95, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v75 = *(*a3 + 152);
  v76 = *(*a2 + 152);
  v77 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v68 = v26 * v21;
    v28 = v85;
    v29 = (v87 - v86) >> 2;
    v30 = (((v87 - v86) << 30) - 0x100000000) >> 32;
    v31 = v86 + 4 * v30;
    v32 = v78;
    v33 = (v80 - v79) >> 2;
    v34 = (((v80 - v79) << 30) - 0x100000000) >> 32;
    v35 = v79 + 4 * v34;
    v36 = 2 * v18;
    v37 = 2 * v17;
    v38 = 4 * (v29 & 0x7FFFFFFF);
    v72 = v86 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v71 = v79 - 8;
    v69 = v23;
    do
    {
      v70 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v88;
        v74 = v90;
        v42 = v90 + 4 * v30;
        v43 = v81;
        v73 = __p;
        v44 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v76 + 2 * v28);
            v46 = (v75 + 2 * v32);
            v47 = v20;
            do
            {
              *(v77 + 2 * v40 + 2 * v19 * *v45) = *v46;
              v46 = (v46 + v36);
              v45 = (v45 + v37);
              --v47;
            }

            while (v47);
          }

          if (v29)
          {
            v48 = *v42;
            if (v29 >= 2 && v48 == *v31 - 1)
            {
              v49 = v74;
              v50 = v72;
              v51 = (v29 & 0x7FFFFFFF) - 1;
              v52 = v31;
              v53 = v42;
              v54 = v30;
              do
              {
                v55 = v51;
                *v53 = 0;
                v28 -= v41[v54] * (*v52 - 1);
                v85 = v28;
                --v51;
                v53 = &v49[v38 - 8];
                v48 = *v53;
                v49 -= 4;
                if (v55 < 2)
                {
                  break;
                }

                v52 = &v50[v38];
                v56 = *&v50[4 * (v29 & 0x7FFFFFFF)] - 1;
                v50 -= 4;
                v54 = v51;
              }

              while (v48 == v56);
              v57 = &v49[v38 - 4];
            }

            else
            {
              v51 = v30;
              v57 = v42;
            }

            *v57 = v48 + 1;
            v28 += v41[v51];
            v85 = v28;
          }

          if (v33)
          {
            v58 = *v44;
            if (v33 >= 2 && v58 == *v35 - 1)
            {
              v59 = v73;
              v60 = v71;
              v61 = (v33 & 0x7FFFFFFF) - 1;
              v62 = v35;
              v63 = v44;
              v64 = v34;
              do
              {
                v65 = v61;
                *v63 = 0;
                v32 -= v43[v64] * (*v62 - 1);
                v78 = v32;
                --v61;
                v63 = &v59[v39 - 8];
                v58 = *v63;
                v59 -= 4;
                if (v65 < 2)
                {
                  break;
                }

                v62 = &v60[v39];
                v66 = *&v60[4 * (v33 & 0x7FFFFFFF)] - 1;
                v60 -= 4;
                v64 = v61;
              }

              while (v58 == v66);
              v67 = &v59[v39 - 4];
            }

            else
            {
              v61 = v34;
              v67 = v44;
            }

            *v67 = v58 + 1;
            v32 += v43[v61];
            v78 = v32;
          }

          ++v40;
        }

        while (v40 != v26);
      }

      v77 += 2 * v68;
      v27 = v70 + 1;
    }

    while (v70 + 1 != v69);
  }

  if (__p)
  {
    v84 = __p;
    operator delete(__p);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }
}