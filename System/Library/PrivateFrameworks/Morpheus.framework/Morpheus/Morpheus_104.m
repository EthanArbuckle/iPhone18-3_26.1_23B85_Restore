uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06698;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float32x2_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  result = vadd_f32(*v2, *(**(a1 + 16) + 8 * **(a1 + 24) + 8 * *a2));
  *v2 = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::SumReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::contiguous_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(uint64_t *a1, uint64_t *a2, int a3, float a4, float a5)
{
  if (a3 >= 1)
  {
    v7 = a3 + 1;
    do
    {
      v8 = *a1++;
      v12 = v8;
      v10 = a4;
      v11 = a5;
      a4 = std::operator*[abi:ne200100]<float,0>(&v12, &v10);
      --v7;
    }

    while (v7 > 1);
  }

  v12 = *a2;
  v10 = a4;
  v11 = a5;
  *a2 = std::operator*[abi:ne200100]<float,0>(&v10, &v12);
  *(a2 + 1) = v9;
}

void mlx::core::strided_reduce<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(uint64_t *a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v16[9] = v4;
    v16[10] = v5;
    for (i = 0; i != a3; ++i)
    {
      v11 = a2;
      for (j = a4; j; --j)
      {
        v13 = *a1++;
        v15 = *v11;
        v16[0] = v13;
        *v11 = std::operator*[abi:ne200100]<float,0>(v16, &v15);
        *(v11++ + 1) = v14;
      }
    }
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06718;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06798;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06818;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v3 = **(a1 + 8);
  v7 = *(**(a1 + 16) + 8 * **(a1 + 24) + 8 * *a2);
  v8 = v3;
  v4 = std::operator*[abi:ne200100]<float,0>(&v7, &v8);
  v5 = *(a1 + 8);
  *v5 = v4;
  *(v5 + 4) = v6;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::ProdReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,mlx::core::complex64_t)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, int **a3, int a4)
{
  v111 = *MEMORY[0x277D85DE8];
  v107 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v102);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  __b = v11;
  v101 = v9;
  if (v102 == 1)
  {
    v17 = v104;
    if (v104 - v103 != 4)
    {
LABEL_21:
      v26 = *(v17 - 1);
      v104 = v17 - 4;
      v106 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v96);
      v27 = *(*a2 + 48);
      if (v104 != v103)
      {
        if (v27)
        {
          v28 = v96;
          v29 = (v97 - v96) >> 2;
          v30 = (v29 - 1);
          if (v29 - 1 >= 0)
          {
            v31 = 0;
            v32 = __p;
            quot = 0;
            do
            {
              v34 = ldiv(quot, v28[v30]);
              quot = v34.quot;
              v31 += v32[v30--] * v34.rem;
            }

            while (v30 != -1);
          }

          *__b = v107;
          v110 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      v36 = __b;
      if (v27)
      {
        v37 = 0;
        v38 = v96;
        v39 = ((v97 - v96) >> 2) - 1;
        v40 = __p;
        v94 = v101;
        do
        {
          if ((v39 & 0x80000000) != 0)
          {
            v45 = 0;
          }

          else
          {
            v41 = 0;
            v42 = v39;
            v43 = v37;
            do
            {
              v44 = ldiv(v43, v38[v42]);
              v43 = v44.quot;
              v41 += v40[v42--] * v44.rem;
            }

            while (v42 != -1);
            v45 = v41;
          }

          *v36 = a4;
          v46 = a4;
          if (v26 >= 1)
          {
            v47 = &v94[v45];
            v48 = v26 + 1;
            v46 = a4;
            do
            {
              v50 = *v47++;
              v49 = v50;
              if ((v50 & 1u) > v46)
              {
                v46 = v49;
              }

              v46 &= 1u;
              --v48;
            }

            while (v48 > 1);
          }

          *v36++ = v46 | a4;
          ++v37;
        }

        while (v37 != v27);
      }

LABEL_46:
      __b = v36;
LABEL_47:
      if (__p)
      {
        v99 = __p;
        operator delete(__p);
      }

      if (v96)
      {
        v97 = v96;
        operator delete(v96);
      }

      goto LABEL_51;
    }

    v18 = *(v10 + 48);
    if (v18)
    {
      v19 = 0;
      v20 = *v103;
      do
      {
        *v11 = a4;
        v21 = a4;
        if (v20 >= 1)
        {
          v22 = v20 + 1;
          v23 = v9;
          v21 = a4;
          do
          {
            v25 = *v23++;
            v24 = v25;
            if ((v25 & 1u) > v21)
            {
              v21 = v24;
            }

            v21 &= 1u;
            --v22;
          }

          while (v22 > 1);
        }

        *v11++ = v21 | a4;
        ++v19;
        v9 += v20;
      }

      while (v19 != v18);
    }
  }

  else
  {
    if (!v102)
    {
      *v11 = a4;
      v12 = *(v8 + 12);
      if (v12 < 1)
      {
        v14 = a4;
      }

      else
      {
        v13 = v12 + 1;
        v14 = a4;
        do
        {
          v16 = *v9++;
          v15 = v16;
          if ((v16 & 1u) > v14)
          {
            v14 = v15;
          }

          v14 &= 1u;
          --v13;
        }

        while (v13 > 1);
      }

      *v11 = v14 | a4;
      goto LABEL_51;
    }

    if ((v102 & 0xFFFFFFFD) == 1)
    {
      v17 = v104;
      goto LABEL_21;
    }

    if (v102 != 2)
    {
      if (v102 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v96);
        if (*(*a2 + 48))
        {
          v52 = v96;
          v53 = (v97 - v96) >> 2;
          v54 = (v53 - 1);
          if (v53 - 1 >= 0)
          {
            v55 = 0;
            v56 = __p;
            v57 = 0;
            do
            {
              v58 = ldiv(v57, v52[v54]);
              v57 = v58.quot;
              v55 += v56[v54--] * v58.rem;
            }

            while (v54 != -1);
          }

          v108 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      if (v102 != 4)
      {
        goto LABEL_51;
      }

      v35 = v104;
      goto LABEL_76;
    }

    v35 = v104;
    if (v104 - v103 != 4)
    {
LABEL_76:
      v69 = *(v35 - 1);
      v70 = *(v106 - 1);
      v104 = v35 - 4;
      v106 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v96);
      v71 = *(*a2 + 48);
      if (v104 != v103)
      {
        if (v71)
        {
          v72 = v96;
          v73 = (v97 - v96) >> 2;
          v74 = (v73 - 1);
          if (v73 - 1 >= 0)
          {
            v75 = 0;
            v76 = __p;
            v77 = 0;
            do
            {
              v78 = ldiv(v77, v72[v74]);
              v77 = v78.quot;
              v75 += v76[v74--] * v78.rem;
            }

            while (v74 != -1);
          }

          if (v70)
          {
            memset(__b, a4, v70);
          }

          v109 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      v36 = __b;
      if (!v71)
      {
        goto LABEL_46;
      }

      v79 = 0;
      v80 = v96;
      v81 = ((v97 - v96) >> 2) - 1;
      v82 = __p;
      v93 = v101;
      v95 = v81;
      while (1)
      {
        if ((v81 & 0x80000000) != 0)
        {
          v86 = 0;
          if (!v70)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v83 = 0;
          v84 = v79;
          do
          {
            v85 = ldiv(v84, v80[v81]);
            v84 = v85.quot;
            v83 += v82[v81--] * v85.rem;
          }

          while (v81 != -1);
          v86 = v83;
          if (!v70)
          {
            goto LABEL_91;
          }
        }

        memset(v36, a4, v70);
LABEL_91:
        if (v69 >= 1)
        {
          v87 = 0;
          v88 = &v93[v86];
          do
          {
            if (v70)
            {
              for (i = 0; i != v70; ++i)
              {
                v90 = v36[i];
                v92 = *v88++;
                v91 = v92;
                if ((v92 & 1u) > (v90 & 1u))
                {
                  v90 = v91;
                }

                v36[i] = v90 & 1;
              }
            }

            ++v87;
          }

          while (v87 != v69);
        }

        v36 += v70;
        v79 += v70;
        v81 = v95;
        if (v71 <= v79)
        {
          goto LABEL_46;
        }
      }
    }

    v59 = *(v104 - 1);
    v60 = *(v106 - 1);
    v104 -= 4;
    v106 -= 8;
    v61 = *(v10 + 48);
    if (v61)
    {
      LODWORD(v62) = 0;
      do
      {
        if (v60)
        {
          memset(v11, a4, v60);
        }

        if (v59 >= 1)
        {
          v63 = 0;
          v64 = v9;
          do
          {
            if (v60)
            {
              for (j = 0; j != v60; ++j)
              {
                v66 = v11[j];
                v68 = *v64++;
                v67 = v68;
                if ((v68 & 1u) > (v66 & 1u))
                {
                  v66 = v67;
                }

                v11[j] = v66 & 1;
              }
            }

            ++v63;
          }

          while (v63 != v59);
        }

        v9 += v60 * v59;
        v11 += v60;
        v62 = v62 + v60;
      }

      while (v62 < v61);
    }
  }

LABEL_51:
  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }

  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

  v51 = *MEMORY[0x277D85DE8];
}

void sub_25A814F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, int **a3, int a4)
{
  v111 = *MEMORY[0x277D85DE8];
  v107 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v102);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  __b = v11;
  v101 = v9;
  if (v102 == 1)
  {
    v17 = v104;
    if (v104 - v103 != 4)
    {
LABEL_21:
      v26 = *(v17 - 1);
      v104 = v17 - 4;
      v106 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v96);
      v27 = *(*a2 + 48);
      if (v104 != v103)
      {
        if (v27)
        {
          v28 = v96;
          v29 = (v97 - v96) >> 2;
          v30 = (v29 - 1);
          if (v29 - 1 >= 0)
          {
            v31 = 0;
            v32 = __p;
            quot = 0;
            do
            {
              v34 = ldiv(quot, v28[v30]);
              quot = v34.quot;
              v31 += v32[v30--] * v34.rem;
            }

            while (v30 != -1);
          }

          *__b = v107;
          v110 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      v36 = __b;
      if (v27)
      {
        v37 = 0;
        v38 = v96;
        v39 = ((v97 - v96) >> 2) - 1;
        v40 = __p;
        v94 = v101;
        do
        {
          if ((v39 & 0x80000000) != 0)
          {
            v45 = 0;
          }

          else
          {
            v41 = 0;
            v42 = v39;
            v43 = v37;
            do
            {
              v44 = ldiv(v43, v38[v42]);
              v43 = v44.quot;
              v41 += v40[v42--] * v44.rem;
            }

            while (v42 != -1);
            v45 = v41;
          }

          *v36 = a4;
          v46 = a4;
          if (v26 >= 1)
          {
            v47 = &v94[v45];
            v48 = v26 + 1;
            v46 = a4;
            do
            {
              v50 = *v47++;
              v49 = v50;
              if ((v50 & 1u) < v46)
              {
                v46 = v49;
              }

              v46 &= 1u;
              --v48;
            }

            while (v48 > 1);
          }

          *v36++ = v46 & a4;
          ++v37;
        }

        while (v37 != v27);
      }

LABEL_46:
      __b = v36;
LABEL_47:
      if (__p)
      {
        v99 = __p;
        operator delete(__p);
      }

      if (v96)
      {
        v97 = v96;
        operator delete(v96);
      }

      goto LABEL_51;
    }

    v18 = *(v10 + 48);
    if (v18)
    {
      v19 = 0;
      v20 = *v103;
      do
      {
        *v11 = a4;
        v21 = a4;
        if (v20 >= 1)
        {
          v22 = v20 + 1;
          v23 = v9;
          v21 = a4;
          do
          {
            v25 = *v23++;
            v24 = v25;
            if ((v25 & 1u) < v21)
            {
              v21 = v24;
            }

            v21 &= 1u;
            --v22;
          }

          while (v22 > 1);
        }

        *v11++ = v21 & a4;
        ++v19;
        v9 += v20;
      }

      while (v19 != v18);
    }
  }

  else
  {
    if (!v102)
    {
      *v11 = a4;
      v12 = *(v8 + 12);
      if (v12 < 1)
      {
        v14 = a4;
      }

      else
      {
        v13 = v12 + 1;
        v14 = a4;
        do
        {
          v16 = *v9++;
          v15 = v16;
          if ((v16 & 1u) < v14)
          {
            v14 = v15;
          }

          v14 &= 1u;
          --v13;
        }

        while (v13 > 1);
      }

      *v11 = v14 & a4;
      goto LABEL_51;
    }

    if ((v102 & 0xFFFFFFFD) == 1)
    {
      v17 = v104;
      goto LABEL_21;
    }

    if (v102 != 2)
    {
      if (v102 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v96);
        if (*(*a2 + 48))
        {
          v52 = v96;
          v53 = (v97 - v96) >> 2;
          v54 = (v53 - 1);
          if (v53 - 1 >= 0)
          {
            v55 = 0;
            v56 = __p;
            v57 = 0;
            do
            {
              v58 = ldiv(v57, v52[v54]);
              v57 = v58.quot;
              v55 += v56[v54--] * v58.rem;
            }

            while (v54 != -1);
          }

          v108 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      if (v102 != 4)
      {
        goto LABEL_51;
      }

      v35 = v104;
      goto LABEL_76;
    }

    v35 = v104;
    if (v104 - v103 != 4)
    {
LABEL_76:
      v69 = *(v35 - 1);
      v70 = *(v106 - 1);
      v104 = v35 - 4;
      v106 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v96);
      v71 = *(*a2 + 48);
      if (v104 != v103)
      {
        if (v71)
        {
          v72 = v96;
          v73 = (v97 - v96) >> 2;
          v74 = (v73 - 1);
          if (v73 - 1 >= 0)
          {
            v75 = 0;
            v76 = __p;
            v77 = 0;
            do
            {
              v78 = ldiv(v77, v72[v74]);
              v77 = v78.quot;
              v75 += v76[v74--] * v78.rem;
            }

            while (v74 != -1);
          }

          if (v70)
          {
            memset(__b, a4, v70);
          }

          v109 = 0;
          operator new();
        }

        goto LABEL_47;
      }

      v36 = __b;
      if (!v71)
      {
        goto LABEL_46;
      }

      v79 = 0;
      v80 = v96;
      v81 = ((v97 - v96) >> 2) - 1;
      v82 = __p;
      v93 = v101;
      v95 = v81;
      while (1)
      {
        if ((v81 & 0x80000000) != 0)
        {
          v86 = 0;
          if (!v70)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v83 = 0;
          v84 = v79;
          do
          {
            v85 = ldiv(v84, v80[v81]);
            v84 = v85.quot;
            v83 += v82[v81--] * v85.rem;
          }

          while (v81 != -1);
          v86 = v83;
          if (!v70)
          {
            goto LABEL_91;
          }
        }

        memset(v36, a4, v70);
LABEL_91:
        if (v69 >= 1)
        {
          v87 = 0;
          v88 = &v93[v86];
          do
          {
            if (v70)
            {
              for (i = 0; i != v70; ++i)
              {
                v90 = v36[i];
                v92 = *v88++;
                v91 = v92;
                if ((v92 & 1u) < (v90 & 1u))
                {
                  v90 = v91;
                }

                v36[i] = v90 & 1;
              }
            }

            ++v87;
          }

          while (v87 != v69);
        }

        v36 += v70;
        v79 += v70;
        v81 = v95;
        if (v71 <= v79)
        {
          goto LABEL_46;
        }
      }
    }

    v59 = *(v104 - 1);
    v60 = *(v106 - 1);
    v104 -= 4;
    v106 -= 8;
    v61 = *(v10 + 48);
    if (v61)
    {
      LODWORD(v62) = 0;
      do
      {
        if (v60)
        {
          memset(v11, a4, v60);
        }

        if (v59 >= 1)
        {
          v63 = 0;
          v64 = v9;
          do
          {
            if (v60)
            {
              for (j = 0; j != v60; ++j)
              {
                v66 = v11[j];
                v68 = *v64++;
                v67 = v68;
                if ((v68 & 1u) < (v66 & 1u))
                {
                  v66 = v67;
                }

                v11[j] = v66 & 1;
              }
            }

            ++v63;
          }

          while (v63 != v59);
        }

        v9 += v60 * v59;
        v11 += v60;
        v62 = v62 + v60;
      }

      while (v62 < v61);
    }
  }

LABEL_51:
  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }

  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

  v51 = *MEMORY[0x277D85DE8];
}

