void sub_25A51F34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<float,unsigned char,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 4 * v18;
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
            v45 = (v74 + 4 * v32);
            v46 = v20;
            do
            {
              *(v76 + 4 * v39 + 4 * v19 * *v44) = *v45 + *(v76 + 4 * v39 + 4 * v19 * *v44);
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

      v76 += 4 * v67;
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

void sub_25A51F93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<float,unsigned short,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 4 * v18;
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
            v46 = (v75 + 4 * v32);
            v47 = v20;
            do
            {
              *(v77 + 4 * v40 + 4 * v19 * *v45) = *v46;
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

      v77 += 4 * v68;
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

void sub_25A51FF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<float,unsigned short,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 4 * v18;
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
            v46 = (v75 + 4 * v32);
            v47 = v20;
            do
            {
              *(v77 + 4 * v40 + 4 * v19 * *v45) = *v46 + *(v77 + 4 * v40 + 4 * v19 * *v45);
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

      v77 += 4 * v68;
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

void sub_25A52051C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<float,unsigned int,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 4 * v18;
    v37 = 4 * v17;
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
            v45 = (v76 + 4 * v28);
            v46 = (v75 + 4 * v32);
            v47 = v20;
            do
            {
              *(v77 + 4 * v40 + 4 * v19 * *v45) = *v46;
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

      v77 += 4 * v68;
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

void sub_25A520B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<float,unsigned int,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 4 * v18;
    v37 = 4 * v17;
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
            v45 = (v76 + 4 * v28);
            v46 = (v75 + 4 * v32);
            v47 = v20;
            do
            {
              *(v77 + 4 * v40 + 4 * v19 * *v45) = *v46 + *(v77 + 4 * v40 + 4 * v19 * *v45);
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

      v77 += 4 * v68;
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

void sub_25A5210FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<float,unsigned long long,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 4 * v18;
    v37 = 8 * v17;
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
            v45 = (v76 + 8 * v28);
            v46 = (v75 + 4 * v32);
            v47 = v20;
            do
            {
              *(v77 + 4 * v40 + 4 * *v45 * v19) = *v46;
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

      v77 += 4 * v68;
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

void sub_25A5216E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<float,unsigned long long,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 4 * v18;
    v37 = 8 * v17;
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
            v45 = (v76 + 8 * v28);
            v46 = (v75 + 4 * v32);
            v47 = v20;
            do
            {
              *(v77 + 4 * v40 + 4 * *v45 * v19) = *v46 + *(v77 + 4 * v40 + 4 * *v45 * v19);
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

      v77 += 4 * v68;
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

void sub_25A521CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<float,signed char,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 4 * v18;
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
            v44 = (v77 + v29);
            v45 = (v76 + 4 * v32);
            v46 = v20;
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

              *(v79 + 4 * v39 + 4 * (v48 + v47) * v19) = *v45;
              v45 = (v45 + v36);
              v44 += v17;
              --v46;
            }

            while (v46);
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

      v79 += 4 * v69;
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

void sub_25A5222D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<float,signed char,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 4 * v18;
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
            v44 = (v77 + v29);
            v45 = (v76 + 4 * v32);
            v46 = v20;
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

              *(v79 + 4 * v39 + 4 * (v48 + v47) * v19) = *v45 + *(v79 + 4 * v39 + 4 * (v48 + v47) * v19);
              v45 = (v45 + v36);
              v44 += v17;
              --v46;
            }

            while (v46);
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

      v79 += 4 * v69;
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

void sub_25A5228CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<float,short,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v95, &v98, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v98 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v98, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v98[v14];
  v16 = v99 - &v98[v14 + 8];
  if (v99 != &v98[v14 + 8])
  {
    memmove(&v98[v14], &v98[v14 + 8], v99 - (v15 + 8));
  }

  v99 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v95, &v98, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v77 = *(*a3 + 152);
  v78 = *(*a2 + 152);
  v80 = *(*a1 + 152);
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
    v70 = v26 * v21;
    v29 = v88;
    v30 = (v90 - v89) >> 2;
    v79 = (((v90 - v89) << 30) - 0x100000000) >> 32;
    v31 = v89 + 4 * v79;
    v32 = v81;
    v33 = (v83 - v82) >> 2;
    v34 = (((v83 - v82) << 30) - 0x100000000) >> 32;
    v35 = v82 + 4 * v34;
    v36 = 4 * v18;
    v37 = 2 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v74 = v89 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v73 = v82 - 8;
    v71 = v23;
    do
    {
      v72 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v91;
        v42 = v93 + 4 * v79;
        v43 = v84;
        v75 = __p;
        v76 = v93;
        v44 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v78 + 2 * v29);
            v46 = (v77 + 4 * v32);
            v47 = v20;
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

              *(v80 + 4 * v40 + 4 * (v49 + v48) * v19) = *v46;
              v46 = (v46 + v36);
              v45 = (v45 + v37);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            v50 = *v42;
            if (v30 >= 2 && v50 == *v31 - 1)
            {
              v51 = v76;
              v52 = v74;
              v53 = (v30 & 0x7FFFFFFF) - 1;
              v54 = v31;
              v55 = v42;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v29 -= v41[v56] * (*v54 - 1);
                v88 = v29;
                --v53;
                v55 = &v51[v38 - 8];
                v50 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v38];
                v58 = *&v52[4 * (v30 & 0x7FFFFFFF)] - 1;
                v52 -= 4;
                v56 = v53;
              }

              while (v50 == v58);
              v59 = &v51[v38 - 4];
            }

            else
            {
              v53 = v79;
              v59 = v42;
            }

            *v59 = v50 + 1;
            v29 += v41[v53];
            v88 = v29;
          }

          if (v33)
          {
            v60 = *v44;
            if (v33 >= 2 && v60 == *v35 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v33 & 0x7FFFFFFF) - 1;
              v64 = v35;
              v65 = v44;
              v66 = v34;
              do
              {
                v67 = v63;
                *v65 = 0;
                v32 -= v43[v66] * (*v64 - 1);
                v81 = v32;
                --v63;
                v65 = &v61[v39 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v39];
                v68 = *&v62[4 * (v33 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v60 == v68);
              v69 = &v61[v39 - 4];
            }

            else
            {
              v63 = v34;
              v69 = v44;
            }

            *v69 = v60 + 1;
            v32 += v43[v63];
            v81 = v32;
          }

          ++v40;
        }

        while (v40 != v26);
      }

      v80 += 4 * v70;
      v27 = v72 + 1;
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

void sub_25A522EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<float,short,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v95, &v98, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v98 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v98, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v98[v14];
  v16 = v99 - &v98[v14 + 8];
  if (v99 != &v98[v14 + 8])
  {
    memmove(&v98[v14], &v98[v14 + 8], v99 - (v15 + 8));
  }

  v99 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v95, &v98, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v77 = *(*a3 + 152);
  v78 = *(*a2 + 152);
  v80 = *(*a1 + 152);
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
    v70 = v26 * v21;
    v29 = v88;
    v30 = (v90 - v89) >> 2;
    v79 = (((v90 - v89) << 30) - 0x100000000) >> 32;
    v31 = v89 + 4 * v79;
    v32 = v81;
    v33 = (v83 - v82) >> 2;
    v34 = (((v83 - v82) << 30) - 0x100000000) >> 32;
    v35 = v82 + 4 * v34;
    v36 = 4 * v18;
    v37 = 2 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v74 = v89 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v73 = v82 - 8;
    v71 = v23;
    do
    {
      v72 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v91;
        v42 = v93 + 4 * v79;
        v43 = v84;
        v75 = __p;
        v76 = v93;
        v44 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v78 + 2 * v29);
            v46 = (v77 + 4 * v32);
            v47 = v20;
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

              *(v80 + 4 * v40 + 4 * (v49 + v48) * v19) = *v46 + *(v80 + 4 * v40 + 4 * (v49 + v48) * v19);
              v46 = (v46 + v36);
              v45 = (v45 + v37);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            v50 = *v42;
            if (v30 >= 2 && v50 == *v31 - 1)
            {
              v51 = v76;
              v52 = v74;
              v53 = (v30 & 0x7FFFFFFF) - 1;
              v54 = v31;
              v55 = v42;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v29 -= v41[v56] * (*v54 - 1);
                v88 = v29;
                --v53;
                v55 = &v51[v38 - 8];
                v50 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v38];
                v58 = *&v52[4 * (v30 & 0x7FFFFFFF)] - 1;
                v52 -= 4;
                v56 = v53;
              }

              while (v50 == v58);
              v59 = &v51[v38 - 4];
            }

            else
            {
              v53 = v79;
              v59 = v42;
            }

            *v59 = v50 + 1;
            v29 += v41[v53];
            v88 = v29;
          }

          if (v33)
          {
            v60 = *v44;
            if (v33 >= 2 && v60 == *v35 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v33 & 0x7FFFFFFF) - 1;
              v64 = v35;
              v65 = v44;
              v66 = v34;
              do
              {
                v67 = v63;
                *v65 = 0;
                v32 -= v43[v66] * (*v64 - 1);
                v81 = v32;
                --v63;
                v65 = &v61[v39 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v39];
                v68 = *&v62[4 * (v33 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v60 == v68);
              v69 = &v61[v39 - 4];
            }

            else
            {
              v63 = v34;
              v69 = v44;
            }

            *v69 = v60 + 1;
            v32 += v43[v63];
            v81 = v32;
          }

          ++v40;
        }

        while (v40 != v26);
      }

      v80 += 4 * v70;
      v27 = v72 + 1;
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

