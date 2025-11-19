void mlx::core::gather_axis<unsigned long long,unsigned long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v76 = *(*a2 + 152);
  v17 = *(*a1 + 152);
  v70 = *(*a3 + 152);
  v18 = mlx::core::array::strides(a2, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::strides(a3, a4);
  v21 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
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
    v28 = (v86 - v85) >> 2;
    v75 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v75;
    v30 = (v79 - v78) >> 2;
    v31 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v32 = v78 + 4 * v31;
    v68 = v23;
    v33 = 8 * v20;
    v34 = 8 * v18;
    v35 = 4 * (v28 & 0x7FFFFFFF);
    v72 = v85 - 8;
    v36 = 4 * (v30 & 0x7FFFFFFF);
    v71 = v78 - 8;
    do
    {
      v69 = v27;
      if (v26)
      {
        v37 = 0;
        v38 = v87;
        v39 = v89 + 4 * v75;
        v40 = v80;
        v73 = __p;
        v74 = v89;
        v41 = __p + 4 * v31;
        v42 = v70;
        do
        {
          v43 = v21;
          v44 = v76;
          v45 = v42;
          if (v21 >= 1)
          {
            do
            {
              *v45 = *(v17 + 8 * v77 + 8 * *(v44 + 8 * v84) * v19);
              v45 = (v45 + v33);
              v44 += v34;
              --v43;
            }

            while (v43);
          }

          if (v28)
          {
            v46 = *v39;
            v47 = v84;
            if (v28 >= 2 && v46 == *v29 - 1)
            {
              v49 = v74;
              v48 = v75;
              v50 = v72;
              v51 = (v28 & 0x7FFFFFFF) - 1;
              v52 = v29;
              v53 = v39;
              do
              {
                v54 = v51;
                *v53 = 0;
                v47 -= v38[v48] * (*v52 - 1);
                v84 = v47;
                --v51;
                v53 = &v49[v35 - 8];
                v46 = *v53;
                v49 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v52 = &v50[v35];
                v55 = *&v50[4 * (v28 & 0x7FFFFFFF)] - 1;
                v50 -= 4;
                v48 = v51;
              }

              while (v46 == v55);
              v56 = &v49[v35 - 4];
            }

            else
            {
              v51 = v75;
              v56 = v39;
            }

            *v56 = v46 + 1;
            v84 = v38[v51] + v47;
          }

          if (v30)
          {
            v57 = *v41;
            v58 = v77;
            if (v30 >= 2 && v57 == *v32 - 1)
            {
              v59 = v73;
              v60 = v71;
              v61 = (v30 & 0x7FFFFFFF) - 1;
              v62 = v32;
              v63 = v41;
              v64 = v31;
              do
              {
                v65 = v61;
                *v63 = 0;
                v58 -= v40[v64] * (*v62 - 1);
                v77 = v58;
                --v61;
                v63 = &v59[v36 - 8];
                v57 = *v63;
                v59 -= 4;
                if (v65 < 2)
                {
                  break;
                }

                v62 = &v60[v36];
                v66 = *&v60[4 * (v30 & 0x7FFFFFFF)] - 1;
                v60 -= 4;
                v64 = v61;
              }

              while (v57 == v66);
              v67 = &v59[v36 - 4];
            }

            else
            {
              v61 = v31;
              v67 = v41;
            }

            *v67 = v57 + 1;
            v77 = v40[v61] + v58;
          }

          ++v37;
          ++v42;
        }

        while (v37 != v26);
      }

      v27 = v69 + 1;
      v70 += v26 * v21;
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

void sub_25A443508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::gather_axis<half,unsigned long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v74 = *(*a1 + 152);
  v75 = *(*a2 + 152);
  v69 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v84;
    v28 = (v86 - v85) >> 2;
    v76 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v76;
    v30 = v77;
    v31 = (v79 - v78) >> 2;
    v32 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v33 = v78 + 4 * v32;
    v67 = v22;
    v34 = 2 * v19;
    v35 = 8 * v17;
    v36 = 4 * (v28 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v37 = 4 * (v31 & 0x7FFFFFFF);
    v70 = v78 - 8;
    do
    {
      v68 = v26;
      if (v25)
      {
        v38 = 0;
        v39 = v87;
        v40 = v89 + 4 * v76;
        v41 = v80;
        v72 = __p;
        v73 = v89;
        v42 = __p + 4 * v32;
        v43 = v69;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + 8 * v27);
            v45 = v20;
            v46 = v43;
            do
            {
              *v46 = *(v74 + 2 * v30 + 2 * *v44 * v18);
              v46 = (v46 + v34);
              v44 = (v44 + v35);
              --v45;
            }

            while (v45);
          }

          if (v28)
          {
            v47 = *v40;
            if (v28 >= 2 && v47 == *v29 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v28 & 0x7FFFFFFF) - 1;
              v51 = v29;
              v52 = v40;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v27 -= v39[v53] * (*v51 - 1);
                v84 = v27;
                --v50;
                v52 = &v48[v36 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v36];
                v55 = *&v49[4 * (v28 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v36 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v40;
            }

            *v56 = v47 + 1;
            v27 += v39[v50];
            v84 = v27;
          }

          if (v31)
          {
            v57 = *v42;
            if (v31 >= 2 && v57 == *v33 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v31 & 0x7FFFFFFF) - 1;
              v61 = v33;
              v62 = v42;
              v63 = v32;
              do
              {
                v64 = v60;
                *v62 = 0;
                v30 -= v41[v63] * (*v61 - 1);
                v77 = v30;
                --v60;
                v62 = &v58[v37 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v37];
                v65 = *&v59[4 * (v31 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v37 - 4];
            }

            else
            {
              v60 = v32;
              v66 = v42;
            }

            *v66 = v57 + 1;
            v30 += v41[v60];
            v77 = v30;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v25);
      }

      v26 = v68 + 1;
      v69 += v25 * v20;
    }

    while (v68 + 1 != v67);
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

void sub_25A443AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::gather_axis<float,unsigned long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v74 = *(*a1 + 152);
  v75 = *(*a2 + 152);
  v69 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v84;
    v28 = (v86 - v85) >> 2;
    v76 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v76;
    v30 = v77;
    v31 = (v79 - v78) >> 2;
    v32 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v33 = v78 + 4 * v32;
    v67 = v22;
    v34 = 4 * v19;
    v35 = 8 * v17;
    v36 = 4 * (v28 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v37 = 4 * (v31 & 0x7FFFFFFF);
    v70 = v78 - 8;
    do
    {
      v68 = v26;
      if (v25)
      {
        v38 = 0;
        v39 = v87;
        v40 = v89 + 4 * v76;
        v41 = v80;
        v72 = __p;
        v73 = v89;
        v42 = __p + 4 * v32;
        v43 = v69;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + 8 * v27);
            v45 = v20;
            v46 = v43;
            do
            {
              *v46 = *(v74 + 4 * v30 + 4 * *v44 * v18);
              v46 = (v46 + v34);
              v44 = (v44 + v35);
              --v45;
            }

            while (v45);
          }

          if (v28)
          {
            v47 = *v40;
            if (v28 >= 2 && v47 == *v29 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v28 & 0x7FFFFFFF) - 1;
              v51 = v29;
              v52 = v40;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v27 -= v39[v53] * (*v51 - 1);
                v84 = v27;
                --v50;
                v52 = &v48[v36 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v36];
                v55 = *&v49[4 * (v28 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v36 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v40;
            }

            *v56 = v47 + 1;
            v27 += v39[v50];
            v84 = v27;
          }

          if (v31)
          {
            v57 = *v42;
            if (v31 >= 2 && v57 == *v33 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v31 & 0x7FFFFFFF) - 1;
              v61 = v33;
              v62 = v42;
              v63 = v32;
              do
              {
                v64 = v60;
                *v62 = 0;
                v30 -= v41[v63] * (*v61 - 1);
                v77 = v30;
                --v60;
                v62 = &v58[v37 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v37];
                v65 = *&v59[4 * (v31 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v37 - 4];
            }

            else
            {
              v60 = v32;
              v66 = v42;
            }

            *v66 = v57 + 1;
            v30 += v41[v60];
            v77 = v30;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v25);
      }

      v26 = v68 + 1;
      v69 += v25 * v20;
    }

    while (v68 + 1 != v67);
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

void sub_25A4440E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::gather_axis<double,unsigned long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v74 = *(*a1 + 152);
  v75 = *(*a2 + 152);
  v69 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
  v20 = mlx::core::array::shape(a2, a4);
  mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v22 *= mlx::core::array::shape(a2, v21++);
    }

    while (a4 != v21);
  }

  v23 = a4 + 1;
  v24 = *(*a2 + 8) - **a2;
  v25 = 1;
  while (v23 < v24 >> 2)
  {
    v25 *= mlx::core::array::shape(a2, v23++);
    v24 = *(*a2 + 8) - **a2;
  }

  if (v22)
  {
    v26 = 0;
    v27 = v84;
    v28 = (v86 - v85) >> 2;
    v76 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v29 = v85 + 4 * v76;
    v30 = v77;
    v31 = (v79 - v78) >> 2;
    v32 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v33 = v78 + 4 * v32;
    v67 = v22;
    v34 = 8 * v19;
    v35 = 8 * v17;
    v36 = 4 * (v28 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v37 = 4 * (v31 & 0x7FFFFFFF);
    v70 = v78 - 8;
    do
    {
      v68 = v26;
      if (v25)
      {
        v38 = 0;
        v39 = v87;
        v40 = v89 + 4 * v76;
        v41 = v80;
        v72 = __p;
        v73 = v89;
        v42 = __p + 4 * v32;
        v43 = v69;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v75 + 8 * v27);
            v45 = v20;
            v46 = v43;
            do
            {
              *v46 = *(v74 + 8 * v30 + 8 * *v44 * v18);
              v46 = (v46 + v34);
              v44 = (v44 + v35);
              --v45;
            }

            while (v45);
          }

          if (v28)
          {
            v47 = *v40;
            if (v28 >= 2 && v47 == *v29 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v28 & 0x7FFFFFFF) - 1;
              v51 = v29;
              v52 = v40;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v27 -= v39[v53] * (*v51 - 1);
                v84 = v27;
                --v50;
                v52 = &v48[v36 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v36];
                v55 = *&v49[4 * (v28 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v36 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v40;
            }

            *v56 = v47 + 1;
            v27 += v39[v50];
            v84 = v27;
          }

          if (v31)
          {
            v57 = *v42;
            if (v31 >= 2 && v57 == *v33 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v31 & 0x7FFFFFFF) - 1;
              v61 = v33;
              v62 = v42;
              v63 = v32;
              do
              {
                v64 = v60;
                *v62 = 0;
                v30 -= v41[v63] * (*v61 - 1);
                v77 = v30;
                --v60;
                v62 = &v58[v37 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v37];
                v65 = *&v59[4 * (v31 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v37 - 4];
            }

            else
            {
              v60 = v32;
              v66 = v42;
            }

            *v66 = v57 + 1;
            v30 += v41[v60];
            v77 = v30;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v25);
      }

      v26 = v68 + 1;
      v69 += v25 * v20;
    }

    while (v68 + 1 != v67);
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

void sub_25A4446CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::gather_axis<mlx::core::complex64_t,unsigned long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v76, &v83, &v86, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v86 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v86, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v86[v14];
  v16 = v87 - &v86[v14 + 8];
  if (v87 != &v86[v14 + 8])
  {
    memmove(&v86[v14], &v86[v14 + 8], v87 - (v15 + 8));
  }

  v87 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v69, &v83, &v86, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a1 + 152);
  v19 = *(*a3 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a1, a4);
  v22 = mlx::core::array::strides(a3, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v68 = v22;
  mlx::core::array::shape(a1, a4);
  v24 = v20;
  if (a4 < 1)
  {
    v26 = 1;
  }

  else
  {
    v25 = 0;
    v26 = 1;
    do
    {
      v26 *= mlx::core::array::shape(a2, v25++);
    }

    while (a4 != v25);
  }

  v27 = a4 + 1;
  v28 = *(*a2 + 8) - **a2;
  v29 = 1;
  while (v27 < v28 >> 2)
  {
    v29 *= mlx::core::array::shape(a2, v27++);
    v28 = *(*a2 + 8) - **a2;
  }

  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      if (v29)
      {
        v31 = 0;
        v32 = v19;
        do
        {
          v33 = v23;
          v34 = v17;
          v35 = v32;
          if (v23 >= 1)
          {
            do
            {
              *v35 = *(v18 + 8 * v69 + 8 * *(v34 + 8 * v76) * v21);
              v35 += v68;
              v34 += 8 * v24;
              --v33;
            }

            while (v33);
          }

          v36 = v78 - v77;
          v37 = (v78 - v77) >> 2;
          if (v37)
          {
            v38 = v81;
            v39 = ((v36 << 30) - 0x100000000) >> 32;
            v40 = v81 + 4 * v39;
            v41 = *v40;
            v42 = v77 + 4 * v39;
            v43 = v79;
            v44 = v76;
            if (v37 >= 2 && v41 == *v42 - 1)
            {
              v47 = (v36 >> 2) & 0x7FFFFFFF;
              v46 = v47 - 1;
              v48 = 4 * v47;
              v49 = v77 - 8;
              do
              {
                v50 = v46;
                *v40 = 0;
                v44 -= v43[v39] * (*v42 - 1);
                v76 = v44;
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
            v76 = v43[v46] + v44;
          }

          v52 = v71 - v70;
          v53 = (v71 - v70) >> 2;
          if (v53)
          {
            v54 = __p;
            v55 = ((v52 << 30) - 0x100000000) >> 32;
            v56 = __p + 4 * v55;
            v57 = *v56;
            v58 = v70 + 4 * v55;
            v59 = v72;
            v60 = v69;
            if (v53 >= 2 && v57 == *v58 - 1)
            {
              v63 = (v52 >> 2) & 0x7FFFFFFF;
              v62 = v63 - 1;
              v64 = 4 * v63;
              v65 = v70 - 8;
              do
              {
                v66 = v62;
                *v56 = 0;
                v60 -= v59[v55] * (*v58 - 1);
                v69 = v60;
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
            v69 = v59[v62] + v60;
          }

          ++v31;
          ++v32;
        }

        while (v31 != v29);
      }

      v19 += v29 * v23;
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

void sub_25A444C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  v14 = *(v12 - 136);
  if (v14)
  {
    *(v12 - 128) = v14;
    operator delete(v14);
  }

  v15 = *(v12 - 112);
  if (v15)
  {
    *(v12 - 104) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<BOOL,signed char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v86, &v93, &v96, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v96 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v96, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v96[v14];
  v16 = v97 - &v96[v14 + 8];
  if (v97 != &v96[v14 + 8])
  {
    memmove(&v96[v14], &v96[v14 + 8], v97 - (v15 + 8));
  }

  v97 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v79, &v93, &v96, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v76 = *(*a1 + 152);
  v77 = *(*a2 + 152);
  v71 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v29 = v86;
    v30 = (v88 - v87) >> 2;
    v78 = (((v88 - v87) << 30) - 0x100000000) >> 32;
    v31 = v87 + 4 * v78;
    v32 = v79;
    v33 = (v81 - v80) >> 2;
    v34 = (((v81 - v80) << 30) - 0x100000000) >> 32;
    v35 = v80 + 4 * v34;
    v36 = 4 * (v30 & 0x7FFFFFFF);
    v73 = v87 - 8;
    v37 = 4 * (v33 & 0x7FFFFFFF);
    v72 = v80 - 8;
    v69 = v23;
    do
    {
      v70 = v27;
      if (v26)
      {
        v38 = 0;
        v39 = v89;
        v40 = v91 + 4 * v78;
        v41 = v82;
        v74 = __p;
        v75 = v91;
        v42 = __p + 4 * v34;
        v43 = v71;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v77 + v29);
            v45 = v20;
            v46 = v43;
            do
            {
              v47 = *v44;
              if (v47 >= 0)
              {
                v48 = 0;
              }

              else
              {
                v48 = v28;
              }

              *v46 = *(v76 + v32 + (v48 + v47) * v18);
              v46 += v19;
              v44 += v17;
              --v45;
            }

            while (v45);
          }

          if (v30)
          {
            v49 = *v40;
            if (v30 >= 2 && v49 == *v31 - 1)
            {
              v50 = v75;
              v51 = v73;
              v52 = (v30 & 0x7FFFFFFF) - 1;
              v53 = v31;
              v54 = v40;
              v55 = v78;
              do
              {
                v56 = v52;
                *v54 = 0;
                v29 -= v39[v55] * (*v53 - 1);
                v86 = v29;
                --v52;
                v54 = &v50[v36 - 8];
                v49 = *v54;
                v50 -= 4;
                if (v56 < 2)
                {
                  break;
                }

                v53 = &v51[v36];
                v57 = *&v51[4 * (v30 & 0x7FFFFFFF)] - 1;
                v51 -= 4;
                v55 = v52;
              }

              while (v49 == v57);
              v58 = &v50[v36 - 4];
            }

            else
            {
              v52 = v78;
              v58 = v40;
            }

            *v58 = v49 + 1;
            v29 += v39[v52];
            v86 = v29;
          }

          if (v33)
          {
            v59 = *v42;
            if (v33 >= 2 && v59 == *v35 - 1)
            {
              v60 = v74;
              v61 = v72;
              v62 = (v33 & 0x7FFFFFFF) - 1;
              v63 = v35;
              v64 = v42;
              v65 = v34;
              do
              {
                v66 = v62;
                *v64 = 0;
                v32 -= v41[v65] * (*v63 - 1);
                v79 = v32;
                --v62;
                v64 = &v60[v37 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v61[v37];
                v67 = *&v61[4 * (v33 & 0x7FFFFFFF)] - 1;
                v61 -= 4;
                v65 = v62;
              }

              while (v59 == v67);
              v68 = &v60[v37 - 4];
            }

            else
            {
              v62 = v34;
              v68 = v42;
            }

            *v68 = v59 + 1;
            v32 += v41[v62];
            v79 = v32;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v26);
      }

      v71 += v26 * v20;
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

void sub_25A445248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned char,signed char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v84, &v87, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v87 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v87, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v87[v14];
  v16 = v88 - &v87[v14 + 8];
  if (v88 != &v87[v14 + 8])
  {
    memmove(&v87[v14], &v87[v14 + 8], v88 - (v15 + 8));
  }

  v88 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v70, &v84, &v87, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a1 + 152);
  v69 = *(*a3 + 152);
  v19 = mlx::core::array::strides(a2, a4);
  v20 = mlx::core::array::strides(a1, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::shape(a2, a4);
  v67 = mlx::core::array::shape(a1, a4);
  v68 = a2;
  if (a4 < 1)
  {
    v24 = 1;
  }

  else
  {
    v23 = 0;
    v24 = 1;
    do
    {
      v24 *= mlx::core::array::shape(v68, v23++);
    }

    while (a4 != v23);
  }

  v25 = a4 + 1;
  for (i = 1; v25 < ((*v68)[1] - **v68) >> 2; ++v25)
  {
    i *= mlx::core::array::shape(v68, v25);
  }

  if (v24)
  {
    for (j = 0; j != v24; ++j)
    {
      if (i)
      {
        v28 = 0;
        v29 = v69;
        do
        {
          v30 = v22;
          v31 = v17;
          v32 = v29;
          if (v22 >= 1)
          {
            do
            {
              v33 = *(v31 + v77);
              if (v33 >= 0)
              {
                v34 = 0;
              }

              else
              {
                v34 = v67;
              }

              *v32 = *(v18 + v70 + (v34 + v33) * v20);
              v32 += v21;
              v31 += v19;
              --v30;
            }

            while (v30);
          }

          v35 = v79 - v78;
          v36 = (v79 - v78) >> 2;
          if (v36)
          {
            v37 = v82;
            v38 = ((v35 << 30) - 0x100000000) >> 32;
            v39 = v82 + 4 * v38;
            v40 = *v39;
            v41 = v78 + 4 * v38;
            v42 = v80;
            v43 = v77;
            if (v36 >= 2 && v40 == *v41 - 1)
            {
              v46 = (v35 >> 2) & 0x7FFFFFFF;
              v45 = v46 - 1;
              v47 = 4 * v46;
              v48 = v78 - 8;
              do
              {
                v49 = v45;
                *v39 = 0;
                v43 -= v42[v38] * (*v41 - 1);
                v77 = v43;
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
            v77 = v42[v45] + v43;
          }

          v51 = v72 - v71;
          v52 = (v72 - v71) >> 2;
          if (v52)
          {
            v53 = __p;
            v54 = ((v51 << 30) - 0x100000000) >> 32;
            v55 = __p + 4 * v54;
            v56 = *v55;
            v57 = v71 + 4 * v54;
            v58 = v73;
            v59 = v70;
            if (v52 >= 2 && v56 == *v57 - 1)
            {
              v62 = (v51 >> 2) & 0x7FFFFFFF;
              v61 = v62 - 1;
              v63 = 4 * v62;
              v64 = v71 - 8;
              do
              {
                v65 = v61;
                *v55 = 0;
                v59 -= v58[v54] * (*v57 - 1);
                v70 = v59;
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
            v70 = v58[v61] + v59;
          }

          ++v28;
          ++v29;
        }

        while (v28 != i);
      }

      v69 += i * v22;
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

void sub_25A4457E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
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

void mlx::core::gather_axis<unsigned short,signed char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v94, &v97, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v97 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v97, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v97[v14];
  v16 = v98 - &v97[v14 + 8];
  if (v98 != &v97[v14 + 8])
  {
    memmove(&v97[v14], &v97[v14 + 8], v98 - (v15 + 8));
  }

  v98 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v80, &v94, &v97, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v77 = *(*a1 + 152);
  v78 = *(*a2 + 152);
  v72 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v29 = v87;
    v30 = (v89 - v88) >> 2;
    v79 = (((v89 - v88) << 30) - 0x100000000) >> 32;
    v31 = v88 + 4 * v79;
    v32 = v80;
    v33 = (v82 - v81) >> 2;
    v34 = (((v82 - v81) << 30) - 0x100000000) >> 32;
    v35 = v81 + 4 * v34;
    v70 = v23;
    v36 = 2 * v19;
    v37 = 4 * (v30 & 0x7FFFFFFF);
    v74 = v88 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v73 = v81 - 8;
    do
    {
      v71 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v90;
        v41 = v92 + 4 * v79;
        v42 = v83;
        v75 = __p;
        v76 = v92;
        v43 = __p + 4 * v34;
        v44 = v72;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v78 + v29);
            v46 = v20;
            v47 = v44;
            do
            {
              v48 = *v45;
              if (v48 >= 0)
              {
                v49 = 0;
              }

              else
              {
                v49 = v28;
              }

              *v47 = *(v77 + 2 * v32 + 2 * (v49 + v48) * v18);
              v47 = (v47 + v36);
              v45 += v17;
              --v46;
            }

            while (v46);
          }

          if (v30)
          {
            v50 = *v41;
            if (v30 >= 2 && v50 == *v31 - 1)
            {
              v51 = v76;
              v52 = v74;
              v53 = (v30 & 0x7FFFFFFF) - 1;
              v54 = v31;
              v55 = v41;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v29 -= v40[v56] * (*v54 - 1);
                v87 = v29;
                --v53;
                v55 = &v51[v37 - 8];
                v50 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v37];
                v58 = *&v52[4 * (v30 & 0x7FFFFFFF)] - 1;
                v52 -= 4;
                v56 = v53;
              }

              while (v50 == v58);
              v59 = &v51[v37 - 4];
            }

            else
            {
              v53 = v79;
              v59 = v41;
            }

            *v59 = v50 + 1;
            v29 += v40[v53];
            v87 = v29;
          }

          if (v33)
          {
            v60 = *v43;
            if (v33 >= 2 && v60 == *v35 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v33 & 0x7FFFFFFF) - 1;
              v64 = v35;
              v65 = v43;
              v66 = v34;
              do
              {
                v67 = v63;
                *v65 = 0;
                v32 -= v42[v66] * (*v64 - 1);
                v80 = v32;
                --v63;
                v65 = &v61[v38 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v38];
                v68 = *&v62[4 * (v33 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v60 == v68);
              v69 = &v61[v38 - 4];
            }

            else
            {
              v63 = v34;
              v69 = v43;
            }

            *v69 = v60 + 1;
            v32 += v42[v63];
            v80 = v32;
          }

          ++v39;
          ++v44;
        }

        while (v39 != v26);
      }

      v27 = v71 + 1;
      v72 += v26 * v20;
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

void sub_25A445DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned int,signed char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v94, &v97, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v97 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v97, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v97[v14];
  v16 = v98 - &v97[v14 + 8];
  if (v98 != &v97[v14 + 8])
  {
    memmove(&v97[v14], &v97[v14 + 8], v98 - (v15 + 8));
  }

  v98 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v80, &v94, &v97, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v77 = *(*a1 + 152);
  v78 = *(*a2 + 152);
  v72 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v29 = v87;
    v30 = (v89 - v88) >> 2;
    v79 = (((v89 - v88) << 30) - 0x100000000) >> 32;
    v31 = v88 + 4 * v79;
    v32 = v80;
    v33 = (v82 - v81) >> 2;
    v34 = (((v82 - v81) << 30) - 0x100000000) >> 32;
    v35 = v81 + 4 * v34;
    v70 = v23;
    v36 = 4 * v19;
    v37 = 4 * (v30 & 0x7FFFFFFF);
    v74 = v88 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v73 = v81 - 8;
    do
    {
      v71 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v90;
        v41 = v92 + 4 * v79;
        v42 = v83;
        v75 = __p;
        v76 = v92;
        v43 = __p + 4 * v34;
        v44 = v72;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v78 + v29);
            v46 = v20;
            v47 = v44;
            do
            {
              v48 = *v45;
              if (v48 >= 0)
              {
                v49 = 0;
              }

              else
              {
                v49 = v28;
              }

              *v47 = *(v77 + 4 * v32 + 4 * (v49 + v48) * v18);
              v47 = (v47 + v36);
              v45 += v17;
              --v46;
            }

            while (v46);
          }

          if (v30)
          {
            v50 = *v41;
            if (v30 >= 2 && v50 == *v31 - 1)
            {
              v51 = v76;
              v52 = v74;
              v53 = (v30 & 0x7FFFFFFF) - 1;
              v54 = v31;
              v55 = v41;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v29 -= v40[v56] * (*v54 - 1);
                v87 = v29;
                --v53;
                v55 = &v51[v37 - 8];
                v50 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v37];
                v58 = *&v52[4 * (v30 & 0x7FFFFFFF)] - 1;
                v52 -= 4;
                v56 = v53;
              }

              while (v50 == v58);
              v59 = &v51[v37 - 4];
            }

            else
            {
              v53 = v79;
              v59 = v41;
            }

            *v59 = v50 + 1;
            v29 += v40[v53];
            v87 = v29;
          }

          if (v33)
          {
            v60 = *v43;
            if (v33 >= 2 && v60 == *v35 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v33 & 0x7FFFFFFF) - 1;
              v64 = v35;
              v65 = v43;
              v66 = v34;
              do
              {
                v67 = v63;
                *v65 = 0;
                v32 -= v42[v66] * (*v64 - 1);
                v80 = v32;
                --v63;
                v65 = &v61[v38 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v38];
                v68 = *&v62[4 * (v33 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v60 == v68);
              v69 = &v61[v38 - 4];
            }

            else
            {
              v63 = v34;
              v69 = v43;
            }

            *v69 = v60 + 1;
            v32 += v42[v63];
            v80 = v32;
          }

          ++v39;
          ++v44;
        }

        while (v39 != v26);
      }

      v27 = v71 + 1;
      v72 += v26 * v20;
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

void sub_25A4463DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned long long,signed char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v94, &v97, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v97 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v97, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v97[v14];
  v16 = v98 - &v97[v14 + 8];
  if (v98 != &v97[v14 + 8])
  {
    memmove(&v97[v14], &v97[v14 + 8], v98 - (v15 + 8));
  }

  v98 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v80, &v94, &v97, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v79 = *(*a2 + 152);
  v17 = *(*a1 + 152);
  v72 = *(*a3 + 152);
  v18 = mlx::core::array::strides(a2, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::strides(a3, a4);
  v21 = mlx::core::array::shape(a2, a4);
  v22 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v24 = 1;
  }

  else
  {
    v23 = 0;
    v24 = 1;
    do
    {
      v24 *= mlx::core::array::shape(a2, v23++);
    }

    while (a4 != v23);
  }

  v25 = a4 + 1;
  v26 = *(*a2 + 8) - **a2;
  v27 = 1;
  while (v25 < v26 >> 2)
  {
    v27 *= mlx::core::array::shape(a2, v25++);
    v26 = *(*a2 + 8) - **a2;
  }

  if (v24)
  {
    v28 = 0;
    v29 = v22;
    v30 = (v89 - v88) >> 2;
    v78 = (((v89 - v88) << 30) - 0x100000000) >> 32;
    v31 = v88 + 4 * v78;
    v32 = (v82 - v81) >> 2;
    v77 = (((v82 - v81) << 30) - 0x100000000) >> 32;
    v33 = v81 + 4 * v77;
    v70 = v24;
    v34 = 8 * v20;
    v35 = 4 * (v30 & 0x7FFFFFFF);
    v74 = v88 - 8;
    v36 = 4 * (v32 & 0x7FFFFFFF);
    v73 = v81 - 8;
    do
    {
      v71 = v28;
      if (v27)
      {
        v37 = 0;
        v38 = v90;
        v76 = v92;
        v39 = v92 + 4 * v78;
        v40 = v83;
        v75 = __p;
        v41 = __p + 4 * v77;
        v42 = v72;
        do
        {
          v43 = v21;
          v44 = v79;
          v45 = v42;
          if (v21 >= 1)
          {
            do
            {
              v46 = *(v44 + v87);
              if (v46 >= 0)
              {
                v47 = 0;
              }

              else
              {
                v47 = v29;
              }

              *v45 = *(v17 + 8 * v80 + 8 * (v47 + v46) * v19);
              v45 = (v45 + v34);
              v44 += v18;
              --v43;
            }

            while (v43);
          }

          if (v30)
          {
            v48 = *v39;
            v49 = v87;
            if (v30 >= 2 && v48 == *v31 - 1)
            {
              v50 = v76;
              v51 = v74;
              v52 = (v30 & 0x7FFFFFFF) - 1;
              v53 = v31;
              v54 = v39;
              v55 = v78;
              do
              {
                v56 = v52;
                *v54 = 0;
                v49 -= v38[v55] * (*v53 - 1);
                v87 = v49;
                --v52;
                v54 = &v50[v35 - 8];
                v48 = *v54;
                v50 -= 4;
                if (v56 < 2)
                {
                  break;
                }

                v53 = &v51[v35];
                v57 = *&v51[4 * (v30 & 0x7FFFFFFF)] - 1;
                v51 -= 4;
                v55 = v52;
              }

              while (v48 == v57);
              v58 = &v50[v35 - 4];
            }

            else
            {
              v52 = v78;
              v58 = v39;
            }

            *v58 = v48 + 1;
            v87 = v38[v52] + v49;
          }

          if (v32)
          {
            v59 = *v41;
            v60 = v80;
            if (v32 >= 2 && v59 == *v33 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v32 & 0x7FFFFFFF) - 1;
              v64 = v33;
              v65 = v41;
              v66 = v77;
              do
              {
                v67 = v63;
                *v65 = 0;
                v60 -= v40[v66] * (*v64 - 1);
                v80 = v60;
                --v63;
                v65 = &v61[v36 - 8];
                v59 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v36];
                v68 = *&v62[4 * (v32 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v59 == v68);
              v69 = &v61[v36 - 4];
            }

            else
            {
              v63 = v77;
              v69 = v41;
            }

            *v69 = v59 + 1;
            v80 = v40[v63] + v60;
          }

          ++v37;
          ++v42;
        }

        while (v37 != v27);
      }

      v28 = v71 + 1;
      v72 += v27 * v21;
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

void sub_25A4469E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::gather_axis<half,signed char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v94, &v97, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v97 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v97, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v97[v14];
  v16 = v98 - &v97[v14 + 8];
  if (v98 != &v97[v14 + 8])
  {
    memmove(&v97[v14], &v97[v14 + 8], v98 - (v15 + 8));
  }

  v98 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v80, &v94, &v97, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v77 = *(*a1 + 152);
  v78 = *(*a2 + 152);
  v72 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v29 = v87;
    v30 = (v89 - v88) >> 2;
    v79 = (((v89 - v88) << 30) - 0x100000000) >> 32;
    v31 = v88 + 4 * v79;
    v32 = v80;
    v33 = (v82 - v81) >> 2;
    v34 = (((v82 - v81) << 30) - 0x100000000) >> 32;
    v35 = v81 + 4 * v34;
    v70 = v23;
    v36 = 2 * v19;
    v37 = 4 * (v30 & 0x7FFFFFFF);
    v74 = v88 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v73 = v81 - 8;
    do
    {
      v71 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v90;
        v41 = v92 + 4 * v79;
        v42 = v83;
        v75 = __p;
        v76 = v92;
        v43 = __p + 4 * v34;
        v44 = v72;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v78 + v29);
            v46 = v20;
            v47 = v44;
            do
            {
              v48 = *v45;
              if (v48 >= 0)
              {
                v49 = 0;
              }

              else
              {
                v49 = v28;
              }

              *v47 = *(v77 + 2 * v32 + 2 * (v49 + v48) * v18);
              v47 = (v47 + v36);
              v45 += v17;
              --v46;
            }

            while (v46);
          }

          if (v30)
          {
            v50 = *v41;
            if (v30 >= 2 && v50 == *v31 - 1)
            {
              v51 = v76;
              v52 = v74;
              v53 = (v30 & 0x7FFFFFFF) - 1;
              v54 = v31;
              v55 = v41;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v29 -= v40[v56] * (*v54 - 1);
                v87 = v29;
                --v53;
                v55 = &v51[v37 - 8];
                v50 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v37];
                v58 = *&v52[4 * (v30 & 0x7FFFFFFF)] - 1;
                v52 -= 4;
                v56 = v53;
              }

              while (v50 == v58);
              v59 = &v51[v37 - 4];
            }

            else
            {
              v53 = v79;
              v59 = v41;
            }

            *v59 = v50 + 1;
            v29 += v40[v53];
            v87 = v29;
          }

          if (v33)
          {
            v60 = *v43;
            if (v33 >= 2 && v60 == *v35 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v33 & 0x7FFFFFFF) - 1;
              v64 = v35;
              v65 = v43;
              v66 = v34;
              do
              {
                v67 = v63;
                *v65 = 0;
                v32 -= v42[v66] * (*v64 - 1);
                v80 = v32;
                --v63;
                v65 = &v61[v38 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v38];
                v68 = *&v62[4 * (v33 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v60 == v68);
              v69 = &v61[v38 - 4];
            }

            else
            {
              v63 = v34;
              v69 = v43;
            }

            *v69 = v60 + 1;
            v32 += v42[v63];
            v80 = v32;
          }

          ++v39;
          ++v44;
        }

        while (v39 != v26);
      }

      v27 = v71 + 1;
      v72 += v26 * v20;
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

void sub_25A446FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<float,signed char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v94, &v97, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v97 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v97, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v97[v14];
  v16 = v98 - &v97[v14 + 8];
  if (v98 != &v97[v14 + 8])
  {
    memmove(&v97[v14], &v97[v14 + 8], v98 - (v15 + 8));
  }

  v98 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v80, &v94, &v97, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v77 = *(*a1 + 152);
  v78 = *(*a2 + 152);
  v72 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v29 = v87;
    v30 = (v89 - v88) >> 2;
    v79 = (((v89 - v88) << 30) - 0x100000000) >> 32;
    v31 = v88 + 4 * v79;
    v32 = v80;
    v33 = (v82 - v81) >> 2;
    v34 = (((v82 - v81) << 30) - 0x100000000) >> 32;
    v35 = v81 + 4 * v34;
    v70 = v23;
    v36 = 4 * v19;
    v37 = 4 * (v30 & 0x7FFFFFFF);
    v74 = v88 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v73 = v81 - 8;
    do
    {
      v71 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v90;
        v41 = v92 + 4 * v79;
        v42 = v83;
        v75 = __p;
        v76 = v92;
        v43 = __p + 4 * v34;
        v44 = v72;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v78 + v29);
            v46 = v20;
            v47 = v44;
            do
            {
              v48 = *v45;
              if (v48 >= 0)
              {
                v49 = 0;
              }

              else
              {
                v49 = v28;
              }

              *v47 = *(v77 + 4 * v32 + 4 * (v49 + v48) * v18);
              v47 = (v47 + v36);
              v45 += v17;
              --v46;
            }

            while (v46);
          }

          if (v30)
          {
            v50 = *v41;
            if (v30 >= 2 && v50 == *v31 - 1)
            {
              v51 = v76;
              v52 = v74;
              v53 = (v30 & 0x7FFFFFFF) - 1;
              v54 = v31;
              v55 = v41;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v29 -= v40[v56] * (*v54 - 1);
                v87 = v29;
                --v53;
                v55 = &v51[v37 - 8];
                v50 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v37];
                v58 = *&v52[4 * (v30 & 0x7FFFFFFF)] - 1;
                v52 -= 4;
                v56 = v53;
              }

              while (v50 == v58);
              v59 = &v51[v37 - 4];
            }

            else
            {
              v53 = v79;
              v59 = v41;
            }

            *v59 = v50 + 1;
            v29 += v40[v53];
            v87 = v29;
          }

          if (v33)
          {
            v60 = *v43;
            if (v33 >= 2 && v60 == *v35 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v33 & 0x7FFFFFFF) - 1;
              v64 = v35;
              v65 = v43;
              v66 = v34;
              do
              {
                v67 = v63;
                *v65 = 0;
                v32 -= v42[v66] * (*v64 - 1);
                v80 = v32;
                --v63;
                v65 = &v61[v38 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v38];
                v68 = *&v62[4 * (v33 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v60 == v68);
              v69 = &v61[v38 - 4];
            }

            else
            {
              v63 = v34;
              v69 = v43;
            }

            *v69 = v60 + 1;
            v32 += v42[v63];
            v80 = v32;
          }

          ++v39;
          ++v44;
        }

        while (v39 != v26);
      }

      v27 = v71 + 1;
      v72 += v26 * v20;
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

void sub_25A4475DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<double,signed char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v94, &v97, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v97 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v97, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v97[v14];
  v16 = v98 - &v97[v14 + 8];
  if (v98 != &v97[v14 + 8])
  {
    memmove(&v97[v14], &v97[v14 + 8], v98 - (v15 + 8));
  }

  v98 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v80, &v94, &v97, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v77 = *(*a1 + 152);
  v78 = *(*a2 + 152);
  v72 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v29 = v87;
    v30 = (v89 - v88) >> 2;
    v79 = (((v89 - v88) << 30) - 0x100000000) >> 32;
    v31 = v88 + 4 * v79;
    v32 = v80;
    v33 = (v82 - v81) >> 2;
    v34 = (((v82 - v81) << 30) - 0x100000000) >> 32;
    v35 = v81 + 4 * v34;
    v70 = v23;
    v36 = 8 * v19;
    v37 = 4 * (v30 & 0x7FFFFFFF);
    v74 = v88 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v73 = v81 - 8;
    do
    {
      v71 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v90;
        v41 = v92 + 4 * v79;
        v42 = v83;
        v75 = __p;
        v76 = v92;
        v43 = __p + 4 * v34;
        v44 = v72;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v78 + v29);
            v46 = v20;
            v47 = v44;
            do
            {
              v48 = *v45;
              if (v48 >= 0)
              {
                v49 = 0;
              }

              else
              {
                v49 = v28;
              }

              *v47 = *(v77 + 8 * v32 + 8 * (v49 + v48) * v18);
              v47 = (v47 + v36);
              v45 += v17;
              --v46;
            }

            while (v46);
          }

          if (v30)
          {
            v50 = *v41;
            if (v30 >= 2 && v50 == *v31 - 1)
            {
              v51 = v76;
              v52 = v74;
              v53 = (v30 & 0x7FFFFFFF) - 1;
              v54 = v31;
              v55 = v41;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v29 -= v40[v56] * (*v54 - 1);
                v87 = v29;
                --v53;
                v55 = &v51[v37 - 8];
                v50 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v37];
                v58 = *&v52[4 * (v30 & 0x7FFFFFFF)] - 1;
                v52 -= 4;
                v56 = v53;
              }

              while (v50 == v58);
              v59 = &v51[v37 - 4];
            }

            else
            {
              v53 = v79;
              v59 = v41;
            }

            *v59 = v50 + 1;
            v29 += v40[v53];
            v87 = v29;
          }

          if (v33)
          {
            v60 = *v43;
            if (v33 >= 2 && v60 == *v35 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v33 & 0x7FFFFFFF) - 1;
              v64 = v35;
              v65 = v43;
              v66 = v34;
              do
              {
                v67 = v63;
                *v65 = 0;
                v32 -= v42[v66] * (*v64 - 1);
                v80 = v32;
                --v63;
                v65 = &v61[v38 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v38];
                v68 = *&v62[4 * (v33 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v60 == v68);
              v69 = &v61[v38 - 4];
            }

            else
            {
              v63 = v34;
              v69 = v43;
            }

            *v69 = v60 + 1;
            v32 += v42[v63];
            v80 = v32;
          }

          ++v39;
          ++v44;
        }

        while (v39 != v26);
      }

      v27 = v71 + 1;
      v72 += v26 * v20;
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