void sub_25A815768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06898;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = **(result + 32);
  v3 = **(result + 40);
  if (v2 >= 1)
  {
    v4 = (**(result + 8) + **(result + 16) + *a2);
    v5 = v2 + 1;
    do
    {
      v7 = *v4++;
      v6 = v7;
      if ((v7 & 1u) > v3)
      {
        LOBYTE(v3) = v6;
      }

      v3 &= 1u;
      --v5;
    }

    while (v5 > 1);
  }

  ***(result + 24) |= v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06918;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = **(result + 32);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = **(result + 24);
    v5 = **(result + 40);
    v6 = (**(result + 8) + **(result + 16) + *a2);
    do
    {
      if (v5)
      {
        v7 = v4;
        v8 = v5;
        do
        {
          v9 = *v7;
          v11 = *v6++;
          v10 = v11;
          result = *v7 & 1;
          if ((v11 & 1u) > result)
          {
            v9 = v10;
          }

          *v7++ = v9 & 1;
          --v8;
        }

        while (v8);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06998;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06A18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = **(result + 32);
  v3 = **(result + 40);
  if (v2 >= 1)
  {
    v4 = (**(result + 8) + **(result + 16) + *a2);
    v5 = v2 + 1;
    do
    {
      v7 = *v4++;
      v6 = v7;
      if ((v7 & 1u) < v3)
      {
        LOBYTE(v3) = v6;
      }

      v3 &= 1u;
      --v5;
    }

    while (v5 > 1);
  }

  ***(result + 24) &= v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06A98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = **(result + 32);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = **(result + 24);
    v5 = **(result + 40);
    v6 = (**(result + 8) + **(result + 16) + *a2);
    do
    {
      if (v5)
      {
        v7 = v4;
        v8 = v5;
        do
        {
          v9 = *v7;
          v11 = *v6++;
          v10 = v11;
          result = *v7 & 1;
          if ((v11 & 1u) < result)
          {
            v9 = v10;
          }

          *v7++ = v9 & 1;
          --v8;
        }

        while (v8);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06B18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<BOOL,BOOL,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,BOOL)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, int **a3, unsigned int a4)
{
  v114 = *MEMORY[0x277D85DE8];
  v110 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v105);
  v8 = (*a1)[19];
  v9 = *a2;
  v10 = *(*a2 + 152);
  __b = v10;
  v104 = v8;
  v98 = a2;
  if (v105 == 1)
  {
    v16 = v107;
    if (v107 - v106 != 4)
    {
      goto LABEL_25;
    }

    if (*(v9 + 48))
    {
      v17 = 0;
      v18 = *v106;
      v19 = vdupq_n_s8(a4);
      do
      {
        v10->i8[0] = a4;
        v20 = v104;
        if (v18 < 16)
        {
          v22 = v19;
          v24 = v18;
        }

        else
        {
          v21 = v18;
          v22 = v19;
          do
          {
            v23 = *v20++;
            v22 = vmaxq_u8(v23, v22);
            v24 = v21 - 16;
            v15 = v21 > 0x1F;
            v21 -= 16;
          }

          while (v15);
        }

        v25 = __b;
        v26 = *__b;
        v27 = vmaxvq_u8(v22);
        if (v26 <= v27)
        {
          LOBYTE(v26) = v27;
        }

        *__b = v26;
        if (v24 >= 1)
        {
          v28 = v24 + 1;
          do
          {
            v30 = v20->u8[0];
            v20 = (v20 + 1);
            v29 = v30;
            if (v26 <= v30)
            {
              LOBYTE(v26) = v29;
            }

            *v25 = v26;
            --v28;
          }

          while (v28 > 1);
        }

        ++v17;
        v10 = (__b + 1);
        __b = __b + 1;
        v104 = (v104 + v18);
      }

      while (*(*a2 + 48) > v17);
    }
  }

  else
  {
    if (!v105)
    {
      v10->i8[0] = a4;
      v11 = *(*a1 + 12);
      v12 = vdupq_n_s8(a4);
      if (v11 < 16)
      {
        v14 = *(*a1 + 12);
      }

      else
      {
        do
        {
          v13 = *v8++;
          v12 = vmaxq_u8(v13, v12);
          v14 = v11 - 16;
          v15 = v11 > 0x1F;
          v11 -= 16;
        }

        while (v15);
      }

      v40 = vmaxvq_u8(v12);
      if (a4 > v40)
      {
        v40 = a4;
      }

      v10->i8[0] = v40;
      if (v14 >= 1)
      {
        v41 = v14 + 1;
        do
        {
          v43 = v8->u8[0];
          v8 = (v8 + 1);
          v42 = v43;
          if (v40 <= v43)
          {
            v40 = v42;
          }

          v10->i8[0] = v40;
          --v41;
        }

        while (v41 > 1);
      }

      goto LABEL_99;
    }

    if ((v105 & 0xFFFFFFFD) == 1)
    {
      v16 = v107;
LABEL_25:
      v31 = *(v16 - 1);
      v107 = v16 - 4;
      v109 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v99);
      v32 = *(*a2 + 48);
      if (v107 == v106)
      {
        if (v32)
        {
          v45 = 0;
          v97 = vdupq_n_s8(a4);
          do
          {
            v46 = v99;
            v47 = (v100 - v99) >> 2;
            v48 = (v47 - 1);
            if (v47 - 1 < 0)
            {
              v53 = 0;
            }

            else
            {
              v49 = 0;
              v50 = __p;
              quot = v45;
              do
              {
                v52 = ldiv(quot, v46[v48]);
                quot = v52.quot;
                v49 += v50[v48--] * v52.rem;
              }

              while (v48 != -1);
              v53 = v49;
              a2 = v98;
            }

            *__b = a4;
            v54 = __b;
            v55 = (v104 + v53);
            if (v31 < 16)
            {
              v57 = v97;
              v59 = v31;
            }

            else
            {
              v56 = v31;
              v57 = v97;
              do
              {
                v58 = *v55++;
                v57 = vmaxq_u8(v58, v57);
                v59 = v56 - 16;
                v15 = v56 > 0x1F;
                v56 -= 16;
              }

              while (v15);
            }

            v60 = *__b;
            v61 = vmaxvq_u8(v57);
            if (v60 <= v61)
            {
              LOBYTE(v60) = v61;
            }

            *__b = v60;
            if (v59 >= 1)
            {
              v62 = v59 + 1;
              do
              {
                v64 = v55->u8[0];
                v55 = (v55 + 1);
                v63 = v64;
                if (v60 <= v64)
                {
                  LOBYTE(v60) = v63;
                }

                *v54 = v60;
                --v62;
              }

              while (v62 > 1);
            }

            ++v45;
            __b = __b + 1;
          }

          while (*(*a2 + 48) > v45);
        }
      }

      else if (v32)
      {
        v33 = v99;
        v34 = (v100 - v99) >> 2;
        v35 = (v34 - 1);
        if (v34 - 1 >= 0)
        {
          v36 = 0;
          v37 = __p;
          v38 = 0;
          do
          {
            v39 = ldiv(v38, v33[v35]);
            v38 = v39.quot;
            v36 += v37[v35--] * v39.rem;
          }

          while (v35 != -1);
        }

        *__b = v110;
        v113 = 0;
        operator new();
      }

LABEL_95:
      if (__p)
      {
        v102 = __p;
        operator delete(__p);
      }

      if (v99)
      {
        v100 = v99;
        operator delete(v99);
      }

      goto LABEL_99;
    }

    if (v105 != 2)
    {
      if (v105 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v99);
        if (*(*a2 + 48))
        {
          v65 = v99;
          v66 = (v100 - v99) >> 2;
          v67 = (v66 - 1);
          if (v66 - 1 >= 0)
          {
            v68 = 0;
            v69 = __p;
            v70 = 0;
            do
            {
              v71 = ldiv(v70, v65[v67]);
              v70 = v71.quot;
              v68 += v69[v67--] * v71.rem;
            }

            while (v67 != -1);
          }

          v111 = 0;
          operator new();
        }

        goto LABEL_95;
      }

      if (v105 != 4)
      {
        goto LABEL_99;
      }

      v44 = v107;
      goto LABEL_77;
    }

    v44 = v107;
    if (v107 - v106 != 4)
    {
LABEL_77:
      v76 = *(v44 - 1);
      v77 = *(v109 - 1);
      v107 = v44 - 4;
      v109 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v99);
      v78 = *(*a2 + 48);
      if (v107 == v106)
      {
        if (v78)
        {
          v86 = 0;
          do
          {
            v87 = v99;
            v88 = (v100 - v99) >> 2;
            v89 = (v88 - 1);
            if (v88 - 1 < 0)
            {
              v94 = 0;
            }

            else
            {
              v90 = 0;
              v91 = __p;
              v92 = v86;
              do
              {
                v93 = ldiv(v92, v87[v89]);
                v92 = v93.quot;
                v90 += v91[v89--] * v93.rem;
              }

              while (v89 != -1);
              v94 = v90;
              a2 = v98;
            }

            v95 = __b;
            if (v77)
            {
              memset(__b, a4, v77);
              v95 = __b;
            }

            mlx::core::strided_reduce<unsigned char,unsigned char,mlx::core::MaxReduce>((v104 + v94), v95, v76, v77);
            __b = __b + v77;
            v86 += v77;
          }

          while (*(*a2 + 48) > v86);
        }
      }

      else if (v78)
      {
        v79 = v99;
        v80 = (v100 - v99) >> 2;
        v81 = (v80 - 1);
        if (v80 - 1 >= 0)
        {
          v82 = 0;
          v83 = __p;
          v84 = 0;
          do
          {
            v85 = ldiv(v84, v79[v81]);
            v84 = v85.quot;
            v82 += v83[v81--] * v85.rem;
          }

          while (v81 != -1);
        }

        if (v77)
        {
          memset(__b, a4, v77);
        }

        v112 = 0;
        operator new();
      }

      goto LABEL_95;
    }

    v72 = *(v107 - 1);
    v73 = *(v109 - 1);
    v107 -= 4;
    v109 -= 8;
    if (*(v9 + 48))
    {
      LODWORD(v74) = 0;
      v75 = v73 * v72;
      do
      {
        if (v73)
        {
          memset(v10, a4, v73);
          v10 = __b;
          v8 = v104;
        }

        mlx::core::strided_reduce<unsigned char,unsigned char,mlx::core::MaxReduce>(v8, v10, v72, v73);
        v8 = (v104 + v75);
        v10 = (__b + v73);
        __b = __b + v73;
        v104 = (v104 + v75);
        v74 = v74 + v73;
      }

      while (v74 < *(*a2 + 48));
    }
  }

LABEL_99:
  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }

  v96 = *MEMORY[0x277D85DE8];
}

void sub_25A81688C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, int **a3, unsigned int a4)
{
  v114 = *MEMORY[0x277D85DE8];
  v110 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v105);
  v8 = (*a1)[19];
  v9 = *a2;
  v10 = *(*a2 + 152);
  __b = v10;
  v104 = v8;
  v98 = a2;
  if (v105 == 1)
  {
    v16 = v107;
    if (v107 - v106 != 4)
    {
      goto LABEL_25;
    }

    if (*(v9 + 48))
    {
      v17 = 0;
      v18 = *v106;
      v19 = vdupq_n_s8(a4);
      do
      {
        v10->i8[0] = a4;
        v20 = v104;
        if (v18 < 16)
        {
          v22 = v19;
          v24 = v18;
        }

        else
        {
          v21 = v18;
          v22 = v19;
          do
          {
            v23 = *v20++;
            v22 = vminq_u8(v23, v22);
            v24 = v21 - 16;
            v15 = v21 > 0x1F;
            v21 -= 16;
          }

          while (v15);
        }

        v25 = __b;
        v26 = *__b;
        v27 = vminvq_u8(v22);
        if (v26 >= v27)
        {
          LOBYTE(v26) = v27;
        }

        *__b = v26;
        if (v24 >= 1)
        {
          v28 = v24 + 1;
          do
          {
            v30 = v20->u8[0];
            v20 = (v20 + 1);
            v29 = v30;
            if (v26 >= v30)
            {
              LOBYTE(v26) = v29;
            }

            *v25 = v26;
            --v28;
          }

          while (v28 > 1);
        }

        ++v17;
        v10 = (__b + 1);
        __b = __b + 1;
        v104 = (v104 + v18);
      }

      while (*(*a2 + 48) > v17);
    }
  }

  else
  {
    if (!v105)
    {
      v10->i8[0] = a4;
      v11 = *(*a1 + 12);
      v12 = vdupq_n_s8(a4);
      if (v11 < 16)
      {
        v14 = *(*a1 + 12);
      }

      else
      {
        do
        {
          v13 = *v8++;
          v12 = vminq_u8(v13, v12);
          v14 = v11 - 16;
          v15 = v11 > 0x1F;
          v11 -= 16;
        }

        while (v15);
      }

      v40 = vminvq_u8(v12);
      if (a4 < v40)
      {
        v40 = a4;
      }

      v10->i8[0] = v40;
      if (v14 >= 1)
      {
        v41 = v14 + 1;
        do
        {
          v43 = v8->u8[0];
          v8 = (v8 + 1);
          v42 = v43;
          if (v40 >= v43)
          {
            v40 = v42;
          }

          v10->i8[0] = v40;
          --v41;
        }

        while (v41 > 1);
      }

      goto LABEL_99;
    }

    if ((v105 & 0xFFFFFFFD) == 1)
    {
      v16 = v107;
LABEL_25:
      v31 = *(v16 - 1);
      v107 = v16 - 4;
      v109 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v99);
      v32 = *(*a2 + 48);
      if (v107 == v106)
      {
        if (v32)
        {
          v45 = 0;
          v97 = vdupq_n_s8(a4);
          do
          {
            v46 = v99;
            v47 = (v100 - v99) >> 2;
            v48 = (v47 - 1);
            if (v47 - 1 < 0)
            {
              v53 = 0;
            }

            else
            {
              v49 = 0;
              v50 = __p;
              quot = v45;
              do
              {
                v52 = ldiv(quot, v46[v48]);
                quot = v52.quot;
                v49 += v50[v48--] * v52.rem;
              }

              while (v48 != -1);
              v53 = v49;
              a2 = v98;
            }

            *__b = a4;
            v54 = __b;
            v55 = (v104 + v53);
            if (v31 < 16)
            {
              v57 = v97;
              v59 = v31;
            }

            else
            {
              v56 = v31;
              v57 = v97;
              do
              {
                v58 = *v55++;
                v57 = vminq_u8(v58, v57);
                v59 = v56 - 16;
                v15 = v56 > 0x1F;
                v56 -= 16;
              }

              while (v15);
            }

            v60 = *__b;
            v61 = vminvq_u8(v57);
            if (v60 >= v61)
            {
              LOBYTE(v60) = v61;
            }

            *__b = v60;
            if (v59 >= 1)
            {
              v62 = v59 + 1;
              do
              {
                v64 = v55->u8[0];
                v55 = (v55 + 1);
                v63 = v64;
                if (v60 >= v64)
                {
                  LOBYTE(v60) = v63;
                }

                *v54 = v60;
                --v62;
              }

              while (v62 > 1);
            }

            ++v45;
            __b = __b + 1;
          }

          while (*(*a2 + 48) > v45);
        }
      }

      else if (v32)
      {
        v33 = v99;
        v34 = (v100 - v99) >> 2;
        v35 = (v34 - 1);
        if (v34 - 1 >= 0)
        {
          v36 = 0;
          v37 = __p;
          v38 = 0;
          do
          {
            v39 = ldiv(v38, v33[v35]);
            v38 = v39.quot;
            v36 += v37[v35--] * v39.rem;
          }

          while (v35 != -1);
        }

        *__b = v110;
        v113 = 0;
        operator new();
      }

LABEL_95:
      if (__p)
      {
        v102 = __p;
        operator delete(__p);
      }

      if (v99)
      {
        v100 = v99;
        operator delete(v99);
      }

      goto LABEL_99;
    }

    if (v105 != 2)
    {
      if (v105 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v99);
        if (*(*a2 + 48))
        {
          v65 = v99;
          v66 = (v100 - v99) >> 2;
          v67 = (v66 - 1);
          if (v66 - 1 >= 0)
          {
            v68 = 0;
            v69 = __p;
            v70 = 0;
            do
            {
              v71 = ldiv(v70, v65[v67]);
              v70 = v71.quot;
              v68 += v69[v67--] * v71.rem;
            }

            while (v67 != -1);
          }

          v111 = 0;
          operator new();
        }

        goto LABEL_95;
      }

      if (v105 != 4)
      {
        goto LABEL_99;
      }

      v44 = v107;
      goto LABEL_77;
    }

    v44 = v107;
    if (v107 - v106 != 4)
    {
LABEL_77:
      v76 = *(v44 - 1);
      v77 = *(v109 - 1);
      v107 = v44 - 4;
      v109 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v99);
      v78 = *(*a2 + 48);
      if (v107 == v106)
      {
        if (v78)
        {
          v86 = 0;
          do
          {
            v87 = v99;
            v88 = (v100 - v99) >> 2;
            v89 = (v88 - 1);
            if (v88 - 1 < 0)
            {
              v94 = 0;
            }

            else
            {
              v90 = 0;
              v91 = __p;
              v92 = v86;
              do
              {
                v93 = ldiv(v92, v87[v89]);
                v92 = v93.quot;
                v90 += v91[v89--] * v93.rem;
              }

              while (v89 != -1);
              v94 = v90;
              a2 = v98;
            }

            v95 = __b;
            if (v77)
            {
              memset(__b, a4, v77);
              v95 = __b;
            }

            mlx::core::strided_reduce<unsigned char,unsigned char,mlx::core::MinReduce>((v104 + v94), v95, v76, v77);
            __b = __b + v77;
            v86 += v77;
          }

          while (*(*a2 + 48) > v86);
        }
      }

      else if (v78)
      {
        v79 = v99;
        v80 = (v100 - v99) >> 2;
        v81 = (v80 - 1);
        if (v80 - 1 >= 0)
        {
          v82 = 0;
          v83 = __p;
          v84 = 0;
          do
          {
            v85 = ldiv(v84, v79[v81]);
            v84 = v85.quot;
            v82 += v83[v81--] * v85.rem;
          }

          while (v81 != -1);
        }

        if (v77)
        {
          memset(__b, a4, v77);
        }

        v112 = 0;
        operator new();
      }

      goto LABEL_95;
    }

    v72 = *(v107 - 1);
    v73 = *(v109 - 1);
    v107 -= 4;
    v109 -= 8;
    if (*(v9 + 48))
    {
      LODWORD(v74) = 0;
      v75 = v73 * v72;
      do
      {
        if (v73)
        {
          memset(v10, a4, v73);
          v10 = __b;
          v8 = v104;
        }

        mlx::core::strided_reduce<unsigned char,unsigned char,mlx::core::MinReduce>(v8, v10, v72, v73);
        v8 = (v104 + v75);
        v10 = (__b + v73);
        __b = __b + v73;
        v104 = (v104 + v75);
        v74 = v74 + v73;
      }

      while (v74 < *(*a2 + 48));
    }
  }

LABEL_99:
  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }

  v96 = *MEMORY[0x277D85DE8];
}

void sub_25A817150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  mlx::core::ReductionPlan::~ReductionPlan(va);
  _Unwind_Resume(a1);
}