void sub_25A5234C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<float,int,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v95, &v98, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v98 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v98, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v98[v14];
  v16 = v99 - &v98[v14 + 8];
  if (v99 != &v98[v14 + 8])
  {
    memmove(&v98[v14], &v98[v14 + 8], v99 - (v15 + 8));
  }

  v99 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v95, &v98, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v77 = *(*a3 + 152);
  v78 = *(*a2 + 152);
  v80 = *(*a1 + 152);
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
    v70 = v26 * v21;
    v29 = v88;
    v30 = (v90 - v89) >> 2;
    v79 = (((v90 - v89) << 30) - 0x100000000) >> 32;
    v31 = v89 + 4 * v79;
    v32 = v81;
    v33 = (v83 - v82) >> 2;
    v34 = (((v83 - v82) << 30) - 0x100000000) >> 32;
    v35 = v82 + 4 * v34;
    v36 = 4 * v18;
    v37 = 4 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v74 = v89 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v73 = v82 - 8;
    v71 = v23;
    do
    {
      v72 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v91;
        v42 = v93 + 4 * v79;
        v43 = v84;
        v75 = __p;
        v76 = v93;
        v44 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v78 + 4 * v29);
            v46 = (v77 + 4 * v32);
            v47 = v20;
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

              *(v80 + 4 * v40 + 4 * (v49 + v48) * v19) = *v46;
              v46 = (v46 + v36);
              v45 = (v45 + v37);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            v50 = *v42;
            if (v30 >= 2 && v50 == *v31 - 1)
            {
              v51 = v76;
              v52 = v74;
              v53 = (v30 & 0x7FFFFFFF) - 1;
              v54 = v31;
              v55 = v42;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v29 -= v41[v56] * (*v54 - 1);
                v88 = v29;
                --v53;
                v55 = &v51[v38 - 8];
                v50 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v38];
                v58 = *&v52[4 * (v30 & 0x7FFFFFFF)] - 1;
                v52 -= 4;
                v56 = v53;
              }

              while (v50 == v58);
              v59 = &v51[v38 - 4];
            }

            else
            {
              v53 = v79;
              v59 = v42;
            }

            *v59 = v50 + 1;
            v29 += v41[v53];
            v88 = v29;
          }

          if (v33)
          {
            v60 = *v44;
            if (v33 >= 2 && v60 == *v35 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v33 & 0x7FFFFFFF) - 1;
              v64 = v35;
              v65 = v44;
              v66 = v34;
              do
              {
                v67 = v63;
                *v65 = 0;
                v32 -= v43[v66] * (*v64 - 1);
                v81 = v32;
                --v63;
                v65 = &v61[v39 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v39];
                v68 = *&v62[4 * (v33 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v60 == v68);
              v69 = &v61[v39 - 4];
            }

            else
            {
              v63 = v34;
              v69 = v44;
            }

            *v69 = v60 + 1;
            v32 += v43[v63];
            v81 = v32;
          }

          ++v40;
        }

        while (v40 != v26);
      }

      v80 += 4 * v70;
      v27 = v72 + 1;
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

