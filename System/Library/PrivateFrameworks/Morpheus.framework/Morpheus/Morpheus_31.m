void sub_25A44F170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
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

void mlx::core::gather_axis<unsigned char,long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
              *v34 = *(v18 + v69 + ((v67 & (*(v33 + 8 * v76) >> 63)) + *(v33 + 8 * v76)) * v21);
              v34 += v22;
              v33 += 8 * v68;
              --v32;
            }

            while (v32);
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

void sub_25A44F6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
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

void mlx::core::gather_axis<unsigned short,long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v69 = v23;
    v36 = 2 * v19;
    v37 = 8 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v73 = v87 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v72 = v80 - 8;
    do
    {
      v70 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v89;
        v42 = v91 + 4 * v78;
        v43 = v82;
        v74 = __p;
        v75 = v91;
        v44 = __p + 4 * v34;
        v45 = v71;
        do
        {
          if (v20 >= 1)
          {
            v46 = (v77 + 8 * v29);
            v47 = v20;
            v48 = v45;
            do
            {
              *v48 = *(v76 + 2 * v32 + 2 * ((v28 & (*v46 >> 63)) + *v46) * v18);
              v48 = (v48 + v36);
              v46 = (v46 + v37);
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
                v86 = v29;
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
            v86 = v29;
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
                v79 = v32;
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
            v79 = v32;
          }

          ++v40;
          ++v45;
        }

        while (v40 != v26);
      }

      v27 = v70 + 1;
      v71 += v26 * v20;
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

void sub_25A44FCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
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

void mlx::core::gather_axis<unsigned int,long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v69 = v23;
    v36 = 4 * v19;
    v37 = 8 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v73 = v87 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v72 = v80 - 8;
    do
    {
      v70 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v89;
        v42 = v91 + 4 * v78;
        v43 = v82;
        v74 = __p;
        v75 = v91;
        v44 = __p + 4 * v34;
        v45 = v71;
        do
        {
          if (v20 >= 1)
          {
            v46 = (v77 + 8 * v29);
            v47 = v20;
            v48 = v45;
            do
            {
              *v48 = *(v76 + 4 * v32 + 4 * ((v28 & (*v46 >> 63)) + *v46) * v18);
              v48 = (v48 + v36);
              v46 = (v46 + v37);
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
                v86 = v29;
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
            v86 = v29;
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
                v79 = v32;
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
            v79 = v32;
          }

          ++v40;
          ++v45;
        }

        while (v40 != v26);
      }

      v27 = v70 + 1;
      v71 += v26 * v20;
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

void sub_25A4502EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
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

void mlx::core::gather_axis<unsigned long long,long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  v78 = *(*a2 + 152);
  v17 = *(*a1 + 152);
  v71 = *(*a3 + 152);
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
    v30 = (v88 - v87) >> 2;
    v77 = (((v88 - v87) << 30) - 0x100000000) >> 32;
    v31 = v87 + 4 * v77;
    v32 = (v81 - v80) >> 2;
    v76 = (((v81 - v80) << 30) - 0x100000000) >> 32;
    v33 = v80 + 4 * v76;
    v69 = v24;
    v34 = 8 * v20;
    v35 = 8 * v18;
    v36 = 4 * (v30 & 0x7FFFFFFF);
    v73 = v87 - 8;
    v37 = 4 * (v32 & 0x7FFFFFFF);
    v72 = v80 - 8;
    do
    {
      v70 = v28;
      if (v27)
      {
        v38 = 0;
        v39 = v89;
        v75 = v91;
        v40 = v91 + 4 * v77;
        v41 = v82;
        v74 = __p;
        v42 = __p + 4 * v76;
        v43 = v71;
        do
        {
          v44 = v21;
          v45 = v78;
          v46 = v43;
          if (v21 >= 1)
          {
            do
            {
              *v46 = *(v17 + 8 * v79 + 8 * ((v29 & (*(v45 + 8 * v86) >> 63)) + *(v45 + 8 * v86)) * v19);
              v46 = (v46 + v34);
              v45 += v35;
              --v44;
            }

            while (v44);
          }

          if (v30)
          {
            v47 = *v40;
            v48 = v86;
            if (v30 >= 2 && v47 == *v31 - 1)
            {
              v49 = v75;
              v50 = v73;
              v51 = (v30 & 0x7FFFFFFF) - 1;
              v52 = v31;
              v53 = v40;
              v54 = v77;
              do
              {
                v55 = v51;
                *v53 = 0;
                v48 -= v39[v54] * (*v52 - 1);
                v86 = v48;
                --v51;
                v53 = &v49[v36 - 8];
                v47 = *v53;
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

              while (v47 == v56);
              v57 = &v49[v36 - 4];
            }

            else
            {
              v51 = v77;
              v57 = v40;
            }

            *v57 = v47 + 1;
            v86 = v39[v51] + v48;
          }

          if (v32)
          {
            v58 = *v42;
            v59 = v79;
            if (v32 >= 2 && v58 == *v33 - 1)
            {
              v60 = v74;
              v61 = v72;
              v62 = (v32 & 0x7FFFFFFF) - 1;
              v63 = v33;
              v64 = v42;
              v65 = v76;
              do
              {
                v66 = v62;
                *v64 = 0;
                v59 -= v41[v65] * (*v63 - 1);
                v79 = v59;
                --v62;
                v64 = &v60[v37 - 8];
                v58 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v61[v37];
                v67 = *&v61[4 * (v32 & 0x7FFFFFFF)] - 1;
                v61 -= 4;
                v65 = v62;
              }

              while (v58 == v67);
              v68 = &v60[v37 - 4];
            }

            else
            {
              v62 = v76;
              v68 = v42;
            }

            *v68 = v58 + 1;
            v79 = v41[v62] + v59;
          }

          ++v38;
          ++v43;
        }

        while (v38 != v27);
      }

      v28 = v70 + 1;
      v71 += v27 * v21;
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

void sub_25A4508F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
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

void mlx::core::gather_axis<half,long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v69 = v23;
    v36 = 2 * v19;
    v37 = 8 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v73 = v87 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v72 = v80 - 8;
    do
    {
      v70 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v89;
        v42 = v91 + 4 * v78;
        v43 = v82;
        v74 = __p;
        v75 = v91;
        v44 = __p + 4 * v34;
        v45 = v71;
        do
        {
          if (v20 >= 1)
          {
            v46 = (v77 + 8 * v29);
            v47 = v20;
            v48 = v45;
            do
            {
              *v48 = *(v76 + 2 * v32 + 2 * ((v28 & (*v46 >> 63)) + *v46) * v18);
              v48 = (v48 + v36);
              v46 = (v46 + v37);
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
                v86 = v29;
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
            v86 = v29;
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
                v79 = v32;
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
            v79 = v32;
          }

          ++v40;
          ++v45;
        }

        while (v40 != v26);
      }

      v27 = v70 + 1;
      v71 += v26 * v20;
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

void sub_25A450EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
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

void mlx::core::gather_axis<float,long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v69 = v23;
    v36 = 4 * v19;
    v37 = 8 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v73 = v87 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v72 = v80 - 8;
    do
    {
      v70 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v89;
        v42 = v91 + 4 * v78;
        v43 = v82;
        v74 = __p;
        v75 = v91;
        v44 = __p + 4 * v34;
        v45 = v71;
        do
        {
          if (v20 >= 1)
          {
            v46 = (v77 + 8 * v29);
            v47 = v20;
            v48 = v45;
            do
            {
              *v48 = *(v76 + 4 * v32 + 4 * ((v28 & (*v46 >> 63)) + *v46) * v18);
              v48 = (v48 + v36);
              v46 = (v46 + v37);
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
                v86 = v29;
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
            v86 = v29;
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
                v79 = v32;
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
            v79 = v32;
          }

          ++v40;
          ++v45;
        }

        while (v40 != v26);
      }

      v27 = v70 + 1;
      v71 += v26 * v20;
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

void sub_25A4514EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
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

void mlx::core::gather_axis<double,long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v69 = v23;
    v36 = 8 * v19;
    v37 = 8 * v17;
    v38 = 4 * (v30 & 0x7FFFFFFF);
    v73 = v87 - 8;
    v39 = 4 * (v33 & 0x7FFFFFFF);
    v72 = v80 - 8;
    do
    {
      v70 = v27;
      if (v26)
      {
        v40 = 0;
        v41 = v89;
        v42 = v91 + 4 * v78;
        v43 = v82;
        v74 = __p;
        v75 = v91;
        v44 = __p + 4 * v34;
        v45 = v71;
        do
        {
          if (v20 >= 1)
          {
            v46 = (v77 + 8 * v29);
            v47 = v20;
            v48 = v45;
            do
            {
              *v48 = *(v76 + 8 * v32 + 8 * ((v28 & (*v46 >> 63)) + *v46) * v18);
              v48 = (v48 + v36);
              v46 = (v46 + v37);
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
                v86 = v29;
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
            v86 = v29;
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
                v79 = v32;
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
            v79 = v32;
          }

          ++v40;
          ++v45;
        }

        while (v40 != v26);
      }

      v27 = v70 + 1;
      v71 += v26 * v20;
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

void sub_25A451AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
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

void mlx::core::gather_axis<mlx::core::complex64_t,long long>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  v24 = mlx::core::array::shape(a1, a4);
  v69 = v22;
  v70 = v20;
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
              *v36 = *(v18 + 8 * v71 + 8 * ((v31 & (*(v35 + 8 * v78) >> 63)) + *(v35 + 8 * v78)) * v21);
              v36 += v69;
              v35 += 8 * v70;
              --v34;
            }

            while (v34);
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

void sub_25A452078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
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

void *std::__function::__func<std::__bind<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF6440;
  v2 = (a1 + 2);
  mlx::core::array::~array((a1 + 6));
  mlx::core::array::~array((a1 + 4));
  mlx::core::array::~array(v2);
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF6440;
  v2 = (a1 + 2);
  mlx::core::array::~array((a1 + 6));
  mlx::core::array::~array((a1 + 4));
  mlx::core::array::~array(v2);

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BF6440;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 56);
  *(a2 + 48) = *(result + 48);
  *(a2 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 68) = 0;
  *(a2 + 65) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 48));
  mlx::core::array::~array((a1 + 32));

  mlx::core::array::~array((a1 + 16));
}

void std::__function::__func<std::__bind<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 48));
  mlx::core::array::~array((a1 + 32));
  mlx::core::array::~array((a1 + 16));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::cpu::CommandEncoder::dispatch<mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>(mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0 &&)::{lambda(void)#1}::~dispatch(uint64_t a1)
{
  mlx::core::array::~array((a1 + 88));
  v4 = (a1 + 64);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
  mlx::core::array::~array((a1 + 48));
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_7Scatter8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(uint64_t a1)
{
  *a1 = &unk_286BF6538;
  mlx::core::array::~array((a1 + 96));
  v4 = (a1 + 72);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
  mlx::core::array::~array((a1 + 56));
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_7Scatter8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_286BF6538;
  mlx::core::array::~array((a1 + 96));
  v4 = (a1 + 72);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
  mlx::core::array::~array((a1 + 56));
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return MEMORY[0x25F851760](a1, 0x10B1C408FDB4EEELL);
}

void sub_25A45260C(_Unwind_Exception *a1)
{
  mlx::core::array::~array(v3);
  v5 = *v2;
  if (*v2)
  {
    v1[4] = v5;
    operator delete(v5);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_7Scatter8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF6538;
  v4 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 24, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  result = std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a2 + 72, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 4);
  v8 = *(a1 + 104);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 104) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_25A452714(_Unwind_Exception *a1)
{
  mlx::core::array::~array(v3);
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_7Scatter8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 96));
  v3 = (a1 + 72);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  mlx::core::array::~array((a1 + 56));
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_7Scatter8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 96));
  v3 = (a1 + 72);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  mlx::core::array::~array((a1 + 56));
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_7Scatter8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  std::__bind<mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_7Scatter8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v3 = *(a1 + 72);
  v2 = (a1 + 72);
  switch(*(v3 + 56))
  {
    case 0:
      mlx::core::dispatch_scatter<BOOL>(v2, (a1 + 48), (a1 + 32), a1, *(a1 + 24));
      break;
    case 1:
      mlx::core::dispatch_scatter<unsigned char>(v2, (a1 + 48), (a1 + 32), a1, *(a1 + 24));
      break;
    case 2:
      mlx::core::dispatch_scatter<unsigned short>(v2, (a1 + 48), (a1 + 32), a1, *(a1 + 24));
      break;
    case 3:
      mlx::core::dispatch_scatter<unsigned int>(v2, (a1 + 48), (a1 + 32), a1, *(a1 + 24));
      break;
    case 4:
      mlx::core::dispatch_scatter<unsigned long long>(v2, (a1 + 48), (a1 + 32), a1, *(a1 + 24));
      break;
    case 5:
      mlx::core::dispatch_scatter<signed char>(v2, (a1 + 48), (a1 + 32), a1, *(a1 + 24));
      break;
    case 6:
      mlx::core::dispatch_scatter<short>(v2, (a1 + 48), (a1 + 32), a1, *(a1 + 24));
      break;
    case 7:
      mlx::core::dispatch_scatter<int>(v2, (a1 + 48), (a1 + 32), a1, *(a1 + 24));
      break;
    case 8:
      mlx::core::dispatch_scatter<long long>(v2, (a1 + 48), (a1 + 32), a1, *(a1 + 24));
      break;
    case 9:
      mlx::core::dispatch_scatter<half>(v2, (a1 + 48), (a1 + 32), a1, *(a1 + 24));
      break;
    case 0xA:
      mlx::core::dispatch_scatter<float>(v2, (a1 + 48), (a1 + 32), a1, *(a1 + 24));
      break;
    case 0xB:
      mlx::core::dispatch_scatter<double>(v2, (a1 + 48), (a1 + 32), a1, *(a1 + 24));
      break;
    case 0xC:
      mlx::core::dispatch_scatter<mlx::core::_MLX_BFloat16>(v2, (a1 + 48), (a1 + 32), a1, *(a1 + 24));
      break;
    case 0xD:
      mlx::core::dispatch_scatter<mlx::core::complex64_t>(v2, (a1 + 48), (a1 + 32), a1, *(a1 + 24));
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_scatter<BOOL>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (*a2 == a2[1])
  {
LABEL_9:

    mlx::core::dispatch_scatter_inds<BOOL,unsigned char>(a1, a2, a3, a4, a5);
    return;
  }

  v5 = *(**a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_inds<BOOL,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_35;
        }

        mlx::core::dispatch_scatter_inds<BOOL,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_inds<BOOL,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<BOOL,short>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 <= 2)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {

          mlx::core::dispatch_scatter_inds<BOOL,unsigned short>(a1, a2, a3, a4, a5);
          return;
        }