uint8x16_t *mlx::core::strided_reduce<unsigned char,unsigned char,mlx::core::MaxReduce>(uint8x16_t *result, uint8x16_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a4;
      v6 = a2;
      if (a4 >= 0x10)
      {
        do
        {
          v7 = *result++;
          *v6 = vmaxq_u8(v7, *v6);
          ++v6;
          v5 -= 16;
        }

        while (v5 > 0xF);
      }

      for (; v5; --v5)
      {
        v9 = result->u8[0];
        result = (result + 1);
        v8 = v9;
        if (v6->u8[0] > v9)
        {
          v8 = v6->i8[0];
        }

        v6->i8[0] = v8;
        v6 = (v6 + 1);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06B98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + **(result + 16) + *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_s8(v5);
  if (v4 < 16)
  {
    v8 = **(result + 32);
  }

  else
  {
    do
    {
      v7 = *v2++;
      v6 = vmaxq_u8(v7, v6);
      v8 = v4 - 16;
      v9 = v4 > 0x1F;
      v4 -= 16;
    }

    while (v9);
  }

  v10 = *v3;
  v11 = vmaxvq_u8(v6);
  if (v10 <= v11)
  {
    LOBYTE(v10) = v11;
  }

  *v3 = v10;
  if (v8 >= 1)
  {
    v12 = v8 + 1;
    do
    {
      v14 = v2->u8[0];
      v2 = (v2 + 1);
      v13 = v14;
      if (v10 <= v14)
      {
        LOBYTE(v10) = v13;
      }

      *v3 = v10;
      --v12;
    }

    while (v12 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06C18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06C98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + **(result + 24) + *a2);
  if (*v2 > v3)
  {
    LOBYTE(v3) = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint8x16_t *mlx::core::strided_reduce<unsigned char,unsigned char,mlx::core::MinReduce>(uint8x16_t *result, uint8x16_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a4;
      v6 = a2;
      if (a4 >= 0x10)
      {
        do
        {
          v7 = *result++;
          *v6 = vminq_u8(v7, *v6);
          ++v6;
          v5 -= 16;
        }

        while (v5 > 0xF);
      }

      for (; v5; --v5)
      {
        v9 = result->u8[0];
        result = (result + 1);
        v8 = v9;
        if (v6->u8[0] < v9)
        {
          v8 = v6->i8[0];
        }

        v6->i8[0] = v8;
        v6 = (v6 + 1);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06D18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + **(result + 16) + *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_s8(v5);
  if (v4 < 16)
  {
    v8 = **(result + 32);
  }

  else
  {
    do
    {
      v7 = *v2++;
      v6 = vminq_u8(v7, v6);
      v8 = v4 - 16;
      v9 = v4 > 0x1F;
      v4 -= 16;
    }

    while (v9);
  }

  v10 = *v3;
  v11 = vminvq_u8(v6);
  if (v10 >= v11)
  {
    LOBYTE(v10) = v11;
  }

  *v3 = v10;
  if (v8 >= 1)
  {
    v12 = v8 + 1;
    do
    {
      v14 = v2->u8[0];
      v2 = (v2 + 1);
      v13 = v14;
      if (v10 >= v14)
      {
        LOBYTE(v10) = v13;
      }

      *v3 = v10;
      --v12;
    }

    while (v12 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06D98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06E18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + **(result + 24) + *a2);
  if (*v2 < v3)
  {
    LOBYTE(v3) = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned char,unsigned char,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned char)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, int **a3, unsigned int a4)
{
  v149 = *MEMORY[0x277D85DE8];
  v145 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v140);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v138 = v11;
  v139 = v9;
  if (v140 == 1)
  {
    v19 = v142;
    if (v142 - v141 != 4)
    {
      goto LABEL_23;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v141;
      v23 = vdupq_n_s16(a4);
      do
      {
        v24 = v23;
        v11->i16[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 16)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vmaxq_u16(v30, v25);
            v24 = vmaxq_u16(v29, v24);
            v26 = v28 - 16;
            v18 = v28 > 0x1F;
            v28 -= 16;
          }

          while (v18);
        }

        v31 = vmaxvq_u16(vmaxq_u16(v24, v25));
        if (a4 > v31)
        {
          v31 = a4;
        }

        v11->i16[0] = v31;
        if (v26 >= 1)
        {
          v32 = v26 + 1;
          do
          {
            v34 = *v27;
            v27 = (v27 + 2);
            v33 = v34;
            if (v31 <= v34)
            {
              v31 = v33;
            }

            v11->i16[0] = v31;
            --v32;
          }

          while (v32 > 1);
        }

        ++v21;
        v11 = (v11 + 2);
        v9 = (v9 + 2 * v22);
      }

      while (v21 != v20);
    }

    v138 = v11;
    v139 = v9;
  }

  else
  {
    if (!v140)
    {
      v11->i16[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_n_s16(a4);
      v14 = v13;
      if (v12 < 16)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vmaxq_u16(v16, v14);
          v13 = vmaxq_u16(v15, v13);
          v17 = v12 - 16;
          v18 = v12 > 0x1F;
          v12 -= 16;
        }

        while (v18);
      }

      v44 = vmaxvq_u16(vmaxq_u16(v13, v14));
      if (a4 > v44)
      {
        v44 = a4;
      }

      v11->i16[0] = v44;
      if (v17 >= 1)
      {
        v45 = v17 + 1;
        do
        {
          v47 = *v9;
          v9 = (v9 + 2);
          v46 = v47;
          if (v44 <= v47)
          {
            v44 = v46;
          }

          v11->i16[0] = v44;
          --v45;
        }

        while (v45 > 1);
      }

      goto LABEL_67;
    }

    if ((v140 & 0xFFFFFFFD) == 1)
    {
      v19 = v142;
LABEL_23:
      v35 = *(v19 - 1);
      v142 = v19 - 4;
      v144 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v134);
      v36 = *(*a2 + 48);
      if (v142 == v141)
      {
        v49 = v138;
        if (v36)
        {
          v50 = 0;
          v51 = v134;
          v52 = ((v135 - v134) >> 2) - 1;
          v53 = __p;
          v130 = v139;
          v131 = vdupq_n_s16(a4);
          do
          {
            if ((v52 & 0x80000000) != 0)
            {
              v58 = 0;
            }

            else
            {
              v54 = 0;
              v55 = v52;
              quot = v50;
              do
              {
                v57 = ldiv(quot, v51[v55]);
                quot = v57.quot;
                v54 += v53[v55--] * v57.rem;
              }

              while (v55 != -1);
              v58 = 2 * v54;
            }

            *v49 = a4;
            v59 = (v130 + v58);
            if (v35 < 16)
            {
              v61 = v131;
              v62 = v131;
              v65 = v35;
            }

            else
            {
              v60 = v35;
              v61 = v131;
              v62 = v131;
              do
              {
                v63 = *v59;
                v64 = *(v59 + 1);
                v59 += 2;
                v61 = vmaxq_u16(v64, v61);
                v62 = vmaxq_u16(v63, v62);
                v65 = v60 - 16;
                v18 = v60 > 0x1F;
                v60 -= 16;
              }

              while (v18);
            }

            v66 = vmaxvq_u16(vmaxq_u16(v62, v61));
            if (a4 > v66)
            {
              v66 = a4;
            }

            *v49 = v66;
            if (v65 >= 1)
            {
              v67 = v65 + 1;
              do
              {
                v69 = *v59;
                v59 = (v59 + 2);
                v68 = v69;
                if (v66 <= v69)
                {
                  v66 = v68;
                }

                *v49 = v66;
                --v67;
              }

              while (v67 > 1);
            }

            ++v50;
            ++v49;
          }

          while (v50 != v36);
        }

        v138 = v49;
      }

      else if (v36)
      {
        v37 = v134;
        v38 = (v135 - v134) >> 2;
        v39 = (v38 - 1);
        if (v38 - 1 >= 0)
        {
          v40 = 0;
          v41 = __p;
          v42 = 0;
          do
          {
            v43 = ldiv(v42, v37[v39]);
            v42 = v43.quot;
            v40 += v41[v39--] * v43.rem;
          }

          while (v39 != -1);
        }

        v138->i16[0] = v145;
        v148 = 0;
        operator new();
      }

LABEL_63:
      if (__p)
      {
        v137 = __p;
        operator delete(__p);
      }

      if (v134)
      {
        v135 = v134;
        operator delete(v134);
      }

      goto LABEL_67;
    }

    if (v140 != 2)
    {
      if (v140 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v134);
        if (*(*a2 + 48))
        {
          v71 = v134;
          v72 = (v135 - v134) >> 2;
          v73 = (v72 - 1);
          if (v72 - 1 >= 0)
          {
            v74 = 0;
            v75 = __p;
            v76 = 0;
            do
            {
              v77 = ldiv(v76, v71[v73]);
              v76 = v77.quot;
              v74 += v75[v73--] * v77.rem;
            }

            while (v73 != -1);
          }

          v146 = 0;
          operator new();
        }

        goto LABEL_63;
      }

      if (v140 != 4)
      {
        goto LABEL_67;
      }

      v48 = v142;
      goto LABEL_99;
    }

    v48 = v142;
    if (v142 - v141 != 4)
    {
LABEL_99:
      v88 = *(v48 - 1);
      v89 = *(v144 - 1);
      v142 = v48 - 4;
      v144 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v134);
      v90 = *(*a2 + 48);
      if (v142 == v141)
      {
        if (v90)
        {
          v108 = 0;
          v109 = vdupq_n_s64(v89 - 1);
          v110 = xmmword_25A9C2E70;
          v111 = xmmword_25A9C2E80;
          v112 = xmmword_25A99B0C0;
          v113 = xmmword_25A99B0D0;
          v133 = v109;
          do
          {
            v114 = v134;
            v115 = (v135 - v134) >> 2;
            v116 = (v115 - 1);
            if (v115 - 1 < 0)
            {
              v121 = 0;
            }

            else
            {
              v117 = 0;
              v118 = __p;
              v119 = v108;
              do
              {
                v120 = ldiv(v119, v114[v116]);
                v119 = v120.quot;
                v117 += v118[v116--] * v120.rem;
              }

              while (v116 != -1);
              v121 = 2 * v117;
              v110 = xmmword_25A9C2E70;
              v109 = v133;
              v112 = xmmword_25A99B0C0;
              v111 = xmmword_25A9C2E80;
              v113 = xmmword_25A99B0D0;
            }

            v122 = v138;
            if (v89)
            {
              v123 = 0;
              v124 = &v138->i16[4];
              do
              {
                v125 = vdupq_n_s64(v123);
                v126 = vmovn_s64(vcgeq_u64(v109, vorrq_s8(v125, v113)));
                if (vuzp1_s8(vuzp1_s16(v126, *v125.i8), *v125.i8).u8[0])
                {
                  *(v124 - 4) = a4;
                }

                if (vuzp1_s8(vuzp1_s16(v126, *&v125), *&v125).i8[1])
                {
                  *(v124 - 3) = a4;
                }

                if (vuzp1_s8(vuzp1_s16(*&v125, vmovn_s64(vcgeq_u64(v109, vorrq_s8(v125, v112)))), *&v125).i8[2])
                {
                  *(v124 - 2) = a4;
                  *(v124 - 1) = a4;
                }

                v127 = vmovn_s64(vcgeq_u64(v109, vorrq_s8(v125, v111)));
                if (vuzp1_s8(*&v125, vuzp1_s16(v127, *&v125)).i32[1])
                {
                  *v124 = a4;
                }

                if (vuzp1_s8(*&v125, vuzp1_s16(v127, *&v125)).i8[5])
                {
                  v124[1] = a4;
                }

                v128 = vmovn_s64(vcgeq_u64(v109, vorrq_s8(v125, v110)));
                if (vuzp1_s8(*&v128, vuzp1_s16(v128, v128)).i8[6])
                {
                  v124[2] = a4;
                }

                v129 = vuzp1_s16(v128, v128);
                if (vuzp1_s8(v129, v129).i8[7])
                {
                  v124[3] = a4;
                }

                v123 += 8;
                v124 += 8;
              }

              while (((v89 + 7) & 0xFFFFFFFFFFFFFFF8) != v123);
            }

            mlx::core::strided_reduce<unsigned short,unsigned short,mlx::core::MaxReduce>((v139 + v121), v122, v88, v89);
            v138 = (v138 + 2 * v89);
            v108 += v89;
            v110 = xmmword_25A9C2E70;
            v109 = v133;
            v112 = xmmword_25A99B0C0;
            v111 = xmmword_25A9C2E80;
            v113 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v108);
        }
      }

      else if (v90)
      {
        v91 = xmmword_25A9C2E70;
        v92 = xmmword_25A9C2E80;
        v93 = xmmword_25A99B0C0;
        v94 = xmmword_25A99B0D0;
        v95 = v134;
        v96 = (v135 - v134) >> 2;
        v97 = (v96 - 1);
        if (v96 - 1 >= 0)
        {
          v98 = 0;
          v99 = __p;
          v100 = 0;
          do
          {
            v101 = ldiv(v100, v95[v97]);
            v100 = v101.quot;
            v98 += v99[v97--] * v101.rem;
          }

          while (v97 != -1);
          v92 = xmmword_25A9C2E80;
          v91 = xmmword_25A9C2E70;
          v94 = xmmword_25A99B0D0;
          v93 = xmmword_25A99B0C0;
        }

        if (v89)
        {
          v102 = 0;
          v103 = vdupq_n_s64(v89 - 1);
          v104 = &v138->i16[4];
          do
          {
            v105 = vdupq_n_s64(v102);
            v106 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v105, v94)));
            if (vuzp1_s8(vuzp1_s16(v106, *v103.i8), *v103.i8).u8[0])
            {
              *(v104 - 4) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(v106, *&v103), *&v103).i8[1])
            {
              *(v104 - 3) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(*&v103, vmovn_s64(vcgeq_u64(v103, vorrq_s8(v105, v93)))), *&v103).i8[2])
            {
              *(v104 - 2) = a4;
              *(v104 - 1) = a4;
            }

            v107 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v105, v92)));
            if (vuzp1_s8(*&v103, vuzp1_s16(v107, *&v103)).i32[1])
            {
              *v104 = a4;
            }

            if (vuzp1_s8(*&v103, vuzp1_s16(v107, *&v103)).i8[5])
            {
              v104[1] = a4;
            }

            if (vuzp1_s8(*&v103, vuzp1_s16(*&v103, vmovn_s64(vcgeq_u64(v103, vorrq_s8(v105, v91))))).i8[6])
            {
              v104[2] = a4;
              v104[3] = a4;
            }

            v102 += 8;
            v104 += 8;
          }

          while (((v89 + 7) & 0xFFFFFFFFFFFFFFF8) != v102);
        }

        v147 = 0;
        operator new();
      }

      goto LABEL_63;
    }

    v78 = *(v142 - 1);
    v79 = *(v144 - 1);
    v142 -= 4;
    v144 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v80) = 0;
      v132 = vdupq_n_s64(v79 - 1);
      do
      {
        if (v79)
        {
          v81 = 0;
          v82 = &v11->i16[4];
          do
          {
            v83 = vdupq_n_s64(v81);
            v84 = vmovn_s64(vcgeq_u64(v132, vorrq_s8(v83, xmmword_25A99B0D0)));
            if (vuzp1_s8(vuzp1_s16(v84, *v83.i8), *v83.i8).u8[0])
            {
              *(v82 - 4) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(v84, *&v83), *&v83).i8[1])
            {
              *(v82 - 3) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(*&v83, vmovn_s64(vcgeq_u64(v132, vorrq_s8(v83, xmmword_25A99B0C0)))), *&v83).i8[2])
            {
              *(v82 - 2) = a4;
              *(v82 - 1) = a4;
            }

            v85 = vmovn_s64(vcgeq_u64(v132, vorrq_s8(v83, xmmword_25A9C2E80)));
            if (vuzp1_s8(*&v83, vuzp1_s16(v85, *&v83)).i32[1])
            {
              *v82 = a4;
            }

            if (vuzp1_s8(*&v83, vuzp1_s16(v85, *&v83)).i8[5])
            {
              v82[1] = a4;
            }

            v86 = vmovn_s64(vcgeq_u64(v132, vorrq_s8(v83, xmmword_25A9C2E70)));
            if (vuzp1_s8(*&v86, vuzp1_s16(v86, v86)).i8[6])
            {
              v82[2] = a4;
            }

            v87 = vuzp1_s16(v86, v86);
            if (vuzp1_s8(v87, v87).i8[7])
            {
              v82[3] = a4;
            }

            v81 += 8;
            v82 += 8;
          }

          while (((v79 + 7) & 0xFFFFFFFFFFFFFFF8) != v81);
        }

        mlx::core::strided_reduce<unsigned short,unsigned short,mlx::core::MaxReduce>(v9, v11, v78, v79);
        v9 = (v139 + 2 * v79 * v78);
        v11 = (v138 + 2 * v79);
        v138 = v11;
        v139 = v9;
        v80 = v80 + v79;
      }

      while (v80 < *(*a2 + 48));
    }
  }

LABEL_67:
  if (v143)
  {
    v144 = v143;
    operator delete(v143);
  }

  if (v141)
  {
    v142 = v141;
    operator delete(v141);
  }

  v70 = *MEMORY[0x277D85DE8];
}

void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, int **a3, unsigned int a4)
{
  v149 = *MEMORY[0x277D85DE8];
  v145 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v140);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v138 = v11;
  v139 = v9;
  if (v140 == 1)
  {
    v19 = v142;
    if (v142 - v141 != 4)
    {
      goto LABEL_23;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v141;
      v23 = vdupq_n_s16(a4);
      do
      {
        v24 = v23;
        v11->i16[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 16)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vminq_u16(v25, v30);
            v24 = vminq_u16(v24, v29);
            v26 = v28 - 16;
            v18 = v28 > 0x1F;
            v28 -= 16;
          }

          while (v18);
        }

        v31 = vminvq_u16(vminq_u16(v24, v25));
        if (a4 < v31)
        {
          v31 = a4;
        }

        v11->i16[0] = v31;
        if (v26 >= 1)
        {
          v32 = v26 + 1;
          do
          {
            v34 = *v27;
            v27 = (v27 + 2);
            v33 = v34;
            if (v31 >= v34)
            {
              v31 = v33;
            }

            v11->i16[0] = v31;
            --v32;
          }

          while (v32 > 1);
        }

        ++v21;
        v11 = (v11 + 2);
        v9 = (v9 + 2 * v22);
      }

      while (v21 != v20);
    }

    v138 = v11;
    v139 = v9;
  }

  else
  {
    if (!v140)
    {
      v11->i16[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_n_s16(a4);
      v14 = v13;
      if (v12 < 16)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vminq_u16(v14, v16);
          v13 = vminq_u16(v13, v15);
          v17 = v12 - 16;
          v18 = v12 > 0x1F;
          v12 -= 16;
        }

        while (v18);
      }

      v44 = vminvq_u16(vminq_u16(v13, v14));
      if (a4 < v44)
      {
        v44 = a4;
      }

      v11->i16[0] = v44;
      if (v17 >= 1)
      {
        v45 = v17 + 1;
        do
        {
          v47 = *v9;
          v9 = (v9 + 2);
          v46 = v47;
          if (v44 >= v47)
          {
            v44 = v46;
          }

          v11->i16[0] = v44;
          --v45;
        }

        while (v45 > 1);
      }

      goto LABEL_67;
    }

    if ((v140 & 0xFFFFFFFD) == 1)
    {
      v19 = v142;
LABEL_23:
      v35 = *(v19 - 1);
      v142 = v19 - 4;
      v144 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v134);
      v36 = *(*a2 + 48);
      if (v142 == v141)
      {
        v49 = v138;
        if (v36)
        {
          v50 = 0;
          v51 = v134;
          v52 = ((v135 - v134) >> 2) - 1;
          v53 = __p;
          v130 = v139;
          v131 = vdupq_n_s16(a4);
          do
          {
            if ((v52 & 0x80000000) != 0)
            {
              v58 = 0;
            }

            else
            {
              v54 = 0;
              v55 = v52;
              quot = v50;
              do
              {
                v57 = ldiv(quot, v51[v55]);
                quot = v57.quot;
                v54 += v53[v55--] * v57.rem;
              }

              while (v55 != -1);
              v58 = 2 * v54;
            }

            *v49 = a4;
            v59 = (v130 + v58);
            if (v35 < 16)
            {
              v61 = v131;
              v62 = v131;
              v65 = v35;
            }

            else
            {
              v60 = v35;
              v61 = v131;
              v62 = v131;
              do
              {
                v63 = *v59;
                v64 = *(v59 + 1);
                v59 += 2;
                v61 = vminq_u16(v61, v64);
                v62 = vminq_u16(v62, v63);
                v65 = v60 - 16;
                v18 = v60 > 0x1F;
                v60 -= 16;
              }

              while (v18);
            }

            v66 = vminvq_u16(vminq_u16(v62, v61));
            if (a4 < v66)
            {
              v66 = a4;
            }

            *v49 = v66;
            if (v65 >= 1)
            {
              v67 = v65 + 1;
              do
              {
                v69 = *v59;
                v59 = (v59 + 2);
                v68 = v69;
                if (v66 >= v69)
                {
                  v66 = v68;
                }

                *v49 = v66;
                --v67;
              }

              while (v67 > 1);
            }

            ++v50;
            ++v49;
          }

          while (v50 != v36);
        }

        v138 = v49;
      }

      else if (v36)
      {
        v37 = v134;
        v38 = (v135 - v134) >> 2;
        v39 = (v38 - 1);
        if (v38 - 1 >= 0)
        {
          v40 = 0;
          v41 = __p;
          v42 = 0;
          do
          {
            v43 = ldiv(v42, v37[v39]);
            v42 = v43.quot;
            v40 += v41[v39--] * v43.rem;
          }

          while (v39 != -1);
        }

        v138->i16[0] = v145;
        v148 = 0;
        operator new();
      }