void sub_25A447BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<mlx::core::complex64_t,signed char>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v88, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v88[8 * a4];
  v10 = v89 - (v9 + 8);
  if (v89 != v9 + 8)
  {
    memmove(&v88[8 * a4], v9 + 8, v89 - (v9 + 8));
  }

  v89 = &v9[v10];
  v11 = *a2;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v85, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v85[4 * a4];
  v13 = v86 - (v12 + 4);
  if (v86 != v12 + 4)
  {
    memmove(&v85[4 * a4], v12 + 4, v86 - (v12 + 4));
  }

  v86 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v78, &v85, &v88, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v88 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v88, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v88[v14];
  v16 = v89 - &v88[v14 + 8];
  if (v89 != &v88[v14 + 8])
  {
    memmove(&v88[v14], &v88[v14 + 8], v89 - (v15 + 8));
  }

  v89 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v71, &v85, &v88, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a1 + 152);
  v19 = *(*a3 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a1, a4);
  v22 = mlx::core::array::strides(a3, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v69 = mlx::core::array::shape(a1, a4);
  v70 = v22;
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
        v30 = 0;
        v31 = v19;
        do
        {
          v32 = v23;
          v33 = v17;
          v34 = v31;
          if (v23 >= 1)
          {
            do
            {
              v35 = *(v33 + v78);
              if (v35 >= 0)
              {
                v36 = 0;
              }

              else
              {
                v36 = v69;
              }

              *v34 = *(v18 + 8 * v71 + 8 * (v36 + v35) * v21);
              v34 += v70;
              v33 += v20;
              --v32;
            }

            while (v32);
          }

          v37 = v80 - v79;
          v38 = (v80 - v79) >> 2;
          if (v38)
          {
            v39 = v83;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = v83 + 4 * v40;
            v42 = *v41;
            v43 = v79 + 4 * v40;
            v44 = v81;
            v45 = v78;
            if (v38 >= 2 && v42 == *v43 - 1)
            {
              v48 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v48 - 1;
              v49 = 4 * v48;
              v50 = v79 - 8;
              do
              {
                v51 = v47;
                *v41 = 0;
                v45 -= v44[v40] * (*v43 - 1);
                v78 = v45;
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
            v78 = v44[v47] + v45;
          }

          v53 = v73 - v72;
          v54 = (v73 - v72) >> 2;
          if (v54)
          {
            v55 = __p;
            v56 = ((v53 << 30) - 0x100000000) >> 32;
            v57 = __p + 4 * v56;
            v58 = *v57;
            v59 = v72 + 4 * v56;
            v60 = v74;
            v61 = v71;
            if (v54 >= 2 && v58 == *v59 - 1)
            {
              v64 = (v53 >> 2) & 0x7FFFFFFF;
              v63 = v64 - 1;
              v65 = 4 * v64;
              v66 = v72 - 8;
              do
              {
                v67 = v63;
                *v57 = 0;
                v61 -= v60[v56] * (*v59 - 1);
                v71 = v61;
                --v63;
                v57 = &v55[v65 - 8];
                v58 = *v57;
                v55 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v59 = &v66[v65];
                v68 = *&v66[4 * v64] - 1;
                v66 -= 4;
                v56 = v63;
              }

              while (v58 == v68);
              v57 = &v55[4 * v64 - 4];
            }

            else
            {
              v63 = ((v53 << 30) - 0x100000000) >> 32;
            }

            *v57 = v58 + 1;
            v71 = v60[v63] + v61;
          }

          ++v30;
          ++v31;
        }

        while (v30 != v28);
      }

      v19 += v28 * v23;
    }
  }

  if (__p)
  {
    v77 = __p;
    operator delete(__p);
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

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }
}