LABEL_35:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[Scatter::eval_cpu] Cannot scatter with indices type.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_9;
    }

    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_inds<BOOL,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<BOOL,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }
}

void mlx::core::dispatch_scatter<unsigned char>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (*a2 == a2[1])
  {
LABEL_9:

    mlx::core::dispatch_scatter_inds<unsigned char,unsigned char>(a1, a2, a3, a4, a5);
    return;
  }

  v5 = *(**a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_inds<unsigned char,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_35;
        }

        mlx::core::dispatch_scatter_inds<unsigned char,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_inds<unsigned char,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<unsigned char,short>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 <= 2)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {

          mlx::core::dispatch_scatter_inds<unsigned char,unsigned short>(a1, a2, a3, a4, a5);
          return;
        }

LABEL_35:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[Scatter::eval_cpu] Cannot scatter with indices type.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_9;
    }

    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_inds<unsigned char,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<unsigned char,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }
}

void mlx::core::dispatch_scatter<unsigned short>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (*a2 == a2[1])
  {
LABEL_9:

    mlx::core::dispatch_scatter_inds<unsigned short,unsigned char>(a1, a2, a3, a4, a5);
    return;
  }

  v5 = *(**a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_inds<unsigned short,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_35;
        }

        mlx::core::dispatch_scatter_inds<unsigned short,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_inds<unsigned short,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<unsigned short,short>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 <= 2)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {

          mlx::core::dispatch_scatter_inds<unsigned short,unsigned short>(a1, a2, a3, a4, a5);
          return;
        }

LABEL_35:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[Scatter::eval_cpu] Cannot scatter with indices type.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_9;
    }

    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_inds<unsigned short,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<unsigned short,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }
}

void mlx::core::dispatch_scatter<unsigned int>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (*a2 == a2[1])
  {
LABEL_9:

    mlx::core::dispatch_scatter_inds<unsigned int,unsigned char>(a1, a2, a3, a4, a5);
    return;
  }

  v5 = *(**a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_inds<unsigned int,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_35;
        }

        mlx::core::dispatch_scatter_inds<unsigned int,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_inds<unsigned int,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<unsigned int,short>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 <= 2)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {

          mlx::core::dispatch_scatter_inds<unsigned int,unsigned short>(a1, a2, a3, a4, a5);
          return;
        }

LABEL_35:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[Scatter::eval_cpu] Cannot scatter with indices type.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_9;
    }

    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_inds<unsigned int,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<unsigned int,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }
}

void mlx::core::dispatch_scatter<unsigned long long>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (*a2 == a2[1])
  {
LABEL_9:

    mlx::core::dispatch_scatter_inds<unsigned long long,unsigned char>(a1, a2, a3, a4, a5);
    return;
  }

  v5 = *(**a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_inds<unsigned long long,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_35;
        }

        mlx::core::dispatch_scatter_inds<unsigned long long,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_inds<unsigned long long,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<unsigned long long,short>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 <= 2)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {

          mlx::core::dispatch_scatter_inds<unsigned long long,unsigned short>(a1, a2, a3, a4, a5);
          return;
        }

LABEL_35:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[Scatter::eval_cpu] Cannot scatter with indices type.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_9;
    }

    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_inds<unsigned long long,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<unsigned long long,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }
}

void mlx::core::dispatch_scatter<signed char>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (*a2 == a2[1])
  {
LABEL_9:

    mlx::core::dispatch_scatter_inds<signed char,unsigned char>(a1, a2, a3, a4, a5);
    return;
  }

  v5 = *(**a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_inds<signed char,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_35;
        }

        mlx::core::dispatch_scatter_inds<signed char,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_inds<signed char,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<signed char,short>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 <= 2)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {

          mlx::core::dispatch_scatter_inds<signed char,unsigned short>(a1, a2, a3, a4, a5);
          return;
        }

LABEL_35:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[Scatter::eval_cpu] Cannot scatter with indices type.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_9;
    }

    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_inds<signed char,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<signed char,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }
}

void mlx::core::dispatch_scatter<short>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (*a2 == a2[1])
  {
LABEL_9:

    mlx::core::dispatch_scatter_inds<short,unsigned char>(a1, a2, a3, a4, a5);
    return;
  }

  v5 = *(**a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_inds<short,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_35;
        }

        mlx::core::dispatch_scatter_inds<short,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_inds<short,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<short,short>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 <= 2)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {

          mlx::core::dispatch_scatter_inds<short,unsigned short>(a1, a2, a3, a4, a5);
          return;
        }

LABEL_35:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[Scatter::eval_cpu] Cannot scatter with indices type.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_9;
    }

    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_inds<short,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<short,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }
}

void mlx::core::dispatch_scatter<int>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (*a2 == a2[1])
  {
LABEL_9:

    mlx::core::dispatch_scatter_inds<int,unsigned char>(a1, a2, a3, a4, a5);
    return;
  }

  v5 = *(**a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_inds<int,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_35;
        }

        mlx::core::dispatch_scatter_inds<int,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_inds<int,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<int,short>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 <= 2)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {

          mlx::core::dispatch_scatter_inds<int,unsigned short>(a1, a2, a3, a4, a5);
          return;
        }

LABEL_35:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[Scatter::eval_cpu] Cannot scatter with indices type.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_9;
    }

    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_inds<int,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<int,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }
}

void mlx::core::dispatch_scatter<long long>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (*a2 == a2[1])
  {
LABEL_9:

    mlx::core::dispatch_scatter_inds<long long,unsigned char>(a1, a2, a3, a4, a5);
    return;
  }

  v5 = *(**a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_inds<long long,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_35;
        }

        mlx::core::dispatch_scatter_inds<long long,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_inds<long long,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<long long,short>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 <= 2)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {

          mlx::core::dispatch_scatter_inds<long long,unsigned short>(a1, a2, a3, a4, a5);
          return;
        }

