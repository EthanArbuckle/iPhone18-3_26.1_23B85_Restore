void sub_25A5E5B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  mlx::core::ContiguousIterator::~ContiguousIterator((v14 - 168));
  _Unwind_Resume(a1);
}

_BYTE *mlx::core::ternary_op_dims<BOOL,unsigned long long,unsigned long long,unsigned long long,mlx::core::detail::Select,2>(_BYTE *result, void *a2, void *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, int a10)
{
  v10 = *(*a5 + 4 * a10);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *a6;
    v13 = *(*a6 + 8 * a10);
    v14 = *a7;
    v15 = *a8;
    v16 = *a9;
    v17 = a10 + 1;
    v18 = *(*a5 + 4 * v17);
    v19 = 8 * *(*a7 + 8 * a10);
    v20 = 8 * *(*a8 + 8 * a10);
    v21 = 8 * *(*a9 + 8 * a10);
    do
    {
      if (v18 >= 1)
      {
        v22 = *(v12 + 8 * v17);
        v23 = 8 * *(v14 + 8 * v17);
        v24 = 8 * *(v15 + 8 * v17);
        v25 = 8 * *(v16 + 8 * v17);
        v26 = a4;
        v27 = a3;
        v28 = a2;
        v29 = v18;
        v30 = result;
        do
        {
          if (*v30)
          {
            v31 = v28;
          }

          else
          {
            v31 = v27;
          }

          v30 += v22;
          *v26 = *v31;
          v28 = (v28 + v23);
          v27 = (v27 + v24);
          v26 = (v26 + v25);
          --v29;
        }

        while (v29);
      }

      result += v13;
      ++v11;
      a2 = (a2 + v19);
      a3 = (a3 + v20);
      a4 = (a4 + v21);
    }

    while (v11 != v10);
  }

  return result;
}

