void sub_25A638CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,true,mlx::core::ScalarVector<mlx::core::detail::Divide>>(unsigned __int8 *a1, int a2, char *__b, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = __b;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(a1, a2, __b, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(a1, a2, __b, a6, a7, a8, a9, 0);
      break;
    case 1:
      v17 = **a6;
      if (v17 >= 1)
      {
        v18 = **a7;
        v19 = **a9;
        do
        {
          if (v19 >= 1)
          {
            memset(v12, *v14, v19 & 0x7FFFFFFF);
          }

          v12 += v19;
          v14 += v18;
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
        v21 = a5;
        v22 = 0;
        v56 = (*a9)[a4 - 4];
        v23 = v21;
        do
        {
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(&v14[v64], a2 + v57, &v12[v22], a6, a7, a8, a9, v15);
          v24 = v66 - v65;
          v25 = (v66 - v65) >> 2;
          if (v25)
          {
            v26 = v69;
            v27 = ((v24 << 30) - 0x100000000) >> 32;
            v28 = v69 + 4 * v27;
            v29 = *v28;
            v30 = v65 + 4 * v27;
            v31 = v67;
            v32 = v64;
            if (v25 >= 2 && v29 == *v30 - 1)
            {
              v35 = (v24 >> 2) & 0x7FFFFFFF;
              v34 = v35 - 1;
              v36 = 4 * v35;
              v37 = v65 - 8;
              do
              {
                v38 = v34;
                *v28 = 0;
                v32 -= v31[v27] * (*v30 - 1);
                v64 = v32;
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
            v64 = v31[v34] + v32;
          }

          v40 = v59 - v58;
          v41 = (v59 - v58) >> 2;
          if (v41)
          {
            v42 = __p;
            v43 = ((v40 << 30) - 0x100000000) >> 32;
            v44 = __p + 4 * v43;
            v45 = *v44;
            v46 = v58 + 4 * v43;
            v47 = v60;
            v48 = v57;
            if (v41 >= 2 && v45 == *v46 - 1)
            {
              v51 = (v40 >> 2) & 0x7FFFFFFF;
              v50 = v51 - 1;
              v52 = 4 * v51;
              v53 = v58 - 8;
              do
              {
                v54 = v50;
                *v44 = 0;
                v48 -= v47[v43] * (*v46 - 1);
                v57 = v48;
                --v50;
                v44 = &v42[v52 - 8];
                v45 = *v44;
                v42 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v46 = &v53[v52];
                v55 = *&v53[4 * v51] - 1;
                v53 -= 4;
                v43 = v50;
              }

              while (v45 == v55);
              v44 = &v42[4 * v51 - 4];
            }

            else
            {
              v50 = ((v40 << 30) - 0x100000000) >> 32;
            }

            *v44 = v45 + 1;
            v57 = v47[v50] + v48;
          }

          v22 += v56;
        }

        while (v22 < v23);
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

void sub_25A6390B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<BOOL,BOOL,false,mlx::core::detail::Divide>(_BYTE *a1, uint64_t a2, _BYTE *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v12 = a3;
  v13 = a1;
  v14 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::Divide,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:
      v19 = **a6;
      if (v19 >= 1)
      {
        v20 = 0;
        v21 = **a7;
        v22 = *(*a7 + 8);
        v23 = **a9;
        v24 = *(*a9 + 8);
        v25 = *(*a6 + 4);
        do
        {
          if (v25 >= 1)
          {
            v26 = v25;
            v27 = v13;
            v28 = v12;
            do
            {
              *v28 = *v27;
              v28 += v24;
              v27 += v22;
              --v26;
            }

            while (v26);
          }

          v12 += v23;
          v13 += v21;
          ++v20;
        }

        while (v20 != v19);
      }

      break;
    case 1:
      v16 = **a6;
      if (v16 >= 1)
      {
        v17 = **a7;
        v18 = **a9;
        do
        {
          *v12 = *v13;
          v12 += v18;
          v13 += v17;
          --v16;
        }

        while (v16);
      }

      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v72, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v65, a6, a8, v14);
      if (a5 >= 1)
      {
        v30 = 0;
        v31 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::Divide,3,false>(&v13[v72], a2 + v65, &v12[v30], a6, a7, a8, a9, v14);
          v32 = v74 - v73;
          v33 = (v74 - v73) >> 2;
          if (v33)
          {
            v34 = v77;
            v35 = ((v32 << 30) - 0x100000000) >> 32;
            v36 = v77 + 4 * v35;
            v37 = *v36;
            v38 = v73 + 4 * v35;
            v39 = v75;
            v40 = v72;
            if (v33 >= 2 && v37 == *v38 - 1)
            {
              v43 = (v32 >> 2) & 0x7FFFFFFF;
              v42 = v43 - 1;
              v44 = 4 * v43;
              v45 = v73 - 8;
              do
              {
                v46 = v42;
                *v36 = 0;
                v40 -= v39[v35] * (*v38 - 1);
                v72 = v40;
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
            v72 = v39[v42] + v40;
          }

          v48 = v67 - v66;
          v49 = (v67 - v66) >> 2;
          if (v49)
          {
            v50 = __p;
            v51 = ((v48 << 30) - 0x100000000) >> 32;
            v52 = __p + 4 * v51;
            v53 = *v52;
            v54 = v66 + 4 * v51;
            v55 = v68;
            v56 = v65;
            if (v49 >= 2 && v53 == *v54 - 1)
            {
              v59 = (v48 >> 2) & 0x7FFFFFFF;
              v58 = v59 - 1;
              v60 = 4 * v59;
              v61 = v66 - 8;
              do
              {
                v62 = v58;
                *v52 = 0;
                v56 -= v55[v51] * (*v54 - 1);
                v65 = v56;
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
            v65 = v55[v58] + v56;
          }

          v30 += v31;
        }

        while (v30 < a5);
      }

      if (__p)
      {
        v71 = __p;
        operator delete(__p);
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

      if (v77)
      {
        v78 = v77;
        operator delete(v77);
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

      break;
  }
}

void sub_25A6394C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(*a5 + 8 * a8);
    v11 = *(*a7 + 8 * a8);
    v12 = a8 + 1;
    v13 = *(*a5 + 8 * v12);
    v14 = *(*a7 + 8 * v12);
    v15 = *(*a4 + 4 * v12);
    do
    {
      if (v15 >= 1)
      {
        v16 = 0;
        v17 = result;
        v18 = a3;
        do
        {
          if (v14 >= 1)
          {
            v19 = 0;
            v20 = v14 + 1;
            do
            {
              *(v18 + v19) = *(v17 + v19) & 1;
              ++v19;
              --v20;
            }

            while (v20 > 1);
          }

          v18 += v14;
          v17 += v13;
          ++v16;
        }

        while (v16 != v15);
      }

      a3 += v11;
      result += v10;
      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(unsigned __int8 *result, int a2, char *__b, void *a4, void *a5, uint64_t a6, void *a7, int a8)
{
  v20 = *(*a4 + 4 * a8);
  if (v20 >= 1)
  {
    v9 = result;
    v10 = 0;
    v19 = *(*a5 + 8 * a8);
    v11 = *(*a7 + 8 * a8);
    v12 = a8 + 1;
    v13 = *(*a5 + 8 * v12);
    v14 = *(*a7 + 8 * v12);
    v15 = *(*a4 + 4 * v12);
    do
    {
      if (v15 >= 1)
      {
        v16 = v15;
        v17 = v9;
        v18 = __b;
        do
        {
          if (v14 >= 1)
          {
            result = memset(v18, *v17, v14 & 0x7FFFFFFF);
          }

          v18 += v14;
          v17 += v13;
          --v16;
        }

        while (v16);
      }

      __b += v11;
      v9 += v19;
      ++v10;
    }

    while (v10 != v20);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(unsigned __int8 *result, int a2, char *__b, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(v14, a2, __b, a4, a5, a6, a7, a8 + 1);
      __b += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

_BYTE *mlx::core::binary_op_dims<BOOL,BOOL,mlx::core::detail::Divide,3,false>(_BYTE *result, uint64_t a2, _BYTE *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t *a7, int a8)
{
  v8 = *a4;
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *a5;
    v12 = *(*a5 + 8 * a8);
    v13 = *a7;
    v14 = *(*a7 + 8 * a8);
    v15 = a8 + 1;
    v16 = *(*a5 + 8 * v15);
    v17 = *(*a7 + 8 * v15);
    v18 = *(v8 + 4 * v15);
    v19 = a8 + 2;
    do
    {
      if (v18 >= 1)
      {
        v20 = 0;
        v21 = *(v11 + 8 * v19);
        v22 = *(v13 + 8 * v19);
        v23 = result;
        v24 = *(v8 + 4 * v19);
        v25 = a3;
        do
        {
          if (v24 >= 1)
          {
            v26 = v24;
            v27 = v23;
            v28 = v25;
            do
            {
              *v28 = *v27;
              v28 += v22;
              v27 += v21;
              --v26;
            }

            while (v26);
          }

          v25 += v17;
          v23 += v16;
          ++v20;
        }

        while (v20 != v18);
      }

      a3 += v14;
      result += v12;
      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

void mlx::core::binary_op<unsigned char,unsigned char,mlx::core::detail::Divide>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      *v11 = *v9 / *v10;
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
          LOBYTE(v16) = v14.i8[0] / v15;
          BYTE1(v16) = v14.i8[1] / BYTE1(v15);
          BYTE2(v16) = v14.i8[2] / BYTE2(v15);
          BYTE3(v16) = v14.i8[3] / BYTE3(v15);
          BYTE4(v16) = v14.i8[4] / BYTE4(v15);
          BYTE5(v16) = v14.i8[5] / BYTE5(v15);
          BYTE6(v16) = v14.i8[6] / BYTE6(v15);
          BYTE7(v16) = v14.i8[7] / BYTE7(v15);
          BYTE8(v16) = v14.i8[8] / BYTE8(v15);
          BYTE9(v16) = v14.i8[9] / BYTE9(v15);
          BYTE10(v16) = v14.i8[10] / BYTE10(v15);
          BYTE11(v16) = v14.i8[11] / BYTE11(v15);
          BYTE12(v16) = v14.i8[12] / BYTE12(v15);
          BYTE13(v16) = v14.i8[13] / BYTE13(v15);
          BYTE14(v16) = v14.i8[14] / BYTE14(v15);
          HIBYTE(v16) = v14.i8[15] / HIBYTE(v15);
          *v11 = v16;
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
          *v11++ = v13 / v63;
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
        mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::ScalarVector<mlx::core::detail::Divide>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::VectorScalar<mlx::core::detail::Divide>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::VectorVector<mlx::core::detail::Divide>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      default:
        LODWORD(v56) = v60;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,false,mlx::core::detail::Divide>(v9, v10, v11, v56, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
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
        LOBYTE(v42) = v41 / v40.i8[0];
        BYTE1(v42) = BYTE1(v41) / v40.i8[1];
        BYTE2(v42) = BYTE2(v41) / v40.i8[2];
        BYTE3(v42) = BYTE3(v41) / v40.i8[3];
        BYTE4(v42) = BYTE4(v41) / v40.i8[4];
        BYTE5(v42) = BYTE5(v41) / v40.i8[5];
        BYTE6(v42) = BYTE6(v41) / v40.i8[6];
        BYTE7(v42) = BYTE7(v41) / v40.i8[7];
        BYTE8(v42) = BYTE8(v41) / v40.i8[8];
        BYTE9(v42) = BYTE9(v41) / v40.i8[9];
        BYTE10(v42) = BYTE10(v41) / v40.i8[10];
        BYTE11(v42) = BYTE11(v41) / v40.i8[11];
        BYTE12(v42) = BYTE12(v41) / v40.i8[12];
        BYTE13(v42) = BYTE13(v41) / v40.i8[13];
        BYTE14(v42) = BYTE14(v41) / v40.i8[14];
        HIBYTE(v42) = HIBYTE(v41) / v40.i8[15];
        *v11 = v42;
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
        *v11++ = v69 / v39;
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
        LOBYTE(v23) = v21 / v22;
        BYTE1(v23) = BYTE1(v21) / BYTE1(v22);
        BYTE2(v23) = BYTE2(v21) / BYTE2(v22);
        BYTE3(v23) = BYTE3(v21) / BYTE3(v22);
        BYTE4(v23) = BYTE4(v21) / BYTE4(v22);
        BYTE5(v23) = BYTE5(v21) / BYTE5(v22);
        BYTE6(v23) = BYTE6(v21) / BYTE6(v22);
        BYTE7(v23) = BYTE7(v21) / BYTE7(v22);
        BYTE8(v23) = BYTE8(v21) / BYTE8(v22);
        BYTE9(v23) = BYTE9(v21) / BYTE9(v22);
        BYTE10(v23) = BYTE10(v21) / BYTE10(v22);
        BYTE11(v23) = BYTE11(v21) / BYTE11(v22);
        BYTE12(v23) = BYTE12(v21) / BYTE12(v22);
        BYTE13(v23) = BYTE13(v21) / BYTE13(v22);
        BYTE14(v23) = BYTE14(v21) / BYTE14(v22);
        HIBYTE(v23) = HIBYTE(v21) / HIBYTE(v22);
        *v11 = v23;
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
        *v11++ = v65 / v67;
        --v64;
      }

      while (v64 > 1);
    }
  }

LABEL_84:
  v70 = *MEMORY[0x277D85DE8];
}

void sub_25A63A0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::VectorVector<mlx::core::detail::Divide>>(unsigned __int8 *a1, unsigned __int8 *a2, _BYTE *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A63A53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::VectorScalar<mlx::core::detail::Divide>>(unsigned __int8 *a1, unsigned __int8 *a2, _BYTE *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Divide>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A63A950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,true,mlx::core::ScalarVector<mlx::core::detail::Divide>>(unsigned __int8 *a1, unsigned __int8 *a2, _BYTE *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A63AD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned char,unsigned char,false,mlx::core::detail::Divide>(_BYTE *a1, _BYTE *a2, _BYTE *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::Divide,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::Divide,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 / *v13;
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
          mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::Divide,3,false>(&v14[v65], &v13[v58], &v12[v23], a6, a7, a8, a9, v15);
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

void sub_25A63B178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(unsigned __int8 *result, unsigned __int8 *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v19 = *&result[v17];
          v20 = *&a2[v17];
          LOBYTE(v21) = v19 / v20;
          BYTE1(v21) = BYTE1(v19) / BYTE1(v20);
          BYTE2(v21) = BYTE2(v19) / BYTE2(v20);
          BYTE3(v21) = BYTE3(v19) / BYTE3(v20);
          BYTE4(v21) = BYTE4(v19) / BYTE4(v20);
          BYTE5(v21) = BYTE5(v19) / BYTE5(v20);
          BYTE6(v21) = BYTE6(v19) / BYTE6(v20);
          BYTE7(v21) = BYTE7(v19) / BYTE7(v20);
          BYTE8(v21) = BYTE8(v19) / BYTE8(v20);
          BYTE9(v21) = BYTE9(v19) / BYTE9(v20);
          BYTE10(v21) = BYTE10(v19) / BYTE10(v20);
          BYTE11(v21) = BYTE11(v19) / BYTE11(v20);
          BYTE12(v21) = BYTE12(v19) / BYTE12(v20);
          BYTE13(v21) = BYTE13(v19) / BYTE13(v20);
          BYTE14(v21) = BYTE14(v19) / BYTE14(v20);
          HIBYTE(v21) = HIBYTE(v19) / HIBYTE(v20);
          *&a3[v17] = v21;
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
        v22 = v13 + 1;
        do
        {
          v24 = *v16++;
          v23 = v24;
          v25 = *v15++;
          *v14++ = v23 / v25;
          --v22;
        }

        while (v22 > 1);
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

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(unsigned __int8 *result, unsigned __int8 *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(unsigned __int8 *result, unsigned __int8 *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Divide>,1,true>(unsigned __int8 *result, unsigned __int8 *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v19 = *&result[v17];
          LOBYTE(v20) = v19 / v18.i8[0];
          BYTE1(v20) = BYTE1(v19) / v18.i8[1];
          BYTE2(v20) = BYTE2(v19) / v18.i8[2];
          BYTE3(v20) = BYTE3(v19) / v18.i8[3];
          BYTE4(v20) = BYTE4(v19) / v18.i8[4];
          BYTE5(v20) = BYTE5(v19) / v18.i8[5];
          BYTE6(v20) = BYTE6(v19) / v18.i8[6];
          BYTE7(v20) = BYTE7(v19) / v18.i8[7];
          BYTE8(v20) = BYTE8(v19) / v18.i8[8];
          BYTE9(v20) = BYTE9(v19) / v18.i8[9];
          BYTE10(v20) = BYTE10(v19) / v18.i8[10];
          BYTE11(v20) = BYTE11(v19) / v18.i8[11];
          BYTE12(v20) = BYTE12(v19) / v18.i8[12];
          BYTE13(v20) = BYTE13(v19) / v18.i8[13];
          BYTE14(v20) = BYTE14(v19) / v18.i8[14];
          HIBYTE(v20) = HIBYTE(v19) / v18.i8[15];
          v21 = v14;
          *&a3[v17] = v20;
          v14 -= 16;
          v17 += 16;
        }

        while (v21 > 0x1F);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v23 = *v16++;
          *v15++ = v23 / v13;
          --v22;
        }

        while (v22 > 1);
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

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Divide>,2,true>(unsigned __int8 *result, unsigned __int8 *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Divide>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Divide>,3,true>(unsigned __int8 *result, unsigned __int8 *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::VectorScalar<mlx::core::detail::Divide>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Divide>,1,true>(unsigned __int8 *result, unsigned __int8 *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v19 = *&a2[v17];
          LOBYTE(v20) = v18.i8[0] / v19;
          BYTE1(v20) = v18.i8[1] / BYTE1(v19);
          BYTE2(v20) = v18.i8[2] / BYTE2(v19);
          BYTE3(v20) = v18.i8[3] / BYTE3(v19);
          BYTE4(v20) = v18.i8[4] / BYTE4(v19);
          BYTE5(v20) = v18.i8[5] / BYTE5(v19);
          BYTE6(v20) = v18.i8[6] / BYTE6(v19);
          BYTE7(v20) = v18.i8[7] / BYTE7(v19);
          BYTE8(v20) = v18.i8[8] / BYTE8(v19);
          BYTE9(v20) = v18.i8[9] / BYTE9(v19);
          BYTE10(v20) = v18.i8[10] / BYTE10(v19);
          BYTE11(v20) = v18.i8[11] / BYTE11(v19);
          BYTE12(v20) = v18.i8[12] / BYTE12(v19);
          BYTE13(v20) = v18.i8[13] / BYTE13(v19);
          BYTE14(v20) = v18.i8[14] / BYTE14(v19);
          HIBYTE(v20) = v18.i8[15] / HIBYTE(v19);
          v21 = v14;
          *&a3[v17] = v20;
          v14 -= 16;
          v17 += 16;
        }

        while (v21 > 0x1F);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v23 = *v16++;
          *v15++ = v13 / v23;
          --v22;
        }

        while (v22 > 1);
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

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(unsigned __int8 *result, unsigned __int8 *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Divide>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int8 *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(unsigned __int8 *result, unsigned __int8 *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

_BYTE *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::Divide,2,false>(_BYTE *result, _BYTE *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v20 = *v18 / *v19;
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

_BYTE *mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::Divide,3,false>(_BYTE *result, _BYTE *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned char,unsigned char,mlx::core::detail::Divide,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<unsigned short,unsigned short,mlx::core::detail::Divide>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      *v11 = *v9 / *v10;
      goto LABEL_84;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      v13 = *v9;
      if (v12 < 16)
      {
        v26 = *(*a2 + 160);
      }

      else
      {
        v14 = vdupq_n_s16(v13);
        v15 = v14.u16[1];
        v16 = v14.u16[0];
        v17 = v14.u16[2];
        v18 = v14.u16[3];
        v19 = v14.u16[4];
        v20 = v14.u16[5];
        v21 = v14.u16[6];
        v22 = v14.u16[7];
        do
        {
          v24 = *v10;
          v23 = *(v10 + 1);
          v10 += 16;
          LOWORD(v24) = v16 / v24;
          WORD1(v24) = v15 / WORD1(v24);
          LOWORD(v25) = v16 / v23;
          WORD1(v25) = v15 / WORD1(v23);
          WORD2(v24) = v17 / WORD2(v24);
          WORD2(v25) = v17 / WORD2(v23);
          WORD3(v24) = v18 / WORD3(v24);
          WORD3(v25) = v18 / WORD3(v23);
          WORD4(v24) = v19 / WORD4(v24);
          WORD4(v25) = v19 / WORD4(v23);
          WORD5(v24) = v20 / WORD5(v24);
          WORD5(v25) = v20 / WORD5(v23);
          WORD6(v24) = v21 / WORD6(v24);
          WORD6(v25) = v21 / WORD6(v23);
          HIWORD(v24) = v22 / HIWORD(v24);
          HIWORD(v25) = v22 / HIWORD(v23);
          *v11 = v24;
          *(v11 + 16) = v25;
          v11 += 32;
          v26 = v12 - 16;
          v27 = v12 > 0x1F;
          v12 -= 16;
        }

        while (v27);
      }

      if (v26 >= 1)
      {
        v81 = v26 + 1;
        do
        {
          v82 = *v10++;
          *v11 = v13 / v82;
          v11 += 2;
          --v81;
        }

        while (v81 > 1);
      }

      goto LABEL_84;
    }

LABEL_13:
    memset(v95, 0, sizeof(v95));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v95, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v35 = *a2;
    memset(v96, 0, sizeof(v96));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v96, *(v35 + 24), *(v35 + 32), (*(v35 + 32) - *(v35 + 24)) >> 3);
    v36 = *a3;
    v98[0] = 0;
    v98[1] = 0;
    v97 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v97, *(v36 + 24), *(v36 + 32), (*(v36 + 32) - *(v36 + 24)) >> 3);
    memset(v90, 0, sizeof(v90));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v90, v95, &v99, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v90, 0x7FFFFFFFuLL, &__p);
    v94 = v90;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v94);
    for (i = 0; i != -9; i -= 3)
    {
      v38 = v98[i - 1];
      if (v38)
      {
        v98[i] = v38;
        operator delete(v38);
      }
    }

    v39 = v93 + 6;
    v40 = *v93;
    v41 = (v93[1] - *v93) >> 3;
    v42 = v41 - 1;
    if (v41 - 1 >= -1)
    {
      v42 = -1;
    }

    v43 = v42 + 1;
    v44 = v41 + 1;
    v45 = v41 - 1;
    v46 = v41 - 1;
    while ((v46 & 0x80000000) == 0)
    {
      v47 = 8 * (v46 & 0x7FFFFFFF);
      --v44;
      --v46;
      if (*(v40 + v47) != *(*v39 + v47))
      {
        goto LABEL_29;
      }
    }

    v44 = v43;
LABEL_29:
    v63 = v93[3];
    v64 = (v93[4] - v63) >> 3;
    v65 = v64 - 1;
    if (v64 - 1 >= -1)
    {
      v65 = -1;
    }

    v66 = v65 + 1;
    v67 = v64 + 1;
    v68 = v64 - 1;
    v69 = v64 - 1;
    while ((v69 & 0x80000000) == 0)
    {
      v70 = 8 * (v69 & 0x7FFFFFFF);
      --v67;
      --v69;
      if (*(v63 + v70) != *(*v39 + v70))
      {
        goto LABEL_36;
      }
    }

    v67 = v66;
LABEL_36:
    v71 = v41 + 1;
    while ((v45 & 0x80000000) == 0)
    {
      v72 = *(v40 + 8 * (v45 & 0x7FFFFFFF));
      --v71;
      --v45;
      if (v72)
      {
        goto LABEL_41;
      }
    }

    v71 = v43;
LABEL_41:
    v73 = v64 + 1;
    while ((v68 & 0x80000000) == 0)
    {
      v74 = *(v63 + 8 * (v68 & 0x7FFFFFFF));
      --v73;
      --v68;
      if (v74)
      {
        goto LABEL_46;
      }
    }

    v73 = v66;
LABEL_46:
    v75 = (v92 - __p) >> 2;
    if (v44 <= v67)
    {
      v76 = v67;
    }

    else
    {
      v76 = v44;
    }

    if (v44 <= v73)
    {
      v44 = v73;
    }

    if (v71 > v67)
    {
      v67 = v71;
    }

    if (v75 > v67)
    {
      v77 = 1;
    }

    else
    {
      v67 = (v92 - __p) >> 2;
      v77 = a4;
    }

    if (v75 > v44)
    {
      v78 = 2;
    }

    else
    {
      v44 = v67;
      v78 = v77;
    }

    if (v75 <= v76)
    {
      v79 = v44;
    }

    else
    {
      v79 = v76;
    }

    if (v75 <= v76)
    {
      v80 = v78;
    }

    else
    {
      v80 = 3;
    }

    if (!v79 || *(*v39 + 8 * v79 - 8) < 16)
    {
      goto LABEL_67;
    }

    switch(v80)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::ScalarVector<mlx::core::detail::Divide>>(v9, v10, v11, v79, *(*a1 + 48), &__p, v93, v93 + 3, v93 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::VectorScalar<mlx::core::detail::Divide>>(v9, v10, v11, v79, *(*a1 + 48), &__p, v93, v93 + 3, v93 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::VectorVector<mlx::core::detail::Divide>>(v9, v10, v11, v79, *(*a1 + 48), &__p, v93, v93 + 3, v93 + 6);
        break;
      default:
        LODWORD(v75) = v79;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,false,mlx::core::detail::Divide>(v9, v10, v11, v75, *(*a1 + 48), &__p, v93, v93 + 3, v93 + 6);
        break;
    }

    v95[0] = &v93;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v95);
    if (__p)
    {
      v92 = __p;
      operator delete(__p);
    }

    goto LABEL_84;
  }

  if (a4 == 2)
  {
    v48 = *(v8 + 160);
    v49 = *v10;
    if (v48 < 16)
    {
      v62 = *(v8 + 160);
    }

    else
    {
      v50 = vdupq_n_s16(v49);
      v51 = v50.u16[1];
      v52 = v50.u16[0];
      v53 = v50.u16[2];
      v54 = v50.u16[3];
      v55 = v50.u16[4];
      v56 = v50.u16[5];
      v57 = v50.u16[6];
      v58 = v50.u16[7];
      do
      {
        v60 = *v9;
        v59 = *(v9 + 1);
        v9 += 16;
        LOWORD(v60) = v60 / v52;
        WORD1(v60) = WORD1(v60) / v51;
        LOWORD(v61) = v59 / v52;
        WORD1(v61) = WORD1(v59) / v51;
        WORD2(v60) = WORD2(v60) / v53;
        WORD2(v61) = WORD2(v59) / v53;
        WORD3(v60) = WORD3(v60) / v54;
        WORD3(v61) = WORD3(v59) / v54;
        WORD4(v60) = WORD4(v60) / v55;
        WORD4(v61) = WORD4(v59) / v55;
        WORD5(v60) = WORD5(v60) / v56;
        WORD5(v61) = WORD5(v59) / v56;
        WORD6(v60) = WORD6(v60) / v57;
        WORD6(v61) = WORD6(v59) / v57;
        HIWORD(v60) = HIWORD(v60) / v58;
        HIWORD(v61) = HIWORD(v59) / v58;
        *v11 = v60;
        *(v11 + 16) = v61;
        v11 += 32;
        v62 = v48 - 16;
        v27 = v48 > 0x1F;
        v48 -= 16;
      }

      while (v27);
    }

    if (v62 >= 1)
    {
      v87 = v62 + 1;
      do
      {
        v88 = *v9++;
        *v11 = v88 / v49;
        v11 += 2;
        --v87;
      }

      while (v87 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_13;
    }

    v28 = *(v8 + 48);
    if (v28 < 16)
    {
      v34 = *(v8 + 48);
    }

    else
    {
      do
      {
        v30 = *v9;
        v29 = *(v9 + 1);
        v9 += 16;
        v32 = *v10;
        v31 = *(v10 + 1);
        v10 += 16;
        LOWORD(v32) = v30 / v32;
        LOWORD(v33) = v29 / v31;
        WORD1(v32) = WORD1(v30) / WORD1(v32);
        WORD1(v33) = WORD1(v29) / WORD1(v31);
        WORD2(v32) = WORD2(v30) / WORD2(v32);
        WORD2(v33) = WORD2(v29) / WORD2(v31);
        WORD3(v32) = WORD3(v30) / WORD3(v32);
        WORD3(v33) = WORD3(v29) / WORD3(v31);
        WORD4(v32) = WORD4(v30) / WORD4(v32);
        WORD4(v33) = WORD4(v29) / WORD4(v31);
        WORD5(v32) = WORD5(v30) / WORD5(v32);
        WORD5(v33) = WORD5(v29) / WORD5(v31);
        WORD6(v32) = WORD6(v30) / WORD6(v32);
        WORD6(v33) = WORD6(v29) / WORD6(v31);
        HIWORD(v32) = HIWORD(v30) / HIWORD(v32);
        HIWORD(v33) = HIWORD(v29) / HIWORD(v31);
        *v11 = v32;
        *(v11 + 16) = v33;
        v11 += 32;
        v34 = v28 - 16;
        v27 = v28 > 0x1F;
        v28 -= 16;
      }

      while (v27);
    }

    if (v34 >= 1)
    {
      v83 = v34 + 1;
      do
      {
        v85 = *v9++;
        v84 = v85;
        v86 = *v10++;
        *v11 = v84 / v86;
        v11 += 2;
        --v83;
      }

      while (v83 > 1);
    }
  }

LABEL_84:
  v89 = *MEMORY[0x277D85DE8];
}

void sub_25A63C4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::VectorVector<mlx::core::detail::Divide>>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A63C964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::VectorScalar<mlx::core::detail::Divide>>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Divide>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A63CD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,true,mlx::core::ScalarVector<mlx::core::detail::Divide>>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A63D194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned short,unsigned short,false,mlx::core::detail::Divide>(_WORD *a1, _WORD *a2, _WORD *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::Divide,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::Divide,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 / *v13;
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
          mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::Divide,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A63D5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v19 = *&result[v17];
          v18 = *&result[v17 + 8];
          v21 = *&a2[v17];
          v20 = *&a2[v17 + 8];
          LOWORD(v21) = v19 / v21;
          WORD1(v21) = WORD1(v19) / WORD1(v21);
          LOWORD(v22) = v18 / v20;
          WORD1(v22) = WORD1(v18) / WORD1(v20);
          WORD2(v21) = WORD2(v19) / WORD2(v21);
          WORD2(v22) = WORD2(v18) / WORD2(v20);
          WORD3(v21) = WORD3(v19) / WORD3(v21);
          WORD3(v22) = WORD3(v18) / WORD3(v20);
          WORD4(v21) = WORD4(v19) / WORD4(v21);
          WORD4(v22) = WORD4(v18) / WORD4(v20);
          WORD5(v21) = WORD5(v19) / WORD5(v21);
          WORD5(v22) = WORD5(v18) / WORD5(v20);
          WORD6(v21) = WORD6(v19) / WORD6(v21);
          WORD6(v22) = WORD6(v18) / WORD6(v20);
          HIWORD(v21) = HIWORD(v19) / HIWORD(v21);
          HIWORD(v22) = HIWORD(v18) / HIWORD(v20);
          v23 = v15;
          v24 = &a3[v17];
          *v24 = v21;
          v24[1] = v22;
          v15 = v23 - 16;
          v17 += 16;
        }

        while (v23 > 0x1F);
        v16 = &result[v17];
        v14 = &a3[v17];
        v13 = &a2[v17];
      }

      if (v15 >= 1)
      {
        v25 = v15 + 1;
        do
        {
          v27 = *v16++;
          v26 = v27;
          v28 = *v13++;
          *v14++ = v26 / v28;
          --v25;
        }

        while (v25 > 1);
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

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Divide>,1,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
        v19 = v18.u16[1];
        v20 = v18.u16[0];
        v21 = v18.u16[2];
        v22 = v18.u16[3];
        v23 = v18.u16[4];
        v24 = v18.u16[5];
        v25 = v18.u16[6];
        v26 = v18.u16[7];
        v14 = v11;
        do
        {
          v28 = *&result[v17];
          v27 = *&result[v17 + 8];
          LOWORD(v28) = v28 / v20;
          WORD1(v28) = WORD1(v28) / v19;
          LOWORD(v29) = v27 / v20;
          WORD1(v29) = WORD1(v27) / v19;
          WORD2(v28) = WORD2(v28) / v21;
          WORD2(v29) = WORD2(v27) / v21;
          WORD3(v28) = WORD3(v28) / v22;
          WORD3(v29) = WORD3(v27) / v22;
          WORD4(v28) = WORD4(v28) / v23;
          WORD4(v29) = WORD4(v27) / v23;
          WORD5(v28) = WORD5(v28) / v24;
          WORD5(v29) = WORD5(v27) / v24;
          WORD6(v28) = WORD6(v28) / v25;
          WORD6(v29) = WORD6(v27) / v25;
          HIWORD(v28) = HIWORD(v28) / v26;
          HIWORD(v29) = HIWORD(v27) / v26;
          v30 = v14;
          v31 = &a3[v17];
          *v31 = v28;
          v31[1] = v29;
          v14 = v30 - 16;
          v17 += 16;
        }

        while (v30 > 0x1F);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v32 = v14 + 1;
        do
        {
          v33 = *v16++;
          *v15++ = v33 / v13;
          --v32;
        }

        while (v32 > 1);
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

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Divide>,2,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Divide>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Divide>,3,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::VectorScalar<mlx::core::detail::Divide>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Divide>,1,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
        v19 = v18.u16[1];
        v20 = v18.u16[0];
        v21 = v18.u16[2];
        v22 = v18.u16[3];
        v23 = v18.u16[4];
        v24 = v18.u16[5];
        v25 = v18.u16[6];
        v26 = v18.u16[7];
        v14 = v11;
        do
        {
          v28 = *&a2[v17];
          v27 = *&a2[v17 + 8];
          LOWORD(v28) = v20 / v28;
          WORD1(v28) = v19 / WORD1(v28);
          LOWORD(v29) = v20 / v27;
          WORD1(v29) = v19 / WORD1(v27);
          WORD2(v28) = v21 / WORD2(v28);
          WORD2(v29) = v21 / WORD2(v27);
          WORD3(v28) = v22 / WORD3(v28);
          WORD3(v29) = v22 / WORD3(v27);
          WORD4(v28) = v23 / WORD4(v28);
          WORD4(v29) = v23 / WORD4(v27);
          WORD5(v28) = v24 / WORD5(v28);
          WORD5(v29) = v24 / WORD5(v27);
          WORD6(v28) = v25 / WORD6(v28);
          WORD6(v29) = v25 / WORD6(v27);
          HIWORD(v28) = v26 / HIWORD(v28);
          HIWORD(v29) = v26 / HIWORD(v27);
          v30 = v14;
          v31 = &a3[v17];
          *v31 = v28;
          v31[1] = v29;
          v14 = v30 - 16;
          v17 += 16;
        }

        while (v30 > 0x1F);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v32 = v14 + 1;
        do
        {
          v33 = *v16++;
          *v15++ = v13 / v33;
          --v32;
        }

        while (v32 > 1);
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

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Divide>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned __int16 *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(unsigned __int16 *result, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_WORD *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::Divide,2,false>(_WORD *result, _WORD *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v21 = *v23 / *v22;
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

_WORD *mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::Divide,3,false>(_WORD *result, _WORD *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned short,unsigned short,mlx::core::detail::Divide,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<unsigned int,unsigned int,mlx::core::detail::Divide>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v90 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      *v11 = *v9 / *v10;
      goto LABEL_84;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      v13 = *v9;
      if (v12 < 8)
      {
        v22 = *(*a2 + 160);
      }

      else
      {
        v14 = vdupq_n_s32(v13);
        v15 = v14.u32[1];
        v16 = v14.u32[2];
        v17 = v14.u32[3];
        v18 = v14.i32[0];
        v19 = v14.i32[0];
        do
        {
          v20 = *v10;
          v21 = v10[1];
          v10 += 2;
          LODWORD(v20) = v19 / v20;
          DWORD1(v20) = v15 / DWORD1(v20);
          LODWORD(v21) = v18 / v21;
          DWORD2(v20) = v16 / DWORD2(v20);
          DWORD1(v21) = v15 / DWORD1(v21);
          HIDWORD(v20) = v17 / HIDWORD(v20);
          DWORD2(v21) = v16 / DWORD2(v21);
          HIDWORD(v21) = v17 / HIDWORD(v21);
          *v11 = v20;
          *(v11 + 16) = v21;
          v11 += 32;
          v22 = v12 - 8;
          v23 = v12 > 0xF;
          v12 -= 8;
        }

        while (v23);
      }

      if (v22 >= 1)
      {
        v72 = v22 + 1;
        do
        {
          v73 = *v10;
          v10 = (v10 + 4);
          *v11 = v13 / v73;
          v11 += 4;
          --v72;
        }

        while (v72 > 1);
      }

      goto LABEL_84;
    }

LABEL_13:
    memset(v86, 0, sizeof(v86));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v86, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v30 = *a2;
    memset(v87, 0, sizeof(v87));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v87, *(v30 + 24), *(v30 + 32), (*(v30 + 32) - *(v30 + 24)) >> 3);
    v31 = *a3;
    v89[0] = 0;
    v89[1] = 0;
    v88 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v88, *(v31 + 24), *(v31 + 32), (*(v31 + 32) - *(v31 + 24)) >> 3);
    memset(v81, 0, sizeof(v81));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v81, v86, &v90, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v81, 0x7FFFFFFFuLL, &__p);
    v85 = v81;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v85);
    for (i = 0; i != -9; i -= 3)
    {
      v33 = v89[i - 1];
      if (v33)
      {
        v89[i] = v33;
        operator delete(v33);
      }
    }

    v34 = v84 + 6;
    v35 = *v84;
    v36 = (v84[1] - *v84) >> 3;
    v37 = v36 - 1;
    if (v36 - 1 >= -1)
    {
      v37 = -1;
    }

    v38 = v37 + 1;
    v39 = v36 + 1;
    v40 = v36 - 1;
    v41 = v36 - 1;
    while ((v41 & 0x80000000) == 0)
    {
      v42 = 8 * (v41 & 0x7FFFFFFF);
      --v39;
      --v41;
      if (*(v35 + v42) != *(*v34 + v42))
      {
        goto LABEL_29;
      }
    }

    v39 = v38;
LABEL_29:
    v54 = v84[3];
    v55 = (v84[4] - v54) >> 3;
    v56 = v55 - 1;
    if (v55 - 1 >= -1)
    {
      v56 = -1;
    }

    v57 = v56 + 1;
    v58 = v55 + 1;
    v59 = v55 - 1;
    v60 = v55 - 1;
    while ((v60 & 0x80000000) == 0)
    {
      v61 = 8 * (v60 & 0x7FFFFFFF);
      --v58;
      --v60;
      if (*(v54 + v61) != *(*v34 + v61))
      {
        goto LABEL_36;
      }
    }

    v58 = v57;
LABEL_36:
    v62 = v36 + 1;
    while ((v40 & 0x80000000) == 0)
    {
      v63 = *(v35 + 8 * (v40 & 0x7FFFFFFF));
      --v62;
      --v40;
      if (v63)
      {
        goto LABEL_41;
      }
    }

    v62 = v38;
LABEL_41:
    v64 = v55 + 1;
    while ((v59 & 0x80000000) == 0)
    {
      v65 = *(v54 + 8 * (v59 & 0x7FFFFFFF));
      --v64;
      --v59;
      if (v65)
      {
        goto LABEL_46;
      }
    }

    v64 = v57;
LABEL_46:
    v66 = (v83 - __p) >> 2;
    if (v39 <= v58)
    {
      v67 = v58;
    }

    else
    {
      v67 = v39;
    }

    if (v39 <= v64)
    {
      v39 = v64;
    }

    if (v62 > v58)
    {
      v58 = v62;
    }

    if (v66 > v58)
    {
      v68 = 1;
    }

    else
    {
      v58 = (v83 - __p) >> 2;
      v68 = a4;
    }

    if (v66 > v39)
    {
      v69 = 2;
    }

    else
    {
      v39 = v58;
      v69 = v68;
    }

    if (v66 <= v67)
    {
      v70 = v39;
    }

    else
    {
      v70 = v67;
    }

    if (v66 <= v67)
    {
      v71 = v69;
    }

    else
    {
      v71 = 3;
    }

    if (!v70 || *(*v34 + 8 * v70 - 8) < 16)
    {
      goto LABEL_67;
    }

    switch(v71)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::ScalarVector<mlx::core::detail::Divide>>(v9, v10, v11, v70, *(*a1 + 48), &__p, v84, v84 + 3, v84 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::VectorScalar<mlx::core::detail::Divide>>(v9, v10, v11, v70, *(*a1 + 48), &__p, v84, v84 + 3, v84 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::VectorVector<mlx::core::detail::Divide>>(v9, v10, v11, v70, *(*a1 + 48), &__p, v84, v84 + 3, v84 + 6);
        break;
      default:
        LODWORD(v66) = v70;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,false,mlx::core::detail::Divide>(v9, v10, v11, v66, *(*a1 + 48), &__p, v84, v84 + 3, v84 + 6);
        break;
    }

    v86[0] = &v84;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v86);
    if (__p)
    {
      v83 = __p;
      operator delete(__p);
    }

    goto LABEL_84;
  }

  if (a4 == 2)
  {
    v43 = *(v8 + 160);
    v44 = *v10;
    if (v43 < 8)
    {
      v53 = *(v8 + 160);
    }

    else
    {
      v45 = vdupq_n_s32(v44);
      v46 = v45.u32[1];
      v47 = v45.u32[2];
      v48 = v45.u32[3];
      v49 = v45.i32[0];
      v50 = v45.i32[0];
      do
      {
        v51 = *v9;
        v52 = v9[1];
        v9 += 2;
        LODWORD(v51) = v51 / v50;
        DWORD1(v51) /= v46;
        LODWORD(v52) = v52 / v49;
        DWORD2(v51) /= v47;
        DWORD1(v52) /= v46;
        HIDWORD(v51) /= v48;
        DWORD2(v52) /= v47;
        HIDWORD(v52) /= v48;
        *v11 = v51;
        *(v11 + 16) = v52;
        v11 += 32;
        v53 = v43 - 8;
        v23 = v43 > 0xF;
        v43 -= 8;
      }

      while (v23);
    }

    if (v53 >= 1)
    {
      v78 = v53 + 1;
      do
      {
        v79 = *v9;
        v9 = (v9 + 4);
        *v11 = v79 / v44;
        v11 += 4;
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

    v24 = *(v8 + 48);
    if (v24 < 8)
    {
      v29 = *(v8 + 48);
    }

    else
    {
      do
      {
        v26 = *v9;
        v25 = v9[1];
        v9 += 2;
        v27 = *v10;
        v28 = v10[1];
        v10 += 2;
        LODWORD(v26) = v26 / v27;
        DWORD1(v26) /= DWORD1(v27);
        LODWORD(v25) = v25 / v28;
        DWORD1(v25) /= DWORD1(v28);
        DWORD2(v26) /= DWORD2(v27);
        DWORD2(v25) /= DWORD2(v28);
        HIDWORD(v26) /= HIDWORD(v27);
        HIDWORD(v25) /= HIDWORD(v28);
        *v11 = v26;
        *(v11 + 16) = v25;
        v11 += 32;
        v29 = v24 - 8;
        v23 = v24 > 0xF;
        v24 -= 8;
      }

      while (v23);
    }

    if (v29 >= 1)
    {
      v74 = v29 + 1;
      do
      {
        v76 = *v9;
        v9 = (v9 + 4);
        v75 = v76;
        v77 = *v10;
        v10 = (v10 + 4);
        *v11 = v75 / v77;
        v11 += 4;
        --v74;
      }

      while (v74 > 1);
    }
  }

LABEL_84:
  v80 = *MEMORY[0x277D85DE8];
}

void sub_25A63E810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::VectorVector<mlx::core::detail::Divide>>(int *a1, unsigned int *a2, int *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A63EC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::VectorScalar<mlx::core::detail::Divide>>(unsigned int *a1, unsigned int *a2, unsigned int *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Divide>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A63F0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,true,mlx::core::ScalarVector<mlx::core::detail::Divide>>(unsigned int *a1, unsigned int *a2, unsigned int *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A63F4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned int,unsigned int,false,mlx::core::detail::Divide>(_DWORD *a1, _DWORD *a2, int *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Divide,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Divide,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 / *v13;
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
          mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Divide,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A63F8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(int *result, unsigned int *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v18 = *&result[v17 + 4];
          v19 = *&a2[v17 + 4];
          LODWORD(v20) = *&result[v17] / *&a2[v17];
          DWORD1(v20) = HIDWORD(*&result[v17]) / HIDWORD(*&a2[v17]);
          DWORD2(v20) = *&result[v17 + 2] / *&a2[v17 + 2];
          LODWORD(v18) = v18 / v19;
          DWORD1(v18) = HIDWORD(*&result[v17 + 4]) / HIDWORD(*&a2[v17 + 4]);
          HIDWORD(v20) = HIDWORD(*&result[v17]) / HIDWORD(*&a2[v17]);
          DWORD2(v18) /= DWORD2(v19);
          HIDWORD(v18) = HIDWORD(*&result[v17 + 4]) / HIDWORD(v19);
          v21 = v15;
          v22 = &a3[v17];
          *v22 = v20;
          *(v22 + 1) = v18;
          v15 = v21 - 8;
          v17 += 8;
        }

        while (v21 > 0xF);
        v16 = &result[v17];
        v14 = &a3[v17];
        v13 = &a2[v17];
      }

      if (v15 >= 1)
      {
        v23 = v15 + 1;
        do
        {
          v25 = *v16++;
          v24 = v25;
          v26 = *v13++;
          *v14++ = v24 / v26;
          --v23;
        }

        while (v23 > 1);
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

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(int *result, unsigned int *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(int *result, unsigned int *a2, int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Divide>,1,true>(unsigned int *result, unsigned int *a2, unsigned int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
        v19 = v18.u32[1];
        v20 = v18.u32[2];
        v21 = v18.u32[3];
        v22 = v18.i32[0];
        v23 = v18.i32[0];
        v14 = v11;
        do
        {
          v24 = *&result[v17];
          v25 = *&result[v17 + 4];
          LODWORD(v24) = v24 / v23;
          DWORD1(v24) = HIDWORD(*&result[v17]) / v19;
          LODWORD(v25) = v25 / v22;
          DWORD2(v24) = *&result[v17 + 2] / v20;
          DWORD1(v25) /= v19;
          HIDWORD(v24) /= v21;
          DWORD2(v25) /= v20;
          HIDWORD(v25) /= v21;
          v26 = v14;
          v27 = &a3[v17];
          *v27 = v24;
          *(v27 + 1) = v25;
          v14 = v26 - 8;
          v17 += 8;
        }

        while (v26 > 0xF);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v28 = v14 + 1;
        do
        {
          v29 = *v16++;
          *v15++ = v29 / v13;
          --v28;
        }

        while (v28 > 1);
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

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Divide>,2,true>(unsigned int *result, unsigned int *a2, unsigned int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Divide>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Divide>,3,true>(unsigned int *result, unsigned int *a2, unsigned int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::VectorScalar<mlx::core::detail::Divide>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Divide>,1,true>(unsigned int *result, unsigned int *a2, unsigned int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
        v19 = v18.u32[1];
        v20 = v18.u32[2];
        v21 = v18.u32[3];
        v22 = v18.i32[0];
        v23 = v18.i32[0];
        v14 = v11;
        do
        {
          v24 = *&a2[v17];
          v25 = *&a2[v17 + 4];
          LODWORD(v24) = v23 / v24;
          DWORD1(v24) = v19 / HIDWORD(*&a2[v17]);
          LODWORD(v25) = v22 / v25;
          DWORD2(v24) = v20 / *&a2[v17 + 2];
          DWORD1(v25) = v19 / DWORD1(v25);
          HIDWORD(v24) = v21 / HIDWORD(v24);
          DWORD2(v25) = v20 / DWORD2(v25);
          HIDWORD(v25) = v21 / HIDWORD(v25);
          v26 = v14;
          v27 = &a3[v17];
          *v27 = v24;
          *(v27 + 1) = v25;
          v14 = v26 - 8;
          v17 += 8;
        }

        while (v26 > 0xF);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v28 = v14 + 1;
        do
        {
          v29 = *v16++;
          *v15++ = v13 / v29;
          --v28;
        }

        while (v28 > 1);
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

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(unsigned int *result, unsigned int *a2, unsigned int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Divide>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unsigned int *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(unsigned int *result, unsigned int *a2, unsigned int *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Divide,2,false>(_DWORD *result, _DWORD *a2, int *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          *v19 = *v21 / *v20;
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

_DWORD *mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Divide,3,false>(_DWORD *result, _DWORD *a2, int *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned int,unsigned int,mlx::core::detail::Divide,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<unsigned long long,unsigned long long,mlx::core::detail::Divide>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v85 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      *v11 = *v9 / *v10;
      goto LABEL_84;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      v13 = *v9;
      if (v12 < 4)
      {
        v20 = *(*a2 + 160);
      }

      else
      {
        v14 = vdupq_n_s64(v13);
        v15 = v14.u64[1];
        v16 = v14.i64[0];
        v17 = v14.i64[0];
        do
        {
          v19 = *v10;
          v18 = v10[1];
          v10 += 2;
          *&v19 = v17 / v19;
          *(&v19 + 1) = v15 / *(&v19 + 1);
          *&v18 = v16 / v18;
          *(&v18 + 1) = v15 / *(&v18 + 1);
          *v11 = v19;
          *(v11 + 16) = v18;
          v11 += 32;
          v20 = v12 - 4;
          v21 = v12 > 7;
          v12 -= 4;
        }

        while (v21);
      }

      if (v20 >= 1)
      {
        v67 = v20 + 1;
        do
        {
          v68 = *v10;
          v10 = (v10 + 8);
          *v11 = v13 / v68;
          v11 += 8;
          --v67;
        }

        while (v67 > 1);
      }

      goto LABEL_84;
    }

LABEL_13:
    memset(v81, 0, sizeof(v81));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v81, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
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
    mlx::core::collapse_contiguous_dims(v8, v76, 0x7FFFFFFFuLL, &__p);
    v80 = v76;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v80);
    for (i = 0; i != -9; i -= 3)
    {
      v30 = v84[i - 1];
      if (v30)
      {
        v84[i] = v30;
        operator delete(v30);
      }
    }

    v31 = v79 + 6;
    v32 = *v79;
    v33 = (v79[1] - *v79) >> 3;
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
      if (*(v49 + v56) != *(*v31 + v56))
      {
        goto LABEL_36;
      }
    }

    v53 = v52;
LABEL_36:
    v57 = v33 + 1;
    while ((v37 & 0x80000000) == 0)
    {
      v58 = *(v32 + 8 * (v37 & 0x7FFFFFFF));
      --v57;
      --v37;
      if (v58)
      {
        goto LABEL_41;
      }
    }

    v57 = v35;
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
    if (v36 <= v53)
    {
      v62 = v53;
    }

    else
    {
      v62 = v36;
    }

    if (v36 <= v59)
    {
      v36 = v59;
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

    if (v61 > v36)
    {
      v64 = 2;
    }

    else
    {
      v36 = v53;
      v64 = v63;
    }

    if (v61 <= v62)
    {
      v65 = v36;
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

    if (!v65 || *(*v31 + 8 * v65 - 8) < 16)
    {
      goto LABEL_67;
    }

    switch(v66)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::ScalarVector<mlx::core::detail::Divide>>(v9, v10, v11, v65, *(*a1 + 48), &__p, v79, v79 + 3, v79 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorScalar<mlx::core::detail::Divide>>(v9, v10, v11, v65, *(*a1 + 48), &__p, v79, v79 + 3, v79 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorVector<mlx::core::detail::Divide>>(v9, v10, v11, v65, *(*a1 + 48), &__p, v79, v79 + 3, v79 + 6);
        break;
      default:
        LODWORD(v61) = v65;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,false,mlx::core::detail::Divide>(v9, v10, v11, v61, *(*a1 + 48), &__p, v79, v79 + 3, v79 + 6);
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
    v40 = *(v8 + 160);
    v41 = *v10;
    if (v40 < 4)
    {
      v48 = *(v8 + 160);
    }

    else
    {
      v42 = vdupq_n_s64(v41);
      v43 = v42.u64[1];
      v44 = v42.i64[0];
      v45 = v42.i64[0];
      do
      {
        v47 = *v9;
        v46 = v9[1];
        v9 += 2;
        *&v47 = v47 / v45;
        *(&v47 + 1) /= v43;
        *&v46 = v46 / v44;
        *(&v46 + 1) /= v43;
        *v11 = v47;
        *(v11 + 16) = v46;
        v11 += 32;
        v48 = v40 - 4;
        v21 = v40 > 7;
        v40 -= 4;
      }

      while (v21);
    }

    if (v48 >= 1)
    {
      v73 = v48 + 1;
      do
      {
        v74 = *v9;
        v9 = (v9 + 8);
        *v11 = v74 / v41;
        v11 += 8;
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

    v22 = *(v8 + 48);
    if (v22 < 4)
    {
      v26 = *(v8 + 48);
    }

    else
    {
      do
      {
        v24 = *v10;
        v23 = v10[1];
        v10 += 2;
        *&v24 = *v9 / v24;
        *(&v24 + 1) = *(v9 + 1) / *(&v24 + 1);
        v25 = v9[1];
        *&v23 = *(v9 + 2) / v23;
        *(&v23 + 1) = *(v9 + 3) / *(&v23 + 1);
        *v11 = v24;
        *(v11 + 16) = v23;
        v11 += 32;
        v9 += 2;
        v26 = v22 - 4;
        v21 = v22 > 7;
        v22 -= 4;
      }

      while (v21);
    }

    if (v26 >= 1)
    {
      v69 = v26 + 1;
      do
      {
        v71 = *v9;
        v9 = (v9 + 8);
        v70 = v71;
        v72 = *v10;
        v10 = (v10 + 8);
        *v11 = v70 / v72;
        v11 += 8;
        --v69;
      }

      while (v69 > 1);
    }
  }

LABEL_84:
  v75 = *MEMORY[0x277D85DE8];
}

void sub_25A640908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorVector<mlx::core::detail::Divide>>(uint64_t *a1, unint64_t *a2, unint64_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A640D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::VectorScalar<mlx::core::detail::Divide>>(unint64_t *a1, unint64_t *a2, unint64_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Divide>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A6411A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,true,mlx::core::ScalarVector<mlx::core::detail::Divide>>(unint64_t *a1, unint64_t *a2, unint64_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A6415B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<unsigned long long,unsigned long long,false,mlx::core::detail::Divide>(void *a1, void *a2, void *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Divide,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Divide,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 / *v13;
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
          mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Divide,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A6419D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(uint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v19 = *&a2[v17];
          v18 = *&a2[v17 + 2];
          *&v20 = result[v17] / a2[v17];
          *(&v20 + 1) = result[v17 + 1] / a2[v17 + 1];
          v21 = v15;
          *&v22 = result[v17 + 2] / a2[v17 + 2];
          *(&v22 + 1) = result[v17 + 3] / a2[v17 + 3];
          v23 = &a3[v17];
          *v23 = v20;
          *(v23 + 1) = v22;
          v15 = v21 - 4;
          v17 += 4;
        }

        while (v21 > 7);
        v16 = &result[v17];
        v14 = &a3[v17];
        v13 = &a2[v17];
      }

      if (v15 >= 1)
      {
        v24 = v15 + 1;
        do
        {
          v26 = *v16++;
          v25 = v26;
          v27 = *v13++;
          *v14++ = v25 / v27;
          --v24;
        }

        while (v24 > 1);
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

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(uint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(uint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Divide>,1,true>(unint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
        v19 = v18.u64[1];
        v20 = v18.i64[0];
        v21 = v18.i64[0];
        v14 = v11;
        do
        {
          v22 = v14;
          *&v23 = result[v17] / v21;
          *(&v23 + 1) = result[v17 + 1] / v19;
          *&v24 = result[v17 + 2] / v20;
          *(&v24 + 1) = result[v17 + 3] / v19;
          v25 = &a3[v17];
          *v25 = v23;
          *(v25 + 1) = v24;
          v14 = v22 - 4;
          v17 += 4;
        }

        while (v22 > 7);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v26 = v14 + 1;
        do
        {
          v27 = *v16++;
          *v15++ = v27 / v13;
          --v26;
        }

        while (v26 > 1);
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

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Divide>,2,true>(unint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Divide>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Divide>,3,true>(unint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::VectorScalar<mlx::core::detail::Divide>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Divide>,1,true>(unint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
        v19 = v18.u64[1];
        v20 = v18.i64[0];
        v21 = v18.i64[0];
        v14 = v11;
        do
        {
          v22 = v14;
          *&v23 = v21 / a2[v17];
          *(&v23 + 1) = v19 / a2[v17 + 1];
          *&v24 = v20 / a2[v17 + 2];
          *(&v24 + 1) = v19 / a2[v17 + 3];
          v25 = &a3[v17];
          *v25 = v23;
          *(v25 + 1) = v24;
          v14 = v22 - 4;
          v17 += 4;
        }

        while (v22 > 7);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v26 = v14 + 1;
        do
        {
          v27 = *v16++;
          *v15++ = v13 / v27;
          --v26;
        }

        while (v26 > 1);
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

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(unint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Divide>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(unint64_t *result, unint64_t *a2, unint64_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Divide,2,false>(void *result, void *a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int a8)
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
          *v21 = *v23 / *v22;
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

void *mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Divide,3,false>(void *result, void *a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int a8)
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
      result = mlx::core::binary_op_dims<unsigned long long,unsigned long long,mlx::core::detail::Divide,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<signed char,signed char,mlx::core::detail::Divide>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      *v11 = *v9 / *v10;
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
          LOBYTE(v16) = v14.i8[0] / v15;
          BYTE1(v16) = v14.i8[1] / SBYTE1(v15);
          BYTE2(v16) = v14.i8[2] / SBYTE2(v15);
          BYTE3(v16) = v14.i8[3] / SBYTE3(v15);
          BYTE4(v16) = v14.i8[4] / SBYTE4(v15);
          BYTE5(v16) = v14.i8[5] / SBYTE5(v15);
          BYTE6(v16) = v14.i8[6] / SBYTE6(v15);
          BYTE7(v16) = v14.i8[7] / SBYTE7(v15);
          BYTE8(v16) = v14.i8[8] / SBYTE8(v15);
          BYTE9(v16) = v14.i8[9] / SBYTE9(v15);
          BYTE10(v16) = v14.i8[10] / SBYTE10(v15);
          BYTE11(v16) = v14.i8[11] / SBYTE11(v15);
          BYTE12(v16) = v14.i8[12] / SBYTE12(v15);
          BYTE13(v16) = v14.i8[13] / SBYTE13(v15);
          BYTE14(v16) = v14.i8[14] / SBYTE14(v15);
          HIBYTE(v16) = v14.i8[15] / SHIBYTE(v15);
          *v11 = v16;
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
          *v11++ = v13 / v63;
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
        mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::ScalarVector<mlx::core::detail::Divide>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::VectorScalar<mlx::core::detail::Divide>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::VectorVector<mlx::core::detail::Divide>>(v9, v10, v11, v60, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
        break;
      default:
        LODWORD(v56) = v60;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<signed char,signed char,false,mlx::core::detail::Divide>(v9, v10, v11, v56, *(*a1 + 48), &__p, v74, v74 + 3, v74 + 6);
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
        LOBYTE(v42) = v41 / v40.i8[0];
        BYTE1(v42) = SBYTE1(v41) / v40.i8[1];
        BYTE2(v42) = SBYTE2(v41) / v40.i8[2];
        BYTE3(v42) = SBYTE3(v41) / v40.i8[3];
        BYTE4(v42) = SBYTE4(v41) / v40.i8[4];
        BYTE5(v42) = SBYTE5(v41) / v40.i8[5];
        BYTE6(v42) = SBYTE6(v41) / v40.i8[6];
        BYTE7(v42) = SBYTE7(v41) / v40.i8[7];
        BYTE8(v42) = SBYTE8(v41) / v40.i8[8];
        BYTE9(v42) = SBYTE9(v41) / v40.i8[9];
        BYTE10(v42) = SBYTE10(v41) / v40.i8[10];
        BYTE11(v42) = SBYTE11(v41) / v40.i8[11];
        BYTE12(v42) = SBYTE12(v41) / v40.i8[12];
        BYTE13(v42) = SBYTE13(v41) / v40.i8[13];
        BYTE14(v42) = SBYTE14(v41) / v40.i8[14];
        HIBYTE(v42) = SHIBYTE(v41) / v40.i8[15];
        *v11 = v42;
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
        *v11++ = v69 / v39;
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
        LOBYTE(v23) = v21 / v22;
        BYTE1(v23) = SBYTE1(v21) / SBYTE1(v22);
        BYTE2(v23) = SBYTE2(v21) / SBYTE2(v22);
        BYTE3(v23) = SBYTE3(v21) / SBYTE3(v22);
        BYTE4(v23) = SBYTE4(v21) / SBYTE4(v22);
        BYTE5(v23) = SBYTE5(v21) / SBYTE5(v22);
        BYTE6(v23) = SBYTE6(v21) / SBYTE6(v22);
        BYTE7(v23) = SBYTE7(v21) / SBYTE7(v22);
        BYTE8(v23) = SBYTE8(v21) / SBYTE8(v22);
        BYTE9(v23) = SBYTE9(v21) / SBYTE9(v22);
        BYTE10(v23) = SBYTE10(v21) / SBYTE10(v22);
        BYTE11(v23) = SBYTE11(v21) / SBYTE11(v22);
        BYTE12(v23) = SBYTE12(v21) / SBYTE12(v22);
        BYTE13(v23) = SBYTE13(v21) / SBYTE13(v22);
        BYTE14(v23) = SBYTE14(v21) / SBYTE14(v22);
        HIBYTE(v23) = SHIBYTE(v21) / SHIBYTE(v22);
        *v11 = v23;
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
        *v11++ = v65 / v67;
        --v64;
      }

      while (v64 > 1);
    }
  }

LABEL_84:
  v70 = *MEMORY[0x277D85DE8];
}

void sub_25A642B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::VectorVector<mlx::core::detail::Divide>>(char *a1, char *a2, _BYTE *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A642FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::VectorScalar<mlx::core::detail::Divide>>(char *a1, char *a2, _BYTE *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Divide>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A6433F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<signed char,signed char,true,mlx::core::ScalarVector<mlx::core::detail::Divide>>(char *a1, char *a2, _BYTE *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(&a1[v61], &a2[v54], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A643808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<signed char,signed char,false,mlx::core::detail::Divide>(char *a1, char *a2, _BYTE *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t **a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Divide,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Divide,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 / *v13;
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
          mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Divide,3,false>(&v14[v65], &v13[v58], &v12[v23], a6, a7, a8, a9, v15);
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

void sub_25A643C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(char *result, char *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v19 = *&result[v17];
          v20 = *&a2[v17];
          LOBYTE(v21) = v19 / v20;
          BYTE1(v21) = SBYTE1(v19) / SBYTE1(v20);
          BYTE2(v21) = SBYTE2(v19) / SBYTE2(v20);
          BYTE3(v21) = SBYTE3(v19) / SBYTE3(v20);
          BYTE4(v21) = SBYTE4(v19) / SBYTE4(v20);
          BYTE5(v21) = SBYTE5(v19) / SBYTE5(v20);
          BYTE6(v21) = SBYTE6(v19) / SBYTE6(v20);
          BYTE7(v21) = SBYTE7(v19) / SBYTE7(v20);
          BYTE8(v21) = SBYTE8(v19) / SBYTE8(v20);
          BYTE9(v21) = SBYTE9(v19) / SBYTE9(v20);
          BYTE10(v21) = SBYTE10(v19) / SBYTE10(v20);
          BYTE11(v21) = SBYTE11(v19) / SBYTE11(v20);
          BYTE12(v21) = SBYTE12(v19) / SBYTE12(v20);
          BYTE13(v21) = SBYTE13(v19) / SBYTE13(v20);
          BYTE14(v21) = SBYTE14(v19) / SBYTE14(v20);
          HIBYTE(v21) = SHIBYTE(v19) / SHIBYTE(v20);
          *&a3[v17] = v21;
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
        v22 = v13 + 1;
        do
        {
          v24 = *v16++;
          v23 = v24;
          v25 = *v15++;
          *v14++ = v23 / v25;
          --v22;
        }

        while (v22 > 1);
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

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(char *result, char *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(char *result, char *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Divide>,1,true>(char *result, char *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v19 = *&result[v17];
          LOBYTE(v20) = v19 / v18.i8[0];
          BYTE1(v20) = SBYTE1(v19) / v18.i8[1];
          BYTE2(v20) = SBYTE2(v19) / v18.i8[2];
          BYTE3(v20) = SBYTE3(v19) / v18.i8[3];
          BYTE4(v20) = SBYTE4(v19) / v18.i8[4];
          BYTE5(v20) = SBYTE5(v19) / v18.i8[5];
          BYTE6(v20) = SBYTE6(v19) / v18.i8[6];
          BYTE7(v20) = SBYTE7(v19) / v18.i8[7];
          BYTE8(v20) = SBYTE8(v19) / v18.i8[8];
          BYTE9(v20) = SBYTE9(v19) / v18.i8[9];
          BYTE10(v20) = SBYTE10(v19) / v18.i8[10];
          BYTE11(v20) = SBYTE11(v19) / v18.i8[11];
          BYTE12(v20) = SBYTE12(v19) / v18.i8[12];
          BYTE13(v20) = SBYTE13(v19) / v18.i8[13];
          BYTE14(v20) = SBYTE14(v19) / v18.i8[14];
          HIBYTE(v20) = SHIBYTE(v19) / v18.i8[15];
          v21 = v14;
          *&a3[v17] = v20;
          v14 -= 16;
          v17 += 16;
        }

        while (v21 > 0x1F);
        v16 = &result[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v23 = *v16++;
          *v15++ = v23 / v13;
          --v22;
        }

        while (v22 > 1);
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

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Divide>,2,true>(char *result, char *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Divide>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Divide>,3,true>(char *result, char *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,signed char,mlx::core::VectorScalar<mlx::core::detail::Divide>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Divide>,1,true>(char *result, char *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v19 = *&a2[v17];
          LOBYTE(v20) = v18.i8[0] / v19;
          BYTE1(v20) = v18.i8[1] / SBYTE1(v19);
          BYTE2(v20) = v18.i8[2] / SBYTE2(v19);
          BYTE3(v20) = v18.i8[3] / SBYTE3(v19);
          BYTE4(v20) = v18.i8[4] / SBYTE4(v19);
          BYTE5(v20) = v18.i8[5] / SBYTE5(v19);
          BYTE6(v20) = v18.i8[6] / SBYTE6(v19);
          BYTE7(v20) = v18.i8[7] / SBYTE7(v19);
          BYTE8(v20) = v18.i8[8] / SBYTE8(v19);
          BYTE9(v20) = v18.i8[9] / SBYTE9(v19);
          BYTE10(v20) = v18.i8[10] / SBYTE10(v19);
          BYTE11(v20) = v18.i8[11] / SBYTE11(v19);
          BYTE12(v20) = v18.i8[12] / SBYTE12(v19);
          BYTE13(v20) = v18.i8[13] / SBYTE13(v19);
          BYTE14(v20) = v18.i8[14] / SBYTE14(v19);
          HIBYTE(v20) = v18.i8[15] / SHIBYTE(v19);
          v21 = v14;
          *&a3[v17] = v20;
          v14 -= 16;
          v17 += 16;
        }

        while (v21 > 0x1F);
        v16 = &a2[v17];
        v15 = &a3[v17];
      }

      if (v14 >= 1)
      {
        v22 = v14 + 1;
        do
        {
          v23 = *v16++;
          *v15++ = v13 / v23;
          --v22;
        }

        while (v22 > 1);
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

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(char *result, char *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Divide>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(char *result, char *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,signed char,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Divide,2,false>(char *result, char *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          *v20 = *v18 / *v19;
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

char *mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Divide,3,false>(char *result, char *a2, _BYTE *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<signed char,signed char,mlx::core::detail::Divide,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      a3 += v17;
      v14 += v15;
      a2 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<short,short,mlx::core::detail::Divide>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 <= 1)
  {
    if (!a4)
    {
      *v11 = *v9 / *v10;
      goto LABEL_84;
    }

    if (a4 == 1)
    {
      v12 = *(*a2 + 160);
      v13 = *v9;
      if (v12 < 16)
      {
        v26 = *(*a2 + 160);
      }

      else
      {
        v14 = vdupq_n_s16(v13);
        v15 = v14.i16[1];
        v16 = v14.i16[0];
        v17 = v14.i16[2];
        v18 = v14.i16[3];
        v19 = v14.i16[4];
        v20 = v14.i16[5];
        v21 = v14.i16[6];
        v22 = v14.i16[7];
        do
        {
          v24 = *v10;
          v23 = *(v10 + 1);
          v10 += 16;
          LOWORD(v24) = v16 / v24;
          WORD1(v24) = v15 / SWORD1(v24);
          LOWORD(v25) = v16 / v23;
          WORD1(v25) = v15 / SWORD1(v23);
          WORD2(v24) = v17 / SWORD2(v24);
          WORD2(v25) = v17 / SWORD2(v23);
          WORD3(v24) = v18 / SWORD3(v24);
          WORD3(v25) = v18 / SWORD3(v23);
          WORD4(v24) = v19 / SWORD4(v24);
          WORD4(v25) = v19 / SWORD4(v23);
          WORD5(v24) = v20 / SWORD5(v24);
          WORD5(v25) = v20 / SWORD5(v23);
          WORD6(v24) = v21 / SWORD6(v24);
          WORD6(v25) = v21 / SWORD6(v23);
          HIWORD(v24) = v22 / SHIWORD(v24);
          HIWORD(v25) = v22 / SHIWORD(v23);
          *v11 = v24;
          *(v11 + 16) = v25;
          v11 += 32;
          v26 = v12 - 16;
          v27 = v12 > 0x1F;
          v12 -= 16;
        }

        while (v27);
      }

      if (v26 >= 1)
      {
        v81 = v26 + 1;
        do
        {
          v82 = *v10++;
          *v11 = v13 / v82;
          v11 += 2;
          --v81;
        }

        while (v81 > 1);
      }

      goto LABEL_84;
    }

LABEL_13:
    memset(v95, 0, sizeof(v95));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v95, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v35 = *a2;
    memset(v96, 0, sizeof(v96));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v96, *(v35 + 24), *(v35 + 32), (*(v35 + 32) - *(v35 + 24)) >> 3);
    v36 = *a3;
    v98[0] = 0;
    v98[1] = 0;
    v97 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v97, *(v36 + 24), *(v36 + 32), (*(v36 + 32) - *(v36 + 24)) >> 3);
    memset(v90, 0, sizeof(v90));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v90, v95, &v99, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v90, 0x7FFFFFFFuLL, &__p);
    v94 = v90;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v94);
    for (i = 0; i != -9; i -= 3)
    {
      v38 = v98[i - 1];
      if (v38)
      {
        v98[i] = v38;
        operator delete(v38);
      }
    }

    v39 = v93 + 6;
    v40 = *v93;
    v41 = (v93[1] - *v93) >> 3;
    v42 = v41 - 1;
    if (v41 - 1 >= -1)
    {
      v42 = -1;
    }

    v43 = v42 + 1;
    v44 = v41 + 1;
    v45 = v41 - 1;
    v46 = v41 - 1;
    while ((v46 & 0x80000000) == 0)
    {
      v47 = 8 * (v46 & 0x7FFFFFFF);
      --v44;
      --v46;
      if (*(v40 + v47) != *(*v39 + v47))
      {
        goto LABEL_29;
      }
    }

    v44 = v43;
LABEL_29:
    v63 = v93[3];
    v64 = (v93[4] - v63) >> 3;
    v65 = v64 - 1;
    if (v64 - 1 >= -1)
    {
      v65 = -1;
    }

    v66 = v65 + 1;
    v67 = v64 + 1;
    v68 = v64 - 1;
    v69 = v64 - 1;
    while ((v69 & 0x80000000) == 0)
    {
      v70 = 8 * (v69 & 0x7FFFFFFF);
      --v67;
      --v69;
      if (*(v63 + v70) != *(*v39 + v70))
      {
        goto LABEL_36;
      }
    }

    v67 = v66;
LABEL_36:
    v71 = v41 + 1;
    while ((v45 & 0x80000000) == 0)
    {
      v72 = *(v40 + 8 * (v45 & 0x7FFFFFFF));
      --v71;
      --v45;
      if (v72)
      {
        goto LABEL_41;
      }
    }

    v71 = v43;
LABEL_41:
    v73 = v64 + 1;
    while ((v68 & 0x80000000) == 0)
    {
      v74 = *(v63 + 8 * (v68 & 0x7FFFFFFF));
      --v73;
      --v68;
      if (v74)
      {
        goto LABEL_46;
      }
    }

    v73 = v66;
LABEL_46:
    v75 = (v92 - __p) >> 2;
    if (v44 <= v67)
    {
      v76 = v67;
    }

    else
    {
      v76 = v44;
    }

    if (v44 <= v73)
    {
      v44 = v73;
    }

    if (v71 > v67)
    {
      v67 = v71;
    }

    if (v75 > v67)
    {
      v77 = 1;
    }

    else
    {
      v67 = (v92 - __p) >> 2;
      v77 = a4;
    }

    if (v75 > v44)
    {
      v78 = 2;
    }

    else
    {
      v44 = v67;
      v78 = v77;
    }

    if (v75 <= v76)
    {
      v79 = v44;
    }

    else
    {
      v79 = v76;
    }

    if (v75 <= v76)
    {
      v80 = v78;
    }

    else
    {
      v80 = 3;
    }

    if (!v79 || *(*v39 + 8 * v79 - 8) < 16)
    {
      goto LABEL_67;
    }

    switch(v80)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::ScalarVector<mlx::core::detail::Divide>>(v9, v10, v11, v79, *(*a1 + 48), &__p, v93, v93 + 3, v93 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::VectorScalar<mlx::core::detail::Divide>>(v9, v10, v11, v79, *(*a1 + 48), &__p, v93, v93 + 3, v93 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::VectorVector<mlx::core::detail::Divide>>(v9, v10, v11, v79, *(*a1 + 48), &__p, v93, v93 + 3, v93 + 6);
        break;
      default:
        LODWORD(v75) = v79;
LABEL_67:
        mlx::core::binary_op_dispatch_dims<short,short,false,mlx::core::detail::Divide>(v9, v10, v11, v75, *(*a1 + 48), &__p, v93, v93 + 3, v93 + 6);
        break;
    }

    v95[0] = &v93;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v95);
    if (__p)
    {
      v92 = __p;
      operator delete(__p);
    }

    goto LABEL_84;
  }

  if (a4 == 2)
  {
    v48 = *(v8 + 160);
    v49 = *v10;
    if (v48 < 16)
    {
      v62 = *(v8 + 160);
    }

    else
    {
      v50 = vdupq_n_s16(v49);
      v51 = v50.i16[1];
      v52 = v50.i16[0];
      v53 = v50.i16[2];
      v54 = v50.i16[3];
      v55 = v50.i16[4];
      v56 = v50.i16[5];
      v57 = v50.i16[6];
      v58 = v50.i16[7];
      do
      {
        v60 = *v9;
        v59 = *(v9 + 1);
        v9 += 16;
        LOWORD(v60) = v60 / v52;
        WORD1(v60) = SWORD1(v60) / v51;
        LOWORD(v61) = v59 / v52;
        WORD1(v61) = SWORD1(v59) / v51;
        WORD2(v60) = SWORD2(v60) / v53;
        WORD2(v61) = SWORD2(v59) / v53;
        WORD3(v60) = SWORD3(v60) / v54;
        WORD3(v61) = SWORD3(v59) / v54;
        WORD4(v60) = SWORD4(v60) / v55;
        WORD4(v61) = SWORD4(v59) / v55;
        WORD5(v60) = SWORD5(v60) / v56;
        WORD5(v61) = SWORD5(v59) / v56;
        WORD6(v60) = SWORD6(v60) / v57;
        WORD6(v61) = SWORD6(v59) / v57;
        HIWORD(v60) = SHIWORD(v60) / v58;
        HIWORD(v61) = SHIWORD(v59) / v58;
        *v11 = v60;
        *(v11 + 16) = v61;
        v11 += 32;
        v62 = v48 - 16;
        v27 = v48 > 0x1F;
        v48 -= 16;
      }

      while (v27);
    }

    if (v62 >= 1)
    {
      v87 = v62 + 1;
      do
      {
        v88 = *v9++;
        *v11 = v88 / v49;
        v11 += 2;
        --v87;
      }

      while (v87 > 1);
    }
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_13;
    }

    v28 = *(v8 + 48);
    if (v28 < 16)
    {
      v34 = *(v8 + 48);
    }

    else
    {
      do
      {
        v30 = *v9;
        v29 = *(v9 + 1);
        v9 += 16;
        v32 = *v10;
        v31 = *(v10 + 1);
        v10 += 16;
        LOWORD(v32) = v30 / v32;
        LOWORD(v33) = v29 / v31;
        WORD1(v32) = SWORD1(v30) / SWORD1(v32);
        WORD1(v33) = SWORD1(v29) / SWORD1(v31);
        WORD2(v32) = SWORD2(v30) / SWORD2(v32);
        WORD2(v33) = SWORD2(v29) / SWORD2(v31);
        WORD3(v32) = SWORD3(v30) / SWORD3(v32);
        WORD3(v33) = SWORD3(v29) / SWORD3(v31);
        WORD4(v32) = SWORD4(v30) / SWORD4(v32);
        WORD4(v33) = SWORD4(v29) / SWORD4(v31);
        WORD5(v32) = SWORD5(v30) / SWORD5(v32);
        WORD5(v33) = SWORD5(v29) / SWORD5(v31);
        WORD6(v32) = SWORD6(v30) / SWORD6(v32);
        WORD6(v33) = SWORD6(v29) / SWORD6(v31);
        HIWORD(v32) = SHIWORD(v30) / SHIWORD(v32);
        HIWORD(v33) = SHIWORD(v29) / SHIWORD(v31);
        *v11 = v32;
        *(v11 + 16) = v33;
        v11 += 32;
        v34 = v28 - 16;
        v27 = v28 > 0x1F;
        v28 -= 16;
      }

      while (v27);
    }

    if (v34 >= 1)
    {
      v83 = v34 + 1;
      do
      {
        v85 = *v9++;
        v84 = v85;
        v86 = *v10++;
        *v11 = v84 / v86;
        v11 += 2;
        --v83;
      }

      while (v83 > 1);
    }
  }

LABEL_84:
  v89 = *MEMORY[0x277D85DE8];
}

void sub_25A644F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::VectorVector<mlx::core::detail::Divide>>(__int16 *a1, __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Divide>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A645408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::VectorScalar<mlx::core::detail::Divide>>(__int16 *a1, __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Divide>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A645820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::ScalarVector<mlx::core::detail::Divide>>(__int16 *a1, __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Divide>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Divide>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Divide>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A645C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<short,short,false,mlx::core::detail::Divide>(__int16 *a1, __int16 *a2, _WORD *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,short,mlx::core::detail::Divide,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,short,mlx::core::detail::Divide,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          *v12 = *v14 / *v13;
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
          mlx::core::binary_op_dims<short,short,mlx::core::detail::Divide,3,false>(&v14[v62], &v13[v55], &v12[v22], a6, a7, a8, a9, v15);
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

void sub_25A646058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

__int16 *mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(__int16 *result, __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v19 = *&result[v17];
          v18 = *&result[v17 + 8];
          v21 = *&a2[v17];
          v20 = *&a2[v17 + 8];
          LOWORD(v21) = v19 / v21;
          WORD1(v21) = SWORD1(v19) / SWORD1(v21);
          LOWORD(v22) = v18 / v20;
          WORD1(v22) = SWORD1(v18) / SWORD1(v20);
          WORD2(v21) = SWORD2(v19) / SWORD2(v21);
          WORD2(v22) = SWORD2(v18) / SWORD2(v20);
          WORD3(v21) = SWORD3(v19) / SWORD3(v21);
          WORD3(v22) = SWORD3(v18) / SWORD3(v20);
          WORD4(v21) = SWORD4(v19) / SWORD4(v21);
          WORD4(v22) = SWORD4(v18) / SWORD4(v20);
          WORD5(v21) = SWORD5(v19) / SWORD5(v21);
          WORD5(v22) = SWORD5(v18) / SWORD5(v20);
          WORD6(v21) = SWORD6(v19) / SWORD6(v21);
          WORD6(v22) = SWORD6(v18) / SWORD6(v20);
          HIWORD(v21) = SHIWORD(v19) / SHIWORD(v21);
          HIWORD(v22) = SHIWORD(v18) / SHIWORD(v20);
          v23 = v15;
          v24 = &a3[v17];
          *v24 = v21;
          v24[1] = v22;
          v15 = v23 - 16;
          v17 += 16;
        }

        while (v23 > 0x1F);
        v16 = &result[v17];
        v14 = &a3[v17];
        v13 = &a2[v17];
      }

      if (v15 >= 1)
      {
        v25 = v15 + 1;
        do
        {
          v27 = *v16++;
          v26 = v27;
          v28 = *v13++;
          *v14++ = v26 / v28;
          --v25;
        }

        while (v25 > 1);
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

__int16 *mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Divide>,2,true>(__int16 *result, __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Divide>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}