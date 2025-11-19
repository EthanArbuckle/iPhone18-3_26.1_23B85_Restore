void mlx::core::dispatch_scatter_axis_op<mlx::core::_MLX_BFloat16,unsigned long long>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<mlx::core::_MLX_BFloat16,unsigned long long,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<mlx::core::_MLX_BFloat16,signed char>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<mlx::core::_MLX_BFloat16,signed char,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<mlx::core::_MLX_BFloat16,short>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<mlx::core::_MLX_BFloat16,short,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<mlx::core::_MLX_BFloat16,int>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<mlx::core::_MLX_BFloat16,int,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<mlx::core::_MLX_BFloat16,long long>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<mlx::core::_MLX_BFloat16,long long,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::scatter_axis<mlx::core::_MLX_BFloat16,unsigned char,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v69 = v26 * v21;
    v28 = v87;
    v29 = (v89 - v88) >> 2;
    v78 = (((v89 - v88) << 30) - 0x100000000) >> 32;
    v30 = v88 + 4 * v78;
    v31 = v80;
    v32 = (v82 - v81) >> 2;
    v33 = (((v82 - v81) << 30) - 0x100000000) >> 32;
    v34 = v81 + 4 * v33;
    v35 = 2 * v18;
    v36 = 4 * (v29 & 0x7FFFFFFF);
    v73 = v88 - 8;
    v37 = 4 * (v32 & 0x7FFFFFFF);
    v72 = v81 - 8;
    v70 = v23;
    do
    {
      v71 = v27;
      if (v26)
      {
        v38 = 0;
        v39 = v90;
        v40 = v92 + 4 * v78;
        v41 = v83;
        v74 = __p;
        v75 = v92;
        v42 = __p + 4 * v33;
        do
        {
          if (v20 >= 1)
          {
            v43 = (v77 + v28);
            v44 = (v76 + 2 * v31);
            v45 = v20;
            v46 = v79 + 2 * v38;
            do
            {
              v47 = v19 * *v43;
              v48 = COERCE_FLOAT(*v44 << 16) + COERCE_FLOAT(*(v46 + 2 * v47) << 16);
              v44 = (v44 + v35);
              v43 += v17;
              *(v46 + 2 * v47) = (LODWORD(v48) + (HIWORD(LODWORD(v48)) & 1u) + 0x7FFF) >> 16;
              --v45;
            }

            while (v45);
          }

          if (v29)
          {
            v49 = *v40;
            if (v29 >= 2 && v49 == *v30 - 1)
            {
              v50 = v75;
              v51 = v73;
              v52 = (v29 & 0x7FFFFFFF) - 1;
              v53 = v30;
              v54 = v40;
              v55 = v78;
              do
              {
                v56 = v52;
                *v54 = 0;
                v28 -= v39[v55] * (*v53 - 1);
                v87 = v28;
                --v52;
                v54 = &v50[v36 - 8];
                v49 = *v54;
                v50 -= 4;
                if (v56 < 2)
                {
                  break;
                }

                v53 = &v51[v36];
                v57 = *&v51[4 * (v29 & 0x7FFFFFFF)] - 1;
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
            v28 += v39[v52];
            v87 = v28;
          }

          if (v32)
          {
            v59 = *v42;
            if (v32 >= 2 && v59 == *v34 - 1)
            {
              v60 = v74;
              v61 = v72;
              v62 = (v32 & 0x7FFFFFFF) - 1;
              v63 = v34;
              v64 = v42;
              v65 = v33;
              do
              {
                v66 = v62;
                *v64 = 0;
                v31 -= v41[v65] * (*v63 - 1);
                v80 = v31;
                --v62;
                v64 = &v60[v37 - 8];
                v59 = *v64;
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

              while (v59 == v67);
              v68 = &v60[v37 - 4];
            }

            else
            {
              v62 = v33;
              v68 = v42;
            }

            *v68 = v59 + 1;
            v31 += v41[v62];
            v80 = v31;
          }

          ++v38;
        }

        while (v38 != v26);
      }

      v79 += 2 * v69;
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

void sub_25A52BC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v42 = *(v40 - 136);
  if (v42)
  {
    *(v40 - 128) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 112);
  if (v43)
  {
    *(v40 - 104) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::scatter_axis<mlx::core::_MLX_BFloat16,unsigned short,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v70 = v26 * v21;
    v28 = v88;
    v29 = (v90 - v89) >> 2;
    v79 = (((v90 - v89) << 30) - 0x100000000) >> 32;
    v30 = v89 + 4 * v79;
    v31 = v81;
    v32 = (v83 - v82) >> 2;
    v33 = (((v83 - v82) << 30) - 0x100000000) >> 32;
    v34 = v82 + 4 * v33;
    v35 = 2 * v18;
    v36 = 2 * v17;
    v37 = 4 * (v29 & 0x7FFFFFFF);
    v74 = v89 - 8;
    v38 = 4 * (v32 & 0x7FFFFFFF);
    v73 = v82 - 8;
    v71 = v23;
    do
    {
      v72 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v91;
        v41 = v93 + 4 * v79;
        v42 = v84;
        v75 = __p;
        v76 = v93;
        v43 = __p + 4 * v33;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v78 + 2 * v28);
            v45 = (v77 + 2 * v31);
            v46 = v20;
            v47 = v80 + 2 * v39;
            do
            {
              v48 = v19 * *v44;
              v49 = COERCE_FLOAT(*v45 << 16) + COERCE_FLOAT(*(v47 + 2 * v48) << 16);
              v45 = (v45 + v35);
              v44 = (v44 + v36);
              *(v47 + 2 * v48) = (LODWORD(v49) + (HIWORD(LODWORD(v49)) & 1u) + 0x7FFF) >> 16;
              --v46;
            }

            while (v46);
          }

          if (v29)
          {
            v50 = *v41;
            if (v29 >= 2 && v50 == *v30 - 1)
            {
              v51 = v76;
              v52 = v74;
              v53 = (v29 & 0x7FFFFFFF) - 1;
              v54 = v30;
              v55 = v41;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v28 -= v40[v56] * (*v54 - 1);
                v88 = v28;
                --v53;
                v55 = &v51[v37 - 8];
                v50 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v37];
                v58 = *&v52[4 * (v29 & 0x7FFFFFFF)] - 1;
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
            v28 += v40[v53];
            v88 = v28;
          }

          if (v32)
          {
            v60 = *v43;
            if (v32 >= 2 && v60 == *v34 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v32 & 0x7FFFFFFF) - 1;
              v64 = v34;
              v65 = v43;
              v66 = v33;
              do
              {
                v67 = v63;
                *v65 = 0;
                v31 -= v42[v66] * (*v64 - 1);
                v81 = v31;
                --v63;
                v65 = &v61[v38 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v38];
                v68 = *&v62[4 * (v32 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v60 == v68);
              v69 = &v61[v38 - 4];
            }

            else
            {
              v63 = v33;
              v69 = v43;
            }

            *v69 = v60 + 1;
            v31 += v42[v63];
            v81 = v31;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v80 += 2 * v70;
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

void sub_25A52C2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v42 = *(v40 - 136);
  if (v42)
  {
    *(v40 - 128) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 112);
  if (v43)
  {
    *(v40 - 104) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::scatter_axis<mlx::core::_MLX_BFloat16,unsigned int,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v70 = v26 * v21;
    v28 = v88;
    v29 = (v90 - v89) >> 2;
    v79 = (((v90 - v89) << 30) - 0x100000000) >> 32;
    v30 = v89 + 4 * v79;
    v31 = v81;
    v32 = (v83 - v82) >> 2;
    v33 = (((v83 - v82) << 30) - 0x100000000) >> 32;
    v34 = v82 + 4 * v33;
    v35 = 2 * v18;
    v36 = 4 * v17;
    v37 = 4 * (v29 & 0x7FFFFFFF);
    v74 = v89 - 8;
    v38 = 4 * (v32 & 0x7FFFFFFF);
    v73 = v82 - 8;
    v71 = v23;
    do
    {
      v72 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v91;
        v41 = v93 + 4 * v79;
        v42 = v84;
        v75 = __p;
        v76 = v93;
        v43 = __p + 4 * v33;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v78 + 4 * v28);
            v45 = (v77 + 2 * v31);
            v46 = v20;
            v47 = v80 + 2 * v39;
            do
            {
              v48 = v19 * *v44;
              v49 = COERCE_FLOAT(*v45 << 16) + COERCE_FLOAT(*(v47 + 2 * v48) << 16);
              v45 = (v45 + v35);
              v44 = (v44 + v36);
              *(v47 + 2 * v48) = (LODWORD(v49) + (HIWORD(LODWORD(v49)) & 1u) + 0x7FFF) >> 16;
              --v46;
            }

            while (v46);
          }

          if (v29)
          {
            v50 = *v41;
            if (v29 >= 2 && v50 == *v30 - 1)
            {
              v51 = v76;
              v52 = v74;
              v53 = (v29 & 0x7FFFFFFF) - 1;
              v54 = v30;
              v55 = v41;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v28 -= v40[v56] * (*v54 - 1);
                v88 = v28;
                --v53;
                v55 = &v51[v37 - 8];
                v50 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v37];
                v58 = *&v52[4 * (v29 & 0x7FFFFFFF)] - 1;
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
            v28 += v40[v53];
            v88 = v28;
          }

          if (v32)
          {
            v60 = *v43;
            if (v32 >= 2 && v60 == *v34 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v32 & 0x7FFFFFFF) - 1;
              v64 = v34;
              v65 = v43;
              v66 = v33;
              do
              {
                v67 = v63;
                *v65 = 0;
                v31 -= v42[v66] * (*v64 - 1);
                v81 = v31;
                --v63;
                v65 = &v61[v38 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v38];
                v68 = *&v62[4 * (v32 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v60 == v68);
              v69 = &v61[v38 - 4];
            }

            else
            {
              v63 = v33;
              v69 = v43;
            }

            *v69 = v60 + 1;
            v31 += v42[v63];
            v81 = v31;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v80 += 2 * v70;
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

void sub_25A52C960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v42 = *(v40 - 136);
  if (v42)
  {
    *(v40 - 128) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 112);
  if (v43)
  {
    *(v40 - 104) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::scatter_axis<mlx::core::_MLX_BFloat16,unsigned long long,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
    v70 = v26 * v21;
    v28 = v88;
    v29 = (v90 - v89) >> 2;
    v79 = (((v90 - v89) << 30) - 0x100000000) >> 32;
    v30 = v89 + 4 * v79;
    v31 = v81;
    v32 = (v83 - v82) >> 2;
    v33 = (((v83 - v82) << 30) - 0x100000000) >> 32;
    v34 = v82 + 4 * v33;
    v35 = 2 * v18;
    v36 = 8 * v17;
    v37 = 4 * (v29 & 0x7FFFFFFF);
    v74 = v89 - 8;
    v38 = 4 * (v32 & 0x7FFFFFFF);
    v73 = v82 - 8;
    v71 = v23;
    do
    {
      v72 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v91;
        v41 = v93 + 4 * v79;
        v42 = v84;
        v75 = __p;
        v76 = v93;
        v43 = __p + 4 * v33;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v78 + 8 * v28);
            v45 = (v77 + 2 * v31);
            v46 = v20;
            v47 = v80 + 2 * v39;
            do
            {
              v48 = *v44 * v19;
              v49 = COERCE_FLOAT(*v45 << 16) + COERCE_FLOAT(*(v47 + 2 * v48) << 16);
              v45 = (v45 + v35);
              v44 = (v44 + v36);
              *(v47 + 2 * v48) = (LODWORD(v49) + (HIWORD(LODWORD(v49)) & 1u) + 0x7FFF) >> 16;
              --v46;
            }

            while (v46);
          }

          if (v29)
          {
            v50 = *v41;
            if (v29 >= 2 && v50 == *v30 - 1)
            {
              v51 = v76;
              v52 = v74;
              v53 = (v29 & 0x7FFFFFFF) - 1;
              v54 = v30;
              v55 = v41;
              v56 = v79;
              do
              {
                v57 = v53;
                *v55 = 0;
                v28 -= v40[v56] * (*v54 - 1);
                v88 = v28;
                --v53;
                v55 = &v51[v37 - 8];
                v50 = *v55;
                v51 -= 4;
                if (v57 < 2)
                {
                  break;
                }

                v54 = &v52[v37];
                v58 = *&v52[4 * (v29 & 0x7FFFFFFF)] - 1;
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
            v28 += v40[v53];
            v88 = v28;
          }

          if (v32)
          {
            v60 = *v43;
            if (v32 >= 2 && v60 == *v34 - 1)
            {
              v61 = v75;
              v62 = v73;
              v63 = (v32 & 0x7FFFFFFF) - 1;
              v64 = v34;
              v65 = v43;
              v66 = v33;
              do
              {
                v67 = v63;
                *v65 = 0;
                v31 -= v42[v66] * (*v64 - 1);
                v81 = v31;
                --v63;
                v65 = &v61[v38 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v62[v38];
                v68 = *&v62[4 * (v32 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v66 = v63;
              }

              while (v60 == v68);
              v69 = &v61[v38 - 4];
            }

            else
            {
              v63 = v33;
              v69 = v43;
            }

            *v69 = v60 + 1;
            v31 += v42[v63];
            v81 = v31;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v80 += 2 * v70;
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

void sub_25A52CFE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v42 = *(v40 - 136);
  if (v42)
  {
    *(v40 - 128) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 112);
  if (v43)
  {
    *(v40 - 104) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::scatter_axis<mlx::core::_MLX_BFloat16,signed char,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v101 = 0;
  v102 = 0;
  v100 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v100, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v100[8 * a4];
  v10 = v101 - (v9 + 8);
  if (v101 != v9 + 8)
  {
    memmove(&v100[8 * a4], v9 + 8, v101 - (v9 + 8));
  }

  v101 = &v9[v10];
  v11 = *a2;
  v98 = 0;
  v99 = 0;
  v97 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v97, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v97[4 * a4];
  v13 = v98 - (v12 + 4);
  if (v98 != v12 + 4)
  {
    memmove(&v97[4 * a4], v12 + 4, v98 - (v12 + 4));
  }

  v98 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v90, &v97, &v100, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v100 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v100, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v100[v14];
  v16 = v101 - &v100[v14 + 8];
  if (v101 != &v100[v14 + 8])
  {
    memmove(&v100[v14], &v100[v14 + 8], v101 - (v15 + 8));
  }

  v101 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v83, &v97, &v100, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v79 = *(*a3 + 152);
  v80 = *(*a2 + 152);
  v82 = *(*a1 + 152);
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
    v72 = v26 * v21;
    v29 = v90;
    v30 = (v92 - v91) >> 2;
    v81 = (((v92 - v91) << 30) - 0x100000000) >> 32;
    v31 = v91 + 4 * v81;
    v32 = v83;
    v33 = (v85 - v84) >> 2;
    v34 = (((v85 - v84) << 30) - 0x100000000) >> 32;
    v35 = v84 + 4 * v34;
    v36 = 2 * v18;
    v37 = 4 * (v30 & 0x7FFFFFFF);
    v76 = v91 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v75 = v84 - 8;
    v73 = v23;
    do
    {
      v74 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v93;
        v78 = v95;
        v41 = v95 + 4 * v81;
        v42 = v86;
        v77 = __p;
        v43 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v80 + v29);
            v45 = (v79 + 2 * v32);
            v46 = v20;
            v47 = v82 + 2 * v39;
            do
            {
              v48 = *v44;
              if (v48 >= 0)
              {
                v49 = 0;
              }

              else
              {
                v49 = v28;
              }

              v50 = (v49 + v48) * v19;
              v51 = COERCE_FLOAT(*v45 << 16) + COERCE_FLOAT(*(v47 + 2 * v50) << 16);
              v45 = (v45 + v36);
              v44 += v17;
              *(v47 + 2 * v50) = (LODWORD(v51) + (HIWORD(LODWORD(v51)) & 1u) + 0x7FFF) >> 16;
              --v46;
            }

            while (v46);
          }

          if (v30)
          {
            v52 = *v41;
            if (v30 >= 2 && v52 == *v31 - 1)
            {
              v53 = v78;
              v54 = v76;
              v55 = (v30 & 0x7FFFFFFF) - 1;
              v56 = v31;
              v57 = v41;
              v58 = v81;
              do
              {
                v59 = v55;
                *v57 = 0;
                v29 -= v40[v58] * (*v56 - 1);
                v90 = v29;
                --v55;
                v57 = &v53[v37 - 8];
                v52 = *v57;
                v53 -= 4;
                if (v59 < 2)
                {
                  break;
                }

                v56 = &v54[v37];
                v60 = *&v54[4 * (v30 & 0x7FFFFFFF)] - 1;
                v54 -= 4;
                v58 = v55;
              }

              while (v52 == v60);
              v61 = &v53[v37 - 4];
            }

            else
            {
              v55 = v81;
              v61 = v41;
            }

            *v61 = v52 + 1;
            v29 += v40[v55];
            v90 = v29;
          }

          if (v33)
          {
            v62 = *v43;
            if (v33 >= 2 && v62 == *v35 - 1)
            {
              v63 = v77;
              v64 = v75;
              v65 = (v33 & 0x7FFFFFFF) - 1;
              v66 = v35;
              v67 = v43;
              v68 = v34;
              do
              {
                v69 = v65;
                *v67 = 0;
                v32 -= v42[v68] * (*v66 - 1);
                v83 = v32;
                --v65;
                v67 = &v63[v38 - 8];
                v62 = *v67;
                v63 -= 4;
                if (v69 < 2)
                {
                  break;
                }

                v66 = &v64[v38];
                v70 = *&v64[4 * (v33 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v68 = v65;
              }

              while (v62 == v70);
              v71 = &v63[v38 - 4];
            }

            else
            {
              v65 = v34;
              v71 = v43;
            }

            *v71 = v62 + 1;
            v32 += v42[v65];
            v83 = v32;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v82 += 2 * v72;
      v27 = v74 + 1;
    }

    while (v74 + 1 != v73);
  }

  if (__p)
  {
    v89 = __p;
    operator delete(__p);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
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

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }
}

void sub_25A52D674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a35)
  {
    operator delete(a35);
  }

  v44 = *(v42 - 136);
  if (v44)
  {
    *(v42 - 128) = v44;
    operator delete(v44);
  }

  v45 = *(v42 - 112);
  if (v45)
  {
    *(v42 - 104) = v45;
    operator delete(v45);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::scatter_axis<mlx::core::_MLX_BFloat16,short,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v100 = 0;
  v101 = 0;
  v99 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v99, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v99[8 * a4];
  v10 = v100 - (v9 + 8);
  if (v100 != v9 + 8)
  {
    memmove(&v99[8 * a4], v9 + 8, v100 - (v9 + 8));
  }

  v100 = &v9[v10];
  v11 = *a2;
  v97 = 0;
  v98 = 0;
  v96 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v96, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v96[4 * a4];
  v13 = v97 - (v12 + 4);
  if (v97 != v12 + 4)
  {
    memmove(&v96[4 * a4], v12 + 4, v97 - (v12 + 4));
  }

  v97 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v89, &v96, &v99, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v99 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v99, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v99[v14];
  v16 = v100 - &v99[v14 + 8];
  if (v100 != &v99[v14 + 8])
  {
    memmove(&v99[v14], &v99[v14 + 8], v100 - (v15 + 8));
  }

  v100 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v82, &v96, &v99, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v77 = *(*a3 + 152);
  v78 = *(*a2 + 152);
  v81 = *(*a1 + 152);
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
    v28 = v89;
    v29 = (v91 - v90) >> 2;
    v80 = (((v91 - v90) << 30) - 0x100000000) >> 32;
    v30 = v90 + 4 * v80;
    v31 = v82;
    v32 = (v84 - v83) >> 2;
    v79 = (((v84 - v83) << 30) - 0x100000000) >> 32;
    v33 = v83 + 4 * v79;
    v34 = 2 * v18;
    v35 = 2 * v17;
    v36 = 4 * (v29 & 0x7FFFFFFF);
    v74 = v90 - 8;
    v37 = 4 * (v32 & 0x7FFFFFFF);
    v73 = v83 - 8;
    v71 = v23;
    do
    {
      v72 = v27;
      if (v26)
      {
        v38 = 0;
        v39 = v92;
        v76 = v94;
        v40 = v94 + 4 * v80;
        v41 = v85;
        v75 = __p;
        v42 = __p + 4 * v79;
        do
        {
          if (v20 >= 1)
          {
            v43 = (v78 + 2 * v28);
            v44 = (v77 + 2 * v31);
            v45 = v20;
            v46 = v81 + 2 * v38;
            do
            {
              v47 = *v43;
              if (v47 >= 0)
              {
                v48 = 0;
              }

              else
              {
                v48 = v21;
              }

              v49 = (v48 + v47) * v19;
              v50 = COERCE_FLOAT(*v44 << 16) + COERCE_FLOAT(*(v46 + 2 * v49) << 16);
              v44 = (v44 + v34);
              v43 = (v43 + v35);
              *(v46 + 2 * v49) = (LODWORD(v50) + (HIWORD(LODWORD(v50)) & 1u) + 0x7FFF) >> 16;
              --v45;
            }

            while (v45);
          }

          if (v29)
          {
            v51 = *v40;
            if (v29 >= 2 && v51 == *v30 - 1)
            {
              v52 = v76;
              v53 = v74;
              v54 = (v29 & 0x7FFFFFFF) - 1;
              v55 = v30;
              v56 = v40;
              v57 = v80;
              do
              {
                v58 = v54;
                *v56 = 0;
                v28 -= v39[v57] * (*v55 - 1);
                v89 = v28;
                --v54;
                v56 = &v52[v36 - 8];
                v51 = *v56;
                v52 -= 4;
                if (v58 < 2)
                {
                  break;
                }

                v55 = &v53[v36];
                v59 = *&v53[4 * (v29 & 0x7FFFFFFF)] - 1;
                v53 -= 4;
                v57 = v54;
              }

              while (v51 == v59);
              v60 = &v52[v36 - 4];
            }

            else
            {
              v54 = v80;
              v60 = v40;
            }

            *v60 = v51 + 1;
            v28 += v39[v54];
            v89 = v28;
          }

          if (v32)
          {
            v61 = *v42;
            if (v32 >= 2 && v61 == *v33 - 1)
            {
              v62 = v75;
              v63 = v73;
              v64 = (v32 & 0x7FFFFFFF) - 1;
              v65 = v33;
              v66 = v42;
              v67 = v79;
              do
              {
                v68 = v64;
                *v66 = 0;
                v31 -= v41[v67] * (*v65 - 1);
                v82 = v31;
                --v64;
                v66 = &v62[v37 - 8];
                v61 = *v66;
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

              while (v61 == v69);
              v70 = &v62[v37 - 4];
            }

            else
            {
              v64 = v79;
              v70 = v42;
            }

            *v70 = v61 + 1;
            v31 += v41[v64];
            v82 = v31;
          }

          ++v38;
        }

        while (v38 != v26);
      }

      v81 += 2 * v26 * v21;
      v27 = v72 + 1;
    }

    while (v72 + 1 != v71);
  }

  if (__p)
  {
    v88 = __p;
    operator delete(__p);
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

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
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

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }
}

void sub_25A52DD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a35)
  {
    operator delete(a35);
  }

  v44 = *(v42 - 136);
  if (v44)
  {
    *(v42 - 128) = v44;
    operator delete(v44);
  }

  v45 = *(v42 - 112);
  if (v45)
  {
    *(v42 - 104) = v45;
    operator delete(v45);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::scatter_axis<mlx::core::_MLX_BFloat16,int,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v100 = 0;
  v101 = 0;
  v99 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v99, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v99[8 * a4];
  v10 = v100 - (v9 + 8);
  if (v100 != v9 + 8)
  {
    memmove(&v99[8 * a4], v9 + 8, v100 - (v9 + 8));
  }

  v100 = &v9[v10];
  v11 = *a2;
  v97 = 0;
  v98 = 0;
  v96 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v96, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v96[4 * a4];
  v13 = v97 - (v12 + 4);
  if (v97 != v12 + 4)
  {
    memmove(&v96[4 * a4], v12 + 4, v97 - (v12 + 4));
  }

  v97 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v89, &v96, &v99, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v99 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v99, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v99[v14];
  v16 = v100 - &v99[v14 + 8];
  if (v100 != &v99[v14 + 8])
  {
    memmove(&v99[v14], &v99[v14 + 8], v100 - (v15 + 8));
  }

  v100 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v82, &v96, &v99, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v77 = *(*a3 + 152);
  v78 = *(*a2 + 152);
  v81 = *(*a1 + 152);
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
    v28 = v89;
    v29 = (v91 - v90) >> 2;
    v80 = (((v91 - v90) << 30) - 0x100000000) >> 32;
    v30 = v90 + 4 * v80;
    v31 = v82;
    v32 = (v84 - v83) >> 2;
    v79 = (((v84 - v83) << 30) - 0x100000000) >> 32;
    v33 = v83 + 4 * v79;
    v34 = 2 * v18;
    v35 = 4 * v17;
    v36 = 4 * (v29 & 0x7FFFFFFF);
    v74 = v90 - 8;
    v37 = 4 * (v32 & 0x7FFFFFFF);
    v73 = v83 - 8;
    v71 = v23;
    do
    {
      v72 = v27;
      if (v26)
      {
        v38 = 0;
        v39 = v92;
        v76 = v94;
        v40 = v94 + 4 * v80;
        v41 = v85;
        v75 = __p;
        v42 = __p + 4 * v79;
        do
        {
          if (v20 >= 1)
          {
            v43 = (v78 + 4 * v28);
            v44 = (v77 + 2 * v31);
            v45 = v20;
            v46 = v81 + 2 * v38;
            do
            {
              v47 = *v43;
              if (v47 >= 0)
              {
                v48 = 0;
              }

              else
              {
                v48 = v21;
              }

              v49 = (v48 + v47) * v19;
              v50 = COERCE_FLOAT(*v44 << 16) + COERCE_FLOAT(*(v46 + 2 * v49) << 16);
              v44 = (v44 + v34);
              v43 = (v43 + v35);
              *(v46 + 2 * v49) = (LODWORD(v50) + (HIWORD(LODWORD(v50)) & 1u) + 0x7FFF) >> 16;
              --v45;
            }

            while (v45);
          }

          if (v29)
          {
            v51 = *v40;
            if (v29 >= 2 && v51 == *v30 - 1)
            {
              v52 = v76;
              v53 = v74;
              v54 = (v29 & 0x7FFFFFFF) - 1;
              v55 = v30;
              v56 = v40;
              v57 = v80;
              do
              {
                v58 = v54;
                *v56 = 0;
                v28 -= v39[v57] * (*v55 - 1);
                v89 = v28;
                --v54;
                v56 = &v52[v36 - 8];
                v51 = *v56;
                v52 -= 4;
                if (v58 < 2)
                {
                  break;
                }

                v55 = &v53[v36];
                v59 = *&v53[4 * (v29 & 0x7FFFFFFF)] - 1;
                v53 -= 4;
                v57 = v54;
              }

              while (v51 == v59);
              v60 = &v52[v36 - 4];
            }

            else
            {
              v54 = v80;
              v60 = v40;
            }

            *v60 = v51 + 1;
            v28 += v39[v54];
            v89 = v28;
          }

          if (v32)
          {
            v61 = *v42;
            if (v32 >= 2 && v61 == *v33 - 1)
            {
              v62 = v75;
              v63 = v73;
              v64 = (v32 & 0x7FFFFFFF) - 1;
              v65 = v33;
              v66 = v42;
              v67 = v79;
              do
              {
                v68 = v64;
                *v66 = 0;
                v31 -= v41[v67] * (*v65 - 1);
                v82 = v31;
                --v64;
                v66 = &v62[v37 - 8];
                v61 = *v66;
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

              while (v61 == v69);
              v70 = &v62[v37 - 4];
            }

            else
            {
              v64 = v79;
              v70 = v42;
            }

            *v70 = v61 + 1;
            v31 += v41[v64];
            v82 = v31;
          }

          ++v38;
        }

        while (v38 != v26);
      }

      v81 += 2 * v26 * v21;
      v27 = v72 + 1;
    }

    while (v72 + 1 != v71);
  }

  if (__p)
  {
    v88 = __p;
    operator delete(__p);
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

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
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

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }
}

void sub_25A52E3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a35)
  {
    operator delete(a35);
  }

  v44 = *(v42 - 136);
  if (v44)
  {
    *(v42 - 128) = v44;
    operator delete(v44);
  }

  v45 = *(v42 - 112);
  if (v45)
  {
    *(v42 - 104) = v45;
    operator delete(v45);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::scatter_axis<mlx::core::_MLX_BFloat16,long long,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  v75 = *(*a3 + 152);
  v76 = *(*a2 + 152);
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
    v28 = v87;
    v29 = (v89 - v88) >> 2;
    v78 = (((v89 - v88) << 30) - 0x100000000) >> 32;
    v30 = v88 + 4 * v78;
    v31 = v80;
    v32 = (v82 - v81) >> 2;
    v77 = (((v82 - v81) << 30) - 0x100000000) >> 32;
    v33 = v81 + 4 * v77;
    v34 = 2 * v18;
    v35 = 8 * v17;
    v36 = 4 * (v29 & 0x7FFFFFFF);
    v72 = v88 - 8;
    v37 = 4 * (v32 & 0x7FFFFFFF);
    v71 = v81 - 8;
    v69 = v23;
    do
    {
      v70 = v27;
      if (v26)
      {
        v38 = 0;
        v39 = v90;
        v74 = v92;
        v40 = v92 + 4 * v78;
        v41 = v83;
        v73 = __p;
        v42 = __p + 4 * v77;
        do
        {
          if (v20 >= 1)
          {
            v43 = (v76 + 8 * v28);
            v44 = (v75 + 2 * v31);
            v45 = v20;
            v46 = v79 + 2 * v38;
            do
            {
              v47 = ((v21 & (*v43 >> 63)) + *v43) * v19;
              v48 = COERCE_FLOAT(*v44 << 16) + COERCE_FLOAT(*(v46 + 2 * v47) << 16);
              v44 = (v44 + v34);
              v43 = (v43 + v35);
              *(v46 + 2 * v47) = (LODWORD(v48) + (HIWORD(LODWORD(v48)) & 1u) + 0x7FFF) >> 16;
              --v45;
            }

            while (v45);
          }

          if (v29)
          {
            v49 = *v40;
            if (v29 >= 2 && v49 == *v30 - 1)
            {
              v50 = v74;
              v51 = v72;
              v52 = (v29 & 0x7FFFFFFF) - 1;
              v53 = v30;
              v54 = v40;
              v55 = v78;
              do
              {
                v56 = v52;
                *v54 = 0;
                v28 -= v39[v55] * (*v53 - 1);
                v87 = v28;
                --v52;
                v54 = &v50[v36 - 8];
                v49 = *v54;
                v50 -= 4;
                if (v56 < 2)
                {
                  break;
                }

                v53 = &v51[v36];
                v57 = *&v51[4 * (v29 & 0x7FFFFFFF)] - 1;
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
            v28 += v39[v52];
            v87 = v28;
          }

          if (v32)
          {
            v59 = *v42;
            if (v32 >= 2 && v59 == *v33 - 1)
            {
              v60 = v73;
              v61 = v71;
              v62 = (v32 & 0x7FFFFFFF) - 1;
              v63 = v33;
              v64 = v42;
              v65 = v77;
              do
              {
                v66 = v62;
                *v64 = 0;
                v31 -= v41[v65] * (*v63 - 1);
                v80 = v31;
                --v62;
                v64 = &v60[v37 - 8];
                v59 = *v64;
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

              while (v59 == v67);
              v68 = &v60[v37 - 4];
            }

            else
            {
              v62 = v77;
              v68 = v42;
            }

            *v68 = v59 + 1;
            v31 += v41[v62];
            v80 = v31;
          }

          ++v38;
        }

        while (v38 != v26);
      }

      v79 += 2 * v26 * v21;
      v27 = v70 + 1;
    }

    while (v70 + 1 != v69);
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

void sub_25A52EA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  if (a35)
  {
    operator delete(a35);
  }

  v44 = *(v42 - 136);
  if (v44)
  {
    *(v42 - 128) = v44;
    operator delete(v44);
  }

  v45 = *(v42 - 112);
  if (v45)
  {
    *(v42 - 104) = v45;
    operator delete(v45);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::dispatch_scatter_axis_op<mlx::core::complex64_t,unsigned char>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<mlx::core::complex64_t,unsigned char,mlx::core::None>(a1, v9, a3, a4);
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
    mlx::core::scatter_axis<mlx::core::complex64_t,unsigned char,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<mlx::core::complex64_t,unsigned short>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<mlx::core::complex64_t,unsigned short,mlx::core::None>(a1, v9, a3, a4);
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
    mlx::core::scatter_axis<mlx::core::complex64_t,unsigned short,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<mlx::core::complex64_t,unsigned int>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<mlx::core::complex64_t,unsigned int,mlx::core::None>(a1, v9, a3, a4);
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
    mlx::core::scatter_axis<mlx::core::complex64_t,unsigned int,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<mlx::core::complex64_t,unsigned long long>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<mlx::core::complex64_t,unsigned long long,mlx::core::None>(a1, v9, a3, a4);
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
    mlx::core::scatter_axis<mlx::core::complex64_t,unsigned long long,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<mlx::core::complex64_t,signed char>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<mlx::core::complex64_t,signed char,mlx::core::None>(a1, v9, a3, a4);
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
    mlx::core::scatter_axis<mlx::core::complex64_t,signed char,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<mlx::core::complex64_t,short>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<mlx::core::complex64_t,short,mlx::core::None>(a1, v9, a3, a4);
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
    mlx::core::scatter_axis<mlx::core::complex64_t,short,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<mlx::core::complex64_t,int>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<mlx::core::complex64_t,int,mlx::core::None>(a1, v9, a3, a4);
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
    mlx::core::scatter_axis<mlx::core::complex64_t,int,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<mlx::core::complex64_t,long long>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
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
    mlx::core::scatter_axis<mlx::core::complex64_t,long long,mlx::core::None>(a1, v9, a3, a4);
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
    mlx::core::scatter_axis<mlx::core::complex64_t,long long,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::scatter_axis<mlx::core::complex64_t,unsigned char,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  v67 = v21;
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
              *(v19 + 8 * j + 8 * v22 * *(v32 + v75)) = *(v33 + 8 * v68);
              v33 += 8 * v67;
              v32 += v20;
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

      v19 += 8 * v28 * v66;
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

void sub_25A52F524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
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

void mlx::core::scatter_axis<mlx::core::complex64_t,unsigned char,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
              *(v76 + 8 * v39 + 8 * v19 * *v44) = vadd_f32(*v45, *(v76 + 8 * v39 + 8 * v19 * *v44));
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

void sub_25A52FB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v42 = *(v40 - 136);
  if (v42)
  {
    *(v40 - 128) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 112);
  if (v43)
  {
    *(v40 - 104) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::scatter_axis<mlx::core::complex64_t,unsigned short,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  v24 = mlx::core::array::shape(a1, a4);
  v67 = v21;
  v68 = v20;
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
        for (j = 0; j != v29; ++j)
        {
          if (v23 >= 1)
          {
            v32 = v23;
            v33 = v17;
            v34 = v18;
            do
            {
              *(v19 + 8 * j + 8 * v22 * *(v33 + 2 * v76)) = *(v34 + 8 * v69);
              v34 += 8 * v67;
              v33 += 2 * v68;
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
        }
      }

      v19 += 8 * v29 * v24;
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

void sub_25A5300DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
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

void mlx::core::scatter_axis<mlx::core::complex64_t,unsigned short,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
              *(v77 + 8 * v40 + 8 * v19 * *v45) = vadd_f32(*v46, *(v77 + 8 * v40 + 8 * v19 * *v45));
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

void sub_25A5306D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v42 = *(v40 - 136);
  if (v42)
  {
    *(v40 - 128) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 112);
  if (v43)
  {
    *(v40 - 104) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::scatter_axis<mlx::core::complex64_t,unsigned int,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  v24 = mlx::core::array::shape(a1, a4);
  v67 = v21;
  v68 = v20;
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
        for (j = 0; j != v29; ++j)
        {
          if (v23 >= 1)
          {
            v32 = v23;
            v33 = v17;
            v34 = v18;
            do
            {
              *(v19 + 8 * j + 8 * v22 * *(v33 + 4 * v76)) = *(v34 + 8 * v69);
              v34 += 8 * v67;
              v33 += 4 * v68;
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
        }
      }

      v19 += 8 * v29 * v24;
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

void sub_25A530C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
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

void mlx::core::scatter_axis<mlx::core::complex64_t,unsigned int,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
              *(v77 + 8 * v40 + 8 * v19 * *v45) = vadd_f32(*v46, *(v77 + 8 * v40 + 8 * v19 * *v45));
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

void sub_25A53128C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v42 = *(v40 - 136);
  if (v42)
  {
    *(v40 - 128) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 112);
  if (v43)
  {
    *(v40 - 104) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::scatter_axis<mlx::core::complex64_t,unsigned long long,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  v24 = mlx::core::array::shape(a1, a4);
  v67 = v21;
  v68 = v20;
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
        for (j = 0; j != v29; ++j)
        {
          if (v23 >= 1)
          {
            v32 = v23;
            v33 = v17;
            v34 = v18;
            do
            {
              *(v19 + 8 * j + 8 * *(v33 + 8 * v76) * v22) = *(v34 + 8 * v69);
              v34 += 8 * v67;
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
        }
      }

      v19 += 8 * v29 * v24;
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

void sub_25A531854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
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

void mlx::core::scatter_axis<mlx::core::complex64_t,unsigned long long,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
              *(v77 + 8 * v40 + 8 * *v45 * v19) = vadd_f32(*v46, *(v77 + 8 * v40 + 8 * *v45 * v19));
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

void sub_25A531E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v42 = *(v40 - 136);
  if (v42)
  {
    *(v40 - 128) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 112);
  if (v43)
  {
    *(v40 - 104) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::scatter_axis<mlx::core::complex64_t,signed char,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  v69 = v21;
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
              v34 = *(v32 + v77);
              if (v34 >= 0)
              {
                v35 = 0;
              }

              else
              {
                v35 = v68;
              }

              *(v19 + 8 * j + 8 * (v35 + v34) * v22) = *(v33 + 8 * v70);
              v33 += 8 * v69;
              v32 += v20;
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

      v19 += 8 * v28 * v68;
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

void sub_25A532414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
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

void mlx::core::scatter_axis<mlx::core::complex64_t,signed char,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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

              *(v79 + 8 * v39 + 8 * (v48 + v47) * v19) = vadd_f32(*v45, *(v79 + 8 * v39 + 8 * (v48 + v47) * v19));
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

void sub_25A532A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v42 = *(v40 - 136);
  if (v42)
  {
    *(v40 - 128) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 112);
  if (v43)
  {
    *(v40 - 104) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::scatter_axis<mlx::core::complex64_t,short,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v78, &v85, &v88, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v88 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v88, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v88[v14];
  v16 = v89 - &v88[v14 + 8];
  if (v89 != &v88[v14 + 8])
  {
    memmove(&v88[v14], &v88[v14 + 8], v89 - (v15 + 8));
  }

  v89 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v71, &v85, &v88, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v24 = mlx::core::array::shape(a1, a4);
  v69 = v21;
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
    for (i = 0; i != v26; ++i)
    {
      if (v29)
      {
        for (j = 0; j != v29; ++j)
        {
          if (v23 >= 1)
          {
            v32 = v23;
            v33 = v17;
            v34 = v18;
            do
            {
              v35 = *(v33 + 2 * v78);
              if (v35 >= 0)
              {
                v36 = 0;
              }

              else
              {
                v36 = v24;
              }

              *(v19 + 8 * j + 8 * (v36 + v35) * v22) = *(v34 + 8 * v71);
              v34 += 8 * v69;
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
        }
      }

      v19 += 8 * v29 * v24;
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

void sub_25A532FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
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

void mlx::core::scatter_axis<mlx::core::complex64_t,short,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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

              *(v80 + 8 * v40 + 8 * (v49 + v48) * v19) = vadd_f32(*v46, *(v80 + 8 * v40 + 8 * (v49 + v48) * v19));
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

void sub_25A5335E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v42 = *(v40 - 136);
  if (v42)
  {
    *(v40 - 128) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 112);
  if (v43)
  {
    *(v40 - 104) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::scatter_axis<mlx::core::complex64_t,int,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  mlx::core::ContiguousIterator::ContiguousIterator(&v78, &v85, &v88, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v88 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v88, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v88[v14];
  v16 = v89 - &v88[v14 + 8];
  if (v89 != &v88[v14 + 8])
  {
    memmove(&v88[v14], &v88[v14 + 8], v89 - (v15 + 8));
  }

  v89 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v71, &v85, &v88, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v17 = *(*a2 + 152);
  v18 = *(*a3 + 152);
  v19 = *(*a1 + 152);
  v20 = mlx::core::array::strides(a2, a4);
  v21 = mlx::core::array::strides(a3, a4);
  v22 = mlx::core::array::strides(a1, a4);
  v23 = mlx::core::array::shape(a2, a4);
  v24 = mlx::core::array::shape(a1, a4);
  v69 = v21;
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
    for (i = 0; i != v26; ++i)
    {
      if (v29)
      {
        for (j = 0; j != v29; ++j)
        {
          if (v23 >= 1)
          {
            v32 = v23;
            v33 = v17;
            v34 = v18;
            do
            {
              v35 = *(v33 + 4 * v78);
              if (v35 >= 0)
              {
                v36 = 0;
              }

              else
              {
                v36 = v24;
              }

              *(v19 + 8 * j + 8 * (v36 + v35) * v22) = *(v34 + 8 * v71);
              v34 += 8 * v69;
              v33 += 4 * v70;
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
        }
      }

      v19 += 8 * v29 * v24;
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

void sub_25A533BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
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

void mlx::core::scatter_axis<mlx::core::complex64_t,int,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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

              *(v80 + 8 * v40 + 8 * (v49 + v48) * v19) = vadd_f32(*v46, *(v80 + 8 * v40 + 8 * (v49 + v48) * v19));
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

void sub_25A5341B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v42 = *(v40 - 136);
  if (v42)
  {
    *(v40 - 128) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 112);
  if (v43)
  {
    *(v40 - 104) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::scatter_axis<mlx::core::complex64_t,long long,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
  v24 = mlx::core::array::shape(a1, a4);
  v67 = v21;
  v68 = v20;
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
        for (j = 0; j != v29; ++j)
        {
          if (v23 >= 1)
          {
            v32 = v23;
            v33 = v17;
            v34 = v18;
            do
            {
              *(v19 + 8 * j + 8 * ((v24 & (*(v33 + 8 * v76) >> 63)) + *(v33 + 8 * v76)) * v22) = *(v34 + 8 * v69);
              v34 += 8 * v67;
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
        }
      }

      v19 += 8 * v29 * v24;
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

void sub_25A534788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
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

void mlx::core::scatter_axis<mlx::core::complex64_t,long long,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
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
              *(v79 + 8 * v40 + 8 * v48) = vadd_f32(*v46, *(v79 + 8 * v40 + 8 * v48));
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

void sub_25A534D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a33)
  {
    operator delete(a33);
  }

  v42 = *(v40 - 136);
  if (v42)
  {
    *(v40 - 128) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 112);
  if (v43)
  {
    *(v40 - 104) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<std::__bind<mlx::core::ScatterAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ScatterAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF6730;
  v2 = (a1 + 2);
  mlx::core::array::~array((a1 + 6));
  mlx::core::array::~array((a1 + 4));
  mlx::core::array::~array(v2);
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::ScatterAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ScatterAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF6730;
  v2 = (a1 + 2);
  mlx::core::array::~array((a1 + 6));
  mlx::core::array::~array((a1 + 4));
  mlx::core::array::~array(v2);

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<mlx::core::ScatterAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ScatterAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  *a2 = &unk_286BF6730;
  *(a2 + 8) = result[1];
  v2 = result[3];
  *(a2 + 16) = result[2];
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = result[5];
  *(a2 + 32) = result[4];
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[7];
  *(a2 + 48) = result[6];
  *(a2 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 68) = 0;
  *(a2 + 65) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::ScatterAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ScatterAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 48));
  mlx::core::array::~array((a1 + 32));

  mlx::core::array::~array((a1 + 16));
}

void std::__function::__func<std::__bind<mlx::core::ScatterAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ScatterAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 48));
  mlx::core::array::~array((a1 + 32));
  mlx::core::array::~array((a1 + 16));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::ScatterAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ScatterAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *mlx::core::compile(uint64_t a1, uint64_t a2)
{
  v45[20] = *MEMORY[0x277D85DE8];
  mlx::core::cache(a1);
  v40.__r_.__value_.__r.__words[0] = &stru_27FA05F50;
  v40.__r_.__value_.__s.__data_[8] = 1;
  std::__shared_mutex_base::lock_shared(&stru_27FA05F50);
  mlx::core::cache(v5);
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(qword_27FA05F28, a1);
  mlx::core::cache(v6);
  if (v6)
  {
    v2 = v6[5];
  }

  std::__shared_mutex_base::unlock_shared(&stru_27FA05F50);
  if (!v6)
  {
    mlx::core::cache(v7);
    v37 = &stru_27FA05F50;
    v38 = 1;
    std::__shared_mutex_base::lock(&stru_27FA05F50);
    mlx::core::cache(v8);
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(qword_27FA05F28, a1);
    mlx::core::cache(v9);
    if (!v9)
    {
      v10 = *(a2 + 24);
      if (v10)
      {
        (*(*v10 + 48))(v35);
        memset(&__p, 0, sizeof(__p));
        if (*(a1 + 23) < 0 && *(a1 + 8) >= 0xF6uLL)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
          v11 = *(a1 + 23);
          if ((v11 & 0x80u) == 0)
          {
            v12 = a1;
          }

          else
          {
            v12 = *a1;
          }

          if ((v11 & 0x80u) != 0)
          {
            v11 = *(a1 + 8);
          }

          if (v11 >= 0xE5)
          {
            v13 = 229;
          }

          else
          {
            v13 = v11;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, v12, v13);
          std::string::basic_string(&v39, a1, 0xE5uLL, 0xFFFFFFFFFFFFFFFFLL, &v33);
          std::__string_hash<char>::operator()[abi:ne200100](&v32, &v39);
          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v39.__r_.__value_.__l.__data_);
          }

          v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "_", 1);
          v15 = *v14;
          *(v14 + *(*v14 - 24) + 8) = *(v14 + *(*v14 - 24) + 8) & 0xFFFFFFB5 | 8;
          *(v14 + *(v15 - 24) + 24) = 16;
          v16 = MEMORY[0x25F851380]();
          *(v16 + *(*v16 - 24) + 8) = *(v16 + *(*v16 - 24) + 8) & 0xFFFFFFB5 | 2;
          std::ostringstream::str[abi:ne200100](&v40, &v39);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v39;
          v40.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82828];
          *(v40.__r_.__value_.__r.__words + *(v40.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82828] + 24);
          v40.__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
          if (v42 < 0)
          {
            operator delete(v41);
          }

          v40.__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
          std::locale::~locale(&v40.__r_.__value_.__r.__words[2]);
          std::ostream::~ostream();
          MEMORY[0x25F8516C0](&v43);
        }

        else
        {
          std::string::operator=(&__p, a1);
        }

        std::__fs::filesystem::__temp_directory_path(&v33, 0);
        std::operator+<char>();
        v17 = std::string::append(&v40, ".so", 3uLL);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v32.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v32.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v39, &v32);
        std::__fs::filesystem::operator/[abi:ne200100](&v39, &v33, &v40);
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v31, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
          if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v40.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v31 = v40;
        }

        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        std::ifstream::basic_ifstream(&v40);
        v19 = *(&v40 + *(v40.__r_.__value_.__r.__words[0] - 24) + 32);
        v40.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82808];
        *(v40.__r_.__value_.__r.__words + *(v40.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82808] + 24);
        MEMORY[0x25F8512A0](&v40.__r_.__value_.__r.__words[2]);
        std::istream::~istream();
        v20 = MEMORY[0x25F8516C0](v45);
        if (v19)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          v22 = &v30;
          std::string::basic_string[abi:ne200100](&v30, size + 4);
          if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v22 = v30.__r_.__value_.__r.__words[0];
          }

          if (size)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            memmove(v22, p_p, size);
          }

          strcpy(v22 + size, ".cpp");
          std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v39, &v30);
          std::__fs::filesystem::operator/[abi:ne200100](&v39, &v33, &v40);
          if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v29, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
            if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v40.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v29 = v40;
          }

          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v39.__r_.__value_.__l.__data_);
          }

          std::ofstream::basic_ofstream(&v40, &v29);
          if ((v36 & 0x80u) == 0)
          {
            v24 = v35;
          }

          else
          {
            v24 = v35[0];
          }

          if ((v36 & 0x80u) == 0)
          {
            v25 = v36;
          }

          else
          {
            v25 = v35[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, v24, v25);
          if (!std::filebuf::close())
          {
            std::ios_base::clear((&v40 + *(v40.__r_.__value_.__r.__words[0] - 24)), *(&v40 + *(v40.__r_.__value_.__r.__words[0] - 24) + 32) | 4);
          }

          mlx::core::JitCompiler::build_command(&v33, &v30, &v32, &v39);
          mlx::core::JitCompiler::exec(&v39, &v28);
          if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v28.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v39.__r_.__value_.__l.__data_);
          }

          v40.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82810];
          *(v40.__r_.__value_.__r.__words + *(v40.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82810] + 24);
          MEMORY[0x25F8512A0](&v40.__r_.__value_.__r.__words[1]);
          std::ostream::~ostream();
          v20 = MEMORY[0x25F8516C0](&v44);
          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v30.__r_.__value_.__l.__data_);
          }
        }

        mlx::core::cache(v20);
        std::__list_imp<mlx::core::CompilerCache::DLib>::__create_node[abi:ne200100]<std::string &>();
      }

      std::__throw_bad_function_call[abi:ne200100]();
    }

    v2 = v9[5];
    std::__shared_mutex_base::unlock(&stru_27FA05F50);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_25A535A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46)
{
  if (a44 < 0)
  {
    operator delete(__p);
    if ((v47 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v47)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a46);
    JUMPOUT(0x25A535D28);
  }

  __cxa_free_exception(v46);
  goto LABEL_6;
}

void sub_25A535B34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  if (SHIBYTE(a44) < 0)
  {
    operator delete(__p);
  }

  if (a2 == 2)
  {
    v49 = __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x10uLL);
    v51 = (*(*v49 + 16))(v49);
    v52 = *(v46 + 23);
    v53 = *v46;
    if (v52 >= 0)
    {
      v53 = v46;
    }

    if (v52 < 0)
    {
      v52 = v46[1];
    }

    __p = v53;
    a43 = v52;
    a44 = v51;
    a45 = 0;
    fmt::v10::vformat("[Compile::eval_cpu] Failed to compile function {0}: {1}", 55, 0xCDuLL, &__p, &a9);
    MEMORY[0x25F851100](exception, &a9);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::ofstream::~ofstream(&a46, MEMORY[0x277D82810]);
  MEMORY[0x25F8516C0](&STACK[0x2B0]);
  if (a20 < 0)
  {
    JUMPOUT(0x25A535CFCLL);
  }

  JUMPOUT(0x25A535D00);
}

void sub_25A535C14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v49 & 1) == 0)
    {
LABEL_6:
      __cxa_end_catch();
      std::ofstream::~ofstream(&a49, MEMORY[0x277D82810]);
      MEMORY[0x25F8516C0](&STACK[0x2B0]);
      if (a23 < 0)
      {
        JUMPOUT(0x25A535CFCLL);
      }

      JUMPOUT(0x25A535D00);
    }
  }

  else if (!v49)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v50);
  goto LABEL_6;
}

void sub_25A535C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    JUMPOUT(0x25A535D0CLL);
  }

  JUMPOUT(0x25A535D28);
}

void sub_25A535CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    JUMPOUT(0x25A535D44);
  }

  JUMPOUT(0x25A535D48);
}

void sub_25A535D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](&a52);
  _Unwind_Resume(a1);
}