void sub_25A523ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<float,int,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v95, &v98, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v98 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v98, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v98[v14];
  v16 = v99 - &v98[v14 + 8];
  if (v99 != &v98[v14 + 8])
  {
    memmove(&v98[v14], &v98[v14 + 8], v99 - (v15 + 8));
  }

  v99 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v95, &v98, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v77 = *(*a3 + 152);
  v78 = *(*a2 + 152);
  v80 = *(*a1 + 152);
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
    v70 = v26 * v21;
    v29 = v88;
    v30 = (v90 - v89) >> 2;
    v79 = (((v90 - v89) << 30) - 0x100000000) >> 32;
    v31 = v89 + 4 * v79;
    v32 = v81;
    v33 = (v83 - v82) >> 2;
    v34 = (((v83 - v82) << 30) - 0x100000000) >> 32;
    v35 = v82 + 4 * v34;
    v36 = 4 * v18;
    v37 = 4 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v74 = v89 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v73 = v82 - 8;
    v71 = v23;
    do
    {
      v72 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v91;
        v42 = v93 + 4 * v79;
        v43 = v84;
        v75 = __p;
        v76 = v93;
        v44 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v78 + 4 * v29);
            v46 = (v77 + 4 * v32);
            v47 = v20;
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

              *(v80 + 4 * v40 + 4 * (v49 + v48) * v19) = *v46 + *(v80 + 4 * v40 + 4 * (v49 + v48) * v19);
              v46 = (v46 + v36);
              v45 = (v45 + v37);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            v50 = *v42;
            if (v30 >= 2 && v50 == *v31 - 1)
            {
              v51 = v76;
              v52 = v74;
              v53 = (v30 & 0x7FFFFFFF) - 1;
              v54 = v31;
              v55 = v42;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v29 -= v41[v56] * (*v54 - 1);
                v88 = v29;
                --v53;
                v55 = &v51[v38 - 8];
                v50 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v38];
                v58 = *&v52[4 * (v30 & 0x7FFFFFFF)] - 1;
                v52 -= 4;
                v56 = v53;
              }

              while (v50 == v58);
              v59 = &v51[v38 - 4];
            }

            else
            {
              v53 = v79;
              v59 = v42;
            }

            *v59 = v50 + 1;
            v29 += v41[v53];
            v88 = v29;
          }

          if (v33)
          {
            v60 = *v44;
            if (v33 >= 2 && v60 == *v35 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v33 & 0x7FFFFFFF) - 1;
              v64 = v35;
              v65 = v44;
              v66 = v34;
              do
              {
                v67 = v63;
                *v65 = 0;
                v32 -= v43[v66] * (*v64 - 1);
                v81 = v32;
                --v63;
                v65 = &v61[v39 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v39];
                v68 = *&v62[4 * (v33 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v60 == v68);
              v69 = &v61[v39 - 4];
            }

            else
            {
              v63 = v34;
              v69 = v44;
            }

            *v69 = v60 + 1;
            v32 += v43[v63];
            v81 = v32;
          }

          ++v40;
        }

        while (v40 != v26);
      }

      v80 += 4 * v70;
      v27 = v72 + 1;
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