void sub_25A448164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
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

void mlx::core::gather_axis<BOOL,short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v94, &v97, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v97 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v97, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v97[v14];
  v16 = v98 - &v97[v14 + 8];
  if (v98 != &v97[v14 + 8])
  {
    memmove(&v97[v14], &v97[v14 + 8], v98 - (v15 + 8));
  }

  v98 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v80, &v94, &v97, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v77 = *(*a1 + 152);
  v78 = *(*a2 + 152);
  v72 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v29 = v87;
    v30 = (v89 - v88) >> 2;
    v79 = (((v89 - v88) << 30) - 0x100000000) >> 32;
    v31 = v88 + 4 * v79;
    v32 = v80;
    v33 = (v82 - v81) >> 2;
    v34 = (((v82 - v81) << 30) - 0x100000000) >> 32;
    v35 = v81 + 4 * v34;
    v36 = 2 * v17;
    v37 = 4 * (v30 & 0x7FFFFFFF);
    v74 = v88 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v73 = v81 - 8;
    v70 = v23;
    do
    {
      v71 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v90;
        v41 = v92 + 4 * v79;
        v42 = v83;
        v75 = __p;
        v76 = v92;
        v43 = __p + 4 * v34;
        v44 = v72;
        do
        {
          if (v20 >= 1)
          {
            v45 = v20;
            v46 = v44;
            v47 = (v78 + 2 * v29);
            do
            {
              v48 = *v47;
              if (v48 >= 0)
              {
                v49 = 0;
              }

              else
              {
                v49 = v28;
              }

              *v46 = *(v77 + v32 + (v49 + v48) * v18);
              v46 += v19;
              v47 = (v47 + v36);
              --v45;
            }

            while (v45);
          }

          if (v30)
          {
            v50 = *v41;
            if (v30 >= 2 && v50 == *v31 - 1)
            {
              v51 = v76;
              v52 = v74;
              v53 = (v30 & 0x7FFFFFFF) - 1;
              v54 = v31;
              v55 = v41;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v29 -= v40[v56] * (*v54 - 1);
                v87 = v29;
                --v53;
                v55 = &v51[v37 - 8];
                v50 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v37];
                v58 = *&v52[4 * (v30 & 0x7FFFFFFF)] - 1;
                v52 -= 4;
                v56 = v53;
              }

              while (v50 == v58);
              v59 = &v51[v37 - 4];
            }

            else
            {
              v53 = v79;
              v59 = v41;
            }

            *v59 = v50 + 1;
            v29 += v40[v53];
            v87 = v29;
          }

          if (v33)
          {
            v60 = *v43;
            if (v33 >= 2 && v60 == *v35 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v33 & 0x7FFFFFFF) - 1;
              v64 = v35;
              v65 = v43;
              v66 = v34;
              do
              {
                v67 = v63;
                *v65 = 0;
                v32 -= v42[v66] * (*v64 - 1);
                v80 = v32;
                --v63;
                v65 = &v61[v38 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v38];
                v68 = *&v62[4 * (v33 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v60 == v68);
              v69 = &v61[v38 - 4];
            }

            else
            {
              v63 = v34;
              v69 = v43;
            }

            *v69 = v60 + 1;
            v32 += v42[v63];
            v80 = v32;
          }

          ++v39;
          ++v44;
        }

        while (v39 != v26);
      }

      v72 += v26 * v20;
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