void sub_25A535D8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void mlx::core::cache(mlx::core *this)
{
  {
    mlx::core::CompilerCache::CompilerCache(&mlx::core::cache(void)::cache_);
    __cxa_atexit(mlx::core::CompilerCache::~CompilerCache, &mlx::core::cache(void)::cache_, &dword_25A232000);
  }
}

std::__fs::filesystem::path *std::__fs::filesystem::operator/[abi:ne200100]@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a3->__pn_, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  return std::__fs::filesystem::path::operator/=[abi:ne200100](a3, this);
}

void sub_25A535EB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1, uint64_t *a2)
{
  a1[58] = 0;
  v4 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v5 = *(MEMORY[0x277D82810] + 16);
  v6 = *(MEMORY[0x277D82810] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x277D82860] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[52] = v4;
  MEMORY[0x25F851290](a1 + 1);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_25A536064(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](v1);
  _Unwind_Resume(a1);
}

void mlx::core::Compiled::eval_cpu(uint64_t a1, uint64_t a2, uint64_t ***a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 159);
  if (v6 < 0)
  {
    v6 = *(a1 + 144);
  }

  v7 = (a1 + 136);
  if (!v6)
  {
    mlx::core::build_lib_name((a1 + 24), (a1 + 72), (a1 + 96), &v36);
    if (*(a1 + 159) < 0)
    {
      operator delete(*v7);
    }

    *v7 = *&v36.__r_.__value_.__l.__data_;
    *(a1 + 152) = *(&v36.__r_.__value_.__l + 2);
  }

  v8 = **a3;
  v34 = mlx::core::compiled_check_contiguity(a2, v8);
  mlx::core::cpu::get_command_encoder(*(a1 + 8), *(a1 + 16));
  v32[0] = 0;
  v32[1] = 0;
  v33 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (*(a2 + 8) != *a2)
  {
    v9 = 0;
    do
    {
      v36.__r_.__value_.__r.__words[0] = *(*(a1 + 24) + 16 * v9);
      if (!std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>((a1 + 96), &v36))
      {
        v10 = (*a2 + 16 * v9);
        v36.__r_.__value_.__r.__words[0] = (*v10)[19];
        std::vector<void *>::push_back[abi:ne200100](v32, &v36);
        if (!v34 && (*v10)[1] != **v10)
        {
          memset(&v36, 0, sizeof(v36));
          v11 = *v8;
          v13 = **v10;
          v12 = (*v10)[1];
          if (v8[1] - *v8 == v12 - v13)
          {
            v14 = 0;
          }

          else
          {
            v15 = 0;
            do
            {
              if (*(v11 + 4 * v15) == 1)
              {
                v35 = *((**a3)[3] + 8 * v15);
              }

              else
              {
                v35 = 0;
              }

              std::vector<unsigned long long>::push_back[abi:ne200100](&v36.__r_.__value_.__l.__data_, &v35);
              ++v15;
              v11 = *v8;
              v13 = **v10;
              v12 = (*v10)[1];
            }

            while (((v8[1] - *v8) >> 2) - ((v12 - v13) >> 2) > v15);
            v14 = v15;
          }

          if (v12 != v13)
          {
            v16 = 0;
            do
            {
              if (mlx::core::array::shape(v10, v16) == 1)
              {
                if (*(*v8 + 4 * v14) == 1)
                {
                  v35 = *((**a3)[3] + 8 * v14);
                }

                else
                {
                  v35 = 0;
                }

                std::vector<unsigned long long>::push_back[abi:ne200100](&v36.__r_.__value_.__l.__data_, &v35);
              }

              else
              {
                v35 = *((*v10)[3] + 8 * v16);
                std::vector<unsigned long long>::push_back[abi:ne200100](&v36.__r_.__value_.__l.__data_, &v35);
              }

              ++v16;
              ++v14;
            }

            while (v16 < ((*v10)[1] - **v10) >> 2);
          }

          std::vector<std::vector<int>>::push_back[abi:ne200100](&v29, &v36);
          v35 = *(v30 - 24);
          std::vector<void *>::push_back[abi:ne200100](v32, &v35);
          if (v36.__r_.__value_.__r.__words[0])
          {
            v36.__r_.__value_.__l.__size_ = v36.__r_.__value_.__r.__words[0];
            operator delete(v36.__r_.__value_.__l.__data_);
          }
        }
      }

      ++v9;
    }

    while (v9 < (*(a2 + 8) - *a2) >> 4);
  }

  v28 = (v8[1] - *v8) >> 2;
  v17 = v34;
  if (*(a1 + 159) >= 0)
  {
    v18 = *(a1 + 159);
  }

  else
  {
    v18 = *(a1 + 144);
  }

  if (v34)
  {
    v19 = "_contiguous";
  }

  else
  {
    v19 = "_strided_";
  }

  if (v34)
  {
    v20 = 11;
  }

  else
  {
    v20 = 9;
  }

  v21 = &v27;
  std::string::basic_string[abi:ne200100](&v27, v18 + v20);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v21 = v27.__r_.__value_.__r.__words[0];
  }

  if (v18)
  {
    if (*(a1 + 159) >= 0)
    {
      v22 = (a1 + 136);
    }

    else
    {
      v22 = *(a1 + 136);
    }

    memmove(v21, v22, v18);
  }

  v23 = v21 + v18;
  memcpy(v23, v19, v20);
  v24 = 9;
  if (v17)
  {
    v24 = 11;
  }

  v23[v24] = 0;
  if (!v34)
  {
    std::to_string(&v36, (v8[1] - *v8) >> 2);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v36;
    }

    else
    {
      v25 = v36.__r_.__value_.__r.__words[0];
    }

    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v36.__r_.__value_.__l.__size_;
    }

    std::string::append(&v27, v25, size);
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }

  v37 = 0;
  operator new();
}