LABEL_63:
      if (__p)
      {
        v137 = __p;
        operator delete(__p);
      }

      if (v134)
      {
        v135 = v134;
        operator delete(v134);
      }

      goto LABEL_67;
    }

    if (v140 != 2)
    {
      if (v140 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v134);
        if (*(*a2 + 48))
        {
          v71 = v134;
          v72 = (v135 - v134) >> 2;
          v73 = (v72 - 1);
          if (v72 - 1 >= 0)
          {
            v74 = 0;
            v75 = __p;
            v76 = 0;
            do
            {
              v77 = ldiv(v76, v71[v73]);
              v76 = v77.quot;
              v74 += v75[v73--] * v77.rem;
            }

            while (v73 != -1);
          }

          v146 = 0;
          operator new();
        }

        goto LABEL_63;
      }

      if (v140 != 4)
      {
        goto LABEL_67;
      }

      v48 = v142;
      goto LABEL_99;
    }

    v48 = v142;
    if (v142 - v141 != 4)
    {
LABEL_99:
      v88 = *(v48 - 1);
      v89 = *(v144 - 1);
      v142 = v48 - 4;
      v144 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v134);
      v90 = *(*a2 + 48);
      if (v142 == v141)
      {
        if (v90)
        {
          v108 = 0;
          v109 = vdupq_n_s64(v89 - 1);
          v110 = xmmword_25A9C2E70;
          v111 = xmmword_25A9C2E80;
          v112 = xmmword_25A99B0C0;
          v113 = xmmword_25A99B0D0;
          v133 = v109;
          do
          {
            v114 = v134;
            v115 = (v135 - v134) >> 2;
            v116 = (v115 - 1);
            if (v115 - 1 < 0)
            {
              v121 = 0;
            }

            else
            {
              v117 = 0;
              v118 = __p;
              v119 = v108;
              do
              {
                v120 = ldiv(v119, v114[v116]);
                v119 = v120.quot;
                v117 += v118[v116--] * v120.rem;
              }

              while (v116 != -1);
              v121 = 2 * v117;
              v110 = xmmword_25A9C2E70;
              v109 = v133;
              v112 = xmmword_25A99B0C0;
              v111 = xmmword_25A9C2E80;
              v113 = xmmword_25A99B0D0;
            }

            v122 = v138;
            if (v89)
            {
              v123 = 0;
              v124 = &v138->i16[4];
              do
              {
                v125 = vdupq_n_s64(v123);
                v126 = vmovn_s64(vcgeq_u64(v109, vorrq_s8(v125, v113)));
                if (vuzp1_s8(vuzp1_s16(v126, *v125.i8), *v125.i8).u8[0])
                {
                  *(v124 - 4) = a4;
                }

                if (vuzp1_s8(vuzp1_s16(v126, *&v125), *&v125).i8[1])
                {
                  *(v124 - 3) = a4;
                }

                if (vuzp1_s8(vuzp1_s16(*&v125, vmovn_s64(vcgeq_u64(v109, vorrq_s8(v125, v112)))), *&v125).i8[2])
                {
                  *(v124 - 2) = a4;
                  *(v124 - 1) = a4;
                }

                v127 = vmovn_s64(vcgeq_u64(v109, vorrq_s8(v125, v111)));
                if (vuzp1_s8(*&v125, vuzp1_s16(v127, *&v125)).i32[1])
                {
                  *v124 = a4;
                }

                if (vuzp1_s8(*&v125, vuzp1_s16(v127, *&v125)).i8[5])
                {
                  v124[1] = a4;
                }

                v128 = vmovn_s64(vcgeq_u64(v109, vorrq_s8(v125, v110)));
                if (vuzp1_s8(*&v128, vuzp1_s16(v128, v128)).i8[6])
                {
                  v124[2] = a4;
                }

                v129 = vuzp1_s16(v128, v128);
                if (vuzp1_s8(v129, v129).i8[7])
                {
                  v124[3] = a4;
                }

                v123 += 8;
                v124 += 8;
              }

              while (((v89 + 7) & 0xFFFFFFFFFFFFFFF8) != v123);
            }

            mlx::core::strided_reduce<unsigned short,unsigned short,mlx::core::MinReduce>((v139 + v121), v122, v88, v89);
            v138 = (v138 + 2 * v89);
            v108 += v89;
            v110 = xmmword_25A9C2E70;
            v109 = v133;
            v112 = xmmword_25A99B0C0;
            v111 = xmmword_25A9C2E80;
            v113 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v108);
        }
      }

      else if (v90)
      {
        v91 = xmmword_25A9C2E70;
        v92 = xmmword_25A9C2E80;
        v93 = xmmword_25A99B0C0;
        v94 = xmmword_25A99B0D0;
        v95 = v134;
        v96 = (v135 - v134) >> 2;
        v97 = (v96 - 1);
        if (v96 - 1 >= 0)
        {
          v98 = 0;
          v99 = __p;
          v100 = 0;
          do
          {
            v101 = ldiv(v100, v95[v97]);
            v100 = v101.quot;
            v98 += v99[v97--] * v101.rem;
          }

          while (v97 != -1);
          v92 = xmmword_25A9C2E80;
          v91 = xmmword_25A9C2E70;
          v94 = xmmword_25A99B0D0;
          v93 = xmmword_25A99B0C0;
        }

        if (v89)
        {
          v102 = 0;
          v103 = vdupq_n_s64(v89 - 1);
          v104 = &v138->i16[4];
          do
          {
            v105 = vdupq_n_s64(v102);
            v106 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v105, v94)));
            if (vuzp1_s8(vuzp1_s16(v106, *v103.i8), *v103.i8).u8[0])
            {
              *(v104 - 4) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(v106, *&v103), *&v103).i8[1])
            {
              *(v104 - 3) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(*&v103, vmovn_s64(vcgeq_u64(v103, vorrq_s8(v105, v93)))), *&v103).i8[2])
            {
              *(v104 - 2) = a4;
              *(v104 - 1) = a4;
            }

            v107 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v105, v92)));
            if (vuzp1_s8(*&v103, vuzp1_s16(v107, *&v103)).i32[1])
            {
              *v104 = a4;
            }

            if (vuzp1_s8(*&v103, vuzp1_s16(v107, *&v103)).i8[5])
            {
              v104[1] = a4;
            }

            if (vuzp1_s8(*&v103, vuzp1_s16(*&v103, vmovn_s64(vcgeq_u64(v103, vorrq_s8(v105, v91))))).i8[6])
            {
              v104[2] = a4;
              v104[3] = a4;
            }

            v102 += 8;
            v104 += 8;
          }

          while (((v89 + 7) & 0xFFFFFFFFFFFFFFF8) != v102);
        }

        v147 = 0;
        operator new();
      }

      goto LABEL_63;
    }

    v78 = *(v142 - 1);
    v79 = *(v144 - 1);
    v142 -= 4;
    v144 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v80) = 0;
      v132 = vdupq_n_s64(v79 - 1);
      do
      {
        if (v79)
        {
          v81 = 0;
          v82 = &v11->i16[4];
          do
          {
            v83 = vdupq_n_s64(v81);
            v84 = vmovn_s64(vcgeq_u64(v132, vorrq_s8(v83, xmmword_25A99B0D0)));
            if (vuzp1_s8(vuzp1_s16(v84, *v83.i8), *v83.i8).u8[0])
            {
              *(v82 - 4) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(v84, *&v83), *&v83).i8[1])
            {
              *(v82 - 3) = a4;
            }

            if (vuzp1_s8(vuzp1_s16(*&v83, vmovn_s64(vcgeq_u64(v132, vorrq_s8(v83, xmmword_25A99B0C0)))), *&v83).i8[2])
            {
              *(v82 - 2) = a4;
              *(v82 - 1) = a4;
            }

            v85 = vmovn_s64(vcgeq_u64(v132, vorrq_s8(v83, xmmword_25A9C2E80)));
            if (vuzp1_s8(*&v83, vuzp1_s16(v85, *&v83)).i32[1])
            {
              *v82 = a4;
            }

            if (vuzp1_s8(*&v83, vuzp1_s16(v85, *&v83)).i8[5])
            {
              v82[1] = a4;
            }

            v86 = vmovn_s64(vcgeq_u64(v132, vorrq_s8(v83, xmmword_25A9C2E70)));
            if (vuzp1_s8(*&v86, vuzp1_s16(v86, v86)).i8[6])
            {
              v82[2] = a4;
            }

            v87 = vuzp1_s16(v86, v86);
            if (vuzp1_s8(v87, v87).i8[7])
            {
              v82[3] = a4;
            }

            v81 += 8;
            v82 += 8;
          }

          while (((v79 + 7) & 0xFFFFFFFFFFFFFFF8) != v81);
        }

        mlx::core::strided_reduce<unsigned short,unsigned short,mlx::core::MinReduce>(v9, v11, v78, v79);
        v9 = (v139 + 2 * v79 * v78);
        v11 = (v138 + 2 * v79);
        v138 = v11;
        v139 = v9;
        v80 = v80 + v79;
      }

      while (v80 < *(*a2 + 48));
    }
  }

LABEL_67:
  if (v143)
  {
    v144 = v143;
    operator delete(v143);
  }

  if (v141)
  {
    v142 = v141;
    operator delete(v141);
  }

  v70 = *MEMORY[0x277D85DE8];
}