void sub_25A5240BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<float,long long,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 4 * v18;
    v37 = 8 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v72 = v87 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v71 = v80 - 8;
    v69 = v23;
    do
    {
      v70 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v89;
        v42 = v91 + 4 * v77;
        v43 = v82;
        v73 = __p;
        v74 = v91;
        v44 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v76 + 8 * v29);
            v46 = (v75 + 4 * v32);
            v47 = v20;
            do
            {
              *(v78 + 4 * v40 + 4 * ((v28 & (*v45 >> 63)) + *v45) * v19) = *v46;
              v46 = (v46 + v36);
              v45 = (v45 + v37);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            v48 = *v42;
            if (v30 >= 2 && v48 == *v31 - 1)
            {
              v49 = v74;
              v50 = v72;
              v51 = (v30 & 0x7FFFFFFF) - 1;
              v52 = v31;
              v53 = v42;
              v54 = v77;
              do
              {
                v55 = v51;
                *v53 = 0;
                v29 -= v41[v54] * (*v52 - 1);
                v86 = v29;
                --v51;
                v53 = &v49[v38 - 8];
                v48 = *v53;
                v49 -= 4;
                if (v55 < 2)
                {
                  break;
                }

                v52 = &v50[v38];
                v56 = *&v50[4 * (v30 & 0x7FFFFFFF)] - 1;
                v50 -= 4;
                v54 = v51;
              }

              while (v48 == v56);
              v57 = &v49[v38 - 4];
            }

            else
            {
              v51 = v77;
              v57 = v42;
            }

            *v57 = v48 + 1;
            v29 += v41[v51];
            v86 = v29;
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
                v79 = v32;
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
            v79 = v32;
          }

          ++v40;
        }

        while (v40 != v26);
      }

      v78 += 4 * v68;
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

void sub_25A5246B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<float,long long,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 4 * v18;
    v37 = 8 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v73 = v88 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v72 = v81 - 8;
    v70 = v23;
    do
    {
      v71 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v90;
        v42 = v92 + 4 * v78;
        v43 = v83;
        v74 = __p;
        v75 = v92;
        v44 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v77 + 8 * v29);
            v46 = (v76 + 4 * v32);
            v47 = v20;
            do
            {
              v48 = ((v28 & (*v45 >> 63)) + *v45) * v19;
              *(v79 + 4 * v40 + 4 * v48) = *v46 + *(v79 + 4 * v40 + 4 * v48);
              v46 = (v46 + v36);
              v45 = (v45 + v37);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            v49 = *v42;
            if (v30 >= 2 && v49 == *v31 - 1)
            {
              v50 = v75;
              v51 = v73;
              v52 = (v30 & 0x7FFFFFFF) - 1;
              v53 = v31;
              v54 = v42;
              v55 = v78;
              do
              {
                v56 = v52;
                *v54 = 0;
                v29 -= v41[v55] * (*v53 - 1);
                v87 = v29;
                --v52;
                v54 = &v50[v38 - 8];
                v49 = *v54;
                v50 -= 4;
                if (v56 < 2)
                {
                  break;
                }

                v53 = &v51[v38];
                v57 = *&v51[4 * (v30 & 0x7FFFFFFF)] - 1;
                v51 -= 4;
                v55 = v52;
              }

              while (v49 == v57);
              v58 = &v50[v38 - 4];
            }

            else
            {
              v52 = v78;
              v58 = v42;
            }

            *v58 = v49 + 1;
            v29 += v41[v52];
            v87 = v29;
          }

          if (v33)
          {
            v59 = *v44;
            if (v33 >= 2 && v59 == *v35 - 1)
            {
              v60 = v74;
              v61 = v72;
              v62 = (v33 & 0x7FFFFFFF) - 1;
              v63 = v35;
              v64 = v44;
              v65 = v34;
              do
              {
                v66 = v62;
                *v64 = 0;
                v32 -= v43[v65] * (*v63 - 1);
                v80 = v32;
                --v62;
                v64 = &v60[v39 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v61[v39];
                v67 = *&v61[4 * (v33 & 0x7FFFFFFF)] - 1;
                v61 -= 4;
                v65 = v62;
              }

              while (v59 == v67);
              v68 = &v60[v39 - 4];
            }

            else
            {
              v62 = v34;
              v68 = v44;
            }

            *v68 = v59 + 1;
            v32 += v43[v62];
            v80 = v32;
          }

          ++v40;
        }

        while (v40 != v26);
      }

      v79 += 4 * v69;
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