void sub_25A448760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned char,short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v88, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v88[8 * a4];
  v10 = v89 - (v9 + 8);
  if (v89 != v9 + 8)
  {
    memmove(&v88[8 * a4], v9 + 8, v89 - (v9 + 8));
  }

  v89 = &v9[v10];
  v11 = *a2;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v85, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v85[4 * a4];
  v13 = v86 - (v12 + 4);
  if (v86 != v12 + 4)
  {
    memmove(&v85[4 * a4], v12 + 4, v86 - (v12 + 4));
  }

  v86 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v78, &v85, &v88, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v88 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v88, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v88[v14];
  v16 = v89 - &v88[v14 + 8];
  if (v89 != &v88[v14 + 8])
  {
    memmove(&v88[v14], &v88[v14 + 8], v89 - (v15 + 8));
  }

  v89 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v71, &v85, &v88, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a1 + 152);
  v19 = *(*a3 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a1, a4);
  v22 = mlx::core::array::strides(a3, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v69 = mlx::core::array::shape(a1, a4);
  v70 = v20;
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
        v30 = 0;
        v31 = v19;
        do
        {
          v32 = v23;
          v33 = v17;
          v34 = v31;
          if (v23 >= 1)
          {
            do
            {
              v35 = *(v33 + 2 * v78);
              if (v35 >= 0)
              {
                v36 = 0;
              }

              else
              {
                v36 = v69;
              }

              *v34 = *(v18 + v71 + (v36 + v35) * v21);
              v34 += v22;
              v33 += 2 * v70;
              --v32;
            }

            while (v32);
          }

          v37 = v80 - v79;
          v38 = (v80 - v79) >> 2;
          if (v38)
          {
            v39 = v83;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = v83 + 4 * v40;
            v42 = *v41;
            v43 = v79 + 4 * v40;
            v44 = v81;
            v45 = v78;
            if (v38 >= 2 && v42 == *v43 - 1)
            {
              v48 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v48 - 1;
              v49 = 4 * v48;
              v50 = v79 - 8;
              do
              {
                v51 = v47;
                *v41 = 0;
                v45 -= v44[v40] * (*v43 - 1);
                v78 = v45;
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
            v78 = v44[v47] + v45;
          }

          v53 = v73 - v72;
          v54 = (v73 - v72) >> 2;
          if (v54)
          {
            v55 = __p;
            v56 = ((v53 << 30) - 0x100000000) >> 32;
            v57 = __p + 4 * v56;
            v58 = *v57;
            v59 = v72 + 4 * v56;
            v60 = v74;
            v61 = v71;
            if (v54 >= 2 && v58 == *v59 - 1)
            {
              v64 = (v53 >> 2) & 0x7FFFFFFF;
              v63 = v64 - 1;
              v65 = 4 * v64;
              v66 = v72 - 8;
              do
              {
                v67 = v63;
                *v57 = 0;
                v61 -= v60[v56] * (*v59 - 1);
                v71 = v61;
                --v63;
                v57 = &v55[v65 - 8];
                v58 = *v57;
                v55 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v59 = &v66[v65];
                v68 = *&v66[4 * v64] - 1;
                v66 -= 4;
                v56 = v63;
              }

              while (v58 == v68);
              v57 = &v55[4 * v64 - 4];
            }

            else
            {
              v63 = ((v53 << 30) - 0x100000000) >> 32;
            }

            *v57 = v58 + 1;
            v71 = v60[v63] + v61;
          }

          ++v30;
          ++v31;
        }

        while (v30 != v28);
      }

      v19 += v28 * v23;
    }
  }

  if (__p)
  {
    v77 = __p;
    operator delete(__p);
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

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }
}

void sub_25A448CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
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

void mlx::core::gather_axis<unsigned short,short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v98, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v98[8 * a4];
  v10 = v99 - (v9 + 8);
  if (v99 != v9 + 8)
  {
    memmove(&v98[8 * a4], v9 + 8, v99 - (v9 + 8));
  }

  v99 = &v9[v10];
  v11 = *a2;
  v96 = 0;
  v97 = 0;
  v95 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v95, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v95[4 * a4];
  v13 = v96 - (v12 + 4);
  if (v96 != v12 + 4)
  {
    memmove(&v95[4 * a4], v12 + 4, v96 - (v12 + 4));
  }

  v96 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v95, &v98, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v98 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v98, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v98[v14];
  v16 = v99 - &v98[v14 + 8];
  if (v99 != &v98[v14 + 8])
  {
    memmove(&v98[v14], &v98[v14 + 8], v99 - (v15 + 8));
  }

  v99 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v95, &v98, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v78 = *(*a1 + 152);
  v79 = *(*a2 + 152);
  v73 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v29 = v88;
    v30 = (v90 - v89) >> 2;
    v80 = (((v90 - v89) << 30) - 0x100000000) >> 32;
    v31 = v89 + 4 * v80;
    v32 = v81;
    v33 = (v83 - v82) >> 2;
    v34 = (((v83 - v82) << 30) - 0x100000000) >> 32;
    v35 = v82 + 4 * v34;
    v71 = v23;
    v36 = 2 * v19;
    v37 = 2 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v75 = v89 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v74 = v82 - 8;
    do
    {
      v72 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v91;
        v42 = v93 + 4 * v80;
        v43 = v84;
        v76 = __p;
        v77 = v93;
        v44 = __p + 4 * v34;
        v45 = v73;
        do
        {
          if (v20 >= 1)
          {
            v46 = (v79 + 2 * v29);
            v47 = v20;
            v48 = v45;
            do
            {
              v49 = *v46;
              if (v49 >= 0)
              {
                v50 = 0;
              }

              else
              {
                v50 = v28;
              }

              *v48 = *(v78 + 2 * v32 + 2 * (v50 + v49) * v18);
              v48 = (v48 + v36);
              v46 = (v46 + v37);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            v51 = *v42;
            if (v30 >= 2 && v51 == *v31 - 1)
            {
              v52 = v77;
              v53 = v75;
              v54 = (v30 & 0x7FFFFFFF) - 1;
              v55 = v31;
              v56 = v42;
              v57 = v80;
              do
              {
                v58 = v54;
                *v56 = 0;
                v29 -= v41[v57] * (*v55 - 1);
                v88 = v29;
                --v54;
                v56 = &v52[v38 - 8];
                v51 = *v56;
                v52 -= 4;
                if (v58 < 2)
                {
                  break;
                }

                v55 = &v53[v38];
                v59 = *&v53[4 * (v30 & 0x7FFFFFFF)] - 1;
                v53 -= 4;
                v57 = v54;
              }

              while (v51 == v59);
              v60 = &v52[v38 - 4];
            }

            else
            {
              v54 = v80;
              v60 = v42;
            }

            *v60 = v51 + 1;
            v29 += v41[v54];
            v88 = v29;
          }

          if (v33)
          {
            v61 = *v44;
            if (v33 >= 2 && v61 == *v35 - 1)
            {
              v62 = v76;
              v63 = v74;
              v64 = (v33 & 0x7FFFFFFF) - 1;
              v65 = v35;
              v66 = v44;
              v67 = v34;
              do
              {
                v68 = v64;
                *v66 = 0;
                v32 -= v43[v67] * (*v65 - 1);
                v81 = v32;
                --v64;
                v66 = &v62[v39 - 8];
                v61 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v63[v39];
                v69 = *&v63[4 * (v33 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v67 = v64;
              }

              while (v61 == v69);
              v70 = &v62[v39 - 4];
            }

            else
            {
              v64 = v34;
              v70 = v44;
            }

            *v70 = v61 + 1;
            v32 += v43[v64];
            v81 = v32;
          }

          ++v40;
          ++v45;
        }

        while (v40 != v26);
      }

      v27 = v72 + 1;
      v73 += v26 * v20;
    }

    while (v72 + 1 != v71);
  }

  if (__p)
  {
    v87 = __p;
    operator delete(__p);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
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

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }
}