_OWORD *mlx::core::strided_reduce<unsigned short,unsigned short,mlx::core::MaxReduce>(_OWORD *result, uint16x8_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 0x10)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vmaxq_u16(v8, v5[1]);
          *v5 = vmaxq_u16(v7, *v5);
          v5[1] = v9;
          v5 += 2;
          v6 -= 16;
        }

        while (v6 > 0xF);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 2);
        v10 = v11;
        if (v5->u16[0] > v11)
        {
          v10 = v5->i16[0];
        }

        v5->i16[0] = v10;
        v5 = (v5 + 2);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06E98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 2 * **(result + 16) + 2 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_s16(v5);
  v7 = v6;
  if (v4 < 16)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vmaxq_u16(v9, v7);
      v6 = vmaxq_u16(v8, v6);
      v10 = v4 - 16;
      v11 = v4 > 0x1F;
      v4 -= 16;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vmaxvq_u16(vmaxq_u16(v6, v7));
  if (v12 <= v13)
  {
    LOWORD(v12) = v13;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v14 = v10 + 1;
    do
    {
      v16 = *v2;
      v2 = (v2 + 2);
      v15 = v16;
      if (v12 <= v16)
      {
        LOWORD(v12) = v15;
      }

      *v3 = v12;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06F18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C06F98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 2 * **(result + 24) + 2 * *a2);
  if (*v2 > v3)
  {
    LOWORD(v3) = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_OWORD *mlx::core::strided_reduce<unsigned short,unsigned short,mlx::core::MinReduce>(_OWORD *result, uint16x8_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 0x10)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vminq_u16(v5[1], v8);
          *v5 = vminq_u16(*v5, v7);
          v5[1] = v9;
          v5 += 2;
          v6 -= 16;
        }

        while (v6 > 0xF);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 2);
        v10 = v11;
        if (v5->u16[0] < v11)
        {
          v10 = v5->i16[0];
        }

        v5->i16[0] = v10;
        v5 = (v5 + 2);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07018;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 2 * **(result + 16) + 2 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_s16(v5);
  v7 = v6;
  if (v4 < 16)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vminq_u16(v7, v9);
      v6 = vminq_u16(v6, v8);
      v10 = v4 - 16;
      v11 = v4 > 0x1F;
      v4 -= 16;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vminvq_u16(vminq_u16(v6, v7));
  if (v12 >= v13)
  {
    LOWORD(v12) = v13;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v14 = v10 + 1;
    do
    {
      v16 = *v2;
      v2 = (v2 + 2);
      v15 = v16;
      if (v12 >= v16)
      {
        LOWORD(v12) = v15;
      }

      *v3 = v12;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07098;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07118;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 2 * **(result + 24) + 2 * *a2);
  if (*v2 < v3)
  {
    LOWORD(v3) = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned short,unsigned short,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned short)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, int **a3, unsigned int a4)
{
  v140 = *MEMORY[0x277D85DE8];
  v136 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v131);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v129 = v11;
  v130 = v9;
  if (v131 == 1)
  {
    v19 = v133;
    if (v133 - v132 != 4)
    {
      goto LABEL_23;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v132;
      v23 = vdupq_n_s32(a4);
      do
      {
        v24 = v23;
        v11->i32[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 8)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vmaxq_u32(v30, v25);
            v24 = vmaxq_u32(v29, v24);
            v26 = v28 - 8;
            v18 = v28 > 0xF;
            v28 -= 8;
          }

          while (v18);
        }

        v31 = vmaxvq_u32(vmaxq_u32(v24, v25));
        if (a4 > v31)
        {
          v31 = a4;
        }

        v11->i32[0] = v31;
        if (v26 >= 1)
        {
          v32 = v26 + 1;
          do
          {
            v34 = *v27;
            v27 = (v27 + 4);
            v33 = v34;
            if (v31 <= v34)
            {
              v31 = v33;
            }

            v11->i32[0] = v31;
            --v32;
          }

          while (v32 > 1);
        }

        ++v21;
        v11 = (v11 + 4);
        v9 = (v9 + 4 * v22);
      }

      while (v21 != v20);
    }

    v129 = v11;
    v130 = v9;
  }

  else
  {
    if (!v131)
    {
      v11->i32[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_n_s32(a4);
      v14 = v13;
      if (v12 < 8)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vmaxq_u32(v16, v14);
          v13 = vmaxq_u32(v15, v13);
          v17 = v12 - 8;
          v18 = v12 > 0xF;
          v12 -= 8;
        }

        while (v18);
      }

      v44 = vmaxvq_u32(vmaxq_u32(v13, v14));
      if (a4 > v44)
      {
        v44 = a4;
      }

      v11->i32[0] = v44;
      if (v17 >= 1)
      {
        v45 = v17 + 1;
        do
        {
          v47 = *v9;
          v9 = (v9 + 4);
          v46 = v47;
          if (v44 <= v47)
          {
            v44 = v46;
          }

          v11->i32[0] = v44;
          --v45;
        }

        while (v45 > 1);
      }

      goto LABEL_67;
    }

    if ((v131 & 0xFFFFFFFD) == 1)
    {
      v19 = v133;
LABEL_23:
      v35 = *(v19 - 1);
      v133 = v19 - 4;
      v135 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
      v36 = *(*a2 + 48);
      if (v133 == v132)
      {
        v49 = v129;
        if (v36)
        {
          v50 = 0;
          v51 = v125;
          v52 = ((v126 - v125) >> 2) - 1;
          v53 = __p;
          v121 = v130;
          v122 = vdupq_n_s32(a4);
          do
          {
            if ((v52 & 0x80000000) != 0)
            {
              v58 = 0;
            }

            else
            {
              v54 = 0;
              v55 = v52;
              quot = v50;
              do
              {
                v57 = ldiv(quot, v51[v55]);
                quot = v57.quot;
                v54 += v53[v55--] * v57.rem;
              }

              while (v55 != -1);
              v58 = 4 * v54;
            }

            *v49 = a4;
            v59 = (v121 + v58);
            if (v35 < 8)
            {
              v61 = v122;
              v62 = v122;
              v65 = v35;
            }

            else
            {
              v60 = v35;
              v61 = v122;
              v62 = v122;
              do
              {
                v63 = *v59;
                v64 = *(v59 + 1);
                v59 += 2;
                v61 = vmaxq_u32(v64, v61);
                v62 = vmaxq_u32(v63, v62);
                v65 = v60 - 8;
                v18 = v60 > 0xF;
                v60 -= 8;
              }

              while (v18);
            }

            v66 = vmaxvq_u32(vmaxq_u32(v62, v61));
            if (a4 > v66)
            {
              v66 = a4;
            }

            *v49 = v66;
            if (v65 >= 1)
            {
              v67 = v65 + 1;
              do
              {
                v69 = *v59;
                v59 = (v59 + 4);
                v68 = v69;
                if (v66 <= v69)
                {
                  v66 = v68;
                }

                *v49 = v66;
                --v67;
              }

              while (v67 > 1);
            }

            ++v50;
            ++v49;
          }

          while (v50 != v36);
        }

        v129 = v49;
      }

      else if (v36)
      {
        v37 = v125;
        v38 = (v126 - v125) >> 2;
        v39 = (v38 - 1);
        if (v38 - 1 >= 0)
        {
          v40 = 0;
          v41 = __p;
          v42 = 0;
          do
          {
            v43 = ldiv(v42, v37[v39]);
            v42 = v43.quot;
            v40 += v41[v39--] * v43.rem;
          }

          while (v39 != -1);
        }

        v129->i32[0] = v136;
        v139 = 0;
        operator new();
      }

LABEL_63:
      if (__p)
      {
        v128 = __p;
        operator delete(__p);
      }

      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      goto LABEL_67;
    }

    if (v131 != 2)
    {
      if (v131 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
        if (*(*a2 + 48))
        {
          v71 = v125;
          v72 = (v126 - v125) >> 2;
          v73 = (v72 - 1);
          if (v72 - 1 >= 0)
          {
            v74 = 0;
            v75 = __p;
            v76 = 0;
            do
            {
              v77 = ldiv(v76, v71[v73]);
              v76 = v77.quot;
              v74 += v75[v73--] * v77.rem;
            }

            while (v73 != -1);
          }

          v137 = 0;
          operator new();
        }

        goto LABEL_63;
      }

      if (v131 != 4)
      {
        goto LABEL_67;
      }

      v48 = v133;
      goto LABEL_91;
    }

    v48 = v133;
    if (v133 - v132 != 4)
    {
LABEL_91:
      v86 = *(v48 - 1);
      v87 = *(v135 - 1);
      v133 = v48 - 4;
      v135 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
      v88 = *(*a2 + 48);
      if (v133 == v132)
      {
        if (v88)
        {
          v103 = 0;
          v104 = vdupq_n_s64(v87 - 1);
          v105 = xmmword_25A99B0C0;
          v106 = xmmword_25A99B0D0;
          v124 = v104;
          do
          {
            v107 = v125;
            v108 = (v126 - v125) >> 2;
            v109 = (v108 - 1);
            if (v108 - 1 < 0)
            {
              v114 = 0;
            }

            else
            {
              v110 = 0;
              v111 = __p;
              v112 = v103;
              do
              {
                v113 = ldiv(v112, v107[v109]);
                v112 = v113.quot;
                v110 += v111[v109--] * v113.rem;
              }

              while (v109 != -1);
              v114 = 4 * v110;
              v105 = xmmword_25A99B0C0;
              v104 = v124;
              v106 = xmmword_25A99B0D0;
            }

            v115 = v129;
            if (v87)
            {
              v116 = 0;
              v117 = &v129->u32[2];
              do
              {
                v118 = vdupq_n_s64(v116);
                v119 = vmovn_s64(vcgeq_u64(v104, vorrq_s8(v118, v106)));
                if (vuzp1_s16(v119, *v118.i8).u8[0])
                {
                  *(v117 - 2) = a4;
                }

                if (vuzp1_s16(v119, *&v118).i8[2])
                {
                  *(v117 - 1) = a4;
                }

                v120 = vmovn_s64(vcgeq_u64(v104, vorrq_s8(v118, v105)));
                if (vuzp1_s16(v120, v120).i32[1])
                {
                  *v117 = a4;
                  v117[1] = a4;
                }

                v116 += 4;
                v117 += 4;
              }

              while (((v87 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v116);
            }

            mlx::core::strided_reduce<unsigned int,unsigned int,mlx::core::MaxReduce>((v130 + v114), v115, v86, v87);
            v129 = (v129 + 4 * v87);
            v103 += v87;
            v105 = xmmword_25A99B0C0;
            v104 = v124;
            v106 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v103);
        }
      }

      else if (v88)
      {
        v89 = xmmword_25A99B0C0;
        v90 = xmmword_25A99B0D0;
        v91 = v125;
        v92 = (v126 - v125) >> 2;
        v93 = (v92 - 1);
        if (v92 - 1 >= 0)
        {
          v94 = 0;
          v95 = __p;
          v96 = 0;
          do
          {
            v97 = ldiv(v96, v91[v93]);
            v96 = v97.quot;
            v94 += v95[v93--] * v97.rem;
          }

          while (v93 != -1);
          v90 = xmmword_25A99B0D0;
          v89 = xmmword_25A99B0C0;
        }

        if (v87)
        {
          v98 = 0;
          v99 = vdupq_n_s64(v87 - 1);
          v100 = &v129->u32[2];
          do
          {
            v101 = vdupq_n_s64(v98);
            v102 = vmovn_s64(vcgeq_u64(v99, vorrq_s8(v101, v90)));
            if (vuzp1_s16(v102, *v99.i8).u8[0])
            {
              *(v100 - 2) = a4;
            }

            if (vuzp1_s16(v102, *&v99).i8[2])
            {
              *(v100 - 1) = a4;
            }

            if (vuzp1_s16(*&v99, vmovn_s64(vcgeq_u64(v99, vorrq_s8(v101, v89)))).i32[1])
            {
              *v100 = a4;
              v100[1] = a4;
            }

            v98 += 4;
            v100 += 4;
          }

          while (((v87 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v98);
        }

        v138 = 0;
        operator new();
      }

      goto LABEL_63;
    }

    v78 = *(v133 - 1);
    v79 = *(v135 - 1);
    v133 -= 4;
    v135 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v80) = 0;
      v123 = vdupq_n_s64(v79 - 1);
      do
      {
        if (v79)
        {
          v81 = 0;
          v82 = &v11->u32[2];
          do
          {
            v83 = vdupq_n_s64(v81);
            v84 = vmovn_s64(vcgeq_u64(v123, vorrq_s8(v83, xmmword_25A99B0D0)));
            if (vuzp1_s16(v84, *v83.i8).u8[0])
            {
              *(v82 - 2) = a4;
            }

            if (vuzp1_s16(v84, *&v83).i8[2])
            {
              *(v82 - 1) = a4;
            }

            v85 = vmovn_s64(vcgeq_u64(v123, vorrq_s8(v83, xmmword_25A99B0C0)));
            if (vuzp1_s16(v85, v85).i32[1])
            {
              *v82 = a4;
              v82[1] = a4;
            }

            v81 += 4;
            v82 += 4;
          }

          while (((v79 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v81);
        }

        mlx::core::strided_reduce<unsigned int,unsigned int,mlx::core::MaxReduce>(v9, v11, v78, v79);
        v9 = (v130 + 4 * v79 * v78);
        v11 = (v129 + 4 * v79);
        v129 = v11;
        v130 = v9;
        v80 = v80 + v79;
      }

      while (v80 < *(*a2 + 48));
    }
  }

LABEL_67:
  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  v70 = *MEMORY[0x277D85DE8];
}

void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, int **a3, unsigned int a4)
{
  v140 = *MEMORY[0x277D85DE8];
  v136 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v131);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v129 = v11;
  v130 = v9;
  if (v131 == 1)
  {
    v19 = v133;
    if (v133 - v132 != 4)
    {
      goto LABEL_23;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v132;
      v23 = vdupq_n_s32(a4);
      do
      {
        v24 = v23;
        v11->i32[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 8)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vminq_u32(v25, v30);
            v24 = vminq_u32(v24, v29);
            v26 = v28 - 8;
            v18 = v28 > 0xF;
            v28 -= 8;
          }

          while (v18);
        }

        v31 = vminvq_u32(vminq_u32(v24, v25));
        if (a4 < v31)
        {
          v31 = a4;
        }

        v11->i32[0] = v31;
        if (v26 >= 1)
        {
          v32 = v26 + 1;
          do
          {
            v34 = *v27;
            v27 = (v27 + 4);
            v33 = v34;
            if (v31 >= v34)
            {
              v31 = v33;
            }

            v11->i32[0] = v31;
            --v32;
          }

          while (v32 > 1);
        }

        ++v21;
        v11 = (v11 + 4);
        v9 = (v9 + 4 * v22);
      }

      while (v21 != v20);
    }

    v129 = v11;
    v130 = v9;
  }

  else
  {
    if (!v131)
    {
      v11->i32[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_n_s32(a4);
      v14 = v13;
      if (v12 < 8)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vminq_u32(v14, v16);
          v13 = vminq_u32(v13, v15);
          v17 = v12 - 8;
          v18 = v12 > 0xF;
          v12 -= 8;
        }

        while (v18);
      }

      v44 = vminvq_u32(vminq_u32(v13, v14));
      if (a4 < v44)
      {
        v44 = a4;
      }

      v11->i32[0] = v44;
      if (v17 >= 1)
      {
        v45 = v17 + 1;
        do
        {
          v47 = *v9;
          v9 = (v9 + 4);
          v46 = v47;
          if (v44 >= v47)
          {
            v44 = v46;
          }

          v11->i32[0] = v44;
          --v45;
        }

        while (v45 > 1);
      }

      goto LABEL_67;
    }

    if ((v131 & 0xFFFFFFFD) == 1)
    {
      v19 = v133;
LABEL_23:
      v35 = *(v19 - 1);
      v133 = v19 - 4;
      v135 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
      v36 = *(*a2 + 48);
      if (v133 == v132)
      {
        v49 = v129;
        if (v36)
        {
          v50 = 0;
          v51 = v125;
          v52 = ((v126 - v125) >> 2) - 1;
          v53 = __p;
          v121 = v130;
          v122 = vdupq_n_s32(a4);
          do
          {
            if ((v52 & 0x80000000) != 0)
            {
              v58 = 0;
            }

            else
            {
              v54 = 0;
              v55 = v52;
              quot = v50;
              do
              {
                v57 = ldiv(quot, v51[v55]);
                quot = v57.quot;
                v54 += v53[v55--] * v57.rem;
              }

              while (v55 != -1);
              v58 = 4 * v54;
            }

            *v49 = a4;
            v59 = (v121 + v58);
            if (v35 < 8)
            {
              v61 = v122;
              v62 = v122;
              v65 = v35;
            }

            else
            {
              v60 = v35;
              v61 = v122;
              v62 = v122;
              do
              {
                v63 = *v59;
                v64 = *(v59 + 1);
                v59 += 2;
                v61 = vminq_u32(v61, v64);
                v62 = vminq_u32(v62, v63);
                v65 = v60 - 8;
                v18 = v60 > 0xF;
                v60 -= 8;
              }

              while (v18);
            }

            v66 = vminvq_u32(vminq_u32(v62, v61));
            if (a4 < v66)
            {
              v66 = a4;
            }

            *v49 = v66;
            if (v65 >= 1)
            {
              v67 = v65 + 1;
              do
              {
                v69 = *v59;
                v59 = (v59 + 4);
                v68 = v69;
                if (v66 >= v69)
                {
                  v66 = v68;
                }

                *v49 = v66;
                --v67;
              }

              while (v67 > 1);
            }

            ++v50;
            ++v49;
          }

          while (v50 != v36);
        }

        v129 = v49;
      }

      else if (v36)
      {
        v37 = v125;
        v38 = (v126 - v125) >> 2;
        v39 = (v38 - 1);
        if (v38 - 1 >= 0)
        {
          v40 = 0;
          v41 = __p;
          v42 = 0;
          do
          {
            v43 = ldiv(v42, v37[v39]);
            v42 = v43.quot;
            v40 += v41[v39--] * v43.rem;
          }

          while (v39 != -1);
        }

        v129->i32[0] = v136;
        v139 = 0;
        operator new();
      }

LABEL_63:
      if (__p)
      {
        v128 = __p;
        operator delete(__p);
      }

      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      goto LABEL_67;
    }

    if (v131 != 2)
    {
      if (v131 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
        if (*(*a2 + 48))
        {
          v71 = v125;
          v72 = (v126 - v125) >> 2;
          v73 = (v72 - 1);
          if (v72 - 1 >= 0)
          {
            v74 = 0;
            v75 = __p;
            v76 = 0;
            do
            {
              v77 = ldiv(v76, v71[v73]);
              v76 = v77.quot;
              v74 += v75[v73--] * v77.rem;
            }

            while (v73 != -1);
          }

          v137 = 0;
          operator new();
        }

        goto LABEL_63;
      }

      if (v131 != 4)
      {
        goto LABEL_67;
      }

      v48 = v133;
      goto LABEL_91;
    }

    v48 = v133;
    if (v133 - v132 != 4)
    {
LABEL_91:
      v86 = *(v48 - 1);
      v87 = *(v135 - 1);
      v133 = v48 - 4;
      v135 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
      v88 = *(*a2 + 48);
      if (v133 == v132)
      {
        if (v88)
        {
          v103 = 0;
          v104 = vdupq_n_s64(v87 - 1);
          v105 = xmmword_25A99B0C0;
          v106 = xmmword_25A99B0D0;
          v124 = v104;
          do
          {
            v107 = v125;
            v108 = (v126 - v125) >> 2;
            v109 = (v108 - 1);
            if (v108 - 1 < 0)
            {
              v114 = 0;
            }

            else
            {
              v110 = 0;
              v111 = __p;
              v112 = v103;
              do
              {
                v113 = ldiv(v112, v107[v109]);
                v112 = v113.quot;
                v110 += v111[v109--] * v113.rem;
              }

              while (v109 != -1);
              v114 = 4 * v110;
              v105 = xmmword_25A99B0C0;
              v104 = v124;
              v106 = xmmword_25A99B0D0;
            }

            v115 = v129;
            if (v87)
            {
              v116 = 0;
              v117 = &v129->u32[2];
              do
              {
                v118 = vdupq_n_s64(v116);
                v119 = vmovn_s64(vcgeq_u64(v104, vorrq_s8(v118, v106)));
                if (vuzp1_s16(v119, *v118.i8).u8[0])
                {
                  *(v117 - 2) = a4;
                }

                if (vuzp1_s16(v119, *&v118).i8[2])
                {
                  *(v117 - 1) = a4;
                }

                v120 = vmovn_s64(vcgeq_u64(v104, vorrq_s8(v118, v105)));
                if (vuzp1_s16(v120, v120).i32[1])
                {
                  *v117 = a4;
                  v117[1] = a4;
                }

                v116 += 4;
                v117 += 4;
              }

              while (((v87 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v116);
            }

            mlx::core::strided_reduce<unsigned int,unsigned int,mlx::core::MinReduce>((v130 + v114), v115, v86, v87);
            v129 = (v129 + 4 * v87);
            v103 += v87;
            v105 = xmmword_25A99B0C0;
            v104 = v124;
            v106 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v103);
        }
      }

      else if (v88)
      {
        v89 = xmmword_25A99B0C0;
        v90 = xmmword_25A99B0D0;
        v91 = v125;
        v92 = (v126 - v125) >> 2;
        v93 = (v92 - 1);
        if (v92 - 1 >= 0)
        {
          v94 = 0;
          v95 = __p;
          v96 = 0;
          do
          {
            v97 = ldiv(v96, v91[v93]);
            v96 = v97.quot;
            v94 += v95[v93--] * v97.rem;
          }

          while (v93 != -1);
          v90 = xmmword_25A99B0D0;
          v89 = xmmword_25A99B0C0;
        }

        if (v87)
        {
          v98 = 0;
          v99 = vdupq_n_s64(v87 - 1);
          v100 = &v129->u32[2];
          do
          {
            v101 = vdupq_n_s64(v98);
            v102 = vmovn_s64(vcgeq_u64(v99, vorrq_s8(v101, v90)));
            if (vuzp1_s16(v102, *v99.i8).u8[0])
            {
              *(v100 - 2) = a4;
            }

            if (vuzp1_s16(v102, *&v99).i8[2])
            {
              *(v100 - 1) = a4;
            }

            if (vuzp1_s16(*&v99, vmovn_s64(vcgeq_u64(v99, vorrq_s8(v101, v89)))).i32[1])
            {
              *v100 = a4;
              v100[1] = a4;
            }

            v98 += 4;
            v100 += 4;
          }

          while (((v87 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v98);
        }

        v138 = 0;
        operator new();
      }

      goto LABEL_63;
    }

    v78 = *(v133 - 1);
    v79 = *(v135 - 1);
    v133 -= 4;
    v135 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v80) = 0;
      v123 = vdupq_n_s64(v79 - 1);
      do
      {
        if (v79)
        {
          v81 = 0;
          v82 = &v11->u32[2];
          do
          {
            v83 = vdupq_n_s64(v81);
            v84 = vmovn_s64(vcgeq_u64(v123, vorrq_s8(v83, xmmword_25A99B0D0)));
            if (vuzp1_s16(v84, *v83.i8).u8[0])
            {
              *(v82 - 2) = a4;
            }

            if (vuzp1_s16(v84, *&v83).i8[2])
            {
              *(v82 - 1) = a4;
            }

            v85 = vmovn_s64(vcgeq_u64(v123, vorrq_s8(v83, xmmword_25A99B0C0)));
            if (vuzp1_s16(v85, v85).i32[1])
            {
              *v82 = a4;
              v82[1] = a4;
            }

            v81 += 4;
            v82 += 4;
          }

          while (((v79 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v81);
        }

        mlx::core::strided_reduce<unsigned int,unsigned int,mlx::core::MinReduce>(v9, v11, v78, v79);
        v9 = (v130 + 4 * v79 * v78);
        v11 = (v129 + 4 * v79);
        v129 = v11;
        v130 = v9;
        v80 = v80 + v79;
      }

      while (v80 < *(*a2 + 48));
    }
  }

LABEL_67:
  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  v70 = *MEMORY[0x277D85DE8];
}

_OWORD *mlx::core::strided_reduce<unsigned int,unsigned int,mlx::core::MaxReduce>(_OWORD *result, uint32x4_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 8)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vmaxq_u32(v8, v5[1]);
          *v5 = vmaxq_u32(v7, *v5);
          v5[1] = v9;
          v5 += 2;
          v6 -= 8;
        }

        while (v6 > 7);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 4);
        v10 = v11;
        if (v5->i32[0] > v11)
        {
          v10 = v5->i32[0];
        }

        v5->i32[0] = v10;
        v5 = (v5 + 4);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07198;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 4 * **(result + 16) + 4 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_f32(v5);
  v7 = v6;
  if (v4 < 8)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vmaxq_u32(v9, v7);
      v6 = vmaxq_u32(v8, v6);
      v10 = v4 - 8;
      v11 = v4 > 0xF;
      v4 -= 8;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vmaxvq_u32(vmaxq_u32(v6, v7));
  if (*v3 <= v13)
  {
    v12 = v13;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v14 = v10 + 1;
    do
    {
      v16 = *v2;
      v2 = (v2 + 4);
      v15 = v16;
      if (v12 <= v16)
      {
        v12 = v15;
      }

      *v3 = v12;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07218;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07298;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 4 * **(result + 24) + 4 * *a2);
  if (*v2 > v3)
  {
    v3 = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_OWORD *mlx::core::strided_reduce<unsigned int,unsigned int,mlx::core::MinReduce>(_OWORD *result, uint32x4_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 8)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vminq_u32(v5[1], v8);
          *v5 = vminq_u32(*v5, v7);
          v5[1] = v9;
          v5 += 2;
          v6 -= 8;
        }

        while (v6 > 7);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 4);
        v10 = v11;
        if (v5->i32[0] < v11)
        {
          v10 = v5->i32[0];
        }

        v5->i32[0] = v10;
        v5 = (v5 + 4);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07318;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 4 * **(result + 16) + 4 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_f32(v5);
  v7 = v6;
  if (v4 < 8)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vminq_u32(v7, v9);
      v6 = vminq_u32(v6, v8);
      v10 = v4 - 8;
      v11 = v4 > 0xF;
      v4 -= 8;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vminvq_u32(vminq_u32(v6, v7));
  if (*v3 >= v13)
  {
    v12 = v13;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v14 = v10 + 1;
    do
    {
      v16 = *v2;
      v2 = (v2 + 4);
      v15 = v16;
      if (v12 >= v16)
      {
        v12 = v15;
      }

      *v3 = v12;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07398;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07418;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 4 * **(result + 24) + 4 * *a2);
  if (*v2 < v3)
  {
    v3 = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned int,unsigned int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned int)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, int **a3, unint64_t a4)
{
  v136 = *MEMORY[0x277D85DE8];
  v132 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v127);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v125 = v11;
  v126 = v9;
  if (v127 == 1)
  {
    v19 = v129;
    if (v129 - v128 != 4)
    {
      goto LABEL_25;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v128;
      v23 = vdupq_lane_s64(a4, 0);
      do
      {
        v24 = v23;
        v11->i64[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 4)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vbslq_s8(vcgtq_u64(v30, v25), v30, v25);
            v24 = vbslq_s8(vcgtq_u64(v29, v24), v29, v24);
            v26 = v28 - 4;
            v18 = v28 > 7;
            v28 -= 4;
          }

          while (v18);
        }

        v31 = vbslq_s8(vcgtq_u64(v24, v25), v24, v25);
        v32 = v31.u64[1];
        if (v31.i64[1] <= v31.i64[0])
        {
          v32 = v31.i64[0];
        }

        if (a4 > v32)
        {
          v32 = a4;
        }

        v11->i64[0] = v32;
        if (v26 >= 1)
        {
          v33 = v26 + 1;
          do
          {
            v35 = *v27;
            v27 = (v27 + 8);
            v34 = v35;
            if (v32 <= v35)
            {
              v32 = v34;
            }

            v11->i64[0] = v32;
            --v33;
          }

          while (v33 > 1);
        }

        ++v21;
        v11 = (v11 + 8);
        v9 = (v9 + 8 * v22);
      }

      while (v21 != v20);
    }

    v125 = v11;
    v126 = v9;
  }

  else
  {
    if (!v127)
    {
      v11->i64[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_lane_s64(a4, 0);
      v14 = v13;
      if (v12 < 4)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vbslq_s8(vcgtq_u64(v16, v14), v16, v14);
          v13 = vbslq_s8(vcgtq_u64(v15, v13), v15, v13);
          v17 = v12 - 4;
          v18 = v12 > 7;
          v12 -= 4;
        }

        while (v18);
      }

      v45 = vbslq_s8(vcgtq_u64(v13, v14), v13, v14);
      v46 = v45.u64[1];
      if (v45.i64[1] <= v45.i64[0])
      {
        v46 = v45.i64[0];
      }

      if (a4 > v46)
      {
        v46 = a4;
      }

      v11->i64[0] = v46;
      if (v17 >= 1)
      {
        v47 = v17 + 1;
        do
        {
          v49 = *v9;
          v9 = (v9 + 8);
          v48 = v49;
          if (v46 <= v49)
          {
            v46 = v48;
          }

          v11->i64[0] = v46;
          --v47;
        }

        while (v47 > 1);
      }

      goto LABEL_73;
    }

    if ((v127 & 0xFFFFFFFD) == 1)
    {
      v19 = v129;
LABEL_25:
      v36 = *(v19 - 1);
      v129 = v19 - 4;
      v131 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v121);
      v37 = *(*a2 + 48);
      if (v129 == v128)
      {
        v51 = v125;
        if (v37)
        {
          v52 = 0;
          v53 = v121;
          v54 = ((v122 - v121) >> 2) - 1;
          v55 = __p;
          v117 = v126;
          v118 = vdupq_lane_s64(a4, 0);
          do
          {
            if ((v54 & 0x80000000) != 0)
            {
              v60 = 0;
            }

            else
            {
              v56 = 0;
              v57 = v54;
              quot = v52;
              do
              {
                v59 = ldiv(quot, v53[v57]);
                quot = v59.quot;
                v56 += v55[v57--] * v59.rem;
              }

              while (v57 != -1);
              v60 = 8 * v56;
            }

            *v51 = a4;
            v61 = (v117 + v60);
            if (v36 < 4)
            {
              v63 = v118;
              v64 = v118;
              v67 = v36;
            }

            else
            {
              v62 = v36;
              v63 = v118;
              v64 = v118;
              do
              {
                v65 = *v61;
                v66 = *(v61 + 1);
                v61 += 2;
                v63 = vbslq_s8(vcgtq_u64(v66, v63), v66, v63);
                v64 = vbslq_s8(vcgtq_u64(v65, v64), v65, v64);
                v67 = v62 - 4;
                v18 = v62 > 7;
                v62 -= 4;
              }

              while (v18);
            }

            v68 = vbslq_s8(vcgtq_u64(v64, v63), v64, v63);
            v69 = v68.u64[1];
            if (v68.i64[1] <= v68.i64[0])
            {
              v69 = v68.i64[0];
            }

            if (a4 > v69)
            {
              v69 = a4;
            }

            *v51 = v69;
            if (v67 >= 1)
            {
              v70 = v67 + 1;
              do
              {
                v72 = *v61;
                v61 = (v61 + 8);
                v71 = v72;
                if (v69 <= v72)
                {
                  v69 = v71;
                }

                *v51 = v69;
                --v70;
              }

              while (v70 > 1);
            }

            ++v52;
            ++v51;
          }

          while (v52 != v37);
        }

        v125 = v51;
      }

      else if (v37)
      {
        v38 = v121;
        v39 = (v122 - v121) >> 2;
        v40 = (v39 - 1);
        if (v39 - 1 >= 0)
        {
          v41 = 0;
          v42 = __p;
          v43 = 0;
          do
          {
            v44 = ldiv(v43, v38[v40]);
            v43 = v44.quot;
            v41 += v42[v40--] * v44.rem;
          }

          while (v40 != -1);
        }

        v125->i64[0] = v132;
        v135 = 0;
        operator new();
      }

LABEL_69:
      if (__p)
      {
        v124 = __p;
        operator delete(__p);
      }

      if (v121)
      {
        v122 = v121;
        operator delete(v121);
      }

      goto LABEL_73;
    }

    if (v127 != 2)
    {
      if (v127 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v121);
        if (*(*a2 + 48))
        {
          v74 = v121;
          v75 = (v122 - v121) >> 2;
          v76 = (v75 - 1);
          if (v75 - 1 >= 0)
          {
            v77 = 0;
            v78 = __p;
            v79 = 0;
            do
            {
              v80 = ldiv(v79, v74[v76]);
              v79 = v80.quot;
              v77 += v78[v76--] * v80.rem;
            }

            while (v76 != -1);
          }

          v133 = 0;
          operator new();
        }

        goto LABEL_69;
      }

      if (v127 != 4)
      {
        goto LABEL_73;
      }

      v50 = v129;
      goto LABEL_95;
    }

    v50 = v129;
    if (v129 - v128 != 4)
    {
LABEL_95:
      v87 = *(v50 - 1);
      v88 = *(v131 - 1);
      v129 = v50 - 4;
      v131 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v121);
      v89 = *(*a2 + 48);
      if (v129 == v128)
      {
        if (v89)
        {
          v102 = 0;
          v103 = vdupq_n_s64(v88 - 1);
          v104 = xmmword_25A99B0D0;
          v120 = v103;
          do
          {
            v105 = v121;
            v106 = (v122 - v121) >> 2;
            v107 = (v106 - 1);
            if (v106 - 1 < 0)
            {
              v112 = 0;
            }

            else
            {
              v108 = 0;
              v109 = __p;
              v110 = v102;
              do
              {
                v111 = ldiv(v110, v105[v107]);
                v110 = v111.quot;
                v108 += v109[v107--] * v111.rem;
              }

              while (v107 != -1);
              v112 = 8 * v108;
              v104 = xmmword_25A99B0D0;
              v103 = v120;
            }

            v113 = v125;
            if (v88)
            {
              v114 = 0;
              v115 = &v125->u64[1];
              do
              {
                v116 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(vdupq_n_s64(v114), v104)));
                if (v116.i8[0])
                {
                  *(v115 - 1) = a4;
                }

                if (v116.i8[4])
                {
                  *v115 = a4;
                }

                v114 += 2;
                v115 += 2;
              }

              while (((v88 + 1) & 0xFFFFFFFFFFFFFFFELL) != v114);
            }

            mlx::core::strided_reduce<unsigned long long,unsigned long long,mlx::core::MaxReduce>((v126 + v112), v113, v87, v88);
            v125 = (v125 + 8 * v88);
            v102 += v88;
            v104 = xmmword_25A99B0D0;
            v103 = v120;
          }

          while (*(*a2 + 48) > v102);
        }
      }

      else if (v89)
      {
        v90 = xmmword_25A99B0D0;
        v91 = v121;
        v92 = (v122 - v121) >> 2;
        v93 = (v92 - 1);
        if (v92 - 1 >= 0)
        {
          v94 = 0;
          v95 = __p;
          v96 = 0;
          do
          {
            v97 = ldiv(v96, v91[v93]);
            v96 = v97.quot;
            v94 += v95[v93--] * v97.rem;
          }

          while (v93 != -1);
          v90 = xmmword_25A99B0D0;
        }

        if (v88)
        {
          v98 = 0;
          v99 = vdupq_n_s64(v88 - 1);
          v100 = &v125->u64[1];
          do
          {
            v101 = vmovn_s64(vcgeq_u64(v99, vorrq_s8(vdupq_n_s64(v98), v90)));
            if (v101.i8[0])
            {
              *(v100 - 1) = a4;
            }

            if (v101.i8[4])
            {
              *v100 = a4;
            }

            v98 += 2;
            v100 += 2;
          }

          while (((v88 + 1) & 0xFFFFFFFFFFFFFFFELL) != v98);
        }

        v134 = 0;
        operator new();
      }

      goto LABEL_69;
    }

    v81 = *(v129 - 1);
    v82 = *(v131 - 1);
    v129 -= 4;
    v131 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v83) = 0;
      v119 = vdupq_n_s64(v82 - 1);
      do
      {
        if (v82)
        {
          v84 = 0;
          v85 = &v11->u64[1];
          do
          {
            v86 = vmovn_s64(vcgeq_u64(v119, vorrq_s8(vdupq_n_s64(v84), xmmword_25A99B0D0)));
            if (v86.i8[0])
            {
              *(v85 - 1) = a4;
            }

            if (v86.i8[4])
            {
              *v85 = a4;
            }

            v84 += 2;
            v85 += 2;
          }

          while (((v82 + 1) & 0xFFFFFFFFFFFFFFFELL) != v84);
        }

        mlx::core::strided_reduce<unsigned long long,unsigned long long,mlx::core::MaxReduce>(v9, v11, v81, v82);
        v9 = (v126 + 8 * v82 * v81);
        v11 = (v125 + 8 * v82);
        v125 = v11;
        v126 = v9;
        v83 = v83 + v82;
      }

      while (v83 < *(*a2 + 48));
    }
  }