void sub_25A524CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::dispatch_scatter_axis_op<double,unsigned char>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<double,unsigned char,mlx::core::None>(a1, v9, a3, a4);
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
    mlx::core::scatter_axis<double,unsigned char,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<double,unsigned short>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<double,unsigned short,mlx::core::None>(a1, v9, a3, a4);
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
    mlx::core::scatter_axis<double,unsigned short,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<double,unsigned int>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<double,unsigned int,mlx::core::None>(a1, v9, a3, a4);
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
    mlx::core::scatter_axis<double,unsigned int,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<double,unsigned long long>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<double,unsigned long long,mlx::core::None>(a1, v9, a3, a4);
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
    mlx::core::scatter_axis<double,unsigned long long,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<double,signed char>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<double,signed char,mlx::core::None>(a1, v9, a3, a4);
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
    mlx::core::scatter_axis<double,signed char,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<double,short>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<double,short,mlx::core::None>(a1, v9, a3, a4);
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
    mlx::core::scatter_axis<double,short,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<double,int>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<double,int,mlx::core::None>(a1, v9, a3, a4);
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
    mlx::core::scatter_axis<double,int,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<double,long long>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<double,long long,mlx::core::None>(a1, v9, a3, a4);
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
    mlx::core::scatter_axis<double,long long,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::scatter_axis<double,unsigned char,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 8 * v18;
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
            v45 = (v74 + 8 * v32);
            v46 = v20;
            do
            {
              *(v76 + 8 * v39 + 8 * v19 * *v44) = *v45;
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

      v76 += 8 * v67;
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

void sub_25A5257B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<double,unsigned char,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 8 * v18;
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
            v45 = (v74 + 8 * v32);
            v46 = v20;
            do
            {
              *(v76 + 8 * v39 + 8 * v19 * *v44) = *v45 + *(v76 + 8 * v39 + 8 * v19 * *v44);
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

      v76 += 8 * v67;
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

void sub_25A525DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<double,unsigned short,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 8 * v18;
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
            v46 = (v75 + 8 * v32);
            v47 = v20;
            do
            {
              *(v77 + 8 * v40 + 8 * v19 * *v45) = *v46;
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

      v77 += 8 * v68;
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

void sub_25A526390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<double,unsigned short,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 8 * v18;
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
            v46 = (v75 + 8 * v32);
            v47 = v20;
            do
            {
              *(v77 + 8 * v40 + 8 * v19 * *v45) = *v46 + *(v77 + 8 * v40 + 8 * v19 * *v45);
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

      v77 += 8 * v68;
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

void sub_25A526984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<double,unsigned int,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 8 * v18;
    v37 = 4 * v17;
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
            v45 = (v76 + 4 * v28);
            v46 = (v75 + 8 * v32);
            v47 = v20;
            do
            {
              *(v77 + 8 * v40 + 8 * v19 * *v45) = *v46;
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

      v77 += 8 * v68;
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

void sub_25A526F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<double,unsigned int,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 8 * v18;
    v37 = 4 * v17;
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
            v45 = (v76 + 4 * v28);
            v46 = (v75 + 8 * v32);
            v47 = v20;
            do
            {
              *(v77 + 8 * v40 + 8 * v19 * *v45) = *v46 + *(v77 + 8 * v40 + 8 * v19 * *v45);
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

      v77 += 8 * v68;
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

void sub_25A527564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<double,unsigned long long,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 8 * v18;
    v37 = 8 * v17;
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
            v45 = (v76 + 8 * v28);
            v46 = (v75 + 8 * v32);
            v47 = v20;
            do
            {
              *(v77 + 8 * v40 + 8 * *v45 * v19) = *v46;
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

      v77 += 8 * v68;
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

void sub_25A527B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<double,unsigned long long,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 8 * v18;
    v37 = 8 * v17;
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
            v45 = (v76 + 8 * v28);
            v46 = (v75 + 8 * v32);
            v47 = v20;
            do
            {
              *(v77 + 8 * v40 + 8 * *v45 * v19) = *v46 + *(v77 + 8 * v40 + 8 * *v45 * v19);
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

      v77 += 8 * v68;
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

void sub_25A528144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<double,signed char,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 8 * v18;
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
            v44 = (v77 + v29);
            v45 = (v76 + 8 * v32);
            v46 = v20;
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

              *(v79 + 8 * v39 + 8 * (v48 + v47) * v19) = *v45;
              v45 = (v45 + v36);
              v44 += v17;
              --v46;
            }

            while (v46);
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

      v79 += 8 * v69;
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

void sub_25A528738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<double,signed char,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 8 * v18;
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
            v44 = (v77 + v29);
            v45 = (v76 + 8 * v32);
            v46 = v20;
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

              *(v79 + 8 * v39 + 8 * (v48 + v47) * v19) = *v45 + *(v79 + 8 * v39 + 8 * (v48 + v47) * v19);
              v45 = (v45 + v36);
              v44 += v17;
              --v46;
            }

            while (v46);
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

      v79 += 8 * v69;
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

void sub_25A528D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<double,short,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v95, &v98, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v98 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v98, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v98[v14];
  v16 = v99 - &v98[v14 + 8];
  if (v99 != &v98[v14 + 8])
  {
    memmove(&v98[v14], &v98[v14 + 8], v99 - (v15 + 8));
  }

  v99 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v95, &v98, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v77 = *(*a3 + 152);
  v78 = *(*a2 + 152);
  v80 = *(*a1 + 152);
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
    v70 = v26 * v21;
    v29 = v88;
    v30 = (v90 - v89) >> 2;
    v79 = (((v90 - v89) << 30) - 0x100000000) >> 32;
    v31 = v89 + 4 * v79;
    v32 = v81;
    v33 = (v83 - v82) >> 2;
    v34 = (((v83 - v82) << 30) - 0x100000000) >> 32;
    v35 = v82 + 4 * v34;
    v36 = 8 * v18;
    v37 = 2 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v74 = v89 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v73 = v82 - 8;
    v71 = v23;
    do
    {
      v72 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v91;
        v42 = v93 + 4 * v79;
        v43 = v84;
        v75 = __p;
        v76 = v93;
        v44 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v78 + 2 * v29);
            v46 = (v77 + 8 * v32);
            v47 = v20;
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

              *(v80 + 8 * v40 + 8 * (v49 + v48) * v19) = *v46;
              v46 = (v46 + v36);
              v45 = (v45 + v37);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            v50 = *v42;
            if (v30 >= 2 && v50 == *v31 - 1)
            {
              v51 = v76;
              v52 = v74;
              v53 = (v30 & 0x7FFFFFFF) - 1;
              v54 = v31;
              v55 = v42;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v29 -= v41[v56] * (*v54 - 1);
                v88 = v29;
                --v53;
                v55 = &v51[v38 - 8];
                v50 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v38];
                v58 = *&v52[4 * (v30 & 0x7FFFFFFF)] - 1;
                v52 -= 4;
                v56 = v53;
              }

              while (v50 == v58);
              v59 = &v51[v38 - 4];
            }

            else
            {
              v53 = v79;
              v59 = v42;
            }

            *v59 = v50 + 1;
            v29 += v41[v53];
            v88 = v29;
          }

          if (v33)
          {
            v60 = *v44;
            if (v33 >= 2 && v60 == *v35 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v33 & 0x7FFFFFFF) - 1;
              v64 = v35;
              v65 = v44;
              v66 = v34;
              do
              {
                v67 = v63;
                *v65 = 0;
                v32 -= v43[v66] * (*v64 - 1);
                v81 = v32;
                --v63;
                v65 = &v61[v39 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v39];
                v68 = *&v62[4 * (v33 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v60 == v68);
              v69 = &v61[v39 - 4];
            }

            else
            {
              v63 = v34;
              v69 = v44;
            }

            *v69 = v60 + 1;
            v32 += v43[v63];
            v81 = v32;
          }

          ++v40;
        }

        while (v40 != v26);
      }

      v80 += 8 * v70;
      v27 = v72 + 1;
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

void sub_25A52932C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<double,short,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v95, &v98, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v98 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v98, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v98[v14];
  v16 = v99 - &v98[v14 + 8];
  if (v99 != &v98[v14 + 8])
  {
    memmove(&v98[v14], &v98[v14 + 8], v99 - (v15 + 8));
  }

  v99 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v95, &v98, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v77 = *(*a3 + 152);
  v78 = *(*a2 + 152);
  v80 = *(*a1 + 152);
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
    v70 = v26 * v21;
    v29 = v88;
    v30 = (v90 - v89) >> 2;
    v79 = (((v90 - v89) << 30) - 0x100000000) >> 32;
    v31 = v89 + 4 * v79;
    v32 = v81;
    v33 = (v83 - v82) >> 2;
    v34 = (((v83 - v82) << 30) - 0x100000000) >> 32;
    v35 = v82 + 4 * v34;
    v36 = 8 * v18;
    v37 = 2 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v74 = v89 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v73 = v82 - 8;
    v71 = v23;
    do
    {
      v72 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v91;
        v42 = v93 + 4 * v79;
        v43 = v84;
        v75 = __p;
        v76 = v93;
        v44 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v78 + 2 * v29);
            v46 = (v77 + 8 * v32);
            v47 = v20;
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

              *(v80 + 8 * v40 + 8 * (v49 + v48) * v19) = *v46 + *(v80 + 8 * v40 + 8 * (v49 + v48) * v19);
              v46 = (v46 + v36);
              v45 = (v45 + v37);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            v50 = *v42;
            if (v30 >= 2 && v50 == *v31 - 1)
            {
              v51 = v76;
              v52 = v74;
              v53 = (v30 & 0x7FFFFFFF) - 1;
              v54 = v31;
              v55 = v42;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v29 -= v41[v56] * (*v54 - 1);
                v88 = v29;
                --v53;
                v55 = &v51[v38 - 8];
                v50 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v38];
                v58 = *&v52[4 * (v30 & 0x7FFFFFFF)] - 1;
                v52 -= 4;
                v56 = v53;
              }

              while (v50 == v58);
              v59 = &v51[v38 - 4];
            }

            else
            {
              v53 = v79;
              v59 = v42;
            }

            *v59 = v50 + 1;
            v29 += v41[v53];
            v88 = v29;
          }

          if (v33)
          {
            v60 = *v44;
            if (v33 >= 2 && v60 == *v35 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v33 & 0x7FFFFFFF) - 1;
              v64 = v35;
              v65 = v44;
              v66 = v34;
              do
              {
                v67 = v63;
                *v65 = 0;
                v32 -= v43[v66] * (*v64 - 1);
                v81 = v32;
                --v63;
                v65 = &v61[v39 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v39];
                v68 = *&v62[4 * (v33 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v60 == v68);
              v69 = &v61[v39 - 4];
            }

            else
            {
              v63 = v34;
              v69 = v44;
            }

            *v69 = v60 + 1;
            v32 += v43[v63];
            v81 = v32;
          }

          ++v40;
        }

        while (v40 != v26);
      }

      v80 += 8 * v70;
      v27 = v72 + 1;
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