void mlx::core::ternary_op_dispatch_dims<BOOL,half,half,half,mlx::core::detail::Select>(_BYTE *a1, _WORD *a2, _WORD *a3, _WORD *a4, unint64_t a5, int **a6, uint64_t **a7)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = *a7;
  v13 = *a7 + 9;
  v14 = a6[1] - *a6;
  v15 = (v14 >> 2) - 2;
  if ((v14 >> 2) == 2)
  {
    mlx::core::ternary_op_dims<BOOL,half,half,half,mlx::core::detail::Select,2>(a1, a2, a3, a4, a6, v12, v12 + 3, v12 + 6, v13, 0);
  }

  else if ((v14 >> 2) == 1)
  {
    v16 = **a6;
    if (v16 >= 1)
    {
      v17 = **v12;
      v18 = 2 * *v12[3];
      v19 = 2 * *v12[6];
      v20 = 2 * *v12[9];
      do
      {
        if (*v11)
        {
          v21 = v10;
        }

        else
        {
          v21 = v9;
        }

        v11 += v17;
        *v8 = *v21;
        v10 = (v10 + v18);
        v9 = (v9 + v19);
        v8 = (v8 + v20);
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    mlx::core::ContiguousIterator::ContiguousIterator(&v85, a6, *a7, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v78, a6, v12 + 3, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v71, a6, v12 + 6, (v14 >> 2) - 2);
    if (a5)
    {
      v22 = 0;
      v23 = *(*v13 + (((v14 << 30) - 0x300000000) >> 29));
      do
      {
        mlx::core::ternary_op_dims<BOOL,half,half,half,mlx::core::detail::Select,2>(&v11[v85], &v10[v78], &v9[v71], &v8[v22], a6, v12, v12 + 3, v12 + 6, v13, v15);
        v24 = v87 - v86;
        v25 = (v87 - v86) >> 2;
        if (v25)
        {
          v26 = v90;
          v27 = ((v24 << 30) - 0x100000000) >> 32;
          v28 = &v90[4 * v27];
          v29 = *v28;
          v30 = &v86[4 * v27];
          v31 = v88;
          v32 = v85;
          if (v25 >= 2 && v29 == *v30 - 1)
          {
            v35 = (v24 >> 2) & 0x7FFFFFFF;
            v34 = v35 - 1;
            v36 = 4 * v35;
            v37 = v86 - 8;
            do
            {
              v38 = v34;
              *v28 = 0;
              v32 -= v31[v27] * (*v30 - 1);
              v85 = v32;
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
          v85 = v31[v34] + v32;
        }

        v40 = v80 - v79;
        v41 = (v80 - v79) >> 2;
        if (v41)
        {
          v42 = v83;
          v43 = ((v40 << 30) - 0x100000000) >> 32;
          v44 = v83 + 4 * v43;
          v45 = *v44;
          v46 = v81;
          v47 = v78;
          if (v41 >= 2 && (v48 = v79 + 4 * v43, v45 == *v48 - 1))
          {
            v49 = (v40 >> 2) & 0x7FFFFFFF;
            v50 = v49 - 1;
            v51 = 4 * v49;
            v52 = v79 - 8;
            do
            {
              v53 = v50;
              *v44 = 0;
              v47 -= v46[v43] * (*v48 - 1);
              v78 = v47;
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
          v78 = v46[v50] + v47;
        }

        v55 = v73 - v72;
        v56 = (v73 - v72) >> 2;
        if (v56)
        {
          v57 = __p;
          v58 = ((v55 << 30) - 0x100000000) >> 32;
          v59 = __p + 4 * v58;
          v60 = *v59;
          v61 = v74;
          v62 = v71;
          if (v56 >= 2 && (v63 = v72 + 4 * v58, v60 == *v63 - 1))
          {
            v64 = (v55 >> 2) & 0x7FFFFFFF;
            v65 = v64 - 1;
            v66 = 4 * v64;
            v67 = v72 - 8;
            do
            {
              v68 = v65;
              *v59 = 0;
              v62 -= v61[v58] * (*v63 - 1);
              v71 = v62;
              --v65;
              v59 = &v57[v66 - 8];
              v60 = *v59;
              v57 -= 4;
              if (v68 < 2)
              {
                break;
              }

              v63 = &v67[v66];
              v69 = *&v67[4 * v64] - 1;
              v67 -= 4;
              v58 = v65;
            }

            while (v60 == v69);
            v59 = &v57[4 * v64 - 4];
          }

          else
          {
            v65 = ((v55 << 30) - 0x100000000) >> 32;
          }

          *v59 = v60 + 1;
          v71 = v61[v65] + v62;
        }

        v22 += v23;
      }

      while (v22 < a5);
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
  }
}

void sub_25A5E6120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  mlx::core::ContiguousIterator::~ContiguousIterator((v14 - 168));
  _Unwind_Resume(a1);
}

_BYTE *mlx::core::ternary_op_dims<BOOL,half,half,half,mlx::core::detail::Select,2>(_BYTE *result, _WORD *a2, _WORD *a3, _WORD *a4, void *a5, void *a6, uint64_t *a7, void *a8, void *a9, int a10)
{
  v10 = *(*a5 + 4 * a10);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(*a6 + 8 * a10);
    v13 = *a7;
    v14 = *(*a7 + 8 * a10);
    v15 = a10 + 1;
    v16 = *(*a6 + 8 * v15);
    v17 = *(*a5 + 4 * v15);
    v18 = 2 * v14;
    v19 = 2 * *(v13 + 8 * v15);
    v20 = 2 * *(*a8 + 8 * a10);
    v21 = 2 * *(*a8 + 8 * v15);
    v22 = 2 * *(*a9 + 8 * a10);
    v23 = 2 * *(*a9 + 8 * v15);
    do
    {
      if (v17 >= 1)
      {
        v24 = a4;
        v25 = a3;
        v26 = a2;
        v27 = v17;
        v28 = result;
        do
        {
          if (*v28)
          {
            v29 = v26;
          }

          else
          {
            v29 = v25;
          }

          v28 += v16;
          *v24 = *v29;
          v26 = (v26 + v19);
          v25 = (v25 + v21);
          v24 = (v24 + v23);
          --v27;
        }

        while (v27);
      }

      result += v12;
      ++v11;
      a2 = (a2 + v18);
      a3 = (a3 + v20);
      a4 = (a4 + v22);
    }

    while (v11 != v10);
  }

  return result;
}

void mlx::core::ternary_op_dispatch_dims<BOOL,float,float,float,mlx::core::detail::Select>(_BYTE *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, unint64_t a5, int **a6, uint64_t **a7)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = *a7;
  v13 = *a7 + 9;
  v14 = a6[1] - *a6;
  v15 = (v14 >> 2) - 2;
  if ((v14 >> 2) == 2)
  {
    mlx::core::ternary_op_dims<BOOL,float,float,float,mlx::core::detail::Select,2>(a1, a2, a3, a4, a6, v12, v12 + 3, v12 + 6, v13, 0);
  }

  else if ((v14 >> 2) == 1)
  {
    v16 = **a6;
    if (v16 >= 1)
    {
      v17 = **v12;
      v18 = 4 * *v12[3];
      v19 = 4 * *v12[6];
      v20 = 4 * *v12[9];
      do
      {
        if (*v11)
        {
          v21 = v10;
        }

        else
        {
          v21 = v9;
        }

        v11 += v17;
        *v8 = *v21;
        v10 = (v10 + v18);
        v9 = (v9 + v19);
        v8 = (v8 + v20);
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    mlx::core::ContiguousIterator::ContiguousIterator(&v85, a6, *a7, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v78, a6, v12 + 3, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v71, a6, v12 + 6, (v14 >> 2) - 2);
    if (a5)
    {
      v22 = 0;
      v23 = *(*v13 + (((v14 << 30) - 0x300000000) >> 29));
      do
      {
        mlx::core::ternary_op_dims<BOOL,float,float,float,mlx::core::detail::Select,2>(&v11[v85], &v10[v78], &v9[v71], &v8[v22], a6, v12, v12 + 3, v12 + 6, v13, v15);
        v24 = v87 - v86;
        v25 = (v87 - v86) >> 2;
        if (v25)
        {
          v26 = v90;
          v27 = ((v24 << 30) - 0x100000000) >> 32;
          v28 = &v90[4 * v27];
          v29 = *v28;
          v30 = &v86[4 * v27];
          v31 = v88;
          v32 = v85;
          if (v25 >= 2 && v29 == *v30 - 1)
          {
            v35 = (v24 >> 2) & 0x7FFFFFFF;
            v34 = v35 - 1;
            v36 = 4 * v35;
            v37 = v86 - 8;
            do
            {
              v38 = v34;
              *v28 = 0;
              v32 -= v31[v27] * (*v30 - 1);
              v85 = v32;
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
          v85 = v31[v34] + v32;
        }

        v40 = v80 - v79;
        v41 = (v80 - v79) >> 2;
        if (v41)
        {
          v42 = v83;
          v43 = ((v40 << 30) - 0x100000000) >> 32;
          v44 = v83 + 4 * v43;
          v45 = *v44;
          v46 = v81;
          v47 = v78;
          if (v41 >= 2 && (v48 = v79 + 4 * v43, v45 == *v48 - 1))
          {
            v49 = (v40 >> 2) & 0x7FFFFFFF;
            v50 = v49 - 1;
            v51 = 4 * v49;
            v52 = v79 - 8;
            do
            {
              v53 = v50;
              *v44 = 0;
              v47 -= v46[v43] * (*v48 - 1);
              v78 = v47;
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
          v78 = v46[v50] + v47;
        }

        v55 = v73 - v72;
        v56 = (v73 - v72) >> 2;
        if (v56)
        {
          v57 = __p;
          v58 = ((v55 << 30) - 0x100000000) >> 32;
          v59 = __p + 4 * v58;
          v60 = *v59;
          v61 = v74;
          v62 = v71;
          if (v56 >= 2 && (v63 = v72 + 4 * v58, v60 == *v63 - 1))
          {
            v64 = (v55 >> 2) & 0x7FFFFFFF;
            v65 = v64 - 1;
            v66 = 4 * v64;
            v67 = v72 - 8;
            do
            {
              v68 = v65;
              *v59 = 0;
              v62 -= v61[v58] * (*v63 - 1);
              v71 = v62;
              --v65;
              v59 = &v57[v66 - 8];
              v60 = *v59;
              v57 -= 4;
              if (v68 < 2)
              {
                break;
              }

              v63 = &v67[v66];
              v69 = *&v67[4 * v64] - 1;
              v67 -= 4;
              v58 = v65;
            }

            while (v60 == v69);
            v59 = &v57[4 * v64 - 4];
          }

          else
          {
            v65 = ((v55 << 30) - 0x100000000) >> 32;
          }

          *v59 = v60 + 1;
          v71 = v61[v65] + v62;
        }

        v22 += v23;
      }

      while (v22 < a5);
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
  }
}

void sub_25A5E66F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  mlx::core::ContiguousIterator::~ContiguousIterator((v14 - 168));
  _Unwind_Resume(a1);
}

_BYTE *mlx::core::ternary_op_dims<BOOL,float,float,float,mlx::core::detail::Select,2>(_BYTE *result, _DWORD *a2, _DWORD *a3, _DWORD *a4, void *a5, void *a6, uint64_t *a7, void *a8, void *a9, int a10)
{
  v10 = *(*a5 + 4 * a10);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(*a6 + 8 * a10);
    v13 = *a7;
    v14 = *(*a7 + 8 * a10);
    v15 = a10 + 1;
    v16 = *(*a6 + 8 * v15);
    v17 = *(*a5 + 4 * v15);
    v18 = 4 * v14;
    v19 = 4 * *(v13 + 8 * v15);
    v20 = 4 * *(*a8 + 8 * a10);
    v21 = 4 * *(*a8 + 8 * v15);
    v22 = 4 * *(*a9 + 8 * a10);
    v23 = 4 * *(*a9 + 8 * v15);
    do
    {
      if (v17 >= 1)
      {
        v24 = a4;
        v25 = a3;
        v26 = a2;
        v27 = v17;
        v28 = result;
        do
        {
          if (*v28)
          {
            v29 = v26;
          }

          else
          {
            v29 = v25;
          }

          v28 += v16;
          *v24 = *v29;
          v26 = (v26 + v19);
          v25 = (v25 + v21);
          v24 = (v24 + v23);
          --v27;
        }

        while (v27);
      }

      result += v12;
      ++v11;
      a2 = (a2 + v18);
      a3 = (a3 + v20);
      a4 = (a4 + v22);
    }

    while (v11 != v10);
  }

  return result;
}

void mlx::core::ternary_op_dispatch_dims<BOOL,double,double,double,mlx::core::detail::Select>(_BYTE *a1, void *a2, void *a3, void *a4, unint64_t a5, int **a6, uint64_t **a7)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = *a7;
  v13 = *a7 + 9;
  v14 = a6[1] - *a6;
  v15 = (v14 >> 2) - 2;
  if ((v14 >> 2) == 2)
  {
    mlx::core::ternary_op_dims<BOOL,double,double,double,mlx::core::detail::Select,2>(a1, a2, a3, a4, a6, v12, v12 + 3, v12 + 6, v13, 0);
  }

  else if ((v14 >> 2) == 1)
  {
    v16 = **a6;
    if (v16 >= 1)
    {
      v17 = **v12;
      v18 = 8 * *v12[3];
      v19 = 8 * *v12[6];
      v20 = 8 * *v12[9];
      do
      {
        if (*v11)
        {
          v21 = v10;
        }

        else
        {
          v21 = v9;
        }

        v11 += v17;
        *v8 = *v21;
        v10 = (v10 + v18);
        v9 = (v9 + v19);
        v8 = (v8 + v20);
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    mlx::core::ContiguousIterator::ContiguousIterator(&v85, a6, *a7, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v78, a6, v12 + 3, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v71, a6, v12 + 6, (v14 >> 2) - 2);
    if (a5)
    {
      v22 = 0;
      v23 = *(*v13 + (((v14 << 30) - 0x300000000) >> 29));
      do
      {
        mlx::core::ternary_op_dims<BOOL,double,double,double,mlx::core::detail::Select,2>(&v11[v85], &v10[v78], &v9[v71], &v8[v22], a6, v12, v12 + 3, v12 + 6, v13, v15);
        v24 = v87 - v86;
        v25 = (v87 - v86) >> 2;
        if (v25)
        {
          v26 = v90;
          v27 = ((v24 << 30) - 0x100000000) >> 32;
          v28 = &v90[4 * v27];
          v29 = *v28;
          v30 = &v86[4 * v27];
          v31 = v88;
          v32 = v85;
          if (v25 >= 2 && v29 == *v30 - 1)
          {
            v35 = (v24 >> 2) & 0x7FFFFFFF;
            v34 = v35 - 1;
            v36 = 4 * v35;
            v37 = v86 - 8;
            do
            {
              v38 = v34;
              *v28 = 0;
              v32 -= v31[v27] * (*v30 - 1);
              v85 = v32;
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
          v85 = v31[v34] + v32;
        }

        v40 = v80 - v79;
        v41 = (v80 - v79) >> 2;
        if (v41)
        {
          v42 = v83;
          v43 = ((v40 << 30) - 0x100000000) >> 32;
          v44 = v83 + 4 * v43;
          v45 = *v44;
          v46 = v81;
          v47 = v78;
          if (v41 >= 2 && (v48 = v79 + 4 * v43, v45 == *v48 - 1))
          {
            v49 = (v40 >> 2) & 0x7FFFFFFF;
            v50 = v49 - 1;
            v51 = 4 * v49;
            v52 = v79 - 8;
            do
            {
              v53 = v50;
              *v44 = 0;
              v47 -= v46[v43] * (*v48 - 1);
              v78 = v47;
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
          v78 = v46[v50] + v47;
        }

        v55 = v73 - v72;
        v56 = (v73 - v72) >> 2;
        if (v56)
        {
          v57 = __p;
          v58 = ((v55 << 30) - 0x100000000) >> 32;
          v59 = __p + 4 * v58;
          v60 = *v59;
          v61 = v74;
          v62 = v71;
          if (v56 >= 2 && (v63 = v72 + 4 * v58, v60 == *v63 - 1))
          {
            v64 = (v55 >> 2) & 0x7FFFFFFF;
            v65 = v64 - 1;
            v66 = 4 * v64;
            v67 = v72 - 8;
            do
            {
              v68 = v65;
              *v59 = 0;
              v62 -= v61[v58] * (*v63 - 1);
              v71 = v62;
              --v65;
              v59 = &v57[v66 - 8];
              v60 = *v59;
              v57 -= 4;
              if (v68 < 2)
              {
                break;
              }

              v63 = &v67[v66];
              v69 = *&v67[4 * v64] - 1;
              v67 -= 4;
              v58 = v65;
            }

            while (v60 == v69);
            v59 = &v57[4 * v64 - 4];
          }

          else
          {
            v65 = ((v55 << 30) - 0x100000000) >> 32;
          }

          *v59 = v60 + 1;
          v71 = v61[v65] + v62;
        }

        v22 += v23;
      }

      while (v22 < a5);
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
  }
}

void sub_25A5E6CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  mlx::core::ContiguousIterator::~ContiguousIterator((v14 - 168));
  _Unwind_Resume(a1);
}

_BYTE *mlx::core::ternary_op_dims<BOOL,double,double,double,mlx::core::detail::Select,2>(_BYTE *result, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t *a7, void *a8, void *a9, int a10)
{
  v10 = *(*a5 + 4 * a10);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(*a6 + 8 * a10);
    v13 = *a7;
    v14 = *(*a7 + 8 * a10);
    v15 = a10 + 1;
    v16 = *(*a6 + 8 * v15);
    v17 = *(*a5 + 4 * v15);
    v18 = 8 * v14;
    v19 = 8 * *(v13 + 8 * v15);
    v20 = 8 * *(*a8 + 8 * a10);
    v21 = 8 * *(*a8 + 8 * v15);
    v22 = 8 * *(*a9 + 8 * a10);
    v23 = 8 * *(*a9 + 8 * v15);
    do
    {
      if (v17 >= 1)
      {
        v24 = a4;
        v25 = a3;
        v26 = a2;
        v27 = v17;
        v28 = result;
        do
        {
          if (*v28)
          {
            v29 = v26;
          }

          else
          {
            v29 = v25;
          }

          v28 += v16;
          *v24 = *v29;
          v26 = (v26 + v19);
          v25 = (v25 + v21);
          v24 = (v24 + v23);
          --v27;
        }

        while (v27);
      }

      result += v12;
      ++v11;
      a2 = (a2 + v18);
      a3 = (a3 + v20);
      a4 = (a4 + v22);
    }

    while (v11 != v10);
  }

  return result;
}

void mlx::core::ternary_op_dispatch_dims<BOOL,mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Select>(_BYTE *a1, _WORD *a2, _WORD *a3, _WORD *a4, unint64_t a5, int **a6, uint64_t **a7)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = *a7;
  v13 = *a7 + 9;
  v14 = a6[1] - *a6;
  v15 = (v14 >> 2) - 2;
  if ((v14 >> 2) == 2)
  {
    mlx::core::ternary_op_dims<BOOL,mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Select,2>(a1, a2, a3, a4, a6, v12, v12 + 3, v12 + 6, v13, 0);
  }

  else if ((v14 >> 2) == 1)
  {
    v16 = **a6;
    if (v16 >= 1)
    {
      v17 = **v12;
      v18 = 2 * *v12[3];
      v19 = 2 * *v12[6];
      v20 = 2 * *v12[9];
      do
      {
        if (*v11)
        {
          v21 = v10;
        }

        else
        {
          v21 = v9;
        }

        v11 += v17;
        *v8 = *v21;
        v10 = (v10 + v18);
        v9 = (v9 + v19);
        v8 = (v8 + v20);
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    mlx::core::ContiguousIterator::ContiguousIterator(&v85, a6, *a7, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v78, a6, v12 + 3, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v71, a6, v12 + 6, (v14 >> 2) - 2);
    if (a5)
    {
      v22 = 0;
      v23 = *(*v13 + (((v14 << 30) - 0x300000000) >> 29));
      do
      {
        mlx::core::ternary_op_dims<BOOL,mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Select,2>(&v11[v85], &v10[v78], &v9[v71], &v8[v22], a6, v12, v12 + 3, v12 + 6, v13, v15);
        v24 = v87 - v86;
        v25 = (v87 - v86) >> 2;
        if (v25)
        {
          v26 = v90;
          v27 = ((v24 << 30) - 0x100000000) >> 32;
          v28 = &v90[4 * v27];
          v29 = *v28;
          v30 = &v86[4 * v27];
          v31 = v88;
          v32 = v85;
          if (v25 >= 2 && v29 == *v30 - 1)
          {
            v35 = (v24 >> 2) & 0x7FFFFFFF;
            v34 = v35 - 1;
            v36 = 4 * v35;
            v37 = v86 - 8;
            do
            {
              v38 = v34;
              *v28 = 0;
              v32 -= v31[v27] * (*v30 - 1);
              v85 = v32;
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
          v85 = v31[v34] + v32;
        }

        v40 = v80 - v79;
        v41 = (v80 - v79) >> 2;
        if (v41)
        {
          v42 = v83;
          v43 = ((v40 << 30) - 0x100000000) >> 32;
          v44 = v83 + 4 * v43;
          v45 = *v44;
          v46 = v81;
          v47 = v78;
          if (v41 >= 2 && (v48 = v79 + 4 * v43, v45 == *v48 - 1))
          {
            v49 = (v40 >> 2) & 0x7FFFFFFF;
            v50 = v49 - 1;
            v51 = 4 * v49;
            v52 = v79 - 8;
            do
            {
              v53 = v50;
              *v44 = 0;
              v47 -= v46[v43] * (*v48 - 1);
              v78 = v47;
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
          v78 = v46[v50] + v47;
        }

        v55 = v73 - v72;
        v56 = (v73 - v72) >> 2;
        if (v56)
        {
          v57 = __p;
          v58 = ((v55 << 30) - 0x100000000) >> 32;
          v59 = __p + 4 * v58;
          v60 = *v59;
          v61 = v74;
          v62 = v71;
          if (v56 >= 2 && (v63 = v72 + 4 * v58, v60 == *v63 - 1))
          {
            v64 = (v55 >> 2) & 0x7FFFFFFF;
            v65 = v64 - 1;
            v66 = 4 * v64;
            v67 = v72 - 8;
            do
            {
              v68 = v65;
              *v59 = 0;
              v62 -= v61[v58] * (*v63 - 1);
              v71 = v62;
              --v65;
              v59 = &v57[v66 - 8];
              v60 = *v59;
              v57 -= 4;
              if (v68 < 2)
              {
                break;
              }

              v63 = &v67[v66];
              v69 = *&v67[4 * v64] - 1;
              v67 -= 4;
              v58 = v65;
            }

            while (v60 == v69);
            v59 = &v57[4 * v64 - 4];
          }

          else
          {
            v65 = ((v55 << 30) - 0x100000000) >> 32;
          }

          *v59 = v60 + 1;
          v71 = v61[v65] + v62;
        }

        v22 += v23;
      }

      while (v22 < a5);
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
  }
}

void sub_25A5E729C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  mlx::core::ContiguousIterator::~ContiguousIterator((v14 - 168));
  _Unwind_Resume(a1);
}

_BYTE *mlx::core::ternary_op_dims<BOOL,mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Select,2>(_BYTE *result, _WORD *a2, _WORD *a3, _WORD *a4, void *a5, void *a6, uint64_t *a7, void *a8, void *a9, int a10)
{
  v10 = *(*a5 + 4 * a10);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(*a6 + 8 * a10);
    v13 = *a7;
    v14 = *(*a7 + 8 * a10);
    v15 = a10 + 1;
    v16 = *(*a6 + 8 * v15);
    v17 = *(*a5 + 4 * v15);
    v18 = 2 * v14;
    v19 = 2 * *(v13 + 8 * v15);
    v20 = 2 * *(*a8 + 8 * a10);
    v21 = 2 * *(*a8 + 8 * v15);
    v22 = 2 * *(*a9 + 8 * a10);
    v23 = 2 * *(*a9 + 8 * v15);
    do
    {
      if (v17 >= 1)
      {
        v24 = a4;
        v25 = v17;
        v26 = a3;
        v27 = a2;
        v28 = result;
        do
        {
          if (*v28)
          {
            v29 = v27;
          }

          else
          {
            v29 = v26;
          }

          v28 += v16;
          *v24 = *v29;
          v27 = (v27 + v19);
          v26 = (v26 + v21);
          v24 = (v24 + v23);
          --v25;
        }

        while (v25);
      }

      result += v12;
      ++v11;
      a2 = (a2 + v18);
      a3 = (a3 + v20);
      a4 = (a4 + v22);
    }

    while (v11 != v10);
  }

  return result;
}

void mlx::core::ternary_op_dispatch_dims<BOOL,mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Select>(unsigned __int8 *a1, int8x8_t *a2, int8x8_t *a3, int8x8_t *a4, unint64_t a5, int **a6, uint64_t **a7)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = *a7;
  v13 = *a7 + 9;
  v14 = a6[1] - *a6;
  v15 = (v14 >> 2) - 2;
  if ((v14 >> 2) == 2)
  {
    mlx::core::ternary_op_dims<BOOL,mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Select,2>(a1, a2, a3, a4, a6, v12, v12 + 3, v12 + 6, v13, 0);
  }

  else if ((v14 >> 2) == 1)
  {
    v16 = **a6;
    if (v16 >= 1)
    {
      v17 = **v12;
      v18 = 8 * *v12[3];
      v19 = 8 * *v12[6];
      v20 = 8 * *v12[9];
      do
      {
        v21 = vcltz_s32(vshl_n_s32(vdup_n_s32(*v11), 0x1FuLL));
        v11 += v17;
        *v8 = vbsl_s8(v21, *v10, *v9);
        v10 = (v10 + v18);
        v9 = (v9 + v19);
        v8 = (v8 + v20);
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    mlx::core::ContiguousIterator::ContiguousIterator(&v85, a6, *a7, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v78, a6, v12 + 3, (v14 >> 2) - 2);
    mlx::core::ContiguousIterator::ContiguousIterator(&v71, a6, v12 + 6, (v14 >> 2) - 2);
    if (a5)
    {
      v22 = 0;
      v23 = *(*v13 + (((v14 << 30) - 0x300000000) >> 29));
      do
      {
        mlx::core::ternary_op_dims<BOOL,mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Select,2>(&v11[v85], &v10[v78], &v9[v71], &v8[v22], a6, v12, v12 + 3, v12 + 6, v13, v15);
        v24 = v87 - v86;
        v25 = (v87 - v86) >> 2;
        if (v25)
        {
          v26 = v90;
          v27 = ((v24 << 30) - 0x100000000) >> 32;
          v28 = &v90[4 * v27];
          v29 = *v28;
          v30 = &v86[4 * v27];
          v31 = v88;
          v32 = v85;
          if (v25 >= 2 && v29 == *v30 - 1)
          {
            v35 = (v24 >> 2) & 0x7FFFFFFF;
            v34 = v35 - 1;
            v36 = 4 * v35;
            v37 = v86 - 8;
            do
            {
              v38 = v34;
              *v28 = 0;
              v32 -= v31[v27] * (*v30 - 1);
              v85 = v32;
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
          v85 = v31[v34] + v32;
        }

        v40 = v80 - v79;
        v41 = (v80 - v79) >> 2;
        if (v41)
        {
          v42 = v83;
          v43 = ((v40 << 30) - 0x100000000) >> 32;
          v44 = v83 + 4 * v43;
          v45 = *v44;
          v46 = v81;
          v47 = v78;
          if (v41 >= 2 && (v48 = v79 + 4 * v43, v45 == *v48 - 1))
          {
            v49 = (v40 >> 2) & 0x7FFFFFFF;
            v50 = v49 - 1;
            v51 = 4 * v49;
            v52 = v79 - 8;
            do
            {
              v53 = v50;
              *v44 = 0;
              v47 -= v46[v43] * (*v48 - 1);
              v78 = v47;
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
          v78 = v46[v50] + v47;
        }

        v55 = v73 - v72;
        v56 = (v73 - v72) >> 2;
        if (v56)
        {
          v57 = __p;
          v58 = ((v55 << 30) - 0x100000000) >> 32;
          v59 = __p + 4 * v58;
          v60 = *v59;
          v61 = v74;
          v62 = v71;
          if (v56 >= 2 && (v63 = v72 + 4 * v58, v60 == *v63 - 1))
          {
            v64 = (v55 >> 2) & 0x7FFFFFFF;
            v65 = v64 - 1;
            v66 = 4 * v64;
            v67 = v72 - 8;
            do
            {
              v68 = v65;
              *v59 = 0;
              v62 -= v61[v58] * (*v63 - 1);
              v71 = v62;
              --v65;
              v59 = &v57[v66 - 8];
              v60 = *v59;
              v57 -= 4;
              if (v68 < 2)
              {
                break;
              }

              v63 = &v67[v66];
              v69 = *&v67[4 * v64] - 1;
              v67 -= 4;
              v58 = v65;
            }

            while (v60 == v69);
            v59 = &v57[4 * v64 - 4];
          }

          else
          {
            v65 = ((v55 << 30) - 0x100000000) >> 32;
          }

          *v59 = v60 + 1;
          v71 = v61[v65] + v62;
        }

        v22 += v23;
      }

      while (v22 < a5);
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
  }
}

void sub_25A5E787C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  mlx::core::ContiguousIterator::~ContiguousIterator((v14 - 168));
  _Unwind_Resume(a1);
}

unsigned __int8 *mlx::core::ternary_op_dims<BOOL,mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Select,2>(unsigned __int8 *result, int8x8_t *a2, int8x8_t *a3, int8x8_t *a4, void *a5, void *a6, void *a7, void *a8, void *a9, int a10)
{
  v10 = *(*a5 + 4 * a10);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(*a6 + 8 * a10);
    v13 = 8 * *(*a7 + 8 * a10);
    v14 = a10 + 1;
    v15 = 8 * *(*a8 + 8 * a10);
    v16 = 8 * *(*a9 + 8 * a10);
    do
    {
      v17 = *(*a5 + 4 * v14);
      if (v17 >= 1)
      {
        v18 = *(*a6 + 8 * v14);
        v19 = 8 * *(*a7 + 8 * v14);
        v20 = 8 * *(*a8 + 8 * v14);
        v21 = 8 * *(*a9 + 8 * v14);
        v22 = a4;
        v23 = a3;
        v24 = a2;
        v25 = result;
        do
        {
          v26 = vcltz_s32(vshl_n_s32(vdup_n_s32(*v25), 0x1FuLL));
          v25 += v18;
          *v22 = vbsl_s8(v26, *v24, *v23);
          v24 = (v24 + v19);
          v23 = (v23 + v20);
          v22 = (v22 + v21);
          --v17;
        }

        while (v17);
      }

      result += v12;
      ++v11;
      a2 = (a2 + v13);
      a3 = (a3 + v15);
      a4 = (a4 + v16);
    }

    while (v11 != v10);
  }

  return result;
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::select_op<mlx::core::detail::Select>(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Select,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::select_op<mlx::core::detail::Select>(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Select,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFFF58;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::select_op<mlx::core::detail::Select>(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Select,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::select_op<mlx::core::detail::Select>(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Select,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFFF58;
  v2 = (a1 + 3);
  mlx::core::array::~array((a1 + 7));
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array(v2);
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::select_op<mlx::core::detail::Select>(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Select,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::select_op<mlx::core::detail::Select>(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Select,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BFFF58;
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

  v6 = *(result + 64);
  *(a2 + 56) = *(result + 56);
  *(a2 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 76) = *(result + 76);
  *(a2 + 81) = 0;
  *(a2 + 84) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::select_op<mlx::core::detail::Select>(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Select,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::select_op<mlx::core::detail::Select>(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Select,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::select_op<mlx::core::detail::Select>(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Select,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::select_op<mlx::core::detail::Select>(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Select,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 56));
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::select_op<mlx::core::detail::Select>(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Select,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::select_op<mlx::core::detail::Select>(mlx::core::array const&,mlx::core::array const&,mlx::core::array const&,mlx::core::array&,mlx::core::detail::Select,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::ArgSort::eval_cpu(uint64_t a1, void *a2, uint64_t a3)
{
  v5[27] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    v4 = mlx::core::allocator::malloc((*(*a3 + 60) * *(*a3 + 48)));
    v5[0] = &unk_286BE3468;
    v5[1] = mlx::core::allocator::free;
    v5[3] = v5;
    mlx::core::array::set_data(a3, v4);
  }

  mlx::core::ArgSort::eval_cpu();
}

void sub_25A5E81A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  mlx::core::array::~array((v34 + 32));
  mlx::core::array::~array((v34 + 16));
  mlx::core::array::~array((v33 + 16));
  mlx::core::array::~array(&a31);
  mlx::core::array::~array((v35 + 16));
  mlx::core::array::~array(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::Sort::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(a2 + 8) - *a2 == 16)
  {
    if (*(*v4 + 168))
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    mlx::core::copy(v4, a3, v6, *(a1 + 8), *(a1 + 16));
    mlx::core::cpu::get_command_encoder(*(a1 + 8), *(a1 + 16));
    mlx::core::array::unsafe_weak_copy(a3, &v7);
  }

  mlx::core::Sort::eval_cpu();
}

void sub_25A5E867C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  __cxa_free_exception(v22);
  std::mutex::unlock(v21);
  mlx::core::array::~array((v23 + 16));
  mlx::core::array::~array(&a21);
  mlx::core::array::~array(&a11);
  _Unwind_Resume(a1);
}

void mlx::core::ArgPartition::eval_cpu(uint64_t a1, void *a2, uint64_t a3)
{
  v5[27] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    v4 = mlx::core::allocator::malloc((*(*a3 + 60) * *(*a3 + 48)));
    v5[0] = &unk_286BE3468;
    v5[1] = mlx::core::allocator::free;
    v5[3] = v5;
    mlx::core::array::set_data(a3, v4);
  }

  mlx::core::ArgPartition::eval_cpu();
}

void sub_25A5E8BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  mlx::core::array::~array((v34 + 32));
  mlx::core::array::~array((v34 + 16));
  mlx::core::array::~array((v33 + 16));
  mlx::core::array::~array(&a31);
  mlx::core::array::~array((v35 + 16));
  mlx::core::array::~array(&a13);
  _Unwind_Resume(a1);
}

void mlx::core::Partition::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(a2 + 8) - *a2 == 16)
  {
    if (*(*v4 + 168))
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    mlx::core::copy(v4, a3, v6, *(a1 + 8), *(a1 + 16));
    mlx::core::cpu::get_command_encoder(*(a1 + 8), *(a1 + 16));
    mlx::core::array::unsafe_weak_copy(a3, &v7);
  }

  mlx::core::Partition::eval_cpu();
}

void sub_25A5E90A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  __cxa_free_exception(v22);
  std::mutex::unlock(v21);
  mlx::core::array::~array((v23 + 16));
  mlx::core::array::~array(&a21);
  mlx::core::array::~array(&a11);
  _Unwind_Resume(a1);
}

void mlx::core::ArgPartition::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A5E91F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::ArgSort::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A5E92E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Partition::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A5E93E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::Sort::output_shapes(uint64_t ***a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a1;
  v6 = 0;
  v7 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(a2, &__p, &v8, 1uLL);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25A5E94D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_7ArgSort8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286C00270;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_7ArgSort8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286C00270;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_7ArgSort8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286C00270;
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

  *(a2 + 56) = *(result + 56);
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_7ArgSort8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_7ArgSort8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_7ArgSort8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::ArgSort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_7ArgSort8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::ArgSort::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()(mlx::core::array *this)
{
  v1 = *this;
  switch(*(*this + 56))
  {
    case 0:
      v3 = *(this + 8);
      if (v3 < 0)
      {
        v3 += (v1[1] - *v1) >> 2;
      }

      v4 = v1[6];
      v5 = mlx::core::array::shape(this, v3);
      v6 = *this;
      v966 = 0;
      v967 = 0;
      v965 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v965, *v6, v6[1], (v6[1] - *v6) >> 2);
      v7 = &v965[4 * v3];
      v8 = v966 - (v7 + 4);
      if (v966 != v7 + 4)
      {
        memmove(&v965[4 * v3], v7 + 4, v966 - (v7 + 4));
      }

      v966 = &v7[v8];
      v9 = *this;
      v963 = 0;
      v964 = 0;
      v962 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v962, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
      v10 = v3;
      v11 = &v962[8 * v3];
      v12 = v963 - (v11 + 8);
      if (v963 != v11 + 8)
      {
        memmove(&v962[8 * v3], v11 + 8, v963 - (v11 + 8));
      }

      v963 = &v11[v12];
      v13 = *(this + 2);
      v960 = 0;
      v961 = 0;
      v959 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v959, *v13, v13[1], (v13[1] - *v13) >> 2);
      v14 = 4 * v3;
      v15 = &v959[v14];
      v16 = v960 - &v959[v14 + 4];
      if (v960 != &v959[v14 + 4])
      {
        memmove(&v959[v14], &v959[v14 + 4], v960 - (v15 + 4));
      }

      v960 = &v15[v16];
      v17 = *(this + 2);
      v957 = 0;
      v958 = 0;
      v956 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v956, *(v17 + 24), *(v17 + 32), (*(v17 + 32) - *(v17 + 24)) >> 3);
      v18 = &v956[8 * v10];
      v19 = v957 - (v18 + 8);
      if (v957 != v18 + 8)
      {
        memmove(&v956[8 * v10], v18 + 8, v957 - (v18 + 8));
      }

      v957 = &v18[v19];
      v914 = *(*(*this + 24) + 8 * v10);
      v928 = *(*(*(this + 2) + 24) + 8 * v10);
      v20 = mlx::core::array::shape(this, v10);
      mlx::core::ContiguousIterator::ContiguousIterator(&v949, &v965, &v962, (v966 - v965) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v942, &v959, &v956, (v960 - v959) >> 2);
      if (v4 < v5)
      {
        goto LABEL_659;
      }

      v21 = 0;
      v886 = *(*(this + 2) + 152);
      v900 = *(*this + 152);
      v22 = v928 * v20;
      v23 = MEMORY[0x277D826F0];
      v872 = v4 / v5;
      while (1)
      {
        v24 = v942;
        v25 = v949;
        v26 = v951 - v950;
        v27 = (v951 - v950) >> 2;
        if (v27)
        {
          v28 = ((v26 << 30) - 0x100000000) >> 32;
          v29 = v954;
          v30 = v952;
          v31 = v954 + 4 * v28;
          v32 = *v31;
          v33 = v950 + 4 * v28;
          if (v27 >= 2 && v32 == *v33 - 1)
          {
            v37 = (v26 >> 2) & 0x7FFFFFFF;
            v36 = v37 - 1;
            v38 = 4 * v37;
            v39 = v950 - 8;
            v35 = v949;
            do
            {
              v40 = v36;
              *v31 = 0;
              v35 -= v30[v28] * (*v33 - 1);
              v949 = v35;
              --v36;
              v31 = &v29[v38 - 8];
              v32 = *v31;
              v29 -= 4;
              if (v40 < 2)
              {
                break;
              }

              v33 = &v39[v38];
              v41 = *&v39[4 * v37] - 1;
              v39 -= 4;
              v28 = v36;
            }

            while (v32 == v41);
            v31 = &v29[4 * v37 - 4];
          }

          else
          {
            v35 = v949;
            v36 = ((v26 << 30) - 0x100000000) >> 32;
          }

          *v31 = v32 + 1;
          v949 = v30[v36] + v35;
        }

        v42 = v944 - v943;
        v43 = (v944 - v943) >> 2;
        if (v43)
        {
          v44 = ((v42 << 30) - 0x100000000) >> 32;
          v45 = __p;
          v46 = v945;
          v47 = __p + 4 * v44;
          v48 = *v47;
          v49 = v943 + 4 * v44;
          if (v43 >= 2 && v48 == *v49 - 1)
          {
            v53 = (v42 >> 2) & 0x7FFFFFFF;
            v52 = v53 - 1;
            v54 = 4 * v53;
            v55 = v943 - 8;
            v51 = v24;
            do
            {
              v56 = v52;
              *v47 = 0;
              v51 -= v46[v44] * (*v49 - 1);
              v942 = v51;
              --v52;
              v47 = &v45[v54 - 8];
              v48 = *v47;
              v45 -= 4;
              if (v56 < 2)
              {
                break;
              }

              v49 = &v55[v54];
              v57 = *&v55[4 * v53] - 1;
              v55 -= 4;
              v44 = v52;
            }

            while (v48 == v57);
            v47 = &v45[4 * v53 - 4];
          }

          else
          {
            v51 = v24;
            v52 = ((v42 << 30) - 0x100000000) >> 32;
          }

          *v47 = v48 + 1;
          v942 = v46[v52] + v51;
        }

        v58 = (v886 + 4 * v24);
        if (v22)
        {
          v59 = 0;
          v60 = 0;
          do
          {
            v58[v59] = v60++;
            v59 += v928;
          }

          while (v22 != v59);
        }

        v968 = v900 + v25;
        v969 = v914;
        if (v20 < 129)
        {
          v63 = 0;
LABEL_45:
        }

        else
        {
          v61 = v20;
          while (1)
          {
            v62 = operator new(4 * v61, v23);
            if (v62)
            {
              break;
            }

            v63 = v61 >> 1;
            v64 = v61 > 1;
            v61 >>= 1;
            if (!v64)
            {
              goto LABEL_45;
            }
          }

          v65 = v62;
          operator delete(v65);
        }

        if (v872 <= ++v21)
        {
          goto LABEL_659;
        }
      }

    case 1:
      v500 = *(this + 8);
      if (v500 < 0)
      {
        v500 += (v1[1] - *v1) >> 2;
      }

      v501 = v1[6];
      v502 = mlx::core::array::shape(this, v500);
      v503 = *this;
      v966 = 0;
      v967 = 0;
      v965 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v965, *v503, v503[1], (v503[1] - *v503) >> 2);
      v504 = &v965[4 * v500];
      v505 = v966 - (v504 + 4);
      if (v966 != v504 + 4)
      {
        memmove(&v965[4 * v500], v504 + 4, v966 - (v504 + 4));
      }

      v966 = &v504[v505];
      v506 = *this;
      v963 = 0;
      v964 = 0;
      v962 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v962, *(v506 + 24), *(v506 + 32), (*(v506 + 32) - *(v506 + 24)) >> 3);
      v507 = v500;
      v508 = &v962[8 * v500];
      v509 = v963 - (v508 + 8);
      if (v963 != v508 + 8)
      {
        memmove(&v962[8 * v500], v508 + 8, v963 - (v508 + 8));
      }

      v963 = &v508[v509];
      v510 = *(this + 2);
      v960 = 0;
      v961 = 0;
      v959 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v959, *v510, v510[1], (v510[1] - *v510) >> 2);
      v511 = 4 * v500;
      v512 = &v959[v511];
      v513 = v960 - &v959[v511 + 4];
      if (v960 != &v959[v511 + 4])
      {
        memmove(&v959[v511], &v959[v511 + 4], v960 - (v512 + 4));
      }

      v960 = &v512[v513];
      v514 = *(this + 2);
      v957 = 0;
      v958 = 0;
      v956 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v956, *(v514 + 24), *(v514 + 32), (*(v514 + 32) - *(v514 + 24)) >> 3);
      v515 = &v956[8 * v507];
      v516 = v957 - (v515 + 8);
      if (v957 != v515 + 8)
      {
        memmove(&v956[8 * v507], v515 + 8, v957 - (v515 + 8));
      }

      v957 = &v515[v516];
      v922 = *(*(*this + 24) + 8 * v507);
      v936 = *(*(*(this + 2) + 24) + 8 * v507);
      v517 = mlx::core::array::shape(this, v507);
      mlx::core::ContiguousIterator::ContiguousIterator(&v949, &v965, &v962, (v966 - v965) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v942, &v959, &v956, (v960 - v959) >> 2);
      if (v501 < v502)
      {
        goto LABEL_659;
      }

      v518 = 0;
      v894 = *(*(this + 2) + 152);
      v908 = *(*this + 152);
      v519 = v936 * v517;
      v520 = MEMORY[0x277D826F0];
      v880 = v501 / v502;
      do
      {
        v521 = v942;
        v522 = v949;
        v523 = v951 - v950;
        v524 = (v951 - v950) >> 2;
        if (v524)
        {
          v525 = ((v523 << 30) - 0x100000000) >> 32;
          v526 = v954;
          v527 = v952;
          v528 = v954 + 4 * v525;
          v529 = *v528;
          v530 = v950 + 4 * v525;
          if (v524 >= 2 && v529 == *v530 - 1)
          {
            v534 = (v523 >> 2) & 0x7FFFFFFF;
            v533 = v534 - 1;
            v535 = 4 * v534;
            v536 = v950 - 8;
            v532 = v949;
            do
            {
              v537 = v533;
              *v528 = 0;
              v532 -= v527[v525] * (*v530 - 1);
              v949 = v532;
              --v533;
              v528 = &v526[v535 - 8];
              v529 = *v528;
              v526 -= 4;
              if (v537 < 2)
              {
                break;
              }

              v530 = &v536[v535];
              v538 = *&v536[4 * v534] - 1;
              v536 -= 4;
              v525 = v533;
            }

            while (v529 == v538);
            v528 = &v526[4 * v534 - 4];
          }

          else
          {
            v532 = v949;
            v533 = ((v523 << 30) - 0x100000000) >> 32;
          }

          *v528 = v529 + 1;
          v949 = v527[v533] + v532;
        }

        v539 = v944 - v943;
        v540 = (v944 - v943) >> 2;
        if (v540)
        {
          v541 = ((v539 << 30) - 0x100000000) >> 32;
          v542 = __p;
          v543 = v945;
          v544 = __p + 4 * v541;
          v545 = *v544;
          v546 = v943 + 4 * v541;
          if (v540 >= 2 && v545 == *v546 - 1)
          {
            v550 = (v539 >> 2) & 0x7FFFFFFF;
            v549 = v550 - 1;
            v551 = 4 * v550;
            v552 = v943 - 8;
            v548 = v521;
            do
            {
              v553 = v549;
              *v544 = 0;
              v548 -= v543[v541] * (*v546 - 1);
              v942 = v548;
              --v549;
              v544 = &v542[v551 - 8];
              v545 = *v544;
              v542 -= 4;
              if (v553 < 2)
              {
                break;
              }

              v546 = &v552[v551];
              v554 = *&v552[4 * v550] - 1;
              v552 -= 4;
              v541 = v549;
            }

            while (v545 == v554);
            v544 = &v542[4 * v550 - 4];
          }

          else
          {
            v548 = v521;
            v549 = ((v539 << 30) - 0x100000000) >> 32;
          }

          *v544 = v545 + 1;
          v942 = v543[v549] + v548;
        }

        v555 = (v894 + 4 * v521);
        if (v519)
        {
          v556 = 0;
          v557 = 0;
          do
          {
            v555[v556] = v557++;
            v556 += v936;
          }

          while (v519 != v556);
        }

        v968 = v908 + v522;
        v969 = v922;
        if (v517 < 129)
        {
          v560 = 0;
LABEL_421:
        }

        else
        {
          v558 = v517;
          while (1)
          {
            v559 = operator new(4 * v558, v520);
            if (v559)
            {
              break;
            }

            v560 = v558 >> 1;
            v64 = v558 > 1;
            v558 >>= 1;
            if (!v64)
            {
              goto LABEL_421;
            }
          }

          v561 = v559;
          operator delete(v561);
        }

        ++v518;
      }

      while (v880 > v518);
      goto LABEL_659;
    case 2:
      v314 = *(this + 8);
      if (v314 < 0)
      {
        v314 += (v1[1] - *v1) >> 2;
      }

      v315 = v1[6];
      v316 = mlx::core::array::shape(this, v314);
      v317 = *this;
      v966 = 0;
      v967 = 0;
      v965 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v965, *v317, v317[1], (v317[1] - *v317) >> 2);
      v318 = &v965[4 * v314];
      v319 = v966 - (v318 + 4);
      if (v966 != v318 + 4)
      {
        memmove(&v965[4 * v314], v318 + 4, v966 - (v318 + 4));
      }

      v966 = &v318[v319];
      v320 = *this;
      v963 = 0;
      v964 = 0;
      v962 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v962, *(v320 + 24), *(v320 + 32), (*(v320 + 32) - *(v320 + 24)) >> 3);
      v321 = v314;
      v322 = &v962[8 * v314];
      v323 = v963 - (v322 + 8);
      if (v963 != v322 + 8)
      {
        memmove(&v962[8 * v314], v322 + 8, v963 - (v322 + 8));
      }

      v963 = &v322[v323];
      v324 = *(this + 2);
      v960 = 0;
      v961 = 0;
      v959 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v959, *v324, v324[1], (v324[1] - *v324) >> 2);
      v325 = 4 * v314;
      v326 = &v959[v325];
      v327 = v960 - &v959[v325 + 4];
      if (v960 != &v959[v325 + 4])
      {
        memmove(&v959[v325], &v959[v325 + 4], v960 - (v326 + 4));
      }

      v960 = &v326[v327];
      v328 = *(this + 2);
      v957 = 0;
      v958 = 0;
      v956 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v956, *(v328 + 24), *(v328 + 32), (*(v328 + 32) - *(v328 + 24)) >> 3);
      v329 = &v956[8 * v321];
      v330 = v957 - (v329 + 8);
      if (v957 != v329 + 8)
      {
        memmove(&v956[8 * v321], v329 + 8, v957 - (v329 + 8));
      }

      v957 = &v329[v330];
      v919 = *(*(*this + 24) + 8 * v321);
      v933 = *(*(*(this + 2) + 24) + 8 * v321);
      v331 = mlx::core::array::shape(this, v321);
      mlx::core::ContiguousIterator::ContiguousIterator(&v949, &v965, &v962, (v966 - v965) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v942, &v959, &v956, (v960 - v959) >> 2);
      if (v315 < v316)
      {
        goto LABEL_659;
      }

      v332 = 0;
      v891 = *(*(this + 2) + 152);
      v905 = *(*this + 152);
      v333 = v933 * v331;
      v334 = MEMORY[0x277D826F0];
      v877 = v315 / v316;
      do
      {
        v335 = v942;
        v336 = v949;
        v337 = v951 - v950;
        v338 = (v951 - v950) >> 2;
        if (v338)
        {
          v339 = ((v337 << 30) - 0x100000000) >> 32;
          v340 = v954;
          v341 = v952;
          v342 = v954 + 4 * v339;
          v343 = *v342;
          v344 = v950 + 4 * v339;
          if (v338 >= 2 && v343 == *v344 - 1)
          {
            v348 = (v337 >> 2) & 0x7FFFFFFF;
            v347 = v348 - 1;
            v349 = 4 * v348;
            v350 = v950 - 8;
            v346 = v949;
            do
            {
              v351 = v347;
              *v342 = 0;
              v346 -= v341[v339] * (*v344 - 1);
              v949 = v346;
              --v347;
              v342 = &v340[v349 - 8];
              v343 = *v342;
              v340 -= 4;
              if (v351 < 2)
              {
                break;
              }

              v344 = &v350[v349];
              v352 = *&v350[4 * v348] - 1;
              v350 -= 4;
              v339 = v347;
            }

            while (v343 == v352);
            v342 = &v340[4 * v348 - 4];
          }

          else
          {
            v346 = v949;
            v347 = ((v337 << 30) - 0x100000000) >> 32;
          }

          *v342 = v343 + 1;
          v949 = v341[v347] + v346;
        }

        v353 = v944 - v943;
        v354 = (v944 - v943) >> 2;
        if (v354)
        {
          v355 = ((v353 << 30) - 0x100000000) >> 32;
          v356 = __p;
          v357 = v945;
          v358 = __p + 4 * v355;
          v359 = *v358;
          v360 = v943 + 4 * v355;
          if (v354 >= 2 && v359 == *v360 - 1)
          {
            v364 = (v353 >> 2) & 0x7FFFFFFF;
            v363 = v364 - 1;
            v365 = 4 * v364;
            v366 = v943 - 8;
            v362 = v335;
            do
            {
              v367 = v363;
              *v358 = 0;
              v362 -= v357[v355] * (*v360 - 1);
              v942 = v362;
              --v363;
              v358 = &v356[v365 - 8];
              v359 = *v358;
              v356 -= 4;
              if (v367 < 2)
              {
                break;
              }

              v360 = &v366[v365];
              v368 = *&v366[4 * v364] - 1;
              v366 -= 4;
              v355 = v363;
            }

            while (v359 == v368);
            v358 = &v356[4 * v364 - 4];
          }

          else
          {
            v362 = v335;
            v363 = ((v353 << 30) - 0x100000000) >> 32;
          }

          *v358 = v359 + 1;
          v942 = v357[v363] + v362;
        }

        v369 = (v891 + 4 * v335);
        if (v333)
        {
          v370 = 0;
          v371 = 0;
          do
          {
            v369[v370] = v371++;
            v370 += v933;
          }

          while (v333 != v370);
        }

        v968 = v905 + 2 * v336;
        v969 = v919;
        if (v331 < 129)
        {
          v374 = 0;
LABEL_280:
        }

        else
        {
          v372 = v331;
          while (1)
          {
            v373 = operator new(4 * v372, v334);
            if (v373)
            {
              break;
            }

            v374 = v372 >> 1;
            v64 = v372 > 1;
            v372 >>= 1;
            if (!v64)
            {
              goto LABEL_280;
            }
          }

          v375 = v373;
          operator delete(v375);
        }

        ++v332;
      }

      while (v877 > v332);
      goto LABEL_659;
    case 3:
      v376 = *(this + 8);
      if (v376 < 0)
      {
        v376 += (v1[1] - *v1) >> 2;
      }

      v377 = v1[6];
      v378 = mlx::core::array::shape(this, v376);
      v379 = *this;
      v966 = 0;
      v967 = 0;
      v965 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v965, *v379, v379[1], (v379[1] - *v379) >> 2);
      v380 = &v965[4 * v376];
      v381 = v966 - (v380 + 4);
      if (v966 != v380 + 4)
      {
        memmove(&v965[4 * v376], v380 + 4, v966 - (v380 + 4));
      }

      v966 = &v380[v381];
      v382 = *this;
      v963 = 0;
      v964 = 0;
      v962 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v962, *(v382 + 24), *(v382 + 32), (*(v382 + 32) - *(v382 + 24)) >> 3);
      v383 = v376;
      v384 = &v962[8 * v376];
      v385 = v963 - (v384 + 8);
      if (v963 != v384 + 8)
      {
        memmove(&v962[8 * v376], v384 + 8, v963 - (v384 + 8));
      }

      v963 = &v384[v385];
      v386 = *(this + 2);
      v960 = 0;
      v961 = 0;
      v959 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v959, *v386, v386[1], (v386[1] - *v386) >> 2);
      v387 = 4 * v376;
      v388 = &v959[v387];
      v389 = v960 - &v959[v387 + 4];
      if (v960 != &v959[v387 + 4])
      {
        memmove(&v959[v387], &v959[v387 + 4], v960 - (v388 + 4));
      }

      v960 = &v388[v389];
      v390 = *(this + 2);
      v957 = 0;
      v958 = 0;
      v956 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v956, *(v390 + 24), *(v390 + 32), (*(v390 + 32) - *(v390 + 24)) >> 3);
      v391 = &v956[8 * v383];
      v392 = v957 - (v391 + 8);
      if (v957 != v391 + 8)
      {
        memmove(&v956[8 * v383], v391 + 8, v957 - (v391 + 8));
      }

      v957 = &v391[v392];
      v920 = *(*(*this + 24) + 8 * v383);
      v934 = *(*(*(this + 2) + 24) + 8 * v383);
      v393 = mlx::core::array::shape(this, v383);
      mlx::core::ContiguousIterator::ContiguousIterator(&v949, &v965, &v962, (v966 - v965) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v942, &v959, &v956, (v960 - v959) >> 2);
      if (v377 < v378)
      {
        goto LABEL_659;
      }

      v394 = 0;
      v892 = *(*(this + 2) + 152);
      v906 = *(*this + 152);
      v395 = v934 * v393;
      v396 = MEMORY[0x277D826F0];
      v878 = v377 / v378;
      do
      {
        v397 = v942;
        v398 = v949;
        v399 = v951 - v950;
        v400 = (v951 - v950) >> 2;
        if (v400)
        {
          v401 = ((v399 << 30) - 0x100000000) >> 32;
          v402 = v954;
          v403 = v952;
          v404 = v954 + 4 * v401;
          v405 = *v404;
          v406 = v950 + 4 * v401;
          if (v400 >= 2 && v405 == *v406 - 1)
          {
            v410 = (v399 >> 2) & 0x7FFFFFFF;
            v409 = v410 - 1;
            v411 = 4 * v410;
            v412 = v950 - 8;
            v408 = v949;
            do
            {
              v413 = v409;
              *v404 = 0;
              v408 -= v403[v401] * (*v406 - 1);
              v949 = v408;
              --v409;
              v404 = &v402[v411 - 8];
              v405 = *v404;
              v402 -= 4;
              if (v413 < 2)
              {
                break;
              }

              v406 = &v412[v411];
              v414 = *&v412[4 * v410] - 1;
              v412 -= 4;
              v401 = v409;
            }

            while (v405 == v414);
            v404 = &v402[4 * v410 - 4];
          }

          else
          {
            v408 = v949;
            v409 = ((v399 << 30) - 0x100000000) >> 32;
          }

          *v404 = v405 + 1;
          v949 = v403[v409] + v408;
        }

        v415 = v944 - v943;
        v416 = (v944 - v943) >> 2;
        if (v416)
        {
          v417 = ((v415 << 30) - 0x100000000) >> 32;
          v418 = __p;
          v419 = v945;
          v420 = __p + 4 * v417;
          v421 = *v420;
          v422 = v943 + 4 * v417;
          if (v416 >= 2 && v421 == *v422 - 1)
          {
            v426 = (v415 >> 2) & 0x7FFFFFFF;
            v425 = v426 - 1;
            v427 = 4 * v426;
            v428 = v943 - 8;
            v424 = v397;
            do
            {
              v429 = v425;
              *v420 = 0;
              v424 -= v419[v417] * (*v422 - 1);
              v942 = v424;
              --v425;
              v420 = &v418[v427 - 8];
              v421 = *v420;
              v418 -= 4;
              if (v429 < 2)
              {
                break;
              }

              v422 = &v428[v427];
              v430 = *&v428[4 * v426] - 1;
              v428 -= 4;
              v417 = v425;
            }

            while (v421 == v430);
            v420 = &v418[4 * v426 - 4];
          }

          else
          {
            v424 = v397;
            v425 = ((v415 << 30) - 0x100000000) >> 32;
          }

          *v420 = v421 + 1;
          v942 = v419[v425] + v424;
        }

        v431 = (v892 + 4 * v397);
        if (v395)
        {
          v432 = 0;
          v433 = 0;
          do
          {
            v431[v432] = v433++;
            v432 += v934;
          }

          while (v395 != v432);
        }

        v968 = v906 + 4 * v398;
        v969 = v920;
        if (v393 < 129)
        {
          v436 = 0;
LABEL_327:
        }

        else
        {
          v434 = v393;
          while (1)
          {
            v435 = operator new(4 * v434, v396);
            if (v435)
            {
              break;
            }

            v436 = v434 >> 1;
            v64 = v434 > 1;
            v434 >>= 1;
            if (!v64)
            {
              goto LABEL_327;
            }
          }

          v437 = v435;
          operator delete(v437);
        }

        ++v394;
      }

      while (v878 > v394);
      goto LABEL_659;
    case 4:
      v128 = *(this + 8);
      if (v128 < 0)
      {
        v128 += (v1[1] - *v1) >> 2;
      }

      v129 = v1[6];
      v130 = mlx::core::array::shape(this, v128);
      v131 = *this;
      v966 = 0;
      v967 = 0;
      v965 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v965, *v131, v131[1], (v131[1] - *v131) >> 2);
      v132 = &v965[4 * v128];
      v133 = v966 - (v132 + 4);
      if (v966 != v132 + 4)
      {
        memmove(&v965[4 * v128], v132 + 4, v966 - (v132 + 4));
      }

      v966 = &v132[v133];
      v134 = *this;
      v963 = 0;
      v964 = 0;
      v962 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v962, *(v134 + 24), *(v134 + 32), (*(v134 + 32) - *(v134 + 24)) >> 3);
      v135 = v128;
      v136 = &v962[8 * v128];
      v137 = v963 - (v136 + 8);
      if (v963 != v136 + 8)
      {
        memmove(&v962[8 * v128], v136 + 8, v963 - (v136 + 8));
      }

      v963 = &v136[v137];
      v138 = *(this + 2);
      v960 = 0;
      v961 = 0;
      v959 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v959, *v138, v138[1], (v138[1] - *v138) >> 2);
      v139 = 4 * v128;
      v140 = &v959[v139];
      v141 = v960 - &v959[v139 + 4];
      if (v960 != &v959[v139 + 4])
      {
        memmove(&v959[v139], &v959[v139 + 4], v960 - (v140 + 4));
      }

      v960 = &v140[v141];
      v142 = *(this + 2);
      v957 = 0;
      v958 = 0;
      v956 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v956, *(v142 + 24), *(v142 + 32), (*(v142 + 32) - *(v142 + 24)) >> 3);
      v143 = &v956[8 * v135];
      v144 = v957 - (v143 + 8);
      if (v957 != v143 + 8)
      {
        memmove(&v956[8 * v135], v143 + 8, v957 - (v143 + 8));
      }

      v957 = &v143[v144];
      v916 = *(*(*this + 24) + 8 * v135);
      v930 = *(*(*(this + 2) + 24) + 8 * v135);
      v145 = mlx::core::array::shape(this, v135);
      mlx::core::ContiguousIterator::ContiguousIterator(&v949, &v965, &v962, (v966 - v965) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v942, &v959, &v956, (v960 - v959) >> 2);
      if (v129 < v130)
      {
        goto LABEL_659;
      }

      v146 = 0;
      v888 = *(*(this + 2) + 152);
      v902 = *(*this + 152);
      v147 = v930 * v145;
      v148 = MEMORY[0x277D826F0];
      v874 = v129 / v130;
      do
      {
        v149 = v942;
        v150 = v949;
        v151 = v951 - v950;
        v152 = (v951 - v950) >> 2;
        if (v152)
        {
          v153 = ((v151 << 30) - 0x100000000) >> 32;
          v154 = v954;
          v155 = v952;
          v156 = v954 + 4 * v153;
          v157 = *v156;
          v158 = v950 + 4 * v153;
          if (v152 >= 2 && v157 == *v158 - 1)
          {
            v162 = (v151 >> 2) & 0x7FFFFFFF;
            v161 = v162 - 1;
            v163 = 4 * v162;
            v164 = v950 - 8;
            v160 = v949;
            do
            {
              v165 = v161;
              *v156 = 0;
              v160 -= v155[v153] * (*v158 - 1);
              v949 = v160;
              --v161;
              v156 = &v154[v163 - 8];
              v157 = *v156;
              v154 -= 4;
              if (v165 < 2)
              {
                break;
              }

              v158 = &v164[v163];
              v166 = *&v164[4 * v162] - 1;
              v164 -= 4;
              v153 = v161;
            }

            while (v157 == v166);
            v156 = &v154[4 * v162 - 4];
          }

          else
          {
            v160 = v949;
            v161 = ((v151 << 30) - 0x100000000) >> 32;
          }

          *v156 = v157 + 1;
          v949 = v155[v161] + v160;
        }

        v167 = v944 - v943;
        v168 = (v944 - v943) >> 2;
        if (v168)
        {
          v169 = ((v167 << 30) - 0x100000000) >> 32;
          v170 = __p;
          v171 = v945;
          v172 = __p + 4 * v169;
          v173 = *v172;
          v174 = v943 + 4 * v169;
          if (v168 >= 2 && v173 == *v174 - 1)
          {
            v178 = (v167 >> 2) & 0x7FFFFFFF;
            v177 = v178 - 1;
            v179 = 4 * v178;
            v180 = v943 - 8;
            v176 = v149;
            do
            {
              v181 = v177;
              *v172 = 0;
              v176 -= v171[v169] * (*v174 - 1);
              v942 = v176;
              --v177;
              v172 = &v170[v179 - 8];
              v173 = *v172;
              v170 -= 4;
              if (v181 < 2)
              {
                break;
              }

              v174 = &v180[v179];
              v182 = *&v180[4 * v178] - 1;
              v180 -= 4;
              v169 = v177;
            }

            while (v173 == v182);
            v172 = &v170[4 * v178 - 4];
          }

          else
          {
            v176 = v149;
            v177 = ((v167 << 30) - 0x100000000) >> 32;
          }

          *v172 = v173 + 1;
          v942 = v171[v177] + v176;
        }

        v183 = (v888 + 4 * v149);
        if (v147)
        {
          v184 = 0;
          v185 = 0;
          do
          {
            v183[v184] = v185++;
            v184 += v930;
          }

          while (v147 != v184);
        }

        v968 = v902 + 8 * v150;
        v969 = v916;
        if (v145 < 129)
        {
          v188 = 0;
LABEL_139:
        }

        else
        {
          v186 = v145;
          while (1)
          {
            v187 = operator new(4 * v186, v148);
            if (v187)
            {
              break;
            }

            v188 = v186 >> 1;
            v64 = v186 > 1;
            v186 >>= 1;
            if (!v64)
            {
              goto LABEL_139;
            }
          }

          v189 = v187;
          operator delete(v189);
        }

        ++v146;
      }

      while (v874 > v146);
      goto LABEL_659;
    case 5:
      v562 = *(this + 8);
      if (v562 < 0)
      {
        v562 += (v1[1] - *v1) >> 2;
      }

      v563 = v1[6];
      v564 = mlx::core::array::shape(this, v562);
      v565 = *this;
      v966 = 0;
      v967 = 0;
      v965 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v965, *v565, v565[1], (v565[1] - *v565) >> 2);
      v566 = &v965[4 * v562];
      v567 = v966 - (v566 + 4);
      if (v966 != v566 + 4)
      {
        memmove(&v965[4 * v562], v566 + 4, v966 - (v566 + 4));
      }

      v966 = &v566[v567];
      v568 = *this;
      v963 = 0;
      v964 = 0;
      v962 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v962, *(v568 + 24), *(v568 + 32), (*(v568 + 32) - *(v568 + 24)) >> 3);
      v569 = v562;
      v570 = &v962[8 * v562];
      v571 = v963 - (v570 + 8);
      if (v963 != v570 + 8)
      {
        memmove(&v962[8 * v562], v570 + 8, v963 - (v570 + 8));
      }

      v963 = &v570[v571];
      v572 = *(this + 2);
      v960 = 0;
      v961 = 0;
      v959 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v959, *v572, v572[1], (v572[1] - *v572) >> 2);
      v573 = 4 * v562;
      v574 = &v959[v573];
      v575 = v960 - &v959[v573 + 4];
      if (v960 != &v959[v573 + 4])
      {
        memmove(&v959[v573], &v959[v573 + 4], v960 - (v574 + 4));
      }

      v960 = &v574[v575];
      v576 = *(this + 2);
      v957 = 0;
      v958 = 0;
      v956 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v956, *(v576 + 24), *(v576 + 32), (*(v576 + 32) - *(v576 + 24)) >> 3);
      v577 = &v956[8 * v569];
      v578 = v957 - (v577 + 8);
      if (v957 != v577 + 8)
      {
        memmove(&v956[8 * v569], v577 + 8, v957 - (v577 + 8));
      }

      v957 = &v577[v578];
      v923 = *(*(*this + 24) + 8 * v569);
      v937 = *(*(*(this + 2) + 24) + 8 * v569);
      v579 = mlx::core::array::shape(this, v569);
      mlx::core::ContiguousIterator::ContiguousIterator(&v949, &v965, &v962, (v966 - v965) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v942, &v959, &v956, (v960 - v959) >> 2);
      if (v563 < v564)
      {
        goto LABEL_659;
      }

      v580 = 0;
      v895 = *(*(this + 2) + 152);
      v909 = *(*this + 152);
      v581 = v937 * v579;
      v582 = MEMORY[0x277D826F0];
      v881 = v563 / v564;
      do
      {
        v583 = v942;
        v584 = v949;
        v585 = v951 - v950;
        v586 = (v951 - v950) >> 2;
        if (v586)
        {
          v587 = ((v585 << 30) - 0x100000000) >> 32;
          v588 = v954;
          v589 = v952;
          v590 = v954 + 4 * v587;
          v591 = *v590;
          v592 = v950 + 4 * v587;
          if (v586 >= 2 && v591 == *v592 - 1)
          {
            v596 = (v585 >> 2) & 0x7FFFFFFF;
            v595 = v596 - 1;
            v597 = 4 * v596;
            v598 = v950 - 8;
            v594 = v949;
            do
            {
              v599 = v595;
              *v590 = 0;
              v594 -= v589[v587] * (*v592 - 1);
              v949 = v594;
              --v595;
              v590 = &v588[v597 - 8];
              v591 = *v590;
              v588 -= 4;
              if (v599 < 2)
              {
                break;
              }

              v592 = &v598[v597];
              v600 = *&v598[4 * v596] - 1;
              v598 -= 4;
              v587 = v595;
            }

            while (v591 == v600);
            v590 = &v588[4 * v596 - 4];
          }

          else
          {
            v594 = v949;
            v595 = ((v585 << 30) - 0x100000000) >> 32;
          }

          *v590 = v591 + 1;
          v949 = v589[v595] + v594;
        }

        v601 = v944 - v943;
        v602 = (v944 - v943) >> 2;
        if (v602)
        {
          v603 = ((v601 << 30) - 0x100000000) >> 32;
          v604 = __p;
          v605 = v945;
          v606 = __p + 4 * v603;
          v607 = *v606;
          v608 = v943 + 4 * v603;
          if (v602 >= 2 && v607 == *v608 - 1)
          {
            v612 = (v601 >> 2) & 0x7FFFFFFF;
            v611 = v612 - 1;
            v613 = 4 * v612;
            v614 = v943 - 8;
            v610 = v583;
            do
            {
              v615 = v611;
              *v606 = 0;
              v610 -= v605[v603] * (*v608 - 1);
              v942 = v610;
              --v611;
              v606 = &v604[v613 - 8];
              v607 = *v606;
              v604 -= 4;
              if (v615 < 2)
              {
                break;
              }

              v608 = &v614[v613];
              v616 = *&v614[4 * v612] - 1;
              v614 -= 4;
              v603 = v611;
            }

            while (v607 == v616);
            v606 = &v604[4 * v612 - 4];
          }

          else
          {
            v610 = v583;
            v611 = ((v601 << 30) - 0x100000000) >> 32;
          }

          *v606 = v607 + 1;
          v942 = v605[v611] + v610;
        }

        v617 = (v895 + 4 * v583);
        if (v581)
        {
          v618 = 0;
          v619 = 0;
          do
          {
            v617[v618] = v619++;
            v618 += v937;
          }

          while (v581 != v618);
        }

        v968 = v909 + v584;
        v969 = v923;
        if (v579 < 129)
        {
          v622 = 0;
LABEL_468:
        }

        else
        {
          v620 = v579;
          while (1)
          {
            v621 = operator new(4 * v620, v582);
            if (v621)
            {
              break;
            }

            v622 = v620 >> 1;
            v64 = v620 > 1;
            v620 >>= 1;
            if (!v64)
            {
              goto LABEL_468;
            }
          }

          v623 = v621;
          operator delete(v623);
        }

        ++v580;
      }

      while (v881 > v580);
      goto LABEL_659;
    case 6:
      v686 = *(this + 8);
      if (v686 < 0)
      {
        v686 += (v1[1] - *v1) >> 2;
      }

      v687 = v1[6];
      v688 = mlx::core::array::shape(this, v686);
      v689 = *this;
      v966 = 0;
      v967 = 0;
      v965 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v965, *v689, v689[1], (v689[1] - *v689) >> 2);
      v690 = &v965[4 * v686];
      v691 = v966 - (v690 + 4);
      if (v966 != v690 + 4)
      {
        memmove(&v965[4 * v686], v690 + 4, v966 - (v690 + 4));
      }

      v966 = &v690[v691];
      v692 = *this;
      v963 = 0;
      v964 = 0;
      v962 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v962, *(v692 + 24), *(v692 + 32), (*(v692 + 32) - *(v692 + 24)) >> 3);
      v693 = v686;
      v694 = &v962[8 * v686];
      v695 = v963 - (v694 + 8);
      if (v963 != v694 + 8)
      {
        memmove(&v962[8 * v686], v694 + 8, v963 - (v694 + 8));
      }

      v963 = &v694[v695];
      v696 = *(this + 2);
      v960 = 0;
      v961 = 0;
      v959 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v959, *v696, v696[1], (v696[1] - *v696) >> 2);
      v697 = 4 * v686;
      v698 = &v959[v697];
      v699 = v960 - &v959[v697 + 4];
      if (v960 != &v959[v697 + 4])
      {
        memmove(&v959[v697], &v959[v697 + 4], v960 - (v698 + 4));
      }

      v960 = &v698[v699];
      v700 = *(this + 2);
      v957 = 0;
      v958 = 0;
      v956 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v956, *(v700 + 24), *(v700 + 32), (*(v700 + 32) - *(v700 + 24)) >> 3);
      v701 = &v956[8 * v693];
      v702 = v957 - (v701 + 8);
      if (v957 != v701 + 8)
      {
        memmove(&v956[8 * v693], v701 + 8, v957 - (v701 + 8));
      }

      v957 = &v701[v702];
      v925 = *(*(*this + 24) + 8 * v693);
      v939 = *(*(*(this + 2) + 24) + 8 * v693);
      v703 = mlx::core::array::shape(this, v693);
      mlx::core::ContiguousIterator::ContiguousIterator(&v949, &v965, &v962, (v966 - v965) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v942, &v959, &v956, (v960 - v959) >> 2);
      if (v687 < v688)
      {
        goto LABEL_659;
      }

      v704 = 0;
      v897 = *(*(this + 2) + 152);
      v911 = *(*this + 152);
      v705 = v939 * v703;
      v706 = MEMORY[0x277D826F0];
      v883 = v687 / v688;
      do
      {
        v707 = v942;
        v708 = v949;
        v709 = v951 - v950;
        v710 = (v951 - v950) >> 2;
        if (v710)
        {
          v711 = ((v709 << 30) - 0x100000000) >> 32;
          v712 = v954;
          v713 = v952;
          v714 = v954 + 4 * v711;
          v715 = *v714;
          v716 = v950 + 4 * v711;
          if (v710 >= 2 && v715 == *v716 - 1)
          {
            v720 = (v709 >> 2) & 0x7FFFFFFF;
            v719 = v720 - 1;
            v721 = 4 * v720;
            v722 = v950 - 8;
            v718 = v949;
            do
            {
              v723 = v719;
              *v714 = 0;
              v718 -= v713[v711] * (*v716 - 1);
              v949 = v718;
              --v719;
              v714 = &v712[v721 - 8];
              v715 = *v714;
              v712 -= 4;
              if (v723 < 2)
              {
                break;
              }

              v716 = &v722[v721];
              v724 = *&v722[4 * v720] - 1;
              v722 -= 4;
              v711 = v719;
            }

            while (v715 == v724);
            v714 = &v712[4 * v720 - 4];
          }

          else
          {
            v718 = v949;
            v719 = ((v709 << 30) - 0x100000000) >> 32;
          }

          *v714 = v715 + 1;
          v949 = v713[v719] + v718;
        }

        v725 = v944 - v943;
        v726 = (v944 - v943) >> 2;
        if (v726)
        {
          v727 = ((v725 << 30) - 0x100000000) >> 32;
          v728 = __p;
          v729 = v945;
          v730 = __p + 4 * v727;
          v731 = *v730;
          v732 = v943 + 4 * v727;
          if (v726 >= 2 && v731 == *v732 - 1)
          {
            v736 = (v725 >> 2) & 0x7FFFFFFF;
            v735 = v736 - 1;
            v737 = 4 * v736;
            v738 = v943 - 8;
            v734 = v707;
            do
            {
              v739 = v735;
              *v730 = 0;
              v734 -= v729[v727] * (*v732 - 1);
              v942 = v734;
              --v735;
              v730 = &v728[v737 - 8];
              v731 = *v730;
              v728 -= 4;
              if (v739 < 2)
              {
                break;
              }

              v732 = &v738[v737];
              v740 = *&v738[4 * v736] - 1;
              v738 -= 4;
              v727 = v735;
            }

            while (v731 == v740);
            v730 = &v728[4 * v736 - 4];
          }

          else
          {
            v734 = v707;
            v735 = ((v725 << 30) - 0x100000000) >> 32;
          }

          *v730 = v731 + 1;
          v942 = v729[v735] + v734;
        }

        v741 = (v897 + 4 * v707);
        if (v705)
        {
          v742 = 0;
          v743 = 0;
          do
          {
            v741[v742] = v743++;
            v742 += v939;
          }

          while (v705 != v742);
        }

        v968 = v911 + 2 * v708;
        v969 = v925;
        if (v703 < 129)
        {
          v746 = 0;
LABEL_562:
        }

        else
        {
          v744 = v703;
          while (1)
          {
            v745 = operator new(4 * v744, v706);
            if (v745)
            {
              break;
            }

            v746 = v744 >> 1;
            v64 = v744 > 1;
            v744 >>= 1;
            if (!v64)
            {
              goto LABEL_562;
            }
          }

          v747 = v745;
          operator delete(v747);
        }

        ++v704;
      }

      while (v883 > v704);
      goto LABEL_659;
    case 7:
      v438 = *(this + 8);
      if (v438 < 0)
      {
        v438 += (v1[1] - *v1) >> 2;
      }

      v439 = v1[6];
      v440 = mlx::core::array::shape(this, v438);
      v441 = *this;
      v966 = 0;
      v967 = 0;
      v965 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v965, *v441, v441[1], (v441[1] - *v441) >> 2);
      v442 = &v965[4 * v438];
      v443 = v966 - (v442 + 4);
      if (v966 != v442 + 4)
      {
        memmove(&v965[4 * v438], v442 + 4, v966 - (v442 + 4));
      }

      v966 = &v442[v443];
      v444 = *this;
      v963 = 0;
      v964 = 0;
      v962 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v962, *(v444 + 24), *(v444 + 32), (*(v444 + 32) - *(v444 + 24)) >> 3);
      v445 = v438;
      v446 = &v962[8 * v438];
      v447 = v963 - (v446 + 8);
      if (v963 != v446 + 8)
      {
        memmove(&v962[8 * v438], v446 + 8, v963 - (v446 + 8));
      }

      v963 = &v446[v447];
      v448 = *(this + 2);
      v960 = 0;
      v961 = 0;
      v959 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v959, *v448, v448[1], (v448[1] - *v448) >> 2);
      v449 = 4 * v438;
      v450 = &v959[v449];
      v451 = v960 - &v959[v449 + 4];
      if (v960 != &v959[v449 + 4])
      {
        memmove(&v959[v449], &v959[v449 + 4], v960 - (v450 + 4));
      }

      v960 = &v450[v451];
      v452 = *(this + 2);
      v957 = 0;
      v958 = 0;
      v956 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v956, *(v452 + 24), *(v452 + 32), (*(v452 + 32) - *(v452 + 24)) >> 3);
      v453 = &v956[8 * v445];
      v454 = v957 - (v453 + 8);
      if (v957 != v453 + 8)
      {
        memmove(&v956[8 * v445], v453 + 8, v957 - (v453 + 8));
      }

      v957 = &v453[v454];
      v921 = *(*(*this + 24) + 8 * v445);
      v935 = *(*(*(this + 2) + 24) + 8 * v445);
      v455 = mlx::core::array::shape(this, v445);
      mlx::core::ContiguousIterator::ContiguousIterator(&v949, &v965, &v962, (v966 - v965) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v942, &v959, &v956, (v960 - v959) >> 2);
      if (v439 < v440)
      {
        goto LABEL_659;
      }

      v456 = 0;
      v893 = *(*(this + 2) + 152);
      v907 = *(*this + 152);
      v457 = v935 * v455;
      v458 = MEMORY[0x277D826F0];
      v879 = v439 / v440;
      do
      {
        v459 = v942;
        v460 = v949;
        v461 = v951 - v950;
        v462 = (v951 - v950) >> 2;
        if (v462)
        {
          v463 = ((v461 << 30) - 0x100000000) >> 32;
          v464 = v954;
          v465 = v952;
          v466 = v954 + 4 * v463;
          v467 = *v466;
          v468 = v950 + 4 * v463;
          if (v462 >= 2 && v467 == *v468 - 1)
          {
            v472 = (v461 >> 2) & 0x7FFFFFFF;
            v471 = v472 - 1;
            v473 = 4 * v472;
            v474 = v950 - 8;
            v470 = v949;
            do
            {
              v475 = v471;
              *v466 = 0;
              v470 -= v465[v463] * (*v468 - 1);
              v949 = v470;
              --v471;
              v466 = &v464[v473 - 8];
              v467 = *v466;
              v464 -= 4;
              if (v475 < 2)
              {
                break;
              }

              v468 = &v474[v473];
              v476 = *&v474[4 * v472] - 1;
              v474 -= 4;
              v463 = v471;
            }

            while (v467 == v476);
            v466 = &v464[4 * v472 - 4];
          }

          else
          {
            v470 = v949;
            v471 = ((v461 << 30) - 0x100000000) >> 32;
          }

          *v466 = v467 + 1;
          v949 = v465[v471] + v470;
        }

        v477 = v944 - v943;
        v478 = (v944 - v943) >> 2;
        if (v478)
        {
          v479 = ((v477 << 30) - 0x100000000) >> 32;
          v480 = __p;
          v481 = v945;
          v482 = __p + 4 * v479;
          v483 = *v482;
          v484 = v943 + 4 * v479;
          if (v478 >= 2 && v483 == *v484 - 1)
          {
            v488 = (v477 >> 2) & 0x7FFFFFFF;
            v487 = v488 - 1;
            v489 = 4 * v488;
            v490 = v943 - 8;
            v486 = v459;
            do
            {
              v491 = v487;
              *v482 = 0;
              v486 -= v481[v479] * (*v484 - 1);
              v942 = v486;
              --v487;
              v482 = &v480[v489 - 8];
              v483 = *v482;
              v480 -= 4;
              if (v491 < 2)
              {
                break;
              }

              v484 = &v490[v489];
              v492 = *&v490[4 * v488] - 1;
              v490 -= 4;
              v479 = v487;
            }

            while (v483 == v492);
            v482 = &v480[4 * v488 - 4];
          }

          else
          {
            v486 = v459;
            v487 = ((v477 << 30) - 0x100000000) >> 32;
          }

          *v482 = v483 + 1;
          v942 = v481[v487] + v486;
        }

        v493 = (v893 + 4 * v459);
        if (v457)
        {
          v494 = 0;
          v495 = 0;
          do
          {
            v493[v494] = v495++;
            v494 += v935;
          }

          while (v457 != v494);
        }

        v968 = v907 + 4 * v460;
        v969 = v921;
        if (v455 < 129)
        {
          v498 = 0;
LABEL_374:
        }

        else
        {
          v496 = v455;
          while (1)
          {
            v497 = operator new(4 * v496, v458);
            if (v497)
            {
              break;
            }

            v498 = v496 >> 1;
            v64 = v496 > 1;
            v496 >>= 1;
            if (!v64)
            {
              goto LABEL_374;
            }
          }

          v499 = v497;
          operator delete(v499);
        }

        ++v456;
      }

      while (v879 > v456);
      goto LABEL_659;
    case 8:
      v810 = *(this + 8);
      if (v810 < 0)
      {
        v810 += (v1[1] - *v1) >> 2;
      }

      v811 = v1[6];
      v812 = mlx::core::array::shape(this, v810);
      v813 = *this;
      v966 = 0;
      v967 = 0;
      v965 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v965, *v813, v813[1], (v813[1] - *v813) >> 2);
      v814 = &v965[4 * v810];
      v815 = v966 - (v814 + 4);
      if (v966 != v814 + 4)
      {
        memmove(&v965[4 * v810], v814 + 4, v966 - (v814 + 4));
      }

      v966 = &v814[v815];
      v816 = *this;
      v963 = 0;
      v964 = 0;
      v962 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v962, *(v816 + 24), *(v816 + 32), (*(v816 + 32) - *(v816 + 24)) >> 3);
      v817 = v810;
      v818 = &v962[8 * v810];
      v819 = v963 - (v818 + 8);
      if (v963 != v818 + 8)
      {
        memmove(&v962[8 * v810], v818 + 8, v963 - (v818 + 8));
      }

      v963 = &v818[v819];
      v820 = *(this + 2);
      v960 = 0;
      v961 = 0;
      v959 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v959, *v820, v820[1], (v820[1] - *v820) >> 2);
      v821 = 4 * v810;
      v822 = &v959[v821];
      v823 = v960 - &v959[v821 + 4];
      if (v960 != &v959[v821 + 4])
      {
        memmove(&v959[v821], &v959[v821 + 4], v960 - (v822 + 4));
      }

      v960 = &v822[v823];
      v824 = *(this + 2);
      v957 = 0;
      v958 = 0;
      v956 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v956, *(v824 + 24), *(v824 + 32), (*(v824 + 32) - *(v824 + 24)) >> 3);
      v825 = &v956[8 * v817];
      v826 = v957 - (v825 + 8);
      if (v957 != v825 + 8)
      {
        memmove(&v956[8 * v817], v825 + 8, v957 - (v825 + 8));
      }

      v957 = &v825[v826];
      v927 = *(*(*this + 24) + 8 * v817);
      v941 = *(*(*(this + 2) + 24) + 8 * v817);
      v827 = mlx::core::array::shape(this, v817);
      mlx::core::ContiguousIterator::ContiguousIterator(&v949, &v965, &v962, (v966 - v965) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v942, &v959, &v956, (v960 - v959) >> 2);
      if (v811 < v812)
      {
        goto LABEL_659;
      }

      v828 = 0;
      v899 = *(*(this + 2) + 152);
      v913 = *(*this + 152);
      v829 = v941 * v827;
      v830 = MEMORY[0x277D826F0];
      v885 = v811 / v812;
      do
      {
        v831 = v942;
        v832 = v949;
        v833 = v951 - v950;
        v834 = (v951 - v950) >> 2;
        if (v834)
        {
          v835 = ((v833 << 30) - 0x100000000) >> 32;
          v836 = v954;
          v837 = v952;
          v838 = v954 + 4 * v835;
          v839 = *v838;
          v840 = v950 + 4 * v835;
          if (v834 >= 2 && v839 == *v840 - 1)
          {
            v844 = (v833 >> 2) & 0x7FFFFFFF;
            v843 = v844 - 1;
            v845 = 4 * v844;
            v846 = v950 - 8;
            v842 = v949;
            do
            {
              v847 = v843;
              *v838 = 0;
              v842 -= v837[v835] * (*v840 - 1);
              v949 = v842;
              --v843;
              v838 = &v836[v845 - 8];
              v839 = *v838;
              v836 -= 4;
              if (v847 < 2)
              {
                break;
              }

              v840 = &v846[v845];
              v848 = *&v846[4 * v844] - 1;
              v846 -= 4;
              v835 = v843;
            }

            while (v839 == v848);
            v838 = &v836[4 * v844 - 4];
          }

          else
          {
            v842 = v949;
            v843 = ((v833 << 30) - 0x100000000) >> 32;
          }

          *v838 = v839 + 1;
          v949 = v837[v843] + v842;
        }

        v849 = v944 - v943;
        v850 = (v944 - v943) >> 2;
        if (v850)
        {
          v851 = ((v849 << 30) - 0x100000000) >> 32;
          v852 = __p;
          v853 = v945;
          v854 = __p + 4 * v851;
          v855 = *v854;
          v856 = v943 + 4 * v851;
          if (v850 >= 2 && v855 == *v856 - 1)
          {
            v860 = (v849 >> 2) & 0x7FFFFFFF;
            v859 = v860 - 1;
            v861 = 4 * v860;
            v862 = v943 - 8;
            v858 = v831;
            do
            {
              v863 = v859;
              *v854 = 0;
              v858 -= v853[v851] * (*v856 - 1);
              v942 = v858;
              --v859;
              v854 = &v852[v861 - 8];
              v855 = *v854;
              v852 -= 4;
              if (v863 < 2)
              {
                break;
              }

              v856 = &v862[v861];
              v864 = *&v862[4 * v860] - 1;
              v862 -= 4;
              v851 = v859;
            }

            while (v855 == v864);
            v854 = &v852[4 * v860 - 4];
          }

          else
          {
            v858 = v831;
            v859 = ((v849 << 30) - 0x100000000) >> 32;
          }

          *v854 = v855 + 1;
          v942 = v853[v859] + v858;
        }

        v865 = (v899 + 4 * v831);
        if (v829)
        {
          v866 = 0;
          v867 = 0;
          do
          {
            v865[v866] = v867++;
            v866 += v941;
          }

          while (v829 != v866);
        }

        v968 = v913 + 8 * v832;
        v969 = v927;
        if (v827 < 129)
        {
          v870 = 0;
LABEL_656:
        }

        else
        {
          v868 = v827;
          while (1)
          {
            v869 = operator new(4 * v868, v830);
            if (v869)
            {
              break;
            }

            v870 = v868 >> 1;
            v64 = v868 > 1;
            v868 >>= 1;
            if (!v64)
            {
              goto LABEL_656;
            }
          }

          v871 = v869;
          operator delete(v871);
        }

        ++v828;
      }

      while (v885 > v828);
      goto LABEL_659;
    case 9:
      v252 = *(this + 8);
      if (v252 < 0)
      {
        v252 += (v1[1] - *v1) >> 2;
      }

      v253 = v1[6];
      v254 = mlx::core::array::shape(this, v252);
      v255 = *this;
      v966 = 0;
      v967 = 0;
      v965 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v965, *v255, v255[1], (v255[1] - *v255) >> 2);
      v256 = &v965[4 * v252];
      v257 = v966 - (v256 + 4);
      if (v966 != v256 + 4)
      {
        memmove(&v965[4 * v252], v256 + 4, v966 - (v256 + 4));
      }

      v966 = &v256[v257];
      v258 = *this;
      v963 = 0;
      v964 = 0;
      v962 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v962, *(v258 + 24), *(v258 + 32), (*(v258 + 32) - *(v258 + 24)) >> 3);
      v259 = v252;
      v260 = &v962[8 * v252];
      v261 = v963 - (v260 + 8);
      if (v963 != v260 + 8)
      {
        memmove(&v962[8 * v252], v260 + 8, v963 - (v260 + 8));
      }

      v963 = &v260[v261];
      v262 = *(this + 2);
      v960 = 0;
      v961 = 0;
      v959 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v959, *v262, v262[1], (v262[1] - *v262) >> 2);
      v263 = 4 * v252;
      v264 = &v959[v263];
      v265 = v960 - &v959[v263 + 4];
      if (v960 != &v959[v263 + 4])
      {
        memmove(&v959[v263], &v959[v263 + 4], v960 - (v264 + 4));
      }

      v960 = &v264[v265];
      v266 = *(this + 2);
      v957 = 0;
      v958 = 0;
      v956 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v956, *(v266 + 24), *(v266 + 32), (*(v266 + 32) - *(v266 + 24)) >> 3);
      v267 = &v956[8 * v259];
      v268 = v957 - (v267 + 8);
      if (v957 != v267 + 8)
      {
        memmove(&v956[8 * v259], v267 + 8, v957 - (v267 + 8));
      }

      v957 = &v267[v268];
      v918 = *(*(*this + 24) + 8 * v259);
      v932 = *(*(*(this + 2) + 24) + 8 * v259);
      v269 = mlx::core::array::shape(this, v259);
      mlx::core::ContiguousIterator::ContiguousIterator(&v949, &v965, &v962, (v966 - v965) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v942, &v959, &v956, (v960 - v959) >> 2);
      if (v253 < v254)
      {
        goto LABEL_659;
      }

      v270 = 0;
      v890 = *(*(this + 2) + 152);
      v904 = *(*this + 152);
      v271 = v932 * v269;
      v272 = MEMORY[0x277D826F0];
      v876 = v253 / v254;
      do
      {
        v273 = v942;
        v274 = v949;
        v275 = v951 - v950;
        v276 = (v951 - v950) >> 2;
        if (v276)
        {
          v277 = ((v275 << 30) - 0x100000000) >> 32;
          v278 = v954;
          v279 = v952;
          v280 = v954 + 4 * v277;
          v281 = *v280;
          v282 = v950 + 4 * v277;
          if (v276 >= 2 && v281 == *v282 - 1)
          {
            v286 = (v275 >> 2) & 0x7FFFFFFF;
            v285 = v286 - 1;
            v287 = 4 * v286;
            v288 = v950 - 8;
            v284 = v949;
            do
            {
              v289 = v285;
              *v280 = 0;
              v284 -= v279[v277] * (*v282 - 1);
              v949 = v284;
              --v285;
              v280 = &v278[v287 - 8];
              v281 = *v280;
              v278 -= 4;
              if (v289 < 2)
              {
                break;
              }

              v282 = &v288[v287];
              v290 = *&v288[4 * v286] - 1;
              v288 -= 4;
              v277 = v285;
            }

            while (v281 == v290);
            v280 = &v278[4 * v286 - 4];
          }

          else
          {
            v284 = v949;
            v285 = ((v275 << 30) - 0x100000000) >> 32;
          }

          *v280 = v281 + 1;
          v949 = v279[v285] + v284;
        }

        v291 = v944 - v943;
        v292 = (v944 - v943) >> 2;
        if (v292)
        {
          v293 = ((v291 << 30) - 0x100000000) >> 32;
          v294 = __p;
          v295 = v945;
          v296 = __p + 4 * v293;
          v297 = *v296;
          v298 = v943 + 4 * v293;
          if (v292 >= 2 && v297 == *v298 - 1)
          {
            v302 = (v291 >> 2) & 0x7FFFFFFF;
            v301 = v302 - 1;
            v303 = 4 * v302;
            v304 = v943 - 8;
            v300 = v273;
            do
            {
              v305 = v301;
              *v296 = 0;
              v300 -= v295[v293] * (*v298 - 1);
              v942 = v300;
              --v301;
              v296 = &v294[v303 - 8];
              v297 = *v296;
              v294 -= 4;
              if (v305 < 2)
              {
                break;
              }

              v298 = &v304[v303];
              v306 = *&v304[4 * v302] - 1;
              v304 -= 4;
              v293 = v301;
            }

            while (v297 == v306);
            v296 = &v294[4 * v302 - 4];
          }

          else
          {
            v300 = v273;
            v301 = ((v291 << 30) - 0x100000000) >> 32;
          }

          *v296 = v297 + 1;
          v942 = v295[v301] + v300;
        }

        v307 = (v890 + 4 * v273);
        if (v271)
        {
          v308 = 0;
          v309 = 0;
          do
          {
            v307[v308] = v309++;
            v308 += v932;
          }

          while (v271 != v308);
        }

        v968 = v904 + 2 * v274;
        v969 = v918;
        if (v269 < 129)
        {
          v312 = 0;
LABEL_233:
        }

        else
        {
          v310 = v269;
          while (1)
          {
            v311 = operator new(4 * v310, v272);
            if (v311)
            {
              break;
            }

            v312 = v310 >> 1;
            v64 = v310 > 1;
            v310 >>= 1;
            if (!v64)
            {
              goto LABEL_233;
            }
          }

          v313 = v311;
          operator delete(v313);
        }

        ++v270;
      }

      while (v876 > v270);
      goto LABEL_659;
    case 0xA:
      v748 = *(this + 8);
      if (v748 < 0)
      {
        v748 += (v1[1] - *v1) >> 2;
      }

      v749 = v1[6];
      v750 = mlx::core::array::shape(this, v748);
      v751 = *this;
      v966 = 0;
      v967 = 0;
      v965 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v965, *v751, v751[1], (v751[1] - *v751) >> 2);
      v752 = &v965[4 * v748];
      v753 = v966 - (v752 + 4);
      if (v966 != v752 + 4)
      {
        memmove(&v965[4 * v748], v752 + 4, v966 - (v752 + 4));
      }

      v966 = &v752[v753];
      v754 = *this;
      v963 = 0;
      v964 = 0;
      v962 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v962, *(v754 + 24), *(v754 + 32), (*(v754 + 32) - *(v754 + 24)) >> 3);
      v755 = v748;
      v756 = &v962[8 * v748];
      v757 = v963 - (v756 + 8);
      if (v963 != v756 + 8)
      {
        memmove(&v962[8 * v748], v756 + 8, v963 - (v756 + 8));
      }

      v963 = &v756[v757];
      v758 = *(this + 2);
      v960 = 0;
      v961 = 0;
      v959 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v959, *v758, v758[1], (v758[1] - *v758) >> 2);
      v759 = 4 * v748;
      v760 = &v959[v759];
      v761 = v960 - &v959[v759 + 4];
      if (v960 != &v959[v759 + 4])
      {
        memmove(&v959[v759], &v959[v759 + 4], v960 - (v760 + 4));
      }

      v960 = &v760[v761];
      v762 = *(this + 2);
      v957 = 0;
      v958 = 0;
      v956 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v956, *(v762 + 24), *(v762 + 32), (*(v762 + 32) - *(v762 + 24)) >> 3);
      v763 = &v956[8 * v755];
      v764 = v957 - (v763 + 8);
      if (v957 != v763 + 8)
      {
        memmove(&v956[8 * v755], v763 + 8, v957 - (v763 + 8));
      }

      v957 = &v763[v764];
      v926 = *(*(*this + 24) + 8 * v755);
      v940 = *(*(*(this + 2) + 24) + 8 * v755);
      v765 = mlx::core::array::shape(this, v755);
      mlx::core::ContiguousIterator::ContiguousIterator(&v949, &v965, &v962, (v966 - v965) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v942, &v959, &v956, (v960 - v959) >> 2);
      if (v749 < v750)
      {
        goto LABEL_659;
      }

      v766 = 0;
      v898 = *(*(this + 2) + 152);
      v912 = *(*this + 152);
      v767 = v940 * v765;
      v768 = MEMORY[0x277D826F0];
      v884 = v749 / v750;
      do
      {
        v769 = v942;
        v770 = v949;
        v771 = v951 - v950;
        v772 = (v951 - v950) >> 2;
        if (v772)
        {
          v773 = ((v771 << 30) - 0x100000000) >> 32;
          v774 = v954;
          v775 = v952;
          v776 = v954 + 4 * v773;
          v777 = *v776;
          v778 = v950 + 4 * v773;
          if (v772 >= 2 && v777 == *v778 - 1)
          {
            v782 = (v771 >> 2) & 0x7FFFFFFF;
            v781 = v782 - 1;
            v783 = 4 * v782;
            v784 = v950 - 8;
            v780 = v949;
            do
            {
              v785 = v781;
              *v776 = 0;
              v780 -= v775[v773] * (*v778 - 1);
              v949 = v780;
              --v781;
              v776 = &v774[v783 - 8];
              v777 = *v776;
              v774 -= 4;
              if (v785 < 2)
              {
                break;
              }

              v778 = &v784[v783];
              v786 = *&v784[4 * v782] - 1;
              v784 -= 4;
              v773 = v781;
            }

            while (v777 == v786);
            v776 = &v774[4 * v782 - 4];
          }

          else
          {
            v780 = v949;
            v781 = ((v771 << 30) - 0x100000000) >> 32;
          }

          *v776 = v777 + 1;
          v949 = v775[v781] + v780;
        }

        v787 = v944 - v943;
        v788 = (v944 - v943) >> 2;
        if (v788)
        {
          v789 = ((v787 << 30) - 0x100000000) >> 32;
          v790 = __p;
          v791 = v945;
          v792 = __p + 4 * v789;
          v793 = *v792;
          v794 = v943 + 4 * v789;
          if (v788 >= 2 && v793 == *v794 - 1)
          {
            v798 = (v787 >> 2) & 0x7FFFFFFF;
            v797 = v798 - 1;
            v799 = 4 * v798;
            v800 = v943 - 8;
            v796 = v769;
            do
            {
              v801 = v797;
              *v792 = 0;
              v796 -= v791[v789] * (*v794 - 1);
              v942 = v796;
              --v797;
              v792 = &v790[v799 - 8];
              v793 = *v792;
              v790 -= 4;
              if (v801 < 2)
              {
                break;
              }

              v794 = &v800[v799];
              v802 = *&v800[4 * v798] - 1;
              v800 -= 4;
              v789 = v797;
            }

            while (v793 == v802);
            v792 = &v790[4 * v798 - 4];
          }

          else
          {
            v796 = v769;
            v797 = ((v787 << 30) - 0x100000000) >> 32;
          }

          *v792 = v793 + 1;
          v942 = v791[v797] + v796;
        }

        v803 = (v898 + 4 * v769);
        if (v767)
        {
          v804 = 0;
          v805 = 0;
          do
          {
            v803[v804] = v805++;
            v804 += v940;
          }

          while (v767 != v804);
        }

        v968 = v912 + 4 * v770;
        v969 = v926;
        if (v765 < 129)
        {
          v808 = 0;
LABEL_609:
        }

        else
        {
          v806 = v765;
          while (1)
          {
            v807 = operator new(4 * v806, v768);
            if (v807)
            {
              break;
            }

            v808 = v806 >> 1;
            v64 = v806 > 1;
            v806 >>= 1;
            if (!v64)
            {
              goto LABEL_609;
            }
          }

          v809 = v807;
          operator delete(v809);
        }

        ++v766;
      }

      while (v884 > v766);
      goto LABEL_659;
    case 0xB:
      v66 = *(this + 8);
      if (v66 < 0)
      {
        v66 += (v1[1] - *v1) >> 2;
      }

      v67 = v1[6];
      v68 = mlx::core::array::shape(this, v66);
      v69 = *this;
      v966 = 0;
      v967 = 0;
      v965 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v965, *v69, v69[1], (v69[1] - *v69) >> 2);
      v70 = &v965[4 * v66];
      v71 = v966 - (v70 + 4);
      if (v966 != v70 + 4)
      {
        memmove(&v965[4 * v66], v70 + 4, v966 - (v70 + 4));
      }

      v966 = &v70[v71];
      v72 = *this;
      v963 = 0;
      v964 = 0;
      v962 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v962, *(v72 + 24), *(v72 + 32), (*(v72 + 32) - *(v72 + 24)) >> 3);
      v73 = v66;
      v74 = &v962[8 * v66];
      v75 = v963 - (v74 + 8);
      if (v963 != v74 + 8)
      {
        memmove(&v962[8 * v66], v74 + 8, v963 - (v74 + 8));
      }

      v963 = &v74[v75];
      v76 = *(this + 2);
      v960 = 0;
      v961 = 0;
      v959 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v959, *v76, v76[1], (v76[1] - *v76) >> 2);
      v77 = 4 * v66;
      v78 = &v959[v77];
      v79 = v960 - &v959[v77 + 4];
      if (v960 != &v959[v77 + 4])
      {
        memmove(&v959[v77], &v959[v77 + 4], v960 - (v78 + 4));
      }

      v960 = &v78[v79];
      v80 = *(this + 2);
      v957 = 0;
      v958 = 0;
      v956 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v956, *(v80 + 24), *(v80 + 32), (*(v80 + 32) - *(v80 + 24)) >> 3);
      v81 = &v956[8 * v73];
      v82 = v957 - (v81 + 8);
      if (v957 != v81 + 8)
      {
        memmove(&v956[8 * v73], v81 + 8, v957 - (v81 + 8));
      }

      v957 = &v81[v82];
      v915 = *(*(*this + 24) + 8 * v73);
      v929 = *(*(*(this + 2) + 24) + 8 * v73);
      v83 = mlx::core::array::shape(this, v73);
      mlx::core::ContiguousIterator::ContiguousIterator(&v949, &v965, &v962, (v966 - v965) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v942, &v959, &v956, (v960 - v959) >> 2);
      if (v67 < v68)
      {
        goto LABEL_659;
      }

      v84 = 0;
      v887 = *(*(this + 2) + 152);
      v901 = *(*this + 152);
      v85 = v929 * v83;
      v86 = MEMORY[0x277D826F0];
      v873 = v67 / v68;
      do
      {
        v87 = v942;
        v88 = v949;
        v89 = v951 - v950;
        v90 = (v951 - v950) >> 2;
        if (v90)
        {
          v91 = ((v89 << 30) - 0x100000000) >> 32;
          v92 = v954;
          v93 = v952;
          v94 = v954 + 4 * v91;
          v95 = *v94;
          v96 = v950 + 4 * v91;
          if (v90 >= 2 && v95 == *v96 - 1)
          {
            v100 = (v89 >> 2) & 0x7FFFFFFF;
            v99 = v100 - 1;
            v101 = 4 * v100;
            v102 = v950 - 8;
            v98 = v949;
            do
            {
              v103 = v99;
              *v94 = 0;
              v98 -= v93[v91] * (*v96 - 1);
              v949 = v98;
              --v99;
              v94 = &v92[v101 - 8];
              v95 = *v94;
              v92 -= 4;
              if (v103 < 2)
              {
                break;
              }

              v96 = &v102[v101];
              v104 = *&v102[4 * v100] - 1;
              v102 -= 4;
              v91 = v99;
            }

            while (v95 == v104);
            v94 = &v92[4 * v100 - 4];
          }

          else
          {
            v98 = v949;
            v99 = ((v89 << 30) - 0x100000000) >> 32;
          }

          *v94 = v95 + 1;
          v949 = v93[v99] + v98;
        }

        v105 = v944 - v943;
        v106 = (v944 - v943) >> 2;
        if (v106)
        {
          v107 = ((v105 << 30) - 0x100000000) >> 32;
          v108 = __p;
          v109 = v945;
          v110 = __p + 4 * v107;
          v111 = *v110;
          v112 = v943 + 4 * v107;
          if (v106 >= 2 && v111 == *v112 - 1)
          {
            v116 = (v105 >> 2) & 0x7FFFFFFF;
            v115 = v116 - 1;
            v117 = 4 * v116;
            v118 = v943 - 8;
            v114 = v87;
            do
            {
              v119 = v115;
              *v110 = 0;
              v114 -= v109[v107] * (*v112 - 1);
              v942 = v114;
              --v115;
              v110 = &v108[v117 - 8];
              v111 = *v110;
              v108 -= 4;
              if (v119 < 2)
              {
                break;
              }

              v112 = &v118[v117];
              v120 = *&v118[4 * v116] - 1;
              v118 -= 4;
              v107 = v115;
            }

            while (v111 == v120);
            v110 = &v108[4 * v116 - 4];
          }

          else
          {
            v114 = v87;
            v115 = ((v105 << 30) - 0x100000000) >> 32;
          }

          *v110 = v111 + 1;
          v942 = v109[v115] + v114;
        }

        v121 = (v887 + 4 * v87);
        if (v85)
        {
          v122 = 0;
          v123 = 0;
          do
          {
            v121[v122] = v123++;
            v122 += v929;
          }

          while (v85 != v122);
        }

        v968 = v901 + 8 * v88;
        v969 = v915;
        if (v83 < 129)
        {
          v126 = 0;
LABEL_92:
        }

        else
        {
          v124 = v83;
          while (1)
          {
            v125 = operator new(4 * v124, v86);
            if (v125)
            {
              break;
            }

            v126 = v124 >> 1;
            v64 = v124 > 1;
            v124 >>= 1;
            if (!v64)
            {
              goto LABEL_92;
            }
          }

          v127 = v125;
          operator delete(v127);
        }

        ++v84;
      }

      while (v873 > v84);
      goto LABEL_659;
    case 0xC:
      v190 = *(this + 8);
      if (v190 < 0)
      {
        v190 += (v1[1] - *v1) >> 2;
      }

      v191 = v1[6];
      v192 = mlx::core::array::shape(this, v190);
      v193 = *this;
      v966 = 0;
      v967 = 0;
      v965 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v965, *v193, v193[1], (v193[1] - *v193) >> 2);
      v194 = &v965[4 * v190];
      v195 = v966 - (v194 + 4);
      if (v966 != v194 + 4)
      {
        memmove(&v965[4 * v190], v194 + 4, v966 - (v194 + 4));
      }

      v966 = &v194[v195];
      v196 = *this;
      v963 = 0;
      v964 = 0;
      v962 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v962, *(v196 + 24), *(v196 + 32), (*(v196 + 32) - *(v196 + 24)) >> 3);
      v197 = v190;
      v198 = &v962[8 * v190];
      v199 = v963 - (v198 + 8);
      if (v963 != v198 + 8)
      {
        memmove(&v962[8 * v190], v198 + 8, v963 - (v198 + 8));
      }

      v963 = &v198[v199];
      v200 = *(this + 2);
      v960 = 0;
      v961 = 0;
      v959 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v959, *v200, v200[1], (v200[1] - *v200) >> 2);
      v201 = 4 * v190;
      v202 = &v959[v201];
      v203 = v960 - &v959[v201 + 4];
      if (v960 != &v959[v201 + 4])
      {
        memmove(&v959[v201], &v959[v201 + 4], v960 - (v202 + 4));
      }

      v960 = &v202[v203];
      v204 = *(this + 2);
      v957 = 0;
      v958 = 0;
      v956 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v956, *(v204 + 24), *(v204 + 32), (*(v204 + 32) - *(v204 + 24)) >> 3);
      v205 = &v956[8 * v197];
      v206 = v957 - (v205 + 8);
      if (v957 != v205 + 8)
      {
        memmove(&v956[8 * v197], v205 + 8, v957 - (v205 + 8));
      }

      v957 = &v205[v206];
      v917 = *(*(*this + 24) + 8 * v197);
      v931 = *(*(*(this + 2) + 24) + 8 * v197);
      v207 = mlx::core::array::shape(this, v197);
      mlx::core::ContiguousIterator::ContiguousIterator(&v949, &v965, &v962, (v966 - v965) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v942, &v959, &v956, (v960 - v959) >> 2);
      if (v191 < v192)
      {
        goto LABEL_659;
      }

      v208 = 0;
      v889 = *(*(this + 2) + 152);
      v903 = *(*this + 152);
      v209 = v931 * v207;
      v210 = MEMORY[0x277D826F0];
      v875 = v191 / v192;
      do
      {
        v211 = v942;
        v212 = v949;
        v213 = v951 - v950;
        v214 = (v951 - v950) >> 2;
        if (v214)
        {
          v215 = ((v213 << 30) - 0x100000000) >> 32;
          v216 = v954;
          v217 = v952;
          v218 = v954 + 4 * v215;
          v219 = *v218;
          v220 = v950 + 4 * v215;
          if (v214 >= 2 && v219 == *v220 - 1)
          {
            v224 = (v213 >> 2) & 0x7FFFFFFF;
            v223 = v224 - 1;
            v225 = 4 * v224;
            v226 = v950 - 8;
            v222 = v949;
            do
            {
              v227 = v223;
              *v218 = 0;
              v222 -= v217[v215] * (*v220 - 1);
              v949 = v222;
              --v223;
              v218 = &v216[v225 - 8];
              v219 = *v218;
              v216 -= 4;
              if (v227 < 2)
              {
                break;
              }

              v220 = &v226[v225];
              v228 = *&v226[4 * v224] - 1;
              v226 -= 4;
              v215 = v223;
            }

            while (v219 == v228);
            v218 = &v216[4 * v224 - 4];
          }

          else
          {
            v222 = v949;
            v223 = ((v213 << 30) - 0x100000000) >> 32;
          }

          *v218 = v219 + 1;
          v949 = v217[v223] + v222;
        }

        v229 = v944 - v943;
        v230 = (v944 - v943) >> 2;
        if (v230)
        {
          v231 = ((v229 << 30) - 0x100000000) >> 32;
          v232 = __p;
          v233 = v945;
          v234 = __p + 4 * v231;
          v235 = *v234;
          v236 = v943 + 4 * v231;
          if (v230 >= 2 && v235 == *v236 - 1)
          {
            v240 = (v229 >> 2) & 0x7FFFFFFF;
            v239 = v240 - 1;
            v241 = 4 * v240;
            v242 = v943 - 8;
            v238 = v211;
            do
            {
              v243 = v239;
              *v234 = 0;
              v238 -= v233[v231] * (*v236 - 1);
              v942 = v238;
              --v239;
              v234 = &v232[v241 - 8];
              v235 = *v234;
              v232 -= 4;
              if (v243 < 2)
              {
                break;
              }

              v236 = &v242[v241];
              v244 = *&v242[4 * v240] - 1;
              v242 -= 4;
              v231 = v239;
            }

            while (v235 == v244);
            v234 = &v232[4 * v240 - 4];
          }

          else
          {
            v238 = v211;
            v239 = ((v229 << 30) - 0x100000000) >> 32;
          }

          *v234 = v235 + 1;
          v942 = v233[v239] + v238;
        }

        v245 = (v889 + 4 * v211);
        if (v209)
        {
          v246 = 0;
          v247 = 0;
          do
          {
            v245[v246] = v247++;
            v246 += v931;
          }

          while (v209 != v246);
        }

        v968 = v903 + 2 * v212;
        v969 = v917;
        if (v207 < 129)
        {
          v250 = 0;
LABEL_186:
        }

        else
        {
          v248 = v207;
          while (1)
          {
            v249 = operator new(4 * v248, v210);
            if (v249)
            {
              break;
            }

            v250 = v248 >> 1;
            v64 = v248 > 1;
            v248 >>= 1;
            if (!v64)
            {
              goto LABEL_186;
            }
          }

          v251 = v249;
          operator delete(v251);
        }

        ++v208;
      }

      while (v875 > v208);
      goto LABEL_659;
    case 0xD:
      v624 = *(this + 8);
      if (v624 < 0)
      {
        v624 += (v1[1] - *v1) >> 2;
      }

      v625 = v1[6];
      v626 = mlx::core::array::shape(this, v624);
      v627 = *this;
      v966 = 0;
      v967 = 0;
      v965 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v965, *v627, v627[1], (v627[1] - *v627) >> 2);
      v628 = &v965[4 * v624];
      v629 = v966 - (v628 + 4);
      if (v966 != v628 + 4)
      {
        memmove(&v965[4 * v624], v628 + 4, v966 - (v628 + 4));
      }

      v966 = &v628[v629];
      v630 = *this;
      v963 = 0;
      v964 = 0;
      v962 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v962, *(v630 + 24), *(v630 + 32), (*(v630 + 32) - *(v630 + 24)) >> 3);
      v631 = v624;
      v632 = &v962[8 * v624];
      v633 = v963 - (v632 + 8);
      if (v963 != v632 + 8)
      {
        memmove(&v962[8 * v624], v632 + 8, v963 - (v632 + 8));
      }

      v963 = &v632[v633];
      v634 = *(this + 2);
      v960 = 0;
      v961 = 0;
      v959 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v959, *v634, v634[1], (v634[1] - *v634) >> 2);
      v635 = 4 * v624;
      v636 = &v959[v635];
      v637 = v960 - &v959[v635 + 4];
      if (v960 != &v959[v635 + 4])
      {
        memmove(&v959[v635], &v959[v635 + 4], v960 - (v636 + 4));
      }

      v960 = &v636[v637];
      v638 = *(this + 2);
      v957 = 0;
      v958 = 0;
      v956 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v956, *(v638 + 24), *(v638 + 32), (*(v638 + 32) - *(v638 + 24)) >> 3);
      v639 = &v956[8 * v631];
      v640 = v957 - (v639 + 8);
      if (v957 != v639 + 8)
      {
        memmove(&v956[8 * v631], v639 + 8, v957 - (v639 + 8));
      }

      v957 = &v639[v640];
      v924 = *(*(*this + 24) + 8 * v631);
      v938 = *(*(*(this + 2) + 24) + 8 * v631);
      v641 = mlx::core::array::shape(this, v631);
      mlx::core::ContiguousIterator::ContiguousIterator(&v949, &v965, &v962, (v966 - v965) >> 2);
      mlx::core::ContiguousIterator::ContiguousIterator(&v942, &v959, &v956, (v960 - v959) >> 2);
      if (v625 < v626)
      {
        goto LABEL_659;
      }

      v642 = 0;
      v896 = *(*(this + 2) + 152);
      v910 = *(*this + 152);
      v643 = v938 * v641;
      v644 = MEMORY[0x277D826F0];
      v882 = v625 / v626;
      break;
    default:
      return;
  }

  do
  {
    v645 = v942;
    v646 = v949;
    v647 = v951 - v950;
    v648 = (v951 - v950) >> 2;
    if (v648)
    {
      v649 = ((v647 << 30) - 0x100000000) >> 32;
      v650 = v954;
      v651 = v952;
      v652 = v954 + 4 * v649;
      v653 = *v652;
      v654 = v950 + 4 * v649;
      if (v648 >= 2 && v653 == *v654 - 1)
      {
        v658 = (v647 >> 2) & 0x7FFFFFFF;
        v657 = v658 - 1;
        v659 = 4 * v658;
        v660 = v950 - 8;
        v656 = v949;
        do
        {
          v661 = v657;
          *v652 = 0;
          v656 -= v651[v649] * (*v654 - 1);
          v949 = v656;
          --v657;
          v652 = &v650[v659 - 8];
          v653 = *v652;
          v650 -= 4;
          if (v661 < 2)
          {
            break;
          }

          v654 = &v660[v659];
          v662 = *&v660[4 * v658] - 1;
          v660 -= 4;
          v649 = v657;
        }

        while (v653 == v662);
        v652 = &v650[4 * v658 - 4];
      }

      else
      {
        v656 = v949;
        v657 = ((v647 << 30) - 0x100000000) >> 32;
      }

      *v652 = v653 + 1;
      v949 = v651[v657] + v656;
    }

    v663 = v944 - v943;
    v664 = (v944 - v943) >> 2;
    if (v664)
    {
      v665 = ((v663 << 30) - 0x100000000) >> 32;
      v666 = __p;
      v667 = v945;
      v668 = __p + 4 * v665;
      v669 = *v668;
      v670 = v943 + 4 * v665;
      if (v664 >= 2 && v669 == *v670 - 1)
      {
        v674 = (v663 >> 2) & 0x7FFFFFFF;
        v673 = v674 - 1;
        v675 = 4 * v674;
        v676 = v943 - 8;
        v672 = v645;
        do
        {
          v677 = v673;
          *v668 = 0;
          v672 -= v667[v665] * (*v670 - 1);
          v942 = v672;
          --v673;
          v668 = &v666[v675 - 8];
          v669 = *v668;
          v666 -= 4;
          if (v677 < 2)
          {
            break;
          }

          v670 = &v676[v675];
          v678 = *&v676[4 * v674] - 1;
          v676 -= 4;
          v665 = v673;
        }

        while (v669 == v678);
        v668 = &v666[4 * v674 - 4];
      }

      else
      {
        v672 = v645;
        v673 = ((v663 << 30) - 0x100000000) >> 32;
      }

      *v668 = v669 + 1;
      v942 = v667[v673] + v672;
    }

    v679 = (v896 + 4 * v645);
    if (v643)
    {
      v680 = 0;
      v681 = 0;
      do
      {
        v679[v680] = v681++;
        v680 += v938;
      }

      while (v643 != v680);
    }

    v968 = v910 + 8 * v646;
    v969 = v924;
    if (v641 < 129)
    {
      v684 = 0;
LABEL_515:
    }

    else
    {
      v682 = v641;
      while (1)
      {
        v683 = operator new(4 * v682, v644);
        if (v683)
        {
          break;
        }

        v684 = v682 >> 1;
        v64 = v682 > 1;
        v682 >>= 1;
        if (!v64)
        {
          goto LABEL_515;
        }
      }

      v685 = v683;
      operator delete(v685);
    }

    ++v642;
  }

  while (v882 > v642);