LABEL_73:
  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  v73 = *MEMORY[0x277D85DE8];
}

void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, int **a3, unint64_t a4)
{
  v136 = *MEMORY[0x277D85DE8];
  v132 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v127);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v125 = v11;
  v126 = v9;
  if (v127 == 1)
  {
    v19 = v129;
    if (v129 - v128 != 4)
    {
      goto LABEL_25;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v128;
      v23 = vdupq_lane_s64(a4, 0);
      do
      {
        v24 = v23;
        v11->i64[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 4)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vbslq_s8(vcgtq_u64(v30, v25), v25, v30);
            v24 = vbslq_s8(vcgtq_u64(v29, v24), v24, v29);
            v26 = v28 - 4;
            v18 = v28 > 7;
            v28 -= 4;
          }

          while (v18);
        }

        v31 = vbslq_s8(vcgtq_u64(v24, v25), v25, v24);
        v32 = v31.u64[1];
        if (v31.i64[1] >= v31.i64[0])
        {
          v32 = v31.i64[0];
        }

        if (a4 < v32)
        {
          v32 = a4;
        }

        v11->i64[0] = v32;
        if (v26 >= 1)
        {
          v33 = v26 + 1;
          do
          {
            v35 = *v27;
            v27 = (v27 + 8);
            v34 = v35;
            if (v32 >= v35)
            {
              v32 = v34;
            }

            v11->i64[0] = v32;
            --v33;
          }

          while (v33 > 1);
        }

        ++v21;
        v11 = (v11 + 8);
        v9 = (v9 + 8 * v22);
      }

      while (v21 != v20);
    }

    v125 = v11;
    v126 = v9;
  }

  else
  {
    if (!v127)
    {
      v11->i64[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_lane_s64(a4, 0);
      v14 = v13;
      if (v12 < 4)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vbslq_s8(vcgtq_u64(v16, v14), v14, v16);
          v13 = vbslq_s8(vcgtq_u64(v15, v13), v13, v15);
          v17 = v12 - 4;
          v18 = v12 > 7;
          v12 -= 4;
        }

        while (v18);
      }

      v45 = vbslq_s8(vcgtq_u64(v13, v14), v14, v13);
      v46 = v45.u64[1];
      if (v45.i64[1] >= v45.i64[0])
      {
        v46 = v45.i64[0];
      }

      if (a4 < v46)
      {
        v46 = a4;
      }

      v11->i64[0] = v46;
      if (v17 >= 1)
      {
        v47 = v17 + 1;
        do
        {
          v49 = *v9;
          v9 = (v9 + 8);
          v48 = v49;
          if (v46 >= v49)
          {
            v46 = v48;
          }

          v11->i64[0] = v46;
          --v47;
        }

        while (v47 > 1);
      }

      goto LABEL_73;
    }

    if ((v127 & 0xFFFFFFFD) == 1)
    {
      v19 = v129;
LABEL_25:
      v36 = *(v19 - 1);
      v129 = v19 - 4;
      v131 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v121);
      v37 = *(*a2 + 48);
      if (v129 == v128)
      {
        v51 = v125;
        if (v37)
        {
          v52 = 0;
          v53 = v121;
          v54 = ((v122 - v121) >> 2) - 1;
          v55 = __p;
          v117 = v126;
          v118 = vdupq_lane_s64(a4, 0);
          do
          {
            if ((v54 & 0x80000000) != 0)
            {
              v60 = 0;
            }

            else
            {
              v56 = 0;
              v57 = v54;
              quot = v52;
              do
              {
                v59 = ldiv(quot, v53[v57]);
                quot = v59.quot;
                v56 += v55[v57--] * v59.rem;
              }

              while (v57 != -1);
              v60 = 8 * v56;
            }

            *v51 = a4;
            v61 = (v117 + v60);
            if (v36 < 4)
            {
              v63 = v118;
              v64 = v118;
              v67 = v36;
            }

            else
            {
              v62 = v36;
              v63 = v118;
              v64 = v118;
              do
              {
                v65 = *v61;
                v66 = *(v61 + 1);
                v61 += 2;
                v63 = vbslq_s8(vcgtq_u64(v66, v63), v63, v66);
                v64 = vbslq_s8(vcgtq_u64(v65, v64), v64, v65);
                v67 = v62 - 4;
                v18 = v62 > 7;
                v62 -= 4;
              }

              while (v18);
            }

            v68 = vbslq_s8(vcgtq_u64(v64, v63), v63, v64);
            v69 = v68.u64[1];
            if (v68.i64[1] >= v68.i64[0])
            {
              v69 = v68.i64[0];
            }

            if (a4 < v69)
            {
              v69 = a4;
            }

            *v51 = v69;
            if (v67 >= 1)
            {
              v70 = v67 + 1;
              do
              {
                v72 = *v61;
                v61 = (v61 + 8);
                v71 = v72;
                if (v69 >= v72)
                {
                  v69 = v71;
                }

                *v51 = v69;
                --v70;
              }

              while (v70 > 1);
            }

            ++v52;
            ++v51;
          }

          while (v52 != v37);
        }

        v125 = v51;
      }

      else if (v37)
      {
        v38 = v121;
        v39 = (v122 - v121) >> 2;
        v40 = (v39 - 1);
        if (v39 - 1 >= 0)
        {
          v41 = 0;
          v42 = __p;
          v43 = 0;
          do
          {
            v44 = ldiv(v43, v38[v40]);
            v43 = v44.quot;
            v41 += v42[v40--] * v44.rem;
          }

          while (v40 != -1);
        }

        v125->i64[0] = v132;
        v135 = 0;
        operator new();
      }

LABEL_69:
      if (__p)
      {
        v124 = __p;
        operator delete(__p);
      }

      if (v121)
      {
        v122 = v121;
        operator delete(v121);
      }

      goto LABEL_73;
    }

    if (v127 != 2)
    {
      if (v127 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v121);
        if (*(*a2 + 48))
        {
          v74 = v121;
          v75 = (v122 - v121) >> 2;
          v76 = (v75 - 1);
          if (v75 - 1 >= 0)
          {
            v77 = 0;
            v78 = __p;
            v79 = 0;
            do
            {
              v80 = ldiv(v79, v74[v76]);
              v79 = v80.quot;
              v77 += v78[v76--] * v80.rem;
            }

            while (v76 != -1);
          }

          v133 = 0;
          operator new();
        }

        goto LABEL_69;
      }

      if (v127 != 4)
      {
        goto LABEL_73;
      }

      v50 = v129;
      goto LABEL_95;
    }

    v50 = v129;
    if (v129 - v128 != 4)
    {
LABEL_95:
      v87 = *(v50 - 1);
      v88 = *(v131 - 1);
      v129 = v50 - 4;
      v131 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v121);
      v89 = *(*a2 + 48);
      if (v129 == v128)
      {
        if (v89)
        {
          v102 = 0;
          v103 = vdupq_n_s64(v88 - 1);
          v104 = xmmword_25A99B0D0;
          v120 = v103;
          do
          {
            v105 = v121;
            v106 = (v122 - v121) >> 2;
            v107 = (v106 - 1);
            if (v106 - 1 < 0)
            {
              v112 = 0;
            }

            else
            {
              v108 = 0;
              v109 = __p;
              v110 = v102;
              do
              {
                v111 = ldiv(v110, v105[v107]);
                v110 = v111.quot;
                v108 += v109[v107--] * v111.rem;
              }

              while (v107 != -1);
              v112 = 8 * v108;
              v104 = xmmword_25A99B0D0;
              v103 = v120;
            }

            v113 = v125;
            if (v88)
            {
              v114 = 0;
              v115 = &v125->u64[1];
              do
              {
                v116 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(vdupq_n_s64(v114), v104)));
                if (v116.i8[0])
                {
                  *(v115 - 1) = a4;
                }

                if (v116.i8[4])
                {
                  *v115 = a4;
                }

                v114 += 2;
                v115 += 2;
              }

              while (((v88 + 1) & 0xFFFFFFFFFFFFFFFELL) != v114);
            }

            mlx::core::strided_reduce<unsigned long long,unsigned long long,mlx::core::MinReduce>((v126 + v112), v113, v87, v88);
            v125 = (v125 + 8 * v88);
            v102 += v88;
            v104 = xmmword_25A99B0D0;
            v103 = v120;
          }

          while (*(*a2 + 48) > v102);
        }
      }

      else if (v89)
      {
        v90 = xmmword_25A99B0D0;
        v91 = v121;
        v92 = (v122 - v121) >> 2;
        v93 = (v92 - 1);
        if (v92 - 1 >= 0)
        {
          v94 = 0;
          v95 = __p;
          v96 = 0;
          do
          {
            v97 = ldiv(v96, v91[v93]);
            v96 = v97.quot;
            v94 += v95[v93--] * v97.rem;
          }

          while (v93 != -1);
          v90 = xmmword_25A99B0D0;
        }

        if (v88)
        {
          v98 = 0;
          v99 = vdupq_n_s64(v88 - 1);
          v100 = &v125->u64[1];
          do
          {
            v101 = vmovn_s64(vcgeq_u64(v99, vorrq_s8(vdupq_n_s64(v98), v90)));
            if (v101.i8[0])
            {
              *(v100 - 1) = a4;
            }

            if (v101.i8[4])
            {
              *v100 = a4;
            }

            v98 += 2;
            v100 += 2;
          }

          while (((v88 + 1) & 0xFFFFFFFFFFFFFFFELL) != v98);
        }

        v134 = 0;
        operator new();
      }

      goto LABEL_69;
    }

    v81 = *(v129 - 1);
    v82 = *(v131 - 1);
    v129 -= 4;
    v131 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v83) = 0;
      v119 = vdupq_n_s64(v82 - 1);
      do
      {
        if (v82)
        {
          v84 = 0;
          v85 = &v11->u64[1];
          do
          {
            v86 = vmovn_s64(vcgeq_u64(v119, vorrq_s8(vdupq_n_s64(v84), xmmword_25A99B0D0)));
            if (v86.i8[0])
            {
              *(v85 - 1) = a4;
            }

            if (v86.i8[4])
            {
              *v85 = a4;
            }

            v84 += 2;
            v85 += 2;
          }

          while (((v82 + 1) & 0xFFFFFFFFFFFFFFFELL) != v84);
        }

        mlx::core::strided_reduce<unsigned long long,unsigned long long,mlx::core::MinReduce>(v9, v11, v81, v82);
        v9 = (v126 + 8 * v82 * v81);
        v11 = (v125 + 8 * v82);
        v125 = v11;
        v126 = v9;
        v83 = v83 + v82;
      }

      while (v83 < *(*a2 + 48));
    }
  }

LABEL_73:
  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  v73 = *MEMORY[0x277D85DE8];
}