void sub_25A536B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  __cxa_free_exception(v55);
  std::mutex::unlock(v54);
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1>(mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1 &&)::{lambda(void)#1}::~dispatch(&a41);
  mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1::~$_1(&a54);
  mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1::~$_1(&a13);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  a41 = &a33;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a41);
  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  _Unwind_Resume(a1);
}

void std::vector<void *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_1::~$_1(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 32);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

void mlx::core::Compiled::~Compiled(void **this)
{
  *this = &unk_286BF6828;
  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table((this + 12));
  v2 = this + 9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 6;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_286BF6828;
  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table((this + 12));
  v2 = this + 9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 6;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x25F851760](this, 0x10B3C40CAF30DDALL);
}

void mlx::core::CompilerCache::~CompilerCache(mlx::core::CompilerCache *this)
{
  std::condition_variable::~condition_variable((this + 176));
  std::condition_variable::~condition_variable((this + 128));
  std::mutex::~mutex(this + 1);
  std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::~__hash_table(this + 24);
  std::__list_imp<mlx::core::CompilerCache::DLib>::clear(this);
}

mlx::core::CompilerCache *mlx::core::CompilerCache::CompilerCache(mlx::core::CompilerCache *this)
{
  *this = this;
  *(this + 1) = this;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  *(this + 14) = 1065353216;
  std::__shared_mutex_base::__shared_mutex_base((this + 64));
  return this;
}