void sub_25A52992C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<double,int,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v95, &v98, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v98 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v98, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v98[v14];
  v16 = v99 - &v98[v14 + 8];
  if (v99 != &v98[v14 + 8])
  {
    memmove(&v98[v14], &v98[v14 + 8], v99 - (v15 + 8));
  }

  v99 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v95, &v98, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v77 = *(*a3 + 152);
  v78 = *(*a2 + 152);
  v80 = *(*a1 + 152);
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
    v70 = v26 * v21;
    v29 = v88;
    v30 = (v90 - v89) >> 2;
    v79 = (((v90 - v89) << 30) - 0x100000000) >> 32;
    v31 = v89 + 4 * v79;
    v32 = v81;
    v33 = (v83 - v82) >> 2;
    v34 = (((v83 - v82) << 30) - 0x100000000) >> 32;
    v35 = v82 + 4 * v34;
    v36 = 8 * v18;
    v37 = 4 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v74 = v89 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v73 = v82 - 8;
    v71 = v23;
    do
    {
      v72 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v91;
        v42 = v93 + 4 * v79;
        v43 = v84;
        v75 = __p;
        v76 = v93;
        v44 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v78 + 4 * v29);
            v46 = (v77 + 8 * v32);
            v47 = v20;
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

              *(v80 + 8 * v40 + 8 * (v49 + v48) * v19) = *v46;
              v46 = (v46 + v36);
              v45 = (v45 + v37);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            v50 = *v42;
            if (v30 >= 2 && v50 == *v31 - 1)
            {
              v51 = v76;
              v52 = v74;
              v53 = (v30 & 0x7FFFFFFF) - 1;
              v54 = v31;
              v55 = v42;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v29 -= v41[v56] * (*v54 - 1);
                v88 = v29;
                --v53;
                v55 = &v51[v38 - 8];
                v50 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v38];
                v58 = *&v52[4 * (v30 & 0x7FFFFFFF)] - 1;
                v52 -= 4;
                v56 = v53;
              }

              while (v50 == v58);
              v59 = &v51[v38 - 4];
            }

            else
            {
              v53 = v79;
              v59 = v42;
            }

            *v59 = v50 + 1;
            v29 += v41[v53];
            v88 = v29;
          }

          if (v33)
          {
            v60 = *v44;
            if (v33 >= 2 && v60 == *v35 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v33 & 0x7FFFFFFF) - 1;
              v64 = v35;
              v65 = v44;
              v66 = v34;
              do
              {
                v67 = v63;
                *v65 = 0;
                v32 -= v43[v66] * (*v64 - 1);
                v81 = v32;
                --v63;
                v65 = &v61[v39 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v39];
                v68 = *&v62[4 * (v33 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v60 == v68);
              v69 = &v61[v39 - 4];
            }

            else
            {
              v63 = v34;
              v69 = v44;
            }

            *v69 = v60 + 1;
            v32 += v43[v63];
            v81 = v32;
          }

          ++v40;
        }

        while (v40 != v26);
      }

      v80 += 8 * v70;
      v27 = v72 + 1;
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