void sub_25A4492E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned int,short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v98, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v98[8 * a4];
  v10 = v99 - (v9 + 8);
  if (v99 != v9 + 8)
  {
    memmove(&v98[8 * a4], v9 + 8, v99 - (v9 + 8));
  }

  v99 = &v9[v10];
  v11 = *a2;
  v96 = 0;
  v97 = 0;
  v95 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v95, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v95[4 * a4];
  v13 = v96 - (v12 + 4);
  if (v96 != v12 + 4)
  {
    memmove(&v95[4 * a4], v12 + 4, v96 - (v12 + 4));
  }

  v96 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v95, &v98, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v98 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v98, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v98[v14];
  v16 = v99 - &v98[v14 + 8];
  if (v99 != &v98[v14 + 8])
  {
    memmove(&v98[v14], &v98[v14 + 8], v99 - (v15 + 8));
  }

  v99 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v95, &v98, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v78 = *(*a1 + 152);
  v79 = *(*a2 + 152);
  v73 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v29 = v88;
    v30 = (v90 - v89) >> 2;
    v80 = (((v90 - v89) << 30) - 0x100000000) >> 32;
    v31 = v89 + 4 * v80;
    v32 = v81;
    v33 = (v83 - v82) >> 2;
    v34 = (((v83 - v82) << 30) - 0x100000000) >> 32;
    v35 = v82 + 4 * v34;
    v71 = v23;
    v36 = 4 * v19;
    v37 = 2 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v75 = v89 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v74 = v82 - 8;
    do
    {
      v72 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v91;
        v42 = v93 + 4 * v80;
        v43 = v84;
        v76 = __p;
        v77 = v93;
        v44 = __p + 4 * v34;
        v45 = v73;
        do
        {
          if (v20 >= 1)
          {
            v46 = (v79 + 2 * v29);
            v47 = v20;
            v48 = v45;
            do
            {
              v49 = *v46;
              if (v49 >= 0)
              {
                v50 = 0;
              }

              else
              {
                v50 = v28;
              }

              *v48 = *(v78 + 4 * v32 + 4 * (v50 + v49) * v18);
              v48 = (v48 + v36);
              v46 = (v46 + v37);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            v51 = *v42;
            if (v30 >= 2 && v51 == *v31 - 1)
            {
              v52 = v77;
              v53 = v75;
              v54 = (v30 & 0x7FFFFFFF) - 1;
              v55 = v31;
              v56 = v42;
              v57 = v80;
              do
              {
                v58 = v54;
                *v56 = 0;
                v29 -= v41[v57] * (*v55 - 1);
                v88 = v29;
                --v54;
                v56 = &v52[v38 - 8];
                v51 = *v56;
                v52 -= 4;
                if (v58 < 2)
                {
                  break;
                }

                v55 = &v53[v38];
                v59 = *&v53[4 * (v30 & 0x7FFFFFFF)] - 1;
                v53 -= 4;
                v57 = v54;
              }

              while (v51 == v59);
              v60 = &v52[v38 - 4];
            }

            else
            {
              v54 = v80;
              v60 = v42;
            }

            *v60 = v51 + 1;
            v29 += v41[v54];
            v88 = v29;
          }

          if (v33)
          {
            v61 = *v44;
            if (v33 >= 2 && v61 == *v35 - 1)
            {
              v62 = v76;
              v63 = v74;
              v64 = (v33 & 0x7FFFFFFF) - 1;
              v65 = v35;
              v66 = v44;
              v67 = v34;
              do
              {
                v68 = v64;
                *v66 = 0;
                v32 -= v43[v67] * (*v65 - 1);
                v81 = v32;
                --v64;
                v66 = &v62[v39 - 8];
                v61 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v63[v39];
                v69 = *&v63[4 * (v33 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v67 = v64;
              }

              while (v61 == v69);
              v70 = &v62[v39 - 4];
            }

            else
            {
              v64 = v34;
              v70 = v44;
            }

            *v70 = v61 + 1;
            v32 += v43[v64];
            v81 = v32;
          }

          ++v40;
          ++v45;
        }

        while (v40 != v26);
      }

      v27 = v72 + 1;
      v73 += v26 * v20;
    }

    while (v72 + 1 != v71);
  }

  if (__p)
  {
    v87 = __p;
    operator delete(__p);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
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

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }
}

void sub_25A4498E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned long long,short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v98, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v98[8 * a4];
  v10 = v99 - (v9 + 8);
  if (v99 != v9 + 8)
  {
    memmove(&v98[8 * a4], v9 + 8, v99 - (v9 + 8));
  }

  v99 = &v9[v10];
  v11 = *a2;
  v96 = 0;
  v97 = 0;
  v95 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v95, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v95[4 * a4];
  v13 = v96 - (v12 + 4);
  if (v96 != v12 + 4)
  {
    memmove(&v95[4 * a4], v12 + 4, v96 - (v12 + 4));
  }

  v96 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v95, &v98, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v98 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v98, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v98[v14];
  v16 = v99 - &v98[v14 + 8];
  if (v99 != &v98[v14 + 8])
  {
    memmove(&v98[v14], &v98[v14 + 8], v99 - (v15 + 8));
  }

  v99 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v95, &v98, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v80 = *(*a2 + 152);
  v17 = *(*a1 + 152);
  v73 = *(*a3 + 152);
  v18 = mlx::core::array::strides(a2, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::strides(a3, a4);
  v21 = mlx::core::array::shape(a2, a4);
  v22 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v24 = 1;
  }

  else
  {
    v23 = 0;
    v24 = 1;
    do
    {
      v24 *= mlx::core::array::shape(a2, v23++);
    }

    while (a4 != v23);
  }

  v25 = a4 + 1;
  v26 = *(*a2 + 8) - **a2;
  v27 = 1;
  while (v25 < v26 >> 2)
  {
    v27 *= mlx::core::array::shape(a2, v25++);
    v26 = *(*a2 + 8) - **a2;
  }

  if (v24)
  {
    v28 = 0;
    v29 = v22;
    v30 = (v90 - v89) >> 2;
    v79 = (((v90 - v89) << 30) - 0x100000000) >> 32;
    v31 = v89 + 4 * v79;
    v32 = (v83 - v82) >> 2;
    v78 = (((v83 - v82) << 30) - 0x100000000) >> 32;
    v33 = v82 + 4 * v78;
    v71 = v24;
    v34 = 8 * v20;
    v35 = 2 * v18;
    v36 = 4 * (v30 & 0x7FFFFFFF);
    v75 = v89 - 8;
    v37 = 4 * (v32 & 0x7FFFFFFF);
    v74 = v82 - 8;
    do
    {
      v72 = v28;
      if (v27)
      {
        v38 = 0;
        v39 = v91;
        v77 = v93;
        v40 = v93 + 4 * v79;
        v41 = v84;
        v76 = __p;
        v42 = __p + 4 * v78;
        v43 = v73;
        do
        {
          v44 = v21;
          v45 = v80;
          v46 = v43;
          if (v21 >= 1)
          {
            do
            {
              v47 = *(v45 + 2 * v88);
              if (v47 >= 0)
              {
                v48 = 0;
              }

              else
              {
                v48 = v29;
              }

              *v46 = *(v17 + 8 * v81 + 8 * (v48 + v47) * v19);
              v46 = (v46 + v34);
              v45 += v35;
              --v44;
            }

            while (v44);
          }

          if (v30)
          {
            v49 = *v40;
            v50 = v88;
            if (v30 >= 2 && v49 == *v31 - 1)
            {
              v51 = v77;
              v52 = v75;
              v53 = (v30 & 0x7FFFFFFF) - 1;
              v54 = v31;
              v55 = v40;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v50 -= v39[v56] * (*v54 - 1);
                v88 = v50;
                --v53;
                v55 = &v51[v36 - 8];
                v49 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v36];
                v58 = *&v52[4 * (v30 & 0x7FFFFFFF)] - 1;
                v52 -= 4;
                v56 = v53;
              }

              while (v49 == v58);
              v59 = &v51[v36 - 4];
            }

            else
            {
              v53 = v79;
              v59 = v40;
            }

            *v59 = v49 + 1;
            v88 = v39[v53] + v50;
          }

          if (v32)
          {
            v60 = *v42;
            v61 = v81;
            if (v32 >= 2 && v60 == *v33 - 1)
            {
              v62 = v76;
              v63 = v74;
              v64 = (v32 & 0x7FFFFFFF) - 1;
              v65 = v33;
              v66 = v42;
              v67 = v78;
              do
              {
                v68 = v64;
                *v66 = 0;
                v61 -= v41[v67] * (*v65 - 1);
                v81 = v61;
                --v64;
                v66 = &v62[v37 - 8];
                v60 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v63[v37];
                v69 = *&v63[4 * (v32 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v67 = v64;
              }

              while (v60 == v69);
              v70 = &v62[v37 - 4];
            }

            else
            {
              v64 = v78;
              v70 = v42;
            }

            *v70 = v60 + 1;
            v81 = v41[v64] + v61;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v27);
      }

      v28 = v72 + 1;
      v73 += v27 * v21;
    }

    while (v72 + 1 != v71);
  }

  if (__p)
  {
    v87 = __p;
    operator delete(__p);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
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

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }
}

void sub_25A449EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::gather_axis<half,short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v98, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v98[8 * a4];
  v10 = v99 - (v9 + 8);
  if (v99 != v9 + 8)
  {
    memmove(&v98[8 * a4], v9 + 8, v99 - (v9 + 8));
  }

  v99 = &v9[v10];
  v11 = *a2;
  v96 = 0;
  v97 = 0;
  v95 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v95, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v95[4 * a4];
  v13 = v96 - (v12 + 4);
  if (v96 != v12 + 4)
  {
    memmove(&v95[4 * a4], v12 + 4, v96 - (v12 + 4));
  }

  v96 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v95, &v98, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v98 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v98, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v98[v14];
  v16 = v99 - &v98[v14 + 8];
  if (v99 != &v98[v14 + 8])
  {
    memmove(&v98[v14], &v98[v14 + 8], v99 - (v15 + 8));
  }

  v99 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v95, &v98, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v78 = *(*a1 + 152);
  v79 = *(*a2 + 152);
  v73 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v29 = v88;
    v30 = (v90 - v89) >> 2;
    v80 = (((v90 - v89) << 30) - 0x100000000) >> 32;
    v31 = v89 + 4 * v80;
    v32 = v81;
    v33 = (v83 - v82) >> 2;
    v34 = (((v83 - v82) << 30) - 0x100000000) >> 32;
    v35 = v82 + 4 * v34;
    v71 = v23;
    v36 = 2 * v19;
    v37 = 2 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v75 = v89 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v74 = v82 - 8;
    do
    {
      v72 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v91;
        v42 = v93 + 4 * v80;
        v43 = v84;
        v76 = __p;
        v77 = v93;
        v44 = __p + 4 * v34;
        v45 = v73;
        do
        {
          if (v20 >= 1)
          {
            v46 = (v79 + 2 * v29);
            v47 = v20;
            v48 = v45;
            do
            {
              v49 = *v46;
              if (v49 >= 0)
              {
                v50 = 0;
              }

              else
              {
                v50 = v28;
              }

              *v48 = *(v78 + 2 * v32 + 2 * (v50 + v49) * v18);
              v48 = (v48 + v36);
              v46 = (v46 + v37);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            v51 = *v42;
            if (v30 >= 2 && v51 == *v31 - 1)
            {
              v52 = v77;
              v53 = v75;
              v54 = (v30 & 0x7FFFFFFF) - 1;
              v55 = v31;
              v56 = v42;
              v57 = v80;
              do
              {
                v58 = v54;
                *v56 = 0;
                v29 -= v41[v57] * (*v55 - 1);
                v88 = v29;
                --v54;
                v56 = &v52[v38 - 8];
                v51 = *v56;
                v52 -= 4;
                if (v58 < 2)
                {
                  break;
                }

                v55 = &v53[v38];
                v59 = *&v53[4 * (v30 & 0x7FFFFFFF)] - 1;
                v53 -= 4;
                v57 = v54;
              }

              while (v51 == v59);
              v60 = &v52[v38 - 4];
            }

            else
            {
              v54 = v80;
              v60 = v42;
            }

            *v60 = v51 + 1;
            v29 += v41[v54];
            v88 = v29;
          }

          if (v33)
          {
            v61 = *v44;
            if (v33 >= 2 && v61 == *v35 - 1)
            {
              v62 = v76;
              v63 = v74;
              v64 = (v33 & 0x7FFFFFFF) - 1;
              v65 = v35;
              v66 = v44;
              v67 = v34;
              do
              {
                v68 = v64;
                *v66 = 0;
                v32 -= v43[v67] * (*v65 - 1);
                v81 = v32;
                --v64;
                v66 = &v62[v39 - 8];
                v61 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v63[v39];
                v69 = *&v63[4 * (v33 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v67 = v64;
              }

              while (v61 == v69);
              v70 = &v62[v39 - 4];
            }

            else
            {
              v64 = v34;
              v70 = v44;
            }

            *v70 = v61 + 1;
            v32 += v43[v64];
            v81 = v32;
          }

          ++v40;
          ++v45;
        }

        while (v40 != v26);
      }

      v27 = v72 + 1;
      v73 += v26 * v20;
    }

    while (v72 + 1 != v71);
  }

  if (__p)
  {
    v87 = __p;
    operator delete(__p);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
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

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }
}