void sub_25A536F90(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::~__hash_table((v1 + 3));
  std::__list_imp<mlx::core::CompilerCache::DLib>::clear(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__list_imp<mlx::core::CompilerCache::DLib>::clear(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = *(v2 + 8);
      std::__list_imp<mlx::core::CompilerCache::DLib>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<mlx::core::CompilerCache::DLib>::__delete_node[abi:ne200100](uint64_t a1, void **a2)
{
  dlclose(a2[2]);

  operator delete(a2);
}

std::__fs::filesystem::path *std::__fs::filesystem::path::operator/=[abi:ne200100](std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x25F8512A0](a1 + 1);

  return std::ostream::~ostream();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock_shared(*a1);
  }

  return a1;
}

uint64_t std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock(*a1);
  }

  return a1;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_25A537320(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_25A537498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *mlx::core::CompilerCache::DLib::DLib(void *a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = dlopen(v3, 2);
  *a1 = v4;
  if (!v4)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v11);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Could not load C++ shared library ", 34);
    v7 = dlerror();
    v8 = strlen(v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v11, v10);
    MEMORY[0x25F851100](exception, v10);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_25A537604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

const void **std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,void *>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::__construct_node_hash<std::pair<std::string const,void *>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25A537888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,void *>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A537950(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,void *>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,void *>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

__n128 std::__function::__func<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0,std::allocator<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0>,std::string ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF68A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0,std::allocator<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0>,std::string ()(void)>::operator()@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  kernel_preamble = get_kernel_preamble();
  v6 = strlen(kernel_preamble);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, kernel_preamble, v6);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v19);
  std::ostream::put();
  std::ostream::flush();
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "extern C  {", 13);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v19);
  std::ostream::put();
  std::ostream::flush();
  mlx::core::build_kernel(&v14, *(a1 + 8), (v4 + 24), (v4 + 48), (v4 + 72), (v4 + 96), **(a1 + 24), **(a1 + 32));
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "}", 1);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v19);
  std::ostream::put();
  std::ostream::flush();
  std::ostringstream::str[abi:ne200100](&v14, a2);
  v14 = *MEMORY[0x277D82828];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
  v15 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x25F8516C0](&v18);
}