_OWORD *mlx::core::strided_reduce<unsigned long long,unsigned long long,mlx::core::MaxReduce>(_OWORD *result, uint64x2_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 4)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vbslq_s8(vcgtq_u64(v8, v5[1]), v8, v5[1]);
          *v5 = vbslq_s8(vcgtq_u64(v7, *v5), v7, *v5);
          v5[1] = v9;
          v5 += 2;
          v6 -= 4;
        }

        while (v6 > 3);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 8);
        v10 = v11;
        if (v5->i64[0] > v11)
        {
          v10 = v5->i64[0];
        }

        v5->i64[0] = v10;
        v5 = (v5 + 8);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07498;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 8 * **(result + 16) + 8 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_f64(v5);
  v7 = v6;
  if (v4 < 4)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vbslq_s8(vcgtq_u64(v9, v7), v9, v7);
      v6 = vbslq_s8(vcgtq_u64(v8, v6), v8, v6);
      v10 = v4 - 4;
      v11 = v4 > 7;
      v4 -= 4;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vbslq_s8(vcgtq_u64(v6, v7), v6, v7);
  v14 = v13.u64[1];
  if (v13.i64[1] <= v13.i64[0])
  {
    v14 = v13.i64[0];
  }

  if (v12 <= v14)
  {
    v12 = v14;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v15 = v10 + 1;
    do
    {
      v17 = *v2;
      v2 = (v2 + 8);
      v16 = v17;
      if (v12 <= v17)
      {
        v12 = v16;
      }

      *v3 = v12;
      --v15;
    }

    while (v15 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07518;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07598;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 8 * **(result + 24) + 8 * *a2);
  if (*v2 > v3)
  {
    v3 = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_OWORD *mlx::core::strided_reduce<unsigned long long,unsigned long long,mlx::core::MinReduce>(_OWORD *result, uint64x2_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 4)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vbslq_s8(vcgtq_u64(v8, v5[1]), v5[1], v8);
          *v5 = vbslq_s8(vcgtq_u64(v7, *v5), *v5, v7);
          v5[1] = v9;
          v5 += 2;
          v6 -= 4;
        }

        while (v6 > 3);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 8);
        v10 = v11;
        if (v5->i64[0] < v11)
        {
          v10 = v5->i64[0];
        }

        v5->i64[0] = v10;
        v5 = (v5 + 8);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07618;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 8 * **(result + 16) + 8 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_f64(v5);
  v7 = v6;
  if (v4 < 4)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vbslq_s8(vcgtq_u64(v9, v7), v7, v9);
      v6 = vbslq_s8(vcgtq_u64(v8, v6), v6, v8);
      v10 = v4 - 4;
      v11 = v4 > 7;
      v4 -= 4;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vbslq_s8(vcgtq_u64(v6, v7), v7, v6);
  v14 = v13.u64[1];
  if (v13.i64[1] >= v13.i64[0])
  {
    v14 = v13.i64[0];
  }

  if (v12 >= v14)
  {
    v12 = v14;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v15 = v10 + 1;
    do
    {
      v17 = *v2;
      v2 = (v2 + 8);
      v16 = v17;
      if (v12 >= v17)
      {
        v12 = v16;
      }

      *v3 = v12;
      --v15;
    }

    while (v15 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07698;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07718;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 8 * **(result + 24) + 8 * *a2);
  if (*v2 < v3)
  {
    v3 = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<unsigned long long,unsigned long long,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,unsigned long long)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, int **a3, signed int a4)
{
  v140 = *MEMORY[0x277D85DE8];
  v136 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v131);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v129 = v11;
  v130 = v9;
  if (v131 == 1)
  {
    v19 = v133;
    if (v133 - v132 != 4)
    {
      goto LABEL_23;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v132;
      v23 = vdupq_n_s32(a4);
      do
      {
        v24 = v23;
        v11->i32[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 8)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vmaxq_s32(v30, v25);
            v24 = vmaxq_s32(v29, v24);
            v26 = v28 - 8;
            v18 = v28 > 0xF;
            v28 -= 8;
          }

          while (v18);
        }

        v31 = vmaxvq_s32(vmaxq_s32(v24, v25));
        if (a4 > v31)
        {
          v31 = a4;
        }

        v11->i32[0] = v31;
        if (v26 >= 1)
        {
          v32 = v26 + 1;
          do
          {
            v34 = *v27;
            v27 = (v27 + 4);
            v33 = v34;
            if (v31 <= v34)
            {
              v31 = v33;
            }

            v11->i32[0] = v31;
            --v32;
          }

          while (v32 > 1);
        }

        ++v21;
        v11 = (v11 + 4);
        v9 = (v9 + 4 * v22);
      }

      while (v21 != v20);
    }

    v129 = v11;
    v130 = v9;
  }

  else
  {
    if (!v131)
    {
      v11->i32[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_n_s32(a4);
      v14 = v13;
      if (v12 < 8)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vmaxq_s32(v16, v14);
          v13 = vmaxq_s32(v15, v13);
          v17 = v12 - 8;
          v18 = v12 > 0xF;
          v12 -= 8;
        }

        while (v18);
      }

      v44 = vmaxvq_s32(vmaxq_s32(v13, v14));
      if (a4 > v44)
      {
        v44 = a4;
      }

      v11->i32[0] = v44;
      if (v17 >= 1)
      {
        v45 = v17 + 1;
        do
        {
          v47 = *v9;
          v9 = (v9 + 4);
          v46 = v47;
          if (v44 <= v47)
          {
            v44 = v46;
          }

          v11->i32[0] = v44;
          --v45;
        }

        while (v45 > 1);
      }

      goto LABEL_67;
    }

    if ((v131 & 0xFFFFFFFD) == 1)
    {
      v19 = v133;
LABEL_23:
      v35 = *(v19 - 1);
      v133 = v19 - 4;
      v135 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
      v36 = *(*a2 + 48);
      if (v133 == v132)
      {
        v49 = v129;
        if (v36)
        {
          v50 = 0;
          v51 = v125;
          v52 = ((v126 - v125) >> 2) - 1;
          v53 = __p;
          v121 = v130;
          v122 = vdupq_n_s32(a4);
          do
          {
            if ((v52 & 0x80000000) != 0)
            {
              v58 = 0;
            }

            else
            {
              v54 = 0;
              v55 = v52;
              quot = v50;
              do
              {
                v57 = ldiv(quot, v51[v55]);
                quot = v57.quot;
                v54 += v53[v55--] * v57.rem;
              }

              while (v55 != -1);
              v58 = 4 * v54;
            }

            *v49 = a4;
            v59 = (v121 + v58);
            if (v35 < 8)
            {
              v61 = v122;
              v62 = v122;
              v65 = v35;
            }

            else
            {
              v60 = v35;
              v61 = v122;
              v62 = v122;
              do
              {
                v63 = *v59;
                v64 = *(v59 + 1);
                v59 += 2;
                v61 = vmaxq_s32(v64, v61);
                v62 = vmaxq_s32(v63, v62);
                v65 = v60 - 8;
                v18 = v60 > 0xF;
                v60 -= 8;
              }

              while (v18);
            }

            v66 = vmaxvq_s32(vmaxq_s32(v62, v61));
            if (a4 > v66)
            {
              v66 = a4;
            }

            *v49 = v66;
            if (v65 >= 1)
            {
              v67 = v65 + 1;
              do
              {
                v69 = *v59;
                v59 = (v59 + 4);
                v68 = v69;
                if (v66 <= v69)
                {
                  v66 = v68;
                }

                *v49 = v66;
                --v67;
              }

              while (v67 > 1);
            }

            ++v50;
            ++v49;
          }

          while (v50 != v36);
        }

        v129 = v49;
      }

      else if (v36)
      {
        v37 = v125;
        v38 = (v126 - v125) >> 2;
        v39 = (v38 - 1);
        if (v38 - 1 >= 0)
        {
          v40 = 0;
          v41 = __p;
          v42 = 0;
          do
          {
            v43 = ldiv(v42, v37[v39]);
            v42 = v43.quot;
            v40 += v41[v39--] * v43.rem;
          }

          while (v39 != -1);
        }

        v129->i32[0] = v136;
        v139 = 0;
        operator new();
      }

LABEL_63:
      if (__p)
      {
        v128 = __p;
        operator delete(__p);
      }

      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      goto LABEL_67;
    }

    if (v131 != 2)
    {
      if (v131 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
        if (*(*a2 + 48))
        {
          v71 = v125;
          v72 = (v126 - v125) >> 2;
          v73 = (v72 - 1);
          if (v72 - 1 >= 0)
          {
            v74 = 0;
            v75 = __p;
            v76 = 0;
            do
            {
              v77 = ldiv(v76, v71[v73]);
              v76 = v77.quot;
              v74 += v75[v73--] * v77.rem;
            }

            while (v73 != -1);
          }

          v137 = 0;
          operator new();
        }

        goto LABEL_63;
      }

      if (v131 != 4)
      {
        goto LABEL_67;
      }

      v48 = v133;
      goto LABEL_91;
    }

    v48 = v133;
    if (v133 - v132 != 4)
    {
LABEL_91:
      v86 = *(v48 - 1);
      v87 = *(v135 - 1);
      v133 = v48 - 4;
      v135 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
      v88 = *(*a2 + 48);
      if (v133 == v132)
      {
        if (v88)
        {
          v103 = 0;
          v104 = vdupq_n_s64(v87 - 1);
          v105 = xmmword_25A99B0C0;
          v106 = xmmword_25A99B0D0;
          v124 = v104;
          do
          {
            v107 = v125;
            v108 = (v126 - v125) >> 2;
            v109 = (v108 - 1);
            if (v108 - 1 < 0)
            {
              v114 = 0;
            }

            else
            {
              v110 = 0;
              v111 = __p;
              v112 = v103;
              do
              {
                v113 = ldiv(v112, v107[v109]);
                v112 = v113.quot;
                v110 += v111[v109--] * v113.rem;
              }

              while (v109 != -1);
              v114 = 4 * v110;
              v105 = xmmword_25A99B0C0;
              v104 = v124;
              v106 = xmmword_25A99B0D0;
            }

            v115 = v129;
            if (v87)
            {
              v116 = 0;
              v117 = &v129->i32[2];
              do
              {
                v118 = vdupq_n_s64(v116);
                v119 = vmovn_s64(vcgeq_u64(v104, vorrq_s8(v118, v106)));
                if (vuzp1_s16(v119, *v118.i8).u8[0])
                {
                  *(v117 - 2) = a4;
                }

                if (vuzp1_s16(v119, *&v118).i8[2])
                {
                  *(v117 - 1) = a4;
                }

                v120 = vmovn_s64(vcgeq_u64(v104, vorrq_s8(v118, v105)));
                if (vuzp1_s16(v120, v120).i32[1])
                {
                  *v117 = a4;
                  v117[1] = a4;
                }

                v116 += 4;
                v117 += 4;
              }

              while (((v87 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v116);
            }

            mlx::core::strided_reduce<int,int,mlx::core::MaxReduce>((v130 + v114), v115, v86, v87);
            v129 = (v129 + 4 * v87);
            v103 += v87;
            v105 = xmmword_25A99B0C0;
            v104 = v124;
            v106 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v103);
        }
      }

      else if (v88)
      {
        v89 = xmmword_25A99B0C0;
        v90 = xmmword_25A99B0D0;
        v91 = v125;
        v92 = (v126 - v125) >> 2;
        v93 = (v92 - 1);
        if (v92 - 1 >= 0)
        {
          v94 = 0;
          v95 = __p;
          v96 = 0;
          do
          {
            v97 = ldiv(v96, v91[v93]);
            v96 = v97.quot;
            v94 += v95[v93--] * v97.rem;
          }

          while (v93 != -1);
          v90 = xmmword_25A99B0D0;
          v89 = xmmword_25A99B0C0;
        }

        if (v87)
        {
          v98 = 0;
          v99 = vdupq_n_s64(v87 - 1);
          v100 = &v129->i32[2];
          do
          {
            v101 = vdupq_n_s64(v98);
            v102 = vmovn_s64(vcgeq_u64(v99, vorrq_s8(v101, v90)));
            if (vuzp1_s16(v102, *v99.i8).u8[0])
            {
              *(v100 - 2) = a4;
            }

            if (vuzp1_s16(v102, *&v99).i8[2])
            {
              *(v100 - 1) = a4;
            }

            if (vuzp1_s16(*&v99, vmovn_s64(vcgeq_u64(v99, vorrq_s8(v101, v89)))).i32[1])
            {
              *v100 = a4;
              v100[1] = a4;
            }

            v98 += 4;
            v100 += 4;
          }

          while (((v87 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v98);
        }

        v138 = 0;
        operator new();
      }

      goto LABEL_63;
    }

    v78 = *(v133 - 1);
    v79 = *(v135 - 1);
    v133 -= 4;
    v135 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v80) = 0;
      v123 = vdupq_n_s64(v79 - 1);
      do
      {
        if (v79)
        {
          v81 = 0;
          v82 = &v11->i32[2];
          do
          {
            v83 = vdupq_n_s64(v81);
            v84 = vmovn_s64(vcgeq_u64(v123, vorrq_s8(v83, xmmword_25A99B0D0)));
            if (vuzp1_s16(v84, *v83.i8).u8[0])
            {
              *(v82 - 2) = a4;
            }

            if (vuzp1_s16(v84, *&v83).i8[2])
            {
              *(v82 - 1) = a4;
            }

            v85 = vmovn_s64(vcgeq_u64(v123, vorrq_s8(v83, xmmword_25A99B0C0)));
            if (vuzp1_s16(v85, v85).i32[1])
            {
              *v82 = a4;
              v82[1] = a4;
            }

            v81 += 4;
            v82 += 4;
          }

          while (((v79 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v81);
        }

        mlx::core::strided_reduce<int,int,mlx::core::MaxReduce>(v9, v11, v78, v79);
        v9 = (v130 + 4 * v79 * v78);
        v11 = (v129 + 4 * v79);
        v129 = v11;
        v130 = v9;
        v80 = v80 + v79;
      }

      while (v80 < *(*a2 + 48));
    }
  }

LABEL_67:
  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  v70 = *MEMORY[0x277D85DE8];
}

void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, int **a3, signed int a4)
{
  v140 = *MEMORY[0x277D85DE8];
  v136 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v131);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v129 = v11;
  v130 = v9;
  if (v131 == 1)
  {
    v19 = v133;
    if (v133 - v132 != 4)
    {
      goto LABEL_23;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v132;
      v23 = vdupq_n_s32(a4);
      do
      {
        v24 = v23;
        v11->i32[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 8)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vminq_s32(v25, v30);
            v24 = vminq_s32(v24, v29);
            v26 = v28 - 8;
            v18 = v28 > 0xF;
            v28 -= 8;
          }

          while (v18);
        }

        v31 = vminvq_s32(vminq_s32(v24, v25));
        if (a4 < v31)
        {
          v31 = a4;
        }

        v11->i32[0] = v31;
        if (v26 >= 1)
        {
          v32 = v26 + 1;
          do
          {
            v34 = *v27;
            v27 = (v27 + 4);
            v33 = v34;
            if (v31 >= v34)
            {
              v31 = v33;
            }

            v11->i32[0] = v31;
            --v32;
          }

          while (v32 > 1);
        }

        ++v21;
        v11 = (v11 + 4);
        v9 = (v9 + 4 * v22);
      }

      while (v21 != v20);
    }

    v129 = v11;
    v130 = v9;
  }

  else
  {
    if (!v131)
    {
      v11->i32[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_n_s32(a4);
      v14 = v13;
      if (v12 < 8)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vminq_s32(v14, v16);
          v13 = vminq_s32(v13, v15);
          v17 = v12 - 8;
          v18 = v12 > 0xF;
          v12 -= 8;
        }

        while (v18);
      }

      v44 = vminvq_s32(vminq_s32(v13, v14));
      if (a4 < v44)
      {
        v44 = a4;
      }

      v11->i32[0] = v44;
      if (v17 >= 1)
      {
        v45 = v17 + 1;
        do
        {
          v47 = *v9;
          v9 = (v9 + 4);
          v46 = v47;
          if (v44 >= v47)
          {
            v44 = v46;
          }

          v11->i32[0] = v44;
          --v45;
        }

        while (v45 > 1);
      }

      goto LABEL_67;
    }

    if ((v131 & 0xFFFFFFFD) == 1)
    {
      v19 = v133;
LABEL_23:
      v35 = *(v19 - 1);
      v133 = v19 - 4;
      v135 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
      v36 = *(*a2 + 48);
      if (v133 == v132)
      {
        v49 = v129;
        if (v36)
        {
          v50 = 0;
          v51 = v125;
          v52 = ((v126 - v125) >> 2) - 1;
          v53 = __p;
          v121 = v130;
          v122 = vdupq_n_s32(a4);
          do
          {
            if ((v52 & 0x80000000) != 0)
            {
              v58 = 0;
            }

            else
            {
              v54 = 0;
              v55 = v52;
              quot = v50;
              do
              {
                v57 = ldiv(quot, v51[v55]);
                quot = v57.quot;
                v54 += v53[v55--] * v57.rem;
              }

              while (v55 != -1);
              v58 = 4 * v54;
            }

            *v49 = a4;
            v59 = (v121 + v58);
            if (v35 < 8)
            {
              v61 = v122;
              v62 = v122;
              v65 = v35;
            }

            else
            {
              v60 = v35;
              v61 = v122;
              v62 = v122;
              do
              {
                v63 = *v59;
                v64 = *(v59 + 1);
                v59 += 2;
                v61 = vminq_s32(v61, v64);
                v62 = vminq_s32(v62, v63);
                v65 = v60 - 8;
                v18 = v60 > 0xF;
                v60 -= 8;
              }

              while (v18);
            }

            v66 = vminvq_s32(vminq_s32(v62, v61));
            if (a4 < v66)
            {
              v66 = a4;
            }

            *v49 = v66;
            if (v65 >= 1)
            {
              v67 = v65 + 1;
              do
              {
                v69 = *v59;
                v59 = (v59 + 4);
                v68 = v69;
                if (v66 >= v69)
                {
                  v66 = v68;
                }

                *v49 = v66;
                --v67;
              }

              while (v67 > 1);
            }

            ++v50;
            ++v49;
          }

          while (v50 != v36);
        }

        v129 = v49;
      }

      else if (v36)
      {
        v37 = v125;
        v38 = (v126 - v125) >> 2;
        v39 = (v38 - 1);
        if (v38 - 1 >= 0)
        {
          v40 = 0;
          v41 = __p;
          v42 = 0;
          do
          {
            v43 = ldiv(v42, v37[v39]);
            v42 = v43.quot;
            v40 += v41[v39--] * v43.rem;
          }

          while (v39 != -1);
        }

        v129->i32[0] = v136;
        v139 = 0;
        operator new();
      }

LABEL_63:
      if (__p)
      {
        v128 = __p;
        operator delete(__p);
      }

      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      goto LABEL_67;
    }

    if (v131 != 2)
    {
      if (v131 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
        if (*(*a2 + 48))
        {
          v71 = v125;
          v72 = (v126 - v125) >> 2;
          v73 = (v72 - 1);
          if (v72 - 1 >= 0)
          {
            v74 = 0;
            v75 = __p;
            v76 = 0;
            do
            {
              v77 = ldiv(v76, v71[v73]);
              v76 = v77.quot;
              v74 += v75[v73--] * v77.rem;
            }

            while (v73 != -1);
          }

          v137 = 0;
          operator new();
        }

        goto LABEL_63;
      }

      if (v131 != 4)
      {
        goto LABEL_67;
      }

      v48 = v133;
      goto LABEL_91;
    }

    v48 = v133;
    if (v133 - v132 != 4)
    {
LABEL_91:
      v86 = *(v48 - 1);
      v87 = *(v135 - 1);
      v133 = v48 - 4;
      v135 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v125);
      v88 = *(*a2 + 48);
      if (v133 == v132)
      {
        if (v88)
        {
          v103 = 0;
          v104 = vdupq_n_s64(v87 - 1);
          v105 = xmmword_25A99B0C0;
          v106 = xmmword_25A99B0D0;
          v124 = v104;
          do
          {
            v107 = v125;
            v108 = (v126 - v125) >> 2;
            v109 = (v108 - 1);
            if (v108 - 1 < 0)
            {
              v114 = 0;
            }

            else
            {
              v110 = 0;
              v111 = __p;
              v112 = v103;
              do
              {
                v113 = ldiv(v112, v107[v109]);
                v112 = v113.quot;
                v110 += v111[v109--] * v113.rem;
              }

              while (v109 != -1);
              v114 = 4 * v110;
              v105 = xmmword_25A99B0C0;
              v104 = v124;
              v106 = xmmword_25A99B0D0;
            }

            v115 = v129;
            if (v87)
            {
              v116 = 0;
              v117 = &v129->i32[2];
              do
              {
                v118 = vdupq_n_s64(v116);
                v119 = vmovn_s64(vcgeq_u64(v104, vorrq_s8(v118, v106)));
                if (vuzp1_s16(v119, *v118.i8).u8[0])
                {
                  *(v117 - 2) = a4;
                }

                if (vuzp1_s16(v119, *&v118).i8[2])
                {
                  *(v117 - 1) = a4;
                }

                v120 = vmovn_s64(vcgeq_u64(v104, vorrq_s8(v118, v105)));
                if (vuzp1_s16(v120, v120).i32[1])
                {
                  *v117 = a4;
                  v117[1] = a4;
                }

                v116 += 4;
                v117 += 4;
              }

              while (((v87 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v116);
            }

            mlx::core::strided_reduce<int,int,mlx::core::MinReduce>((v130 + v114), v115, v86, v87);
            v129 = (v129 + 4 * v87);
            v103 += v87;
            v105 = xmmword_25A99B0C0;
            v104 = v124;
            v106 = xmmword_25A99B0D0;
          }

          while (*(*a2 + 48) > v103);
        }
      }

      else if (v88)
      {
        v89 = xmmword_25A99B0C0;
        v90 = xmmword_25A99B0D0;
        v91 = v125;
        v92 = (v126 - v125) >> 2;
        v93 = (v92 - 1);
        if (v92 - 1 >= 0)
        {
          v94 = 0;
          v95 = __p;
          v96 = 0;
          do
          {
            v97 = ldiv(v96, v91[v93]);
            v96 = v97.quot;
            v94 += v95[v93--] * v97.rem;
          }

          while (v93 != -1);
          v90 = xmmword_25A99B0D0;
          v89 = xmmword_25A99B0C0;
        }

        if (v87)
        {
          v98 = 0;
          v99 = vdupq_n_s64(v87 - 1);
          v100 = &v129->i32[2];
          do
          {
            v101 = vdupq_n_s64(v98);
            v102 = vmovn_s64(vcgeq_u64(v99, vorrq_s8(v101, v90)));
            if (vuzp1_s16(v102, *v99.i8).u8[0])
            {
              *(v100 - 2) = a4;
            }

            if (vuzp1_s16(v102, *&v99).i8[2])
            {
              *(v100 - 1) = a4;
            }

            if (vuzp1_s16(*&v99, vmovn_s64(vcgeq_u64(v99, vorrq_s8(v101, v89)))).i32[1])
            {
              *v100 = a4;
              v100[1] = a4;
            }

            v98 += 4;
            v100 += 4;
          }

          while (((v87 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v98);
        }

        v138 = 0;
        operator new();
      }

      goto LABEL_63;
    }

    v78 = *(v133 - 1);
    v79 = *(v135 - 1);
    v133 -= 4;
    v135 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v80) = 0;
      v123 = vdupq_n_s64(v79 - 1);
      do
      {
        if (v79)
        {
          v81 = 0;
          v82 = &v11->i32[2];
          do
          {
            v83 = vdupq_n_s64(v81);
            v84 = vmovn_s64(vcgeq_u64(v123, vorrq_s8(v83, xmmword_25A99B0D0)));
            if (vuzp1_s16(v84, *v83.i8).u8[0])
            {
              *(v82 - 2) = a4;
            }

            if (vuzp1_s16(v84, *&v83).i8[2])
            {
              *(v82 - 1) = a4;
            }

            v85 = vmovn_s64(vcgeq_u64(v123, vorrq_s8(v83, xmmword_25A99B0C0)));
            if (vuzp1_s16(v85, v85).i32[1])
            {
              *v82 = a4;
              v82[1] = a4;
            }

            v81 += 4;
            v82 += 4;
          }

          while (((v79 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v81);
        }

        mlx::core::strided_reduce<int,int,mlx::core::MinReduce>(v9, v11, v78, v79);
        v9 = (v130 + 4 * v79 * v78);
        v11 = (v129 + 4 * v79);
        v129 = v11;
        v130 = v9;
        v80 = v80 + v79;
      }

      while (v80 < *(*a2 + 48));
    }
  }

LABEL_67:
  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  v70 = *MEMORY[0x277D85DE8];
}

_OWORD *mlx::core::strided_reduce<int,int,mlx::core::MaxReduce>(_OWORD *result, int32x4_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 8)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vmaxq_s32(v8, v5[1]);
          *v5 = vmaxq_s32(v7, *v5);
          v5[1] = v9;
          v5 += 2;
          v6 -= 8;
        }

        while (v6 > 7);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 4);
        v10 = v11;
        if (v5->i32[0] > v11)
        {
          v10 = v5->i32[0];
        }

        v5->i32[0] = v10;
        v5 = (v5 + 4);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07798;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 4 * **(result + 16) + 4 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_f32(v5);
  v7 = v6;
  if (v4 < 8)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vmaxq_s32(v9, v7);
      v6 = vmaxq_s32(v8, v6);
      v10 = v4 - 8;
      v11 = v4 > 0xF;
      v4 -= 8;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vmaxvq_s32(vmaxq_s32(v6, v7));
  if (*v3 <= v13)
  {
    v12 = v13;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v14 = v10 + 1;
    do
    {
      v16 = *v2;
      v2 = (v2 + 4);
      v15 = v16;
      if (v12 <= v16)
      {
        v12 = v15;
      }

      *v3 = v12;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07818;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07898;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 4 * **(result + 24) + 4 * *a2);
  if (*v2 > v3)
  {
    v3 = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MaxReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_OWORD *mlx::core::strided_reduce<int,int,mlx::core::MinReduce>(_OWORD *result, int32x4_t *a2, int a3, unint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v5 = a2;
      v6 = a4;
      if (a4 >= 8)
      {
        do
        {
          v7 = *result;
          v8 = *(result + 1);
          result += 2;
          v9 = vminq_s32(v5[1], v8);
          *v5 = vminq_s32(*v5, v7);
          v5[1] = v9;
          v5 += 2;
          v6 -= 8;
        }

        while (v6 > 7);
      }

      for (; v6; --v6)
      {
        v11 = *result;
        result = (result + 4);
        v10 = v11;
        if (v5->i32[0] < v11)
        {
          v10 = v5->i32[0];
        }

        v5->i32[0] = v10;
        v5 = (v5 + 4);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07918;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = (**(result + 8) + 4 * **(result + 16) + 4 * *a2);
  v3 = **(result + 24);
  v4 = **(result + 32);
  v5 = *(result + 40);
  v6 = vld1q_dup_f32(v5);
  v7 = v6;
  if (v4 < 8)
  {
    v10 = **(result + 32);
  }

  else
  {
    do
    {
      v8 = *v2;
      v9 = *(v2 + 1);
      v2 += 2;
      v7 = vminq_s32(v7, v9);
      v6 = vminq_s32(v6, v8);
      v10 = v4 - 8;
      v11 = v4 > 0xF;
      v4 -= 8;
    }

    while (v11);
  }

  v12 = *v3;
  v13 = vminvq_s32(vminq_s32(v6, v7));
  if (*v3 >= v13)
  {
    v12 = v13;
  }

  *v3 = v12;
  if (v10 >= 1)
  {
    v14 = v10 + 1;
    do
    {
      v16 = *v2;
      v2 = (v2 + 4);
      v15 = v16;
      if (v12 >= v16)
      {
        v12 = v15;
      }

      *v3 = v12;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07998;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#2}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286C07A18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  v3 = *(**(result + 16) + 4 * **(result + 24) + 4 * *a2);
  if (*v2 < v3)
  {
    v3 = *v2;
  }

  *v2 = v3;
  return result;
}

uint64_t std::__function::__func<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3},std::allocator<void mlx::core::reduction_op<int,int,mlx::core::MinReduce>(mlx::core::array const&,mlx::core::array&,std::vector<int> const&,int)::{lambda(int)#3}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::reduction_op<long long,long long,mlx::core::MaxReduce>(uint64_t **a1, uint64_t *a2, int **a3, uint64_t a4)
{
  v136 = *MEMORY[0x277D85DE8];
  v132 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v127);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v125 = v11;
  v126 = v9;
  if (v127 == 1)
  {
    v19 = v129;
    if (v129 - v128 != 4)
    {
      goto LABEL_25;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v128;
      v23 = vdupq_lane_s64(a4, 0);
      do
      {
        v24 = v23;
        v11->i64[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 4)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vbslq_s8(vcgtq_s64(v30, v25), v30, v25);
            v24 = vbslq_s8(vcgtq_s64(v29, v24), v29, v24);
            v26 = v28 - 4;
            v18 = v28 > 7;
            v28 -= 4;
          }

          while (v18);
        }

        v31 = vbslq_s8(vcgtq_s64(v24, v25), v24, v25);
        v32 = v31.i64[1];
        if (v31.i64[1] <= v31.i64[0])
        {
          v32 = v31.i64[0];
        }

        if (a4 > v32)
        {
          v32 = a4;
        }

        v11->i64[0] = v32;
        if (v26 >= 1)
        {
          v33 = v26 + 1;
          do
          {
            v35 = *v27;
            v27 = (v27 + 8);
            v34 = v35;
            if (v32 <= v35)
            {
              v32 = v34;
            }

            v11->i64[0] = v32;
            --v33;
          }

          while (v33 > 1);
        }

        ++v21;
        v11 = (v11 + 8);
        v9 = (v9 + 8 * v22);
      }

      while (v21 != v20);
    }

    v125 = v11;
    v126 = v9;
  }

  else
  {
    if (!v127)
    {
      v11->i64[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_lane_s64(a4, 0);
      v14 = v13;
      if (v12 < 4)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vbslq_s8(vcgtq_s64(v16, v14), v16, v14);
          v13 = vbslq_s8(vcgtq_s64(v15, v13), v15, v13);
          v17 = v12 - 4;
          v18 = v12 > 7;
          v12 -= 4;
        }

        while (v18);
      }

      v45 = vbslq_s8(vcgtq_s64(v13, v14), v13, v14);
      v46 = v45.i64[1];
      if (v45.i64[1] <= v45.i64[0])
      {
        v46 = v45.i64[0];
      }

      if (a4 > v46)
      {
        v46 = a4;
      }

      v11->i64[0] = v46;
      if (v17 >= 1)
      {
        v47 = v17 + 1;
        do
        {
          v49 = *v9;
          v9 = (v9 + 8);
          v48 = v49;
          if (v46 <= v49)
          {
            v46 = v48;
          }

          v11->i64[0] = v46;
          --v47;
        }

        while (v47 > 1);
      }

      goto LABEL_73;
    }

    if ((v127 & 0xFFFFFFFD) == 1)
    {
      v19 = v129;
LABEL_25:
      v36 = *(v19 - 1);
      v129 = v19 - 4;
      v131 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v121);
      v37 = *(*a2 + 48);
      if (v129 == v128)
      {
        v51 = v125;
        if (v37)
        {
          v52 = 0;
          v53 = v121;
          v54 = ((v122 - v121) >> 2) - 1;
          v55 = __p;
          v117 = v126;
          v118 = vdupq_lane_s64(a4, 0);
          do
          {
            if ((v54 & 0x80000000) != 0)
            {
              v60 = 0;
            }

            else
            {
              v56 = 0;
              v57 = v54;
              quot = v52;
              do
              {
                v59 = ldiv(quot, v53[v57]);
                quot = v59.quot;
                v56 += v55[v57--] * v59.rem;
              }

              while (v57 != -1);
              v60 = 8 * v56;
            }

            *v51 = a4;
            v61 = (v117 + v60);
            if (v36 < 4)
            {
              v63 = v118;
              v64 = v118;
              v67 = v36;
            }

            else
            {
              v62 = v36;
              v63 = v118;
              v64 = v118;
              do
              {
                v65 = *v61;
                v66 = *(v61 + 1);
                v61 += 2;
                v63 = vbslq_s8(vcgtq_s64(v66, v63), v66, v63);
                v64 = vbslq_s8(vcgtq_s64(v65, v64), v65, v64);
                v67 = v62 - 4;
                v18 = v62 > 7;
                v62 -= 4;
              }

              while (v18);
            }

            v68 = vbslq_s8(vcgtq_s64(v64, v63), v64, v63);
            v69 = v68.i64[1];
            if (v68.i64[1] <= v68.i64[0])
            {
              v69 = v68.i64[0];
            }

            if (a4 > v69)
            {
              v69 = a4;
            }

            *v51 = v69;
            if (v67 >= 1)
            {
              v70 = v67 + 1;
              do
              {
                v72 = *v61;
                v61 = (v61 + 8);
                v71 = v72;
                if (v69 <= v72)
                {
                  v69 = v71;
                }

                *v51 = v69;
                --v70;
              }

              while (v70 > 1);
            }

            ++v52;
            ++v51;
          }

          while (v52 != v37);
        }

        v125 = v51;
      }

      else if (v37)
      {
        v38 = v121;
        v39 = (v122 - v121) >> 2;
        v40 = (v39 - 1);
        if (v39 - 1 >= 0)
        {
          v41 = 0;
          v42 = __p;
          v43 = 0;
          do
          {
            v44 = ldiv(v43, v38[v40]);
            v43 = v44.quot;
            v41 += v42[v40--] * v44.rem;
          }

          while (v40 != -1);
        }

        v125->i64[0] = v132;
        v135 = 0;
        operator new();
      }

LABEL_69:
      if (__p)
      {
        v124 = __p;
        operator delete(__p);
      }

      if (v121)
      {
        v122 = v121;
        operator delete(v121);
      }

      goto LABEL_73;
    }

    if (v127 != 2)
    {
      if (v127 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v121);
        if (*(*a2 + 48))
        {
          v74 = v121;
          v75 = (v122 - v121) >> 2;
          v76 = (v75 - 1);
          if (v75 - 1 >= 0)
          {
            v77 = 0;
            v78 = __p;
            v79 = 0;
            do
            {
              v80 = ldiv(v79, v74[v76]);
              v79 = v80.quot;
              v77 += v78[v76--] * v80.rem;
            }

            while (v76 != -1);
          }

          v133 = 0;
          operator new();
        }

        goto LABEL_69;
      }

      if (v127 != 4)
      {
        goto LABEL_73;
      }

      v50 = v129;
      goto LABEL_95;
    }

    v50 = v129;
    if (v129 - v128 != 4)
    {
LABEL_95:
      v87 = *(v50 - 1);
      v88 = *(v131 - 1);
      v129 = v50 - 4;
      v131 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v121);
      v89 = *(*a2 + 48);
      if (v129 == v128)
      {
        if (v89)
        {
          v102 = 0;
          v103 = vdupq_n_s64(v88 - 1);
          v104 = xmmword_25A99B0D0;
          v120 = v103;
          do
          {
            v105 = v121;
            v106 = (v122 - v121) >> 2;
            v107 = (v106 - 1);
            if (v106 - 1 < 0)
            {
              v112 = 0;
            }

            else
            {
              v108 = 0;
              v109 = __p;
              v110 = v102;
              do
              {
                v111 = ldiv(v110, v105[v107]);
                v110 = v111.quot;
                v108 += v109[v107--] * v111.rem;
              }

              while (v107 != -1);
              v112 = 8 * v108;
              v104 = xmmword_25A99B0D0;
              v103 = v120;
            }

            v113 = v125;
            if (v88)
            {
              v114 = 0;
              v115 = &v125->i64[1];
              do
              {
                v116 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(vdupq_n_s64(v114), v104)));
                if (v116.i8[0])
                {
                  *(v115 - 1) = a4;
                }

                if (v116.i8[4])
                {
                  *v115 = a4;
                }

                v114 += 2;
                v115 += 2;
              }

              while (((v88 + 1) & 0xFFFFFFFFFFFFFFFELL) != v114);
            }

            mlx::core::strided_reduce<long long,long long,mlx::core::MaxReduce>((v126 + v112), v113, v87, v88);
            v125 = (v125 + 8 * v88);
            v102 += v88;
            v104 = xmmword_25A99B0D0;
            v103 = v120;
          }

          while (*(*a2 + 48) > v102);
        }
      }

      else if (v89)
      {
        v90 = xmmword_25A99B0D0;
        v91 = v121;
        v92 = (v122 - v121) >> 2;
        v93 = (v92 - 1);
        if (v92 - 1 >= 0)
        {
          v94 = 0;
          v95 = __p;
          v96 = 0;
          do
          {
            v97 = ldiv(v96, v91[v93]);
            v96 = v97.quot;
            v94 += v95[v93--] * v97.rem;
          }

          while (v93 != -1);
          v90 = xmmword_25A99B0D0;
        }

        if (v88)
        {
          v98 = 0;
          v99 = vdupq_n_s64(v88 - 1);
          v100 = &v125->i64[1];
          do
          {
            v101 = vmovn_s64(vcgeq_u64(v99, vorrq_s8(vdupq_n_s64(v98), v90)));
            if (v101.i8[0])
            {
              *(v100 - 1) = a4;
            }

            if (v101.i8[4])
            {
              *v100 = a4;
            }

            v98 += 2;
            v100 += 2;
          }

          while (((v88 + 1) & 0xFFFFFFFFFFFFFFFELL) != v98);
        }

        v134 = 0;
        operator new();
      }

      goto LABEL_69;
    }

    v81 = *(v129 - 1);
    v82 = *(v131 - 1);
    v129 -= 4;
    v131 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v83) = 0;
      v119 = vdupq_n_s64(v82 - 1);
      do
      {
        if (v82)
        {
          v84 = 0;
          v85 = &v11->i64[1];
          do
          {
            v86 = vmovn_s64(vcgeq_u64(v119, vorrq_s8(vdupq_n_s64(v84), xmmword_25A99B0D0)));
            if (v86.i8[0])
            {
              *(v85 - 1) = a4;
            }

            if (v86.i8[4])
            {
              *v85 = a4;
            }

            v84 += 2;
            v85 += 2;
          }

          while (((v82 + 1) & 0xFFFFFFFFFFFFFFFELL) != v84);
        }

        mlx::core::strided_reduce<long long,long long,mlx::core::MaxReduce>(v9, v11, v81, v82);
        v9 = (v126 + 8 * v82 * v81);
        v11 = (v125 + 8 * v82);
        v125 = v11;
        v126 = v9;
        v83 = v83 + v82;
      }

      while (v83 < *(*a2 + 48));
    }
  }