void sub_25A44A4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<float,short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v98, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v98[8 * a4];
  v10 = v99 - (v9 + 8);
  if (v99 != v9 + 8)
  {
    memmove(&v98[8 * a4], v9 + 8, v99 - (v9 + 8));
  }

  v99 = &v9[v10];
  v11 = *a2;
  v96 = 0;
  v97 = 0;
  v95 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v95, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v95[4 * a4];
  v13 = v96 - (v12 + 4);
  if (v96 != v12 + 4)
  {
    memmove(&v95[4 * a4], v12 + 4, v96 - (v12 + 4));
  }

  v96 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v95, &v98, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v98 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v98, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v98[v14];
  v16 = v99 - &v98[v14 + 8];
  if (v99 != &v98[v14 + 8])
  {
    memmove(&v98[v14], &v98[v14 + 8], v99 - (v15 + 8));
  }

  v99 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v95, &v98, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v78 = *(*a1 + 152);
  v79 = *(*a2 + 152);
  v73 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v29 = v88;
    v30 = (v90 - v89) >> 2;
    v80 = (((v90 - v89) << 30) - 0x100000000) >> 32;
    v31 = v89 + 4 * v80;
    v32 = v81;
    v33 = (v83 - v82) >> 2;
    v34 = (((v83 - v82) << 30) - 0x100000000) >> 32;
    v35 = v82 + 4 * v34;
    v71 = v23;
    v36 = 4 * v19;
    v37 = 2 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v75 = v89 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v74 = v82 - 8;
    do
    {
      v72 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v91;
        v42 = v93 + 4 * v80;
        v43 = v84;
        v76 = __p;
        v77 = v93;
        v44 = __p + 4 * v34;
        v45 = v73;
        do
        {
          if (v20 >= 1)
          {
            v46 = (v79 + 2 * v29);
            v47 = v20;
            v48 = v45;
            do
            {
              v49 = *v46;
              if (v49 >= 0)
              {
                v50 = 0;
              }

              else
              {
                v50 = v28;
              }

              *v48 = *(v78 + 4 * v32 + 4 * (v50 + v49) * v18);
              v48 = (v48 + v36);
              v46 = (v46 + v37);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            v51 = *v42;
            if (v30 >= 2 && v51 == *v31 - 1)
            {
              v52 = v77;
              v53 = v75;
              v54 = (v30 & 0x7FFFFFFF) - 1;
              v55 = v31;
              v56 = v42;
              v57 = v80;
              do
              {
                v58 = v54;
                *v56 = 0;
                v29 -= v41[v57] * (*v55 - 1);
                v88 = v29;
                --v54;
                v56 = &v52[v38 - 8];
                v51 = *v56;
                v52 -= 4;
                if (v58 < 2)
                {
                  break;
                }

                v55 = &v53[v38];
                v59 = *&v53[4 * (v30 & 0x7FFFFFFF)] - 1;
                v53 -= 4;
                v57 = v54;
              }

              while (v51 == v59);
              v60 = &v52[v38 - 4];
            }

            else
            {
              v54 = v80;
              v60 = v42;
            }

            *v60 = v51 + 1;
            v29 += v41[v54];
            v88 = v29;
          }

          if (v33)
          {
            v61 = *v44;
            if (v33 >= 2 && v61 == *v35 - 1)
            {
              v62 = v76;
              v63 = v74;
              v64 = (v33 & 0x7FFFFFFF) - 1;
              v65 = v35;
              v66 = v44;
              v67 = v34;
              do
              {
                v68 = v64;
                *v66 = 0;
                v32 -= v43[v67] * (*v65 - 1);
                v81 = v32;
                --v64;
                v66 = &v62[v39 - 8];
                v61 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v63[v39];
                v69 = *&v63[4 * (v33 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v67 = v64;
              }

              while (v61 == v69);
              v70 = &v62[v39 - 4];
            }

            else
            {
              v64 = v34;
              v70 = v44;
            }

            *v70 = v61 + 1;
            v32 += v43[v64];
            v81 = v32;
          }

          ++v40;
          ++v45;
        }

        while (v40 != v26);
      }

      v27 = v72 + 1;
      v73 += v26 * v20;
    }

    while (v72 + 1 != v71);
  }

  if (__p)
  {
    v87 = __p;
    operator delete(__p);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
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

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }
}

void sub_25A44AAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<double,short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v98, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v98[8 * a4];
  v10 = v99 - (v9 + 8);
  if (v99 != v9 + 8)
  {
    memmove(&v98[8 * a4], v9 + 8, v99 - (v9 + 8));
  }

  v99 = &v9[v10];
  v11 = *a2;
  v96 = 0;
  v97 = 0;
  v95 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v95, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v95[4 * a4];
  v13 = v96 - (v12 + 4);
  if (v96 != v12 + 4)
  {
    memmove(&v95[4 * a4], v12 + 4, v96 - (v12 + 4));
  }

  v96 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v95, &v98, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v98 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v98, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v98[v14];
  v16 = v99 - &v98[v14 + 8];
  if (v99 != &v98[v14 + 8])
  {
    memmove(&v98[v14], &v98[v14 + 8], v99 - (v15 + 8));
  }

  v99 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v95, &v98, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v78 = *(*a1 + 152);
  v79 = *(*a2 + 152);
  v73 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v29 = v88;
    v30 = (v90 - v89) >> 2;
    v80 = (((v90 - v89) << 30) - 0x100000000) >> 32;
    v31 = v89 + 4 * v80;
    v32 = v81;
    v33 = (v83 - v82) >> 2;
    v34 = (((v83 - v82) << 30) - 0x100000000) >> 32;
    v35 = v82 + 4 * v34;
    v71 = v23;
    v36 = 8 * v19;
    v37 = 2 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v75 = v89 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v74 = v82 - 8;
    do
    {
      v72 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v91;
        v42 = v93 + 4 * v80;
        v43 = v84;
        v76 = __p;
        v77 = v93;
        v44 = __p + 4 * v34;
        v45 = v73;
        do
        {
          if (v20 >= 1)
          {
            v46 = (v79 + 2 * v29);
            v47 = v20;
            v48 = v45;
            do
            {
              v49 = *v46;
              if (v49 >= 0)
              {
                v50 = 0;
              }

              else
              {
                v50 = v28;
              }

              *v48 = *(v78 + 8 * v32 + 8 * (v50 + v49) * v18);
              v48 = (v48 + v36);
              v46 = (v46 + v37);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            v51 = *v42;
            if (v30 >= 2 && v51 == *v31 - 1)
            {
              v52 = v77;
              v53 = v75;
              v54 = (v30 & 0x7FFFFFFF) - 1;
              v55 = v31;
              v56 = v42;
              v57 = v80;
              do
              {
                v58 = v54;
                *v56 = 0;
                v29 -= v41[v57] * (*v55 - 1);
                v88 = v29;
                --v54;
                v56 = &v52[v38 - 8];
                v51 = *v56;
                v52 -= 4;
                if (v58 < 2)
                {
                  break;
                }

                v55 = &v53[v38];
                v59 = *&v53[4 * (v30 & 0x7FFFFFFF)] - 1;
                v53 -= 4;
                v57 = v54;
              }

              while (v51 == v59);
              v60 = &v52[v38 - 4];
            }

            else
            {
              v54 = v80;
              v60 = v42;
            }

            *v60 = v51 + 1;
            v29 += v41[v54];
            v88 = v29;
          }

          if (v33)
          {
            v61 = *v44;
            if (v33 >= 2 && v61 == *v35 - 1)
            {
              v62 = v76;
              v63 = v74;
              v64 = (v33 & 0x7FFFFFFF) - 1;
              v65 = v35;
              v66 = v44;
              v67 = v34;
              do
              {
                v68 = v64;
                *v66 = 0;
                v32 -= v43[v67] * (*v65 - 1);
                v81 = v32;
                --v64;
                v66 = &v62[v39 - 8];
                v61 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v63[v39];
                v69 = *&v63[4 * (v33 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v67 = v64;
              }

              while (v61 == v69);
              v70 = &v62[v39 - 4];
            }

            else
            {
              v64 = v34;
              v70 = v44;
            }

            *v70 = v61 + 1;
            v32 += v43[v64];
            v81 = v32;
          }

          ++v40;
          ++v45;
        }

        while (v40 != v26);
      }

      v27 = v72 + 1;
      v73 += v26 * v20;
    }

    while (v72 + 1 != v71);
  }

  if (__p)
  {
    v87 = __p;
    operator delete(__p);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
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

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }
}