LABEL_659:
  if (__p)
  {
    v948 = __p;
    operator delete(__p);
  }

  if (v945)
  {
    v946 = v945;
    operator delete(v945);
  }

  if (v943)
  {
    v944 = v943;
    operator delete(v943);
  }

  if (v954)
  {
    v955 = v954;
    operator delete(v954);
  }

  if (v952)
  {
    v953 = v952;
    operator delete(v952);
  }

  if (v950)
  {
    v951 = v950;
    operator delete(v950);
  }

  if (v956)
  {
    v957 = v956;
    operator delete(v956);
  }

  if (v959)
  {
    v960 = v959;
    operator delete(v959);
  }

  if (v962)
  {
    v963 = v962;
    operator delete(v962);
  }

  if (v965)
  {
    v966 = v965;
    operator delete(v965);
  }
}

void sub_25A5ED868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a26);
  v28 = *(v26 - 200);
  if (v28)
  {
    *(v26 - 192) = v28;
    operator delete(v28);
  }

  v29 = *(v26 - 176);
  if (v29)
  {
    *(v26 - 168) = v29;
    operator delete(v29);
  }

  v30 = *(v26 - 152);
  if (v30)
  {
    *(v26 - 144) = v30;
    operator delete(v30);
  }

  v31 = *(v26 - 128);
  if (v31)
  {
    *(v26 - 120) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<BOOL,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7, uint64_t a8)
{
  if (a6 >= 2)
  {
    v11 = a2;
    if (a6 == 2)
    {
      v12 = a4[-a3];
      v13 = *a2;
      v14 = a5[1];
      v15 = *(*a5 + v14 * v12);
      v16 = *(*a5 + v14 * v13);
      if (v15 < v16 || (v12 < v13 ? (v17 = v15 == v16) : (v17 = 0), v17))
      {
        *a2 = v12;
        a4[-a3] = v13;
      }
    }

    else
    {
      v18 = result;
      if (a6 > 128)
      {
        v35 = a7;
        v36 = a6 >> 1;
        v37 = a6;
        v52 = a6 - (a6 >> 1);
        v38 = &a2[result * v36];
        if (a6 <= a8)
        {
          v39 = &v35[v36];
          v40 = *a5;
          v41 = a5[1];
          v42 = 4 * v18;
          v43 = v39;
          v44 = &v35[v37];
          while (v43 != v44)
          {
            v45 = *v43;
            v46 = *v35;
            v47 = *(v40 + v41 * v45);
            v48 = *(v40 + v41 * v46);
            if (v47 < v48 || (v45 < v46 ? (v49 = v47 == v48) : (v49 = 0), v49))
            {
              *v11 = v45;
              ++v43;
            }

            else
            {
              *v11 = v46;
              ++v35;
            }

            v11 += v42;
            if (v35 == v39)
            {
              while (v43 != v44)
              {
                v51 = *v43++;
                *v11 = v51;
                v11 += v42;
              }

              return result;
            }
          }

          while (v35 != v39)
          {
            v50 = *v35++;
            *v11 = v50;
            v11 += v42;
          }
        }

        else
        {
        }
      }

      else if (a2 != a4 || result != a3)
      {
        v19 = &a2[result];
        if (v19 != a4)
        {
          v20 = 0;
          v21 = *a5;
          v22 = a5[1];
          v23 = 4 * result;
          v24 = a2;
          do
          {
            v25 = v19;
            v26 = *v19;
            v27 = *v24;
            v28 = *(v21 + v22 * v26);
            result = *(v21 + v22 * v27);
            if (v28 < result || (v26 < v27 ? (v29 = v28 == result) : (v29 = 0), v29))
            {
              *v25 = v27;
              if (v24 == a2)
              {
LABEL_30:
                v33 = a2;
              }

              else
              {
                v30 = v20;
                while (1)
                {
                  v31 = *(a2 + v30 + -4 * v18);
                  result = *(v21 + v22 * v31);
                  if (v28 >= result && (v26 >= v31 || v28 != result))
                  {
                    break;
                  }

                  *(a2 + v30) = v31;
                  v30 -= v23;
                  if (!v30)
                  {
                    goto LABEL_30;
                  }
                }

                v33 = (a2 + v30);
              }

              *v33 = v26;
            }

            v19 = &v25[v18];
            v20 += v23;
            v24 = v25;
          }

          while (v19 != a4);
        }
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<BOOL,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7)
{
  if (a6)
  {
    v7 = a7;
    v9 = a2;
    if (a6 == 1)
    {
LABEL_8:
      *v7 = *v9;
      return result;
    }

    if (a6 == 2)
    {
      v13 = a4[-a3];
      v14 = *a2;
      v15 = a5[1];
      v16 = *(*a5 + v15 * v13);
      v17 = *(*a5 + v15 * v14);
      if (v16 >= v17 && (v13 >= v14 || v16 != v17))
      {
        LODWORD(v13) = *a2;
        v9 = &a4[-a3];
      }

      *a7 = v13;
      v7 = a7 + 1;
      goto LABEL_8;
    }

    v18 = result;
    if (a6 > 8)
    {
      v37 = a6 >> 1;
      v38 = &a2[result * v37];
      if (4 * v18 * v37)
      {
        v40 = *a5;
        v41 = a5[1];
        v39 = &v9[v18 * v37];
        while (v39 != a4 || v18 != a3)
        {
          v42 = *v39;
          v43 = *v9;
          v44 = *(v40 + v41 * v42);
          v45 = *(v40 + v41 * v43);
          if (v44 < v45 || (v42 < v43 ? (v46 = v44 == v45) : (v46 = 0), v46))
          {
            *v7 = v42;
            v39 += v18;
          }

          else
          {
            *v7 = v43;
            v9 += v18;
          }

          ++v7;
          if (v9 == v38)
          {
            goto LABEL_46;
          }
        }

        for (; v9 != v38; v9 += v18)
        {
          *v7++ = *v9;
        }
      }

      else
      {
        v39 = &v9[v18 * v37];
LABEL_46:
        while (v39 != a4)
        {
          *v7++ = *v39;
          v39 += v18;
        }
      }
    }

    else if (a2 != a4)
    {
      *a7 = *a2;
      v19 = &a2[result];
      if (v19 != a4)
      {
        v20 = 0;
        v21 = *a5;
        v22 = a5[1];
        v23 = a7;
        v24 = a7;
        do
        {
          v26 = *v24++;
          v25 = v26;
          v27 = *v19;
          v28 = *(v21 + v22 * v27);
          v29 = *(v21 + v22 * v26);
          if (v28 < v29 || (v27 < v25 ? (v30 = v28 == v29) : (v30 = 0), v30))
          {
            v23[1] = v25;
            v31 = a7;
            if (v23 != a7)
            {
              v32 = v20;
              do
              {
                v33 = *v19;
                v34 = *(a7 + v32 - 4);
                v35 = *(v21 + v22 * v33);
                result = *(v21 + v22 * v34);
                if (v35 >= result && (v33 >= v34 || v35 != result))
                {
                  v31 = (a7 + v32);
                  goto LABEL_30;
                }

                *(a7 + v32) = v34;
                v32 -= 4;
              }

              while (v32);
              v31 = a7;
            }

LABEL_30:
            *v31 = *v19;
          }

          else
          {
            *v24 = v27;
          }

          v19 += v18;
          v20 += 4;
          v23 = v24;
        }

        while (v19 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<BOOL,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t *a7, int a8, int a9, unsigned int *a10, uint64_t a11)
{
  v11 = a9;
  if (a9)
  {
    LODWORD(v12) = a8;
    v13 = a7;
    v84 = a10;
    while (v11 > a11 && v12 > a11)
    {
      if (!v12)
      {
        return result;
      }

      v16 = 0;
      v17 = *a4;
      v18 = *v13;
      v19 = v13[1];
      v20 = *(*v13 + v19 * v17);
      v21 = -v12;
      v22 = 4 * result;
      while (1)
      {
        v23 = *&a2[v16];
        v24 = *(v18 + v19 * v23);
        if (v20 < v24)
        {
          break;
        }

        if (v17 < v23 && v20 == v24)
        {
          break;
        }

        v16 += v22;
        if (__CFADD__(v21++, 1))
        {
          return result;
        }
      }

      v82 = a5;
      v83 = a6;
      v78 = &a2[v16];
      if (-v21 >= v11)
      {
        if (v21 == -1)
        {
          *&a2[v16] = v17;
          *a4 = v23;
          return result;
        }

        v37 = (v21 > 0) - v21;
        v31 = &a2[4 * result * (v37 >> 1) + v16];
        v38 = ((a6 - a4) >> 2) / a5;
        if (v38)
        {
          v39 = *v31;
          v40 = *(v18 + v19 * v39);
          v27 = a4;
          do
          {
            v41 = v38 >> 1;
            v42 = &v27[a3 * v41];
            v43 = *v42;
            v44 = *(v18 + v19 * v43);
            if (v44 < v40 || (v43 < v39 ? (v45 = v44 == v40) : (v45 = 0), v45))
            {
              v27 = &v42[a3];
              LODWORD(v41) = v38 + ~v41;
            }

            LODWORD(v38) = v41;
          }

          while (v41);
        }

        else
        {
          v27 = a4;
        }

        v86 = (v37 >> 1);
        v85 = ((v27 - a4) >> 2) / a3;
      }

      else
      {
        v27 = &a4[4 * a3 * ((v11 + (v11 >> 31)) >> 1)];
        v28 = ((a4 - a2 - v16) >> 2) / a3;
        if (v28)
        {
          v29 = *v27;
          v30 = *(v18 + v19 * v29);
          v31 = &a2[v16];
          do
          {
            v32 = v28 >> 1;
            v33 = &v31[v22 * v32];
            v34 = *v33;
            v35 = *(v18 + v19 * v34);
            if (v30 >= v35 && (v29 >= v34 || v30 != v35))
            {
              v31 = &v33[4 * result];
              LODWORD(v32) = v28 + ~v32;
            }

            LODWORD(v28) = v32;
          }

          while (v32);
        }

        else
        {
          v31 = &a2[v16];
        }

        LODWORD(v85) = v11 / 2;
        v86 = ((v31 - a2 - v16) >> 2) / result;
      }

      v12 = (-v21 - v86);
      v80 = a3;
      v81 = result;
      v46 = v88;
      if (v86 + v85 >= v11 - (v86 + v85) - v21)
      {
        v51 = v88;
        v52 = v87;
        v27 = v31;
        v13 = a7;
        result = v81;
        a3 = v81;
        v46 = v78;
        v50 = v85;
        LODWORD(v12) = v86;
        a5 = v52;
        a6 = v51;
      }

      else
      {
        v47 = &a2[v16];
        v48 = v31;
        v49 = v87;
        v13 = a7;
        result = v49;
        a5 = v82;
        a6 = v83;
        a3 = v80;
        v50 = v11 - v85;
      }

      v11 = v50;
      a2 = v46;
      a4 = v27;
      if (!v50)
      {
        return result;
      }
    }

    if (v12 <= v11)
    {
      if (a2 != a4)
      {
        v63 = 4 * result;
        v64 = a2;
        v65 = a10;
        do
        {
          *v65++ = *v64;
          v64 = (v64 + v63);
        }

        while (v64 != a4);
        v66 = *v13;
        v67 = v13[1];
        v68 = v65 - 1;
        while (a4 != a6 || a3 != a5)
        {
          v69 = *a4;
          v70 = *v84;
          v71 = *(v66 + v67 * v69);
          v72 = *(v66 + v67 * v70);
          if (v71 < v72 || (v69 < v70 ? (v73 = v71 == v72) : (v73 = 0), v73))
          {
            *a2 = v69;
            a4 += 4 * a3;
          }

          else
          {
            *a2 = v70;
            ++v84;
          }

          a2 += v63;
          if (v65 == v84)
          {
            return result;
          }
        }

        v74 = v84 - 1;
        do
        {
          v75 = v74[1];
          ++v74;
          *a2 = v75;
          a2 += v63;
        }

        while (v68 != v74);
      }
    }

    else if (a6 != a4)
    {
      v53 = a4;
      v54 = a10;
      do
      {
        *v54++ = *v53;
        v53 += 4 * a3;
      }

      while (v53 != a6);
      v55 = *v13;
      v56 = v13[1];
      while (a2 != a4 || a3 != result)
      {
        v57 = &a4[-4 * a3];
        v58 = *(v54 - 1);
        v59 = *v57;
        v60 = *(v55 + v56 * v58);
        v61 = *(v55 + v56 * v59);
        if (v60 >= v61 && (v58 >= v59 || v60 != v61))
        {
          LODWORD(v59) = *(v54 - 1);
          v57 = a4;
          --v54;
        }

        a6 -= 4 * a5;
        *a6 = v59;
        a4 = v57;
        if (v54 == a10)
        {
          return result;
        }
      }

      if (v54 != a10)
      {
        v76 = -4 * a5;
        do
        {
          v77 = *--v54;
          *&a6[v76] = v77;
          v76 -= 4 * a5;
        }

        while (v54 != a10);
      }
    }
  }

  return result;
}

uint64_t std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::StridedIterator<unsigned int>,mlx::core::anonymous namespace::StridedIterator<unsigned int>>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X5>, void *a7@<X8>)
{
  if (a4 == a2 && result == a3)
  {
    *a7 = a5;
    a7[1] = a6;
  }

  else if (a6 == a4 && a3 == a5)
  {
    *a7 = result;
    a7[1] = a2;
    a5 = a3;
    a6 = a4;
  }

  else
  {
    v7 = 4 * result;
    if (&a2[result] == a4 && result == a3)
    {
      v8 = *a2;
      if (a6 != a4)
      {
        v9 = 0;
        do
        {
          *(a2 + v9) = *(a4 + v9);
          v9 += v7;
        }

        while ((a4 + v9) != a6);
        a2 = (a2 + v9);
      }

      *a2 = v8;
      a4 = a2;
    }

    else
    {
      v10 = 4 * a3;
      if (&a4[a3] == a6 && a3 == a5)
      {
        v11 = &a6[v10 / 0xFFFFFFFFFFFFFFFCLL];
        v12 = a6[-a3];
        a4 = a6;
        if (&a6[v10 / 0xFFFFFFFFFFFFFFFCLL] != a2)
        {
          v13 = a6;
          a4 = a6;
          do
          {
            v11 -= a3;
            v13 -= a3;
            *v13 = *v11;
            a4 = (a4 - v10);
          }

          while (v11 != a2);
        }

        *a2 = v12;
        result = a5;
      }

      else
      {
        v14 = (a4 - a2) / a3;
        v15 = (a6 - a4) / a5;
        if (v14 == v15)
        {
          if (a4 != a2 && a6 != a4)
          {
            v16 = a4;
            do
            {
              v17 = *a2;
              *a2 = *v16;
              *v16 = v17;
              a2 = (a2 + v7);
              v16 = (v16 + v10);
            }

            while (a2 != a4 && v16 != a6);
          }

          result = a3;
        }

        else
        {
          v19 = (a6 - a4) / a5;
          v20 = (a4 - a2) / a3;
          do
          {
            v21 = v20;
            LODWORD(v20) = v19;
            LODWORD(v19) = v21 % v19;
          }

          while (v19);
          if (result)
          {
            v22 = &a2[result * v20];
            v23 = v14 * result;
            do
            {
              v22 -= result;
              v24 = *v22;
              v25 = &v22[v23];
              v26 = v22;
              do
              {
                v27 = v25;
                *v26 = *v25;
                v28 = (a6 - v25) / a5;
                if (v14 >= v28)
                {
                  v25 = &a2[(v14 - v28) * result];
                }

                else
                {
                  v25 = &v27[v23];
                }

                v26 = v27;
              }

              while (v25 != v22);
              *v27 = v24;
            }

            while (v22 != a2);
          }

          a4 = &a2[v15 * result];
        }
      }
    }

    *a7 = result;
    a7[1] = a4;
  }

  a7[2] = a5;
  a7[3] = a6;
  return result;
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<unsigned char,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7, uint64_t a8)
{
  if (a6 >= 2)
  {
    v11 = a2;
    if (a6 == 2)
    {
      v12 = a4[-a3];
      v13 = *a2;
      v14 = a5[1];
      v15 = *(*a5 + v14 * v12);
      v16 = *(*a5 + v14 * v13);
      if (v15 < v16 || (v12 < v13 ? (v17 = v15 == v16) : (v17 = 0), v17))
      {
        *a2 = v12;
        a4[-a3] = v13;
      }
    }

    else
    {
      v18 = result;
      if (a6 > 128)
      {
        v36 = a7;
        v37 = a6 >> 1;
        v38 = a6;
        v53 = a6 - (a6 >> 1);
        v39 = &a2[result * v37];
        if (a6 <= a8)
        {
          v40 = &v36[v37];
          v41 = *a5;
          v42 = a5[1];
          v43 = 4 * v18;
          v44 = v40;
          v45 = &v36[v38];
          while (v44 != v45)
          {
            v46 = *v44;
            v47 = *v36;
            v48 = *(v41 + v42 * v46);
            v49 = *(v41 + v42 * v47);
            if (v48 < v49 || (v46 < v47 ? (v50 = v48 == v49) : (v50 = 0), v50))
            {
              *v11 = v46;
              ++v44;
            }

            else
            {
              *v11 = v47;
              ++v36;
            }

            v11 += v43;
            if (v36 == v40)
            {
              while (v44 != v45)
              {
                v52 = *v44++;
                *v11 = v52;
                v11 += v43;
              }

              return result;
            }
          }

          while (v36 != v40)
          {
            v51 = *v36++;
            *v11 = v51;
            v11 += v43;
          }
        }

        else
        {
        }
      }

      else if (a2 != a4 || result != a3)
      {
        v19 = &a2[result];
        if (v19 != a4)
        {
          v20 = 0;
          v21 = *a5;
          v22 = a5[1];
          v23 = 4 * result;
          v24 = a2;
          do
          {
            v25 = v19;
            v26 = *v19;
            v27 = *v24;
            result = *(v21 + v22 * v26);
            v28 = *(v21 + v22 * v27);
            if (result < v28 || (v26 < v27 ? (v29 = result == v28) : (v29 = 0), v29))
            {
              *v25 = v27;
              if (v24 == v11)
              {
LABEL_30:
                v34 = v11;
              }

              else
              {
                v30 = v20;
                while (1)
                {
                  v31 = *&v11[v30 + -4 * v18];
                  result = *(v21 + v22 * v26);
                  v32 = *(v21 + v22 * v31);
                  if (result >= v32 && (v26 >= v31 || result != v32))
                  {
                    break;
                  }

                  *&v11[v30] = v31;
                  v30 -= v23;
                  if (!v30)
                  {
                    goto LABEL_30;
                  }
                }

                v34 = &v11[v30];
              }

              *v34 = v26;
            }

            v19 = &v25[v18];
            v20 += v23;
            v24 = v25;
          }

          while (v19 != a4);
        }
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<unsigned char,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7)
{
  if (a6)
  {
    v7 = a7;
    v9 = a2;
    if (a6 == 1)
    {
LABEL_8:
      *v7 = *v9;
      return result;
    }

    if (a6 == 2)
    {
      v13 = a4[-a3];
      v14 = *a2;
      v15 = a5[1];
      v16 = *(*a5 + v15 * v13);
      v17 = *(*a5 + v15 * v14);
      if (v16 >= v17 && (v13 >= v14 || v16 != v17))
      {
        LODWORD(v13) = *a2;
        v9 = &a4[-a3];
      }

      *a7 = v13;
      v7 = a7 + 1;
      goto LABEL_8;
    }

    v18 = result;
    if (a6 > 8)
    {
      v37 = a6 >> 1;
      v38 = &a2[result * v37];
      if (4 * v18 * v37)
      {
        v40 = *a5;
        v41 = a5[1];
        v39 = &v9[v18 * v37];
        while (v39 != a4 || v18 != a3)
        {
          v42 = *v39;
          v43 = *v9;
          v44 = *(v40 + v41 * v42);
          v45 = *(v40 + v41 * v43);
          if (v44 < v45 || (v42 < v43 ? (v46 = v44 == v45) : (v46 = 0), v46))
          {
            *v7 = v42;
            v39 += v18;
          }

          else
          {
            *v7 = v43;
            v9 += v18;
          }

          ++v7;
          if (v9 == v38)
          {
            goto LABEL_46;
          }
        }

        for (; v9 != v38; v9 += v18)
        {
          *v7++ = *v9;
        }
      }

      else
      {
        v39 = &v9[v18 * v37];
LABEL_46:
        while (v39 != a4)
        {
          *v7++ = *v39;
          v39 += v18;
        }
      }
    }

    else if (a2 != a4)
    {
      *a7 = *a2;
      v19 = &a2[result];
      if (v19 != a4)
      {
        v20 = 0;
        v21 = *a5;
        v22 = a5[1];
        v23 = a7;
        v24 = a7;
        do
        {
          v26 = *v24++;
          v25 = v26;
          v27 = *v19;
          v28 = *(v21 + v22 * v27);
          v29 = *(v21 + v22 * v26);
          if (v28 < v29 || (v27 < v25 ? (v30 = v28 == v29) : (v30 = 0), v30))
          {
            v23[1] = v25;
            v31 = a7;
            if (v23 != a7)
            {
              v32 = v20;
              do
              {
                v33 = *v19;
                v34 = *(a7 + v32 - 4);
                v35 = *(v21 + v22 * v33);
                result = *(v21 + v22 * v34);
                if (v35 >= result && (v33 >= v34 || v35 != result))
                {
                  v31 = (a7 + v32);
                  goto LABEL_30;
                }

                *(a7 + v32) = v34;
                v32 -= 4;
              }

              while (v32);
              v31 = a7;
            }

LABEL_30:
            *v31 = *v19;
          }

          else
          {
            *v24 = v27;
          }

          v19 += v18;
          v20 += 4;
          v23 = v24;
        }

        while (v19 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<unsigned short,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7, uint64_t a8)
{
  if (a6 >= 2)
  {
    v11 = a2;
    if (a6 == 2)
    {
      v12 = a4[-a3];
      v13 = *a2;
      v14 = a5[1];
      v15 = *(*a5 + 2 * v14 * v12);
      v16 = *(*a5 + 2 * v14 * v13);
      if (v15 < v16 || (v12 < v13 ? (v17 = v15 == v16) : (v17 = 0), v17))
      {
        *a2 = v12;
        a4[-a3] = v13;
      }
    }

    else
    {
      v18 = result;
      if (a6 > 128)
      {
        v35 = a7;
        v36 = a6 >> 1;
        v37 = a6;
        v52 = a6 - (a6 >> 1);
        v38 = &a2[result * v36];
        if (a6 <= a8)
        {
          v39 = &v35[v36];
          v40 = *a5;
          v41 = a5[1];
          v42 = 4 * v18;
          v43 = v39;
          v44 = &v35[v37];
          while (v43 != v44)
          {
            v45 = *v43;
            v46 = *v35;
            v47 = *(v40 + 2 * v41 * v45);
            v48 = *(v40 + 2 * v41 * v46);
            if (v47 < v48 || (v45 < v46 ? (v49 = v47 == v48) : (v49 = 0), v49))
            {
              *v11 = v45;
              ++v43;
            }

            else
            {
              *v11 = v46;
              ++v35;
            }

            v11 += v42;
            if (v35 == v39)
            {
              while (v43 != v44)
              {
                v51 = *v43++;
                *v11 = v51;
                v11 += v42;
              }

              return result;
            }
          }

          while (v35 != v39)
          {
            v50 = *v35++;
            *v11 = v50;
            v11 += v42;
          }
        }

        else
        {
        }
      }

      else if (a2 != a4 || result != a3)
      {
        v19 = &a2[result];
        if (v19 != a4)
        {
          v20 = 0;
          v21 = *a5;
          v22 = a5[1];
          v23 = 4 * result;
          v24 = a2;
          do
          {
            v25 = v19;
            v26 = *v19;
            v27 = *v24;
            v28 = *(v21 + 2 * v22 * v26);
            result = *(v21 + 2 * v22 * v27);
            if (v28 < result || (v26 < v27 ? (v29 = v28 == result) : (v29 = 0), v29))
            {
              *v25 = v27;
              if (v24 == a2)
              {
LABEL_30:
                v33 = a2;
              }

              else
              {
                v30 = v20;
                while (1)
                {
                  v31 = *(a2 + v30 + -4 * v18);
                  result = *(v21 + 2 * v22 * v31);
                  if (v28 >= result && (v26 >= v31 || v28 != result))
                  {
                    break;
                  }

                  *(a2 + v30) = v31;
                  v30 -= v23;
                  if (!v30)
                  {
                    goto LABEL_30;
                  }
                }

                v33 = (a2 + v30);
              }

              *v33 = v26;
            }

            v19 = &v25[v18];
            v20 += v23;
            v24 = v25;
          }

          while (v19 != a4);
        }
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<unsigned short,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7)
{
  if (a6)
  {
    v7 = a7;
    v9 = a2;
    if (a6 == 1)
    {
LABEL_8:
      *v7 = *v9;
      return result;
    }

    if (a6 == 2)
    {
      v13 = a4[-a3];
      v14 = *a2;
      v15 = a5[1];
      v16 = *(*a5 + 2 * v15 * v13);
      v17 = *(*a5 + 2 * v15 * v14);
      if (v16 >= v17 && (v13 >= v14 || v16 != v17))
      {
        LODWORD(v13) = *a2;
        v9 = &a4[-a3];
      }

      *a7 = v13;
      v7 = a7 + 1;
      goto LABEL_8;
    }

    v18 = result;
    if (a6 > 8)
    {
      v37 = a6 >> 1;
      v38 = &a2[result * v37];
      if (4 * v18 * v37)
      {
        v40 = *a5;
        v41 = a5[1];
        v39 = &v9[v18 * v37];
        while (v39 != a4 || v18 != a3)
        {
          v42 = *v39;
          v43 = *v9;
          v44 = *(v40 + 2 * v41 * v42);
          v45 = *(v40 + 2 * v41 * v43);
          if (v44 < v45 || (v42 < v43 ? (v46 = v44 == v45) : (v46 = 0), v46))
          {
            *v7 = v42;
            v39 += v18;
          }

          else
          {
            *v7 = v43;
            v9 += v18;
          }

          ++v7;
          if (v9 == v38)
          {
            goto LABEL_46;
          }
        }

        for (; v9 != v38; v9 += v18)
        {
          *v7++ = *v9;
        }
      }

      else
      {
        v39 = &v9[v18 * v37];
LABEL_46:
        while (v39 != a4)
        {
          *v7++ = *v39;
          v39 += v18;
        }
      }
    }

    else if (a2 != a4)
    {
      *a7 = *a2;
      v19 = &a2[result];
      if (v19 != a4)
      {
        v20 = 0;
        v21 = *a5;
        v22 = a5[1];
        v23 = a7;
        v24 = a7;
        do
        {
          v26 = *v24++;
          v25 = v26;
          v27 = *v19;
          v28 = *(v21 + 2 * v22 * v27);
          v29 = *(v21 + 2 * v22 * v26);
          if (v28 < v29 || (v27 < v25 ? (v30 = v28 == v29) : (v30 = 0), v30))
          {
            v23[1] = v25;
            v31 = a7;
            if (v23 != a7)
            {
              v32 = v20;
              do
              {
                v33 = *v19;
                v34 = *(a7 + v32 - 4);
                v35 = *(v21 + 2 * v22 * v33);
                result = *(v21 + 2 * v22 * v34);
                if (v35 >= result && (v33 >= v34 || v35 != result))
                {
                  v31 = (a7 + v32);
                  goto LABEL_30;
                }

                *(a7 + v32) = v34;
                v32 -= 4;
              }

              while (v32);
              v31 = a7;
            }

LABEL_30:
            *v31 = *v19;
          }

          else
          {
            *v24 = v27;
          }

          v19 += v18;
          v20 += 4;
          v23 = v24;
        }

        while (v19 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<unsigned short,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t *a7, int a8, int a9, unsigned int *a10, uint64_t a11)
{
  v11 = a9;
  if (a9)
  {
    LODWORD(v12) = a8;
    v13 = a7;
    v84 = a10;
    while (v11 > a11 && v12 > a11)
    {
      if (!v12)
      {
        return result;
      }

      v16 = 0;
      v17 = *a4;
      v18 = *v13;
      v19 = v13[1];
      v20 = *(*v13 + 2 * v19 * v17);
      v21 = -v12;
      v22 = 4 * result;
      while (1)
      {
        v23 = *&a2[v16];
        v24 = *(v18 + 2 * v19 * v23);
        if (v20 < v24)
        {
          break;
        }

        if (v17 < v23 && v20 == v24)
        {
          break;
        }

        v16 += v22;
        if (__CFADD__(v21++, 1))
        {
          return result;
        }
      }

      v82 = a5;
      v83 = a6;
      v78 = &a2[v16];
      if (-v21 >= v11)
      {
        if (v21 == -1)
        {
          *&a2[v16] = v17;
          *a4 = v23;
          return result;
        }

        v37 = (v21 > 0) - v21;
        v31 = &a2[4 * result * (v37 >> 1) + v16];
        v38 = ((a6 - a4) >> 2) / a5;
        if (v38)
        {
          v39 = *v31;
          v40 = *(v18 + 2 * v19 * v39);
          v27 = a4;
          do
          {
            v41 = v38 >> 1;
            v42 = &v27[a3 * v41];
            v43 = *v42;
            v44 = *(v18 + 2 * v19 * v43);
            if (v44 < v40 || (v43 < v39 ? (v45 = v44 == v40) : (v45 = 0), v45))
            {
              v27 = &v42[a3];
              LODWORD(v41) = v38 + ~v41;
            }

            LODWORD(v38) = v41;
          }

          while (v41);
        }

        else
        {
          v27 = a4;
        }

        v86 = (v37 >> 1);
        v85 = ((v27 - a4) >> 2) / a3;
      }

      else
      {
        v27 = &a4[4 * a3 * ((v11 + (v11 >> 31)) >> 1)];
        v28 = ((a4 - a2 - v16) >> 2) / a3;
        if (v28)
        {
          v29 = *v27;
          v30 = *(v18 + 2 * v19 * v29);
          v31 = &a2[v16];
          do
          {
            v32 = v28 >> 1;
            v33 = &v31[v22 * v32];
            v34 = *v33;
            v35 = *(v18 + 2 * v19 * v34);
            if (v30 >= v35 && (v29 >= v34 || v30 != v35))
            {
              v31 = &v33[4 * result];
              LODWORD(v32) = v28 + ~v32;
            }

            LODWORD(v28) = v32;
          }

          while (v32);
        }

        else
        {
          v31 = &a2[v16];
        }

        LODWORD(v85) = v11 / 2;
        v86 = ((v31 - a2 - v16) >> 2) / result;
      }

      v12 = (-v21 - v86);
      v80 = a3;
      v81 = result;
      v46 = v88;
      if (v86 + v85 >= v11 - (v86 + v85) - v21)
      {
        v51 = v88;
        v52 = v87;
        v27 = v31;
        v13 = a7;
        result = v81;
        a3 = v81;
        v46 = v78;
        v50 = v85;
        LODWORD(v12) = v86;
        a5 = v52;
        a6 = v51;
      }

      else
      {
        v47 = &a2[v16];
        v48 = v31;
        v49 = v87;
        v13 = a7;
        result = v49;
        a5 = v82;
        a6 = v83;
        a3 = v80;
        v50 = v11 - v85;
      }

      v11 = v50;
      a2 = v46;
      a4 = v27;
      if (!v50)
      {
        return result;
      }
    }

    if (v12 <= v11)
    {
      if (a2 != a4)
      {
        v63 = 4 * result;
        v64 = a2;
        v65 = a10;
        do
        {
          *v65++ = *v64;
          v64 = (v64 + v63);
        }

        while (v64 != a4);
        v66 = *v13;
        v67 = v13[1];
        v68 = v65 - 1;
        while (a4 != a6 || a3 != a5)
        {
          v69 = *a4;
          v70 = *v84;
          v71 = *(v66 + 2 * v67 * v69);
          v72 = *(v66 + 2 * v67 * v70);
          if (v71 < v72 || (v69 < v70 ? (v73 = v71 == v72) : (v73 = 0), v73))
          {
            *a2 = v69;
            a4 += 4 * a3;
          }

          else
          {
            *a2 = v70;
            ++v84;
          }

          a2 += v63;
          if (v65 == v84)
          {
            return result;
          }
        }

        v74 = v84 - 1;
        do
        {
          v75 = v74[1];
          ++v74;
          *a2 = v75;
          a2 += v63;
        }

        while (v68 != v74);
      }
    }

    else if (a6 != a4)
    {
      v53 = a4;
      v54 = a10;
      do
      {
        *v54++ = *v53;
        v53 += 4 * a3;
      }

      while (v53 != a6);
      v55 = *v13;
      v56 = v13[1];
      while (a2 != a4 || a3 != result)
      {
        v57 = &a4[-4 * a3];
        v58 = *(v54 - 1);
        v59 = *v57;
        v60 = *(v55 + 2 * v56 * v58);
        v61 = *(v55 + 2 * v56 * v59);
        if (v60 >= v61 && (v58 >= v59 || v60 != v61))
        {
          LODWORD(v59) = *(v54 - 1);
          v57 = a4;
          --v54;
        }

        a6 -= 4 * a5;
        *a6 = v59;
        a4 = v57;
        if (v54 == a10)
        {
          return result;
        }
      }

      if (v54 != a10)
      {
        v76 = -4 * a5;
        do
        {
          v77 = *--v54;
          *&a6[v76] = v77;
          v76 -= 4 * a5;
        }

        while (v54 != a10);
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<unsigned int,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7, uint64_t a8)
{
  if (a6 >= 2)
  {
    v11 = a2;
    if (a6 == 2)
    {
      v12 = a4[-a3];
      v13 = *a2;
      v14 = a5[1];
      v15 = *(*a5 + 4 * v14 * v12);
      v16 = *(*a5 + 4 * v14 * v13);
      if (v15 < v16 || (v12 < v13 ? (v17 = v15 == v16) : (v17 = 0), v17))
      {
        *a2 = v12;
        a4[-a3] = v13;
      }
    }

    else
    {
      v18 = result;
      if (a6 > 128)
      {
        v36 = a7;
        v37 = a6 >> 1;
        v38 = a6;
        v53 = a6 - (a6 >> 1);
        v39 = &a2[result * v37];
        if (a6 <= a8)
        {
          v40 = &v36[v37];
          v41 = *a5;
          v42 = a5[1];
          v43 = 4 * v18;
          v44 = v40;
          v45 = &v36[v38];
          while (v44 != v45)
          {
            v46 = *v44;
            v47 = *v36;
            v48 = *(v41 + 4 * v42 * v46);
            v49 = *(v41 + 4 * v42 * v47);
            if (v48 < v49 || (v46 < v47 ? (v50 = v48 == v49) : (v50 = 0), v50))
            {
              *v11 = v46;
              ++v44;
            }

            else
            {
              *v11 = v47;
              ++v36;
            }

            v11 += v43;
            if (v36 == v40)
            {
              while (v44 != v45)
              {
                v52 = *v44++;
                *v11 = v52;
                v11 += v43;
              }

              return result;
            }
          }

          while (v36 != v40)
          {
            v51 = *v36++;
            *v11 = v51;
            v11 += v43;
          }
        }

        else
        {
        }
      }

      else if (a2 != a4 || result != a3)
      {
        v19 = &a2[result];
        if (v19 != a4)
        {
          v20 = 0;
          v21 = *a5;
          v22 = a5[1];
          v23 = 4 * result;
          v24 = a2;
          do
          {
            v25 = v19;
            v26 = *v19;
            v27 = *v24;
            result = *(v21 + 4 * v22 * v26);
            v28 = *(v21 + 4 * v22 * v27);
            if (result < v28 || (v26 < v27 ? (v29 = result == v28) : (v29 = 0), v29))
            {
              *v25 = v27;
              if (v24 == v11)
              {
LABEL_30:
                v34 = v11;
              }

              else
              {
                v30 = v20;
                while (1)
                {
                  v31 = *&v11[v30 + -4 * v18];
                  result = *(v21 + 4 * v22 * v26);
                  v32 = *(v21 + 4 * v22 * v31);
                  if (result >= v32 && (v26 >= v31 || result != v32))
                  {
                    break;
                  }

                  *&v11[v30] = v31;
                  v30 -= v23;
                  if (!v30)
                  {
                    goto LABEL_30;
                  }
                }

                v34 = &v11[v30];
              }

              *v34 = v26;
            }

            v19 = &v25[v18];
            v20 += v23;
            v24 = v25;
          }

          while (v19 != a4);
        }
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<unsigned int,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7)
{
  if (a6)
  {
    v7 = a7;
    v9 = a2;
    if (a6 == 1)
    {
LABEL_8:
      *v7 = *v9;
      return result;
    }

    if (a6 == 2)
    {
      v13 = a4[-a3];
      v14 = *a2;
      v15 = a5[1];
      v16 = *(*a5 + 4 * v15 * v13);
      v17 = *(*a5 + 4 * v15 * v14);
      if (v16 >= v17 && (v13 >= v14 || v16 != v17))
      {
        LODWORD(v13) = *a2;
        v9 = &a4[-a3];
      }

      *a7 = v13;
      v7 = a7 + 1;
      goto LABEL_8;
    }

    v18 = result;
    if (a6 > 8)
    {
      v37 = a6 >> 1;
      v38 = &a2[result * v37];
      if (4 * v18 * v37)
      {
        v40 = *a5;
        v41 = a5[1];
        v39 = &v9[v18 * v37];
        while (v39 != a4 || v18 != a3)
        {
          v42 = *v39;
          v43 = *v9;
          v44 = *(v40 + 4 * v41 * v42);
          v45 = *(v40 + 4 * v41 * v43);
          if (v44 < v45 || (v42 < v43 ? (v46 = v44 == v45) : (v46 = 0), v46))
          {
            *v7 = v42;
            v39 += v18;
          }

          else
          {
            *v7 = v43;
            v9 += v18;
          }

          ++v7;
          if (v9 == v38)
          {
            goto LABEL_46;
          }
        }

        for (; v9 != v38; v9 += v18)
        {
          *v7++ = *v9;
        }
      }

      else
      {
        v39 = &v9[v18 * v37];
LABEL_46:
        while (v39 != a4)
        {
          *v7++ = *v39;
          v39 += v18;
        }
      }
    }

    else if (a2 != a4)
    {
      *a7 = *a2;
      v19 = &a2[result];
      if (v19 != a4)
      {
        v20 = 0;
        v21 = *a5;
        v22 = a5[1];
        v23 = a7;
        v24 = a7;
        do
        {
          v26 = *v24++;
          v25 = v26;
          v27 = *v19;
          v28 = *(v21 + 4 * v22 * v27);
          v29 = *(v21 + 4 * v22 * v26);
          if (v28 < v29 || (v27 < v25 ? (v30 = v28 == v29) : (v30 = 0), v30))
          {
            v23[1] = v25;
            v31 = a7;
            if (v23 != a7)
            {
              v32 = v20;
              do
              {
                v33 = *v19;
                v34 = *(a7 + v32 - 4);
                v35 = *(v21 + 4 * v22 * v33);
                result = *(v21 + 4 * v22 * v34);
                if (v35 >= result && (v33 >= v34 || v35 != result))
                {
                  v31 = (a7 + v32);
                  goto LABEL_30;
                }

                *(a7 + v32) = v34;
                v32 -= 4;
              }

              while (v32);
              v31 = a7;
            }

LABEL_30:
            *v31 = *v19;
          }

          else
          {
            *v24 = v27;
          }

          v19 += v18;
          v20 += 4;
          v23 = v24;
        }

        while (v19 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<unsigned int,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t *a7, int a8, int a9, unsigned int *a10, uint64_t a11)
{
  v11 = a9;
  if (a9)
  {
    LODWORD(v12) = a8;
    v13 = a7;
    v84 = a10;
    while (v11 > a11 && v12 > a11)
    {
      if (!v12)
      {
        return result;
      }

      v16 = 0;
      v17 = *a4;
      v18 = *v13;
      v19 = v13[1];
      v20 = *(*v13 + 4 * v19 * v17);
      v21 = -v12;
      v22 = 4 * result;
      while (1)
      {
        v23 = *&a2[v16];
        v24 = *(v18 + 4 * v19 * v23);
        if (v20 < v24)
        {
          break;
        }

        if (v17 < v23 && v20 == v24)
        {
          break;
        }

        v16 += v22;
        if (__CFADD__(v21++, 1))
        {
          return result;
        }
      }

      v82 = a5;
      v83 = a6;
      v78 = &a2[v16];
      if (-v21 >= v11)
      {
        if (v21 == -1)
        {
          *&a2[v16] = v17;
          *a4 = v23;
          return result;
        }

        v37 = (v21 > 0) - v21;
        v31 = &a2[4 * result * (v37 >> 1) + v16];
        v38 = ((a6 - a4) >> 2) / a5;
        if (v38)
        {
          v39 = *v31;
          v40 = *(v18 + 4 * v19 * v39);
          v27 = a4;
          do
          {
            v41 = v38 >> 1;
            v42 = &v27[a3 * v41];
            v43 = *v42;
            v44 = *(v18 + 4 * v19 * v43);
            if (v44 < v40 || (v43 < v39 ? (v45 = v44 == v40) : (v45 = 0), v45))
            {
              v27 = &v42[a3];
              LODWORD(v41) = v38 + ~v41;
            }

            LODWORD(v38) = v41;
          }

          while (v41);
        }

        else
        {
          v27 = a4;
        }

        v86 = (v37 >> 1);
        v85 = ((v27 - a4) >> 2) / a3;
      }

      else
      {
        v27 = &a4[4 * a3 * ((v11 + (v11 >> 31)) >> 1)];
        v28 = ((a4 - a2 - v16) >> 2) / a3;
        if (v28)
        {
          v29 = *v27;
          v30 = *(v18 + 4 * v19 * v29);
          v31 = &a2[v16];
          do
          {
            v32 = v28 >> 1;
            v33 = &v31[v22 * v32];
            v34 = *v33;
            v35 = *(v18 + 4 * v19 * v34);
            if (v30 >= v35 && (v29 >= v34 || v30 != v35))
            {
              v31 = &v33[4 * result];
              LODWORD(v32) = v28 + ~v32;
            }

            LODWORD(v28) = v32;
          }

          while (v32);
        }

        else
        {
          v31 = &a2[v16];
        }

        LODWORD(v85) = v11 / 2;
        v86 = ((v31 - a2 - v16) >> 2) / result;
      }

      v12 = (-v21 - v86);
      v80 = a3;
      v81 = result;
      v46 = v88;
      if (v86 + v85 >= v11 - (v86 + v85) - v21)
      {
        v51 = v88;
        v52 = v87;
        v27 = v31;
        v13 = a7;
        result = v81;
        a3 = v81;
        v46 = v78;
        v50 = v85;
        LODWORD(v12) = v86;
        a5 = v52;
        a6 = v51;
      }

      else
      {
        v47 = &a2[v16];
        v48 = v31;
        v49 = v87;
        v13 = a7;
        result = v49;
        a5 = v82;
        a6 = v83;
        a3 = v80;
        v50 = v11 - v85;
      }

      v11 = v50;
      a2 = v46;
      a4 = v27;
      if (!v50)
      {
        return result;
      }
    }

    if (v12 <= v11)
    {
      if (a2 != a4)
      {
        v63 = 4 * result;
        v64 = a2;
        v65 = a10;
        do
        {
          *v65++ = *v64;
          v64 = (v64 + v63);
        }

        while (v64 != a4);
        v66 = *v13;
        v67 = v13[1];
        v68 = v65 - 1;
        while (a4 != a6 || a3 != a5)
        {
          v69 = *a4;
          v70 = *v84;
          v71 = *(v66 + 4 * v67 * v69);
          v72 = *(v66 + 4 * v67 * v70);
          if (v71 < v72 || (v69 < v70 ? (v73 = v71 == v72) : (v73 = 0), v73))
          {
            *a2 = v69;
            a4 += 4 * a3;
          }

          else
          {
            *a2 = v70;
            ++v84;
          }

          a2 += v63;
          if (v65 == v84)
          {
            return result;
          }
        }

        v74 = v84 - 1;
        do
        {
          v75 = v74[1];
          ++v74;
          *a2 = v75;
          a2 += v63;
        }

        while (v68 != v74);
      }
    }

    else if (a6 != a4)
    {
      v53 = a4;
      v54 = a10;
      do
      {
        *v54++ = *v53;
        v53 += 4 * a3;
      }

      while (v53 != a6);
      v55 = *v13;
      v56 = v13[1];
      while (a2 != a4 || a3 != result)
      {
        v57 = &a4[-4 * a3];
        v58 = *(v54 - 1);
        v59 = *v57;
        v60 = *(v55 + 4 * v56 * v58);
        v61 = *(v55 + 4 * v56 * v59);
        if (v60 >= v61 && (v58 >= v59 || v60 != v61))
        {
          LODWORD(v59) = *(v54 - 1);
          v57 = a4;
          --v54;
        }

        a6 -= 4 * a5;
        *a6 = v59;
        a4 = v57;
        if (v54 == a10)
        {
          return result;
        }
      }

      if (v54 != a10)
      {
        v76 = -4 * a5;
        do
        {
          v77 = *--v54;
          *&a6[v76] = v77;
          v76 -= 4 * a5;
        }

        while (v54 != a10);
      }
    }
  }

  return result;
}

unint64_t std::__stable_sort<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<unsigned long long,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(unint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7, uint64_t a8)
{
  if (a6 >= 2)
  {
    v11 = a2;
    if (a6 == 2)
    {
      v12 = a4[-a3];
      v13 = *a2;
      v14 = a5[1];
      v15 = *(*a5 + 8 * v14 * v12);
      v16 = *(*a5 + 8 * v14 * v13);
      if (v15 < v16 || (v12 < v13 ? (v17 = v15 == v16) : (v17 = 0), v17))
      {
        *a2 = v12;
        a4[-a3] = v13;
      }
    }

    else
    {
      v18 = result;
      if (a6 > 128)
      {
        v35 = a7;
        v36 = a6 >> 1;
        v37 = a6;
        v52 = a6 - (a6 >> 1);
        v38 = &a2[result * v36];
        if (a6 <= a8)
        {
          v39 = &v35[v36];
          v40 = *a5;
          v41 = a5[1];
          v42 = 4 * v18;
          v43 = v39;
          v44 = &v35[v37];
          while (v43 != v44)
          {
            v45 = *v43;
            v46 = *v35;
            v47 = *(v40 + 8 * v41 * v45);
            v48 = *(v40 + 8 * v41 * v46);
            if (v47 < v48 || (v45 < v46 ? (v49 = v47 == v48) : (v49 = 0), v49))
            {
              *v11 = v45;
              ++v43;
            }

            else
            {
              *v11 = v46;
              ++v35;
            }

            v11 += v42;
            if (v35 == v39)
            {
              while (v43 != v44)
              {
                v51 = *v43++;
                *v11 = v51;
                v11 += v42;
              }

              return result;
            }
          }

          while (v35 != v39)
          {
            v50 = *v35++;
            *v11 = v50;
            v11 += v42;
          }
        }

        else
        {
        }
      }

      else if (a2 != a4 || result != a3)
      {
        v19 = &a2[result];
        if (v19 != a4)
        {
          v20 = 0;
          v21 = *a5;
          v22 = a5[1];
          v23 = 4 * result;
          v24 = a2;
          do
          {
            v25 = v19;
            v26 = *v19;
            v27 = *v24;
            v28 = *(v21 + 8 * v22 * v26);
            result = *(v21 + 8 * v22 * v27);
            if (v28 < result || (v26 < v27 ? (v29 = v28 == result) : (v29 = 0), v29))
            {
              *v25 = v27;
              if (v24 == a2)
              {
LABEL_30:
                v33 = a2;
              }

              else
              {
                v30 = v20;
                while (1)
                {
                  v31 = *(a2 + v30 + -4 * v18);
                  result = *(v21 + 8 * v22 * v31);
                  if (v28 >= result && (v26 >= v31 || v28 != result))
                  {
                    break;
                  }

                  *(a2 + v30) = v31;
                  v30 -= v23;
                  if (!v30)
                  {
                    goto LABEL_30;
                  }
                }

                v33 = (a2 + v30);
              }

              *v33 = v26;
            }

            v19 = &v25[v18];
            v20 += v23;
            v24 = v25;
          }

          while (v19 != a4);
        }
      }
    }
  }

  return result;
}

unint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<unsigned long long,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(unint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7)
{
  if (a6)
  {
    v7 = a7;
    v9 = a2;
    if (a6 == 1)
    {
LABEL_8:
      *v7 = *v9;
      return result;
    }

    if (a6 == 2)
    {
      v13 = a4[-a3];
      v14 = *a2;
      v15 = a5[1];
      v16 = *(*a5 + 8 * v15 * v13);
      v17 = *(*a5 + 8 * v15 * v14);
      if (v16 >= v17 && (v13 >= v14 || v16 != v17))
      {
        LODWORD(v13) = *a2;
        v9 = &a4[-a3];
      }

      *a7 = v13;
      v7 = a7 + 1;
      goto LABEL_8;
    }

    v18 = result;
    if (a6 > 8)
    {
      v37 = a6 >> 1;
      v38 = &a2[result * v37];
      if (4 * v18 * v37)
      {
        v40 = *a5;
        v41 = a5[1];
        v39 = &v9[v18 * v37];
        while (v39 != a4 || v18 != a3)
        {
          v42 = *v39;
          v43 = *v9;
          v44 = *(v40 + 8 * v41 * v42);
          v45 = *(v40 + 8 * v41 * v43);
          if (v44 < v45 || (v42 < v43 ? (v46 = v44 == v45) : (v46 = 0), v46))
          {
            *v7 = v42;
            v39 += v18;
          }

          else
          {
            *v7 = v43;
            v9 += v18;
          }

          ++v7;
          if (v9 == v38)
          {
            goto LABEL_46;
          }
        }

        for (; v9 != v38; v9 += v18)
        {
          *v7++ = *v9;
        }
      }

      else
      {
        v39 = &v9[v18 * v37];
LABEL_46:
        while (v39 != a4)
        {
          *v7++ = *v39;
          v39 += v18;
        }
      }
    }

    else if (a2 != a4)
    {
      *a7 = *a2;
      v19 = &a2[result];
      if (v19 != a4)
      {
        v20 = 0;
        v21 = *a5;
        v22 = a5[1];
        v23 = a7;
        v24 = a7;
        do
        {
          v26 = *v24++;
          v25 = v26;
          v27 = *v19;
          v28 = *(v21 + 8 * v22 * v27);
          v29 = *(v21 + 8 * v22 * v26);
          if (v28 < v29 || (v27 < v25 ? (v30 = v28 == v29) : (v30 = 0), v30))
          {
            v23[1] = v25;
            v31 = a7;
            if (v23 != a7)
            {
              v32 = v20;
              do
              {
                v33 = *v19;
                v34 = *(a7 + v32 - 4);
                v35 = *(v21 + 8 * v22 * v33);
                result = *(v21 + 8 * v22 * v34);
                if (v35 >= result && (v33 >= v34 || v35 != result))
                {
                  v31 = (a7 + v32);
                  goto LABEL_30;
                }

                *(a7 + v32) = v34;
                v32 -= 4;
              }

              while (v32);
              v31 = a7;
            }

LABEL_30:
            *v31 = *v19;
          }

          else
          {
            *v24 = v27;
          }

          v19 += v18;
          v20 += 4;
          v23 = v24;
        }

        while (v19 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<unsigned long long,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t *a7, int a8, int a9, unsigned int *a10, uint64_t a11)
{
  v11 = a9;
  if (a9)
  {
    LODWORD(v12) = a8;
    v13 = a7;
    v84 = a10;
    while (v11 > a11 && v12 > a11)
    {
      if (!v12)
      {
        return result;
      }

      v16 = 0;
      v17 = *a4;
      v18 = *v13;
      v19 = v13[1];
      v20 = *(*v13 + 8 * v19 * v17);
      v21 = -v12;
      v22 = 4 * result;
      while (1)
      {
        v23 = *&a2[v16];
        v24 = *(v18 + 8 * v19 * v23);
        if (v20 < v24)
        {
          break;
        }

        if (v17 < v23 && v20 == v24)
        {
          break;
        }

        v16 += v22;
        if (__CFADD__(v21++, 1))
        {
          return result;
        }
      }

      v82 = a5;
      v83 = a6;
      v78 = &a2[v16];
      if (-v21 >= v11)
      {
        if (v21 == -1)
        {
          *&a2[v16] = v17;
          *a4 = v23;
          return result;
        }

        v37 = (v21 > 0) - v21;
        v31 = &a2[4 * result * (v37 >> 1) + v16];
        v38 = ((a6 - a4) >> 2) / a5;
        if (v38)
        {
          v39 = *v31;
          v40 = *(v18 + 8 * v19 * v39);
          v27 = a4;
          do
          {
            v41 = v38 >> 1;
            v42 = &v27[a3 * v41];
            v43 = *v42;
            v44 = *(v18 + 8 * v19 * v43);
            if (v44 < v40 || (v43 < v39 ? (v45 = v44 == v40) : (v45 = 0), v45))
            {
              v27 = &v42[a3];
              LODWORD(v41) = v38 + ~v41;
            }

            LODWORD(v38) = v41;
          }

          while (v41);
        }

        else
        {
          v27 = a4;
        }

        v86 = (v37 >> 1);
        v85 = ((v27 - a4) >> 2) / a3;
      }

      else
      {
        v27 = &a4[4 * a3 * ((v11 + (v11 >> 31)) >> 1)];
        v28 = ((a4 - a2 - v16) >> 2) / a3;
        if (v28)
        {
          v29 = *v27;
          v30 = *(v18 + 8 * v19 * v29);
          v31 = &a2[v16];
          do
          {
            v32 = v28 >> 1;
            v33 = &v31[v22 * v32];
            v34 = *v33;
            v35 = *(v18 + 8 * v19 * v34);
            if (v30 >= v35 && (v29 >= v34 || v30 != v35))
            {
              v31 = &v33[4 * result];
              LODWORD(v32) = v28 + ~v32;
            }

            LODWORD(v28) = v32;
          }

          while (v32);
        }

        else
        {
          v31 = &a2[v16];
        }

        LODWORD(v85) = v11 / 2;
        v86 = ((v31 - a2 - v16) >> 2) / result;
      }

      v12 = (-v21 - v86);
      v80 = a3;
      v81 = result;
      v46 = v88;
      if (v86 + v85 >= v11 - (v86 + v85) - v21)
      {
        v51 = v88;
        v52 = v87;
        v27 = v31;
        v13 = a7;
        result = v81;
        a3 = v81;
        v46 = v78;
        v50 = v85;
        LODWORD(v12) = v86;
        a5 = v52;
        a6 = v51;
      }

      else
      {
        v47 = &a2[v16];
        v48 = v31;
        v49 = v87;
        v13 = a7;
        result = v49;
        a5 = v82;
        a6 = v83;
        a3 = v80;
        v50 = v11 - v85;
      }

      v11 = v50;
      a2 = v46;
      a4 = v27;
      if (!v50)
      {
        return result;
      }
    }

    if (v12 <= v11)
    {
      if (a2 != a4)
      {
        v63 = 4 * result;
        v64 = a2;
        v65 = a10;
        do
        {
          *v65++ = *v64;
          v64 = (v64 + v63);
        }

        while (v64 != a4);
        v66 = *v13;
        v67 = v13[1];
        v68 = v65 - 1;
        while (a4 != a6 || a3 != a5)
        {
          v69 = *a4;
          v70 = *v84;
          v71 = *(v66 + 8 * v67 * v69);
          v72 = *(v66 + 8 * v67 * v70);
          if (v71 < v72 || (v69 < v70 ? (v73 = v71 == v72) : (v73 = 0), v73))
          {
            *a2 = v69;
            a4 += 4 * a3;
          }

          else
          {
            *a2 = v70;
            ++v84;
          }

          a2 += v63;
          if (v65 == v84)
          {
            return result;
          }
        }

        v74 = v84 - 1;
        do
        {
          v75 = v74[1];
          ++v74;
          *a2 = v75;
          a2 += v63;
        }

        while (v68 != v74);
      }
    }

    else if (a6 != a4)
    {
      v53 = a4;
      v54 = a10;
      do
      {
        *v54++ = *v53;
        v53 += 4 * a3;
      }

      while (v53 != a6);
      v55 = *v13;
      v56 = v13[1];
      while (a2 != a4 || a3 != result)
      {
        v57 = &a4[-4 * a3];
        v58 = *(v54 - 1);
        v59 = *v57;
        v60 = *(v55 + 8 * v56 * v58);
        v61 = *(v55 + 8 * v56 * v59);
        if (v60 >= v61 && (v58 >= v59 || v60 != v61))
        {
          LODWORD(v59) = *(v54 - 1);
          v57 = a4;
          --v54;
        }

        a6 -= 4 * a5;
        *a6 = v59;
        a4 = v57;
        if (v54 == a10)
        {
          return result;
        }
      }

      if (v54 != a10)
      {
        v76 = -4 * a5;
        do
        {
          v77 = *--v54;
          *&a6[v76] = v77;
          v76 -= 4 * a5;
        }

        while (v54 != a10);
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<signed char,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7, uint64_t a8)
{
  if (a6 >= 2)
  {
    v11 = a2;
    if (a6 == 2)
    {
      v12 = a4[-a3];
      v13 = *a2;
      v14 = a5[1];
      v15 = *(*a5 + v14 * v12);
      v16 = *(*a5 + v14 * v13);
      if (v15 < v16 || (v12 < v13 ? (v17 = v15 == v16) : (v17 = 0), v17))
      {
        *a2 = v12;
        a4[-a3] = v13;
      }
    }

    else
    {
      v18 = result;
      if (a6 > 128)
      {
        v36 = a7;
        v37 = a6 >> 1;
        v38 = a6;
        v53 = a6 - (a6 >> 1);
        v39 = &a2[result * v37];
        if (a6 <= a8)
        {
          v40 = &v36[v37];
          v41 = *a5;
          v42 = a5[1];
          v43 = 4 * v18;
          v44 = v40;
          v45 = &v36[v38];
          while (v44 != v45)
          {
            v46 = *v44;
            v47 = *v36;
            v48 = *(v41 + v42 * v46);
            v49 = *(v41 + v42 * v47);
            if (v48 < v49 || (v46 < v47 ? (v50 = v48 == v49) : (v50 = 0), v50))
            {
              *v11 = v46;
              ++v44;
            }

            else
            {
              *v11 = v47;
              ++v36;
            }

            v11 += v43;
            if (v36 == v40)
            {
              while (v44 != v45)
              {
                v52 = *v44++;
                *v11 = v52;
                v11 += v43;
              }

              return result;
            }
          }

          while (v36 != v40)
          {
            v51 = *v36++;
            *v11 = v51;
            v11 += v43;
          }
        }

        else
        {
        }
      }

      else if (a2 != a4 || result != a3)
      {
        v19 = &a2[result];
        if (v19 != a4)
        {
          v20 = 0;
          v21 = *a5;
          v22 = a5[1];
          v23 = 4 * result;
          v24 = a2;
          do
          {
            v25 = v19;
            v26 = *v19;
            v27 = *v24;
            result = *(v21 + v22 * v26);
            v28 = *(v21 + v22 * v27);
            if (result < v28 || (v26 < v27 ? (v29 = result == v28) : (v29 = 0), v29))
            {
              *v25 = v27;
              if (v24 == v11)
              {
LABEL_30:
                v34 = v11;
              }

              else
              {
                v30 = v20;
                while (1)
                {
                  v31 = *&v11[v30 + -4 * v18];
                  result = *(v21 + v22 * v26);
                  v32 = *(v21 + v22 * v31);
                  if (result >= v32 && (v26 >= v31 || result != v32))
                  {
                    break;
                  }

                  *&v11[v30] = v31;
                  v30 -= v23;
                  if (!v30)
                  {
                    goto LABEL_30;
                  }
                }

                v34 = &v11[v30];
              }

              *v34 = v26;
            }

            v19 = &v25[v18];
            v20 += v23;
            v24 = v25;
          }

          while (v19 != a4);
        }
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<signed char,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7)
{
  if (a6)
  {
    v7 = a7;
    v9 = a2;
    if (a6 == 1)
    {
LABEL_8:
      *v7 = *v9;
      return result;
    }

    if (a6 == 2)
    {
      v13 = a4[-a3];
      v14 = *a2;
      v15 = a5[1];
      v16 = *(*a5 + v15 * v13);
      v17 = *(*a5 + v15 * v14);
      if (v16 >= v17 && (v13 >= v14 || v16 != v17))
      {
        LODWORD(v13) = *a2;
        v9 = &a4[-a3];
      }

      *a7 = v13;
      v7 = a7 + 1;
      goto LABEL_8;
    }

    v18 = result;
    if (a6 > 8)
    {
      v37 = a6 >> 1;
      v38 = &a2[result * v37];
      if (4 * v18 * v37)
      {
        v40 = *a5;
        v41 = a5[1];
        v39 = &v9[v18 * v37];
        while (v39 != a4 || v18 != a3)
        {
          v42 = *v39;
          v43 = *v9;
          v44 = *(v40 + v41 * v42);
          v45 = *(v40 + v41 * v43);
          if (v44 < v45 || (v42 < v43 ? (v46 = v44 == v45) : (v46 = 0), v46))
          {
            *v7 = v42;
            v39 += v18;
          }

          else
          {
            *v7 = v43;
            v9 += v18;
          }

          ++v7;
          if (v9 == v38)
          {
            goto LABEL_46;
          }
        }

        for (; v9 != v38; v9 += v18)
        {
          *v7++ = *v9;
        }
      }

      else
      {
        v39 = &v9[v18 * v37];
LABEL_46:
        while (v39 != a4)
        {
          *v7++ = *v39;
          v39 += v18;
        }
      }
    }

    else if (a2 != a4)
    {
      *a7 = *a2;
      v19 = &a2[result];
      if (v19 != a4)
      {
        v20 = 0;
        v21 = *a5;
        v22 = a5[1];
        v23 = a7;
        v24 = a7;
        do
        {
          v26 = *v24++;
          v25 = v26;
          v27 = *v19;
          v28 = *(v21 + v22 * v27);
          v29 = *(v21 + v22 * v26);
          if (v28 < v29 || (v27 < v25 ? (v30 = v28 == v29) : (v30 = 0), v30))
          {
            v23[1] = v25;
            v31 = a7;
            if (v23 != a7)
            {
              v32 = v20;
              do
              {
                v33 = *v19;
                v34 = *(a7 + v32 - 4);
                v35 = *(v21 + v22 * v33);
                result = *(v21 + v22 * v34);
                if (v35 >= result && (v33 >= v34 || v35 != result))
                {
                  v31 = (a7 + v32);
                  goto LABEL_30;
                }

                *(a7 + v32) = v34;
                v32 -= 4;
              }

              while (v32);
              v31 = a7;
            }

LABEL_30:
            *v31 = *v19;
          }

          else
          {
            *v24 = v27;
          }

          v19 += v18;
          v20 += 4;
          v23 = v24;
        }

        while (v19 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<signed char,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t *a7, int a8, int a9, unsigned int *a10, uint64_t a11)
{
  v11 = a9;
  if (a9)
  {
    LODWORD(v12) = a8;
    v13 = a7;
    v84 = a10;
    while (v11 > a11 && v12 > a11)
    {
      if (!v12)
      {
        return result;
      }

      v16 = 0;
      v17 = *a4;
      v18 = *v13;
      v19 = v13[1];
      v20 = *(*v13 + v19 * v17);
      v21 = -v12;
      v22 = 4 * result;
      while (1)
      {
        v23 = *&a2[v16];
        v24 = *(v18 + v19 * v23);
        if (v20 < v24)
        {
          break;
        }

        if (v17 < v23 && v20 == v24)
        {
          break;
        }

        v16 += v22;
        if (__CFADD__(v21++, 1))
        {
          return result;
        }
      }

      v82 = a5;
      v83 = a6;
      v78 = &a2[v16];
      if (-v21 >= v11)
      {
        if (v21 == -1)
        {
          *&a2[v16] = v17;
          *a4 = v23;
          return result;
        }

        v37 = (v21 > 0) - v21;
        v31 = &a2[4 * result * (v37 >> 1) + v16];
        v38 = ((a6 - a4) >> 2) / a5;
        if (v38)
        {
          v39 = *v31;
          v40 = *(v18 + v19 * v39);
          v27 = a4;
          do
          {
            v41 = v38 >> 1;
            v42 = &v27[a3 * v41];
            v43 = *v42;
            v44 = *(v18 + v19 * v43);
            if (v44 < v40 || (v43 < v39 ? (v45 = v44 == v40) : (v45 = 0), v45))
            {
              v27 = &v42[a3];
              LODWORD(v41) = v38 + ~v41;
            }

            LODWORD(v38) = v41;
          }

          while (v41);
        }

        else
        {
          v27 = a4;
        }

        v86 = (v37 >> 1);
        v85 = ((v27 - a4) >> 2) / a3;
      }

      else
      {
        v27 = &a4[4 * a3 * ((v11 + (v11 >> 31)) >> 1)];
        v28 = ((a4 - a2 - v16) >> 2) / a3;
        if (v28)
        {
          v29 = *v27;
          v30 = *(v18 + v19 * v29);
          v31 = &a2[v16];
          do
          {
            v32 = v28 >> 1;
            v33 = &v31[v22 * v32];
            v34 = *v33;
            v35 = *(v18 + v19 * v34);
            if (v30 >= v35 && (v29 >= v34 || v30 != v35))
            {
              v31 = &v33[4 * result];
              LODWORD(v32) = v28 + ~v32;
            }

            LODWORD(v28) = v32;
          }

          while (v32);
        }

        else
        {
          v31 = &a2[v16];
        }

        LODWORD(v85) = v11 / 2;
        v86 = ((v31 - a2 - v16) >> 2) / result;
      }

      v12 = (-v21 - v86);
      v80 = a3;
      v81 = result;
      v46 = v88;
      if (v86 + v85 >= v11 - (v86 + v85) - v21)
      {
        v51 = v88;
        v52 = v87;
        v27 = v31;
        v13 = a7;
        result = v81;
        a3 = v81;
        v46 = v78;
        v50 = v85;
        LODWORD(v12) = v86;
        a5 = v52;
        a6 = v51;
      }

      else
      {
        v47 = &a2[v16];
        v48 = v31;
        v49 = v87;
        v13 = a7;
        result = v49;
        a5 = v82;
        a6 = v83;
        a3 = v80;
        v50 = v11 - v85;
      }

      v11 = v50;
      a2 = v46;
      a4 = v27;
      if (!v50)
      {
        return result;
      }
    }

    if (v12 <= v11)
    {
      if (a2 != a4)
      {
        v63 = 4 * result;
        v64 = a2;
        v65 = a10;
        do
        {
          *v65++ = *v64;
          v64 = (v64 + v63);
        }

        while (v64 != a4);
        v66 = *v13;
        v67 = v13[1];
        v68 = v65 - 1;
        while (a4 != a6 || a3 != a5)
        {
          v69 = *a4;
          v70 = *v84;
          v71 = *(v66 + v67 * v69);
          v72 = *(v66 + v67 * v70);
          if (v71 < v72 || (v69 < v70 ? (v73 = v71 == v72) : (v73 = 0), v73))
          {
            *a2 = v69;
            a4 += 4 * a3;
          }

          else
          {
            *a2 = v70;
            ++v84;
          }

          a2 += v63;
          if (v65 == v84)
          {
            return result;
          }
        }

        v74 = v84 - 1;
        do
        {
          v75 = v74[1];
          ++v74;
          *a2 = v75;
          a2 += v63;
        }

        while (v68 != v74);
      }
    }

    else if (a6 != a4)
    {
      v53 = a4;
      v54 = a10;
      do
      {
        *v54++ = *v53;
        v53 += 4 * a3;
      }

      while (v53 != a6);
      v55 = *v13;
      v56 = v13[1];
      while (a2 != a4 || a3 != result)
      {
        v57 = &a4[-4 * a3];
        v58 = *(v54 - 1);
        v59 = *v57;
        v60 = *(v55 + v56 * v58);
        v61 = *(v55 + v56 * v59);
        if (v60 >= v61 && (v58 >= v59 || v60 != v61))
        {
          LODWORD(v59) = *(v54 - 1);
          v57 = a4;
          --v54;
        }

        a6 -= 4 * a5;
        *a6 = v59;
        a4 = v57;
        if (v54 == a10)
        {
          return result;
        }
      }

      if (v54 != a10)
      {
        v76 = -4 * a5;
        do
        {
          v77 = *--v54;
          *&a6[v76] = v77;
          v76 -= 4 * a5;
        }

        while (v54 != a10);
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<short,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7, uint64_t a8)
{
  if (a6 >= 2)
  {
    v11 = a2;
    if (a6 == 2)
    {
      v12 = a4[-a3];
      v13 = *a2;
      v14 = a5[1];
      v15 = *(*a5 + 2 * v14 * v12);
      v16 = *(*a5 + 2 * v14 * v13);
      if (v15 < v16 || (v12 < v13 ? (v17 = v15 == v16) : (v17 = 0), v17))
      {
        *a2 = v12;
        a4[-a3] = v13;
      }
    }

    else
    {
      v18 = result;
      if (a6 > 128)
      {
        v35 = a7;
        v36 = a6 >> 1;
        v37 = a6;
        v52 = a6 - (a6 >> 1);
        v38 = &a2[result * v36];
        if (a6 <= a8)
        {
          v39 = &v35[v36];
          v40 = *a5;
          v41 = a5[1];
          v42 = 4 * v18;
          v43 = v39;
          v44 = &v35[v37];
          while (v43 != v44)
          {
            v45 = *v43;
            v46 = *v35;
            v47 = *(v40 + 2 * v41 * v45);
            v48 = *(v40 + 2 * v41 * v46);
            if (v47 < v48 || (v45 < v46 ? (v49 = v47 == v48) : (v49 = 0), v49))
            {
              *v11 = v45;
              ++v43;
            }

            else
            {
              *v11 = v46;
              ++v35;
            }

            v11 += v42;
            if (v35 == v39)
            {
              while (v43 != v44)
              {
                v51 = *v43++;
                *v11 = v51;
                v11 += v42;
              }

              return result;
            }
          }

          while (v35 != v39)
          {
            v50 = *v35++;
            *v11 = v50;
            v11 += v42;
          }
        }

        else
        {
        }
      }

      else if (a2 != a4 || result != a3)
      {
        v19 = &a2[result];
        if (v19 != a4)
        {
          v20 = 0;
          v21 = *a5;
          v22 = a5[1];
          v23 = 4 * result;
          v24 = a2;
          do
          {
            v25 = v19;
            v26 = *v19;
            v27 = *v24;
            v28 = *(v21 + 2 * v22 * v26);
            result = *(v21 + 2 * v22 * v27);
            if (*(v21 + 2 * v22 * v26) < result || ((result = *(v21 + 2 * v22 * v27), v26 < v27) ? (v29 = v28 == result) : (v29 = 0), v29))
            {
              *v25 = v27;
              if (v24 == a2)
              {
LABEL_30:
                v33 = a2;
              }

              else
              {
                v30 = v20;
                while (1)
                {
                  v31 = *(a2 + v30 + -4 * v18);
                  result = *(v21 + 2 * v22 * v31);
                  if (result <= v28)
                  {
                    result = *(v21 + 2 * v22 * v31);
                    if (v26 >= v31 || v28 != result)
                    {
                      break;
                    }
                  }

                  *(a2 + v30) = v31;
                  v30 -= v23;
                  if (!v30)
                  {
                    goto LABEL_30;
                  }
                }

                v33 = (a2 + v30);
              }

              *v33 = v26;
            }

            v19 = &v25[v18];
            v20 += v23;
            v24 = v25;
          }

          while (v19 != a4);
        }
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<short,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7)
{
  if (a6)
  {
    v7 = a7;
    v9 = a2;
    if (a6 == 1)
    {
LABEL_8:
      *v7 = *v9;
      return result;
    }

    if (a6 == 2)
    {
      v13 = a4[-a3];
      v14 = *a2;
      v15 = a5[1];
      v16 = *(*a5 + 2 * v15 * v13);
      v17 = *(*a5 + 2 * v15 * v14);
      if (v16 >= v17 && (v13 >= v14 || v16 != v17))
      {
        LODWORD(v13) = *a2;
        v9 = &a4[-a3];
      }

      *a7 = v13;
      v7 = a7 + 1;
      goto LABEL_8;
    }

    v18 = result;
    if (a6 > 8)
    {
      v37 = a6 >> 1;
      v38 = &a2[result * v37];
      if (4 * v18 * v37)
      {
        v40 = *a5;
        v41 = a5[1];
        v39 = &v9[v18 * v37];
        while (v39 != a4 || v18 != a3)
        {
          v42 = *v39;
          v43 = *v9;
          v44 = *(v40 + 2 * v41 * v42);
          v45 = *(v40 + 2 * v41 * v43);
          if (v44 < v45 || (v42 < v43 ? (v46 = v44 == v45) : (v46 = 0), v46))
          {
            *v7 = v42;
            v39 += v18;
          }

          else
          {
            *v7 = v43;
            v9 += v18;
          }

          ++v7;
          if (v9 == v38)
          {
            goto LABEL_46;
          }
        }

        for (; v9 != v38; v9 += v18)
        {
          *v7++ = *v9;
        }
      }

      else
      {
        v39 = &v9[v18 * v37];
LABEL_46:
        while (v39 != a4)
        {
          *v7++ = *v39;
          v39 += v18;
        }
      }
    }

    else if (a2 != a4)
    {
      *a7 = *a2;
      v19 = &a2[result];
      if (v19 != a4)
      {
        v20 = 0;
        v21 = *a5;
        v22 = a5[1];
        v23 = a7;
        v24 = a7;
        do
        {
          v26 = *v24++;
          v25 = v26;
          v27 = *v19;
          v28 = *(v21 + 2 * v22 * v27);
          v29 = *(v21 + 2 * v22 * v26);
          if (v28 < v29 || (v27 < v25 ? (v30 = v28 == v29) : (v30 = 0), v30))
          {
            v23[1] = v25;
            v31 = a7;
            if (v23 != a7)
            {
              v32 = v20;
              do
              {
                v33 = *v19;
                v34 = *(a7 + v32 - 4);
                v35 = *(v21 + 2 * v22 * v33);
                result = *(v21 + 2 * v22 * v34);
                if (v35 >= result && (v33 >= v34 || v35 != result))
                {
                  v31 = (a7 + v32);
                  goto LABEL_30;
                }

                *(a7 + v32) = v34;
                v32 -= 4;
              }

              while (v32);
              v31 = a7;
            }

LABEL_30:
            *v31 = *v19;
          }

          else
          {
            *v24 = v27;
          }

          v19 += v18;
          v20 += 4;
          v23 = v24;
        }

        while (v19 != a4);
      }
    }
  }

  return result;
}

uint64_t std::__inplace_merge<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<short,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t *a7, int a8, int a9, unsigned int *a10, uint64_t a11)
{
  v11 = a9;
  if (a9)
  {
    LODWORD(v12) = a8;
    v13 = a7;
    v84 = a10;
    while (v11 > a11 && v12 > a11)
    {
      if (!v12)
      {
        return result;
      }

      v16 = 0;
      v17 = *a4;
      v18 = *v13;
      v19 = v13[1];
      v20 = *(*v13 + 2 * v19 * v17);
      v21 = -v12;
      v22 = 4 * result;
      while (1)
      {
        v23 = *&a2[v16];
        v24 = *(v18 + 2 * v19 * v23);
        if (v20 < v24)
        {
          break;
        }

        if (v17 < v23 && v20 == v24)
        {
          break;
        }

        v16 += v22;
        if (__CFADD__(v21++, 1))
        {
          return result;
        }
      }

      v82 = a5;
      v83 = a6;
      v78 = &a2[v16];
      if (-v21 >= v11)
      {
        if (v21 == -1)
        {
          *&a2[v16] = v17;
          *a4 = v23;
          return result;
        }

        v37 = (v21 > 0) - v21;
        v31 = &a2[4 * result * (v37 >> 1) + v16];
        v38 = ((a6 - a4) >> 2) / a5;
        if (v38)
        {
          v39 = *v31;
          v40 = *(v18 + 2 * v19 * v39);
          v27 = a4;
          do
          {
            v41 = v38 >> 1;
            v42 = &v27[a3 * v41];
            v43 = *v42;
            v44 = *(v18 + 2 * v19 * v43);
            if (v44 < v40 || (v43 < v39 ? (v45 = v44 == v40) : (v45 = 0), v45))
            {
              v27 = &v42[a3];
              LODWORD(v41) = v38 + ~v41;
            }

            LODWORD(v38) = v41;
          }

          while (v41);
        }

        else
        {
          v27 = a4;
        }

        v86 = (v37 >> 1);
        v85 = ((v27 - a4) >> 2) / a3;
      }

      else
      {
        v27 = &a4[4 * a3 * ((v11 + (v11 >> 31)) >> 1)];
        v28 = ((a4 - a2 - v16) >> 2) / a3;
        if (v28)
        {
          v29 = *v27;
          v30 = *(v18 + 2 * v19 * v29);
          v31 = &a2[v16];
          do
          {
            v32 = v28 >> 1;
            v33 = &v31[v22 * v32];
            v34 = *v33;
            v35 = *(v18 + 2 * v19 * v34);
            if (v30 >= v35 && (v29 >= v34 || v30 != v35))
            {
              v31 = &v33[4 * result];
              LODWORD(v32) = v28 + ~v32;
            }

            LODWORD(v28) = v32;
          }

          while (v32);
        }

        else
        {
          v31 = &a2[v16];
        }

        LODWORD(v85) = v11 / 2;
        v86 = ((v31 - a2 - v16) >> 2) / result;
      }

      v12 = (-v21 - v86);
      v80 = a3;
      v81 = result;
      v46 = v88;
      if (v86 + v85 >= v11 - (v86 + v85) - v21)
      {
        v51 = v88;
        v52 = v87;
        v27 = v31;
        v13 = a7;
        result = v81;
        a3 = v81;
        v46 = v78;
        v50 = v85;
        LODWORD(v12) = v86;
        a5 = v52;
        a6 = v51;
      }

      else
      {
        v47 = &a2[v16];
        v48 = v31;
        v49 = v87;
        v13 = a7;
        result = v49;
        a5 = v82;
        a6 = v83;
        a3 = v80;
        v50 = v11 - v85;
      }

      v11 = v50;
      a2 = v46;
      a4 = v27;
      if (!v50)
      {
        return result;
      }
    }

    if (v12 <= v11)
    {
      if (a2 != a4)
      {
        v63 = 4 * result;
        v64 = a2;
        v65 = a10;
        do
        {
          *v65++ = *v64;
          v64 = (v64 + v63);
        }

        while (v64 != a4);
        v66 = *v13;
        v67 = v13[1];
        v68 = v65 - 1;
        while (a4 != a6 || a3 != a5)
        {
          v69 = *a4;
          v70 = *v84;
          v71 = *(v66 + 2 * v67 * v69);
          v72 = *(v66 + 2 * v67 * v70);
          if (v71 < v72 || (v69 < v70 ? (v73 = v71 == v72) : (v73 = 0), v73))
          {
            *a2 = v69;
            a4 += 4 * a3;
          }

          else
          {
            *a2 = v70;
            ++v84;
          }

          a2 += v63;
          if (v65 == v84)
          {
            return result;
          }
        }

        v74 = v84 - 1;
        do
        {
          v75 = v74[1];
          ++v74;
          *a2 = v75;
          a2 += v63;
        }

        while (v68 != v74);
      }
    }

    else if (a6 != a4)
    {
      v53 = a4;
      v54 = a10;
      do
      {
        *v54++ = *v53;
        v53 += 4 * a3;
      }

      while (v53 != a6);
      v55 = *v13;
      v56 = v13[1];
      while (a2 != a4 || a3 != result)
      {
        v57 = &a4[-4 * a3];
        v58 = *(v54 - 1);
        v59 = *v57;
        v60 = *(v55 + 2 * v56 * v58);
        v61 = *(v55 + 2 * v56 * v59);
        if (v60 >= v61 && (v58 >= v59 || v60 != v61))
        {
          LODWORD(v59) = *(v54 - 1);
          v57 = a4;
          --v54;
        }

        a6 -= 4 * a5;
        *a6 = v59;
        a4 = v57;
        if (v54 == a10)
        {
          return result;
        }
      }

      if (v54 != a10)
      {
        v76 = -4 * a5;
        do
        {
          v77 = *--v54;
          *&a6[v76] = v77;
          v76 -= 4 * a5;
        }

        while (v54 != a10);
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<int,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7, uint64_t a8)
{
  if (a6 >= 2)
  {
    v11 = a2;
    if (a6 == 2)
    {
      v12 = a4[-a3];
      v13 = *a2;
      v14 = a5[1];
      v15 = *(*a5 + 4 * v14 * v12);
      v16 = *(*a5 + 4 * v14 * v13);
      if (v15 < v16 || (v12 < v13 ? (v17 = v15 == v16) : (v17 = 0), v17))
      {
        *a2 = v12;
        a4[-a3] = v13;
      }
    }

    else
    {
      v18 = result;
      if (a6 > 128)
      {
        v36 = a7;
        v37 = a6 >> 1;
        v38 = a6;
        v53 = a6 - (a6 >> 1);
        v39 = &a2[result * v37];
        if (a6 <= a8)
        {
          v40 = &v36[v37];
          v41 = *a5;
          v42 = a5[1];
          v43 = 4 * v18;
          v44 = v40;
          v45 = &v36[v38];
          while (v44 != v45)
          {
            v46 = *v44;
            v47 = *v36;
            v48 = *(v41 + 4 * v42 * v46);
            v49 = *(v41 + 4 * v42 * v47);
            if (v48 < v49 || (v46 < v47 ? (v50 = v48 == v49) : (v50 = 0), v50))
            {
              *v11 = v46;
              ++v44;
            }

            else
            {
              *v11 = v47;
              ++v36;
            }

            v11 += v43;
            if (v36 == v40)
            {
              while (v44 != v45)
              {
                v52 = *v44++;
                *v11 = v52;
                v11 += v43;
              }

              return result;
            }
          }

          while (v36 != v40)
          {
            v51 = *v36++;
            *v11 = v51;
            v11 += v43;
          }
        }

        else
        {
        }
      }

      else if (a2 != a4 || result != a3)
      {
        v19 = &a2[result];
        if (v19 != a4)
        {
          v20 = 0;
          v21 = *a5;
          v22 = a5[1];
          v23 = 4 * result;
          v24 = a2;
          do
          {
            v25 = v19;
            v26 = *v19;
            v27 = *v24;
            result = *(v21 + 4 * v22 * v26);
            v28 = *(v21 + 4 * v22 * v27);
            if (result < v28 || (v26 < v27 ? (v29 = result == v28) : (v29 = 0), v29))
            {
              *v25 = v27;
              if (v24 == v11)
              {
LABEL_30:
                v34 = v11;
              }

              else
              {
                v30 = v20;
                while (1)
                {
                  v31 = *&v11[v30 + -4 * v18];
                  result = *(v21 + 4 * v22 * v26);
                  v32 = *(v21 + 4 * v22 * v31);
                  if (result >= v32 && (v26 >= v31 || result != v32))
                  {
                    break;
                  }

                  *&v11[v30] = v31;
                  v30 -= v23;
                  if (!v30)
                  {
                    goto LABEL_30;
                  }
                }

                v34 = &v11[v30];
              }

              *v34 = v26;
            }

            v19 = &v25[v18];
            v20 += v23;
            v24 = v25;
          }

          while (v19 != a4);
        }
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,void mlx::core::anonymous namespace::argsort<int,unsigned int>(mlx::core::array const&,mlx::core::array&,int)::{lambda(unsigned int,unsigned int)#1} &,mlx::core::anonymous namespace::StridedIterator<unsigned int>>(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t *a5, unsigned int a6, unsigned int *a7)
{
  if (a6)
  {
    v7 = a7;
    v9 = a2;
    if (a6 == 1)
    {
LABEL_8:
      *v7 = *v9;
      return result;
    }

    if (a6 == 2)
    {
      v13 = a4[-a3];
      v14 = *a2;
      v15 = a5[1];
      v16 = *(*a5 + 4 * v15 * v13);
      v17 = *(*a5 + 4 * v15 * v14);
      if (v16 >= v17 && (v13 >= v14 || v16 != v17))
      {
        LODWORD(v13) = *a2;
        v9 = &a4[-a3];
      }

      *a7 = v13;
      v7 = a7 + 1;
      goto LABEL_8;
    }

    v18 = result;
    if (a6 > 8)
    {
      v37 = a6 >> 1;
      v38 = &a2[result * v37];
      if (4 * v18 * v37)
      {
        v40 = *a5;
        v41 = a5[1];
        v39 = &v9[v18 * v37];
        while (v39 != a4 || v18 != a3)
        {
          v42 = *v39;
          v43 = *v9;
          v44 = *(v40 + 4 * v41 * v42);
          v45 = *(v40 + 4 * v41 * v43);
          if (v44 < v45 || (v42 < v43 ? (v46 = v44 == v45) : (v46 = 0), v46))
          {
            *v7 = v42;
            v39 += v18;
          }

          else
          {
            *v7 = v43;
            v9 += v18;
          }

          ++v7;
          if (v9 == v38)
          {
            goto LABEL_46;
          }
        }

        for (; v9 != v38; v9 += v18)
        {
          *v7++ = *v9;
        }
      }

      else
      {
        v39 = &v9[v18 * v37];
LABEL_46:
        while (v39 != a4)
        {
          *v7++ = *v39;
          v39 += v18;
        }
      }
    }

    else if (a2 != a4)
    {
      *a7 = *a2;
      v19 = &a2[result];
      if (v19 != a4)
      {
        v20 = 0;
        v21 = *a5;
        v22 = a5[1];
        v23 = a7;
        v24 = a7;
        do
        {
          v26 = *v24++;
          v25 = v26;
          v27 = *v19;
          v28 = *(v21 + 4 * v22 * v27);
          v29 = *(v21 + 4 * v22 * v26);
          if (v28 < v29 || (v27 < v25 ? (v30 = v28 == v29) : (v30 = 0), v30))
          {
            v23[1] = v25;
            v31 = a7;
            if (v23 != a7)
            {
              v32 = v20;
              do
              {
                v33 = *v19;
                v34 = *(a7 + v32 - 4);
                v35 = *(v21 + 4 * v22 * v33);
                result = *(v21 + 4 * v22 * v34);
                if (v35 >= result && (v33 >= v34 || v35 != result))
                {
                  v31 = (a7 + v32);
                  goto LABEL_30;
                }

                *(a7 + v32) = v34;
                v32 -= 4;
              }

              while (v32);
              v31 = a7;
            }

LABEL_30:
            *v31 = *v19;
          }

          else
          {
            *v24 = v27;
          }

          v19 += v18;
          v20 += 4;
          v23 = v24;
        }

        while (v19 != a4);
      }
    }
  }

  return result;
}