void sub_25A529F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<double,int,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v95, &v98, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v98 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v98, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v98[v14];
  v16 = v99 - &v98[v14 + 8];
  if (v99 != &v98[v14 + 8])
  {
    memmove(&v98[v14], &v98[v14 + 8], v99 - (v15 + 8));
  }

  v99 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v95, &v98, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v77 = *(*a3 + 152);
  v78 = *(*a2 + 152);
  v80 = *(*a1 + 152);
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
    v70 = v26 * v21;
    v29 = v88;
    v30 = (v90 - v89) >> 2;
    v79 = (((v90 - v89) << 30) - 0x100000000) >> 32;
    v31 = v89 + 4 * v79;
    v32 = v81;
    v33 = (v83 - v82) >> 2;
    v34 = (((v83 - v82) << 30) - 0x100000000) >> 32;
    v35 = v82 + 4 * v34;
    v36 = 8 * v18;
    v37 = 4 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v74 = v89 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v73 = v82 - 8;
    v71 = v23;
    do
    {
      v72 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v91;
        v42 = v93 + 4 * v79;
        v43 = v84;
        v75 = __p;
        v76 = v93;
        v44 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v78 + 4 * v29);
            v46 = (v77 + 8 * v32);
            v47 = v20;
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

              *(v80 + 8 * v40 + 8 * (v49 + v48) * v19) = *v46 + *(v80 + 8 * v40 + 8 * (v49 + v48) * v19);
              v46 = (v46 + v36);
              v45 = (v45 + v37);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            v50 = *v42;
            if (v30 >= 2 && v50 == *v31 - 1)
            {
              v51 = v76;
              v52 = v74;
              v53 = (v30 & 0x7FFFFFFF) - 1;
              v54 = v31;
              v55 = v42;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v29 -= v41[v56] * (*v54 - 1);
                v88 = v29;
                --v53;
                v55 = &v51[v38 - 8];
                v50 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v38];
                v58 = *&v52[4 * (v30 & 0x7FFFFFFF)] - 1;
                v52 -= 4;
                v56 = v53;
              }

              while (v50 == v58);
              v59 = &v51[v38 - 4];
            }

            else
            {
              v53 = v79;
              v59 = v42;
            }

            *v59 = v50 + 1;
            v29 += v41[v53];
            v88 = v29;
          }

          if (v33)
          {
            v60 = *v44;
            if (v33 >= 2 && v60 == *v35 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v33 & 0x7FFFFFFF) - 1;
              v64 = v35;
              v65 = v44;
              v66 = v34;
              do
              {
                v67 = v63;
                *v65 = 0;
                v32 -= v43[v66] * (*v64 - 1);
                v81 = v32;
                --v63;
                v65 = &v61[v39 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v39];
                v68 = *&v62[4 * (v33 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v60 == v68);
              v69 = &v61[v39 - 4];
            }

            else
            {
              v63 = v34;
              v69 = v44;
            }

            *v69 = v60 + 1;
            v32 += v43[v63];
            v81 = v32;
          }

          ++v40;
        }

        while (v40 != v26);
      }

      v80 += 8 * v70;
      v27 = v72 + 1;
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