LABEL_35:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[Scatter::eval_cpu] Cannot scatter with indices type.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_9;
    }

    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_inds<long long,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<long long,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }
}

void mlx::core::dispatch_scatter<half>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (*a2 == a2[1])
  {
LABEL_9:

    mlx::core::dispatch_scatter_inds<half,unsigned char>(a1, a2, a3, a4, a5);
    return;
  }

  v5 = *(**a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_inds<half,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_35;
        }

        mlx::core::dispatch_scatter_inds<half,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_inds<half,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<half,short>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 <= 2)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {

          mlx::core::dispatch_scatter_inds<half,unsigned short>(a1, a2, a3, a4, a5);
          return;
        }

LABEL_35:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[Scatter::eval_cpu] Cannot scatter with indices type.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_9;
    }

    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_inds<half,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<half,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }
}

void mlx::core::dispatch_scatter<float>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (*a2 == a2[1])
  {
LABEL_9:

    mlx::core::dispatch_scatter_inds<float,unsigned char>(a1, a2, a3, a4, a5);
    return;
  }

  v5 = *(**a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_inds<float,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_35;
        }

        mlx::core::dispatch_scatter_inds<float,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_inds<float,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<float,short>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 <= 2)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {

          mlx::core::dispatch_scatter_inds<float,unsigned short>(a1, a2, a3, a4, a5);
          return;
        }

LABEL_35:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[Scatter::eval_cpu] Cannot scatter with indices type.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_9;
    }

    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_inds<float,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<float,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }
}

void mlx::core::dispatch_scatter<double>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (*a2 == a2[1])
  {
LABEL_9:

    mlx::core::dispatch_scatter_inds<double,unsigned char>(a1, a2, a3, a4, a5);
    return;
  }

  v5 = *(**a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_inds<double,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_35;
        }

        mlx::core::dispatch_scatter_inds<double,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_inds<double,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<double,short>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 <= 2)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {

          mlx::core::dispatch_scatter_inds<double,unsigned short>(a1, a2, a3, a4, a5);
          return;
        }

LABEL_35:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[Scatter::eval_cpu] Cannot scatter with indices type.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_9;
    }

    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_inds<double,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<double,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }
}

void mlx::core::dispatch_scatter<mlx::core::_MLX_BFloat16>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (*a2 == a2[1])
  {
LABEL_9:

    mlx::core::dispatch_scatter_inds<mlx::core::_MLX_BFloat16,unsigned char>(a1, a2, a3, a4, a5);
    return;
  }

  v5 = *(**a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_inds<mlx::core::_MLX_BFloat16,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_35;
        }

        mlx::core::dispatch_scatter_inds<mlx::core::_MLX_BFloat16,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_inds<mlx::core::_MLX_BFloat16,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<mlx::core::_MLX_BFloat16,short>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 <= 2)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {

          mlx::core::dispatch_scatter_inds<mlx::core::_MLX_BFloat16,unsigned short>(a1, a2, a3, a4, a5);
          return;
        }

LABEL_35:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[Scatter::eval_cpu] Cannot scatter with indices type.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_9;
    }

    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_inds<mlx::core::_MLX_BFloat16,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<mlx::core::_MLX_BFloat16,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }
}

void mlx::core::dispatch_scatter<mlx::core::complex64_t>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (*a2 == a2[1])
  {
LABEL_9:

    mlx::core::dispatch_scatter_inds<mlx::core::complex64_t,unsigned char>(a1, a2, a3, a4, a5);
    return;
  }

  v5 = *(**a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_inds<mlx::core::complex64_t,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_35;
        }

        mlx::core::dispatch_scatter_inds<mlx::core::complex64_t,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_inds<mlx::core::complex64_t,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<mlx::core::complex64_t,short>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 <= 2)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {

          mlx::core::dispatch_scatter_inds<mlx::core::complex64_t,unsigned short>(a1, a2, a3, a4, a5);
          return;
        }

LABEL_35:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[Scatter::eval_cpu] Cannot scatter with indices type.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_9;
    }

    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_inds<mlx::core::complex64_t,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_inds<mlx::core::complex64_t,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }
}

void mlx::core::dispatch_scatter_inds<BOOL,unsigned char>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (!a5)
    {
      mlx::core::scatter<BOOL,unsigned char,mlx::core::Max>(a3, a1, a2, a4);
      return;
    }

    if (a5 != 1)
    {
      return;
    }

    v7 = a3;
    v8 = a2;
LABEL_9:
    mlx::core::scatter<BOOL,unsigned char,mlx::core::Prod>(v7, a1, v8, a4);
    return;
  }

  switch(a5)
  {
    case 2:
      mlx::core::scatter<BOOL,unsigned char,mlx::core::Sum>(a3, a1, a2, a4);
      return;
    case 3:
      v7 = a3;
      v8 = a2;
      goto LABEL_9;
    case 4:
      mlx::core::scatter<BOOL,unsigned char,mlx::core::None>(a3, a1, a2, a4);
      break;
  }
}

void mlx::core::dispatch_scatter_inds<BOOL,unsigned short>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (!a5)
    {
      mlx::core::scatter<BOOL,unsigned short,mlx::core::Max>(a3, a1, a2, a4);
      return;
    }

    if (a5 != 1)
    {
      return;
    }

    v7 = a3;
    v8 = a2;
LABEL_9:
    mlx::core::scatter<BOOL,unsigned short,mlx::core::Prod>(v7, a1, v8, a4);
    return;
  }

  switch(a5)
  {
    case 2:
      mlx::core::scatter<BOOL,unsigned short,mlx::core::Sum>(a3, a1, a2, a4);
      return;
    case 3:
      v7 = a3;
      v8 = a2;
      goto LABEL_9;
    case 4:
      mlx::core::scatter<BOOL,unsigned short,mlx::core::None>(a3, a1, a2, a4);
      break;
  }
}

void mlx::core::dispatch_scatter_inds<BOOL,unsigned int>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (!a5)
    {
      mlx::core::scatter<BOOL,unsigned int,mlx::core::Max>(a3, a1, a2, a4);
      return;
    }

    if (a5 != 1)
    {
      return;
    }

    v7 = a3;
    v8 = a2;
LABEL_9:
    mlx::core::scatter<BOOL,unsigned int,mlx::core::Prod>(v7, a1, v8, a4);
    return;
  }

  switch(a5)
  {
    case 2:
      mlx::core::scatter<BOOL,unsigned int,mlx::core::Sum>(a3, a1, a2, a4);
      return;
    case 3:
      v7 = a3;
      v8 = a2;
      goto LABEL_9;
    case 4:
      mlx::core::scatter<BOOL,unsigned int,mlx::core::None>(a3, a1, a2, a4);
      break;
  }
}

void mlx::core::dispatch_scatter_inds<BOOL,unsigned long long>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (!a5)
    {
      mlx::core::scatter<BOOL,unsigned long long,mlx::core::Max>(a3, a1, a2, a4);
      return;
    }

    if (a5 != 1)
    {
      return;
    }

    v7 = a3;
    v8 = a2;
LABEL_9:
    mlx::core::scatter<BOOL,unsigned long long,mlx::core::Prod>(v7, a1, v8, a4);
    return;
  }

  switch(a5)
  {
    case 2:
      mlx::core::scatter<BOOL,unsigned long long,mlx::core::Sum>(a3, a1, a2, a4);
      return;
    case 3:
      v7 = a3;
      v8 = a2;
      goto LABEL_9;
    case 4:
      mlx::core::scatter<BOOL,unsigned long long,mlx::core::None>(a3, a1, a2, a4);
      break;
  }
}

void mlx::core::dispatch_scatter_inds<BOOL,signed char>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (!a5)
    {
      mlx::core::scatter<BOOL,signed char,mlx::core::Max>(a3, a1, a2, a4);
      return;
    }

    if (a5 != 1)
    {
      return;
    }

    v7 = a3;
    v8 = a2;
LABEL_9:
    mlx::core::scatter<BOOL,signed char,mlx::core::Prod>(v7, a1, v8, a4);
    return;
  }

  switch(a5)
  {
    case 2:
      mlx::core::scatter<BOOL,signed char,mlx::core::Sum>(a3, a1, a2, a4);
      return;
    case 3:
      v7 = a3;
      v8 = a2;
      goto LABEL_9;
    case 4:
      mlx::core::scatter<BOOL,signed char,mlx::core::None>(a3, a1, a2, a4);
      break;
  }
}

void mlx::core::dispatch_scatter_inds<BOOL,short>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (!a5)
    {
      mlx::core::scatter<BOOL,short,mlx::core::Max>(a3, a1, a2, a4);
      return;
    }

    if (a5 != 1)
    {
      return;
    }

    v7 = a3;
    v8 = a2;
LABEL_9:
    mlx::core::scatter<BOOL,short,mlx::core::Prod>(v7, a1, v8, a4);
    return;
  }

  switch(a5)
  {
    case 2:
      mlx::core::scatter<BOOL,short,mlx::core::Sum>(a3, a1, a2, a4);
      return;
    case 3:
      v7 = a3;
      v8 = a2;
      goto LABEL_9;
    case 4:
      mlx::core::scatter<BOOL,short,mlx::core::None>(a3, a1, a2, a4);
      break;
  }
}

void mlx::core::dispatch_scatter_inds<BOOL,int>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (!a5)
    {
      mlx::core::scatter<BOOL,int,mlx::core::Max>(a3, a1, a2, a4);
      return;
    }

    if (a5 != 1)
    {
      return;
    }

    v7 = a3;
    v8 = a2;
LABEL_9:
    mlx::core::scatter<BOOL,int,mlx::core::Prod>(v7, a1, v8, a4);
    return;
  }

  switch(a5)
  {
    case 2:
      mlx::core::scatter<BOOL,int,mlx::core::Sum>(a3, a1, a2, a4);
      return;
    case 3:
      v7 = a3;
      v8 = a2;
      goto LABEL_9;
    case 4:
      mlx::core::scatter<BOOL,int,mlx::core::None>(a3, a1, a2, a4);
      break;
  }
}

void mlx::core::dispatch_scatter_inds<BOOL,long long>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (!a5)
    {
      mlx::core::scatter<BOOL,long long,mlx::core::Max>(a3, a1, a2, a4);
      return;
    }

    if (a5 != 1)
    {
      return;
    }

    v7 = a3;
    v8 = a2;
