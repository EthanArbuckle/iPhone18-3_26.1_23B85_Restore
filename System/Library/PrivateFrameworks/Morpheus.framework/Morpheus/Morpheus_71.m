uint64_t mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<short,short>(uint64_t a1, _OWORD *a2, _OWORD *a3, int8x16_t *a4, int a5)
{
  if (a5 < 16)
  {
    v13 = a5;
  }

  else
  {
    do
    {
      v6 = *a2;
      v5 = a2[1];
      a2 += 2;
      v8 = *a3;
      v7 = *(a3 + 1);
      a3 += 2;
      result = (SWORD2(v5) % v7.i16[2]);
      v6.i16[0] %= v8.i16[0];
      v6.i16[1] %= v8.i16[1];
      v6.i16[2] %= v8.i16[2];
      v6.i16[3] %= v8.i16[3];
      v10.i16[0] = v5 % v7.i16[0];
      v10.i16[1] = SWORD1(v5) % v7.i16[1];
      v6.i16[4] %= v8.i16[4];
      v10.i16[2] = SWORD2(v5) % v7.i16[2];
      v10.i16[3] = SWORD3(v5) % v7.i16[3];
      v6.i16[5] %= v8.i16[5];
      v10.i16[4] = SWORD4(v5) % v7.i16[4];
      v10.i16[5] = SWORD5(v5) % v7.i16[5];
      v6.i16[6] %= v8.i16[6];
      v10.i16[6] = SWORD6(v5) % v7.i16[6];
      v6.i16[7] %= v8.i16[7];
      v10.i16[7] = SHIWORD(v5) % v7.i16[7];
      v11 = vcltzq_s16(veorq_s8(v10, v7));
      v12 = vcltzq_s16(veorq_s8(v6, v8));
      *a4 = vorrq_s8(vandq_s8(vaddq_s16(v6, v8), vbicq_s8(v12, vceqzq_s16(v6))), vbicq_s8(v6, v12));
      a4[1] = vorrq_s8(vandq_s8(vaddq_s16(v10, v7), vbicq_s8(v11, vceqzq_s16(v10))), vbicq_s8(v10, v11));
      a4 += 2;
      v13 = a5 - 16;
      v14 = a5 > 0x1F;
      a5 -= 16;
    }

    while (v14);
  }

  if (v13 >= 1)
  {
    v15 = v13 + 1;
    do
    {
      v17 = *a2;
      a2 = (a2 + 2);
      v16 = v17;
      v19 = *a3;
      a3 = (a3 + 2);
      v18 = v19;
      v20 = v16 % v19;
      if ((v20 ^ v19) > -1 || v20 == 0)
      {
        v18 = 0;
      }

      a4->i16[0] = v18 + v20;
      a4 = (a4 + 2);
      --v15;
    }

    while (v15 > 1);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::VectorVector<mlx::core::detail::Remainder>>(uint64_t a1, _OWORD *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(a1 + 2 * v60, (a2 + 2 * v53), (a3 + 2 * v19), a6, a7, a8, a9, v15);
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

void sub_25A661FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::VectorScalar<mlx::core::detail::Remainder>>(uint64_t a1, unsigned __int16 *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(a1 + 2 * v60, &a2[v53], (a3 + 2 * v19), a6, a7, a8, a9, v15);
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

void sub_25A662410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<short,short,true,mlx::core::ScalarVector<mlx::core::detail::Remainder>>(uint64_t a1, _OWORD *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(a1 + 2 * v60, (a2 + 2 * v53), (a3 + 2 * v19), a6, a7, a8, a9, v15);
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

void sub_25A662828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<short,short,false,mlx::core::detail::Remainder>(__int16 *a1, __int16 *a2, _WORD *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<short,short,mlx::core::detail::Remainder,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<short,short,mlx::core::detail::Remainder,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          v21 = *v13;
          v22 = *v14 % v21;
          if ((v22 ^ v21) > -1 || v22 == 0)
          {
            LOWORD(v21) = 0;
          }

          *v12 = v21 + v22;
          v14 = (v14 + v18);
          v13 = (v13 + v19);
          v12 = (v12 + v20);
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
        v25 = 0;
        v26 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<short,short,mlx::core::detail::Remainder,3,false>(&v14[v65], &v13[v58], &v12[v25], a6, a7, a8, a9, v15);
          v27 = v67 - v66;
          v28 = (v67 - v66) >> 2;
          if (v28)
          {
            v29 = v70;
            v30 = ((v27 << 30) - 0x100000000) >> 32;
            v31 = v70 + 4 * v30;
            v32 = *v31;
            v33 = v66 + 4 * v30;
            v34 = v68;
            v35 = v65;
            if (v28 >= 2 && v32 == *v33 - 1)
            {
              v38 = (v27 >> 2) & 0x7FFFFFFF;
              v37 = v38 - 1;
              v39 = 4 * v38;
              v40 = v66 - 8;
              do
              {
                v41 = v37;
                *v31 = 0;
                v35 -= v34[v30] * (*v33 - 1);
                v65 = v35;
                --v37;
                v31 = &v29[v39 - 8];
                v32 = *v31;
                v29 -= 4;
                if (v41 < 2)
                {
                  break;
                }

                v33 = &v40[v39];
                v42 = *&v40[4 * v38] - 1;
                v40 -= 4;
                v30 = v37;
              }

              while (v32 == v42);
              v31 = &v29[4 * v38 - 4];
            }

            else
            {
              v37 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v31 = v32 + 1;
            v65 = v34[v37] + v35;
          }

          v43 = v60 - v59;
          v44 = (v60 - v59) >> 2;
          if (v44)
          {
            v45 = __p;
            v46 = ((v43 << 30) - 0x100000000) >> 32;
            v47 = __p + 4 * v46;
            v48 = *v47;
            v49 = v61;
            v50 = v58;
            if (v44 >= 2 && (v51 = v59 + 4 * v46, v48 == *v51 - 1))
            {
              v52 = (v43 >> 2) & 0x7FFFFFFF;
              v53 = v52 - 1;
              v54 = 4 * v52;
              v55 = v59 - 8;
              do
              {
                v56 = v53;
                *v47 = 0;
                v50 -= v49[v46] * (*v51 - 1);
                v58 = v50;
                --v53;
                v47 = &v45[v54 - 8];
                v48 = *v47;
                v45 -= 4;
                if (v56 < 2)
                {
                  break;
                }

                v51 = &v55[v54];
                v57 = *&v55[4 * v52] - 1;
                v55 -= 4;
                v46 = v53;
              }

              while (v48 == v57);
              v47 = &v45[4 * v52 - 4];
            }

            else
            {
              v53 = ((v43 << 30) - 0x100000000) >> 32;
            }

            *v47 = v48 + 1;
            v58 = v49[v53] + v50;
          }

          v25 += v26;
        }

        while (v25 < a5);
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

void sub_25A662C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(uint64_t result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v11 = result;
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    v14 = 2 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<short,short>(&v15, v11, a2, a3, v12);
      v11 = (v11 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 2 * v12);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(uint64_t result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(uint64_t result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,short,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(uint64_t result, unsigned __int16 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v11 = result;
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    v14 = 2 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<short,short>(&v15, v11, a2, a3, v12);
      v11 = (v11 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 2 * v12);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(uint64_t result, unsigned __int16 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(uint64_t result, unsigned __int16 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,short,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(uint64_t result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v11 = result;
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    v14 = 2 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<short,short>(&v15, v11, a2, a3, v12);
      v11 = (v11 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 2 * v12);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(uint64_t result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(uint64_t result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,short,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

__int16 *mlx::core::binary_op_dims<short,short,mlx::core::detail::Remainder,2,false>(__int16 *result, __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
          v25 = *v22;
          v26 = *v23 % v25;
          if ((v26 ^ v25) > -1 || v26 == 0)
          {
            LOWORD(v25) = 0;
          }

          *v21 = v25 + v26;
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

__int16 *mlx::core::binary_op_dims<short,short,mlx::core::detail::Remainder,3,false>(__int16 *result, __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<short,short,mlx::core::detail::Remainder,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<int,int,mlx::core::detail::Remainder>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<int,int>(v51, v9, v10, v11, *(v8 + 160));
      goto LABEL_65;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<int,int>(v51, v9, v10, v11, *(v8 + 48));
      goto LABEL_65;
    }

    goto LABEL_8;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<int,int>(v51, v9, v10, v11, *(*a2 + 160));
      goto LABEL_65;
    }

LABEL_8:
    memset(v51, 0, sizeof(v51));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v51, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v12 = *a2;
    memset(v52, 0, sizeof(v52));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v52, *(v12 + 24), *(v12 + 32), (*(v12 + 32) - *(v12 + 24)) >> 3);
    v13 = *a3;
    v54[0] = 0;
    v54[1] = 0;
    v53 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v53, *(v13 + 24), *(v13 + 32), (*(v13 + 32) - *(v13 + 24)) >> 3);
    memset(v46, 0, sizeof(v46));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v46, v51, &v55, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v46, 0x7FFFFFFFuLL, &__p);
    v50 = v46;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v50);
    for (i = 0; i != -9; i -= 3)
    {
      v15 = v54[i - 1];
      if (v15)
      {
        v54[i] = v15;
        operator delete(v15);
      }
    }

    v16 = v49 + 6;
    v17 = *v49;
    v18 = (v49[1] - *v49) >> 3;
    v19 = v18 - 1;
    if (v18 - 1 >= -1)
    {
      v19 = -1;
    }

    v20 = v19 + 1;
    v21 = v18 + 1;
    v22 = v18 - 1;
    v23 = v18 - 1;
    while ((v23 & 0x80000000) == 0)
    {
      v24 = 8 * (v23 & 0x7FFFFFFF);
      --v21;
      --v23;
      if (*(v17 + v24) != *(*v16 + v24))
      {
        goto LABEL_24;
      }
    }

    v21 = v20;
LABEL_24:
    v27 = v49[3];
    v28 = (v49[4] - v27) >> 3;
    v29 = v28 - 1;
    if (v28 - 1 >= -1)
    {
      v29 = -1;
    }

    v30 = v29 + 1;
    v31 = v28 + 1;
    v32 = v28 - 1;
    v33 = v28 - 1;
    while ((v33 & 0x80000000) == 0)
    {
      v34 = 8 * (v33 & 0x7FFFFFFF);
      --v31;
      --v33;
      if (*(v27 + v34) != *(*v16 + v34))
      {
        goto LABEL_31;
      }
    }

    v31 = v30;
LABEL_31:
    v35 = v18 + 1;
    while ((v22 & 0x80000000) == 0)
    {
      v36 = *(v17 + 8 * (v22 & 0x7FFFFFFF));
      --v35;
      --v22;
      if (v36)
      {
        goto LABEL_36;
      }
    }

    v35 = v20;
LABEL_36:
    v37 = v28 + 1;
    while ((v32 & 0x80000000) == 0)
    {
      v38 = *(v27 + 8 * (v32 & 0x7FFFFFFF));
      --v37;
      --v32;
      if (v38)
      {
        goto LABEL_41;
      }
    }

    v37 = v30;
LABEL_41:
    v39 = (v48 - __p) >> 2;
    if (v21 <= v31)
    {
      v40 = v31;
    }

    else
    {
      v40 = v21;
    }

    if (v21 <= v37)
    {
      v21 = v37;
    }

    if (v35 > v31)
    {
      v31 = v35;
    }

    if (v39 > v31)
    {
      v41 = 1;
    }

    else
    {
      v31 = (v48 - __p) >> 2;
      v41 = a4;
    }

    if (v39 > v21)
    {
      v42 = 2;
    }

    else
    {
      v21 = v31;
      v42 = v41;
    }

    if (v39 <= v40)
    {
      v43 = v21;
    }

    else
    {
      v43 = v40;
    }

    if (v39 <= v40)
    {
      v44 = v42;
    }

    else
    {
      v44 = 3;
    }

    if (!v43 || *(*v16 + 8 * v43 - 8) < 16)
    {
      goto LABEL_62;
    }

    switch(v44)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::ScalarVector<mlx::core::detail::Remainder>>(v9, v10, v11, v43, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::VectorScalar<mlx::core::detail::Remainder>>(v9, v10, v11, v43, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::VectorVector<mlx::core::detail::Remainder>>(v9, v10, v11, v43, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
        break;
      default:
        LODWORD(v39) = v43;
LABEL_62:
        mlx::core::binary_op_dispatch_dims<int,int,false,mlx::core::detail::Remainder>(v9, v10, v11->i32, v39, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
        break;
    }

    v51[0] = &v49;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v51);
    if (__p)
    {
      v48 = __p;
      operator delete(__p);
    }

    goto LABEL_65;
  }

  v25 = *v9 % *v10;
  if (v25)
  {
    v26 = (*v10 & ((v25 ^ *v10) >> 31)) + v25;
  }

  else
  {
    v26 = 0;
  }

  v11->i32[0] = v26;
LABEL_65:
  v45 = *MEMORY[0x277D85DE8];
}

void sub_25A663938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<int,int>(uint64_t a1, signed int *a2, _OWORD *a3, int8x16_t *a4, int a5)
{
  v5 = *a2;
  if (a5 < 8)
  {
    v19 = a5;
  }

  else
  {
    v6 = vdupq_n_s32(v5);
    v7 = v6.i32[1];
    v8 = v6.i32[2];
    v9 = v6.i32[3];
    v10 = v6.i32[0];
    v11 = v6.i32[0];
    do
    {
      v13 = *a3;
      v12 = *(a3 + 1);
      a3 += 2;
      v14.i32[0] = v11 % v13.i32[0];
      result = (v10 % v12.i32[0]);
      v16.i32[0] = v10 % v12.i32[0];
      v14.i32[1] = v7 % v13.i32[1];
      v16.i32[1] = v7 % v12.i32[1];
      v14.i32[2] = v8 % v13.i32[2];
      v16.i32[2] = v8 % v12.i32[2];
      v14.i32[3] = v9 % v13.i32[3];
      v16.i32[3] = v9 % v12.i32[3];
      v17 = vcltzq_s32(veorq_s8(v16, v12));
      v18 = vcltzq_s32(veorq_s8(v14, v13));
      *a4 = vorrq_s8(vandq_s8(vaddq_s32(v14, v13), vbicq_s8(v18, vceqzq_s32(v14))), vbicq_s8(v14, v18));
      a4[1] = vorrq_s8(vandq_s8(vaddq_s32(v16, v12), vbicq_s8(v17, vceqzq_s32(v16))), vbicq_s8(v16, v17));
      a4 += 2;
      v19 = a5 - 8;
      v20 = a5 > 0xF;
      a5 -= 8;
    }

    while (v20);
  }

  if (v19 >= 1)
  {
    v21 = v19 + 1;
    do
    {
      v22 = *a3;
      a3 = (a3 + 4);
      v23 = (v22 & (((v5 % v22) ^ v22) >> 31)) + v5 % v22;
      if (!(v5 % v22))
      {
        v23 = 0;
      }

      a4->i32[0] = v23;
      a4 = (a4 + 4);
      --v21;
    }

    while (v21 > 1);
  }

  return result;
}

uint64_t mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<int,int>(uint64_t a1, _OWORD *a2, signed int *a3, int8x16_t *a4, int a5)
{
  v5 = *a3;
  if (a5 < 8)
  {
    v12 = a5;
  }

  else
  {
    v6 = vdupq_n_s32(v5);
    do
    {
      v7 = *a2;
      v8 = *(a2 + 1);
      a2 += 2;
      v7.i32[0] %= v6.i32[0];
      result = v8.u32[2];
      v7.i32[1] %= v6.i32[1];
      v8.i32[0] %= v6.i32[0];
      v7.i32[2] %= v6.i32[2];
      v8.i32[1] %= v6.i32[1];
      v7.i32[3] %= v6.i32[3];
      v8.i32[2] %= v6.i32[2];
      v8.i32[3] %= v6.i32[3];
      v10 = vcltzq_s32(veorq_s8(v8, v6));
      v11 = vcltzq_s32(veorq_s8(v7, v6));
      *a4 = vorrq_s8(vandq_s8(vaddq_s32(v7, v6), vbicq_s8(v11, vceqzq_s32(v7))), vbicq_s8(v7, v11));
      a4[1] = vorrq_s8(vandq_s8(vaddq_s32(v8, v6), vbicq_s8(v10, vceqzq_s32(v8))), vbicq_s8(v8, v10));
      a4 += 2;
      v12 = a5 - 8;
      v13 = a5 > 0xF;
      a5 -= 8;
    }

    while (v13);
  }

  if (v12 >= 1)
  {
    v14 = v12 + 1;
    do
    {
      v15 = *a2;
      a2 = (a2 + 4);
      v16 = (v5 & (((v15 % v5) ^ v5) >> 31)) + v15 % v5;
      if (v15 % v5)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      a4->i32[0] = v17;
      a4 = (a4 + 4);
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

uint64_t mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<int,int>(uint64_t a1, _OWORD *a2, _OWORD *a3, int8x16_t *a4, int a5)
{
  if (a5 < 8)
  {
    v12 = a5;
  }

  else
  {
    do
    {
      v5 = *a2;
      v6 = *(a2 + 1);
      a2 += 2;
      v8 = *a3;
      v7 = *(a3 + 1);
      a3 += 2;
      result = v6.u32[0];
      v5.i32[0] %= v8.i32[0];
      v5.i32[1] %= v8.i32[1];
      v6.i32[0] %= v7.i32[0];
      v5.i32[2] %= v8.i32[2];
      v6.i32[1] %= v7.i32[1];
      v6.i32[2] %= v7.i32[2];
      v5.i32[3] %= v8.i32[3];
      v6.i32[3] %= v7.i32[3];
      v10 = vcltzq_s32(veorq_s8(v6, v7));
      v11 = vcltzq_s32(veorq_s8(v5, v8));
      *a4 = vorrq_s8(vandq_s8(vaddq_s32(v5, v8), vbicq_s8(v11, vceqzq_s32(v5))), vbicq_s8(v5, v11));
      a4[1] = vorrq_s8(vandq_s8(vaddq_s32(v6, v7), vbicq_s8(v10, vceqzq_s32(v6))), vbicq_s8(v6, v10));
      a4 += 2;
      v12 = a5 - 8;
      v13 = a5 > 0xF;
      a5 -= 8;
    }

    while (v13);
  }

  if (v12 >= 1)
  {
    v14 = v12 + 1;
    do
    {
      v16 = *a2;
      a2 = (a2 + 4);
      v15 = v16;
      v17 = *a3;
      a3 = (a3 + 4);
      v18 = v15 % v17;
      v19 = (v17 & ((v18 ^ v17) >> 31)) + v18;
      if (v18)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      a4->i32[0] = v20;
      a4 = (a4 + 4);
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

void mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::VectorVector<mlx::core::detail::Remainder>>(uint64_t a1, _OWORD *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(a1 + 4 * v60, (a2 + 4 * v53), (a3 + 4 * v19), a6, a7, a8, a9, v15);
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

void sub_25A664194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::VectorScalar<mlx::core::detail::Remainder>>(uint64_t a1, signed int *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(a1 + 4 * v60, &a2[v53], (a3 + 4 * v19), a6, a7, a8, a9, v15);
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

void sub_25A6645AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<int,int,true,mlx::core::ScalarVector<mlx::core::detail::Remainder>>(uint64_t a1, _OWORD *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(a1 + 4 * v60, (a2 + 4 * v53), (a3 + 4 * v19), a6, a7, a8, a9, v15);
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

void sub_25A6649C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<int,int,false,mlx::core::detail::Remainder>(_DWORD *a1, _DWORD *a2, int *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<int,int,mlx::core::detail::Remainder,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<int,int,mlx::core::detail::Remainder,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          v21 = *v14 % *v13;
          if (v21)
          {
            v22 = (*v13 & ((v21 ^ *v13) >> 31)) + v21;
          }

          else
          {
            v22 = 0;
          }

          *v12 = v22;
          v14 = (v14 + v18);
          v13 = (v13 + v19);
          v12 = (v12 + v20);
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
        v24 = 0;
        v25 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<int,int,mlx::core::detail::Remainder,3,false>(&v14[v64], &v13[v57], &v12[v24], a6, a7, a8, a9, v15);
          v26 = v66 - v65;
          v27 = (v66 - v65) >> 2;
          if (v27)
          {
            v28 = v69;
            v29 = ((v26 << 30) - 0x100000000) >> 32;
            v30 = v69 + 4 * v29;
            v31 = *v30;
            v32 = v65 + 4 * v29;
            v33 = v67;
            v34 = v64;
            if (v27 >= 2 && v31 == *v32 - 1)
            {
              v37 = (v26 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v65 - 8;
              do
              {
                v40 = v36;
                *v30 = 0;
                v34 -= v33[v29] * (*v32 - 1);
                v64 = v34;
                --v36;
                v30 = &v28[v38 - 8];
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = &v39[v38];
                v41 = *&v39[4 * v37] - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = &v28[4 * v37 - 4];
            }

            else
            {
              v36 = ((v26 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            v64 = v33[v36] + v34;
          }

          v42 = v59 - v58;
          v43 = (v59 - v58) >> 2;
          if (v43)
          {
            v44 = __p;
            v45 = ((v42 << 30) - 0x100000000) >> 32;
            v46 = __p + 4 * v45;
            v47 = *v46;
            v48 = v60;
            v49 = v57;
            if (v43 >= 2 && (v50 = v58 + 4 * v45, v47 == *v50 - 1))
            {
              v51 = (v42 >> 2) & 0x7FFFFFFF;
              v52 = v51 - 1;
              v53 = 4 * v51;
              v54 = v58 - 8;
              do
              {
                v55 = v52;
                *v46 = 0;
                v49 -= v48[v45] * (*v50 - 1);
                v57 = v49;
                --v52;
                v46 = &v44[v53 - 8];
                v47 = *v46;
                v44 -= 4;
                if (v55 < 2)
                {
                  break;
                }

                v50 = &v54[v53];
                v56 = *&v54[4 * v51] - 1;
                v54 -= 4;
                v45 = v52;
              }

              while (v47 == v56);
              v46 = &v44[4 * v51 - 4];
            }

            else
            {
              v52 = ((v42 << 30) - 0x100000000) >> 32;
            }

            *v46 = v47 + 1;
            v57 = v48[v52] + v49;
          }

          v24 += v25;
        }

        while (v24 < a5);
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

void sub_25A664DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(uint64_t result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v11 = result;
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * a8);
    v14 = 4 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<int,int>(&v15, v11, a2, a3, v12);
      v11 = (v11 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 4 * v12);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(uint64_t result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(uint64_t result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,int,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(uint64_t result, signed int *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v11 = result;
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * a8);
    v14 = 4 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<int,int>(&v15, v11, a2, a3, v12);
      v11 = (v11 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 4 * v12);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(uint64_t result, signed int *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(uint64_t result, signed int *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,int,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(uint64_t result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v11 = result;
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * a8);
    v14 = 4 * *(*a6 + 8 * a8);
    do
    {
      result = mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<int,int>(&v15, v11, a2, a3, v12);
      v11 = (v11 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 4 * v12);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(uint64_t result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(uint64_t result, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,int,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 += v15;
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

_DWORD *mlx::core::binary_op_dims<int,int,mlx::core::detail::Remainder,2,false>(_DWORD *result, _DWORD *a2, int *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
          v22 = *v21 % *v20;
          if (v22)
          {
            v23 = (*v20 & ((v22 ^ *v20) >> 31)) + v22;
          }

          else
          {
            v23 = 0;
          }

          *v19 = v23;
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

_DWORD *mlx::core::binary_op_dims<int,int,mlx::core::detail::Remainder,3,false>(_DWORD *result, _DWORD *a2, int *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8)
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
      result = mlx::core::binary_op_dims<int,int,mlx::core::detail::Remainder,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<long long,long long,mlx::core::detail::Remainder>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<long long,long long>(v51, v9, v10, v11, *(v8 + 160));
      goto LABEL_65;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<long long,long long>(v51, v9, v10, v11, *(v8 + 48));
      goto LABEL_65;
    }

    goto LABEL_8;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<long long,long long>(v51, v9, v10, v11, *(*a2 + 160));
      goto LABEL_65;
    }

LABEL_8:
    memset(v51, 0, sizeof(v51));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v51, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v12 = *a2;
    memset(v52, 0, sizeof(v52));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v52, *(v12 + 24), *(v12 + 32), (*(v12 + 32) - *(v12 + 24)) >> 3);
    v13 = *a3;
    v54[0] = 0;
    v54[1] = 0;
    v53 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v53, *(v13 + 24), *(v13 + 32), (*(v13 + 32) - *(v13 + 24)) >> 3);
    memset(v46, 0, sizeof(v46));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v46, v51, &v55, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v46, 0x7FFFFFFFuLL, &__p);
    v50 = v46;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v50);
    for (i = 0; i != -9; i -= 3)
    {
      v15 = v54[i - 1];
      if (v15)
      {
        v54[i] = v15;
        operator delete(v15);
      }
    }

    v16 = v49 + 6;
    v17 = *v49;
    v18 = (v49[1] - *v49) >> 3;
    v19 = v18 - 1;
    if (v18 - 1 >= -1)
    {
      v19 = -1;
    }

    v20 = v19 + 1;
    v21 = v18 + 1;
    v22 = v18 - 1;
    v23 = v18 - 1;
    while ((v23 & 0x80000000) == 0)
    {
      v24 = 8 * (v23 & 0x7FFFFFFF);
      --v21;
      --v23;
      if (*(v17 + v24) != *(*v16 + v24))
      {
        goto LABEL_24;
      }
    }

    v21 = v20;
LABEL_24:
    v27 = v49[3];
    v28 = (v49[4] - v27) >> 3;
    v29 = v28 - 1;
    if (v28 - 1 >= -1)
    {
      v29 = -1;
    }

    v30 = v29 + 1;
    v31 = v28 + 1;
    v32 = v28 - 1;
    v33 = v28 - 1;
    while ((v33 & 0x80000000) == 0)
    {
      v34 = 8 * (v33 & 0x7FFFFFFF);
      --v31;
      --v33;
      if (*(v27 + v34) != *(*v16 + v34))
      {
        goto LABEL_31;
      }
    }

    v31 = v30;
LABEL_31:
    v35 = v18 + 1;
    while ((v22 & 0x80000000) == 0)
    {
      v36 = *(v17 + 8 * (v22 & 0x7FFFFFFF));
      --v35;
      --v22;
      if (v36)
      {
        goto LABEL_36;
      }
    }

    v35 = v20;
LABEL_36:
    v37 = v28 + 1;
    while ((v32 & 0x80000000) == 0)
    {
      v38 = *(v27 + 8 * (v32 & 0x7FFFFFFF));
      --v37;
      --v32;
      if (v38)
      {
        goto LABEL_41;
      }
    }

    v37 = v30;
LABEL_41:
    v39 = (v48 - __p) >> 2;
    if (v21 <= v31)
    {
      v40 = v31;
    }

    else
    {
      v40 = v21;
    }

    if (v21 <= v37)
    {
      v21 = v37;
    }

    if (v35 > v31)
    {
      v31 = v35;
    }

    if (v39 > v31)
    {
      v41 = 1;
    }

    else
    {
      v31 = (v48 - __p) >> 2;
      v41 = a4;
    }

    if (v39 > v21)
    {
      v42 = 2;
    }

    else
    {
      v21 = v31;
      v42 = v41;
    }

    if (v39 <= v40)
    {
      v43 = v21;
    }

    else
    {
      v43 = v40;
    }

    if (v39 <= v40)
    {
      v44 = v42;
    }

    else
    {
      v44 = 3;
    }

    if (!v43 || *(*v16 + 8 * v43 - 8) < 16)
    {
      goto LABEL_62;
    }

    switch(v44)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::ScalarVector<mlx::core::detail::Remainder>>(v9, v10, v11, v43, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::VectorScalar<mlx::core::detail::Remainder>>(v9, v10, v11, v43, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::VectorVector<mlx::core::detail::Remainder>>(v9, v10, v11, v43, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
        break;
      default:
        LODWORD(v39) = v43;
LABEL_62:
        mlx::core::binary_op_dispatch_dims<long long,long long,false,mlx::core::detail::Remainder>(v9, v10, v11->i64, v39, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
        break;
    }

    v51[0] = &v49;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v51);
    if (__p)
    {
      v48 = __p;
      operator delete(__p);
    }

    goto LABEL_65;
  }

  v25 = *v9 % *v10;
  if (v25)
  {
    v26 = (*v10 & ((v25 ^ *v10) >> 63)) + v25;
  }

  else
  {
    v26 = 0;
  }

  v11->i64[0] = v26;
LABEL_65:
  v45 = *MEMORY[0x277D85DE8];
}

void sub_25A665AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<long long,long long>(uint64_t a1, int64_t *a2, _OWORD *a3, int8x16_t *a4, int a5)
{
  v5 = *a2;
  if (a5 < 4)
  {
    v16 = a5;
  }

  else
  {
    v6 = vdupq_n_s64(v5);
    v7 = v6.i64[1];
    v8 = v6.i64[0];
    v9 = v6.i64[0];
    do
    {
      v11 = *a3;
      v10 = *(a3 + 1);
      a3 += 2;
      v12.i64[0] = v9 % v11.i64[0];
      v12.i64[1] = v7 % v11.i64[1];
      v13.i64[0] = v8 % v10.i64[0];
      v13.i64[1] = v7 % v10.i64[1];
      v14 = vcltzq_s64(veorq_s8(v13, v10));
      v15 = vcltzq_s64(veorq_s8(v12, v11));
      *a4 = vorrq_s8(vandq_s8(vaddq_s64(v12, v11), vbicq_s8(v15, vceqzq_s64(v12))), vbicq_s8(v12, v15));
      a4[1] = vorrq_s8(vandq_s8(vaddq_s64(v13, v10), vbicq_s8(v14, vceqzq_s64(v13))), vbicq_s8(v13, v14));
      a4 += 2;
      v16 = a5 - 4;
      v17 = a5 > 7;
      a5 -= 4;
    }

    while (v17);
  }

  if (v16 >= 1)
  {
    v18 = v16 + 1;
    do
    {
      v19 = *a3;
      a3 = (a3 + 8);
      v20 = (v19 & (((v5 % v19) ^ v19) >> 63)) + v5 % v19;
      if (!(v5 % v19))
      {
        v20 = 0;
      }

      a4->i64[0] = v20;
      a4 = (a4 + 8);
      --v18;
    }

    while (v18 > 1);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<long long,long long>(uint64_t a1, _OWORD *a2, int64_t *a3, int8x16_t *a4, int a5)
{
  v5 = *a3;
  if (a5 < 4)
  {
    v11 = a5;
  }

  else
  {
    v6 = vdupq_n_s64(v5);
    do
    {
      v7 = *a2;
      v8 = *(a2 + 1);
      a2 += 2;
      v7.i64[0] %= v6.i64[0];
      v7.i64[1] %= v6.i64[1];
      v8.i64[0] %= v6.i64[0];
      v8.i64[1] %= v6.i64[1];
      v9 = vcltzq_s64(veorq_s8(v8, v6));
      v10 = vcltzq_s64(veorq_s8(v7, v6));
      *a4 = vorrq_s8(vandq_s8(vaddq_s64(v7, v6), vbicq_s8(v10, vceqzq_s64(v7))), vbicq_s8(v7, v10));
      a4[1] = vorrq_s8(vandq_s8(vaddq_s64(v8, v6), vbicq_s8(v9, vceqzq_s64(v8))), vbicq_s8(v8, v9));
      a4 += 2;
      v11 = a5 - 4;
      v12 = a5 > 7;
      a5 -= 4;
    }

    while (v12);
  }

  if (v11 >= 1)
  {
    v13 = v11 + 1;
    do
    {
      v14 = *a2;
      a2 = (a2 + 8);
      v15 = (v5 & (((v14 % v5) ^ v5) >> 63)) + v14 % v5;
      if (v14 % v5)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      a4->i64[0] = v16;
      a4 = (a4 + 8);
      --v13;
    }

    while (v13 > 1);
  }
}

void mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<long long,long long>(uint64_t a1, _OWORD *a2, _OWORD *a3, int8x16_t *a4, int a5)
{
  if (a5 < 4)
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
      v8 = *a3;
      v7 = *(a3 + 1);
      a3 += 2;
      v5.i64[0] %= v8.i64[0];
      v5.i64[1] %= v8.i64[1];
      v6.i64[0] %= v7.i64[0];
      v6.i64[1] %= v7.i64[1];
      v9 = vcltzq_s64(veorq_s8(v6, v7));
      v10 = vcltzq_s64(veorq_s8(v5, v8));
      *a4 = vorrq_s8(vandq_s8(vaddq_s64(v5, v8), vbicq_s8(v10, vceqzq_s64(v5))), vbicq_s8(v5, v10));
      a4[1] = vorrq_s8(vandq_s8(vaddq_s64(v6, v7), vbicq_s8(v9, vceqzq_s64(v6))), vbicq_s8(v6, v9));
      a4 += 2;
      v11 = a5 - 4;
      v12 = a5 > 7;
      a5 -= 4;
    }

    while (v12);
  }

  if (v11 >= 1)
  {
    v13 = v11 + 1;
    do
    {
      v15 = *a2;
      a2 = (a2 + 8);
      v14 = v15;
      v16 = *a3;
      a3 = (a3 + 8);
      v17 = v14 % v16;
      v18 = (v16 & ((v17 ^ v16) >> 63)) + v17;
      if (v17)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      a4->i64[0] = v19;
      a4 = (a4 + 8);
      --v13;
    }

    while (v13 > 1);
  }
}

void mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::VectorVector<mlx::core::detail::Remainder>>(_OWORD *a1, _OWORD *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>((a1 + 8 * v60), (a2 + 8 * v53), (a3 + 8 * v19), a6, a7, a8, a9, v15);
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

void sub_25A66624C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::VectorScalar<mlx::core::detail::Remainder>>(_OWORD *a1, int64_t *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>((a1 + 8 * v60), &a2[v53], (a3 + 8 * v19), a6, a7, a8, a9, v15);
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

void sub_25A666664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<long long,long long,true,mlx::core::ScalarVector<mlx::core::detail::Remainder>>(int64_t *a1, _OWORD *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(&a1[v60], (a2 + 8 * v53), (a3 + 8 * v19), a6, a7, a8, a9, v15);
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

void sub_25A666A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<long long,long long,false,mlx::core::detail::Remainder>(uint64_t *a1, void *a2, uint64_t *a3, int a4, int a5, int **a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Remainder,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Remainder,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          v21 = *v14 % *v13;
          if (v21)
          {
            v22 = (*v13 & ((v21 ^ *v13) >> 63)) + v21;
          }

          else
          {
            v22 = 0;
          }

          *v12 = v22;
          v14 = (v14 + v18);
          v13 = (v13 + v19);
          v12 = (v12 + v20);
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
        v24 = 0;
        v25 = *(*a9 + 8 * a4 - 32);
        do
        {
          mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Remainder,3,false>(&v14[v64], &v13[v57], &v12[v24], a6, a7, a8, a9, v15);
          v26 = v66 - v65;
          v27 = (v66 - v65) >> 2;
          if (v27)
          {
            v28 = v69;
            v29 = ((v26 << 30) - 0x100000000) >> 32;
            v30 = v69 + 4 * v29;
            v31 = *v30;
            v32 = v65 + 4 * v29;
            v33 = v67;
            v34 = v64;
            if (v27 >= 2 && v31 == *v32 - 1)
            {
              v37 = (v26 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v65 - 8;
              do
              {
                v40 = v36;
                *v30 = 0;
                v34 -= v33[v29] * (*v32 - 1);
                v64 = v34;
                --v36;
                v30 = &v28[v38 - 8];
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = &v39[v38];
                v41 = *&v39[4 * v37] - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = &v28[4 * v37 - 4];
            }

            else
            {
              v36 = ((v26 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            v64 = v33[v36] + v34;
          }

          v42 = v59 - v58;
          v43 = (v59 - v58) >> 2;
          if (v43)
          {
            v44 = __p;
            v45 = ((v42 << 30) - 0x100000000) >> 32;
            v46 = __p + 4 * v45;
            v47 = *v46;
            v48 = v60;
            v49 = v57;
            if (v43 >= 2 && (v50 = v58 + 4 * v45, v47 == *v50 - 1))
            {
              v51 = (v42 >> 2) & 0x7FFFFFFF;
              v52 = v51 - 1;
              v53 = 4 * v51;
              v54 = v58 - 8;
              do
              {
                v55 = v52;
                *v46 = 0;
                v49 -= v48[v45] * (*v50 - 1);
                v57 = v49;
                --v52;
                v46 = &v44[v53 - 8];
                v47 = *v46;
                v44 -= 4;
                if (v55 < 2)
                {
                  break;
                }

                v50 = &v54[v53];
                v56 = *&v54[4 * v51] - 1;
                v54 -= 4;
                v45 = v52;
              }

              while (v47 == v56);
              v46 = &v44[4 * v51 - 4];
            }

            else
            {
              v52 = ((v42 << 30) - 0x100000000) >> 32;
            }

            *v46 = v47 + 1;
            v57 = v48[v52] + v49;
          }

          v24 += v25;
        }

        while (v24 < a5);
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

void sub_25A666EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(_OWORD *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<long long,long long>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 8 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(_OWORD *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(_OWORD *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(_OWORD *a1, int64_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<long long,long long>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 8 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(_OWORD *a1, int64_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(_OWORD *a1, int64_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<long long,long long,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(int64_t *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<long long,long long>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 8 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(int64_t *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(int64_t *a1, _OWORD *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<long long,long long,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

uint64_t *mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Remainder,2,false>(uint64_t *result, void *a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int a8)
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
          v25 = *v23 % *v22;
          if (v25)
          {
            v26 = (*v22 & ((v25 ^ *v22) >> 63)) + v25;
          }

          else
          {
            v26 = 0;
          }

          *v21 = v26;
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

uint64_t *mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Remainder,3,false>(uint64_t *result, void *a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int a8)
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
      result = mlx::core::binary_op_dims<long long,long long,mlx::core::detail::Remainder,2,false>(v14, a2, a3, a4, a5, a6, a7, a8 + 1);
      v14 = (v14 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

void mlx::core::binary_op<half,half,mlx::core::detail::Remainder>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, __n128 a5, __n128 a6)
{
  v58 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v11 = *(*a1 + 152);
  v12 = *(*a2 + 152);
  v13 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<half,half>(a5, v54, v11, v12, v13, *(v10 + 160));
      goto LABEL_62;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<half,half>(a5, a6, v54, v11, v12, v13, *(v10 + 48));
      goto LABEL_62;
    }
  }

  else
  {
    if (!a4)
    {
      a5.n128_u16[0] = v11->i16[0];
      a6.n128_u16[0] = v12->i16[0];
      mlx::core::simd::remainder<half>(a5, a6);
      v13->n128_u16[0] = v29;
      goto LABEL_62;
    }

    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<half,half>(a5, a6, v54, v11, v12, v13, *(*a2 + 160));
      goto LABEL_62;
    }
  }

  memset(v54, 0, sizeof(v54));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v54, *(v10 + 24), *(v10 + 32), (*(v10 + 32) - *(v10 + 24)) >> 3);
  v14 = *a2;
  memset(v55, 0, sizeof(v55));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v55, *(v14 + 24), *(v14 + 32), (*(v14 + 32) - *(v14 + 24)) >> 3);
  v15 = *a3;
  v57[0] = 0;
  v57[1] = 0;
  v56 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v56, *(v15 + 24), *(v15 + 32), (*(v15 + 32) - *(v15 + 24)) >> 3);
  memset(v49, 0, sizeof(v49));
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v49, v54, &v58, 3uLL);
  mlx::core::collapse_contiguous_dims(v10, v49, 0x7FFFFFFFuLL, &__p);
  v53 = v49;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v53);
  for (i = 0; i != -9; i -= 3)
  {
    v19 = v57[i - 1];
    if (v19)
    {
      v57[i] = v19;
      operator delete(v19);
    }
  }

  v20 = v52 + 6;
  v21 = *v52;
  v22 = (v52[1] - *v52) >> 3;
  v23 = v22 - 1;
  if (v22 - 1 >= -1)
  {
    v23 = -1;
  }

  v24 = v23 + 1;
  v25 = v22 + 1;
  v26 = v22 - 1;
  v27 = v22 - 1;
  while ((v27 & 0x80000000) == 0)
  {
    v28 = 8 * (v27 & 0x7FFFFFFF);
    --v25;
    --v27;
    if (*(v21 + v28) != *(*v20 + v28))
    {
      goto LABEL_21;
    }
  }

  v25 = v24;
LABEL_21:
  v30 = v52[3];
  v31 = (v52[4] - v30) >> 3;
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
    if (*(v30 + v37) != *(*v20 + v37))
    {
      goto LABEL_28;
    }
  }

  v34 = v33;
LABEL_28:
  v38 = v22 + 1;
  while ((v26 & 0x80000000) == 0)
  {
    v39 = *(v21 + 8 * (v26 & 0x7FFFFFFF));
    --v38;
    --v26;
    if (v39)
    {
      goto LABEL_33;
    }
  }

  v38 = v24;
LABEL_33:
  v40 = v31 + 1;
  while ((v35 & 0x80000000) == 0)
  {
    v41 = *(v30 + 8 * (v35 & 0x7FFFFFFF));
    --v40;
    --v35;
    if (v41)
    {
      goto LABEL_38;
    }
  }

  v40 = v33;
LABEL_38:
  v42 = (v51 - __p) >> 2;
  if (v25 <= v34)
  {
    v43 = v34;
  }

  else
  {
    v43 = v25;
  }

  if (v25 <= v40)
  {
    v25 = v40;
  }

  if (v38 > v34)
  {
    v34 = v38;
  }

  if (v42 > v34)
  {
    v44 = 1;
  }

  else
  {
    v34 = (v51 - __p) >> 2;
    v44 = a4;
  }

  if (v42 > v25)
  {
    v45 = 2;
  }

  else
  {
    v25 = v34;
    v45 = v44;
  }

  if (v42 <= v43)
  {
    v46 = v25;
  }

  else
  {
    v46 = v43;
  }

  if (v42 <= v43)
  {
    v47 = v45;
  }

  else
  {
    v47 = 3;
  }

  if (!v46 || *(*v20 + 8 * v46 - 8) < 16)
  {
    goto LABEL_59;
  }

  switch(v47)
  {
    case 1:
      mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::ScalarVector<mlx::core::detail::Remainder>>(v11, v12, v13, v46, *(*a1 + 48), &__p, v52, v52 + 3, v16, v17, v52 + 6);
      break;
    case 2:
      mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorScalar<mlx::core::detail::Remainder>>(v11, v12, v13, v46, *(*a1 + 48), &__p, v52, v52 + 3, v16, v52 + 6);
      break;
    case 3:
      mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorVector<mlx::core::detail::Remainder>>(v11, v12, v13, v46, *(*a1 + 48), &__p, v52, v52 + 3, v16, v17, v52 + 6);
      break;
    default:
      LODWORD(v42) = v46;
LABEL_59:
      mlx::core::binary_op_dispatch_dims<half,half,false,mlx::core::detail::Remainder>(v11, v12, v13, v42, *(*a1 + 48), &__p, v52, v52 + 3, v16, v17, v52 + 6);
      break;
  }

  v54[0] = &v52;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v54);
  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

LABEL_62:
  v48 = *MEMORY[0x277D85DE8];
}

void sub_25A667B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<half,half>(__n128 a1, __n128 a2, uint64_t a3, unsigned __int16 *a4, float16x8_t *a5, _OWORD *a6, int a7)
{
  v7 = a7;
  a1.n128_u16[0] = *a4;
  v19 = a1;
  if (a7 < 8)
  {
    v12 = a7;
  }

  else
  {
    v18 = vdupq_lane_s16(a1.n128_u64[0], 0);
    do
    {
      v10 = *a5++;
      *&v11 = mlx::core::detail::Remainder::operator()<8,half>(v18, v10);
      *a6++ = v11;
      v12 = v7 - 8;
      v13 = v7 >= 0xF;
      v14 = v7 == 15;
      v7 -= 8;
    }

    while (!v14 && v13);
  }

  if (v12 >= 1)
  {
    v15 = v12 + 1;
    do
    {
      v16 = a5->i16[0];
      a5 = (a5 + 2);
      a2.n128_u16[0] = v16;
      mlx::core::simd::remainder<half>(v19, a2);
      *a6 = v17;
      a6 = (a6 + 2);
      --v15;
    }

    while (v15 > 1);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<half,half>(__n128 a1, uint64_t a2, float16x8_t *a3, unsigned __int16 *a4, __n128 *a5, int a6)
{
  v6 = a6;
  a1.n128_u16[0] = *a4;
  v16 = a1;
  if (a6 < 8)
  {
    v10 = a6;
  }

  else
  {
    v15 = vdupq_lane_s16(a1.n128_u64[0], 0);
    do
    {
      v9 = *a3++;
      a1.n128_f64[0] = mlx::core::detail::Remainder::operator()<8,half>(v9, v15);
      *a5++ = a1;
      v10 = v6 - 8;
      v11 = v6 >= 0xF;
      v12 = v6 == 15;
      v6 -= 8;
    }

    while (!v12 && v11);
  }

  if (v10 >= 1)
  {
    v13 = v10 + 1;
    do
    {
      v14 = a3->i16[0];
      a3 = (a3 + 2);
      a1.n128_u16[0] = v14;
      mlx::core::simd::remainder<half>(a1, v16);
      a5->n128_u16[0] = a1.n128_u16[0];
      a5 = (a5 + 2);
      --v13;
    }

    while (v13 > 1);
  }
}

void mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<half,half>(__n128 a1, __n128 a2, uint64_t a3, float16x8_t *a4, float16x8_t *a5, __n128 *a6, int a7)
{
  v7 = a7;
  if (a7 < 8)
  {
    v14 = a7;
  }

  else
  {
    do
    {
      v11 = *a4++;
      v12 = v11;
      v13 = *a5++;
      a1.n128_f64[0] = mlx::core::detail::Remainder::operator()<8,half>(v12, v13);
      *a6++ = a1;
      v14 = v7 - 8;
      v15 = v7 > 0xF;
      v7 -= 8;
    }

    while (v15);
  }

  if (v14 >= 1)
  {
    v16 = v14 + 1;
    do
    {
      v17 = a4->i16[0];
      a4 = (a4 + 2);
      a1.n128_u16[0] = v17;
      v18 = a5->i16[0];
      a5 = (a5 + 2);
      a2.n128_u16[0] = v18;
      mlx::core::simd::remainder<half>(a1, a2);
      a6->n128_u16[0] = a1.n128_u16[0];
      a6 = (a6 + 2);
      --v16;
    }

    while (v16 > 1);
  }
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorVector<mlx::core::detail::Remainder>>(float16x8_t *a1, float16x8_t *a2, __n128 *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, __n128 a9, __n128 a10, void *a11)
{
  v17 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v64, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v57, a6, a8, v17);
      if (a5 >= 1)
      {
        v22 = a5;
        v23 = 0;
        v56 = *(*a11 + 8 * a4 - 32);
        v24 = v22;
        do
        {
          mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>((a1 + 2 * v64), (a2 + 2 * v57), (a3 + 2 * v23), a6, a7, a8, a11, v17, v20, v21);
          v25 = v66 - v65;
          v26 = (v66 - v65) >> 2;
          if (v26)
          {
            v27 = v69;
            v28 = ((v25 << 30) - 0x100000000) >> 32;
            v29 = v69 + 4 * v28;
            v30 = *v29;
            v31 = v65 + 4 * v28;
            v32 = v67;
            v33 = v64;
            if (v26 >= 2 && v30 == *v31 - 1)
            {
              v36 = (v25 >> 2) & 0x7FFFFFFF;
              v35 = v36 - 1;
              v37 = 4 * v36;
              v38 = v65 - 8;
              do
              {
                v39 = v35;
                *v29 = 0;
                v33 -= v32[v28] * (*v31 - 1);
                v64 = v33;
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
            v64 = v32[v35] + v33;
          }

          v41 = v59 - v58;
          v42 = (v59 - v58) >> 2;
          if (v42)
          {
            v43 = __p;
            v44 = ((v41 << 30) - 0x100000000) >> 32;
            v45 = __p + 4 * v44;
            v46 = *v45;
            v47 = v60;
            v48 = v57;
            if (v42 >= 2 && (v49 = v58 + 4 * v44, v46 == *v49 - 1))
            {
              v50 = (v41 >> 2) & 0x7FFFFFFF;
              v51 = v50 - 1;
              v52 = 4 * v50;
              v53 = v58 - 8;
              do
              {
                v54 = v51;
                *v45 = 0;
                v48 -= v47[v44] * (*v49 - 1);
                v57 = v48;
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
            v57 = v47[v51] + v48;
          }

          v23 += v56;
        }

        while (v23 < v24);
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

void sub_25A6681E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::VectorScalar<mlx::core::detail::Remainder>>(float16x8_t *a1, unsigned __int16 *a2, __n128 *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, __n128 a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>((a1 + 2 * v62), &a2[v55], (a3 + 2 * v21), a6, a7, a8, a10, v16, v19);
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

void sub_25A668600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,true,mlx::core::ScalarVector<mlx::core::detail::Remainder>>(unsigned __int16 *a1, float16x8_t *a2, _OWORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, __n128 a9, __n128 a10, void *a11)
{
  v17 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v64, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v57, a6, a8, v17);
      if (a5 >= 1)
      {
        v22 = a5;
        v23 = 0;
        v56 = *(*a11 + 8 * a4 - 32);
        v24 = v22;
        do
        {
          mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(&a1[v64], (a2 + 2 * v57), (a3 + 2 * v23), a6, a7, a8, a11, v17, v20, v21);
          v25 = v66 - v65;
          v26 = (v66 - v65) >> 2;
          if (v26)
          {
            v27 = v69;
            v28 = ((v25 << 30) - 0x100000000) >> 32;
            v29 = v69 + 4 * v28;
            v30 = *v29;
            v31 = v65 + 4 * v28;
            v32 = v67;
            v33 = v64;
            if (v26 >= 2 && v30 == *v31 - 1)
            {
              v36 = (v25 >> 2) & 0x7FFFFFFF;
              v35 = v36 - 1;
              v37 = 4 * v36;
              v38 = v65 - 8;
              do
              {
                v39 = v35;
                *v29 = 0;
                v33 -= v32[v28] * (*v31 - 1);
                v64 = v33;
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
            v64 = v32[v35] + v33;
          }

          v41 = v59 - v58;
          v42 = (v59 - v58) >> 2;
          if (v42)
          {
            v43 = __p;
            v44 = ((v41 << 30) - 0x100000000) >> 32;
            v45 = __p + 4 * v44;
            v46 = *v45;
            v47 = v60;
            v48 = v57;
            if (v42 >= 2 && (v49 = v58 + 4 * v44, v46 == *v49 - 1))
            {
              v50 = (v41 >> 2) & 0x7FFFFFFF;
              v51 = v50 - 1;
              v52 = 4 * v50;
              v53 = v58 - 8;
              do
              {
                v54 = v51;
                *v45 = 0;
                v48 -= v47[v44] * (*v49 - 1);
                v57 = v48;
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
            v57 = v47[v51] + v48;
          }

          v23 += v56;
        }

        while (v23 < v24);
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

void sub_25A668A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<half,half,false,mlx::core::detail::Remainder>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, __n128 a9, __n128 a10, void *a11)
{
  v17 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<half,half,mlx::core::detail::Remainder,3,false>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 2:

      mlx::core::binary_op_dims<half,half,mlx::core::detail::Remainder,2,false>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    case 1:

      mlx::core::binary_op_dims<half,half,mlx::core::detail::Remainder,1,false>(a1, a2, a3, a6, a7, a8, a11, 0, a9, a10);
      break;
    default:
      mlx::core::ContiguousIterator::ContiguousIterator(&v64, a6, a7, a4 - 3);
      mlx::core::ContiguousIterator::ContiguousIterator(&v57, a6, a8, v17);
      if (a5 >= 1)
      {
        v22 = a5;
        v23 = 0;
        v56 = *(*a11 + 8 * a4 - 32);
        v24 = v22;
        do
        {
          mlx::core::binary_op_dims<half,half,mlx::core::detail::Remainder,3,false>(&a1[v64], &a2[v57], &a3[v23], a6, a7, a8, a11, v17, v20, v21);
          v25 = v66 - v65;
          v26 = (v66 - v65) >> 2;
          if (v26)
          {
            v27 = v69;
            v28 = ((v25 << 30) - 0x100000000) >> 32;
            v29 = v69 + 4 * v28;
            v30 = *v29;
            v31 = v65 + 4 * v28;
            v32 = v67;
            v33 = v64;
            if (v26 >= 2 && v30 == *v31 - 1)
            {
              v36 = (v25 >> 2) & 0x7FFFFFFF;
              v35 = v36 - 1;
              v37 = 4 * v36;
              v38 = v65 - 8;
              do
              {
                v39 = v35;
                *v29 = 0;
                v33 -= v32[v28] * (*v31 - 1);
                v64 = v33;
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
            v64 = v32[v35] + v33;
          }

          v41 = v59 - v58;
          v42 = (v59 - v58) >> 2;
          if (v42)
          {
            v43 = __p;
            v44 = ((v41 << 30) - 0x100000000) >> 32;
            v45 = __p + 4 * v44;
            v46 = *v45;
            v47 = v60;
            v48 = v57;
            if (v42 >= 2 && (v49 = v58 + 4 * v44, v46 == *v49 - 1))
            {
              v50 = (v41 >> 2) & 0x7FFFFFFF;
              v51 = v50 - 1;
              v52 = 4 * v50;
              v53 = v58 - 8;
              do
              {
                v54 = v51;
                *v45 = 0;
                v48 -= v47[v44] * (*v49 - 1);
                v57 = v48;
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
            v57 = v47[v51] + v48;
          }

          v23 += v56;
        }

        while (v23 < v24);
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

void sub_25A668E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::simd::remainder<half>(__n128 _Q0, __n128 _Q1)
{
  __asm
  {
    FCVT            S0, H0; float
    FCVT            S1, H1; float
  }

  _S0 = remainderf(_S0, _S1);
  __asm
  {
    FCVT            H0, S0
    FCMP            H0, #0
  }

  if (!_ZF)
  {
    __asm { FCMP            H8, #0 }
  }
}

double mlx::core::detail::Remainder::operator()<8,half>(float16x8_t a1, float16x8_t a2)
{
  x = vcvt_hight_f32_f16(a1);
  v8 = vcvtq_f32_f16(*a2.i8);
  v9 = vcvt_hight_f32_f16(a2);
  v5 = _simd_remainder_f4(vcvtq_f32_f16(*a1.i8), v8);
  v2 = _simd_remainder_f4(x, v9);
  v3 = vmovn_s16(vbicq_s8(veorq_s8(vuzp1q_s16(vcltzq_f32(v5), vcltzq_f32(v2)), vcltzq_f16(a2)), vuzp1q_s16(vceqzq_f32(v5), vceqzq_f32(v2))));
  *&result = vcvt_hight_f16_f32(vcvt_f16_f32(vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v3, *v2.f32)), 0x1FuLL)), vaddq_f32(v5, v8), v5)), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v3, *v2.f32)), 0x1FuLL)), vaddq_f32(v2, v9), v2)).u64[0];
  return result;
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(float16x8_t *a1, float16x8_t *a2, __n128 *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v14 = *(*a7 + 8 * a8);
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<half,half>(a9, a10, &v17, a1, a2, a3, v14);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + 2 * v14);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(float16x8_t *a1, float16x8_t *a2, __n128 *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v17 = 2 * *(*a5 + 8 * a8);
    v18 = 2 * *(*a6 + 8 * a8);
    v19 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a1 = (a1 + v17);
      a2 = (a2 + v18);
      a3 = (a3 + v19);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(float16x8_t *a1, float16x8_t *a2, __n128 *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v17 = 2 * *(*a5 + 8 * a8);
    v18 = 2 * *(*a6 + 8 * a8);
    v19 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a1 = (a1 + v17);
      a2 = (a2 + v18);
      a3 = (a3 + v19);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(float16x8_t *a1, unsigned __int16 *a2, __n128 *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v13 = *(*a7 + 8 * a8);
    v14 = 2 * *(*a5 + 8 * a8);
    v15 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<half,half>(a9, &v16, a1, a2, a3, v13);
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + 2 * v13);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(float16x8_t *a1, unsigned __int16 *a2, __n128 *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    v18 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(float16x8_t *a1, unsigned __int16 *a2, __n128 *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 2 * *(*a5 + 8 * a8);
    v17 = 2 * *(*a6 + 8 * a8);
    v18 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(unsigned __int16 *a1, float16x8_t *a2, _OWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v14 = *(*a7 + 8 * a8);
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<half,half>(a9, a10, &v17, a1, a2, a3, v14);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + 2 * v14);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(unsigned __int16 *a1, float16x8_t *a2, _OWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v17 = 2 * *(*a5 + 8 * a8);
    v18 = 2 * *(*a6 + 8 * a8);
    v19 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a1 = (a1 + v17);
      a2 = (a2 + v18);
      a3 = (a3 + v19);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(unsigned __int16 *a1, float16x8_t *a2, _OWORD *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v17 = 2 * *(*a5 + 8 * a8);
    v18 = 2 * *(*a6 + 8 * a8);
    v19 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a1 = (a1 + v17);
      a2 = (a2 + v18);
      a3 = (a3 + v19);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::detail::Remainder,1,false>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v14 = 2 * *(*a5 + 8 * a8);
    v15 = 2 * *(*a6 + 8 * a8);
    v16 = 2 * *(*a7 + 8 * a8);
    do
    {
      a9.n128_u16[0] = *a1;
      a10.n128_u16[0] = *a2;
      mlx::core::simd::remainder<half>(a9, a10);
      *a3 = a9.n128_u16[0];
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + v16);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::detail::Remainder,2,false>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v17 = 2 * *(*a5 + 8 * a8);
    v18 = 2 * *(*a6 + 8 * a8);
    v19 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::detail::Remainder,1,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a1 = (a1 + v17);
      a2 = (a2 + v18);
      a3 = (a3 + v19);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op_dims<half,half,mlx::core::detail::Remainder,3,false>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8, __n128 a9, __n128 a10)
{
  v10 = *(*a4 + 4 * a8);
  if (v10 >= 1)
  {
    v17 = 2 * *(*a5 + 8 * a8);
    v18 = 2 * *(*a6 + 8 * a8);
    v19 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<half,half,mlx::core::detail::Remainder,2,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9, a10);
      a1 = (a1 + v17);
      a2 = (a2 + v18);
      a3 = (a3 + v19);
      --v10;
    }

    while (v10);
  }
}

void mlx::core::binary_op<float,float,mlx::core::detail::Remainder>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int32x2_t a5)
{
  v57 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = *(*a1 + 152);
  v11 = *(*a2 + 152);
  v12 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<float,float>(a5, v53, v10, v11->f32, v12, *(v9 + 160));
      goto LABEL_65;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<float,float>(v53, v10, v11, v12, *(v9 + 48));
      goto LABEL_65;
    }

    goto LABEL_8;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<float,float>(a5, v53, v10->f32, v11, v12, *(*a2 + 160));
      goto LABEL_65;
    }

LABEL_8:
    memset(v53, 0, sizeof(v53));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v53, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 3);
    v13 = *a2;
    memset(v54, 0, sizeof(v54));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v54, *(v13 + 24), *(v13 + 32), (*(v13 + 32) - *(v13 + 24)) >> 3);
    v14 = *a3;
    v56[0] = 0;
    v56[1] = 0;
    v55 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v55, *(v14 + 24), *(v14 + 32), (*(v14 + 32) - *(v14 + 24)) >> 3);
    memset(v48, 0, sizeof(v48));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v48, v53, &v57, 3uLL);
    mlx::core::collapse_contiguous_dims(v9, v48, 0x7FFFFFFFuLL, &__p);
    v52 = v48;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v52);
    for (i = 0; i != -9; i -= 3)
    {
      v17 = v56[i - 1];
      if (v17)
      {
        v56[i] = v17;
        operator delete(v17);
      }
    }

    v18 = v51 + 6;
    v19 = *v51;
    v20 = (v51[1] - *v51) >> 3;
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
        goto LABEL_24;
      }
    }

    v23 = v22;
LABEL_24:
    v29 = v51[3];
    v30 = (v51[4] - v29) >> 3;
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
      if (*(v29 + v36) != *(*v18 + v36))
      {
        goto LABEL_31;
      }
    }

    v33 = v32;
LABEL_31:
    v37 = v20 + 1;
    while ((v24 & 0x80000000) == 0)
    {
      v38 = *(v19 + 8 * (v24 & 0x7FFFFFFF));
      --v37;
      --v24;
      if (v38)
      {
        goto LABEL_36;
      }
    }

    v37 = v22;
LABEL_36:
    v39 = v30 + 1;
    while ((v34 & 0x80000000) == 0)
    {
      v40 = *(v29 + 8 * (v34 & 0x7FFFFFFF));
      --v39;
      --v34;
      if (v40)
      {
        goto LABEL_41;
      }
    }

    v39 = v32;
LABEL_41:
    v41 = (v50 - __p) >> 2;
    if (v23 <= v33)
    {
      v42 = v33;
    }

    else
    {
      v42 = v23;
    }

    if (v23 <= v39)
    {
      v23 = v39;
    }

    if (v37 > v33)
    {
      v33 = v37;
    }

    if (v41 > v33)
    {
      v43 = 1;
    }

    else
    {
      v33 = (v50 - __p) >> 2;
      v43 = a4;
    }

    if (v41 > v23)
    {
      v44 = 2;
    }

    else
    {
      v23 = v33;
      v44 = v43;
    }

    if (v41 <= v42)
    {
      v45 = v23;
    }

    else
    {
      v45 = v42;
    }

    if (v41 <= v42)
    {
      v46 = v44;
    }

    else
    {
      v46 = 3;
    }

    if (!v45 || *(*v18 + 8 * v45 - 8) < 16)
    {
      goto LABEL_62;
    }

    switch(v46)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::ScalarVector<mlx::core::detail::Remainder>>(v10->f32, v11, v12, v45, *(*a1 + 48), &__p, v51, v51 + 3, v15, v51 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorScalar<mlx::core::detail::Remainder>>(v10, v11->f32, v12, v45, *(*a1 + 48), &__p, v51, v51 + 3, v15, v51 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorVector<mlx::core::detail::Remainder>>(v10, v11, v12, v45, *(*a1 + 48), &__p, v51, v51 + 3, v51 + 6);
        break;
      default:
        LODWORD(v41) = v45;
LABEL_62:
        mlx::core::binary_op_dispatch_dims<float,float,false,mlx::core::detail::Remainder>(v10->f32, v11->f32, v12->i32, v41, *(*a1 + 48), &__p, v51, v51 + 3, v51 + 6);
        break;
    }

    v53[0] = &v51;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v53);
    if (__p)
    {
      v50 = __p;
      operator delete(__p);
    }

    goto LABEL_65;
  }

  v27 = v11->f32[0];
  v28 = remainderf(v10->f32[0], v11->f32[0]);
  if (v28 != 0.0 && v27 >= 0.0 == v28 < 0.0)
  {
    v28 = v27 + v28;
  }

  *v12->i32 = v28;
LABEL_65:
  v47 = *MEMORY[0x277D85DE8];
}

void sub_25A669CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<float,float>(int32x2_t a1, uint64_t a2, float *a3, uint64_t a4, int8x16_t *a5, int a6)
{
  v6 = a6;
  v18 = *a3;
  if (a6 < 8)
  {
    v13 = a6;
  }

  else
  {
    a1.i32[0] = *a3;
    x = vdupq_lane_s32(a1, 0);
    do
    {
      v10 = *a4;
      v9 = *(a4 + 16);
      a4 += 32;
      v22 = v9;
      v20 = v10;
      v19 = _simd_remainder_f4(x, v10);
      v11 = _simd_remainder_f4(x, v22);
      v12 = vmovn_s16(vbicq_s8(veorq_s8(vuzp1q_s16(vcltzq_f32(v19), vcltzq_f32(v11)), vuzp1q_s16(vcltzq_f32(v20), vcltzq_f32(v22))), vuzp1q_s16(vceqzq_f32(v19), vceqzq_f32(v11))));
      *a5 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v12, *v11.f32)), 0x1FuLL)), vaddq_f32(v20, v19), v19);
      a5[1] = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v12, *v11.f32)), 0x1FuLL)), vaddq_f32(v22, v11), v11);
      a5 += 2;
      v13 = v6 - 8;
      v14 = v6 > 0xF;
      v6 -= 8;
    }

    while (v14);
  }

  if (v13 >= 1)
  {
    v15 = v13 + 1;
    do
    {
      v16 = *a4;
      v17 = remainderf(v18, *a4);
      if (v17 != 0.0 && v16 >= 0.0 == v17 < 0.0)
      {
        v17 = v16 + v17;
      }

      *a5->i32 = v17;
      a5 = (a5 + 4);
      a4 += 4;
      --v15;
    }

    while (v15 > 1);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<float,float>(int32x2_t a1, uint64_t a2, _OWORD *a3, float *a4, int8x16_t *a5, int a6)
{
  v6 = a6;
  v23 = *a4;
  if (a6 < 8)
  {
    v14 = a6;
  }

  else
  {
    a1.i32[0] = *a4;
    v26 = vdupq_lane_s32(a1, 0);
    v9 = vcltzq_f32(v26);
    v22 = vuzp1q_s16(v9, v9);
    do
    {
      v10 = *a3;
      v11 = *(a3 + 1);
      a3 += 2;
      x = v11;
      v24 = _simd_remainder_f4(v10, v26);
      v12 = _simd_remainder_f4(x, v26);
      v13 = vmovn_s16(vbicq_s8(veorq_s8(vuzp1q_s16(vcltzq_f32(v24), vcltzq_f32(v12)), v22), vuzp1q_s16(vceqzq_f32(v24), vceqzq_f32(v12))));
      *a5 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v13, *v12.f32)), 0x1FuLL)), vaddq_f32(v26, v24), v24);
      a5[1] = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v13, *v12.f32)), 0x1FuLL)), vaddq_f32(v26, v12), v12);
      a5 += 2;
      v14 = v6 - 8;
      v15 = v6 > 0xF;
      v6 -= 8;
    }

    while (v15);
  }

  v16 = v23;
  if (v14 >= 1)
  {
    v17 = v14 + 1;
    do
    {
      v18 = v16 >= 0.0;
      v19 = *a3;
      a3 = (a3 + 4);
      v20 = remainderf(v19, v16);
      v16 = v23;
      v21 = v23 + v20;
      if (v18 != v20 < 0.0)
      {
        v21 = v20;
      }

      if (v20 != 0.0)
      {
        v20 = v21;
      }

      *a5->i32 = v20;
      a5 = (a5 + 4);
      --v17;
    }

    while (v17 > 1);
  }
}

void mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<float,float>(uint64_t a1, simd_float4 *a2, simd_float4 *a3, int8x16_t *a4, int a5)
{
  v5 = a5;
  if (a5 < 8)
  {
    v15 = a5;
  }

  else
  {
    do
    {
      v10 = *a3;
      v9 = a3[1];
      a3 += 2;
      v22 = v10;
      y = v9;
      v11 = *a2;
      v12 = a2[1];
      a2 += 2;
      x = v12;
      v20 = _simd_remainder_f4(v11, v10);
      v13 = _simd_remainder_f4(x, y);
      v14 = vmovn_s16(vbicq_s8(veorq_s8(vuzp1q_s16(vcltzq_f32(v20), vcltzq_f32(v13)), vuzp1q_s16(vcltzq_f32(v22), vcltzq_f32(y))), vuzp1q_s16(vceqzq_f32(v20), vceqzq_f32(v13))));
      *a4 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v14, *v13.f32)), 0x1FuLL)), vaddq_f32(v22, v20), v20);
      a4[1] = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v14, *v13.f32)), 0x1FuLL)), vaddq_f32(y, v13), v13);
      a4 += 2;
      v15 = v5 - 8;
      v16 = v5 > 0xF;
      v5 -= 8;
    }

    while (v16);
  }

  if (v15 >= 1)
  {
    v17 = v15 + 1;
    do
    {
      v18 = a3->f32[0];
      v19 = remainderf(a2->f32[0], a3->f32[0]);
      if (v19 != 0.0 && v18 >= 0.0 == v19 < 0.0)
      {
        v19 = v18 + v19;
      }

      *a4->i32 = v19;
      a4 = (a4 + 4);
      a2 = (a2 + 4);
      a3 = (a3 + 4);
      --v17;
    }

    while (v17 > 1);
  }
}

void mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorVector<mlx::core::detail::Remainder>>(simd_float4 *a1, simd_float4 *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>((a1 + 4 * v60), (a2 + 4 * v53), (a3 + 4 * v19), a6, a7, a8, a9, v15);
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

void sub_25A66A538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::VectorScalar<mlx::core::detail::Remainder>>(_OWORD *a1, float *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int32x2_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>((a1 + 4 * v62), &a2[v55], (a3 + 4 * v21), a6, a7, a8, a10, v16, v19);
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

void sub_25A66A950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,float,true,mlx::core::ScalarVector<mlx::core::detail::Remainder>>(float *a1, uint64_t a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int32x2_t a9, void *a10)
{
  v16 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a10, 0, a9);
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
          mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(&a1[v62], a2 + 4 * v55, (a3 + 4 * v21), a6, a7, a8, a10, v16, v19);
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

void sub_25A66AD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<float,float,false,mlx::core::detail::Remainder>(float *a1, float *a2, float *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<float,float,mlx::core::detail::Remainder,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<float,float,mlx::core::detail::Remainder,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<float,float,mlx::core::detail::Remainder,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<float,float,mlx::core::detail::Remainder,3,false>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A66B180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(simd_float4 *a1, simd_float4 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 4 * *(*a5 + 8 * a8);
    v14 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<float,float>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 4 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(simd_float4 *a1, simd_float4 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(simd_float4 *a1, simd_float4 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(_OWORD *a1, float *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v13 = *(*a7 + 8 * a8);
    v14 = 4 * *(*a5 + 8 * a8);
    v15 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<float,float>(a9, &v16, a1, a2, a3, v13);
      a1 = (a1 + v14);
      a2 = (a2 + v15);
      a3 = (a3 + 4 * v13);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(_OWORD *a1, float *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(_OWORD *a1, float *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 = (a2 + v17);
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(float *a1, uint64_t a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v13 = *(*a7 + 8 * a8);
    v14 = 4 * *(*a5 + 8 * a8);
    v15 = 4 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<float,float>(a9, &v16, a1, a2, a3, v13);
      a1 = (a1 + v14);
      a2 += v15;
      a3 = (a3 + 4 * v13);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(float *a1, uint64_t a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 += v17;
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(float *a1, uint64_t a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8, int32x2_t a9)
{
  v9 = *(*a4 + 4 * a8);
  if (v9 >= 1)
  {
    v16 = 4 * *(*a5 + 8 * a8);
    v17 = 4 * *(*a6 + 8 * a8);
    v18 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1, a9);
      a1 = (a1 + v16);
      a2 += v17;
      a3 = (a3 + v18);
      --v9;
    }

    while (v9);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::detail::Remainder,1,false>(float *a1, float *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = 4 * *(*a5 + 8 * a8);
    v13 = 4 * *(*a6 + 8 * a8);
    v14 = 4 * *(*a7 + 8 * a8);
    do
    {
      v15 = *a2;
      v16 = remainderf(*a1, *a2);
      if (v16 != 0.0 && v15 >= 0.0 == v16 < 0.0)
      {
        v16 = v15 + v16;
      }

      *a3 = v16;
      a1 = (a1 + v12);
      a2 = (a2 + v13);
      a3 = (a3 + v14);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::detail::Remainder,2,false>(float *a1, float *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::detail::Remainder,1,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<float,float,mlx::core::detail::Remainder,3,false>(float *a1, float *a2, float *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 4 * *(*a5 + 8 * a8);
    v16 = 4 * *(*a6 + 8 * a8);
    v17 = 4 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<float,float,mlx::core::detail::Remainder,2,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op<double,double,mlx::core::detail::Remainder>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<double,double>(v51, v9, v10, v11, *(v8 + 160));
      goto LABEL_65;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<double,double>(v51, v9, v10, v11, *(v8 + 48));
      goto LABEL_65;
    }

    goto LABEL_8;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<double,double>(v51, v9, v10, v11, *(*a2 + 160));
      goto LABEL_65;
    }

LABEL_8:
    memset(v51, 0, sizeof(v51));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v51, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
    v12 = *a2;
    memset(v52, 0, sizeof(v52));
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v52, *(v12 + 24), *(v12 + 32), (*(v12 + 32) - *(v12 + 24)) >> 3);
    v13 = *a3;
    v54[0] = 0;
    v54[1] = 0;
    v53 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v53, *(v13 + 24), *(v13 + 32), (*(v13 + 32) - *(v13 + 24)) >> 3);
    memset(v46, 0, sizeof(v46));
    std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v46, v51, &v55, 3uLL);
    mlx::core::collapse_contiguous_dims(v8, v46, 0x7FFFFFFFuLL, &__p);
    v50 = v46;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v50);
    for (i = 0; i != -9; i -= 3)
    {
      v15 = v54[i - 1];
      if (v15)
      {
        v54[i] = v15;
        operator delete(v15);
      }
    }

    v16 = v49 + 6;
    v17 = *v49;
    v18 = (v49[1] - *v49) >> 3;
    v19 = v18 - 1;
    if (v18 - 1 >= -1)
    {
      v19 = -1;
    }

    v20 = v19 + 1;
    v21 = v18 + 1;
    v22 = v18 - 1;
    v23 = v18 - 1;
    while ((v23 & 0x80000000) == 0)
    {
      v24 = 8 * (v23 & 0x7FFFFFFF);
      --v21;
      --v23;
      if (*(v17 + v24) != *(*v16 + v24))
      {
        goto LABEL_24;
      }
    }

    v21 = v20;
LABEL_24:
    v27 = v49[3];
    v28 = (v49[4] - v27) >> 3;
    v29 = v28 - 1;
    if (v28 - 1 >= -1)
    {
      v29 = -1;
    }

    v30 = v29 + 1;
    v31 = v28 + 1;
    v32 = v28 - 1;
    v33 = v28 - 1;
    while ((v33 & 0x80000000) == 0)
    {
      v34 = 8 * (v33 & 0x7FFFFFFF);
      --v31;
      --v33;
      if (*(v27 + v34) != *(*v16 + v34))
      {
        goto LABEL_31;
      }
    }

    v31 = v30;
LABEL_31:
    v35 = v18 + 1;
    while ((v22 & 0x80000000) == 0)
    {
      v36 = *(v17 + 8 * (v22 & 0x7FFFFFFF));
      --v35;
      --v22;
      if (v36)
      {
        goto LABEL_36;
      }
    }

    v35 = v20;
LABEL_36:
    v37 = v28 + 1;
    while ((v32 & 0x80000000) == 0)
    {
      v38 = *(v27 + 8 * (v32 & 0x7FFFFFFF));
      --v37;
      --v32;
      if (v38)
      {
        goto LABEL_41;
      }
    }

    v37 = v30;
LABEL_41:
    v39 = (v48 - __p) >> 2;
    if (v21 <= v31)
    {
      v40 = v31;
    }

    else
    {
      v40 = v21;
    }

    if (v21 <= v37)
    {
      v21 = v37;
    }

    if (v35 > v31)
    {
      v31 = v35;
    }

    if (v39 > v31)
    {
      v41 = 1;
    }

    else
    {
      v31 = (v48 - __p) >> 2;
      v41 = a4;
    }

    if (v39 > v21)
    {
      v42 = 2;
    }

    else
    {
      v21 = v31;
      v42 = v41;
    }

    if (v39 <= v40)
    {
      v43 = v21;
    }

    else
    {
      v43 = v40;
    }

    if (v39 <= v40)
    {
      v44 = v42;
    }

    else
    {
      v44 = 3;
    }

    if (!v43 || *(*v16 + 8 * v43 - 8) < 16)
    {
      goto LABEL_62;
    }

    switch(v44)
    {
      case 1:
        mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::ScalarVector<mlx::core::detail::Remainder>>(v9, v10, v11, v43, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorScalar<mlx::core::detail::Remainder>>(v9, v10, v11, v43, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorVector<mlx::core::detail::Remainder>>(v9, v10, v11, v43, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
        break;
      default:
        LODWORD(v39) = v43;
LABEL_62:
        mlx::core::binary_op_dispatch_dims<double,double,false,mlx::core::detail::Remainder>(v9->f64, v10, v11->i64, v39, *(*a1 + 48), &__p, v49, v49 + 3, v49 + 6);
        break;
    }

    v51[0] = &v49;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v51);
    if (__p)
    {
      v48 = __p;
      operator delete(__p);
    }

    goto LABEL_65;
  }

  v25 = *v10;
  v26 = remainder(v9->f64[0], *v10);
  if (v26 != 0.0 && v25 >= 0.0 == v26 < 0.0)
  {
    v26 = v25 + v26;
  }

  *v11->i64 = v26;
LABEL_65:
  v45 = *MEMORY[0x277D85DE8];
}

void sub_25A66BF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<double,double>(uint64_t a1, uint64_t *a2, uint64_t a3, int8x16_t *a4, int a5)
{
  v5 = a5;
  __x = *a2;
  if (a5 < 4)
  {
    v11 = a5;
  }

  else
  {
    x = vdupq_lane_s64(*a2, 0);
    do
    {
      v9 = *a3;
      v8 = *(a3 + 16);
      a3 += 32;
      v20 = v8;
      v18 = v9;
      v17 = _simd_remainder_d2(x, v9);
      v10 = _simd_remainder_d2(x, v20);
      *a4 = vbslq_s8(vbicq_s8(veorq_s8(vcltzq_f64(v17), vcltzq_f64(v18)), vceqzq_f64(v17)), vaddq_f64(v18, v17), v17);
      a4[1] = vbslq_s8(vbicq_s8(veorq_s8(vcltzq_f64(v10), vcltzq_f64(v20)), vceqzq_f64(v10)), vaddq_f64(v20, v10), v10);
      a4 += 2;
      v11 = v5 - 4;
      v12 = v5 > 7;
      v5 -= 4;
    }

    while (v12);
  }

  if (v11 >= 1)
  {
    v13 = v11 + 1;
    do
    {
      v14 = *a3;
      v15 = remainder(*&__x, *a3);
      if (v15 != 0.0 && v14 >= 0.0 == v15 < 0.0)
      {
        v15 = v14 + v15;
      }

      *a4->i64 = v15;
      a4 = (a4 + 8);
      a3 += 8;
      --v13;
    }

    while (v13 > 1);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<double,double>(uint64_t a1, _OWORD *a2, uint64_t *a3, int8x16_t *a4, int a5)
{
  v5 = a5;
  v20 = *a3;
  if (a5 < 4)
  {
    v11 = a5;
  }

  else
  {
    v23 = vdupq_lane_s64(*a3, 0);
    v19 = vcltzq_f64(v23);
    do
    {
      v8 = *a2;
      v9 = *(a2 + 1);
      a2 += 2;
      x = v9;
      v21 = _simd_remainder_d2(v8, v23);
      v10 = _simd_remainder_d2(x, v23);
      *a4 = vbslq_s8(vbicq_s8(veorq_s8(vcltzq_f64(v21), v19), vceqzq_f64(v21)), vaddq_f64(v23, v21), v21);
      a4[1] = vbslq_s8(vbicq_s8(veorq_s8(vcltzq_f64(v10), v19), vceqzq_f64(v10)), vaddq_f64(v23, v10), v10);
      a4 += 2;
      v11 = v5 - 4;
      v12 = v5 > 7;
      v5 -= 4;
    }

    while (v12);
  }

  v13 = v20;
  if (v11 >= 1)
  {
    v14 = v11 + 1;
    do
    {
      v15 = v13 >= 0.0;
      v16 = *a2;
      a2 = (a2 + 8);
      v17 = remainder(v16, v13);
      v13 = v20;
      v18 = v20 + v17;
      if (v15 != v17 < 0.0)
      {
        v18 = v17;
      }

      if (v17 != 0.0)
      {
        v17 = v18;
      }

      *a4->i64 = v17;
      a4 = (a4 + 8);
      --v14;
    }

    while (v14 > 1);
  }
}

void mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<double,double>(uint64_t a1, simd_double2 *a2, simd_double2 *a3, int8x16_t *a4, int a5)
{
  v5 = a5;
  if (a5 < 4)
  {
    v14 = a5;
  }

  else
  {
    do
    {
      v9 = *a2;
      v10 = a2[1];
      a2 += 2;
      x = v10;
      v11 = *a3;
      v12 = a3[1];
      a3 += 2;
      v21 = v11;
      y = v12;
      v19 = _simd_remainder_d2(v9, v11);
      v13 = _simd_remainder_d2(x, y);
      *a4 = vbslq_s8(vbicq_s8(veorq_s8(vcltzq_f64(v19), vcltzq_f64(v21)), vceqzq_f64(v19)), vaddq_f64(v21, v19), v19);
      a4[1] = vbslq_s8(vbicq_s8(veorq_s8(vcltzq_f64(v13), vcltzq_f64(y)), vceqzq_f64(v13)), vaddq_f64(y, v13), v13);
      a4 += 2;
      v14 = v5 - 4;
      v15 = v5 > 7;
      v5 -= 4;
    }

    while (v15);
  }

  if (v14 >= 1)
  {
    v16 = v14 + 1;
    do
    {
      v17 = a3->f64[0];
      v18 = remainder(a2->f64[0], a3->f64[0]);
      if (v18 != 0.0 && v17 >= 0.0 == v18 < 0.0)
      {
        v18 = v17 + v18;
      }

      *a4->i64 = v18;
      a4 = (a4 + 8);
      a2 = (a2 + 8);
      a3 = (a3 + 8);
      --v16;
    }

    while (v16 > 1);
  }
}

void mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorVector<mlx::core::detail::Remainder>>(simd_double2 *a1, simd_double2 *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>((a1 + 8 * v60), (a2 + 8 * v53), (a3 + 8 * v19), a6, a7, a8, a9, v15);
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

void sub_25A66C728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::VectorScalar<mlx::core::detail::Remainder>>(_OWORD *a1, uint64_t *a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>((a1 + 8 * v60), &a2[v53], (a3 + 8 * v19), a6, a7, a8, a9, v15);
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

void sub_25A66CB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,double,true,mlx::core::ScalarVector<mlx::core::detail::Remainder>>(uint64_t *a1, uint64_t a2, int8x16_t *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(&a1[v60], a2 + 8 * v53, (a3 + 8 * v19), a6, a7, a8, a9, v15);
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

void sub_25A66CF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<double,double,false,mlx::core::detail::Remainder>(long double *a1, long double *a2, double *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<double,double,mlx::core::detail::Remainder,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<double,double,mlx::core::detail::Remainder,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<double,double,mlx::core::detail::Remainder,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<double,double,mlx::core::detail::Remainder,3,false>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A66D370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(simd_double2 *a1, simd_double2 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<double,double>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 8 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(simd_double2 *a1, simd_double2 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(simd_double2 *a1, simd_double2 *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(_OWORD *a1, uint64_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<double,double>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 = (a3 + 8 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(_OWORD *a1, uint64_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(_OWORD *a1, uint64_t *a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(uint64_t *a1, uint64_t a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 8 * *(*a5 + 8 * a8);
    v14 = 8 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<double,double>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 += v14;
      a3 = (a3 + 8 * v12);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(uint64_t *a1, uint64_t a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 += v16;
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(uint64_t *a1, uint64_t a2, int8x16_t *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 += v16;
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::detail::Remainder,1,false>(long double *a1, long double *a2, double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = 8 * *(*a5 + 8 * a8);
    v13 = 8 * *(*a6 + 8 * a8);
    v14 = 8 * *(*a7 + 8 * a8);
    do
    {
      v15 = *a2;
      v16 = remainder(*a1, *a2);
      if (v16 != 0.0 && v15 >= 0.0 == v16 < 0.0)
      {
        v16 = v15 + v16;
      }

      *a3 = v16;
      a1 = (a1 + v12);
      a2 = (a2 + v13);
      a3 = (a3 + v14);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::detail::Remainder,2,false>(long double *a1, long double *a2, double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::detail::Remainder,1,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<double,double,mlx::core::detail::Remainder,3,false>(long double *a1, long double *a2, double *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 8 * *(*a5 + 8 * a8);
    v16 = 8 * *(*a6 + 8 * a8);
    v17 = 8 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<double,double,mlx::core::detail::Remainder,2,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Remainder>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 152);
  v10 = *(*a2 + 152);
  v11 = *(*a3 + 152);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(v50, v9, v10, v11, *(v8 + 160));
      goto LABEL_62;
    }

    if (a4 == 3)
    {
      mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(v50, v9, v10, v11, *(v8 + 48));
      goto LABEL_62;
    }
  }

  else
  {
    if (!a4)
    {
      v25 = remainderf(COERCE_FLOAT(*v9 << 16), COERCE_FLOAT(*v10 << 16));
      *v11 = (LODWORD(v25) + (HIWORD(LODWORD(v25)) & 1u) + 0x7FFF) >> 16;
      goto LABEL_62;
    }

    if (a4 == 1)
    {
      mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(v50, v9, v10, v11, *(*a2 + 160));
      goto LABEL_62;
    }
  }

  memset(v50, 0, sizeof(v50));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v50, *(v8 + 24), *(v8 + 32), (*(v8 + 32) - *(v8 + 24)) >> 3);
  v12 = *a2;
  memset(v51, 0, sizeof(v51));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v51, *(v12 + 24), *(v12 + 32), (*(v12 + 32) - *(v12 + 24)) >> 3);
  v13 = *a3;
  v53[0] = 0;
  v53[1] = 0;
  v52 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v52, *(v13 + 24), *(v13 + 32), (*(v13 + 32) - *(v13 + 24)) >> 3);
  memset(v45, 0, sizeof(v45));
  std::vector<std::vector<long long>>::__init_with_size[abi:ne200100]<std::vector<long long> const*,std::vector<long long> const*>(v45, v50, &v54, 3uLL);
  mlx::core::collapse_contiguous_dims(v8, v45, 0x7FFFFFFFuLL, &__p);
  v49 = v45;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v49);
  for (i = 0; i != -9; i -= 3)
  {
    v15 = v53[i - 1];
    if (v15)
    {
      v53[i] = v15;
      operator delete(v15);
    }
  }

  v16 = v48 + 6;
  v17 = *v48;
  v18 = (v48[1] - *v48) >> 3;
  v19 = v18 - 1;
  if (v18 - 1 >= -1)
  {
    v19 = -1;
  }

  v20 = v19 + 1;
  v21 = v18 + 1;
  v22 = v18 - 1;
  v23 = v18 - 1;
  while ((v23 & 0x80000000) == 0)
  {
    v24 = 8 * (v23 & 0x7FFFFFFF);
    --v21;
    --v23;
    if (*(v17 + v24) != *(*v16 + v24))
    {
      goto LABEL_21;
    }
  }

  v21 = v20;
LABEL_21:
  v26 = v48[3];
  v27 = (v48[4] - v26) >> 3;
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
    if (*(v26 + v33) != *(*v16 + v33))
    {
      goto LABEL_28;
    }
  }

  v30 = v29;
LABEL_28:
  v34 = v18 + 1;
  while ((v22 & 0x80000000) == 0)
  {
    v35 = *(v17 + 8 * (v22 & 0x7FFFFFFF));
    --v34;
    --v22;
    if (v35)
    {
      goto LABEL_33;
    }
  }

  v34 = v20;
LABEL_33:
  v36 = v27 + 1;
  while ((v31 & 0x80000000) == 0)
  {
    v37 = *(v26 + 8 * (v31 & 0x7FFFFFFF));
    --v36;
    --v31;
    if (v37)
    {
      goto LABEL_38;
    }
  }

  v36 = v29;
LABEL_38:
  v38 = (v47 - __p) >> 2;
  if (v21 <= v30)
  {
    v39 = v30;
  }

  else
  {
    v39 = v21;
  }

  if (v21 <= v36)
  {
    v21 = v36;
  }

  if (v34 > v30)
  {
    v30 = v34;
  }

  if (v38 > v30)
  {
    v40 = 1;
  }

  else
  {
    v30 = (v47 - __p) >> 2;
    v40 = a4;
  }

  if (v38 > v21)
  {
    v41 = 2;
  }

  else
  {
    v21 = v30;
    v41 = v40;
  }

  if (v38 <= v39)
  {
    v42 = v21;
  }

  else
  {
    v42 = v39;
  }

  if (v38 <= v39)
  {
    v43 = v41;
  }

  else
  {
    v43 = 3;
  }

  if (!v42 || *(*v16 + 8 * v42 - 8) < 16)
  {
    goto LABEL_59;
  }

  switch(v43)
  {
    case 1:
      mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::ScalarVector<mlx::core::detail::Remainder>>(v9, v10, v11, v42, *(*a1 + 48), &__p, v48, v48 + 3, v48 + 6);
      break;
    case 2:
      mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorScalar<mlx::core::detail::Remainder>>(v9, v10, v11, v42, *(*a1 + 48), &__p, v48, v48 + 3, v48 + 6);
      break;
    case 3:
      mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorVector<mlx::core::detail::Remainder>>(v9, v10, v11, v42, *(*a1 + 48), &__p, v48, v48 + 3, v48 + 6);
      break;
    default:
      LODWORD(v38) = v42;
LABEL_59:
      mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,false,mlx::core::detail::Remainder>(v9, v10, v11, v38, *(*a1 + 48), &__p, v48, v48 + 3, v48 + 6);
      break;
  }

  v50[0] = &v48;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v50);
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }

LABEL_62:
  v44 = *MEMORY[0x277D85DE8];
}

void sub_25A66E128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::tuple<std::vector<int>,std::vector<std::vector<long long>>>::~tuple(va);
  _Unwind_Resume(a1);
}

void mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, _WORD *a4, int a5)
{
  if (a5 >= 1)
  {
    LODWORD(v7) = *a2 << 16;
    v8 = a5 + 1;
    do
    {
      v9 = remainderf(v7, COERCE_FLOAT(*a3 << 16));
      *a4++ = (LODWORD(v9) + (HIWORD(LODWORD(v9)) & 1u) + 0x7FFF) >> 16;
      ++a3;
      --v8;
    }

    while (v8 > 1);
  }
}

void mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, _WORD *a4, int a5)
{
  if (a5 >= 1)
  {
    LODWORD(v7) = *a3 << 16;
    v8 = a5 + 1;
    do
    {
      v9 = remainderf(COERCE_FLOAT(*a2 << 16), v7);
      *a4++ = (LODWORD(v9) + (HIWORD(LODWORD(v9)) & 1u) + 0x7FFF) >> 16;
      ++a2;
      --v8;
    }

    while (v8 > 1);
  }
}

void mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, _WORD *a4, int a5)
{
  if (a5 >= 1)
  {
    v8 = a5 + 1;
    do
    {
      v9 = remainderf(COERCE_FLOAT(*a2 << 16), COERCE_FLOAT(*a3 << 16));
      *a4++ = (LODWORD(v9) + (HIWORD(LODWORD(v9)) & 1u) + 0x7FFF) >> 16;
      ++a2;
      ++a3;
      --v8;
    }

    while (v8 > 1);
  }
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorVector<mlx::core::detail::Remainder>>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A66E79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::VectorScalar<mlx::core::detail::Remainder>>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A66EBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,true,mlx::core::ScalarVector<mlx::core::detail::Remainder>>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A66EFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dispatch_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,false,mlx::core::detail::Remainder>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, int a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v15 = a4 - 3;
  switch(a4)
  {
    case 3:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Remainder,3,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 2:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Remainder,2,false>(a1, a2, a3, a6, a7, a8, a9, 0);
      break;
    case 1:

      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Remainder,1,false>(a1, a2, a3, a6, a7, a8, a9, 0);
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
          mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Remainder,3,false>(&a1[v60], &a2[v53], &a3[v19], a6, a7, a8, a9, v15);
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

void sub_25A66F3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    v14 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorVector<mlx::core::detail::Remainder>::operator()<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 += v12;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Remainder>,3,true>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    v14 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::VectorScalar<mlx::core::detail::Remainder>::operator()<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 += v12;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Remainder>,3,true>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::VectorScalar<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = *(*a7 + 8 * a8);
    v13 = 2 * *(*a5 + 8 * a8);
    v14 = 2 * *(*a6 + 8 * a8);
    do
    {
      mlx::core::ScalarVector<mlx::core::detail::Remainder>::operator()<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16>(&v15, a1, a2, a3, v12);
      a1 = (a1 + v13);
      a2 = (a2 + v14);
      a3 += v12;
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Remainder>,1,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Remainder>,3,true>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::ScalarVector<mlx::core::detail::Remainder>,2,true>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Remainder,1,false>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v12 = 2 * *(*a5 + 8 * a8);
    v13 = 2 * *(*a6 + 8 * a8);
    v14 = 2 * *(*a7 + 8 * a8);
    do
    {
      v15 = remainderf(COERCE_FLOAT(*a1 << 16), COERCE_FLOAT(*a2 << 16));
      *a3 = (LODWORD(v15) + (HIWORD(LODWORD(v15)) & 1u) + 0x7FFF) >> 16;
      a1 = (a1 + v12);
      a2 = (a2 + v13);
      a3 = (a3 + v14);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Remainder,2,false>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Remainder,1,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Remainder,3,false>(unsigned __int16 *a1, unsigned __int16 *a2, _WORD *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v8 = *(*a4 + 4 * a8);
  if (v8 >= 1)
  {
    v15 = 2 * *(*a5 + 8 * a8);
    v16 = 2 * *(*a6 + 8 * a8);
    v17 = 2 * *(*a7 + 8 * a8);
    do
    {
      mlx::core::binary_op_dims<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Remainder,2,false>(a1, a2, a3, a4, a5, a6, a7, a8 + 1);
      a1 = (a1 + v15);
      a2 = (a2 + v16);
      a3 = (a3 + v17);
      --v8;
    }

    while (v8);
  }
}

void mlx::core::binary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Remainder>(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
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
      *v11 = remainderf(*v9, *v10);
      *(v11 + 4) = 0;
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
          v15 = *v10;
          v10 += 2;
          *v11 = remainderf(v13, v15);
          *(v11 + 4) = 0;
          v11 += 8;
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
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::ScalarVector<mlx::core::detail::Remainder>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      case 2:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorScalar<mlx::core::detail::Remainder>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      case 3:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,true,mlx::core::VectorVector<mlx::core::detail::Remainder>>(v9, v10, v11, v54, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
        break;
      default:
        LODWORD(v50) = v54;
LABEL_68:
        mlx::core::binary_op_dispatch_dims<mlx::core::complex64_t,mlx::core::complex64_t,false,mlx::core::detail::Remainder>(v9, v10, v11, v50, *(*a1 + 48), &__p, v60, v60 + 3, v60 + 6);
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
        v37 = *v9;
        v9 += 2;
        *v11 = remainderf(v37, v35);
        *(v11 + 4) = 0;
        v11 += 8;
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
        v18 = *v9;
        v9 += 2;
        v19 = v18;
        v20 = *v10;
        v10 += 2;
        *v11 = remainderf(v19, v20);
        *(v11 + 4) = 0;
        v11 += 8;
        --v17;
      }

      while (v17 > 1);
    }
  }

LABEL_71:
  v56 = *MEMORY[0x277D85DE8];
}