void sub_25A537E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  std::ostringstream::~ostringstream(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0,std::allocator<mlx::core::Compiled::eval_cpu(std::vector<mlx::core::array> const&,std::vector<mlx::core::array>&)::$_0>,std::string ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::build_kernel(void *a1, uint64_t a2, const mlx::core::array **a3, uint64_t ***a4, const mlx::core::array **a5, void *a6, int a7, int a8)
{
  v12 = **a4;
  v280 = 0;
  v281 = 0;
  v279 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v279, *v12, v12[1], (v12[1] - *v12) >> 2);
  v267 = a4;
  v13 = **a4;
  v277 = 0;
  v278 = 0;
  __p = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v13[3], v13[4], (v13[4] - v13[3]) >> 3);
  memset(v274, 0, sizeof(v274));
  v275 = 1065353216;
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "void ", 5);
  v15 = *(a2 + 23);
  if (v15 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  if (v15 >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "(void** args) {", 15);
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v271, MEMORY[0x277D82680]);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(&v271);
  std::ostream::put();
  std::ostream::flush();
  v21 = *a3;
  v22 = a3[1];
  if (*a3 == v22)
  {
    v26 = 0;
  }

  else
  {
    v23 = 0;
    v24 = MEMORY[0x277D82680];
    do
    {
      name = mlx::core::NodeNamer::get_name(v274, v21);
      v271.__locale_ = *v21;
      if (std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(a6, &v271))
      {
        v26 = v23;
      }

      else
      {
        mlx::core::get_type_string(*(*v21 + 56) & 0xFFFFFFFFFFLL, &v271);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  ", 2);
        if ((v273 & 0x80u) == 0)
        {
          locale = &v271;
        }

        else
        {
          locale = v271.__locale_;
        }

        if ((v273 & 0x80u) == 0)
        {
          v29 = v273;
        }

        else
        {
          v29 = v272;
        }

        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, locale, v29);
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "* ", 2);
        v32 = *(name + 23);
        if (v32 >= 0)
        {
          v33 = name;
        }

        else
        {
          v33 = *name;
        }

        if (v32 >= 0)
        {
          v34 = *(name + 23);
        }

        else
        {
          v34 = name[1];
        }

        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
        v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " = (", 4);
        if ((v273 & 0x80u) == 0)
        {
          v37 = &v271;
        }

        else
        {
          v37 = v271.__locale_;
        }

        if ((v273 & 0x80u) == 0)
        {
          v38 = v273;
        }

        else
        {
          v38 = v272;
        }

        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v37, v38);
        v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "*)args[", 7);
        v41 = MEMORY[0x25F851360](v40, v23);
        v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "];", 2);
        std::ios_base::getloc((v42 + *(*v42 - 24)));
        v43 = std::locale::use_facet(&v282, v24);
        (v43->__vftable[2].~facet_0)(v43, 10);
        std::locale::~locale(&v282);
        std::ostream::put();
        std::ostream::flush();
        v26 = (v23 + 1);
        if (*(*v21 + 8) != **v21 && (a7 & 1) == 0)
        {
          v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  const size_t* ", 16);
          v45 = *(name + 23);
          if (v45 >= 0)
          {
            v46 = name;
          }

          else
          {
            v46 = *name;
          }

          if (v45 >= 0)
          {
            v47 = *(name + 23);
          }

          else
          {
            v47 = name[1];
          }

          v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v46, v47);
          v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "_strides = (size_t*)args[", 25);
          v50 = MEMORY[0x25F851360](v49, (v23 + 1));
          v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "];", 2);
          std::ios_base::getloc((v51 + *(*v51 - 24)));
          v52 = std::locale::use_facet(&v282, v24);
          (v52->__vftable[2].~facet_0)(v52, 10);
          std::locale::~locale(&v282);
          std::ostream::put();
          std::ostream::flush();
          v26 = (v23 + 2);
        }

        if (v273 < 0)
        {
          operator delete(v271.__locale_);
        }

        v23 = v26;
      }

      v21 = (v21 + 16);
    }

    while (v21 != v22);
  }

  v53 = *v267;
  v54 = v267[1];
  if (*v267 != v54)
  {
    v55 = MEMORY[0x277D82680];
    do
    {
      mlx::core::get_type_string(*(*v53 + 56) & 0xFFFFFFFFFFLL, &v271);
      v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  ", 2);
      if ((v273 & 0x80u) == 0)
      {
        v57 = &v271;
      }

      else
      {
        v57 = v271.__locale_;
      }

      if ((v273 & 0x80u) == 0)
      {
        v58 = v273;
      }

      else
      {
        v58 = v272;
      }

      v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v57, v58);
      v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "* ", 2);
      v61 = mlx::core::NodeNamer::get_name(v274, v53);
      v62 = *(v61 + 23);
      if (v62 >= 0)
      {
        v63 = v61;
      }

      else
      {
        v63 = *v61;
      }

      if (v62 >= 0)
      {
        v64 = *(v61 + 23);
      }

      else
      {
        v64 = v61[1];
      }

      v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v63, v64);
      v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, " = (", 4);
      if ((v273 & 0x80u) == 0)
      {
        v67 = &v271;
      }

      else
      {
        v67 = v271.__locale_;
      }

      if ((v273 & 0x80u) == 0)
      {
        v68 = v273;
      }

      else
      {
        v68 = v272;
      }

      v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, v67, v68);
      v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "*)args[", 7);
      v71 = MEMORY[0x25F851360](v70, v26);
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "];", 2);
      std::ios_base::getloc((v72 + *(*v72 - 24)));
      v73 = std::locale::use_facet(&v282, v55);
      (v73->__vftable[2].~facet_0)(v73, 10);
      std::locale::~locale(&v282);
      std::ostream::put();
      std::ostream::flush();
      if (v273 < 0)
      {
        operator delete(v271.__locale_);
      }

      v53 = (v53 + 16);
      v26 = (v26 + 1);
    }

    while (v53 != v54);
  }

  if (a7)
  {
    v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  const size_t size = (size_t)args[", 35);
    v75 = MEMORY[0x25F851360](v74, v26);
    v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, "];", 2);
    std::ios_base::getloc((v76 + *(*v76 - 24)));
    v77 = std::locale::use_facet(&v271, MEMORY[0x277D82680]);
    (v77->__vftable[2].~facet_0)(v77, 10);
    std::locale::~locale(&v271);
    std::ostream::put();
    std::ostream::flush();
    v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  for (size_t i = 0; i < size; ++i) {", 37);
    std::ios_base::getloc((v78 + *(*v78 - 24)));
    v79 = std::locale::use_facet(&v271, MEMORY[0x277D82680]);
    (v79->__vftable[2].~facet_0)(v79, 10);
    std::locale::~locale(&v271);
    std::ostream::put();
    std::ostream::flush();
  }

  else
  {
    v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  const int* shape = (int*)args[", 32);
    v81 = MEMORY[0x25F851360](v80, v26);
    v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "];", 2);
    std::ios_base::getloc((v82 + *(*v82 - 24)));
    v83 = std::locale::use_facet(&v271, MEMORY[0x277D82680]);
    (v83->__vftable[2].~facet_0)(v83, 10);
    std::locale::~locale(&v271);
    std::ostream::put();
    std::ostream::flush();
    if (a8 >= 1)
    {
      v84 = 0;
      v85 = MEMORY[0x277D82680];
      do
      {
        v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  for (int i", 12);
        v87 = MEMORY[0x25F851360](v86, v84);
        v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, " = 0; i", 7);
        v89 = MEMORY[0x25F851360](v88, v84);
        v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, " < shape[", 9);
        v91 = MEMORY[0x25F851360](v90, v84);
        v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "]; ++i", 6);
        v93 = MEMORY[0x25F851360](v92, v84);
        v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, ") {", 3);
        std::ios_base::getloc((v94 + *(*v94 - 24)));
        v95 = std::locale::use_facet(&v271, v85);
        (v95->__vftable[2].~facet_0)(v95, 10);
        std::locale::~locale(&v271);
        std::ostream::put();
        std::ostream::flush();
        v84 = (v84 + 1);
      }

      while (a8 != v84);
    }
  }

  v97 = *a3;
  v96 = a3[1];
  if (*a3 != v96)
  {
    v98 = MEMORY[0x277D82680];
    do
    {
      v99 = mlx::core::NodeNamer::get_name(v274, v97);
      v271.__locale_ = *v97;
      if (std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(a6, &v271))
      {
        v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  ", 2);
        mlx::core::get_type_string(*(*v97 + 56) & 0xFFFFFFFFFFLL, &v271);
        if ((v273 & 0x80u) == 0)
        {
          v101 = &v271;
        }

        else
        {
          v101 = v271.__locale_;
        }

        if ((v273 & 0x80u) == 0)
        {
          v102 = v273;
        }

        else
        {
          v102 = v272;
        }

        v103 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, v101, v102);
        v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, " tmp_", 5);
        v105 = *(v99 + 23);
        if (v105 >= 0)
        {
          v106 = v99;
        }

        else
        {
          v106 = *v99;
        }

        if (v105 >= 0)
        {
          v107 = *(v99 + 23);
        }

        else
        {
          v107 = v99[1];
        }

        v108 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, v106, v107);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v108, " = ", 3);
        if (v273 < 0)
        {
          operator delete(v271.__locale_);
        }

        mlx::core::print_constant(a1, v97);
        v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ";", 1);
        std::ios_base::getloc((v109 + *(*v109 - 24)));
        v110 = std::locale::use_facet(&v271, v98);
        (v110->__vftable[2].~facet_0)(v110, 10);
        std::locale::~locale(&v271);
        std::ostream::put();
        std::ostream::flush();
      }

      else
      {
        if (*(*v97 + 8) == **v97)
        {
          v127 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  ", 2);
          mlx::core::get_type_string(*(*v97 + 56) & 0xFFFFFFFFFFLL, &v271);
          if ((v273 & 0x80u) == 0)
          {
            v128 = &v271;
          }

          else
          {
            v128 = v271.__locale_;
          }

          if ((v273 & 0x80u) == 0)
          {
            v129 = v273;
          }

          else
          {
            v129 = v272;
          }

          v130 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v127, v128, v129);
          v131 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v130, " tmp_", 5);
          v132 = *(v99 + 23);
          if (v132 >= 0)
          {
            v133 = v99;
          }

          else
          {
            v133 = *v99;
          }

          if (v132 >= 0)
          {
            v134 = *(v99 + 23);
          }

          else
          {
            v134 = v99[1];
          }

          v135 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v131, v133, v134);
          v136 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v135, " = ", 3);
          v137 = *(v99 + 23);
          if (v137 >= 0)
          {
            v138 = v99;
          }

          else
          {
            v138 = *v99;
          }

          if (v137 >= 0)
          {
            v139 = *(v99 + 23);
          }

          else
          {
            v139 = v99[1];
          }

          v140 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v136, v138, v139);
          v141 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v140, "[0];", 4);
          std::ios_base::getloc((v141 + *(*v141 - 24)));
          v142 = std::locale::use_facet(&v282, v98);
          (v142->__vftable[2].~facet_0)(v142, 10);
          std::locale::~locale(&v282);
          std::ostream::put();
          std::ostream::flush();
        }

        else if (a7)
        {
          v111 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  ", 2);
          mlx::core::get_type_string(*(*v97 + 56) & 0xFFFFFFFFFFLL, &v271);
          if ((v273 & 0x80u) == 0)
          {
            v112 = &v271;
          }

          else
          {
            v112 = v271.__locale_;
          }

          if ((v273 & 0x80u) == 0)
          {
            v113 = v273;
          }

          else
          {
            v113 = v272;
          }

          v114 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, v112, v113);
          v115 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v114, " tmp_", 5);
          v116 = *(v99 + 23);
          if (v116 >= 0)
          {
            v117 = v99;
          }

          else
          {
            v117 = *v99;
          }

          if (v116 >= 0)
          {
            v118 = *(v99 + 23);
          }

          else
          {
            v118 = v99[1];
          }

          v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v115, v117, v118);
          v120 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v119, " = ", 3);
          v121 = *(v99 + 23);
          if (v121 >= 0)
          {
            v122 = v99;
          }

          else
          {
            v122 = *v99;
          }

          if (v121 >= 0)
          {
            v123 = *(v99 + 23);
          }

          else
          {
            v123 = v99[1];
          }

          v124 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v120, v122, v123);
          v125 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v124, "[i];", 4);
          std::ios_base::getloc((v125 + *(*v125 - 24)));
          v126 = std::locale::use_facet(&v282, v98);
          (v126->__vftable[2].~facet_0)(v126, 10);
          std::locale::~locale(&v282);
          std::ostream::put();
          std::ostream::flush();
        }

        else
        {
          v143 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  ", 2);
          mlx::core::get_type_string(*(*v97 + 56) & 0xFFFFFFFFFFLL, &v271);
          if ((v273 & 0x80u) == 0)
          {
            v144 = &v271;
          }

          else
          {
            v144 = v271.__locale_;
          }

          if ((v273 & 0x80u) == 0)
          {
            v145 = v273;
          }

          else
          {
            v145 = v272;
          }

          v146 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v143, v144, v145);
          v147 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v146, " tmp_", 5);
          v148 = *(v99 + 23);
          if (v148 >= 0)
          {
            v149 = v99;
          }

          else
          {
            v149 = *v99;
          }

          if (v148 >= 0)
          {
            v150 = *(v99 + 23);
          }

          else
          {
            v150 = v99[1];
          }

          v151 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v147, v149, v150);
          v152 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v151, " = *", 4);
          v153 = *(v99 + 23);
          if (v153 >= 0)
          {
            v154 = v99;
          }

          else
          {
            v154 = *v99;
          }

          if (v153 >= 0)
          {
            v155 = *(v99 + 23);
          }

          else
          {
            v155 = v99[1];
          }

          v156 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v152, v154, v155);
          v157 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v156, ";", 1);
          std::ios_base::getloc((v157 + *(*v157 - 24)));
          v158 = std::locale::use_facet(&v282, v98);
          (v158->__vftable[2].~facet_0)(v158, 10);
          std::locale::~locale(&v282);
          std::ostream::put();
          std::ostream::flush();
        }

        if (v273 < 0)
        {
          operator delete(v271.__locale_);
        }
      }

      v97 = (v97 + 16);
    }

    while (v97 != v96);
  }

  v159 = *a5;
  v160 = a5[1];
  if (*a5 != v160)
  {
    do
    {
      v161 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  ", 2);
      mlx::core::get_type_string(*(*v159 + 56) & 0xFFFFFFFFFFLL, &v271);
      if ((v273 & 0x80u) == 0)
      {
        v162 = &v271;
      }

      else
      {
        v162 = v271.__locale_;
      }

      if ((v273 & 0x80u) == 0)
      {
        v163 = v273;
      }

      else
      {
        v163 = v272;
      }

      v164 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v161, v162, v163);
      v165 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v164, " tmp_", 5);
      v166 = mlx::core::NodeNamer::get_name(v274, v159);
      v167 = *(v166 + 23);
      if (v167 >= 0)
      {
        v168 = v166;
      }

      else
      {
        v168 = *v166;
      }

      if (v167 >= 0)
      {
        v169 = *(v166 + 23);
      }

      else
      {
        v169 = v166[1];
      }

      v170 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v165, v168, v169);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v170, " = ", 3);
      if (v273 < 0)
      {
        operator delete(v271.__locale_);
      }

      v171 = *(*v159 + 64);
      {
        v172 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "static_cast<", 12);
        mlx::core::get_type_string(*(*v159 + 56) & 0xFFFFFFFFFFLL, &v271);
        if ((v273 & 0x80u) == 0)
        {
          v173 = &v271;
        }

        else
        {
          v173 = v271.__locale_;
        }

        if ((v273 & 0x80u) == 0)
        {
          v174 = v273;
        }

        else
        {
          v174 = v272;
        }

        v175 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v172, v173, v174);
        v176 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v175, ">(tmp_", 6);
        v177 = mlx::core::NodeNamer::get_name(v274, *(*v159 + 176));
        v178 = *(v177 + 23);
        if (v178 >= 0)
        {
          v179 = v177;
        }

        else
        {
          v179 = *v177;
        }

        if (v178 >= 0)
        {
          v180 = *(v177 + 23);
        }

        else
        {
          v180 = v177[1];
        }

        v181 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v176, v179, v180);
        v182 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v181, ");", 2);
        std::ios_base::getloc((v182 + *(*v182 - 24)));
        v183 = std::locale::use_facet(&v282, MEMORY[0x277D82680]);
        (v183->__vftable[2].~facet_0)(v183, 10);
        std::locale::~locale(&v282);
        std::ostream::put();
        std::ostream::flush();
        if (v273 < 0)
        {
          operator delete(v271.__locale_);
        }
      }

      else
      {
        (*(**(*v159 + 64) + 40))(*(*v159 + 64), a1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "()(", 3);
        if (*(*v159 + 184) - *(*v159 + 176) != 16)
        {
          v184 = 0;
          v185 = 0;
          do
          {
            v186 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "tmp_", 4);
            v187 = mlx::core::NodeNamer::get_name(v274, (*(*v159 + 176) + v184));
            v188 = *(v187 + 23);
            if (v188 >= 0)
            {
              v189 = v187;
            }

            else
            {
              v189 = *v187;
            }

            if (v188 >= 0)
            {
              v190 = *(v187 + 23);
            }

            else
            {
              v190 = v187[1];
            }

            v191 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v186, v189, v190);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v191, ", ", 2);
            ++v185;
            v184 += 16;
          }

          while (((*(*v159 + 184) - *(*v159 + 176)) >> 4) - 1 > v185);
        }

        v192 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "tmp_", 4);
        v193 = mlx::core::NodeNamer::get_name(v274, (*(*v159 + 184) - 16));
        v194 = *(v193 + 23);
        if (v194 >= 0)
        {
          v195 = v193;
        }

        else
        {
          v195 = *v193;
        }

        if (v194 >= 0)
        {
          v196 = *(v193 + 23);
        }

        else
        {
          v196 = v193[1];
        }

        v197 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v192, v195, v196);
        v198 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v197, ");", 2);
        std::ios_base::getloc((v198 + *(*v198 - 24)));
        v199 = std::locale::use_facet(&v271, MEMORY[0x277D82680]);
        (v199->__vftable[2].~facet_0)(v199, 10);
        std::locale::~locale(&v271);
        std::ostream::put();
        std::ostream::flush();
      }

      v159 = (v159 + 16);
    }

    while (v159 != v160);
  }

  v200 = *v267;
  v201 = v267[1];
  if (*v267 != v201)
  {
    v202 = MEMORY[0x277D82680];
    do
    {
      if (a7)
      {
        v203 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  ", 2);
        v204 = mlx::core::NodeNamer::get_name(v274, v200);
        v205 = *(v204 + 23);
        if (v205 >= 0)
        {
          v206 = v204;
        }

        else
        {
          v206 = *v204;
        }

        if (v205 >= 0)
        {
          v207 = *(v204 + 23);
        }

        else
        {
          v207 = v204[1];
        }

        v208 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v203, v206, v207);
        v209 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v208, "[i] = tmp_", 10);
        v210 = mlx::core::NodeNamer::get_name(v274, v200);
      }

      else
      {
        v211 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  *", 3);
        v212 = mlx::core::NodeNamer::get_name(v274, v200);
        v213 = *(v212 + 23);
        if (v213 >= 0)
        {
          v214 = v212;
        }

        else
        {
          v214 = *v212;
        }

        if (v213 >= 0)
        {
          v215 = *(v212 + 23);
        }

        else
        {
          v215 = v212[1];
        }

        v216 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v211, v214, v215);
        v209 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v216, "++ = tmp_", 9);
        v210 = mlx::core::NodeNamer::get_name(v274, v200);
      }

      v217 = *(v210 + 23);
      if (v217 >= 0)
      {
        v218 = v210;
      }

      else
      {
        v218 = *v210;
      }

      if (v217 >= 0)
      {
        v219 = *(v210 + 23);
      }

      else
      {
        v219 = v210[1];
      }

      v220 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v209, v218, v219);
      v221 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v220, ";", 1);
      std::ios_base::getloc((v221 + *(*v221 - 24)));
      v222 = std::locale::use_facet(&v271, v202);
      (v222->__vftable[2].~facet_0)(v222, 10);
      std::locale::~locale(&v271);
      std::ostream::put();
      std::ostream::flush();
      v200 = (v200 + 16);
    }

    while (v200 != v201);
  }

  if (a7)
  {
    v223 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  }", 3);
    std::ios_base::getloc((v223 + *(*v223 - 24)));
    v224 = std::locale::use_facet(&v271, MEMORY[0x277D82680]);
    (v224->__vftable[2].~facet_0)(v224, 10);
    std::locale::~locale(&v271);
    std::ostream::put();
    std::ostream::flush();
  }

  else if (a8 >= 1)
  {
    v225 = MEMORY[0x277D82680];
    v226 = (a8 - 1);
    do
    {
      v228 = *a3;
      v227 = a3[1];
      while (v228 != v227)
      {
        v271.__locale_ = *v228;
        if (!std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(a6, &v271) && *(*v228 + 1) != **v228)
        {
          v229 = mlx::core::NodeNamer::get_name(v274, v228);
          v230 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  ", 2);
          v231 = *(v229 + 23);
          v232 = v231 >= 0 ? v229 : *v229;
          v233 = v231 >= 0 ? *(v229 + 23) : v229[1];
          v234 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v230, v232, v233);
          v235 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v234, " += ", 4);
          v236 = *(v229 + 23);
          v237 = v236 >= 0 ? v229 : *v229;
          v238 = v236 >= 0 ? *(v229 + 23) : v229[1];
          v239 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v235, v237, v238);
          v240 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v239, "_strides[", 9);
          v241 = MEMORY[0x25F851360](v240, v226);
          v242 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v241, "];", 2);
          std::ios_base::getloc((v242 + *(*v242 - 24)));
          v243 = std::locale::use_facet(&v271, v225);
          (v243->__vftable[2].~facet_0)(v243, 10);
          std::locale::~locale(&v271);
          std::ostream::put();
          std::ostream::flush();
          if (v226 < a8 - 1)
          {
            v244 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  ", 2);
            v245 = *(v229 + 23);
            if (v245 >= 0)
            {
              v246 = v229;
            }

            else
            {
              v246 = *v229;
            }

            if (v245 >= 0)
            {
              v247 = *(v229 + 23);
            }

            else
            {
              v247 = v229[1];
            }

            v248 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v244, v246, v247);
            v249 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v248, " -= ", 4);
            v250 = *(v229 + 23);
            if (v250 >= 0)
            {
              v251 = v229;
            }

            else
            {
              v251 = *v229;
            }

            if (v250 >= 0)
            {
              v252 = *(v229 + 23);
            }

            else
            {
              v252 = v229[1];
            }

            v253 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v249, v251, v252);
            v254 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v253, "_strides[", 9);
            v255 = MEMORY[0x25F851360](v254, (v226 + 1));
            v256 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v255, "]", 1);
            v257 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v256, " * shape[", 9);
            v258 = MEMORY[0x25F851360](v257, (v226 + 1));
            v259 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v258, "];", 2);
            std::ios_base::getloc((v259 + *(*v259 - 24)));
            v260 = std::locale::use_facet(&v271, v225);
            (v260->__vftable[2].~facet_0)(v260, 10);
            std::locale::~locale(&v271);
            std::ostream::put();
            std::ostream::flush();
          }
        }

        v228 += 2;
      }

      v261 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "  }", 3);
      std::ios_base::getloc((v261 + *(*v261 - 24)));
      v262 = std::locale::use_facet(&v271, v225);
      (v262->__vftable[2].~facet_0)(v262, 10);
      std::locale::~locale(&v271);
      std::ostream::put();
      std::ostream::flush();
      v263 = v226 <= 0;
      v226 = (v226 - 1);
    }

    while (!v263);
  }

  v264 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "}", 1);
  std::ios_base::getloc((v264 + *(*v264 - 24)));
  v265 = std::locale::use_facet(&v271, MEMORY[0x277D82680]);
  (v265->__vftable[2].~facet_0)(v265, 10);
  std::locale::~locale(&v271);
  std::ostream::put();
  std::ostream::flush();
  std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::~__hash_table(v274);
  if (__p)
  {
    v277 = __p;
    operator delete(__p);
  }

  if (v279)
  {
    v280 = v279;
    operator delete(v279);
  }
}