void sub_25A44B0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<mlx::core::complex64_t,short>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v90, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v90[8 * a4];
  v10 = v91 - (v9 + 8);
  if (v91 != v9 + 8)
  {
    memmove(&v90[8 * a4], v9 + 8, v91 - (v9 + 8));
  }

  v91 = &v9[v10];
  v11 = *a2;
  v88 = 0;
  v89 = 0;
  v87 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v87, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v87[4 * a4];
  v13 = v88 - (v12 + 4);
  if (v88 != v12 + 4)
  {
    memmove(&v87[4 * a4], v12 + 4, v88 - (v12 + 4));
  }

  v88 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v80, &v87, &v90, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v90 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v90, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v90[v14];
  v16 = v91 - &v90[v14 + 8];
  if (v91 != &v90[v14 + 8])
  {
    memmove(&v90[v14], &v90[v14 + 8], v91 - (v15 + 8));
  }

  v91 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v73, &v87, &v90, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a1 + 152);
  v19 = *(*a3 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a1, a4);
  v22 = mlx::core::array::strides(a3, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v24 = mlx::core::array::shape(a1, a4);
  v71 = v22;
  v72 = v20;
  if (a4 < 1)
  {
    v26 = 1;
  }

  else
  {
    v25 = 0;
    v26 = 1;
    do
    {
      v26 *= mlx::core::array::shape(a2, v25++);
    }

    while (a4 != v25);
  }

  v27 = a4 + 1;
  v28 = *(*a2 + 8) - **a2;
  v29 = 1;
  while (v27 < v28 >> 2)
  {
    v29 *= mlx::core::array::shape(a2, v27++);
    v28 = *(*a2 + 8) - **a2;
  }

  if (v26)
  {
    v30 = 0;
    v31 = v24;
    do
    {
      if (v29)
      {
        v32 = 0;
        v33 = v19;
        do
        {
          v34 = v23;
          v35 = v17;
          v36 = v33;
          if (v23 >= 1)
          {
            do
            {
              v37 = *(v35 + 2 * v80);
              if (v37 >= 0)
              {
                v38 = 0;
              }

              else
              {
                v38 = v31;
              }

              *v36 = *(v18 + 8 * v73 + 8 * (v38 + v37) * v21);
              v36 += v71;
              v35 += 2 * v72;
              --v34;
            }

            while (v34);
          }

          v39 = v82 - v81;
          v40 = (v82 - v81) >> 2;
          if (v40)
          {
            v41 = v85;
            v42 = ((v39 << 30) - 0x100000000) >> 32;
            v43 = v85 + 4 * v42;
            v44 = *v43;
            v45 = v81 + 4 * v42;
            v46 = v83;
            v47 = v80;
            if (v40 >= 2 && v44 == *v45 - 1)
            {
              v50 = (v39 >> 2) & 0x7FFFFFFF;
              v49 = v50 - 1;
              v51 = 4 * v50;
              v52 = v81 - 8;
              do
              {
                v53 = v49;
                *v43 = 0;
                v47 -= v46[v42] * (*v45 - 1);
                v80 = v47;
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
            v80 = v46[v49] + v47;
          }

          v55 = v75 - v74;
          v56 = (v75 - v74) >> 2;
          if (v56)
          {
            v57 = __p;
            v58 = ((v55 << 30) - 0x100000000) >> 32;
            v59 = __p + 4 * v58;
            v60 = *v59;
            v61 = v74 + 4 * v58;
            v62 = v76;
            v63 = v73;
            if (v56 >= 2 && v60 == *v61 - 1)
            {
              v66 = (v55 >> 2) & 0x7FFFFFFF;
              v65 = v66 - 1;
              v67 = 4 * v66;
              v68 = v74 - 8;
              do
              {
                v69 = v65;
                *v59 = 0;
                v63 -= v62[v58] * (*v61 - 1);
                v73 = v63;
                --v65;
                v59 = &v57[v67 - 8];
                v60 = *v59;
                v57 -= 4;
                if (v69 < 2)
                {
                  break;
                }

                v61 = &v68[v67];
                v70 = *&v68[4 * v66] - 1;
                v68 -= 4;
                v58 = v65;
              }

              while (v60 == v70);
              v59 = &v57[4 * v66 - 4];
            }

            else
            {
              v65 = ((v55 << 30) - 0x100000000) >> 32;
            }

            *v59 = v60 + 1;
            v73 = v62[v65] + v63;
          }

          ++v32;
          ++v33;
        }

        while (v32 != v29);
      }

      ++v30;
      v19 += v29 * v23;
    }

    while (v30 != v26);
  }

  if (__p)
  {
    v79 = __p;
    operator delete(__p);
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

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
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

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }
}

void sub_25A44B688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
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

void mlx::core::gather_axis<BOOL,int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v94 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v74 = *(*a1 + 152);
  v75 = *(*a2 + 152);
  v69 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v28 = v84;
    v29 = (v86 - v85) >> 2;
    v76 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v30 = v85 + 4 * v76;
    v31 = v77;
    v32 = (v79 - v78) >> 2;
    v33 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v34 = v78 + 4 * v33;
    v35 = 4 * v17;
    v36 = 4 * (v29 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v37 = 4 * (v32 & 0x7FFFFFFF);
    v70 = v78 - 8;
    v67 = v23;
    do
    {
      v68 = v27;
      if (v26)
      {
        v38 = 0;
        v39 = v87;
        v40 = v89 + 4 * v76;
        v41 = v80;
        v72 = __p;
        v73 = v89;
        v42 = __p + 4 * v33;
        v43 = v69;
        do
        {
          if (v20 >= 1)
          {
            v44 = v20;
            v45 = v43;
            v46 = (v75 + 4 * v28);
            do
            {
              *v45 = *(v74 + v31 + (*v46 + (v21 & (*v46 >> 31))) * v18);
              v45 += v19;
              v46 = (v46 + v35);
              --v44;
            }

            while (v44);
          }

          if (v29)
          {
            v47 = *v40;
            if (v29 >= 2 && v47 == *v30 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v29 & 0x7FFFFFFF) - 1;
              v51 = v30;
              v52 = v40;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v28 -= v39[v53] * (*v51 - 1);
                v84 = v28;
                --v50;
                v52 = &v48[v36 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v36];
                v55 = *&v49[4 * (v29 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v36 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v40;
            }

            *v56 = v47 + 1;
            v28 += v39[v50];
            v84 = v28;
          }

          if (v32)
          {
            v57 = *v42;
            if (v32 >= 2 && v57 == *v34 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v32 & 0x7FFFFFFF) - 1;
              v61 = v34;
              v62 = v42;
              v63 = v33;
              do
              {
                v64 = v60;
                *v62 = 0;
                v31 -= v41[v63] * (*v61 - 1);
                v77 = v31;
                --v60;
                v62 = &v58[v37 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v37];
                v65 = *&v59[4 * (v32 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v37 - 4];
            }

            else
            {
              v60 = v33;
              v66 = v42;
            }

            *v66 = v57 + 1;
            v31 += v41[v60];
            v77 = v31;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v26);
      }

      v69 += v26 * v20;
      v27 = v68 + 1;
    }

    while (v68 + 1 != v67);
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

void sub_25A44BC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned char,int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v84, &v87, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v87 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v87, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v87[v14];
  v16 = v88 - &v87[v14 + 8];
  if (v88 != &v87[v14 + 8])
  {
    memmove(&v87[v14], &v87[v14 + 8], v88 - (v15 + 8));
  }

  v88 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v70, &v84, &v87, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a1 + 152);
  v69 = *(*a3 + 152);
  v19 = mlx::core::array::strides(a2, a4);
  v20 = mlx::core::array::strides(a1, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::shape(a2, a4);
  v23 = mlx::core::array::shape(a1, a4);
  v68 = v19;
  v24 = a2;
  if (a4 < 1)
  {
    v26 = 1;
  }

  else
  {
    v25 = 0;
    v26 = 1;
    do
    {
      v26 *= mlx::core::array::shape(v24, v25++);
    }

    while (a4 != v25);
  }

  v27 = a4 + 1;
  v28 = (*v24)[1] - **v24;
  v29 = 1;
  while (v27 < v28 >> 2)
  {
    v29 *= mlx::core::array::shape(v24, v27++);
    v28 = (*v24)[1] - **v24;
  }

  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      if (v29)
      {
        v31 = 0;
        v32 = v69;
        do
        {
          v33 = v22;
          v34 = v17;
          v35 = v32;
          if (v22 >= 1)
          {
            do
            {
              *v35 = *(v18 + v70 + (*(v34 + 4 * v77) + (v23 & (*(v34 + 4 * v77) >> 31))) * v20);
              v35 += v21;
              v34 += 4 * v68;
              --v33;
            }

            while (v33);
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

          ++v31;
          ++v32;
        }

        while (v31 != v29);
      }

      v69 += v29 * v22;
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

void sub_25A44C210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
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

void mlx::core::gather_axis<unsigned short,int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v85, &v92, &v95, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v95 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v95, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v95[v14];
  v16 = v96 - &v95[v14 + 8];
  if (v96 != &v95[v14 + 8])
  {
    memmove(&v95[v14], &v95[v14 + 8], v96 - (v15 + 8));
  }

  v96 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v78, &v92, &v95, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v75 = *(*a1 + 152);
  v76 = *(*a2 + 152);
  v70 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v28 = v85;
    v29 = (v87 - v86) >> 2;
    v77 = (((v87 - v86) << 30) - 0x100000000) >> 32;
    v30 = v86 + 4 * v77;
    v31 = v78;
    v32 = (v80 - v79) >> 2;
    v33 = (((v80 - v79) << 30) - 0x100000000) >> 32;
    v34 = v79 + 4 * v33;
    v68 = v23;
    v35 = 2 * v19;
    v36 = 4 * v17;
    v37 = 4 * (v29 & 0x7FFFFFFF);
    v72 = v86 - 8;
    v38 = 4 * (v32 & 0x7FFFFFFF);
    v71 = v79 - 8;
    do
    {
      v69 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v88;
        v41 = v90 + 4 * v77;
        v42 = v81;
        v73 = __p;
        v74 = v90;
        v43 = __p + 4 * v33;
        v44 = v70;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v76 + 4 * v28);
            v46 = v20;
            v47 = v44;
            do
            {
              *v47 = *(v75 + 2 * v31 + 2 * (*v45 + (v21 & (*v45 >> 31))) * v18);
              v47 = (v47 + v35);
              v45 = (v45 + v36);
              --v46;
            }

            while (v46);
          }

          if (v29)
          {
            v48 = *v41;
            if (v29 >= 2 && v48 == *v30 - 1)
            {
              v49 = v74;
              v50 = v72;
              v51 = (v29 & 0x7FFFFFFF) - 1;
              v52 = v30;
              v53 = v41;
              v54 = v77;
              do
              {
                v55 = v51;
                *v53 = 0;
                v28 -= v40[v54] * (*v52 - 1);
                v85 = v28;
                --v51;
                v53 = &v49[v37 - 8];
                v48 = *v53;
                v49 -= 4;
                if (v55 < 2)
                {
                  break;
                }

                v52 = &v50[v37];
                v56 = *&v50[4 * (v29 & 0x7FFFFFFF)] - 1;
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
            v28 += v40[v51];
            v85 = v28;
          }

          if (v32)
          {
            v58 = *v43;
            if (v32 >= 2 && v58 == *v34 - 1)
            {
              v59 = v73;
              v60 = v71;
              v61 = (v32 & 0x7FFFFFFF) - 1;
              v62 = v34;
              v63 = v43;
              v64 = v33;
              do
              {
                v65 = v61;
                *v63 = 0;
                v31 -= v42[v64] * (*v62 - 1);
                v78 = v31;
                --v61;
                v63 = &v59[v38 - 8];
                v58 = *v63;
                v59 -= 4;
                if (v65 < 2)
                {
                  break;
                }

                v62 = &v60[v38];
                v66 = *&v60[4 * (v32 & 0x7FFFFFFF)] - 1;
                v60 -= 4;
                v64 = v61;
              }

              while (v58 == v66);
              v67 = &v59[v38 - 4];
            }

            else
            {
              v61 = v33;
              v67 = v43;
            }

            *v67 = v58 + 1;
            v31 += v42[v61];
            v78 = v31;
          }

          ++v39;
          ++v44;
        }

        while (v39 != v26);
      }

      v27 = v69 + 1;
      v70 += v26 * v20;
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

void sub_25A44C808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned int,int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v85, &v92, &v95, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v95 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v95, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v95[v14];
  v16 = v96 - &v95[v14 + 8];
  if (v96 != &v95[v14 + 8])
  {
    memmove(&v95[v14], &v95[v14 + 8], v96 - (v15 + 8));
  }

  v96 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v78, &v92, &v95, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v75 = *(*a1 + 152);
  v76 = *(*a2 + 152);
  v70 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v28 = v85;
    v29 = (v87 - v86) >> 2;
    v77 = (((v87 - v86) << 30) - 0x100000000) >> 32;
    v30 = v86 + 4 * v77;
    v31 = v78;
    v32 = (v80 - v79) >> 2;
    v33 = (((v80 - v79) << 30) - 0x100000000) >> 32;
    v34 = v79 + 4 * v33;
    v68 = v23;
    v35 = 4 * v19;
    v36 = 4 * v17;
    v37 = 4 * (v29 & 0x7FFFFFFF);
    v72 = v86 - 8;
    v38 = 4 * (v32 & 0x7FFFFFFF);
    v71 = v79 - 8;
    do
    {
      v69 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v88;
        v41 = v90 + 4 * v77;
        v42 = v81;
        v73 = __p;
        v74 = v90;
        v43 = __p + 4 * v33;
        v44 = v70;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v76 + 4 * v28);
            v46 = v20;
            v47 = v44;
            do
            {
              *v47 = *(v75 + 4 * v31 + 4 * (*v45 + (v21 & (*v45 >> 31))) * v18);
              v47 = (v47 + v35);
              v45 = (v45 + v36);
              --v46;
            }

            while (v46);
          }

          if (v29)
          {
            v48 = *v41;
            if (v29 >= 2 && v48 == *v30 - 1)
            {
              v49 = v74;
              v50 = v72;
              v51 = (v29 & 0x7FFFFFFF) - 1;
              v52 = v30;
              v53 = v41;
              v54 = v77;
              do
              {
                v55 = v51;
                *v53 = 0;
                v28 -= v40[v54] * (*v52 - 1);
                v85 = v28;
                --v51;
                v53 = &v49[v37 - 8];
                v48 = *v53;
                v49 -= 4;
                if (v55 < 2)
                {
                  break;
                }

                v52 = &v50[v37];
                v56 = *&v50[4 * (v29 & 0x7FFFFFFF)] - 1;
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
            v28 += v40[v51];
            v85 = v28;
          }

          if (v32)
          {
            v58 = *v43;
            if (v32 >= 2 && v58 == *v34 - 1)
            {
              v59 = v73;
              v60 = v71;
              v61 = (v32 & 0x7FFFFFFF) - 1;
              v62 = v34;
              v63 = v43;
              v64 = v33;
              do
              {
                v65 = v61;
                *v63 = 0;
                v31 -= v42[v64] * (*v62 - 1);
                v78 = v31;
                --v61;
                v63 = &v59[v38 - 8];
                v58 = *v63;
                v59 -= 4;
                if (v65 < 2)
                {
                  break;
                }

                v62 = &v60[v38];
                v66 = *&v60[4 * (v32 & 0x7FFFFFFF)] - 1;
                v60 -= 4;
                v64 = v61;
              }

              while (v58 == v66);
              v67 = &v59[v38 - 4];
            }

            else
            {
              v61 = v33;
              v67 = v43;
            }

            *v67 = v58 + 1;
            v31 += v42[v61];
            v78 = v31;
          }

          ++v39;
          ++v44;
        }

        while (v39 != v26);
      }

      v27 = v69 + 1;
      v70 += v26 * v20;
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

void sub_25A44CE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<unsigned long long,int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v85, &v92, &v95, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v95 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v95, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v95[v14];
  v16 = v96 - &v95[v14 + 8];
  if (v96 != &v95[v14 + 8])
  {
    memmove(&v95[v14], &v95[v14 + 8], v96 - (v15 + 8));
  }

  v96 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v78, &v92, &v95, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v77 = *(*a2 + 152);
  v17 = *(*a1 + 152);
  v70 = *(*a3 + 152);
  v18 = mlx::core::array::strides(a2, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::strides(a3, a4);
  v21 = mlx::core::array::shape(a2, a4);
  v22 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v24 = 1;
  }

  else
  {
    v23 = 0;
    v24 = 1;
    do
    {
      v24 *= mlx::core::array::shape(a2, v23++);
    }

    while (a4 != v23);
  }

  v25 = a4 + 1;
  v26 = *(*a2 + 8) - **a2;
  v27 = 1;
  while (v25 < v26 >> 2)
  {
    v27 *= mlx::core::array::shape(a2, v25++);
    v26 = *(*a2 + 8) - **a2;
  }

  if (v24)
  {
    v28 = 0;
    v29 = (v87 - v86) >> 2;
    v76 = (((v87 - v86) << 30) - 0x100000000) >> 32;
    v30 = v86 + 4 * v76;
    v31 = (v80 - v79) >> 2;
    v75 = (((v80 - v79) << 30) - 0x100000000) >> 32;
    v32 = v79 + 4 * v75;
    v68 = v24;
    v33 = 8 * v20;
    v34 = 4 * v18;
    v35 = 4 * (v29 & 0x7FFFFFFF);
    v72 = v86 - 8;
    v36 = 4 * (v31 & 0x7FFFFFFF);
    v71 = v79 - 8;
    do
    {
      v69 = v28;
      if (v27)
      {
        v37 = 0;
        v38 = v88;
        v74 = v90;
        v39 = v90 + 4 * v76;
        v40 = v81;
        v73 = __p;
        v41 = __p + 4 * v75;
        v42 = v70;
        do
        {
          v43 = v21;
          v44 = v77;
          v45 = v42;
          if (v21 >= 1)
          {
            do
            {
              *v45 = *(v17 + 8 * v78 + 8 * (*(v44 + 4 * v85) + (v22 & (*(v44 + 4 * v85) >> 31))) * v19);
              v45 = (v45 + v33);
              v44 += v34;
              --v43;
            }

            while (v43);
          }

          if (v29)
          {
            v46 = *v39;
            v47 = v85;
            if (v29 >= 2 && v46 == *v30 - 1)
            {
              v48 = v74;
              v49 = v72;
              v50 = (v29 & 0x7FFFFFFF) - 1;
              v51 = v30;
              v52 = v39;
              v53 = v76;
              do
              {
                v54 = v50;
                *v52 = 0;
                v47 -= v38[v53] * (*v51 - 1);
                v85 = v47;
                --v50;
                v52 = &v48[v35 - 8];
                v46 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v35];
                v55 = *&v49[4 * (v29 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v46 == v55);
              v56 = &v48[v35 - 4];
            }

            else
            {
              v50 = v76;
              v56 = v39;
            }

            *v56 = v46 + 1;
            v85 = v38[v50] + v47;
          }

          if (v31)
          {
            v57 = *v41;
            v58 = v78;
            if (v31 >= 2 && v57 == *v32 - 1)
            {
              v59 = v73;
              v60 = v71;
              v61 = (v31 & 0x7FFFFFFF) - 1;
              v62 = v32;
              v63 = v41;
              v64 = v75;
              do
              {
                v65 = v61;
                *v63 = 0;
                v58 -= v40[v64] * (*v62 - 1);
                v78 = v58;
                --v61;
                v63 = &v59[v36 - 8];
                v57 = *v63;
                v59 -= 4;
                if (v65 < 2)
                {
                  break;
                }

                v62 = &v60[v36];
                v66 = *&v60[4 * (v31 & 0x7FFFFFFF)] - 1;
                v60 -= 4;
                v64 = v61;
              }

              while (v57 == v66);
              v67 = &v59[v36 - 4];
            }

            else
            {
              v61 = v75;
              v67 = v41;
            }

            *v67 = v57 + 1;
            v78 = v40[v61] + v58;
          }

          ++v37;
          ++v42;
        }

        while (v37 != v27);
      }

      v28 = v69 + 1;
      v70 += v27 * v21;
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

void sub_25A44D404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::gather_axis<half,int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v85, &v92, &v95, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v95 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v95, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v95[v14];
  v16 = v96 - &v95[v14 + 8];
  if (v96 != &v95[v14 + 8])
  {
    memmove(&v95[v14], &v95[v14 + 8], v96 - (v15 + 8));
  }

  v96 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v78, &v92, &v95, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v75 = *(*a1 + 152);
  v76 = *(*a2 + 152);
  v70 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v28 = v85;
    v29 = (v87 - v86) >> 2;
    v77 = (((v87 - v86) << 30) - 0x100000000) >> 32;
    v30 = v86 + 4 * v77;
    v31 = v78;
    v32 = (v80 - v79) >> 2;
    v33 = (((v80 - v79) << 30) - 0x100000000) >> 32;
    v34 = v79 + 4 * v33;
    v68 = v23;
    v35 = 2 * v19;
    v36 = 4 * v17;
    v37 = 4 * (v29 & 0x7FFFFFFF);
    v72 = v86 - 8;
    v38 = 4 * (v32 & 0x7FFFFFFF);
    v71 = v79 - 8;
    do
    {
      v69 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v88;
        v41 = v90 + 4 * v77;
        v42 = v81;
        v73 = __p;
        v74 = v90;
        v43 = __p + 4 * v33;
        v44 = v70;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v76 + 4 * v28);
            v46 = v20;
            v47 = v44;
            do
            {
              *v47 = *(v75 + 2 * v31 + 2 * (*v45 + (v21 & (*v45 >> 31))) * v18);
              v47 = (v47 + v35);
              v45 = (v45 + v36);
              --v46;
            }

            while (v46);
          }

          if (v29)
          {
            v48 = *v41;
            if (v29 >= 2 && v48 == *v30 - 1)
            {
              v49 = v74;
              v50 = v72;
              v51 = (v29 & 0x7FFFFFFF) - 1;
              v52 = v30;
              v53 = v41;
              v54 = v77;
              do
              {
                v55 = v51;
                *v53 = 0;
                v28 -= v40[v54] * (*v52 - 1);
                v85 = v28;
                --v51;
                v53 = &v49[v37 - 8];
                v48 = *v53;
                v49 -= 4;
                if (v55 < 2)
                {
                  break;
                }

                v52 = &v50[v37];
                v56 = *&v50[4 * (v29 & 0x7FFFFFFF)] - 1;
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
            v28 += v40[v51];
            v85 = v28;
          }

          if (v32)
          {
            v58 = *v43;
            if (v32 >= 2 && v58 == *v34 - 1)
            {
              v59 = v73;
              v60 = v71;
              v61 = (v32 & 0x7FFFFFFF) - 1;
              v62 = v34;
              v63 = v43;
              v64 = v33;
              do
              {
                v65 = v61;
                *v63 = 0;
                v31 -= v42[v64] * (*v62 - 1);
                v78 = v31;
                --v61;
                v63 = &v59[v38 - 8];
                v58 = *v63;
                v59 -= 4;
                if (v65 < 2)
                {
                  break;
                }

                v62 = &v60[v38];
                v66 = *&v60[4 * (v32 & 0x7FFFFFFF)] - 1;
                v60 -= 4;
                v64 = v61;
              }

              while (v58 == v66);
              v67 = &v59[v38 - 4];
            }

            else
            {
              v61 = v33;
              v67 = v43;
            }

            *v67 = v58 + 1;
            v31 += v42[v61];
            v78 = v31;
          }

          ++v39;
          ++v44;
        }

        while (v39 != v26);
      }

      v27 = v69 + 1;
      v70 += v26 * v20;
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

void sub_25A44D9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<float,int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v85, &v92, &v95, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v95 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v95, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v95[v14];
  v16 = v96 - &v95[v14 + 8];
  if (v96 != &v95[v14 + 8])
  {
    memmove(&v95[v14], &v95[v14 + 8], v96 - (v15 + 8));
  }

  v96 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v78, &v92, &v95, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v75 = *(*a1 + 152);
  v76 = *(*a2 + 152);
  v70 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v28 = v85;
    v29 = (v87 - v86) >> 2;
    v77 = (((v87 - v86) << 30) - 0x100000000) >> 32;
    v30 = v86 + 4 * v77;
    v31 = v78;
    v32 = (v80 - v79) >> 2;
    v33 = (((v80 - v79) << 30) - 0x100000000) >> 32;
    v34 = v79 + 4 * v33;
    v68 = v23;
    v35 = 4 * v19;
    v36 = 4 * v17;
    v37 = 4 * (v29 & 0x7FFFFFFF);
    v72 = v86 - 8;
    v38 = 4 * (v32 & 0x7FFFFFFF);
    v71 = v79 - 8;
    do
    {
      v69 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v88;
        v41 = v90 + 4 * v77;
        v42 = v81;
        v73 = __p;
        v74 = v90;
        v43 = __p + 4 * v33;
        v44 = v70;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v76 + 4 * v28);
            v46 = v20;
            v47 = v44;
            do
            {
              *v47 = *(v75 + 4 * v31 + 4 * (*v45 + (v21 & (*v45 >> 31))) * v18);
              v47 = (v47 + v35);
              v45 = (v45 + v36);
              --v46;
            }

            while (v46);
          }

          if (v29)
          {
            v48 = *v41;
            if (v29 >= 2 && v48 == *v30 - 1)
            {
              v49 = v74;
              v50 = v72;
              v51 = (v29 & 0x7FFFFFFF) - 1;
              v52 = v30;
              v53 = v41;
              v54 = v77;
              do
              {
                v55 = v51;
                *v53 = 0;
                v28 -= v40[v54] * (*v52 - 1);
                v85 = v28;
                --v51;
                v53 = &v49[v37 - 8];
                v48 = *v53;
                v49 -= 4;
                if (v55 < 2)
                {
                  break;
                }

                v52 = &v50[v37];
                v56 = *&v50[4 * (v29 & 0x7FFFFFFF)] - 1;
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
            v28 += v40[v51];
            v85 = v28;
          }

          if (v32)
          {
            v58 = *v43;
            if (v32 >= 2 && v58 == *v34 - 1)
            {
              v59 = v73;
              v60 = v71;
              v61 = (v32 & 0x7FFFFFFF) - 1;
              v62 = v34;
              v63 = v43;
              v64 = v33;
              do
              {
                v65 = v61;
                *v63 = 0;
                v31 -= v42[v64] * (*v62 - 1);
                v78 = v31;
                --v61;
                v63 = &v59[v38 - 8];
                v58 = *v63;
                v59 -= 4;
                if (v65 < 2)
                {
                  break;
                }

                v62 = &v60[v38];
                v66 = *&v60[4 * (v32 & 0x7FFFFFFF)] - 1;
                v60 -= 4;
                v64 = v61;
              }

              while (v58 == v66);
              v67 = &v59[v38 - 4];
            }

            else
            {
              v61 = v33;
              v67 = v43;
            }

            *v67 = v58 + 1;
            v31 += v42[v61];
            v78 = v31;
          }

          ++v39;
          ++v44;
        }

        while (v39 != v26);
      }

      v27 = v69 + 1;
      v70 += v26 * v20;
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

void sub_25A44DFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<double,int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v85, &v92, &v95, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v95 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v95, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v95[v14];
  v16 = v96 - &v95[v14 + 8];
  if (v96 != &v95[v14 + 8])
  {
    memmove(&v95[v14], &v95[v14 + 8], v96 - (v15 + 8));
  }

  v96 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v78, &v92, &v95, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v75 = *(*a1 + 152);
  v76 = *(*a2 + 152);
  v70 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v28 = v85;
    v29 = (v87 - v86) >> 2;
    v77 = (((v87 - v86) << 30) - 0x100000000) >> 32;
    v30 = v86 + 4 * v77;
    v31 = v78;
    v32 = (v80 - v79) >> 2;
    v33 = (((v80 - v79) << 30) - 0x100000000) >> 32;
    v34 = v79 + 4 * v33;
    v68 = v23;
    v35 = 8 * v19;
    v36 = 4 * v17;
    v37 = 4 * (v29 & 0x7FFFFFFF);
    v72 = v86 - 8;
    v38 = 4 * (v32 & 0x7FFFFFFF);
    v71 = v79 - 8;
    do
    {
      v69 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v88;
        v41 = v90 + 4 * v77;
        v42 = v81;
        v73 = __p;
        v74 = v90;
        v43 = __p + 4 * v33;
        v44 = v70;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v76 + 4 * v28);
            v46 = v20;
            v47 = v44;
            do
            {
              *v47 = *(v75 + 8 * v31 + 8 * (*v45 + (v21 & (*v45 >> 31))) * v18);
              v47 = (v47 + v35);
              v45 = (v45 + v36);
              --v46;
            }

            while (v46);
          }

          if (v29)
          {
            v48 = *v41;
            if (v29 >= 2 && v48 == *v30 - 1)
            {
              v49 = v74;
              v50 = v72;
              v51 = (v29 & 0x7FFFFFFF) - 1;
              v52 = v30;
              v53 = v41;
              v54 = v77;
              do
              {
                v55 = v51;
                *v53 = 0;
                v28 -= v40[v54] * (*v52 - 1);
                v85 = v28;
                --v51;
                v53 = &v49[v37 - 8];
                v48 = *v53;
                v49 -= 4;
                if (v55 < 2)
                {
                  break;
                }

                v52 = &v50[v37];
                v56 = *&v50[4 * (v29 & 0x7FFFFFFF)] - 1;
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
            v28 += v40[v51];
            v85 = v28;
          }

          if (v32)
          {
            v58 = *v43;
            if (v32 >= 2 && v58 == *v34 - 1)
            {
              v59 = v73;
              v60 = v71;
              v61 = (v32 & 0x7FFFFFFF) - 1;
              v62 = v34;
              v63 = v43;
              v64 = v33;
              do
              {
                v65 = v61;
                *v63 = 0;
                v31 -= v42[v64] * (*v62 - 1);
                v78 = v31;
                --v61;
                v63 = &v59[v38 - 8];
                v58 = *v63;
                v59 -= 4;
                if (v65 < 2)
                {
                  break;
                }

                v62 = &v60[v38];
                v66 = *&v60[4 * (v32 & 0x7FFFFFFF)] - 1;
                v60 -= 4;
                v64 = v61;
              }

              while (v58 == v66);
              v67 = &v59[v38 - 4];
            }

            else
            {
              v61 = v33;
              v67 = v43;
            }

            *v67 = v58 + 1;
            v31 += v42[v61];
            v78 = v31;
          }

          ++v39;
          ++v44;
        }

        while (v39 != v26);
      }

      v27 = v69 + 1;
      v70 += v26 * v20;
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

void sub_25A44E5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a34);
  v36 = *(v34 - 136);
  if (v36)
  {
    *(v34 - 128) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 112);
  if (v37)
  {
    *(v34 - 104) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void mlx::core::gather_axis<mlx::core::complex64_t,int>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v84, &v87, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v87 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v87, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v87[v14];
  v16 = v88 - &v87[v14 + 8];
  if (v88 != &v87[v14 + 8])
  {
    memmove(&v87[v14], &v87[v14 + 8], v88 - (v15 + 8));
  }

  v88 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v70, &v84, &v87, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a1 + 152);
  v19 = *(*a3 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a1, a4);
  v22 = mlx::core::array::strides(a3, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v24 = mlx::core::array::shape(a1, a4);
  v68 = v22;
  v69 = v20;
  if (a4 < 1)
  {
    v26 = 1;
  }

  else
  {
    v25 = 0;
    v26 = 1;
    do
    {
      v26 *= mlx::core::array::shape(a2, v25++);
    }

    while (a4 != v25);
  }

  v27 = a4 + 1;
  v28 = *(*a2 + 8) - **a2;
  v29 = 1;
  while (v27 < v28 >> 2)
  {
    v29 *= mlx::core::array::shape(a2, v27++);
    v28 = *(*a2 + 8) - **a2;
  }

  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      if (v29)
      {
        v31 = 0;
        v32 = v19;
        do
        {
          v33 = v23;
          v34 = v17;
          v35 = v32;
          if (v23 >= 1)
          {
            do
            {
              *v35 = *(v18 + 8 * v70 + 8 * (*(v34 + 4 * v77) + (v24 & (*(v34 + 4 * v77) >> 31))) * v21);
              v35 += v68;
              v34 += 4 * v69;
              --v33;
            }

            while (v33);
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

          ++v31;
          ++v32;
        }

        while (v31 != v29);
      }

      v19 += v29 * v23;
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

void sub_25A44EB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
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

void mlx::core::gather_axis<BOOL,long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v85, &v92, &v95, ((*(*a1 + 8) - **a1) >> 2) - 1);
  if (&v95 != (*a1 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v95, *(*a1 + 24), *(*a1 + 32), (*(*a1 + 32) - *(*a1 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v95[v14];
  v16 = v96 - &v95[v14 + 8];
  if (v96 != &v95[v14 + 8])
  {
    memmove(&v95[v14], &v95[v14 + 8], v96 - (v15 + 8));
  }

  v96 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v78, &v92, &v95, ((*(*a1 + 8) - **a1) >> 2) - 1);
  v75 = *(*a1 + 152);
  v76 = *(*a2 + 152);
  v70 = *(*a3 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a1, a4);
  v19 = mlx::core::array::strides(a3, a4);
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
    v29 = v85;
    v30 = (v87 - v86) >> 2;
    v77 = (((v87 - v86) << 30) - 0x100000000) >> 32;
    v31 = v86 + 4 * v77;
    v32 = v78;
    v33 = (v80 - v79) >> 2;
    v34 = (((v80 - v79) << 30) - 0x100000000) >> 32;
    v35 = v79 + 4 * v34;
    v36 = 8 * v17;
    v37 = 4 * (v30 & 0x7FFFFFFF);
    v72 = v86 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v71 = v79 - 8;
    v68 = v23;
    do
    {
      v69 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v88;
        v41 = v90 + 4 * v77;
        v42 = v81;
        v73 = __p;
        v74 = v90;
        v43 = __p + 4 * v34;
        v44 = v70;
        do
        {
          if (v20 >= 1)
          {
            v45 = v20;
            v46 = v44;
            v47 = (v76 + 8 * v29);
            do
            {
              *v46 = *(v75 + v32 + ((v28 & (*v47 >> 63)) + *v47) * v18);
              v46 += v19;
              v47 = (v47 + v36);
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
                v85 = v29;
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
            v85 = v29;
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
                v78 = v32;
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
            v78 = v32;
          }

          ++v39;
          ++v44;
        }

        while (v39 != v26);
      }

      v70 += v26 * v20;
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