void sub_25A52A524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<double,long long,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 8 * v18;
    v37 = 8 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v72 = v87 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v71 = v80 - 8;
    v69 = v23;
    do
    {
      v70 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v89;
        v42 = v91 + 4 * v77;
        v43 = v82;
        v73 = __p;
        v74 = v91;
        v44 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v76 + 8 * v29);
            v46 = (v75 + 8 * v32);
            v47 = v20;
            do
            {
              *(v78 + 8 * v40 + 8 * ((v28 & (*v45 >> 63)) + *v45) * v19) = *v46;
              v46 = (v46 + v36);
              v45 = (v45 + v37);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            v48 = *v42;
            if (v30 >= 2 && v48 == *v31 - 1)
            {
              v49 = v74;
              v50 = v72;
              v51 = (v30 & 0x7FFFFFFF) - 1;
              v52 = v31;
              v53 = v42;
              v54 = v77;
              do
              {
                v55 = v51;
                *v53 = 0;
                v29 -= v41[v54] * (*v52 - 1);
                v86 = v29;
                --v51;
                v53 = &v49[v38 - 8];
                v48 = *v53;
                v49 -= 4;
                if (v55 < 2)
                {
                  break;
                }

                v52 = &v50[v38];
                v56 = *&v50[4 * (v30 & 0x7FFFFFFF)] - 1;
                v50 -= 4;
                v54 = v51;
              }

              while (v48 == v56);
              v57 = &v49[v38 - 4];
            }

            else
            {
              v51 = v77;
              v57 = v42;
            }

            *v57 = v48 + 1;
            v29 += v41[v51];
            v86 = v29;
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
                v79 = v32;
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
            v79 = v32;
          }

          ++v40;
        }

        while (v40 != v26);
      }

      v78 += 8 * v68;
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

void sub_25A52AB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::scatter_axis<double,long long,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v36 = 8 * v18;
    v37 = 8 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v73 = v88 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v72 = v81 - 8;
    v70 = v23;
    do
    {
      v71 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v90;
        v42 = v92 + 4 * v78;
        v43 = v83;
        v74 = __p;
        v75 = v92;
        v44 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v45 = (v77 + 8 * v29);
            v46 = (v76 + 8 * v32);
            v47 = v20;
            do
            {
              v48 = ((v28 & (*v45 >> 63)) + *v45) * v19;
              *(v79 + 8 * v40 + 8 * v48) = *v46 + *(v79 + 8 * v40 + 8 * v48);
              v46 = (v46 + v36);
              v45 = (v45 + v37);
              --v47;
            }

            while (v47);
          }

          if (v30)
          {
            v49 = *v42;
            if (v30 >= 2 && v49 == *v31 - 1)
            {
              v50 = v75;
              v51 = v73;
              v52 = (v30 & 0x7FFFFFFF) - 1;
              v53 = v31;
              v54 = v42;
              v55 = v78;
              do
              {
                v56 = v52;
                *v54 = 0;
                v29 -= v41[v55] * (*v53 - 1);
                v87 = v29;
                --v52;
                v54 = &v50[v38 - 8];
                v49 = *v54;
                v50 -= 4;
                if (v56 < 2)
                {
                  break;
                }

                v53 = &v51[v38];
                v57 = *&v51[4 * (v30 & 0x7FFFFFFF)] - 1;
                v51 -= 4;
                v55 = v52;
              }

              while (v49 == v57);
              v58 = &v50[v38 - 4];
            }

            else
            {
              v52 = v78;
              v58 = v42;
            }

            *v58 = v49 + 1;
            v29 += v41[v52];
            v87 = v29;
          }

          if (v33)
          {
            v59 = *v44;
            if (v33 >= 2 && v59 == *v35 - 1)
            {
              v60 = v74;
              v61 = v72;
              v62 = (v33 & 0x7FFFFFFF) - 1;
              v63 = v35;
              v64 = v44;
              v65 = v34;
              do
              {
                v66 = v62;
                *v64 = 0;
                v32 -= v43[v65] * (*v63 - 1);
                v80 = v32;
                --v62;
                v64 = &v60[v39 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v61[v39];
                v67 = *&v61[4 * (v33 & 0x7FFFFFFF)] - 1;
                v61 -= 4;
                v65 = v62;
              }

              while (v59 == v67);
              v68 = &v60[v39 - 4];
            }

            else
            {
              v62 = v34;
              v68 = v44;
            }

            *v68 = v59 + 1;
            v32 += v43[v62];
            v80 = v32;
          }

          ++v40;
        }

        while (v40 != v26);
      }

      v79 += 8 * v69;
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

void sub_25A52B114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::dispatch_scatter_axis_op<mlx::core::_MLX_BFloat16,unsigned char>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<mlx::core::_MLX_BFloat16,unsigned char,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<mlx::core::_MLX_BFloat16,unsigned short>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<mlx::core::_MLX_BFloat16,unsigned short,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<mlx::core::_MLX_BFloat16,unsigned int>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<mlx::core::_MLX_BFloat16,unsigned int,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}