LABEL_9:
    mlx::core::scatter<BOOL,long long,mlx::core::Prod>(v7, a1, v8, a4);
    return;
  }

  switch(a5)
  {
    case 2:
      mlx::core::scatter<BOOL,long long,mlx::core::Sum>(a3, a1, a2, a4);
      return;
    case 3:
      v7 = a3;
      v8 = a2;
      goto LABEL_9;
    case 4:
      mlx::core::scatter<BOOL,long long,mlx::core::None>(a3, a1, a2, a4);
      break;
  }
}

void mlx::core::scatter<BOOL,unsigned char,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v81 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v102, v12, v10, (v10 - v12) >> 2);
  v13 = v102;
  v14 = 1;
  while (v13 != v103)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v101, 0, sizeof(v101));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v101, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v94, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v102, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v81)
  {
    v82 = 0;
    v80 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v101[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v94, v82 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v80 + v22;
        v45 = v94;
        v46 = v97;
        v47 = (v96 - v95) >> 2;
        v48 = (((v96 - v95) << 30) - 0x100000000) >> 32;
        v49 = v99 + 4 * v48;
        v50 = v95 + 4 * v48;
        v86 = v99;
        v51 = v87;
        v52 = __p;
        v53 = (v89 - v88) >> 2;
        v54 = (((v89 - v88) << 30) - 0x100000000) >> 32;
        v85 = v92;
        v55 = &v92[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v83 = v88 - 8;
        v84 = v95 - 8;
        v58 = v88 + 4 * v54;
        do
        {
          *(v44 + v51) = *(v45 + v19);
          if (v47)
          {
            v59 = *v49;
            if (v47 >= 2 && v59 == *v50 - 1)
            {
              v61 = (v47 & 0x7FFFFFFF) - 1;
              v60 = v86;
              v62 = v84;
              v63 = v50;
              v64 = v49;
              v65 = v48;
              do
              {
                v66 = v61;
                *v64 = 0;
                v45 = (v45 - v46[v65] * (*v63 - 1));
                v94 = v45;
                --v61;
                v64 = &v60[v56 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v62[v56];
                v67 = *&v62[4 * (v47 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v65 = v61;
              }

              while (v59 == v67);
              v68 = &v60[v56 - 4];
            }

            else
            {
              v61 = v48;
              v68 = v49;
            }

            *v68 = v59 + 1;
            v45 = (v45 + v46[v61]);
            v94 = v45;
          }

          if (v53)
          {
            v69 = *v55;
            if (v53 >= 2 && v69 == *v58 - 1)
            {
              v71 = (v53 & 0x7FFFFFFF) - 1;
              v70 = v85;
              v72 = v83;
              v73 = v58;
              v74 = v55;
              v75 = v54;
              do
              {
                v76 = v71;
                *v74 = 0;
                v51 -= v52[v75] * (*v73 - 1);
                v87 = v51;
                --v71;
                v74 = &v70[v57 - 8];
                v69 = *v74;
                v70 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v73 = &v72[v57];
                v77 = *&v72[4 * (v53 & 0x7FFFFFFF)] - 1;
                v72 -= 4;
                v75 = v71;
              }

              while (v69 == v77);
              v78 = &v70[v57 - 4];
            }

            else
            {
              v71 = v54;
              v78 = v55;
            }

            *v78 = v69 + 1;
            v51 += v52[v71];
            v87 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v87 = 0;
      v79 = v92;
      if (v93 - v92 >= 1)
      {
        bzero(v92, v93 - v92);
      }

      v94 = 0;
      if (v100 - v99 >= 1)
      {
        bzero(v99, v100 - v99);
      }

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v79 = v92;
    if (v92)
    {
LABEL_52:
      v93 = v79;
      operator delete(v79);
    }
  }

  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  v94 = v101;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v94);
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }
}

void sub_25A4549FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<BOOL,unsigned char,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v81 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v102, v12, v10, (v10 - v12) >> 2);
  v13 = v102;
  v14 = 1;
  while (v13 != v103)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v101, 0, sizeof(v101));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v101, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v94, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v102, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v81)
  {
    v82 = 0;
    v80 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v101[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v94, v82 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v80 + v22;
        v45 = v94;
        v46 = v97;
        v47 = (v96 - v95) >> 2;
        v48 = (((v96 - v95) << 30) - 0x100000000) >> 32;
        v49 = v99 + 4 * v48;
        v50 = v95 + 4 * v48;
        v86 = v99;
        v51 = v87;
        v52 = __p;
        v53 = (v89 - v88) >> 2;
        v54 = (((v89 - v88) << 30) - 0x100000000) >> 32;
        v85 = v92;
        v55 = &v92[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v83 = v88 - 8;
        v84 = v95 - 8;
        v58 = v88 + 4 * v54;
        do
        {
          *(v44 + v51) |= *(v45 + v19);
          if (v47)
          {
            v59 = *v49;
            if (v47 >= 2 && v59 == *v50 - 1)
            {
              v61 = (v47 & 0x7FFFFFFF) - 1;
              v60 = v86;
              v62 = v84;
              v63 = v50;
              v64 = v49;
              v65 = v48;
              do
              {
                v66 = v61;
                *v64 = 0;
                v45 = (v45 - v46[v65] * (*v63 - 1));
                v94 = v45;
                --v61;
                v64 = &v60[v56 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v62[v56];
                v67 = *&v62[4 * (v47 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v65 = v61;
              }

              while (v59 == v67);
              v68 = &v60[v56 - 4];
            }

            else
            {
              v61 = v48;
              v68 = v49;
            }

            *v68 = v59 + 1;
            v45 = (v45 + v46[v61]);
            v94 = v45;
          }

          if (v53)
          {
            v69 = *v55;
            if (v53 >= 2 && v69 == *v58 - 1)
            {
              v71 = (v53 & 0x7FFFFFFF) - 1;
              v70 = v85;
              v72 = v83;
              v73 = v58;
              v74 = v55;
              v75 = v54;
              do
              {
                v76 = v71;
                *v74 = 0;
                v51 -= v52[v75] * (*v73 - 1);
                v87 = v51;
                --v71;
                v74 = &v70[v57 - 8];
                v69 = *v74;
                v70 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v73 = &v72[v57];
                v77 = *&v72[4 * (v53 & 0x7FFFFFFF)] - 1;
                v72 -= 4;
                v75 = v71;
              }

              while (v69 == v77);
              v78 = &v70[v57 - 4];
            }

            else
            {
              v71 = v54;
              v78 = v55;
            }

            *v78 = v69 + 1;
            v51 += v52[v71];
            v87 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v87 = 0;
      v79 = v92;
      if (v93 - v92 >= 1)
      {
        bzero(v92, v93 - v92);
      }

      v94 = 0;
      if (v100 - v99 >= 1)
      {
        bzero(v99, v100 - v99);
      }

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v79 = v92;
    if (v92)
    {
LABEL_52:
      v93 = v79;
      operator delete(v79);
    }
  }

  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  v94 = v101;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v94);
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }
}

void sub_25A454FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<BOOL,unsigned char,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v81 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v102, v12, v10, (v10 - v12) >> 2);
  v13 = v102;
  v14 = 1;
  while (v13 != v103)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v101, 0, sizeof(v101));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v101, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v94, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v102, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v81)
  {
    v82 = 0;
    v80 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v101[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v94, v82 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v80 + v22;
        v45 = v94;
        v46 = v97;
        v47 = (v96 - v95) >> 2;
        v48 = (((v96 - v95) << 30) - 0x100000000) >> 32;
        v49 = v99 + 4 * v48;
        v50 = v95 + 4 * v48;
        v86 = v99;
        v51 = v87;
        v52 = __p;
        v53 = (v89 - v88) >> 2;
        v54 = (((v89 - v88) << 30) - 0x100000000) >> 32;
        v85 = v92;
        v55 = &v92[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v83 = v88 - 8;
        v84 = v95 - 8;
        v58 = v88 + 4 * v54;
        do
        {
          *(v44 + v51) &= *(v45 + v19);
          if (v47)
          {
            v59 = *v49;
            if (v47 >= 2 && v59 == *v50 - 1)
            {
              v61 = (v47 & 0x7FFFFFFF) - 1;
              v60 = v86;
              v62 = v84;
              v63 = v50;
              v64 = v49;
              v65 = v48;
              do
              {
                v66 = v61;
                *v64 = 0;
                v45 = (v45 - v46[v65] * (*v63 - 1));
                v94 = v45;
                --v61;
                v64 = &v60[v56 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v62[v56];
                v67 = *&v62[4 * (v47 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v65 = v61;
              }

              while (v59 == v67);
              v68 = &v60[v56 - 4];
            }

            else
            {
              v61 = v48;
              v68 = v49;
            }

            *v68 = v59 + 1;
            v45 = (v45 + v46[v61]);
            v94 = v45;
          }

          if (v53)
          {
            v69 = *v55;
            if (v53 >= 2 && v69 == *v58 - 1)
            {
              v71 = (v53 & 0x7FFFFFFF) - 1;
              v70 = v85;
              v72 = v83;
              v73 = v58;
              v74 = v55;
              v75 = v54;
              do
              {
                v76 = v71;
                *v74 = 0;
                v51 -= v52[v75] * (*v73 - 1);
                v87 = v51;
                --v71;
                v74 = &v70[v57 - 8];
                v69 = *v74;
                v70 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v73 = &v72[v57];
                v77 = *&v72[4 * (v53 & 0x7FFFFFFF)] - 1;
                v72 -= 4;
                v75 = v71;
              }

              while (v69 == v77);
              v78 = &v70[v57 - 4];
            }

            else
            {
              v71 = v54;
              v78 = v55;
            }

            *v78 = v69 + 1;
            v51 += v52[v71];
            v87 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v87 = 0;
      v79 = v92;
      if (v93 - v92 >= 1)
      {
        bzero(v92, v93 - v92);
      }

      v94 = 0;
      if (v100 - v99 >= 1)
      {
        bzero(v99, v100 - v99);
      }

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v79 = v92;
    if (v92)
    {
LABEL_52:
      v93 = v79;
      operator delete(v79);
    }
  }

  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  v94 = v101;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v94);
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }
}

void sub_25A455574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<BOOL,unsigned char,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v103, v12, v10, (v10 - v12) >> 2);
  v13 = v103;
  v14 = 1;
  while (v13 != v104)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v102, 0, sizeof(v102));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v102, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v95, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v103, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v83 = 0;
    v81 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v102[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + v22;
        v45 = v95;
        v46 = v98;
        v47 = (v97 - v96) >> 2;
        v48 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v49 = v100 + 4 * v48;
        v50 = v96 + 4 * v48;
        v87 = v100;
        v51 = v88;
        v52 = __p;
        v53 = (v90 - v89) >> 2;
        v54 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v55 = &v93[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v58 = v89 + 4 * v54;
        do
        {
          v59 = *(v45 + v19);
          if (*(v44 + v51) > v59)
          {
            LOBYTE(v59) = *(v44 + v51);
          }

          *(v44 + v51) = v59;
          if (v47)
          {
            v60 = *v49;
            if (v47 >= 2 && v60 == *v50 - 1)
            {
              v62 = (v47 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v50;
              v65 = v49;
              v66 = v48;
              do
              {
                v67 = v62;
                *v65 = 0;
                v45 = (v45 - v46[v66] * (*v64 - 1));
                v95 = v45;
                --v62;
                v65 = &v61[v56 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v47 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v48;
              v69 = v49;
            }

            *v69 = v60 + 1;
            v45 = (v45 + v46[v62]);
            v95 = v45;
          }

          if (v53)
          {
            v70 = *v55;
            if (v53 >= 2 && v70 == *v58 - 1)
            {
              v72 = (v53 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v58;
              v75 = v55;
              v76 = v54;
              do
              {
                v77 = v72;
                *v75 = 0;
                v51 -= v52[v76] * (*v74 - 1);
                v88 = v51;
                --v72;
                v75 = &v71[v57 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v57];
                v78 = *&v73[4 * (v53 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v57 - 4];
            }

            else
            {
              v72 = v54;
              v79 = v55;
            }

            *v79 = v70 + 1;
            v51 += v52[v72];
            v88 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v88 = 0;
      v80 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      ++v83;
    }

    while (v83 != v82);
    if (v80)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v80 = v93;
    if (v93)
    {
LABEL_54:
      v94 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  v95 = v102;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v95);
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }
}

void sub_25A455B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void *mlx::core::ContiguousIterator::seek(void *this, uint64_t quot)
{
  *this = 0;
  v2 = this[1];
  v3 = (this[2] - v2) >> 2;
  v4 = (v3 - 1);
  if (v3 - 1 >= 0)
  {
    v6 = this;
    v7 = 0;
    v8 = this[4];
    v9 = this[7];
    do
    {
      v10 = ldiv(quot, *(v2 + 4 * v4));
      this = v10.quot;
      quot = v10.quot;
      v7 += *(v8 + 8 * v4) * v10.rem;
      *v6 = v7;
      *(v9 + 4 * v4--) = v10.rem;
    }

    while (v4 != -1);
  }

  return this;
}

void mlx::core::scatter<BOOL,unsigned short,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v81 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v102, v12, v10, (v10 - v12) >> 2);
  v13 = v102;
  v14 = 1;
  while (v13 != v103)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v101, 0, sizeof(v101));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v101, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v94, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v102, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v81)
  {
    v82 = 0;
    v80 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v101[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 2 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v94, v82 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v80 + v22;
        v45 = v94;
        v46 = v97;
        v47 = (v96 - v95) >> 2;
        v48 = (((v96 - v95) << 30) - 0x100000000) >> 32;
        v49 = v99 + 4 * v48;
        v50 = v95 + 4 * v48;
        v86 = v99;
        v51 = v87;
        v52 = __p;
        v53 = (v89 - v88) >> 2;
        v54 = (((v89 - v88) << 30) - 0x100000000) >> 32;
        v85 = v92;
        v55 = &v92[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v83 = v88 - 8;
        v84 = v95 - 8;
        v58 = v88 + 4 * v54;
        do
        {
          *(v44 + v51) = *(v45 + v19);
          if (v47)
          {
            v59 = *v49;
            if (v47 >= 2 && v59 == *v50 - 1)
            {
              v61 = (v47 & 0x7FFFFFFF) - 1;
              v60 = v86;
              v62 = v84;
              v63 = v50;
              v64 = v49;
              v65 = v48;
              do
              {
                v66 = v61;
                *v64 = 0;
                v45 = (v45 - v46[v65] * (*v63 - 1));
                v94 = v45;
                --v61;
                v64 = &v60[v56 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v62[v56];
                v67 = *&v62[4 * (v47 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v65 = v61;
              }

              while (v59 == v67);
              v68 = &v60[v56 - 4];
            }

            else
            {
              v61 = v48;
              v68 = v49;
            }

            *v68 = v59 + 1;
            v45 = (v45 + v46[v61]);
            v94 = v45;
          }

          if (v53)
          {
            v69 = *v55;
            if (v53 >= 2 && v69 == *v58 - 1)
            {
              v71 = (v53 & 0x7FFFFFFF) - 1;
              v70 = v85;
              v72 = v83;
              v73 = v58;
              v74 = v55;
              v75 = v54;
              do
              {
                v76 = v71;
                *v74 = 0;
                v51 -= v52[v75] * (*v73 - 1);
                v87 = v51;
                --v71;
                v74 = &v70[v57 - 8];
                v69 = *v74;
                v70 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v73 = &v72[v57];
                v77 = *&v72[4 * (v53 & 0x7FFFFFFF)] - 1;
                v72 -= 4;
                v75 = v71;
              }

              while (v69 == v77);
              v78 = &v70[v57 - 4];
            }

            else
            {
              v71 = v54;
              v78 = v55;
            }

            *v78 = v69 + 1;
            v51 += v52[v71];
            v87 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v87 = 0;
      v79 = v92;
      if (v93 - v92 >= 1)
      {
        bzero(v92, v93 - v92);
      }

      v94 = 0;
      if (v100 - v99 >= 1)
      {
        bzero(v99, v100 - v99);
      }

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v79 = v92;
    if (v92)
    {
LABEL_52:
      v93 = v79;
      operator delete(v79);
    }
  }

  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  v94 = v101;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v94);
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }
}

void sub_25A45616C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<BOOL,unsigned short,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v81 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v102, v12, v10, (v10 - v12) >> 2);
  v13 = v102;
  v14 = 1;
  while (v13 != v103)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v101, 0, sizeof(v101));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v101, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v94, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v102, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v81)
  {
    v82 = 0;
    v80 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v101[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 2 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v94, v82 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v80 + v22;
        v45 = v94;
        v46 = v97;
        v47 = (v96 - v95) >> 2;
        v48 = (((v96 - v95) << 30) - 0x100000000) >> 32;
        v49 = v99 + 4 * v48;
        v50 = v95 + 4 * v48;
        v86 = v99;
        v51 = v87;
        v52 = __p;
        v53 = (v89 - v88) >> 2;
        v54 = (((v89 - v88) << 30) - 0x100000000) >> 32;
        v85 = v92;
        v55 = &v92[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v83 = v88 - 8;
        v84 = v95 - 8;
        v58 = v88 + 4 * v54;
        do
        {
          *(v44 + v51) |= *(v45 + v19);
          if (v47)
          {
            v59 = *v49;
            if (v47 >= 2 && v59 == *v50 - 1)
            {
              v61 = (v47 & 0x7FFFFFFF) - 1;
              v60 = v86;
              v62 = v84;
              v63 = v50;
              v64 = v49;
              v65 = v48;
              do
              {
                v66 = v61;
                *v64 = 0;
                v45 = (v45 - v46[v65] * (*v63 - 1));
                v94 = v45;
                --v61;
                v64 = &v60[v56 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v62[v56];
                v67 = *&v62[4 * (v47 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v65 = v61;
              }

              while (v59 == v67);
              v68 = &v60[v56 - 4];
            }

            else
            {
              v61 = v48;
              v68 = v49;
            }

            *v68 = v59 + 1;
            v45 = (v45 + v46[v61]);
            v94 = v45;
          }

          if (v53)
          {
            v69 = *v55;
            if (v53 >= 2 && v69 == *v58 - 1)
            {
              v71 = (v53 & 0x7FFFFFFF) - 1;
              v70 = v85;
              v72 = v83;
              v73 = v58;
              v74 = v55;
              v75 = v54;
              do
              {
                v76 = v71;
                *v74 = 0;
                v51 -= v52[v75] * (*v73 - 1);
                v87 = v51;
                --v71;
                v74 = &v70[v57 - 8];
                v69 = *v74;
                v70 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v73 = &v72[v57];
                v77 = *&v72[4 * (v53 & 0x7FFFFFFF)] - 1;
                v72 -= 4;
                v75 = v71;
              }

              while (v69 == v77);
              v78 = &v70[v57 - 4];
            }

            else
            {
              v71 = v54;
              v78 = v55;
            }

            *v78 = v69 + 1;
            v51 += v52[v71];
            v87 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v87 = 0;
      v79 = v92;
      if (v93 - v92 >= 1)
      {
        bzero(v92, v93 - v92);
      }

      v94 = 0;
      if (v100 - v99 >= 1)
      {
        bzero(v99, v100 - v99);
      }

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v79 = v92;
    if (v92)
    {
LABEL_52:
      v93 = v79;
      operator delete(v79);
    }
  }

  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  v94 = v101;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v94);
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }
}

void sub_25A456728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<BOOL,unsigned short,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v81 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v102, v12, v10, (v10 - v12) >> 2);
  v13 = v102;
  v14 = 1;
  while (v13 != v103)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v101, 0, sizeof(v101));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v101, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v94, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v102, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v81)
  {
    v82 = 0;
    v80 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v101[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 2 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v94, v82 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v80 + v22;
        v45 = v94;
        v46 = v97;
        v47 = (v96 - v95) >> 2;
        v48 = (((v96 - v95) << 30) - 0x100000000) >> 32;
        v49 = v99 + 4 * v48;
        v50 = v95 + 4 * v48;
        v86 = v99;
        v51 = v87;
        v52 = __p;
        v53 = (v89 - v88) >> 2;
        v54 = (((v89 - v88) << 30) - 0x100000000) >> 32;
        v85 = v92;
        v55 = &v92[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v83 = v88 - 8;
        v84 = v95 - 8;
        v58 = v88 + 4 * v54;
        do
        {
          *(v44 + v51) &= *(v45 + v19);
          if (v47)
          {
            v59 = *v49;
            if (v47 >= 2 && v59 == *v50 - 1)
            {
              v61 = (v47 & 0x7FFFFFFF) - 1;
              v60 = v86;
              v62 = v84;
              v63 = v50;
              v64 = v49;
              v65 = v48;
              do
              {
                v66 = v61;
                *v64 = 0;
                v45 = (v45 - v46[v65] * (*v63 - 1));
                v94 = v45;
                --v61;
                v64 = &v60[v56 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v62[v56];
                v67 = *&v62[4 * (v47 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v65 = v61;
              }

              while (v59 == v67);
              v68 = &v60[v56 - 4];
            }

            else
            {
              v61 = v48;
              v68 = v49;
            }

            *v68 = v59 + 1;
            v45 = (v45 + v46[v61]);
            v94 = v45;
          }

          if (v53)
          {
            v69 = *v55;
            if (v53 >= 2 && v69 == *v58 - 1)
            {
              v71 = (v53 & 0x7FFFFFFF) - 1;
              v70 = v85;
              v72 = v83;
              v73 = v58;
              v74 = v55;
              v75 = v54;
              do
              {
                v76 = v71;
                *v74 = 0;
                v51 -= v52[v75] * (*v73 - 1);
                v87 = v51;
                --v71;
                v74 = &v70[v57 - 8];
                v69 = *v74;
                v70 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v73 = &v72[v57];
                v77 = *&v72[4 * (v53 & 0x7FFFFFFF)] - 1;
                v72 -= 4;
                v75 = v71;
              }

              while (v69 == v77);
              v78 = &v70[v57 - 4];
            }

            else
            {
              v71 = v54;
              v78 = v55;
            }

            *v78 = v69 + 1;
            v51 += v52[v71];
            v87 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v87 = 0;
      v79 = v92;
      if (v93 - v92 >= 1)
      {
        bzero(v92, v93 - v92);
      }

      v94 = 0;
      if (v100 - v99 >= 1)
      {
        bzero(v99, v100 - v99);
      }

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v79 = v92;
    if (v92)
    {
LABEL_52:
      v93 = v79;
      operator delete(v79);
    }
  }

  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  v94 = v101;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v94);
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }
}

void sub_25A456CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<BOOL,unsigned short,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v103, v12, v10, (v10 - v12) >> 2);
  v13 = v103;
  v14 = 1;
  while (v13 != v104)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v102, 0, sizeof(v102));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v102, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v95, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v103, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v83 = 0;
    v81 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v102[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 2 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + v22;
        v45 = v95;
        v46 = v98;
        v47 = (v97 - v96) >> 2;
        v48 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v49 = v100 + 4 * v48;
        v50 = v96 + 4 * v48;
        v87 = v100;
        v51 = v88;
        v52 = __p;
        v53 = (v90 - v89) >> 2;
        v54 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v55 = &v93[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v58 = v89 + 4 * v54;
        do
        {
          v59 = *(v45 + v19);
          if (*(v44 + v51) > v59)
          {
            LOBYTE(v59) = *(v44 + v51);
          }

          *(v44 + v51) = v59;
          if (v47)
          {
            v60 = *v49;
            if (v47 >= 2 && v60 == *v50 - 1)
            {
              v62 = (v47 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v50;
              v65 = v49;
              v66 = v48;
              do
              {
                v67 = v62;
                *v65 = 0;
                v45 = (v45 - v46[v66] * (*v64 - 1));
                v95 = v45;
                --v62;
                v65 = &v61[v56 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v47 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v48;
              v69 = v49;
            }

            *v69 = v60 + 1;
            v45 = (v45 + v46[v62]);
            v95 = v45;
          }

          if (v53)
          {
            v70 = *v55;
            if (v53 >= 2 && v70 == *v58 - 1)
            {
              v72 = (v53 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v58;
              v75 = v55;
              v76 = v54;
              do
              {
                v77 = v72;
                *v75 = 0;
                v51 -= v52[v76] * (*v74 - 1);
                v88 = v51;
                --v72;
                v75 = &v71[v57 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v57];
                v78 = *&v73[4 * (v53 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v57 - 4];
            }

            else
            {
              v72 = v54;
              v79 = v55;
            }

            *v79 = v70 + 1;
            v51 += v52[v72];
            v88 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v88 = 0;
      v80 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      ++v83;
    }

    while (v83 != v82);
    if (v80)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v80 = v93;
    if (v93)
    {
LABEL_54:
      v94 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  v95 = v102;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v95);
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }
}

void sub_25A4572A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<BOOL,unsigned int,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v81 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v102, v12, v10, (v10 - v12) >> 2);
  v13 = v102;
  v14 = 1;
  while (v13 != v103)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v101, 0, sizeof(v101));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v101, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v94, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v102, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v81)
  {
    v82 = 0;
    v80 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v101[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 4 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v94, v82 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v80 + v22;
        v45 = v94;
        v46 = v97;
        v47 = (v96 - v95) >> 2;
        v48 = (((v96 - v95) << 30) - 0x100000000) >> 32;
        v49 = v99 + 4 * v48;
        v50 = v95 + 4 * v48;
        v86 = v99;
        v51 = v87;
        v52 = __p;
        v53 = (v89 - v88) >> 2;
        v54 = (((v89 - v88) << 30) - 0x100000000) >> 32;
        v85 = v92;
        v55 = &v92[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v83 = v88 - 8;
        v84 = v95 - 8;
        v58 = v88 + 4 * v54;
        do
        {
          *(v44 + v51) = *(v45 + v19);
          if (v47)
          {
            v59 = *v49;
            if (v47 >= 2 && v59 == *v50 - 1)
            {
              v61 = (v47 & 0x7FFFFFFF) - 1;
              v60 = v86;
              v62 = v84;
              v63 = v50;
              v64 = v49;
              v65 = v48;
              do
              {
                v66 = v61;
                *v64 = 0;
                v45 = (v45 - v46[v65] * (*v63 - 1));
                v94 = v45;
                --v61;
                v64 = &v60[v56 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v62[v56];
                v67 = *&v62[4 * (v47 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v65 = v61;
              }

              while (v59 == v67);
              v68 = &v60[v56 - 4];
            }

            else
            {
              v61 = v48;
              v68 = v49;
            }

            *v68 = v59 + 1;
            v45 = (v45 + v46[v61]);
            v94 = v45;
          }

          if (v53)
          {
            v69 = *v55;
            if (v53 >= 2 && v69 == *v58 - 1)
            {
              v71 = (v53 & 0x7FFFFFFF) - 1;
              v70 = v85;
              v72 = v83;
              v73 = v58;
              v74 = v55;
              v75 = v54;
              do
              {
                v76 = v71;
                *v74 = 0;
                v51 -= v52[v75] * (*v73 - 1);
                v87 = v51;
                --v71;
                v74 = &v70[v57 - 8];
                v69 = *v74;
                v70 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v73 = &v72[v57];
                v77 = *&v72[4 * (v53 & 0x7FFFFFFF)] - 1;
                v72 -= 4;
                v75 = v71;
              }

              while (v69 == v77);
              v78 = &v70[v57 - 4];
            }

            else
            {
              v71 = v54;
              v78 = v55;
            }

            *v78 = v69 + 1;
            v51 += v52[v71];
            v87 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v87 = 0;
      v79 = v92;
      if (v93 - v92 >= 1)
      {
        bzero(v92, v93 - v92);
      }

      v94 = 0;
      if (v100 - v99 >= 1)
      {
        bzero(v99, v100 - v99);
      }

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v79 = v92;
    if (v92)
    {
LABEL_52:
      v93 = v79;
      operator delete(v79);
    }
  }

  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  v94 = v101;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v94);
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }
}

void sub_25A457858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<BOOL,unsigned int,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v81 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v102, v12, v10, (v10 - v12) >> 2);
  v13 = v102;
  v14 = 1;
  while (v13 != v103)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v101, 0, sizeof(v101));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v101, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v94, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v102, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v81)
  {
    v82 = 0;
    v80 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v101[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 4 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v94, v82 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v80 + v22;
        v45 = v94;
        v46 = v97;
        v47 = (v96 - v95) >> 2;
        v48 = (((v96 - v95) << 30) - 0x100000000) >> 32;
        v49 = v99 + 4 * v48;
        v50 = v95 + 4 * v48;
        v86 = v99;
        v51 = v87;
        v52 = __p;
        v53 = (v89 - v88) >> 2;
        v54 = (((v89 - v88) << 30) - 0x100000000) >> 32;
        v85 = v92;
        v55 = &v92[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v83 = v88 - 8;
        v84 = v95 - 8;
        v58 = v88 + 4 * v54;
        do
        {
          *(v44 + v51) |= *(v45 + v19);
          if (v47)
          {
            v59 = *v49;
            if (v47 >= 2 && v59 == *v50 - 1)
            {
              v61 = (v47 & 0x7FFFFFFF) - 1;
              v60 = v86;
              v62 = v84;
              v63 = v50;
              v64 = v49;
              v65 = v48;
              do
              {
                v66 = v61;
                *v64 = 0;
                v45 = (v45 - v46[v65] * (*v63 - 1));
                v94 = v45;
                --v61;
                v64 = &v60[v56 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v62[v56];
                v67 = *&v62[4 * (v47 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v65 = v61;
              }

              while (v59 == v67);
              v68 = &v60[v56 - 4];
            }

            else
            {
              v61 = v48;
              v68 = v49;
            }

            *v68 = v59 + 1;
            v45 = (v45 + v46[v61]);
            v94 = v45;
          }

          if (v53)
          {
            v69 = *v55;
            if (v53 >= 2 && v69 == *v58 - 1)
            {
              v71 = (v53 & 0x7FFFFFFF) - 1;
              v70 = v85;
              v72 = v83;
              v73 = v58;
              v74 = v55;
              v75 = v54;
              do
              {
                v76 = v71;
                *v74 = 0;
                v51 -= v52[v75] * (*v73 - 1);
                v87 = v51;
                --v71;
                v74 = &v70[v57 - 8];
                v69 = *v74;
                v70 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v73 = &v72[v57];
                v77 = *&v72[4 * (v53 & 0x7FFFFFFF)] - 1;
                v72 -= 4;
                v75 = v71;
              }

              while (v69 == v77);
              v78 = &v70[v57 - 4];
            }

            else
            {
              v71 = v54;
              v78 = v55;
            }

            *v78 = v69 + 1;
            v51 += v52[v71];
            v87 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v87 = 0;
      v79 = v92;
      if (v93 - v92 >= 1)
      {
        bzero(v92, v93 - v92);
      }

      v94 = 0;
      if (v100 - v99 >= 1)
      {
        bzero(v99, v100 - v99);
      }

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v79 = v92;
    if (v92)
    {
LABEL_52:
      v93 = v79;
      operator delete(v79);
    }
  }

  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  v94 = v101;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v94);
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }
}

void sub_25A457E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<BOOL,unsigned int,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v81 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v102, v12, v10, (v10 - v12) >> 2);
  v13 = v102;
  v14 = 1;
  while (v13 != v103)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v101, 0, sizeof(v101));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v101, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v94, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v102, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v81)
  {
    v82 = 0;
    v80 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v101[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 4 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v94, v82 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v80 + v22;
        v45 = v94;
        v46 = v97;
        v47 = (v96 - v95) >> 2;
        v48 = (((v96 - v95) << 30) - 0x100000000) >> 32;
        v49 = v99 + 4 * v48;
        v50 = v95 + 4 * v48;
        v86 = v99;
        v51 = v87;
        v52 = __p;
        v53 = (v89 - v88) >> 2;
        v54 = (((v89 - v88) << 30) - 0x100000000) >> 32;
        v85 = v92;
        v55 = &v92[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v83 = v88 - 8;
        v84 = v95 - 8;
        v58 = v88 + 4 * v54;
        do
        {
          *(v44 + v51) &= *(v45 + v19);
          if (v47)
          {
            v59 = *v49;
            if (v47 >= 2 && v59 == *v50 - 1)
            {
              v61 = (v47 & 0x7FFFFFFF) - 1;
              v60 = v86;
              v62 = v84;
              v63 = v50;
              v64 = v49;
              v65 = v48;
              do
              {
                v66 = v61;
                *v64 = 0;
                v45 = (v45 - v46[v65] * (*v63 - 1));
                v94 = v45;
                --v61;
                v64 = &v60[v56 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v62[v56];
                v67 = *&v62[4 * (v47 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v65 = v61;
              }

              while (v59 == v67);
              v68 = &v60[v56 - 4];
            }

            else
            {
              v61 = v48;
              v68 = v49;
            }

            *v68 = v59 + 1;
            v45 = (v45 + v46[v61]);
            v94 = v45;
          }

          if (v53)
          {
            v69 = *v55;
            if (v53 >= 2 && v69 == *v58 - 1)
            {
              v71 = (v53 & 0x7FFFFFFF) - 1;
              v70 = v85;
              v72 = v83;
              v73 = v58;
              v74 = v55;
              v75 = v54;
              do
              {
                v76 = v71;
                *v74 = 0;
                v51 -= v52[v75] * (*v73 - 1);
                v87 = v51;
                --v71;
                v74 = &v70[v57 - 8];
                v69 = *v74;
                v70 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v73 = &v72[v57];
                v77 = *&v72[4 * (v53 & 0x7FFFFFFF)] - 1;
                v72 -= 4;
                v75 = v71;
              }

              while (v69 == v77);
              v78 = &v70[v57 - 4];
            }

            else
            {
              v71 = v54;
              v78 = v55;
            }

            *v78 = v69 + 1;
            v51 += v52[v71];
            v87 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v87 = 0;
      v79 = v92;
      if (v93 - v92 >= 1)
      {
        bzero(v92, v93 - v92);
      }

      v94 = 0;
      if (v100 - v99 >= 1)
      {
        bzero(v99, v100 - v99);
      }

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v79 = v92;
    if (v92)
    {
LABEL_52:
      v93 = v79;
      operator delete(v79);
    }
  }

  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  v94 = v101;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v94);
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }
}

void sub_25A4583D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<BOOL,unsigned int,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v103, v12, v10, (v10 - v12) >> 2);
  v13 = v103;
  v14 = 1;
  while (v13 != v104)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v102, 0, sizeof(v102));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v102, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v95, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v103, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v83 = 0;
    v81 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v102[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 4 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + v22;
        v45 = v95;
        v46 = v98;
        v47 = (v97 - v96) >> 2;
        v48 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v49 = v100 + 4 * v48;
        v50 = v96 + 4 * v48;
        v87 = v100;
        v51 = v88;
        v52 = __p;
        v53 = (v90 - v89) >> 2;
        v54 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v55 = &v93[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v58 = v89 + 4 * v54;
        do
        {
          v59 = *(v45 + v19);
          if (*(v44 + v51) > v59)
          {
            LOBYTE(v59) = *(v44 + v51);
          }

          *(v44 + v51) = v59;
          if (v47)
          {
            v60 = *v49;
            if (v47 >= 2 && v60 == *v50 - 1)
            {
              v62 = (v47 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v50;
              v65 = v49;
              v66 = v48;
              do
              {
                v67 = v62;
                *v65 = 0;
                v45 = (v45 - v46[v66] * (*v64 - 1));
                v95 = v45;
                --v62;
                v65 = &v61[v56 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v47 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v48;
              v69 = v49;
            }

            *v69 = v60 + 1;
            v45 = (v45 + v46[v62]);
            v95 = v45;
          }

          if (v53)
          {
            v70 = *v55;
            if (v53 >= 2 && v70 == *v58 - 1)
            {
              v72 = (v53 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v58;
              v75 = v55;
              v76 = v54;
              do
              {
                v77 = v72;
                *v75 = 0;
                v51 -= v52[v76] * (*v74 - 1);
                v88 = v51;
                --v72;
                v75 = &v71[v57 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v57];
                v78 = *&v73[4 * (v53 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v57 - 4];
            }

            else
            {
              v72 = v54;
              v79 = v55;
            }

            *v79 = v70 + 1;
            v51 += v52[v72];
            v88 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v88 = 0;
      v80 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      ++v83;
    }

    while (v83 != v82);
    if (v80)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v80 = v93;
    if (v93)
    {
LABEL_54:
      v94 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  v95 = v102;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v95);
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }
}

void sub_25A458990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<BOOL,unsigned long long,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v81 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v102, v12, v10, (v10 - v12) >> 2);
  v13 = v102;
  v14 = 1;
  while (v13 != v103)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v101, 0, sizeof(v101));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v101, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v94, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v102, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v81)
  {
    v82 = 0;
    v80 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v101[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 8 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v94, v82 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v80 + v22;
        v45 = v94;
        v46 = v97;
        v47 = (v96 - v95) >> 2;
        v48 = (((v96 - v95) << 30) - 0x100000000) >> 32;
        v49 = v99 + 4 * v48;
        v50 = v95 + 4 * v48;
        v86 = v99;
        v51 = v87;
        v52 = __p;
        v53 = (v89 - v88) >> 2;
        v54 = (((v89 - v88) << 30) - 0x100000000) >> 32;
        v85 = v92;
        v55 = &v92[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v83 = v88 - 8;
        v84 = v95 - 8;
        v58 = v88 + 4 * v54;
        do
        {
          *(v44 + v51) = *(v45 + v19);
          if (v47)
          {
            v59 = *v49;
            if (v47 >= 2 && v59 == *v50 - 1)
            {
              v61 = (v47 & 0x7FFFFFFF) - 1;
              v60 = v86;
              v62 = v84;
              v63 = v50;
              v64 = v49;
              v65 = v48;
              do
              {
                v66 = v61;
                *v64 = 0;
                v45 = (v45 - v46[v65] * (*v63 - 1));
                v94 = v45;
                --v61;
                v64 = &v60[v56 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v62[v56];
                v67 = *&v62[4 * (v47 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v65 = v61;
              }

              while (v59 == v67);
              v68 = &v60[v56 - 4];
            }

            else
            {
              v61 = v48;
              v68 = v49;
            }

            *v68 = v59 + 1;
            v45 = (v45 + v46[v61]);
            v94 = v45;
          }

          if (v53)
          {
            v69 = *v55;
            if (v53 >= 2 && v69 == *v58 - 1)
            {
              v71 = (v53 & 0x7FFFFFFF) - 1;
              v70 = v85;
              v72 = v83;
              v73 = v58;
              v74 = v55;
              v75 = v54;
              do
              {
                v76 = v71;
                *v74 = 0;
                v51 -= v52[v75] * (*v73 - 1);
                v87 = v51;
                --v71;
                v74 = &v70[v57 - 8];
                v69 = *v74;
                v70 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v73 = &v72[v57];
                v77 = *&v72[4 * (v53 & 0x7FFFFFFF)] - 1;
                v72 -= 4;
                v75 = v71;
              }

              while (v69 == v77);
              v78 = &v70[v57 - 4];
            }

            else
            {
              v71 = v54;
              v78 = v55;
            }

            *v78 = v69 + 1;
            v51 += v52[v71];
            v87 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v87 = 0;
      v79 = v92;
      if (v93 - v92 >= 1)
      {
        bzero(v92, v93 - v92);
      }

      v94 = 0;
      if (v100 - v99 >= 1)
      {
        bzero(v99, v100 - v99);
      }

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v79 = v92;
    if (v92)
    {
LABEL_52:
      v93 = v79;
      operator delete(v79);
    }
  }

  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  v94 = v101;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v94);
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }
}

void sub_25A458F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<BOOL,unsigned long long,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v81 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v102, v12, v10, (v10 - v12) >> 2);
  v13 = v102;
  v14 = 1;
  while (v13 != v103)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v101, 0, sizeof(v101));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v101, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v94, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v102, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v81)
  {
    v82 = 0;
    v80 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v101[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 8 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v94, v82 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v80 + v22;
        v45 = v94;
        v46 = v97;
        v47 = (v96 - v95) >> 2;
        v48 = (((v96 - v95) << 30) - 0x100000000) >> 32;
        v49 = v99 + 4 * v48;
        v50 = v95 + 4 * v48;
        v86 = v99;
        v51 = v87;
        v52 = __p;
        v53 = (v89 - v88) >> 2;
        v54 = (((v89 - v88) << 30) - 0x100000000) >> 32;
        v85 = v92;
        v55 = &v92[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v83 = v88 - 8;
        v84 = v95 - 8;
        v58 = v88 + 4 * v54;
        do
        {
          *(v44 + v51) |= *(v45 + v19);
          if (v47)
          {
            v59 = *v49;
            if (v47 >= 2 && v59 == *v50 - 1)
            {
              v61 = (v47 & 0x7FFFFFFF) - 1;
              v60 = v86;
              v62 = v84;
              v63 = v50;
              v64 = v49;
              v65 = v48;
              do
              {
                v66 = v61;
                *v64 = 0;
                v45 = (v45 - v46[v65] * (*v63 - 1));
                v94 = v45;
                --v61;
                v64 = &v60[v56 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v62[v56];
                v67 = *&v62[4 * (v47 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v65 = v61;
              }

              while (v59 == v67);
              v68 = &v60[v56 - 4];
            }

            else
            {
              v61 = v48;
              v68 = v49;
            }

            *v68 = v59 + 1;
            v45 = (v45 + v46[v61]);
            v94 = v45;
          }

          if (v53)
          {
            v69 = *v55;
            if (v53 >= 2 && v69 == *v58 - 1)
            {
              v71 = (v53 & 0x7FFFFFFF) - 1;
              v70 = v85;
              v72 = v83;
              v73 = v58;
              v74 = v55;
              v75 = v54;
              do
              {
                v76 = v71;
                *v74 = 0;
                v51 -= v52[v75] * (*v73 - 1);
                v87 = v51;
                --v71;
                v74 = &v70[v57 - 8];
                v69 = *v74;
                v70 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v73 = &v72[v57];
                v77 = *&v72[4 * (v53 & 0x7FFFFFFF)] - 1;
                v72 -= 4;
                v75 = v71;
              }

              while (v69 == v77);
              v78 = &v70[v57 - 4];
            }

            else
            {
              v71 = v54;
              v78 = v55;
            }

            *v78 = v69 + 1;
            v51 += v52[v71];
            v87 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v87 = 0;
      v79 = v92;
      if (v93 - v92 >= 1)
      {
        bzero(v92, v93 - v92);
      }

      v94 = 0;
      if (v100 - v99 >= 1)
      {
        bzero(v99, v100 - v99);
      }

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v79 = v92;
    if (v92)
    {
LABEL_52:
      v93 = v79;
      operator delete(v79);
    }
  }

  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  v94 = v101;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v94);
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }
}

void sub_25A459500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<BOOL,unsigned long long,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v81 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v102, v12, v10, (v10 - v12) >> 2);
  v13 = v102;
  v14 = 1;
  while (v13 != v103)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v101, 0, sizeof(v101));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v101, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v94, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v102, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v81)
  {
    v82 = 0;
    v80 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v101[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 8 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v94, v82 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v80 + v22;
        v45 = v94;
        v46 = v97;
        v47 = (v96 - v95) >> 2;
        v48 = (((v96 - v95) << 30) - 0x100000000) >> 32;
        v49 = v99 + 4 * v48;
        v50 = v95 + 4 * v48;
        v86 = v99;
        v51 = v87;
        v52 = __p;
        v53 = (v89 - v88) >> 2;
        v54 = (((v89 - v88) << 30) - 0x100000000) >> 32;
        v85 = v92;
        v55 = &v92[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v83 = v88 - 8;
        v84 = v95 - 8;
        v58 = v88 + 4 * v54;
        do
        {
          *(v44 + v51) &= *(v45 + v19);
          if (v47)
          {
            v59 = *v49;
            if (v47 >= 2 && v59 == *v50 - 1)
            {
              v61 = (v47 & 0x7FFFFFFF) - 1;
              v60 = v86;
              v62 = v84;
              v63 = v50;
              v64 = v49;
              v65 = v48;
              do
              {
                v66 = v61;
                *v64 = 0;
                v45 = (v45 - v46[v65] * (*v63 - 1));
                v94 = v45;
                --v61;
                v64 = &v60[v56 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v62[v56];
                v67 = *&v62[4 * (v47 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v65 = v61;
              }

              while (v59 == v67);
              v68 = &v60[v56 - 4];
            }

            else
            {
              v61 = v48;
              v68 = v49;
            }

            *v68 = v59 + 1;
            v45 = (v45 + v46[v61]);
            v94 = v45;
          }

          if (v53)
          {
            v69 = *v55;
            if (v53 >= 2 && v69 == *v58 - 1)
            {
              v71 = (v53 & 0x7FFFFFFF) - 1;
              v70 = v85;
              v72 = v83;
              v73 = v58;
              v74 = v55;
              v75 = v54;
              do
              {
                v76 = v71;
                *v74 = 0;
                v51 -= v52[v75] * (*v73 - 1);
                v87 = v51;
                --v71;
                v74 = &v70[v57 - 8];
                v69 = *v74;
                v70 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v73 = &v72[v57];
                v77 = *&v72[4 * (v53 & 0x7FFFFFFF)] - 1;
                v72 -= 4;
                v75 = v71;
              }

              while (v69 == v77);
              v78 = &v70[v57 - 4];
            }

            else
            {
              v71 = v54;
              v78 = v55;
            }

            *v78 = v69 + 1;
            v51 += v52[v71];
            v87 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v87 = 0;
      v79 = v92;
      if (v93 - v92 >= 1)
      {
        bzero(v92, v93 - v92);
      }

      v94 = 0;
      if (v100 - v99 >= 1)
      {
        bzero(v99, v100 - v99);
      }

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v79 = v92;
    if (v92)
    {
LABEL_52:
      v93 = v79;
      operator delete(v79);
    }
  }

  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  v94 = v101;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v94);
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }
}

void sub_25A459ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<BOOL,unsigned long long,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v103, v12, v10, (v10 - v12) >> 2);
  v13 = v103;
  v14 = 1;
  while (v13 != v104)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v102, 0, sizeof(v102));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v102, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v95, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v103, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v83 = 0;
    v81 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v102[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 8 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + v22;
        v45 = v95;
        v46 = v98;
        v47 = (v97 - v96) >> 2;
        v48 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v49 = v100 + 4 * v48;
        v50 = v96 + 4 * v48;
        v87 = v100;
        v51 = v88;
        v52 = __p;
        v53 = (v90 - v89) >> 2;
        v54 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v55 = &v93[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v58 = v89 + 4 * v54;
        do
        {
          v59 = *(v45 + v19);
          if (*(v44 + v51) > v59)
          {
            LOBYTE(v59) = *(v44 + v51);
          }

          *(v44 + v51) = v59;
          if (v47)
          {
            v60 = *v49;
            if (v47 >= 2 && v60 == *v50 - 1)
            {
              v62 = (v47 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v50;
              v65 = v49;
              v66 = v48;
              do
              {
                v67 = v62;
                *v65 = 0;
                v45 = (v45 - v46[v66] * (*v64 - 1));
                v95 = v45;
                --v62;
                v65 = &v61[v56 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v47 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v48;
              v69 = v49;
            }

            *v69 = v60 + 1;
            v45 = (v45 + v46[v62]);
            v95 = v45;
          }

          if (v53)
          {
            v70 = *v55;
            if (v53 >= 2 && v70 == *v58 - 1)
            {
              v72 = (v53 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v58;
              v75 = v55;
              v76 = v54;
              do
              {
                v77 = v72;
                *v75 = 0;
                v51 -= v52[v76] * (*v74 - 1);
                v88 = v51;
                --v72;
                v75 = &v71[v57 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v57];
                v78 = *&v73[4 * (v53 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v57 - 4];
            }

            else
            {
              v72 = v54;
              v79 = v55;
            }

            *v79 = v70 + 1;
            v51 += v52[v72];
            v88 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v88 = 0;
      v80 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      ++v83;
    }

    while (v83 != v82);
    if (v80)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v80 = v93;
    if (v93)
    {
LABEL_54:
      v94 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  v95 = v102;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v95);
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }
}

void sub_25A45A07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<BOOL,signed char,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v103, v12, v10, (v10 - v12) >> 2);
  v13 = v103;
  v14 = 1;
  while (v13 != v104)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v102, 0, sizeof(v102));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v102, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v95, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v103, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v83 = 0;
    v81 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v102[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + v26);
          v43 = mlx::core::array::shape(a2, v23);
          if (v42 >= 0)
          {
            v43 = 0;
          }

          v22 += *((*a2)[3] + 8 * v23) * (v43 + v42);
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v81 + v22;
        v46 = v95;
        v47 = v98;
        v48 = (v97 - v96) >> 2;
        v49 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v50 = v100 + 4 * v49;
        v51 = v96 + 4 * v49;
        v87 = v100;
        v52 = v88;
        v53 = __p;
        v54 = (v90 - v89) >> 2;
        v55 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v56 = &v93[4 * v55];
        v57 = 4 * (v48 & 0x7FFFFFFF);
        v58 = 4 * (v54 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v59 = v89 + 4 * v55;
        do
        {
          *(v45 + v52) = *(v46 + v19);
          if (v48)
          {
            v60 = *v50;
            if (v48 >= 2 && v60 == *v51 - 1)
            {
              v62 = (v48 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v51;
              v65 = v50;
              v66 = v49;
              do
              {
                v67 = v62;
                *v65 = 0;
                v46 = (v46 - v47[v66] * (*v64 - 1));
                v95 = v46;
                --v62;
                v65 = &v61[v57 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v57];
                v68 = *&v63[4 * (v48 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v57 - 4];
            }

            else
            {
              v62 = v49;
              v69 = v50;
            }

            *v69 = v60 + 1;
            v46 = (v46 + v47[v62]);
            v95 = v46;
          }

          if (v54)
          {
            v70 = *v56;
            if (v54 >= 2 && v70 == *v59 - 1)
            {
              v72 = (v54 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v59;
              v75 = v56;
              v76 = v55;
              do
              {
                v77 = v72;
                *v75 = 0;
                v52 -= v53[v76] * (*v74 - 1);
                v88 = v52;
                --v72;
                v75 = &v71[v58 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v58];
                v78 = *&v73[4 * (v54 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v58 - 4];
            }

            else
            {
              v72 = v55;
              v79 = v56;
            }

            *v79 = v70 + 1;
            v52 += v53[v72];
            v88 = v52;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v88 = 0;
      v80 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      ++v83;
    }

    while (v83 != v82);
    if (v80)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v80 = v93;
    if (v93)
    {
LABEL_54:
      v94 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  v95 = v102;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v95);
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }
}