LABEL_73:
  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  v73 = *MEMORY[0x277D85DE8];
}

void mlx::core::reduction_op<long long,long long,mlx::core::MinReduce>(uint64_t **a1, uint64_t *a2, int **a3, uint64_t a4)
{
  v136 = *MEMORY[0x277D85DE8];
  v132 = a4;
  mlx::core::get_reduction_plan(a1, a3, &v127);
  v8 = *a1;
  v9 = (*a1)[19];
  v10 = *a2;
  v11 = *(*a2 + 152);
  v125 = v11;
  v126 = v9;
  if (v127 == 1)
  {
    v19 = v129;
    if (v129 - v128 != 4)
    {
      goto LABEL_25;
    }

    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = 0;
      v22 = *v128;
      v23 = vdupq_lane_s64(a4, 0);
      do
      {
        v24 = v23;
        v11->i64[0] = a4;
        v25 = v23;
        v26 = v22;
        v27 = v9;
        if (v22 >= 4)
        {
          v27 = v9;
          v28 = v22;
          v24 = v23;
          v25 = v23;
          do
          {
            v29 = *v27;
            v30 = *(v27 + 1);
            v27 += 2;
            v25 = vbslq_s8(vcgtq_s64(v30, v25), v25, v30);
            v24 = vbslq_s8(vcgtq_s64(v29, v24), v24, v29);
            v26 = v28 - 4;
            v18 = v28 > 7;
            v28 -= 4;
          }

          while (v18);
        }

        v31 = vbslq_s8(vcgtq_s64(v24, v25), v25, v24);
        v32 = v31.i64[1];
        if (v31.i64[1] >= v31.i64[0])
        {
          v32 = v31.i64[0];
        }

        if (a4 < v32)
        {
          v32 = a4;
        }

        v11->i64[0] = v32;
        if (v26 >= 1)
        {
          v33 = v26 + 1;
          do
          {
            v35 = *v27;
            v27 = (v27 + 8);
            v34 = v35;
            if (v32 >= v35)
            {
              v32 = v34;
            }

            v11->i64[0] = v32;
            --v33;
          }

          while (v33 > 1);
        }

        ++v21;
        v11 = (v11 + 8);
        v9 = (v9 + 8 * v22);
      }

      while (v21 != v20);
    }

    v125 = v11;
    v126 = v9;
  }

  else
  {
    if (!v127)
    {
      v11->i64[0] = a4;
      v12 = *(v8 + 12);
      v13 = vdupq_lane_s64(a4, 0);
      v14 = v13;
      if (v12 < 4)
      {
        v17 = *(v8 + 12);
      }

      else
      {
        do
        {
          v15 = *v9;
          v16 = *(v9 + 1);
          v9 += 2;
          v14 = vbslq_s8(vcgtq_s64(v16, v14), v14, v16);
          v13 = vbslq_s8(vcgtq_s64(v15, v13), v13, v15);
          v17 = v12 - 4;
          v18 = v12 > 7;
          v12 -= 4;
        }

        while (v18);
      }

      v45 = vbslq_s8(vcgtq_s64(v13, v14), v14, v13);
      v46 = v45.i64[1];
      if (v45.i64[1] >= v45.i64[0])
      {
        v46 = v45.i64[0];
      }

      if (a4 < v46)
      {
        v46 = a4;
      }

      v11->i64[0] = v46;
      if (v17 >= 1)
      {
        v47 = v17 + 1;
        do
        {
          v49 = *v9;
          v9 = (v9 + 8);
          v48 = v49;
          if (v46 >= v49)
          {
            v46 = v48;
          }

          v11->i64[0] = v46;
          --v47;
        }

        while (v47 > 1);
      }

      goto LABEL_73;
    }

    if ((v127 & 0xFFFFFFFD) == 1)
    {
      v19 = v129;
LABEL_25:
      v36 = *(v19 - 1);
      v129 = v19 - 4;
      v131 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v121);
      v37 = *(*a2 + 48);
      if (v129 == v128)
      {
        v51 = v125;
        if (v37)
        {
          v52 = 0;
          v53 = v121;
          v54 = ((v122 - v121) >> 2) - 1;
          v55 = __p;
          v117 = v126;
          v118 = vdupq_lane_s64(a4, 0);
          do
          {
            if ((v54 & 0x80000000) != 0)
            {
              v60 = 0;
            }

            else
            {
              v56 = 0;
              v57 = v54;
              quot = v52;
              do
              {
                v59 = ldiv(quot, v53[v57]);
                quot = v59.quot;
                v56 += v55[v57--] * v59.rem;
              }

              while (v57 != -1);
              v60 = 8 * v56;
            }

            *v51 = a4;
            v61 = (v117 + v60);
            if (v36 < 4)
            {
              v63 = v118;
              v64 = v118;
              v67 = v36;
            }

            else
            {
              v62 = v36;
              v63 = v118;
              v64 = v118;
              do
              {
                v65 = *v61;
                v66 = *(v61 + 1);
                v61 += 2;
                v63 = vbslq_s8(vcgtq_s64(v66, v63), v63, v66);
                v64 = vbslq_s8(vcgtq_s64(v65, v64), v64, v65);
                v67 = v62 - 4;
                v18 = v62 > 7;
                v62 -= 4;
              }

              while (v18);
            }

            v68 = vbslq_s8(vcgtq_s64(v64, v63), v63, v64);
            v69 = v68.i64[1];
            if (v68.i64[1] >= v68.i64[0])
            {
              v69 = v68.i64[0];
            }

            if (a4 < v69)
            {
              v69 = a4;
            }

            *v51 = v69;
            if (v67 >= 1)
            {
              v70 = v67 + 1;
              do
              {
                v72 = *v61;
                v61 = (v61 + 8);
                v71 = v72;
                if (v69 >= v72)
                {
                  v69 = v71;
                }

                *v51 = v69;
                --v70;
              }

              while (v70 > 1);
            }

            ++v52;
            ++v51;
          }

          while (v52 != v37);
        }

        v125 = v51;
      }

      else if (v37)
      {
        v38 = v121;
        v39 = (v122 - v121) >> 2;
        v40 = (v39 - 1);
        if (v39 - 1 >= 0)
        {
          v41 = 0;
          v42 = __p;
          v43 = 0;
          do
          {
            v44 = ldiv(v43, v38[v40]);
            v43 = v44.quot;
            v41 += v42[v40--] * v44.rem;
          }

          while (v40 != -1);
        }

        v125->i64[0] = v132;
        v135 = 0;
        operator new();
      }

LABEL_69:
      if (__p)
      {
        v124 = __p;
        operator delete(__p);
      }

      if (v121)
      {
        v122 = v121;
        operator delete(v121);
      }

      goto LABEL_73;
    }

    if (v127 != 2)
    {
      if (v127 == 5)
      {
        mlx::core::shapes_without_reduction_axes(a1, a3, &v121);
        if (*(*a2 + 48))
        {
          v74 = v121;
          v75 = (v122 - v121) >> 2;
          v76 = (v75 - 1);
          if (v75 - 1 >= 0)
          {
            v77 = 0;
            v78 = __p;
            v79 = 0;
            do
            {
              v80 = ldiv(v79, v74[v76]);
              v79 = v80.quot;
              v77 += v78[v76--] * v80.rem;
            }

            while (v76 != -1);
          }

          v133 = 0;
          operator new();
        }

        goto LABEL_69;
      }

      if (v127 != 4)
      {
        goto LABEL_73;
      }

      v50 = v129;
      goto LABEL_95;
    }

    v50 = v129;
    if (v129 - v128 != 4)
    {
LABEL_95:
      v87 = *(v50 - 1);
      v88 = *(v131 - 1);
      v129 = v50 - 4;
      v131 -= 8;
      mlx::core::shapes_without_reduction_axes(a1, a3, &v121);
      v89 = *(*a2 + 48);
      if (v129 == v128)
      {
        if (v89)
        {
          v102 = 0;
          v103 = vdupq_n_s64(v88 - 1);
          v104 = xmmword_25A99B0D0;
          v120 = v103;
          do
          {
            v105 = v121;
            v106 = (v122 - v121) >> 2;
            v107 = (v106 - 1);
            if (v106 - 1 < 0)
            {
              v112 = 0;
            }

            else
            {
              v108 = 0;
              v109 = __p;
              v110 = v102;
              do
              {
                v111 = ldiv(v110, v105[v107]);
                v110 = v111.quot;
                v108 += v109[v107--] * v111.rem;
              }

              while (v107 != -1);
              v112 = 8 * v108;
              v104 = xmmword_25A99B0D0;
              v103 = v120;
            }

            v113 = v125;
            if (v88)
            {
              v114 = 0;
              v115 = &v125->i64[1];
              do
              {
                v116 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(vdupq_n_s64(v114), v104)));
                if (v116.i8[0])
                {
                  *(v115 - 1) = a4;
                }

                if (v116.i8[4])
                {
                  *v115 = a4;
                }

                v114 += 2;
                v115 += 2;
              }

              while (((v88 + 1) & 0xFFFFFFFFFFFFFFFELL) != v114);
            }

            mlx::core::strided_reduce<long long,long long,mlx::core::MinReduce>((v126 + v112), v113, v87, v88);
            v125 = (v125 + 8 * v88);
            v102 += v88;
            v104 = xmmword_25A99B0D0;
            v103 = v120;
          }

          while (*(*a2 + 48) > v102);
        }
      }

      else if (v89)
      {
        v90 = xmmword_25A99B0D0;
        v91 = v121;
        v92 = (v122 - v121) >> 2;
        v93 = (v92 - 1);
        if (v92 - 1 >= 0)
        {
          v94 = 0;
          v95 = __p;
          v96 = 0;
          do
          {
            v97 = ldiv(v96, v91[v93]);
            v96 = v97.quot;
            v94 += v95[v93--] * v97.rem;
          }

          while (v93 != -1);
          v90 = xmmword_25A99B0D0;
        }

        if (v88)
        {
          v98 = 0;
          v99 = vdupq_n_s64(v88 - 1);
          v100 = &v125->i64[1];
          do
          {
            v101 = vmovn_s64(vcgeq_u64(v99, vorrq_s8(vdupq_n_s64(v98), v90)));
            if (v101.i8[0])
            {
              *(v100 - 1) = a4;
            }

            if (v101.i8[4])
            {
              *v100 = a4;
            }

            v98 += 2;
            v100 += 2;
          }

          while (((v88 + 1) & 0xFFFFFFFFFFFFFFFELL) != v98);
        }

        v134 = 0;
        operator new();
      }

      goto LABEL_69;
    }

    v81 = *(v129 - 1);
    v82 = *(v131 - 1);
    v129 -= 4;
    v131 -= 8;
    if (*(v10 + 48))
    {
      LODWORD(v83) = 0;
      v119 = vdupq_n_s64(v82 - 1);
      do
      {
        if (v82)
        {
          v84 = 0;
          v85 = &v11->i64[1];
          do
          {
            v86 = vmovn_s64(vcgeq_u64(v119, vorrq_s8(vdupq_n_s64(v84), xmmword_25A99B0D0)));
            if (v86.i8[0])
            {
              *(v85 - 1) = a4;
            }

            if (v86.i8[4])
            {
              *v85 = a4;
            }

            v84 += 2;
            v85 += 2;
          }

          while (((v82 + 1) & 0xFFFFFFFFFFFFFFFELL) != v84);
        }

        mlx::core::strided_reduce<long long,long long,mlx::core::MinReduce>(v9, v11, v81, v82);
        v9 = (v126 + 8 * v82 * v81);
        v11 = (v125 + 8 * v82);
        v125 = v11;
        v126 = v9;
        v83 = v83 + v82;
      }

      while (v83 < *(*a2 + 48));
    }
  }

LABEL_73:
  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  v73 = *MEMORY[0x277D85DE8];
}