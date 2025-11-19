void sub_2FE78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v15;
    operator delete(v15);
    if (!v13)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void sub_2FEDC(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v10 = a2;
  __p[0] = 0;
  __p[1] = 0;
  v59 = 0.0;
  v12 = a3 - a2;
  if (a3 - a2 == 1)
  {
    operator new();
  }

  sub_2E80C(a1, a2, a3, v57);
  sub_2F68C(a1, v10, a3, a4, a5, &v60);
  v14 = __p[0];
  *__p = v60;
  v59 = v61;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = (v12 + 1) >> 1;
  v16 = 0.0;
  v50 = v10 + 1;
  v51 = v15;
  if (v10 + 1 < a3)
  {
    v17 = 32 * v10;
    v18 = 8;
    v19 = v10 + 1;
    do
    {
      sub_2E458(a1, &v60, *(v57[0] + v18), 1.0);
      v20 = (*a1 + v17);
      v21 = vaddq_f64(v60, v20[2]);
      v22 = vaddvq_f64(vmulq_f64(v21, v21)) + (v61 + v20[3].f64[0]) * (v61 + v20[3].f64[0]);
      if (v22 >= v16)
      {
        v15 = v19;
        v16 = v22;
      }

      ++v19;
      v17 += 32;
      v18 += 8;
    }

    while (a3 != v19);
  }

  if (v16 < a7)
  {
    *a6 = *__p;
    *(a6 + 16) = v59;
    __p[1] = 0;
    v59 = 0.0;
    __p[0] = 0;
    goto LABEL_38;
  }

  v23 = a5;
  if (v16 < a7 * 4.0)
  {
    v24 = 0;
    v47 = 32 * v10;
    v48 = a5;
    while (1)
    {
      sub_2F2BC(v10, a3, v57, __p, &v55);
      v25 = v10;
      sub_2F68C(a1, v10, a3, a4, v23, &v60);
      v26 = a4;
      v27 = __p[0];
      *__p = v60;
      v59 = v61;
      if (v27)
      {
        operator delete(v27);
      }

      v28 = 0.0;
      v15 = v51;
      if (v50 < a3)
      {
        v29 = v55;
        v30 = 8;
        v31 = v47;
        v32 = v50;
        v15 = v51;
        do
        {
          sub_2E458(a1, &v60, *&v29[v30], 1.0);
          v33 = (*a1 + v31);
          v34 = vaddq_f64(v60, v33[2]);
          v35 = vaddvq_f64(vmulq_f64(v34, v34)) + (v61 + v33[3].f64[0]) * (v61 + v33[3].f64[0]);
          if (v35 >= v28)
          {
            v15 = v32;
            v28 = v35;
          }

          ++v32;
          v31 += 32;
          v30 += 8;
        }

        while (a3 != v32);
      }

      if (v28 < a7)
      {
        break;
      }

      v36 = v55;
      sub_31F64(v57, v55, v56, (v56 - v55) >> 3);
      a4 = v26;
      v23 = v48;
      v10 = v25;
      if (v36)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (v28 < a7)
      {
        goto LABEL_38;
      }

      if (++v24 == 4)
      {
        goto LABEL_29;
      }
    }

    *a6 = *__p;
    *(a6 + 16) = v59;
    __p[1] = 0;
    v59 = 0.0;
    __p[0] = 0;
    v36 = v55;
    a4 = v26;
    v23 = v48;
    v10 = v25;
    if (!v55)
    {
      goto LABEL_24;
    }

LABEL_23:
    operator delete(v36);
    goto LABEL_24;
  }

LABEL_29:
  v37 = (*a1 + 32 * v15);
  v38 = (v37[-1].f64[0] - v37[1].f64[0] + v37[1].f64[0] - v37[3].f64[0]) * 0.5;
  __asm { FMOV            V3.2D, #0.5 }

  v44 = vmulq_f64(vaddq_f64(vsubq_f64(v37[-2], *v37), vsubq_f64(*v37, v37[2])), _Q3);
  v45 = sqrt(vaddvq_f64(vmulq_f64(v44, v44)) + v38 * v38);
  if (v45 < 2.22507386e-308)
  {
    v45 = 2.22507386e-308;
  }

  v52 = vdivq_f64(v44, vdupq_lane_s64(*&v45, 0));
  v60 = v52;
  v46 = v38 / v45;
  v61 = v38 / v45;
  v62 = 0;
  sub_2FEDC(&v55, a1, v10, v15, a4, &v60, a7);
  v60 = vnegq_f64(v52);
  v61 = -v46;
  v62 = 0;
  sub_2FEDC(&v53, a1, v15, a3, &v60, v23, a7);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (v56 != v55)
  {
    if (((v56 - v55) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_30CC4(a6, 0, v53, v54, (v54 - v53) >> 5);
  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

LABEL_38:
  if (v57[0])
  {
    v57[1] = v57[0];
    operator delete(v57[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_30758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  v34 = *v32;
  if (*v32)
  {
    *(a17 + 8) = v34;
    operator delete(v34);
    v35 = __p;
    if (!__p)
    {
LABEL_3:
      v36 = a25;
      if (!a25)
      {
LABEL_8:
        if (a28)
        {
          operator delete(a28);
          v37 = a31;
          if (!a31)
          {
LABEL_10:
            _Unwind_Resume(exception_object);
          }
        }

        else
        {
          v37 = a31;
          if (!a31)
          {
            goto LABEL_10;
          }
        }

        operator delete(v37);
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v36);
      goto LABEL_8;
    }
  }

  else
  {
    v35 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v35);
  v36 = a25;
  if (!a25)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_30850(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  v4 = a1[1];
  if (v4 != *a1)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2)) >> 59))
    {
      operator new();
    }

    sub_1794();
  }

  v5 = 0.0 - COERCE_DOUBLE(0x137000000020);
  v6 = vsubq_f64(*&stru_20.cmd, *&dword_0);
  v7 = sqrt(vaddvq_f64(vmulq_f64(v6, v6)) + v5 * v5);
  if (v7 < 2.22507386e-308)
  {
    v7 = 2.22507386e-308;
  }

  v17 = vdivq_f64(v6, vdupq_lane_s64(*&v7, 0));
  v18 = v5 / v7;
  v8 = MEMORY[0xFFFFFFFFFFFFFFD0] - MEMORY[0xFFFFFFFFFFFFFFF0];
  v9 = vsubq_f64(MEMORY[0xFFFFFFFFFFFFFFC0], MEMORY[0xFFFFFFFFFFFFFFE0]);
  v10 = sqrt(vaddvq_f64(vmulq_f64(v9, v9)) + v8 * v8);
  if (v10 < 2.22507386e-308)
  {
    v10 = 2.22507386e-308;
  }

  v19 = 0;
  v14 = vdivq_f64(v9, vdupq_lane_s64(*&v10, 0));
  v15 = v8 / v10;
  v16 = 0;
  sub_2FEDC(&__p, 0, 0xFFFFFFFFFFFFFFFFLL, &v17, &v14, a2, a3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_30B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_30B70(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_1794();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

char *sub_30CC4(uint64_t a1, char *__dst, _OWORD *__src, __int128 *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __dst;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a5 > (v6 - v7) >> 5)
  {
    v8 = *a1;
    v9 = a5 + ((v7 - *a1) >> 5);
    if (v9 >> 59)
    {
      sub_1794();
    }

    v10 = v6 - v8;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 59))
      {
        operator new();
      }

      sub_1808();
    }

    v35 = 32 * ((__dst - v8) >> 5);
    v36 = 32 * a5;
    v37 = v35 + 32 * a5;
    v38 = v35;
    do
    {
      v39 = *__src;
      v40 = __src[1];
      __src += 2;
      *v38 = v39;
      v38[1] = v40;
      v38 += 2;
      v36 -= 32;
    }

    while (v36);
    v41 = *(a1 + 8) - __dst;
    memcpy((v35 + 32 * a5), __dst, v41);
    v43 = v37 + v41;
    *(a1 + 8) = __dst;
    v44 = *a1;
    v45 = &__dst[-*a1];
    v46 = v35 - v45;
    memcpy((v35 - v45), *a1, v45);
    *a1 = v46;
    *(a1 + 8) = v43;
    *(a1 + 16) = 0;
    if (v44)
    {
      operator delete(v44);
    }

    return v35;
  }

  v12 = v7 - __dst;
  v13 = (v7 - __dst) >> 5;
  if (v13 < a5)
  {
    v14 = (__src + v12);
    v15 = *(a1 + 8);
    for (i = v15; v14 != a4; v15 += 32)
    {
      v17 = *v14;
      v18 = v14[1];
      v14 += 2;
      *i = v17;
      *(i + 1) = v18;
      i += 32;
    }

    *(a1 + 8) = v15;
    if (v13 >= 1)
    {
      v19 = &__dst[32 * a5];
      v20 = &v15[-32 * a5];
      v21 = __src;
      for (j = v15; v20 < v7; j += 32)
      {
        v23 = *v20;
        v24 = v20[1];
        v20 += 2;
        *j = v23;
        *(j + 1) = v24;
      }

      *(a1 + 8) = j;
      if (i != v19)
      {
        memmove(&__dst[32 * a5], __dst, v15 - v19 - 7);
      }

      if (v7 != __dst)
      {
        memmove(__dst, v21, v12 - 7);
      }
    }

    return __dst;
  }

  v26 = 32 * a5;
  v27 = &__dst[32 * a5];
  v28 = &v7[-2 * a5];
  for (k = *(a1 + 8); v28 < v7; k += 2)
  {
    v30 = *v28;
    v31 = v28[1];
    v28 += 2;
    *k = v30;
    k[1] = v31;
  }

  *(a1 + 8) = k;
  if (v7 != v27)
  {
    v32 = v7 - v27;
    v33 = v7 - v32;
    v34 = __src;
    memmove(v33, __dst, v32 - 7);
    __src = v34;
  }

  memmove(__dst, __src, v26 - 7);
  return __dst;
}

__n128 sub_30F54@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t *sub_30FB4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v6 = *v2;
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *v2) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      sub_1794();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    v12 = 4 * ((v3 - *v2) >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v13 = 12 * v7 + 12;
    v14 = 12 * v7 - (v3 - v6);
    memcpy((v12 - (v3 - v6)), v6, v3 - v6);
    *v2 = v14;
    *(v2 + 8) = v13;
    *(v2 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }

    result = v11;
    *(v2 + 8) = v13;
  }

  else
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    *(v2 + 8) = v3 + 12;
  }

  return result;
}

void sub_3110C(void *a1@<X0>, int a2@<W1>, char a3@<W2>, void *a4@<X8>, double a5@<D0>)
{
  sub_31214(a1, a3, &v11, a5);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = a2 == 0;
  if (a2)
  {
    v8 = v11;
  }

  else
  {
    v8 = __p;
  }

  v9 = &v12;
  if (v7)
  {
    v9 = &v14;
  }

  v10 = *v9;
  if (v10 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - v8) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }
}

void sub_31214(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v22 = a2;
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 2) > 1)
  {
    v21 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    v20 = 0;
    v9 = 0.0;
    if (v8 != v7 && v8 + 12 != v7)
    {
      v11 = a4;
      do
      {
        sub_314EC(v8, (v8 + 12), a4);
        v9 = v9 + a4;
        v12 = v8 + 24;
        v8 += 12;
      }

      while (v12 != v7);
      v6 = *a1;
      a4 = v11;
    }

    v13 = v9 * a4;
    v19 = v13;
    v18[0] = &v20;
    v18[1] = a3;
    v18[2] = &v22;
    v18[3] = &v21;
    v18[4] = &v19;
    v15 = *(&v6 + 1);
    v14 = v6;
    if (v6 != *(&v6 + 1) && v6 + 12 != *(&v6 + 1))
    {
      do
      {
        sub_316F0(v18, v14, (v14 + 12), v13);
        v17 = v14 + 24;
        v14 += 12;
      }

      while (v17 != v15);
    }
  }

  else
  {

    sub_313A4(a3, a1, a1);
  }
}

void *sub_313A4(void *result, void *a2, void *a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - *a2) >> 2) <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  v4 = a3[1] - *a3;
  if (v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v4 >> 2) <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_314B8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_314EC(uint64_t *a1, _DWORD *a2, double a3)
{
  LODWORD(a3) = *(a1 + 1);
  v5 = exp(3.14159265 - *&a3 * 6.28318531 / 4294967300.0);
  *&v6 = atan((v5 - 1.0 / v5) * 0.5) * 57.2957795;
  v7 = *a1;
  HIDWORD(v7) = *a2;
  v18 = v7;
  v8 = *&v6 * 0.0174532925;
  LODWORD(v6) = a2[1];
  v9 = exp(3.14159265 - v6 * 6.28318531 / 4294967300.0);
  v10 = atan((v9 - 1.0 / v9) * 0.5) * 57.2957795 * 0.0174532925;
  v11.i64[0] = v18;
  v11.i64[1] = HIDWORD(v18);
  v12 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v11), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v19 = vsubq_f64(v12, vdupq_laneq_s64(v12, 1)).f64[0];
  v13 = sin((v8 - v10) * 0.5);
  v14 = v13 * v13;
  v15 = cos(v8);
  v16 = v15 * cos(v10);
  v17 = sin(0.5 * v19);
  atan2(sqrt(v17 * v17 * v16 + v14), sqrt(1.0 - (v17 * v17 * v16 + v14)));
}

void sub_316F0(char **a1, uint64_t *a2, _DWORD *a3, double a4)
{
  if (**a1)
  {
    goto LABEL_17;
  }

  v7 = a1[1];
  v8 = *(v7 + 1);
  v9 = *(v7 + 2);
  if (v8 >= v9)
  {
    v12 = *v7;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *v7) >> 2);
    v14 = v13 + 1;
    if (v13 + 1 > 0x1555555555555555)
    {
      goto LABEL_79;
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 2);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0xAAAAAAAAAAAAAAALL)
    {
      v16 = 0x1555555555555555;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 <= 0x1555555555555555)
      {
        operator new();
      }

      goto LABEL_80;
    }

    v17 = 4 * ((v8 - *v7) >> 2);
    *v17 = *a2;
    *(v17 + 8) = *(a2 + 2);
    v11 = 12 * v13 + 12;
    v18 = 12 * v13 - (v8 - v12);
    memcpy((v17 - (v8 - v12)), v12, v8 - v12);
    *v7 = v18;
    *(v7 + 1) = v11;
    *(v7 + 2) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v10 = *a2;
    *(v8 + 8) = *(a2 + 2);
    *v8 = v10;
    v11 = v8 + 12;
  }

  *(v7 + 1) = v11;
  sub_314EC(a2, a3, a4);
  v21 = v20;
  v22 = a1[3];
  v23 = *v22;
  v24 = v21 + *v22;
  v25 = *a1[4];
  if (v24 >= v25)
  {
    v32 = 0.0;
    if (v21 > 0.0)
    {
      v23 = v25 - v23;
      v32 = v23 / v21;
    }

    LODWORD(v23) = *a3;
    LODWORD(v25) = a3[1];
    *&v33 = *&v23;
    v34 = v32 * *&v33;
    LODWORD(v33) = *a2;
    LODWORD(v19) = *(a2 + 1);
    v35 = v33;
    v36 = 1.0 - v32;
    v37 = (v34 + (1.0 - v32) * v35 + 0.5);
    LODWORD(v38) = (v32 * *&v25 + (1.0 - v32) * v19 + 0.5);
    v39 = *(a2 + 2);
    v40 = 0x7FFFFFFF;
    if (v39 == 0x7FFFFFFF)
    {
      goto LABEL_36;
    }

    v41 = a3[2];
    if (v41 == 0x7FFFFFFF)
    {
      goto LABEL_36;
    }

    v42 = v32 * v41;
    if (v42 >= 0.0)
    {
      if (v42 >= 4.50359963e15)
      {
        goto LABEL_29;
      }

      v43 = (v42 + v42) + 1;
    }

    else
    {
      if (v42 <= -4.50359963e15)
      {
        goto LABEL_29;
      }

      v43 = (v42 + v42) - 1 + (((v42 + v42) - 1) >> 63);
    }

    v42 = (v43 >> 1);
LABEL_29:
    v44 = v36 * v39;
    if (v44 >= 0.0)
    {
      if (v44 < 4.50359963e15)
      {
        v45 = (v44 + v44) + 1;
        goto LABEL_34;
      }
    }

    else if (v44 > -4.50359963e15)
    {
      v45 = (v44 + v44) - 1 + (((v44 + v44) - 1) >> 63);
LABEL_34:
      v44 = (v45 >> 1);
    }

    v40 = v44 + v42;
LABEL_36:
    if (v38 >= 0xFFFFFFFE)
    {
      v38 = 4294967294;
    }

    else
    {
      v38 = v38;
    }

    v46 = v37 | (v38 << 32);
    v47 = a1[1];
    v48 = *(v47 + 1);
    v49 = *(v47 + 2);
    if (v48 >= v49)
    {
      v51 = *v47;
      v52 = 0xAAAAAAAAAAAAAAABLL * ((v48 - *v47) >> 2);
      v53 = v52 + 1;
      if (v52 + 1 > 0x1555555555555555)
      {
        goto LABEL_79;
      }

      v54 = 0xAAAAAAAAAAAAAAABLL * ((v49 - v51) >> 2);
      if (2 * v54 > v53)
      {
        v53 = 2 * v54;
      }

      if (v54 >= 0xAAAAAAAAAAAAAAALL)
      {
        v55 = 0x1555555555555555;
      }

      else
      {
        v55 = v53;
      }

      if (v55)
      {
        if (v55 <= 0x1555555555555555)
        {
          operator new();
        }

        goto LABEL_80;
      }

      v56 = 4 * ((v48 - *v47) >> 2);
      *v56 = v46;
      *(v56 + 8) = v40;
      v50 = 12 * v52 + 12;
      v57 = 12 * v52 - (v48 - v51);
      memcpy((v56 - (v48 - v51)), v51, v48 - v51);
      *v47 = v57;
      *(v47 + 1) = v50;
      *(v47 + 2) = 0;
      if (v51)
      {
        operator delete(v51);
      }
    }

    else
    {
      *v48 = v46;
      *(v48 + 8) = v40;
      v50 = v48 + 12;
    }

    *(v47 + 1) = v50;
    v58 = a1[1];
    v59 = *(v58 + 4);
    v60 = *(v58 + 5);
    if (v59 >= v60)
    {
      v62 = *(v58 + 3);
      v63 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v62) >> 2) + 1;
      if (v63 > 0x1555555555555555)
      {
        goto LABEL_79;
      }

      v64 = 0xAAAAAAAAAAAAAAABLL * ((v60 - v62) >> 2);
      if (2 * v64 > v63)
      {
        v63 = 2 * v64;
      }

      if (v64 >= 0xAAAAAAAAAAAAAAALL)
      {
        v65 = 0x1555555555555555;
      }

      else
      {
        v65 = v63;
      }

      if (v65)
      {
        if (v65 <= 0x1555555555555555)
        {
          operator new();
        }

        goto LABEL_80;
      }

      v66 = 4 * ((v59 - v62) >> 2);
      *v66 = v46;
      *(v66 + 8) = v40;
      v61 = v66 + 12;
      v67 = (v66 - (v59 - v62));
      memcpy(v67, v62, v59 - v62);
      *(v58 + 3) = v67;
      *(v58 + 4) = v61;
      *(v58 + 5) = 0;
      if (v62)
      {
        operator delete(v62);
      }
    }

    else
    {
      *v59 = v46;
      *(v59 + 8) = v40;
      v61 = v59 + 12;
    }

    *(v58 + 4) = v61;
    **a1 = 1;
    *a1[3] = v21 + *a1[3];
    v27 = a1[1];
    v28 = *(v27 + 4);
    v29 = *(v27 + 5);
    if (v28 < v29)
    {
      goto LABEL_18;
    }

LABEL_66:
    v68 = *(v27 + 3);
    v69 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v68) >> 2) + 1;
    if (v69 <= 0x1555555555555555)
    {
      v70 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v68) >> 2);
      if (2 * v70 > v69)
      {
        v69 = 2 * v70;
      }

      if (v70 >= 0xAAAAAAAAAAAAAAALL)
      {
        v71 = 0x1555555555555555;
      }

      else
      {
        v71 = v69;
      }

      if (!v71)
      {
        v72 = 4 * ((v28 - v68) >> 2);
        *v72 = *a3;
        *(v72 + 8) = a3[2];
        v31 = v72 + 12;
        v73 = (v72 - (v28 - v68));
        memcpy(v73, v68, v28 - v68);
        *(v27 + 3) = v73;
        *(v27 + 4) = v31;
        *(v27 + 5) = 0;
        if (v68)
        {
          operator delete(v68);
        }

        goto LABEL_77;
      }

      if (v71 <= 0x1555555555555555)
      {
        operator new();
      }

LABEL_80:
      sub_1808();
    }

LABEL_79:
    sub_1794();
  }

  v26 = **a1;
  *v22 = v24;
  if ((v26 & 1) == 0)
  {
    return;
  }

LABEL_17:
  v27 = a1[1];
  v28 = *(v27 + 4);
  v29 = *(v27 + 5);
  if (v28 >= v29)
  {
    goto LABEL_66;
  }

LABEL_18:
  v30 = *a3;
  *(v28 + 8) = a3[2];
  *v28 = v30;
  v31 = v28 + 12;
LABEL_77:
  *(v27 + 4) = v31;
}

uint64_t *sub_31CD8(uint64_t *result, _OWORD *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v6 = *v2;
    v7 = v3 - *v2;
    v8 = v7 >> 5;
    v9 = (v7 >> 5) + 1;
    if (v9 >> 59)
    {
      sub_1794();
    }

    v10 = v4 - v6;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 59))
      {
        operator new();
      }

      sub_1808();
    }

    v12 = result;
    v13 = (32 * v8);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v15 = 32 * v8 + 32;
    memcpy(0, v6, v7);
    *v2 = 0;
    *(v2 + 8) = v15;
    *(v2 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }

    result = v12;
    *(v2 + 8) = v15;
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    *(v2 + 8) = v3 + 2;
  }

  return result;
}

char *sub_31E04(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 5)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v6 >> 4;
      if (v6 >> 4 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFE0;
      v11 = 0x7FFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 59))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 5)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 7);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 7);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 7);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

char *sub_31F64(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t sub_320C0(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  *result = -1;
  *(result + 8) = -1;
  v3 = *a2;
  if (*a2 != -1 || a2[1] != -1)
  {
    v5 = *a3;
    if (*a3 != -1 || a3[1] != -1)
    {
      if (v3 >= v5)
      {
        v7 = *a3;
      }

      else
      {
        v7 = *a2;
      }

      if (v3 <= v5)
      {
        v3 = *a3;
      }

      *result = v7;
      *(result + 4) = v3;
      v8 = a2[1];
      v9 = a3[1];
      if (v8 >= v9)
      {
        v10 = a3[1];
      }

      else
      {
        v10 = a2[1];
      }

      if (v8 <= v9)
      {
        v8 = a3[1];
      }

      *(result + 8) = v10;
      *(result + 12) = v8;
    }
  }

  return result;
}

__n128 sub_32114(__n128 *a1, __n128 *a2)
{
  if (a2->n128_u32[3] != -1)
  {
    v2 = a1->n128_u32[3];
    if (v2 == -1)
    {
      result = *a2;
      *a1 = *a2;
    }

    else
    {
      v3 = a2->n128_u32[0];
      v4 = a1->n128_u32[1];
      if (a2->n128_u32[0] >= a1->n128_u32[0])
      {
        v3 = a1->n128_u32[0];
      }

      a1->n128_u32[0] = v3;
      v5 = a2->n128_u32[1];
      if (v4 > v5)
      {
        v5 = v4;
      }

      a1->n128_u32[1] = v5;
      v6 = a2->n128_u32[2];
      if (v6 >= a1->n128_u32[2])
      {
        v6 = a1->n128_u32[2];
      }

      a1->n128_u32[2] = v6;
      if (v2 <= a2->n128_u32[3])
      {
        v2 = a2->n128_u32[3];
      }

      a1->n128_u32[3] = v2;
    }
  }

  return result;
}

void sub_32184(uint64_t a1, float32x2_t *a2)
{
  v2 = *(a1 + 12);
  if (v2 == -1)
  {
    v7.val[0] = *a2;
    v7.val[1] = *a2;
    vst2_f32(a1, v7);
  }

  else
  {
    v3 = a2->u32[1];
    if (v3 != -1)
    {
      v4 = a2->i32[0];
      v5 = *a1;
      if (a2->i32[0] < *a1)
      {
        v5 = a2->f32[0];
      }

      if (*(a1 + 4) > v4)
      {
        v4 = *(a1 + 4);
      }

      *a1 = v5;
      *(a1 + 4) = v4;
      v6 = *(a1 + 8);
      if (v3 < v6)
      {
        v6 = v3;
      }

      if (v2 <= v3)
      {
        v2 = v3;
      }

      *(a1 + 8) = v6;
      *(a1 + 12) = v2;
    }
  }
}

uint64_t sub_321E4(uint64_t result, float32x2_t **a2)
{
  *result = -1;
  *(result + 8) = -1;
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = -1;
    v5 = -1;
    v6 = -1;
    v7 = -1;
    do
    {
      if (v7 == -1)
      {
        v9.val[0] = *v2;
        v9.val[1] = *v2;
        vst2_f32(result, v9);
        v4 = v9.val[0].u32[1];
        v5 = v9.val[0].i32[0];
        v6 = v9.val[0].i32[0];
        v7 = v9.val[0].u32[1];
      }

      else
      {
        v8 = v2->u32[1];
        if (v8 != -1)
        {
          if (v2->i32[0] < v6)
          {
            v6 = v2->i32[0];
          }

          if (v5 <= v2->i32[0])
          {
            v5 = v2->i32[0];
          }

          *result = v6;
          *(result + 4) = v5;
          if (v8 < v4)
          {
            v4 = v8;
          }

          if (v7 <= v8)
          {
            v7 = v8;
          }

          *(result + 8) = v4;
          *(result + 12) = v7;
        }
      }

      v2 = (v2 + 12);
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_3227C(uint64_t result, float32x2_t ***a2)
{
  *result = -1;
  *(result + 8) = -1;
  v2 = **a2;
  v3 = (*a2)[1];
  if (v2 != v3)
  {
    v4 = -1;
    v5 = -1;
    v6 = -1;
    v7 = -1;
    do
    {
      if (v7 == -1)
      {
        v9.val[0] = *v2;
        v9.val[1] = *v2;
        vst2_f32(result, v9);
        v4 = v9.val[0].u32[1];
        v5 = v9.val[0].i32[0];
        v6 = v9.val[0].i32[0];
        v7 = v9.val[0].u32[1];
      }

      else
      {
        v8 = v2->u32[1];
        if (v8 != -1)
        {
          if (v2->i32[0] < v6)
          {
            v6 = v2->i32[0];
          }

          if (v5 <= v2->i32[0])
          {
            v5 = v2->i32[0];
          }

          *result = v6;
          *(result + 4) = v5;
          if (v8 < v4)
          {
            v4 = v8;
          }

          if (v7 <= v8)
          {
            v7 = v8;
          }

          *(result + 8) = v4;
          *(result + 12) = v7;
        }
      }

      v2 = (v2 + 12);
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_32318(uint64_t result, unsigned int ****a2)
{
  *result = -1;
  *(result + 8) = -1;
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = -1;
    v5 = -1;
    v6 = -1;
    v7 = -1;
    do
    {
      v9 = **v2;
      v8 = (*v2)[1];
      if (v9 != v8)
      {
        v10 = -1;
        v11 = -1;
        v12 = -1;
        v13 = -1;
        do
        {
          if (v13 == -1)
          {
            v10 = *v9;
            v12 = v9[1];
            v11 = *v9;
            v13 = v12;
          }

          else
          {
            v14 = v9[1];
            if (v14 != -1)
            {
              if (*v9 < v10)
              {
                v10 = *v9;
              }

              if (v11 <= *v9)
              {
                v11 = *v9;
              }

              if (v14 < v12)
              {
                v12 = v9[1];
              }

              if (v13 <= v14)
              {
                v13 = v9[1];
              }
            }
          }

          v9 += 3;
        }

        while (v9 != v8);
        if (v13 != -1)
        {
          if (v10 < v6)
          {
            v6 = v10;
          }

          if (v5 <= v11)
          {
            v5 = v11;
          }

          if (v12 < v4)
          {
            v4 = v12;
          }

          if (v7 <= v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = v7;
          }

          if (v7 == -1)
          {
            v6 = v10;
            v5 = v11;
            v4 = v12;
          }

          *result = v6;
          *(result + 4) = v5;
          if (v7 == -1)
          {
            v7 = v13;
          }

          else
          {
            v7 = v15;
          }

          *(result + 8) = v4;
          *(result + 12) = v7;
        }
      }

      v2 += 3;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_3241C(int8x16_t *a1)
{
  v1 = a1->u64[1];
  if (a1[1].i8[7] >= 0)
  {
    v2 = a1[1].u8[7];
  }

  else
  {
    a1 = a1->i64[0];
    v2 = v1;
  }

  sub_22174(a1, v2, 0x2Cu, &__p);
}

void sub_3282C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void **a27)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1A104(&a27);
  _Unwind_Resume(a1);
}

void sub_328B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_328C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t *a15, size_t a16, int a17, __int16 a18, char a19, unsigned __int8 a20, void **a21)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    sub_30F54(" cannot be converted to double values.", &a12, &a15);
    if ((a20 & 0x80u) == 0)
    {
      v23 = &a15;
    }

    else
    {
      v23 = a15;
    }

    if ((a20 & 0x80u) == 0)
    {
      v24 = a20;
    }

    else
    {
      v24 = a16;
    }

    v25 = sub_2D390(exception, v23, v24);
  }

  sub_1A104(&a21);
  _Unwind_Resume(a1);
}

void sub_32958(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  __cxa_end_catch();
  JUMPOUT(0x329A8);
}

BOOL sub_329CC(_DWORD *a1)
{
  if (*a1 != -1)
  {
    return 0;
  }

  if (a1[1] != -1)
  {
    return 0;
  }

  if (a1[2] == -1)
  {
    return a1[3] == -1;
  }

  return 0;
}

uint64_t sub_32A18(_DWORD *a1, _DWORD *a2)
{
  if (*a2 >= *a1)
  {
    v2 = *a2 <= a1[1];
    v3 = a2[1];
    if (v3 >= a1[2])
    {
      return v2 & (v3 <= a1[3]);
    }
  }

  else
  {
    v2 = 0;
    v3 = a2[1];
    if (v3 >= a1[2])
    {
      return v2 & (v3 <= a1[3]);
    }
  }

  return 0;
}

BOOL sub_32A70(_DWORD *a1, _DWORD *a2)
{
  if (*a1 > *a2)
  {
    return 0;
  }

  if (a1[1] < a2[1])
  {
    return 0;
  }

  if (a1[2] <= a2[2])
  {
    return a1[3] >= a2[3];
  }

  return 0;
}

BOOL sub_32ACC(_DWORD *a1, _DWORD *a2)
{
  if (*a1 > a2[1])
  {
    return 0;
  }

  if (a1[1] < *a2)
  {
    return 0;
  }

  if (a1[3] >= a2[2])
  {
    return a1[2] <= a2[3];
  }

  return 0;
}

void sub_32B28(uint32x2_t *a1, uint64_t a2)
{
  v4 = a1[1].u32[0];
  if (v4 >= 0xFFFFFFFE)
  {
    v4 = -2;
  }

  if (a1[1].i32[1] >= 0xFFFFFFFE)
  {
    v5 = -2;
  }

  else
  {
    v5 = a1[1].u32[1];
  }

  v6 = exp(3.14159265 - v4 * 6.28318531 / 4294967300.0);
  v7 = atan((v6 - 1.0 / v6) * 0.5) * 57.2957795;
  v8 = exp(3.14159265 - v5 * 6.28318531 / 4294967300.0);
  v9 = atan((v8 - 1.0 / v8) * 0.5) * 57.2957795;
  v10 = a2 / 100.0;
  v11 = vdupq_n_s64(0x4066800000000000uLL);
  v12 = v10 / 6372797.56 * 180.0 / 3.14159265;
  v13 = v12 + v7;
  if (v12 + v7 > 85.0511288)
  {
    v13 = 85.0511288;
  }

  v14 = &qword_2266230;
  v15 = vld1q_dup_f64(v14);
  v16.f64[1] = v15.f64[1];
  v16.f64[0] = v13;
  v15.f64[1] = v9 - v12;
  __x = vdivq_f64(vmulq_f64(vminnmq_f64(vbslq_s8(vcgtq_f64(v16, v15), v16, v15), vdupq_n_s64(0x40554345B1A549D6uLL)), vdupq_n_s64(0x400921FB54442D18uLL)), v11);
  v35 = sin(__x.f64[1]);
  v17.f64[0] = sin(__x.f64[0]);
  v17.f64[1] = v35;
  __asm { FMOV            V1.2D, #1.0 }

  __xa = vdivq_f64(vaddq_f64(v17, _Q1), vsubq_f64(_Q1, v17));
  v36 = log(__xa.f64[1]);
  v23.f64[0] = log(__xa.f64[0]);
  v23.f64[1] = v36;
  __asm { FMOV            V1.2D, #0.5 }

  a1[1] = vmin_u32(vmovn_s64(vcvtq_u64_f64(vmulq_f64(vaddq_f64(vdivq_f64(v23, vdupq_n_s64(0xC02921FB54442D18)), _Q1), vdupq_n_s64(0x41EFFFFFFFE00000uLL)))), 0x100000001);
  if (fabs(v7) <= fabs(v9))
  {
    v25 = v9;
  }

  else
  {
    v25 = v7;
  }

  v26 = cos(v25 / 180.0 * 3.14159265);
  HIDWORD(v28) = 1065555935;
  v29 = v10 / (0.00932288077 / (1.0 / v26));
  LODWORD(v28) = a1->i32[0];
  v30 = v28;
  v31 = (v30 - v29);
  if (v29 > v30)
  {
    v31 = 0;
  }

  LODWORD(v27) = a1->i32[1];
  v32 = (v29 + v27);
  if (4294967300.0 - v29 < v27)
  {
    v32 = -1;
  }

  a1->i32[0] = v31;
  a1->i32[1] = v32;
}

unint64_t sub_32DA0(uint64_t a1)
{
  LODWORD(v1) = *(a1 + 8);
  if (v1 >= 0xFFFFFFFE)
  {
    v1 = 4294967294;
  }

  else
  {
    v1 = v1;
  }

  return *(a1 + 4) | (v1 << 32);
}

unint64_t sub_32DBC(unsigned int *a1)
{
  LODWORD(v1) = a1[3];
  if (v1 >= 0xFFFFFFFE)
  {
    v1 = 4294967294;
  }

  else
  {
    v1 = v1;
  }

  return *a1 | (v1 << 32);
}

void sub_32DDC(unsigned int *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *a1;
  v6 = *a2 >= *a1 && v4 <= a1[1];
  v7 = a2[1];
  v9 = a1 + 2;
  v8 = a1[2];
  v11 = a1 + 3;
  v10 = a1[3];
  if (v7 >= v8 && v6 && v7 <= v10)
  {
    v24 = *a2;
    *a3 = 0;
    *(a3 + 8) = v24;
    v25 = a2[2];
    goto LABEL_114;
  }

  v14 = a1[1];
  if (v8 >= 0xFFFFFFFE)
  {
    v15 = -2;
  }

  else
  {
    v15 = a1[2];
  }

  if (v10 >= 0xFFFFFFFE)
  {
    v16 = 4294967294;
  }

  else
  {
    v16 = v10;
  }

  v170 = v15;
  if (v5 < v4 && v4 < v14)
  {
    if (v7 < v8)
    {
      v37 = exp(3.14159265 - v7 * 6.28318531 / 4294967300.0);
      v38 = atan((v37 - 1.0 / v37) * 0.5) * 57.2957795;
      v39 = exp(3.14159265 - v15 * 6.28318531 / 4294967300.0);
      v21 = 0;
      v40 = (v38 - atan((v39 - 1.0 / v39) * 0.5) * 57.2957795) / 360.0 * 40041468.0;
      v173 = 1;
      v172 = 0xFFFFFFFFLL;
      v22 = 0x7FF0000000000000;
      v171 = -1;
      if (v40 == INFINITY)
      {
        goto LABEL_40;
      }

      v21 = 0;
      v173 = 1;
      v22 = *&v40;
      v23 = v170;
    }

    else
    {
      v17 = exp(3.14159265 - v16 * 6.28318531 / 4294967300.0);
      v18 = atan((v17 - 1.0 / v17) * 0.5) * 57.2957795;
      v19 = exp(3.14159265 - v7 * 6.28318531 / 4294967300.0);
      v173 = 0;
      v20 = (v18 - atan((v19 - 1.0 / v19) * 0.5) * 57.2957795) / 360.0 * 40041468.0;
      v21 = 1;
      v172 = 0xFFFFFFFFLL;
      v22 = 0x7FF0000000000000;
      v171 = -1;
      if (v20 == INFINITY)
      {
        goto LABEL_40;
      }

      v173 = 0;
      v22 = *&v20;
      v23 = v16;
    }

    v172 = v23;
    goto LABEL_39;
  }

  v173 = 1;
  v172 = 0xFFFFFFFFLL;
  v22 = 0x7FF0000000000000;
  if (v5 < (v4 ^ 0x80000000))
  {
    v171 = -1;
    v21 = 1;
    if ((v4 ^ 0x80000000) >= v14 || ((v26 = exp(3.14159265 - v7 * 6.28318531 / 4294967300.0), v27 = atan((v26 - 1.0 / v26) * 0.5) * 57.2957795, v28 = exp(3.14159265 - v170 * 6.28318531 / 4294967300.0), v29 = 90.0 - v27 + 90.0 - atan((v28 - 1.0 / v28) * 0.5) * 57.2957795, v30 = v27 + 90.0, v31 = exp(3.14159265 - v16 * 6.28318531 / 4294967300.0), v32 = atan((v31 - 1.0 / v31) * 0.5) * 57.2957795 + 90.0, v33 = v30 + v32, v30 + v32 >= v29) ? (v34 = v29) : (v34 = v30 + v32), v35 = v34 / 360.0 * 40041468.0, v173 = 1, v172 = 0xFFFFFFFFLL, v22 = 0x7FF0000000000000, v171 = -1, v35 == INFINITY))
    {
LABEL_40:
      v41 = v5 - 0x40000000;
      v42 = v4 > v5;
      if (v5 >> 30)
      {
        goto LABEL_41;
      }

LABEL_45:
      if (!v42)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    if (v29 >= v33)
    {
      v36 = v11;
    }

    else
    {
      v36 = v9;
    }

    LODWORD(v36) = *v36;
    if (v36 >= 0xFFFFFFFE)
    {
      v36 = 4294967294;
    }

    else
    {
      v36 = v36;
    }

    v172 = v36;
    v173 = 1;
    v22 = *&v35;
LABEL_39:
    v171 = v4;
    goto LABEL_40;
  }

  v171 = -1;
  v21 = 1;
  v41 = v5 - 0x40000000;
  v42 = v4 > v5;
  if (!(v5 >> 30))
  {
    goto LABEL_45;
  }

LABEL_41:
  if (v42)
  {
    goto LABEL_50;
  }

LABEL_47:
  if (v41 > v4)
  {
LABEL_50:
    v43 = v173;
    v44 = v21;
    goto LABEL_51;
  }

LABEL_48:
  if (v41 == v4 && v7 == 0x7FFFFFFF)
  {
    goto LABEL_50;
  }

  v177 = *&v22;
  v53 = (v4 - v41) * 0.00000000146291808;
  v54 = atan(7.31459338e-10) * 57.2957795 * 3.14159265 / 180.0;
  v55 = exp(v7 * -6.28318531 / 4294967300.0 + 3.14159265);
  v165 = atan((v55 + -1.0 / v55) * 0.5) * 57.2957795;
  v56 = sin(v53);
  v57 = __sincos_stret(v165 * 3.14159265 / 180.0);
  v58 = __sincos_stret(v54);
  v59 = tan(v53);
    ;
  }

    ;
  }

  v61 = 90.0 - i;
  v62 = exp(v16 * -6.28318531 / 4294967300.0 + 3.14159265);
  if (v61 >= atan((v62 + -1.0 / v62) * 0.5) * 57.2957795)
  {
    v74 = exp(v170 * -6.28318531 / 4294967300.0 + 3.14159265);
    if (v61 <= atan((v74 + -1.0 / v74) * 0.5) * 57.2957795)
    {
      v76 = sin(fmin(fmax(v61, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      v77 = ((log((v76 + 1.0) / (1.0 - v76)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v77 >= 0xFFFFFFFE)
      {
        v78 = 4294967294;
      }

      else
      {
        v78 = v77;
      }

      v79 = exp(v78 * -6.28318531 / 4294967300.0 + 3.14159265);
      v80 = atan((v79 - 1.0 / v79) * 0.5) * 57.2957795 * 0.0174532925;
      v81.f64[0] = v4;
      v81.f64[1] = v5;
      v82 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(v81, vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
      v169 = vsubq_f64(v82, vdupq_laneq_s64(v82, 1)).f64[0];
      v83 = sin((v165 * 0.0174532925 - v80) * 0.5);
      v84 = v83 * v83;
      v85 = cos(v165 * 0.0174532925);
      v86 = v85 * cos(v80);
      v87 = sin(0.5 * v169);
      v88 = atan2(sqrt(v87 * v87 * v86 + v84), sqrt(1.0 - (v87 * v87 * v86 + v84)));
      v89 = (v88 + v88) * 6372797.56;
      v22 = *&v177;
      v43 = 0;
      v44 = 0;
      if (v177 > v89)
      {
        v22 = *&v89;
        v172 = v78;
        v171 = v5;
      }
    }

    else
    {
      v43 = 0;
      v44 = v21;
      v22 = *&v177;
    }
  }

  else
  {
    v44 = 0;
    v43 = v173;
    v22 = *&v177;
  }

LABEL_51:
  v45 = v14 + 0x40000000;
  v168 = v16;
  if (v14 >> 30 == 3)
  {
    if (v14 <= v4)
    {
      goto LABEL_56;
    }
  }

  else if (v14 > v4)
  {
    goto LABEL_58;
  }

  if (v4 > v45)
  {
    goto LABEL_58;
  }

LABEL_56:
  if (v7 == 0x7FFFFFFF && v45 == v4)
  {
LABEL_58:
    v46 = v5 + ((v14 - v5) >> 1);
    v47 = v46 ^ 0x80000000;
    if (v46 < (v46 ^ 0x80000000))
    {
      goto LABEL_59;
    }

LABEL_94:
    v49 = v46 <= v4 || v4 <= v47;
    v50 = !v49;
    v51 = v44 & !v49;
    if ((v21 & v49) != 1)
    {
      goto LABEL_66;
    }

LABEL_101:
    v52 = v7;
    v105 = 3.14159265 - v7 * 6.28318531 / 4294967300.0;
    v179 = *&v22;
    v106 = v43;
    v107 = exp(v105);
    v108 = atan((v107 - 1.0 / v107) * 0.5) * 57.2957795 * 0.0174532925;
    v109.i64[0] = v4;
    v109.i64[1] = v14;
    v110 = exp(3.14159265 - v170 * 6.28318531 / 4294967300.0);
    v111 = atan((v110 - 1.0 / v110) * 0.5) * 57.2957795 * 0.0174532925;
    v112 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v109), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v166 = vsubq_f64(v112, vdupq_laneq_s64(v112, 1)).f64[0];
    v113 = sin((v108 - v111) * 0.5);
    v114 = v113 * v113;
    v115 = cos(v108);
    v116 = v115 * cos(v111);
    v117 = sin(0.5 * v166);
    v118 = atan2(sqrt(v114 + v116 * (v117 * v117)), sqrt(1.0 - (v114 + v116 * (v117 * v117))));
    v43 = v106;
    v22 = *&v179;
    v119 = (v118 + v118) * 6372797.56;
    if (v179 > v119)
    {
      v22 = *&v119;
      v172 = v170;
      v171 = v14;
    }

    goto LABEL_103;
  }

  v63 = v43;
  v178 = *&v22;
  v64 = (v4 - v45) * 0.00000000146291808;
  v65 = atan(7.31459338e-10) * 57.2957795 * 3.14159265 / 180.0;
  v66 = exp(v7 * -6.28318531 / 4294967300.0 + 3.14159265);
  v164 = atan((v66 + -1.0 / v66) * 0.5) * 57.2957795;
  v67 = sin(v64);
  v68 = __sincos_stret(v164 * 3.14159265 / 180.0);
  v69 = __sincos_stret(v65);
  v70 = tan(v64);
    ;
  }

    ;
  }

  v72 = j + 90.0;
  v73 = exp(v16 * -6.28318531 / 4294967300.0 + 3.14159265);
  if (v72 >= atan((v73 + -1.0 / v73) * 0.5) * 57.2957795)
  {
    v75 = exp(v170 * -6.28318531 / 4294967300.0 + 3.14159265);
    if (v72 <= atan((v75 + -1.0 / v75) * 0.5) * 57.2957795)
    {
      v90 = sin(fmin(fmax(v72, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      v91 = ((log((v90 + 1.0) / (1.0 - v90)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v91 >= 0xFFFFFFFE)
      {
        v92 = 4294967294;
      }

      else
      {
        v92 = v91;
      }

      v93 = exp(v92 * -6.28318531 / 4294967300.0 + 3.14159265);
      v94 = atan((v93 - 1.0 / v93) * 0.5) * 57.2957795 * 0.0174532925;
      v95.f64[0] = v4;
      v95.f64[1] = v14;
      v96 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(v95, vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
      v174 = vsubq_f64(v96, vdupq_laneq_s64(v96, 1)).f64[0];
      v97 = sin((v164 * 0.0174532925 - v94) * 0.5);
      v98 = v97 * v97;
      v99 = cos(v164 * 0.0174532925);
      v100 = v99 * cos(v94);
      v101 = sin(0.5 * v174);
      v102 = atan2(sqrt(v101 * v101 * v100 + v98), sqrt(1.0 - (v101 * v101 * v100 + v98)));
      v103 = (v102 + v102) * 6372797.56;
      v22 = *&v178;
      v173 = 0;
      v21 = 0;
      if (v178 > v103)
      {
        v22 = *&v103;
        v172 = v92;
        v171 = v14;
      }
    }

    else
    {
      v173 = 0;
      v22 = *&v178;
    }
  }

  else
  {
    v21 = 0;
    v22 = *&v178;
  }

  v43 = v63;
  v46 = v5 + ((v14 - v5) >> 1);
  v47 = v46 ^ 0x80000000;
  if (v46 >= (v46 ^ 0x80000000))
  {
    goto LABEL_94;
  }

LABEL_59:
  v49 = v46 <= v4 && v4 <= v47;
  v50 = !v49;
  v51 = v44 & !v49;
  if ((v21 & v49) == 1)
  {
    goto LABEL_101;
  }

LABEL_66:
  v52 = v7;
LABEL_103:
  v120 = v43 & v50;
  if (v51)
  {
    v180 = *&v22;
    v121 = exp(3.14159265 - v52 * 6.28318531 / 4294967300.0);
    v122 = atan((v121 - 1.0 / v121) * 0.5) * 57.2957795 * 0.0174532925;
    v123.i64[0] = v4;
    v123.i64[1] = v5;
    v124 = exp(3.14159265 - v170 * 6.28318531 / 4294967300.0);
    v125 = atan((v124 - 1.0 / v124) * 0.5) * 57.2957795 * 0.0174532925;
    v126 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v123), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v167 = vsubq_f64(v126, vdupq_laneq_s64(v126, 1)).f64[0];
    v127 = sin((v122 - v125) * 0.5);
    v128 = v127 * v127;
    v129 = cos(v122);
    v130 = v129 * cos(v125);
    v131 = sin(0.5 * v167);
    v132 = atan2(sqrt(v131 * v131 * v130 + v128), sqrt(1.0 - (v131 * v131 * v130 + v128)));
    v22 = *&v180;
    v133 = (v132 + v132) * 6372797.56;
    if (v180 > v133)
    {
      v22 = *&v133;
      v172 = v170;
      v171 = v5;
    }
  }

  v134 = v173 & v49;
  if (v120)
  {
    v181 = *&v22;
    v135 = exp(3.14159265 - v52 * 6.28318531 / 4294967300.0);
    v136 = atan((v135 - 1.0 / v135) * 0.5) * 57.2957795 * 0.0174532925;
    v137.i64[0] = v4;
    v137.i64[1] = v5;
    v138 = v168;
    v139 = exp(3.14159265 - v168 * 6.28318531 / 4294967300.0);
    v140 = atan((v139 - 1.0 / v139) * 0.5) * 57.2957795 * 0.0174532925;
    v141 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v137), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v175 = vsubq_f64(v141, vdupq_laneq_s64(v141, 1)).f64[0];
    v142 = sin((v136 - v140) * 0.5);
    v143 = v142 * v142;
    v144 = cos(v136);
    v145 = v144 * cos(v140);
    v146 = sin(0.5 * v175);
    v147 = atan2(sqrt(v146 * v146 * v145 + v143), sqrt(1.0 - (v146 * v146 * v145 + v143)));
    v22 = *&v181;
    v148 = (v147 + v147) * 6372797.56;
    v149 = v172;
    v150 = v171;
    if (v181 > v148)
    {
      v22 = *&v148;
      v149 = v168;
      v150 = v5;
    }
  }

  else
  {
    v138 = v168;
    v149 = v172;
    v150 = v171;
  }

  if (v134)
  {
    v182 = *&v22;
    v151 = exp(3.14159265 - v52 * 6.28318531 / 4294967300.0);
    v152 = atan((v151 - 1.0 / v151) * 0.5) * 57.2957795 * 0.0174532925;
    v153.i64[0] = v4;
    v153.i64[1] = v14;
    v154 = exp(3.14159265 - v138 * 6.28318531 / 4294967300.0);
    v155 = atan((v154 - 1.0 / v154) * 0.5) * 57.2957795 * 0.0174532925;
    v156 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v153), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v176 = vsubq_f64(v156, vdupq_laneq_s64(v156, 1)).f64[0];
    v157 = sin((v152 - v155) * 0.5);
    v158 = v157 * v157;
    v159 = cos(v152);
    v160 = v159 * cos(v155);
    v161 = sin(0.5 * v176);
    v162 = atan2(sqrt(v161 * v161 * v160 + v158), sqrt(1.0 - (v161 * v161 * v160 + v158)));
    v22 = *&v182;
    v163 = (v162 + v162) * 6372797.56;
    if (v182 > v163)
    {
      v22 = *&v163;
      v149 = v138;
      v150 = v14;
    }
  }

  *a3 = v22;
  *(a3 + 8) = v150 | (v149 << 32);
  v25 = 0x7FFFFFFF;
LABEL_114:
  *(a3 + 16) = v25;
}

double sub_340A8(unsigned int *a1, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = *a2;
    v4 = a2[1];
    LODWORD(v12[0]) = v3;
    v5 = a1 + 1;
    if (a1[1] >= v3)
    {
      v5 = v12;
    }

    if (v3 >= *a1)
    {
      v6 = v5;
    }

    else
    {
      v6 = a1;
    }

    v7 = *v6;
    v13 = v4;
    v9 = a1[3];
    v8 = a1 + 3;
    v10 = &v13;
    if (v9 < v4)
    {
      v10 = v8;
    }

    if (v4 < *(v8 - 1))
    {
      v10 = (v8 - 1);
    }

    LODWORD(v10) = *v10;
    if (v10 >= 0xFFFFFFFE)
    {
      v10 = 4294967294;
    }

    else
    {
      v10 = v10;
    }

    return sqrt(((v3 - v7) * (v3 - v7) + (v4 - v10) * (v4 - v10))) / 100.0;
  }

  else
  {
    sub_32DDC(a1, a2, v12);
    return *v12;
  }
}

long double sub_34164(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFE)
  {
    v2 = -2;
  }

  v3 = exp(3.14159265 - v2 * 6.28318531 / 4294967300.0);
  v4 = atan((v3 - 1.0 / v3) * 0.5) * 57.2957795;
  v5 = *(a1 + 12);
  if (v5 >= 0xFFFFFFFE)
  {
    v5 = -2;
  }

  v6 = exp(3.14159265 - v5 * 6.28318531 / 4294967300.0);
  return (v4 - atan((v6 - 1.0 / v6) * 0.5) * 57.2957795) / 360.0 * 40041468.0;
}

unint64_t sub_3425C(unsigned int *a1)
{
  LODWORD(v1) = a1[2];
  if (v1 >= 0xFFFFFFFE)
  {
    v1 = 4294967294;
  }

  else
  {
    v1 = v1;
  }

  return *a1 | (v1 << 32);
}

unint64_t sub_3427C(uint64_t a1)
{
  LODWORD(v1) = *(a1 + 12);
  if (v1 >= 0xFFFFFFFE)
  {
    v1 = 4294967294;
  }

  else
  {
    v1 = v1;
  }

  return *(a1 + 4) | (v1 << 32);
}

uint64_t sub_3429C(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (v2 >= 0xFFFFFFFE)
  {
    v2 = -2;
  }

  v3 = exp(3.14159265 - v2 * 6.28318531 / 4294967300.0);
  v4 = atan((v3 - 1.0 / v3) * 0.5);
  v5 = *(a1 + 8);
  if (v5 >= 0xFFFFFFFE)
  {
    v5 = -2;
  }

  v6 = exp(3.14159265 - v5 * 6.28318531 / 4294967300.0);
  v7 = atan((v6 - 1.0 / v6) * 0.5);
  v8.i64[0] = *a1;
  v8.i64[1] = HIDWORD(*a1);
  v9 = vaddvq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v8), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000))) * 0.5;
  result = -1;
  if (v9 <= 180.0 && v9 >= -180.0)
  {
    v11 = (v4 * 57.2957795 + v7 * 57.2957795) * 0.5;
    if (fabs(v11) <= 85.0511288)
    {
      v12 = sin(fmin(fmax(v11, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v13) = ((log((v12 + 1.0) / (1.0 - v12)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v13 >= 0xFFFFFFFE)
      {
        v13 = 4294967294;
      }

      else
      {
        v13 = v13;
      }

      return ((v9 + 180.0) / 360.0 * 4294967300.0) | (v13 << 32);
    }
  }

  return result;
}

long double sub_34490(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFE)
  {
    v2 = -2;
  }

  v3 = exp(3.14159265 - v2 * 6.28318531 / 4294967300.0);
  v4 = atan((v3 - 1.0 / v3) * 0.5) * 57.2957795;
  v5 = *(a1 + 12);
  if (v5 >= 0xFFFFFFFE)
  {
    v5 = -2;
  }

  v6 = exp(3.14159265 - v5 * 6.28318531 / 4294967300.0);
  v7 = atan((v6 - 1.0 / v6) * 0.5) * 57.2957795;
  if (fabs(v4) > fabs(v7))
  {
    v7 = v4;
  }

  return 0.00932288077 / (1.0 / cos(v7 / 180.0 * 3.14159265));
}

void sub_345A0(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_351CC(a2, 1uLL);
  v4 = *a2;
  LODWORD(v5) = a1[3];
  if (v5 >= 0xFFFFFFFE)
  {
    v5 = 4294967294;
  }

  else
  {
    v5 = v5;
  }

  v6 = *a1 | (v5 << 32);
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  if (v7 >= v8)
  {
    v10 = *v4;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v4) >> 2);
    v12 = v11 + 1;
    if (v11 + 1 > 0x1555555555555555)
    {
      sub_1794();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 2);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0xAAAAAAAAAAAAAAALL)
    {
      v14 = 0x1555555555555555;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v15 = 4 * ((v7 - *v4) >> 2);
    *v15 = v6;
    *(v15 + 8) = 0x7FFFFFFF;
    v9 = 12 * v11 + 12;
    v16 = (v15 - (v7 - v10));
    memcpy(v16, v10, v7 - v10);
    *v4 = v16;
    *(v4 + 8) = v9;
    *(v4 + 16) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v7 = v6;
    *(v7 + 8) = 0x7FFFFFFF;
    v9 = v7 + 12;
  }

  *(v4 + 8) = v9;
  v17 = *a2;
  LODWORD(v18) = a1[3];
  if (v18 >= 0xFFFFFFFE)
  {
    v18 = 4294967294;
  }

  else
  {
    v18 = v18;
  }

  v19 = a1[1] | (v18 << 32);
  v20 = *(v17 + 8);
  v21 = *(v17 + 16);
  if (v20 >= v21)
  {
    v23 = *v17;
    v24 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *v17) >> 2);
    v25 = v24 + 1;
    if (v24 + 1 > 0x1555555555555555)
    {
      sub_1794();
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v23) >> 2);
    if (2 * v26 > v25)
    {
      v25 = 2 * v26;
    }

    if (v26 >= 0xAAAAAAAAAAAAAAALL)
    {
      v27 = 0x1555555555555555;
    }

    else
    {
      v27 = v25;
    }

    if (v27)
    {
      if (v27 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v28 = 4 * ((v20 - *v17) >> 2);
    *v28 = v19;
    *(v28 + 8) = 0x7FFFFFFF;
    v22 = 12 * v24 + 12;
    v29 = (v28 - (v20 - v23));
    memcpy(v29, v23, v20 - v23);
    *v17 = v29;
    *(v17 + 8) = v22;
    *(v17 + 16) = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v20 = v19;
    *(v20 + 8) = 0x7FFFFFFF;
    v22 = v20 + 12;
  }

  *(v17 + 8) = v22;
  v30 = *a2;
  LODWORD(v31) = a1[2];
  if (v31 >= 0xFFFFFFFE)
  {
    v31 = 4294967294;
  }

  else
  {
    v31 = v31;
  }

  v32 = a1[1] | (v31 << 32);
  v33 = *(v30 + 8);
  v34 = *(v30 + 16);
  if (v33 >= v34)
  {
    v36 = *v30;
    v37 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *v30) >> 2);
    v38 = v37 + 1;
    if (v37 + 1 > 0x1555555555555555)
    {
      sub_1794();
    }

    v39 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v36) >> 2);
    if (2 * v39 > v38)
    {
      v38 = 2 * v39;
    }

    if (v39 >= 0xAAAAAAAAAAAAAAALL)
    {
      v40 = 0x1555555555555555;
    }

    else
    {
      v40 = v38;
    }

    if (v40)
    {
      if (v40 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v41 = 4 * ((v33 - *v30) >> 2);
    *v41 = v32;
    *(v41 + 8) = 0x7FFFFFFF;
    v35 = 12 * v37 + 12;
    v42 = (v41 - (v33 - v36));
    memcpy(v42, v36, v33 - v36);
    *v30 = v42;
    *(v30 + 8) = v35;
    *(v30 + 16) = 0;
    if (v36)
    {
      operator delete(v36);
    }
  }

  else
  {
    *v33 = v32;
    *(v33 + 8) = 0x7FFFFFFF;
    v35 = v33 + 12;
  }

  *(v30 + 8) = v35;
  v43 = *a2;
  LODWORD(v44) = a1[2];
  if (v44 >= 0xFFFFFFFE)
  {
    v44 = 4294967294;
  }

  else
  {
    v44 = v44;
  }

  v45 = *a1 | (v44 << 32);
  v46 = *(v43 + 8);
  v47 = *(v43 + 16);
  if (v46 >= v47)
  {
    v49 = *v43;
    v50 = 0xAAAAAAAAAAAAAAABLL * ((v46 - *v43) >> 2);
    v51 = v50 + 1;
    if (v50 + 1 > 0x1555555555555555)
    {
      sub_1794();
    }

    v52 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v49) >> 2);
    if (2 * v52 > v51)
    {
      v51 = 2 * v52;
    }

    if (v52 >= 0xAAAAAAAAAAAAAAALL)
    {
      v53 = 0x1555555555555555;
    }

    else
    {
      v53 = v51;
    }

    if (v53)
    {
      if (v53 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v54 = 4 * ((v46 - *v43) >> 2);
    *v54 = v45;
    *(v54 + 8) = 0x7FFFFFFF;
    v48 = 12 * v50 + 12;
    v55 = (v54 - (v46 - v49));
    memcpy(v55, v49, v46 - v49);
    *v43 = v55;
    *(v43 + 8) = v48;
    *(v43 + 16) = 0;
    if (v49)
    {
      operator delete(v49);
    }
  }

  else
  {
    *v46 = v45;
    *(v46 + 8) = 0x7FFFFFFF;
    v48 = v46 + 12;
  }

  *(v43 + 8) = v48;
  v56 = *a2;
  LODWORD(v57) = a1[3];
  if (v57 >= 0xFFFFFFFE)
  {
    v57 = 4294967294;
  }

  else
  {
    v57 = v57;
  }

  v58 = *a1 | (v57 << 32);
  v59 = *(v56 + 8);
  v60 = *(v56 + 16);
  if (v59 >= v60)
  {
    v62 = *v56;
    v63 = 0xAAAAAAAAAAAAAAABLL * ((v59 - *v56) >> 2);
    v64 = v63 + 1;
    if (v63 + 1 > 0x1555555555555555)
    {
      sub_1794();
    }

    v65 = 0xAAAAAAAAAAAAAAABLL * ((v60 - v62) >> 2);
    if (2 * v65 > v64)
    {
      v64 = 2 * v65;
    }

    if (v65 >= 0xAAAAAAAAAAAAAAALL)
    {
      v66 = 0x1555555555555555;
    }

    else
    {
      v66 = v64;
    }

    if (v66)
    {
      if (v66 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v67 = 4 * ((v59 - *v56) >> 2);
    *v67 = v58;
    *(v67 + 8) = 0x7FFFFFFF;
    v61 = 12 * v63 + 12;
    v68 = (12 * v63 - (v59 - v62));
    memcpy(v68, v62, v59 - v62);
    *v56 = v68;
    *(v56 + 8) = v61;
    *(v56 + 16) = 0;
    if (v62)
    {
      operator delete(v62);
    }
  }

  else
  {
    *v59 = v58;
    *(v59 + 8) = 0x7FFFFFFF;
    v61 = v59 + 12;
  }

  *(v56 + 8) = v61;
}

void sub_34B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **sub_34BE0(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_34C58(_DWORD *a1@<X0>, std::string *a2@<X8>)
{
  v4 = a1[3];
  if (v4 >= 0xFFFFFFFE)
  {
    v4 = -2;
  }

  v5 = exp(v4 * -6.28318531 / 4294967300.0 + 3.14159265);
  v6 = atan((v5 + -1.0 / v5) * 0.5);
  std::to_string(&v30, v6 * 57.2957795);
  v7 = std::string::append(&v30, ",", 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  LODWORD(v8) = *a1;
  std::to_string(&v29, v8 * 360.0 / 4294967300.0 + -180.0);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v29;
  }

  else
  {
    v9 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v29.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v31, v9, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v32, ",", 1uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = a1[2];
  if (v15 >= 0xFFFFFFFE)
  {
    v15 = -2;
  }

  v16 = exp(v15 * -6.28318531 / 4294967300.0 + 3.14159265);
  v17 = atan((v16 + -1.0 / v16) * 0.5);
  std::to_string(&v28, v17 * 57.2957795);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v28;
  }

  else
  {
    v18 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v28.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&v33, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v34, ",", 1uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  LODWORD(v23) = a1[1];
  std::to_string(&__p, v23 * 360.0 / 4294967300.0 + -180.0);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = __p.__r_.__value_.__l.__size_;
  }

  v26 = std::string::append(&v35, p_p, v25);
  *a2 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }
  }

  else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v34.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v28.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_29:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(v32.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_30:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v29.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_31:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(v30.__r_.__value_.__l.__data_);
    return;
  }

LABEL_40:
  operator delete(v31.__r_.__value_.__l.__data_);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_41;
  }
}

void sub_34FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v52 - 73) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v52 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v52 - 73) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v52 - 96));
  if ((*(v52 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(*(v52 - 128));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a52 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((a52 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a45 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a47);
  if ((a45 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a40);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a21);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a33);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

LABEL_19:
  operator delete(a27);
  _Unwind_Resume(exception_object);
}

uint64_t sub_3514C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (*a1 == -1 && HIDWORD(*a1) == -1)
  {
    return -1;
  }

  v6 = *a2;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  v10[2] = v2;
  v10[3] = v3;
  v8 = v4;
  v9 = v10;
  vst2_f32(v9, *&v4);
  sub_32B28(v10, v6);
  return v10[0];
}

void *sub_351CC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_35350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_35390(va);
  _Unwind_Resume(a1);
}

void sub_35364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v4 + 8) = v6;
    operator delete(v6);
  }

  *(v3 + 8) = v4;
  sub_35390(va);
  _Unwind_Resume(a1);
}

void ***sub_35390(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 3);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 2) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_35418(int8x16_t *a1)
{
  v1 = a1->u64[1];
  if (a1[1].i8[7] >= 0)
  {
    v2 = a1[1].u8[7];
  }

  else
  {
    a1 = a1->i64[0];
    v2 = v1;
  }

  sub_22174(a1, v2, 0x2Cu, &__p);
}

void sub_35694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void **a27)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1A104(&a27);
  _Unwind_Resume(a1);
}

void sub_3571C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_357BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  __cxa_end_catch();
  JUMPOUT(0x3580CLL);
}

uint64_t *sub_35820(uint64_t *a1, uint64_t a2, double a3)
{
  v4 = *a1;
  v5 = a1 + *(*a1 - 24);
  v6 = *(v5 + 2);
  *(v5 + 2) = 6;
  *(a1 + *(v4 - 24) + 8) = *(a1 + *(v4 - 24) + 8) & 0xFFFFFEFB | 4;
  LODWORD(a3) = *(a2 + 4);
  v7 = exp(*&a3 * -6.28318531 / 4294967300.0 + 3.14159265);
  atan((v7 + -1.0 / v7) * 0.5);
  v8 = std::ostream::operator<<();
  sub_4A5C(v8, ",", 1);
  std::ostream::operator<<();
  *(a1 + *(*a1 - 24) + 8) = v6;
  return a1;
}

void *sub_35984(void *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_4A5C(a1, __s, v4);
}

void sub_359CC(uint64_t *a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v93 = 0uLL;
  v94 = 0;
  v6 = 2 * a2;
  v7 = a1[1] - *a1;
  v84 = a4;
  if (v7)
  {
    v8 = **a1;
    v97 = *(*a1 + 8);
    v96 = v8;
    *v98 = v8;
    *&v98[8] = v97;
    operator new();
  }

  v9 = *(v7 - 24);
  if (*(v7 - 16) - v9 == 12)
  {
    v10 = v7 - 32;
    v11 = a2;
    if (v9)
    {
      *(v7 - 16) = v9;
      operator delete(v9);
    }

    *(&v93 + 1) = v10;
    if (a2)
    {
LABEL_7:
      v12 = a1[1];
      v13 = *(v12 - 12) >> -v11;
      v14 = *(v12 - 8) >> -v11;
      v15 = -1 << v11;
      v16 = ~(-1 << v11);
      if (v16 < v13)
      {
        v17 = ~v15;
      }

      else
      {
        v17 = v13;
      }

      if (v16 < v14)
      {
        v18 = ~v15;
      }

      else
      {
        v18 = v14;
      }

      sub_58168(v17, v18);
      LODWORD(v95) = v19 | (1 << v6);
      if (*(v10 - 32) == v95)
      {
        goto LABEL_18;
      }

LABEL_17:
      v20 = a1[1];
      *v98 = *(v20 - 12);
      LODWORD(v20) = *(v20 - 4);
      *&v98[12] = *v98;
      *&v98[8] = v20;
      v99 = v20;
      memset(__p, 0, 24);
      operator new();
    }
  }

  else
  {
    v10 = v7;
    v11 = a2;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  LODWORD(v95) = 1;
  if (*(v10 - 32) != 1)
  {
    goto LABEL_17;
  }

LABEL_18:
  if ((a3 & 1) == 0)
  {
    *a4 = v93;
    a4[2] = v94;
    return;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*(&v93 + 1) == v93)
  {
    goto LABEL_84;
  }

  v21 = 0;
  v83 = (*(&v93 + 1) - v93) >> 5;
  do
  {
    v91 = v93 + 32 * v21;
    v22 = sub_57A90(*v91);
    v23 = *v91 & ~(-1 << (v22 & 0xFE));
    v24 = sub_581D8(v23);
    v25 = sub_581D8(v23 >> 1);
    v26 = 1 << -(v22 >> 1);
    if (v22 < 2)
    {
      v26 = -2;
    }

    v27 = v93 + 32 * v21;
    v28 = *(v91 + 8);
    v85 = v21;
    v29 = *(v91 + 16);
    if (v28 != v29)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = v24 * v26;
      v35 = v25 * v26;
      v89 = *(v91 + 16);
      v86 = v25 * v26;
      v87 = v24 * v26;
      while (1)
      {
        v38 = v28[1];
        v36 = (*v28 - v34) >> 2;
        v37 = (v38 - v35) >> 2;
        if (v33 != v32 && (v39 = *(v27 + 16), *v28 == *(v39 - 12)) && v38 == *(v39 - 8) && (v28[2] == *(v39 - 4) ? (v40 = v36 == v31) : (v40 = 0), v40 ? (v41 = v37 == v30) : (v41 = 0), v41))
        {
          v42 = v32 - 12;
          v50 = v42 - v33;
          v51 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v33) >> 2);
          v52 = v51 + 1;
          if (v51 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * (-v33 >> 2) > v52)
          {
            v52 = 0x5555555555555556 * (-v33 >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v33 >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v53 = 0x1555555555555555;
          }

          else
          {
            v53 = v52;
          }

          if (v53)
          {
            if (v53 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v54 = 12 * v51;
          v55 = *v28;
          *(v54 + 8) = v28[2];
          *v54 = v55;
          v32 = 12 * v51 + 12;
          v56 = (v54 + 12 * (v50 / -12));
          memcpy(v56, v33, v50);
          if (v33)
          {
            operator delete(v33);
          }

          v33 = v56;
          v29 = v89;
          v27 = v91;
          v35 = v86;
          v34 = v87;
          if (v56 == v32)
          {
LABEL_46:
            v44 = v32 - v33;
            v45 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v33) >> 2);
            v46 = v45 + 1;
            if (v45 + 1 > 0x1555555555555555)
            {
              sub_1794();
            }

            if (0x5555555555555556 * (-v33 >> 2) > v46)
            {
              v46 = 0x5555555555555556 * (-v33 >> 2);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v33 >> 2) >= 0xAAAAAAAAAAAAAAALL)
            {
              v47 = 0x1555555555555555;
            }

            else
            {
              v47 = v46;
            }

            if (v47)
            {
              if (v47 <= 0x1555555555555555)
              {
                operator new();
              }

              sub_1808();
            }

            v48 = 12 * v45;
            v49 = *v28;
            *(v48 + 8) = v28[2];
            *v48 = v49;
            v32 = 12 * v45 + 12;
            memcpy((12 * v45 + 12 * (v44 / -12)), v33, v44);
            if (v33)
            {
              operator delete(v33);
            }

            v33 = 12 * v45 + 12 * (v44 / -12);
            v29 = v89;
            v27 = v91;
            v35 = v86;
            v34 = v87;
            goto LABEL_28;
          }
        }

        else if (v33 == v32)
        {
          goto LABEL_46;
        }

        if (v36 != v31 || v37 != v30)
        {
          goto LABEL_46;
        }

        v36 = v31;
        v37 = v30;
LABEL_28:
        v28 += 3;
        v30 = v37;
        v31 = v36;
        if (v28 == v29)
        {
          goto LABEL_72;
        }
      }
    }

    v33 = 0;
    v32 = 0;
LABEL_72:
    if (0xAAAAAAAAAAAAAAABLL * ((v32 - v33) >> 2) >= 2)
    {
      v58 = *(v27 + 8);
      *(v27 + 8) = v33;
      *(v27 + 16) = v32;
      *(v27 + 24) = 0;
      a4 = v84;
      v60 = v84[1];
      if (v60 >= v84[2])
      {
        v61 = sub_37CAC(v84, v27);
        v59 = v85;
      }

      else
      {
        *v60 = *v27;
        *(v60 + 16) = 0;
        *(v60 + 24) = 0;
        *(v60 + 8) = 0;
        *(v60 + 8) = *(v27 + 8);
        *(v60 + 24) = *(v27 + 24);
        v59 = v85;
        *(v91 + 8) = 0;
        *(v91 + 16) = 0;
        *(v91 + 24) = 0;
        v61 = v60 + 32;
      }

      v84[1] = v61;
      if (v58)
      {
        goto LABEL_21;
      }
    }

    else
    {
      a4 = v84;
      v57 = v84[1];
      if (*v84 != v57)
      {
        *(*(v57 - 16) - 4) = *(*(v27 + 16) - 4);
      }

      v58 = v33;
      v59 = v85;
      if (v33)
      {
LABEL_21:
        operator delete(v58);
      }
    }

    v21 = v59 + 1;
  }

  while (v21 != v83);
  if (*a4 == a4[1])
  {
LABEL_84:
    v62 = sub_3706C(&v93, 0);
    v63 = a4[1];
    if (v63 >= a4[2])
    {
      v67 = sub_37E08(a4, v62);
    }

    else
    {
      v64 = *v62;
      *(v63 + 8) = 0;
      *v63 = v64;
      *(v63 + 16) = 0;
      *(v63 + 24) = 0;
      v66 = *(v62 + 8);
      v65 = *(v62 + 16);
      if (v65 != v66)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v65 - v66) >> 2) <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1794();
      }

      v67 = v63 + 32;
      a4[1] = v63 + 32;
    }

    a4[1] = v67;
    v68 = *a4;
    v69 = *(*a4 + 8);
    v70 = *(*a4 + 16) - v69;
    v71 = 0xAAAAAAAAAAAAAAABLL * (v70 >> 2);
    if (v71 > 1)
    {
      if (v70 != 24)
      {
        *(v68 + 16) = v69 + 24;
      }
    }

    else
    {
      sub_38004(*a4 + 8, 2 - v71);
      v68 = *a4;
    }

    v72 = *(v93 + 16);
    v73 = sub_37268((v68 + 8), 1uLL);
    v74 = *(v72 - 12);
    *(v73 + 8) = *(v72 - 4);
    *v73 = v74;
    v75 = sub_37268((*a4 + 8), 0);
    v76 = sub_37268((*a4 + 8), 1uLL);
    if (*v75 == *v76 && v75[1] == v76[1] && v75[2] == v76[2])
    {
      sub_19594F8(__p);
      v77 = sub_4A5C(__p, "Segment under 8cm:coordinate=", 29);
      sub_35820(v77, *a1, v78);
      sub_7D6BC();
      operator new();
    }
  }

  v79 = v93;
  if (v93)
  {
    v80 = *(&v93 + 1);
    v81 = v93;
    if (*(&v93 + 1) != v93)
    {
      do
      {
        v82 = *(v80 - 24);
        if (v82)
        {
          *(v80 - 16) = v82;
          operator delete(v82);
        }

        v80 -= 32;
      }

      while (v80 != v79);
      v81 = v93;
    }

    *(&v93 + 1) = v79;
    operator delete(v81);
  }
}

void sub_36E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 - 121) < 0)
  {
    operator delete(*(v23 - 144));
  }

  std::ios::~ios();
  sub_37484(a10);
  sub_37484((v23 - 240));
  _Unwind_Resume(a1);
}

void sub_36F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *v11;
  if (*v11)
  {
    *(v10 + 16) = v14;
    operator delete(v14);
  }

  *(a10 + 8) = v10;
  sub_37484(a10);
  sub_37484((v12 - 240));
  _Unwind_Resume(a1);
}

void sub_36F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
    sub_37484((v21 - 240));
    _Unwind_Resume(a1);
  }

  sub_37484((v21 - 240));
  _Unwind_Resume(a1);
}

uint64_t sub_3706C(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 5);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 32 * a2;
}

void sub_37188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_37268(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 12 * a2;
}

void sub_373A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void **sub_37484(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_374F8(unsigned int *a1)
{
  v2 = ~(-1 << (sub_57A90(*a1) >> 1));
  v3 = sub_57A90(*a1);
  v4 = sub_581D8(*a1 & ~(-1 << (v3 & 0xFE)));
  if (v4 + 1 < v2)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = v2;
  }

  v6 = sub_57A90(*a1);
  v7 = sub_581D8((*a1 & ~(-1 << (v6 & 0xFE))) >> 1);
  if (v7 + 1 < v2)
  {
    v2 = v7 + 1;
  }

  v8 = sub_57A90(*a1);
  v9 = -1 << (v8 >> 1);
  if (~v9 < v5)
  {
    v10 = ~v9;
  }

  else
  {
    v10 = v5;
  }

  if (~v9 < v2)
  {
    v11 = ~v9;
  }

  else
  {
    v11 = v2;
  }

  v12 = 1 << (v8 & 0xFE);
  sub_58168(v10, v11);
  v14 = v12 | v13;
  v15 = sub_57A90(*a1);
  v16 = -1 << (v15 & 0xFE);
  v17 = *a1;
  v18 = *a1 & ~v16;
  v19 = sub_581D8(v17 & ~v16);
  v20 = sub_581D8(v18 >> 1);
  v21 = 1 << -(v15 >> 1);
  if (v15 < 2)
  {
    v21 = -2;
  }

  v22 = v21 * v19;
  v23 = v21 * v20;
  v24 = sub_57A90(v14);
  v25 = v14 & ~(-1 << (v24 & 0xFE));
  v26 = sub_581D8(v25);
  v27 = sub_581D8(v25 >> 1);
  v28 = 1 << -(v24 >> 1);
  if (v24 < 2)
  {
    v28 = -2;
  }

  LODWORD(v29) = v28 * v26;
  LODWORD(v30) = v28 * v27;
  if (v22 == v29)
  {
    LODWORD(v29) = -1;
  }

  if (v23 == v30)
  {
    LODWORD(v30) = -2;
  }

  if (v29 >= v22)
  {
    v31 = v22;
  }

  else
  {
    v31 = v29;
  }

  if (v30 >= v23)
  {
    LODWORD(v32) = v23;
  }

  else
  {
    LODWORD(v32) = v30;
  }

  if (v32 >= 0xFFFFFFFE)
  {
    v32 = 4294967294;
  }

  else
  {
    v32 = v32;
  }

  v36 = v31 | (v32 << 32);
  v37 = 0x7FFFFFFF;
  if (v22 <= v29)
  {
    v29 = v29;
  }

  else
  {
    v29 = v22;
  }

  if (v23 > v30)
  {
    LODWORD(v30) = v23;
  }

  if (v30 >= 0xFFFFFFFE)
  {
    v30 = 4294967294;
  }

  else
  {
    v30 = v30;
  }

  v34 = v29 | (v30 << 32);
  v35 = 0x7FFFFFFF;
  sub_320C0(&v38, &v36, &v34);
  return v38;
}

void sub_376F0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 12;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
  v9 = v8 + 1;
  if (v8 + 1 > 0x1555555555555555)
  {
    sub_1794();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0xAAAAAAAAAAAAAAALL)
  {
    v11 = 0x1555555555555555;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 4 * ((v3 - *a1) >> 2);
  *v12 = *a2;
  *(v12 + 8) = *(a2 + 2);
  v6 = 12 * v8 + 12;
  v13 = 12 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t sub_3783C(uint64_t *a1, int *a2, void *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 32 * v3;
  v9 = *a2;
  *(v8 + 8) = 0;
  *v8 = v9;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  v10 = a3[1] - *a3;
  if (v10)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v10 >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = v8 + 32;
  v12 = *a1;
  v13 = a1[1];
  v14 = v8 + *a1 - v13;
  if (v13 != *a1)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      *v16 = *v15;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *(v16 + 8) = 0;
      *(v16 + 8) = *(v15 + 1);
      *(v16 + 24) = v15[3];
      v15[1] = 0;
      v15[2] = 0;
      v15[3] = 0;
      v15 += 4;
      v16 += 32;
    }

    while (v15 != v13);
    do
    {
      v17 = v12[1];
      if (v17)
      {
        v12[2] = v17;
        operator delete(v17);
      }

      v12 += 4;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_37A18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = v5;
    operator delete(v5);
  }

  sub_37A3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_37A3C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 32;
        *(a1 + 16) = v2 - 32;
        v5 = *(v2 - 24);
        if (!v5)
        {
          break;
        }

        *(v2 - 16) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 32;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_37AAC(uint64_t *a1, int *a2, void *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 32 * v3;
  v9 = *a2;
  *(v8 + 8) = 0;
  *v8 = v9;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  v10 = a3[1] - *a3;
  if (v10)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v10 >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = v8 + 32;
  v12 = *a1;
  v13 = a1[1];
  v14 = v8 + *a1 - v13;
  if (v13 != *a1)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      *v16 = *v15;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *(v16 + 8) = 0;
      *(v16 + 8) = *(v15 + 1);
      *(v16 + 24) = v15[3];
      v15[1] = 0;
      v15[2] = 0;
      v15[3] = 0;
      v15 += 4;
      v16 += 32;
    }

    while (v15 != v13);
    do
    {
      v17 = v12[1];
      if (v17)
      {
        v12[2] = v17;
        operator delete(v17);
      }

      v12 += 4;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_37C88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = v5;
    operator delete(v5);
  }

  sub_37A3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_37CAC(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v8 = 32 * v2 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      *v13 = *v12;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = *(v12 + 1);
      *(v13 + 24) = v12[3];
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0;
      v12 += 4;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      v14 = v9[1];
      if (v14)
      {
        v9[2] = v14;
        operator delete(v14);
      }

      v9 += 4;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

uint64_t sub_37E08(uint64_t *a1, int *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  v8 = *a2;
  *&dword_8[8 * v2] = 0;
  *v7 = v8;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v10 = *(a2 + 1);
  v9 = *(a2 + 2);
  if (v9 != v10)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = v7 + 32;
  v12 = *a1;
  v13 = a1[1];
  v14 = v7 + *a1 - v13;
  if (v13 != *a1)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      *v16 = *v15;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *(v16 + 8) = 0;
      *(v16 + 8) = *(v15 + 1);
      *(v16 + 24) = v15[3];
      v15[1] = 0;
      v15[2] = 0;
      v15[3] = 0;
      v15 += 4;
      v16 += 32;
    }

    while (v15 != v13);
    do
    {
      v17 = v12[1];
      if (v17)
      {
        v12[2] = v17;
        operator delete(v17);
      }

      v12 += 4;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_37FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = v5;
    operator delete(v5);
  }

  sub_37A3C(va);
  _Unwind_Resume(a1);
}

void sub_38004(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 2) >= a2)
  {
    if (!a2)
    {
LABEL_29:
      *(a1 + 8) = v3;
      return;
    }

    v9 = v3 + 12 * a2;
    v10 = 12 * a2 - 12;
    if (v10 >= 0x54)
    {
      v22 = v10 / 0xC + 1;
      v11 = v3 + 12 * (v22 & 0x3FFFFFFFFFFFFFF8);
      v23 = v22 & 0x3FFFFFFFFFFFFFF8;
      do
      {
        *v3 = xmmword_2266560;
        v3[1] = xmmword_2266550;
        v3[4] = xmmword_2266550;
        v3[5] = xmmword_2266540;
        v3[2] = xmmword_2266540;
        v3[3] = xmmword_2266560;
        v3 += 6;
        v23 -= 8;
      }

      while (v23);
      if (v22 == (v22 & 0x3FFFFFFFFFFFFFF8))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v11 = *(a1 + 8);
    }

    do
    {
      *v11 = -1;
      *(v11 + 2) = 0x7FFFFFFF;
      v11 += 12;
    }

    while (v11 != v9);
LABEL_28:
    v3 = v9;
    goto LABEL_29;
  }

  v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
  v6 = v5 + a2;
  if (v5 + a2 > 0x1555555555555555)
  {
    sub_1794();
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
  if (2 * v7 > v6)
  {
    v6 = 2 * v7;
  }

  if (v7 >= 0xAAAAAAAAAAAAAAALL)
  {
    v8 = 0x1555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 12 * v5;
  v13 = 12 * v5 + 12 * a2;
  v14 = 12 * a2 - 12;
  if (v14 < 0x54)
  {
    v15 = v12;
    do
    {
LABEL_19:
      *v15 = -1;
      *(v15 + 8) = 0x7FFFFFFF;
      v15 += 12;
    }

    while (v15 != v13);
    goto LABEL_20;
  }

  v16 = v14 / 0xC + 1;
  v15 = v12 + 12 * (v16 & 0x3FFFFFFFFFFFFFF8);
  v17 = v12;
  v18 = v16 & 0x3FFFFFFFFFFFFFF8;
  do
  {
    *v17 = xmmword_2266560;
    v17[1] = xmmword_2266550;
    v17[4] = xmmword_2266550;
    v17[5] = xmmword_2266540;
    v17[2] = xmmword_2266540;
    v17[3] = xmmword_2266560;
    v17 += 6;
    v18 -= 8;
  }

  while (v18);
  if (v16 != (v16 & 0x3FFFFFFFFFFFFFF8))
  {
    goto LABEL_19;
  }

LABEL_20:
  v19 = *a1;
  v20 = *(a1 + 8) - *a1;
  v21 = v12 - v20;
  memcpy((v12 - v20), *a1, v20);
  *a1 = v21;
  *(a1 + 8) = v13;
  *(a1 + 16) = 0;
  if (v19)
  {

    operator delete(v19);
  }
}

uint64_t sub_38284(long double a1, long double a2, double a3)
{
  sub_38384(a1, a2, a3);
  v5 = v4;
  result = -1;
  if (v4 <= 180.0 && v4 >= -180.0 && fabs(v3) <= 85.0511288)
  {
    v7 = sin(fmin(fmax(v3, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
    LODWORD(v8) = ((log((v7 + 1.0) / (1.0 - v7)) / -12.5663706 + 0.5) * 4294967300.0);
    if (v8 >= 0xFFFFFFFE)
    {
      v8 = 4294967294;
    }

    else
    {
      v8 = v8;
    }

    return ((v5 + 180.0) / 360.0 * 4294967300.0) | (v8 << 32);
  }

  return result;
}

void sub_38384(long double a1, long double a2, double a3)
{
  v3 = a1 * a1 + a2 * a2;
  v4 = v3 * 2.45817226e-14;
  v5 = a3 * a3 * 0.99330562 * 2.45817226e-14;
  v6 = v3 * 2.45817226e-14 + v5;
  v7 = (v6 + -0.0000448147235) * 0.166666667;
  v8 = v3 * 2.45817226e-14 * v5 * 0.0000112036809;
  v9 = v8 + v7 * (v7 * (v7 + v7));
  if (v9 >= 2.25010182e-14)
  {
    v10 = v8 + v9;
    v11 = sqrt(v8 * v9);
    v13 = cbrt(v10 + v11 + v11);
    v14 = cbrt(2.0);
    v15 = -0.0000112036809 - v6 * 0.5;
    v16 = v15 * 0.333333333 - v13 * (1.0 / v14) - v7 * v7 / (v13 * (1.0 / v14));
    v17 = (0.0000112036809 - v6) * 0.0000112036809;
    v18 = sqrt(sqrt(v16 * v16 - v17) - (v15 + v16) * 0.5);
    v19 = sqrt(fabs((v16 - v15) * 0.5));
    if (v4 >= v5)
    {
      v19 = -v19;
    }

    v20 = v18 + v19;
    v21 = v20 - (v17 + ((v4 - v5) * 0.00334719 + (v4 - v5) * 0.00334719) * v20 + v20 * v20 * (v20 * v20) + (v15 + v15) * (v20 * v20)) / ((v4 - v5) * 0.00334719 + (v4 - v5) * 0.00334719 + v15 * 4.0 * v20 + v20 * (v20 * v20) * 4.0);
    atan2((v21 + 0.00334719) * a3, sqrt(v3) * (v21 + -0.00334719));
    atan2(a2, a1);
  }

  else
  {
    sub_385FC(a1, a2, a3);
  }
}

double sub_385FC(long double a1, long double a2, double a3)
{
  v4 = a2;
  v5 = a1;
  v6 = sqrt(a1 * a1 + a2 * a2);
  v7 = fabs(a3);
  if (v6 >= 0.00000001 && v6 >= v7 * 0.00000001)
  {
    v48 = v5;
    v10 = atan2(a3 * 6378137.0, v6 * 6356752.31);
    v11 = __sincos_stret(v10);
    v12 = 6378137.0 / sqrt(1.0 - v11.__sinval * (v11.__sinval * 0.00669437999));
    v13 = atan2((v12 + v6 / v11.__cosval - v12) * a3, v6 * (v12 * 0.99330562 + v6 / v11.__cosval - v12));
    v14 = __sincos_stret(v13);
    v15 = 6378137.0 / sqrt(1.0 - v14.__sinval * (v14.__sinval * 0.00669437999));
    v16 = atan2((v15 + v6 / v14.__cosval - v15) * a3, v6 * (v15 * 0.99330562 + v6 / v14.__cosval - v15));
    v17 = __sincos_stret(v16);
    v18 = 6378137.0 / sqrt(1.0 - v17.__sinval * (v17.__sinval * 0.00669437999));
    v19 = v6 / v17.__cosval - v18;
    v20 = atan2((v18 + v19) * a3, v6 * (v18 * 0.99330562 + v19));
    v21 = __sincos_stret(v20);
    v22 = 6378137.0 / sqrt(1.0 - v21.__sinval * (v21.__sinval * 0.00669437999));
    v23 = v6 / v21.__cosval - v22;
    v24 = atan2((v22 + v23) * a3, v6 * (v22 * 0.99330562 + v23));
    v25 = v24;
    if (vabdd_f64(v23, v19) < 0.0007 && v22 * vabdd_f64(v24, v20) < 0.0007)
    {
      goto LABEL_16;
    }

    v26 = __sincos_stret(v24);
    v27 = 6378137.0 / sqrt(v26.__sinval * (v26.__sinval * -0.00669437999) + 1.0);
    v28 = v6 / v26.__cosval - v27;
    v29 = atan2((v27 + v28) * a3, v6 * (v27 * 0.99330562 + v28));
    if (vabdd_f64(v28, v23) >= 0.0007 || v27 * vabdd_f64(v29, v25) >= 0.0007)
    {
      v30 = __sincos_stret(v29);
      v31 = 6378137.0 / sqrt(v30.__sinval * (v30.__sinval * -0.00669437999) + 1.0);
      v32 = v6 / v30.__cosval - v31;
      v25 = atan2((v31 + v32) * a3, v6 * (v31 * 0.99330562 + v32));
      if (vabdd_f64(v32, v28) < 0.0007 && v31 * vabdd_f64(v25, v29) < 0.0007)
      {
        goto LABEL_16;
      }

      v35 = __sincos_stret(v25);
      v36 = 6378137.0 / sqrt(v35.__sinval * (v35.__sinval * -0.00669437999) + 1.0);
      v37 = v6 / v35.__cosval - v36;
      v29 = atan2((v36 + v37) * a3, v6 * (v36 * 0.99330562 + v37));
      if (vabdd_f64(v37, v32) >= 0.0007 || v36 * vabdd_f64(v29, v25) >= 0.0007)
      {
        v38 = __sincos_stret(v29);
        v39 = 6378137.0 / sqrt(v38.__sinval * (v38.__sinval * -0.00669437999) + 1.0);
        v40 = v6 / v38.__cosval - v39;
        v25 = atan2((v39 + v40) * a3, v6 * (v39 * 0.99330562 + v40));
        if (vabdd_f64(v40, v37) >= 0.0007 || v39 * vabdd_f64(v25, v29) >= 0.0007)
        {
          v41 = __sincos_stret(v25);
          v42 = 6378137.0 / sqrt(v41.__sinval * (v41.__sinval * -0.00669437999) + 1.0);
          v43 = v6 / v41.__cosval - v42;
          v44 = atan2((v42 + v43) * a3, v6 * (v42 * 0.99330562 + v43));
          if (vabdd_f64(v43, v40) >= 0.0007 || v42 * vabdd_f64(v44, v25) >= 0.0007)
          {
            v45 = __sincos_stret(v44);
            v46 = 6378137.0 / sqrt(v45.__sinval * (v45.__sinval * -0.00669437999) + 1.0);
            v44 = atan2((v46 + v6 / v45.__cosval - v46) * a3, v6 * (v46 * 0.99330562 + v6 / v45.__cosval - v46));
          }

          v25 = v44;
        }

        goto LABEL_16;
      }
    }

    v25 = v29;
LABEL_16:
    v9 = v25 * 180.0 / 3.14159265;
    v4 = a2;
    v5 = v48;
    goto LABEL_17;
  }

  if (a3 <= 0.0)
  {
    v9 = -90.0;
  }

  else
  {
    v9 = 90.0;
  }

LABEL_17:
  v33 = atan2(v4, v5);
  remainder(v33, 6.28318531);
  return v9;
}

void sub_38AC8(unsigned int **a1, unsigned int **a2, void *a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  v7 = *a1;
  v57 = a1[1];
  if (*a1 != v57 && *a2 != a2[1])
  {
    v62 = vdupq_n_s64(0x4076800000000000uLL);
    v60 = vdupq_n_s64(0xC066800000000000);
    v61 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v59 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v66 = a5;
    v64 = a3;
    v65 = a4;
    do
    {
      v10 = *a2;
      v11 = a2[1];
      while (v10 != v11)
      {
        v14 = *v7;
        v15 = *v10;
        if (*v10 < *v7)
        {
          v16 = a6;
        }

        else
        {
          v16 = 0;
        }

        if (v14 == v15 || (v16 & 1) != 0)
        {
          goto LABEL_8;
        }

        v17 = (*a3 + 12 * v14);
        v18 = (*a3 + 12 * v15);
        v20 = *v17;
        v19 = v17[1];
        if (a5 != 1)
        {
          v37 = sqrt(((v20 - *v18) * (v20 - *v18) + (v19 - v18[1]) * (v19 - v18[1]))) / 100.0 * 100.0;
          if (v37 < 4.50359963e15)
          {
            v37 = (((v37 + v37) + 1) >> 1);
          }

          if (v37 >= 9.22337204e18)
          {
LABEL_41:
            v40 = 0x7FFFFFFFFFFFFFFELL;
            if (a4 != 0x7FFFFFFFFFFFFFFFLL && a4 != 0x7FFFFFFFFFFFFFFELL)
            {
              goto LABEL_8;
            }

            goto LABEL_43;
          }

          goto LABEL_30;
        }

        v21 = v20 == -1 && v19 == -1;
        if (v21 || ((v23 = *v18, v22 = v18[1], *v18 == -1) ? (v24 = v22 == -1) : (v24 = 0), v24))
        {
          v40 = 0x7FFFFFFFFFFFFFFFLL;
          if (a4 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_8;
          }

          goto LABEL_43;
        }

        v25 = exp(3.14159265 - v19 * 6.28318531 / 4294967300.0);
        v26 = atan((v25 - 1.0 / v25) * 0.5) * 57.2957795 * 0.0174532925;
        v27.i64[0] = v20;
        v27.i64[1] = v23;
        v28 = exp(3.14159265 - v22 * 6.28318531 / 4294967300.0);
        v29 = atan((v28 - 1.0 / v28) * 0.5) * 57.2957795 * 0.0174532925;
        v30 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v27), v62), v61), v60), v59);
        v63 = vsubq_f64(v30, vdupq_laneq_s64(v30, 1)).f64[0];
        v31 = sin((v26 - v29) * 0.5);
        v32 = v31 * v31;
        v33 = cos(v26);
        v34 = v33 * cos(v29);
        v35 = sin(0.5 * v63);
        v36 = atan2(sqrt(v35 * v35 * v34 + v32), sqrt(1.0 - (v35 * v35 * v34 + v32)));
        v37 = (v36 + v36) * 6372797.56 * 100.0;
        if (v37 >= 0.0)
        {
          v38 = v37;
          if (v37 >= 4.50359963e15)
          {
            goto LABEL_37;
          }

          v39 = (v37 + v37) + 1;
        }

        else
        {
          v38 = v37;
          if (v37 <= -4.50359963e15)
          {
            goto LABEL_37;
          }

          v39 = (v37 + v37) - 1 + (((v37 + v37) - 1) >> 63);
        }

        v38 = (v39 >> 1);
LABEL_37:
        a5 = v66;
        a3 = v64;
        a4 = v65;
        if (v38 >= 9.22337204e18)
        {
          goto LABEL_41;
        }

        if (v37 >= 0.0)
        {
          if (v37 >= 4.50359963e15)
          {
            goto LABEL_30;
          }

          v41 = (v37 + v37) + 1;
        }

        else
        {
          if (v37 <= -4.50359963e15)
          {
            goto LABEL_30;
          }

          v41 = (v37 + v37) - 1 + (((v37 + v37) - 1) >> 63);
        }

        v37 = (v41 >> 1);
LABEL_30:
        v40 = v37;
        if (v37 > a4)
        {
          goto LABEL_8;
        }

LABEL_43:
        if (v15 >= v14)
        {
          v42 = v7;
        }

        else
        {
          v42 = v10;
        }

        if (v14 >= v15)
        {
          v43 = v7;
        }

        else
        {
          v43 = v10;
        }

        v45 = *(a7 + 8);
        v44 = *(a7 + 16);
        if (v45 < v44)
        {
          v12 = *v43;
          *v45 = *v42;
          *(v45 + 4) = v12;
          *(v45 + 8) = v40;
          v13 = v45 + 16;
        }

        else
        {
          v46 = *a7;
          v47 = (v45 - *a7) >> 4;
          v48 = v47 + 1;
          if ((v47 + 1) >> 60)
          {
            sub_1794();
          }

          v49 = v44 - v46;
          if (v49 >> 3 > v48)
          {
            v48 = v49 >> 3;
          }

          if (v49 >= 0x7FFFFFFFFFFFFFF0)
          {
            v50 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v50 = v48;
          }

          if (v50)
          {
            if (!(v50 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v51 = (v45 - *a7) >> 4;
          v52 = 16 * v47;
          v53 = *v43;
          *v52 = *v42;
          *(v52 + 4) = v53;
          *(v52 + 8) = v40;
          v54 = 16 * v47 - 16 * v51;
          if (v46 != v45)
          {
            v55 = v54;
            do
            {
              v56 = *v46++;
              *v55++ = v56;
            }

            while (v46 != v45);
            v46 = *a7;
          }

          v13 = v52 + 16;
          *a7 = v54;
          *(a7 + 8) = v52 + 16;
          *(a7 + 16) = 0;
          if (v46)
          {
            operator delete(v46);
          }

          a5 = v66;
          a3 = v64;
          a4 = v65;
        }

        *(a7 + 8) = v13;
LABEL_8:
        ++v10;
      }

      ++v7;
    }

    while (v7 != v57);
  }
}

void sub_38FD8(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>, unint64_t a5@<D0>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = *a1;
  v6 = a1[1];
  v116 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 2);
  if (v116 < 2)
  {
    return;
  }

  v8 = v7 + 12;
  if (v7 == v6 || v8 == v6)
  {
    v11 = *a1;
  }

  else
  {
    v10 = v7 + 12;
    v11 = *a1;
    do
    {
      if (*(v11 + 4) < *(v10 + 4))
      {
        v11 = v10;
      }

      v10 += 12;
    }

    while (v10 != v6);
    do
    {
      if (*(v8 + 4) < *(v7 + 4))
      {
        v7 = v8;
      }

      v8 += 12;
    }

    while (v8 != v6);
  }

  if (a3 != 1)
  {
    v25.f64[0] = 4294967290.0;
    v26 = 0xFFFFFFFFLL;
    v27 = &unk_2266000;
    v115 = a4;
    v114 = a3;
    v113 = a2;
    if (a2)
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

  v12 = a2;
  LODWORD(a5) = *(v11 + 4);
  v13 = exp(a5 * -6.28318531 / 4294967300.0 + 3.14159265);
  v14 = atan((v13 + -1.0 / v13) * 0.5);
  v15 = cos(v14 * 57.2957795 * 3.14159265 / 180.0) * 4004146800.0;
  v16 = (v15 + v15);
  if (v15 > -4.50359963e15)
  {
    v17 = ((v16 - 1) / 2);
  }

  else
  {
    v17 = v15;
  }

  v18 = ((v16 + 1) >> 1);
  if (v15 >= 4.50359963e15)
  {
    v18 = v15;
  }

  if (v15 >= 0.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  v20 = v19;
  LODWORD(v19) = *(v7 + 4);
  v21 = exp(*&v19 * -6.28318531 / 4294967300.0 + 3.14159265);
  v22 = atan((v21 + -1.0 / v21) * 0.5);
  v23 = cos(v22 * 57.2957795 * 3.14159265 / 180.0) * 4004146800.0;
  if (v23 >= 0.0)
  {
    if (v23 < 4.50359963e15)
    {
      v24 = (v23 + v23) + 1;
      goto LABEL_30;
    }
  }

  else if (v23 > -4.50359963e15)
  {
    v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_30:
    v23 = (v24 >> 1);
  }

  if (v23 >= v20)
  {
    v26 = v20;
  }

  else
  {
    v26 = v23;
  }

  v28 = atan(11.5487394) * 57.2957795 * 0.0174532925;
  v29 = atan(-11.5487393) * 57.2957795 * 0.0174532925;
  v30 = sin((v28 - v29) * 0.5);
  v31 = v30 * v30;
  v32 = cos(v28);
  v33 = cos(v29);
  v34 = atan2(sqrt(v32 * v33 * 0.0 + v31), sqrt(1.0 - (v32 * v33 * 0.0 + v31)));
  v35 = (v34 + v34) * 6372797.56 * 100.0;
  if (v35 >= 0.0)
  {
    a2 = v12;
    if (v35 < 4.50359963e15)
    {
      v25.f64[0] = 9.22337204e18;
      if ((((v35 + v35) + 1) >> 1) < 9.22337204e18)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v25.f64[0] = 9.22337204e18;
      if (v35 < 9.22337204e18)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    v36 = (((v35 + v35) - 1) / 2);
    if (v35 <= -4.50359963e15)
    {
      v36 = v35;
    }

    a2 = v12;
    v25.f64[0] = 9.22337204e18;
    if (v36 < 9.22337204e18)
    {
LABEL_44:
      v44 = (v35 + v35);
      if (v35 > -4.50359963e15)
      {
        v45 = ((v44 - 1) / 2);
      }

      else
      {
        v45 = v35;
      }

      v46 = (v44 + 1) >> 1;
      if (v35 < 4.50359963e15)
      {
        v47 = v46;
      }

      else
      {
        v47 = v35;
      }

      if (v35 >= 0.0)
      {
        v48 = v47;
      }

      else
      {
        v48 = v45;
      }

      v25.f64[0] = v48;
      v27 = &unk_2266000;
      v115 = a4;
      v114 = 1;
      v113 = a2;
      if (!a2)
      {
        goto LABEL_54;
      }

LABEL_42:
      v25.f64[1] = v26;
      v37 = vdivq_f64(v25, vdupq_lane_s64(COERCE__INT64(a2), 0));
      __asm { FMOV            V1.2D, #1.0 }

      v42 = vcvtq_u64_f64(vaddq_f64(v37, _Q1));
      v43 = vbslq_s8(vcgtq_u64(v27[97], v42), v42, v27[97]);
      goto LABEL_55;
    }
  }

  v27 = &unk_2266000;
  v115 = a4;
  v114 = 1;
  v113 = a2;
  if (a2)
  {
    goto LABEL_42;
  }

LABEL_54:
  v43 = v27[97];
LABEL_55:
  v49 = 0;
  v50 = 0;
  v51 = 4294967300.0 / v43.u64[1];
  v52 = v43.i64[0];
  *v43.i64 = v43.u64[0];
  *__p = 0u;
  *v121 = 0u;
  HIDWORD(v53) = 1106247679;
  v122 = 1065353216;
  v117 = v43.i64[1];
  v54 = v43.i64[1] - 1;
  v112 = v52;
  v55 = v52 - 1;
  v56 = 4294967290.0 / *v43.i64;
  do
  {
    v58 = (*a1 + v49);
    v43.i32[0] = *v58;
    LODWORD(v53) = v58[1];
    v59 = (v43.u64[0] / v51);
    v60 = (v53 / v56);
    if (v54 < v59)
    {
      v59 = v54;
    }

    if (v55 < v60)
    {
      v60 = v55;
    }

    v119 = v59 + v60 * v117;
    v123 = &v119;
    v61 = sub_39B68(__p, &v119);
    v62 = v61;
    v64 = v61[4];
    v63 = v61[5];
    if (v64 < v63)
    {
      *v64 = v50;
      v57 = v64 + 4;
    }

    else
    {
      v65 = v61[3];
      v66 = v64 - v65;
      v67 = (v64 - v65) >> 2;
      v68 = v67 + 1;
      if ((v67 + 1) >> 62)
      {
        sub_1794();
      }

      v69 = v63 - v65;
      if (v69 >> 1 > v68)
      {
        v68 = v69 >> 1;
      }

      if (v69 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v70 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v70 = v68;
      }

      if (v70)
      {
        if (!(v70 >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      v71 = (v64 - v65) >> 2;
      v72 = (4 * v67);
      v73 = (4 * v67 - 4 * v71);
      *v72 = v50;
      v57 = v72 + 1;
      memcpy(v73, v65, v66);
      v62[3] = v73;
      v62[4] = v57;
      v62[5] = 0;
      if (v65)
      {
        operator delete(v65);
      }
    }

    v62[4] = v57;
    ++v50;
    v49 += 12;
  }

  while (v116 != v50);
  v74 = v121[0];
  if (v121[0])
  {
    v75 = v112 == 1 && v117 == 1;
    v76 = v112 == 1 || v117 == 1;
    while (1)
    {
      v77 = *(v74 + 2);
      sub_38AC8(v74 + 3, v74 + 3, a1, v113, v114, 1, v115);
      if (v75)
      {
        v78 = -1;
        v79 = -1;
        v80 = -1;
        v81 = -1;
        v82 = __p[1];
        if (!__p[1])
        {
          goto LABEL_82;
        }
      }

      else
      {
        v78 = v77 + 1;
        if (v76)
        {
          v79 = -1;
          v80 = -1;
          v81 = -1;
          v82 = __p[1];
          if (!__p[1])
          {
            goto LABEL_82;
          }
        }

        else
        {
          if (v117 == 2)
          {
            v79 = v77 + 2;
          }

          else
          {
            v79 = v77 + v117 - 1;
          }

          if (v117 == 2)
          {
            v80 = v77 + 3;
          }

          else
          {
            v80 = v77 + v117;
          }

          if (v117 == 2)
          {
            v81 = -1;
          }

          else
          {
            v81 = v77 + v117 + 1;
          }

          v82 = __p[1];
          if (!__p[1])
          {
            goto LABEL_82;
          }
        }
      }

      v83 = vcnt_s8(v82);
      v83.i16[0] = vaddlv_u8(v83);
      if (v83.u32[0] > 1uLL)
      {
        v84 = v78;
        if (v78 >= *&v82)
        {
          v84 = v78 % *&v82;
        }
      }

      else
      {
        v84 = (*&v82 - 1) & v78;
      }

      v85 = *(__p[0] + v84);
      if (!v85)
      {
        goto LABEL_121;
      }

      v86 = *v85;
      if (!v86)
      {
        goto LABEL_121;
      }

      if (v83.u32[0] < 2uLL)
      {
        while (1)
        {
          v88 = v86[1];
          if (v88 == v78)
          {
            if (v86[2] == v78)
            {
              goto LABEL_119;
            }
          }

          else if ((v88 & (*&v82 - 1)) != v84)
          {
            goto LABEL_120;
          }

          v86 = *v86;
          if (!v86)
          {
            goto LABEL_120;
          }
        }
      }

      while (1)
      {
        v87 = v86[1];
        if (v87 == v78)
        {
          break;
        }

        if (v87 >= *&v82)
        {
          v87 %= *&v82;
        }

        if (v87 != v84)
        {
          goto LABEL_120;
        }

LABEL_108:
        v86 = *v86;
        if (!v86)
        {
          goto LABEL_120;
        }
      }

      if (v86[2] != v78)
      {
        goto LABEL_108;
      }

LABEL_119:
      sub_38AC8(v74 + 3, v86 + 3, a1, v113, v114, 0, v115);
      v82 = __p[1];
LABEL_120:
      if (!*&v82)
      {
        goto LABEL_82;
      }

LABEL_121:
      v89 = vcnt_s8(v82);
      v89.i16[0] = vaddlv_u8(v89);
      if (v89.u32[0] >= 2uLL)
      {
        v90 = v79;
        if (v79 >= *&v82)
        {
          v90 = v79 % *&v82;
        }
      }

      else
      {
        v90 = (*&v82 - 1) & v79;
      }

      v91 = *(__p[0] + v90);
      if (!v91)
      {
        goto LABEL_143;
      }

      v92 = *v91;
      if (!v92)
      {
        goto LABEL_143;
      }

      if (v89.u32[0] < 2uLL)
      {
        while (1)
        {
          v94 = v92[1];
          if (v94 == v79)
          {
            if (v92[2] == v79)
            {
              goto LABEL_141;
            }
          }

          else if ((v94 & (*&v82 - 1)) != v90)
          {
            goto LABEL_142;
          }

          v92 = *v92;
          if (!v92)
          {
            goto LABEL_142;
          }
        }
      }

      while (2)
      {
        v93 = v92[1];
        if (v93 != v79)
        {
          if (v93 >= *&v82)
          {
            v93 %= *&v82;
          }

          if (v93 != v90)
          {
            goto LABEL_142;
          }

          goto LABEL_130;
        }

        if (v92[2] != v79)
        {
LABEL_130:
          v92 = *v92;
          if (!v92)
          {
            goto LABEL_142;
          }

          continue;
        }

        break;
      }

LABEL_141:
      sub_38AC8(v74 + 3, v92 + 3, a1, v113, v114, 0, v115);
      v82 = __p[1];
LABEL_142:
      if (!*&v82)
      {
        goto LABEL_82;
      }

LABEL_143:
      v95 = vcnt_s8(v82);
      v95.i16[0] = vaddlv_u8(v95);
      if (v95.u32[0] >= 2uLL)
      {
        v96 = v80;
        if (v80 >= *&v82)
        {
          v96 = v80 % *&v82;
        }
      }

      else
      {
        v96 = (*&v82 - 1) & v80;
      }

      v97 = *(__p[0] + v96);
      if (!v97)
      {
        goto LABEL_165;
      }

      v98 = *v97;
      if (!v98)
      {
        goto LABEL_165;
      }

      if (v95.u32[0] < 2uLL)
      {
        while (1)
        {
          v100 = v98[1];
          if (v100 == v80)
          {
            if (v98[2] == v80)
            {
              goto LABEL_163;
            }
          }

          else if ((v100 & (*&v82 - 1)) != v96)
          {
            goto LABEL_164;
          }

          v98 = *v98;
          if (!v98)
          {
            goto LABEL_164;
          }
        }
      }

      while (2)
      {
        v99 = v98[1];
        if (v99 != v80)
        {
          if (v99 >= *&v82)
          {
            v99 %= *&v82;
          }

          if (v99 != v96)
          {
            goto LABEL_164;
          }

          goto LABEL_152;
        }

        if (v98[2] != v80)
        {
LABEL_152:
          v98 = *v98;
          if (!v98)
          {
            goto LABEL_164;
          }

          continue;
        }

        break;
      }

LABEL_163:
      sub_38AC8(v74 + 3, v98 + 3, a1, v113, v114, 0, v115);
      v82 = __p[1];
LABEL_164:
      if (v82)
      {
LABEL_165:
        v101 = vcnt_s8(v82);
        v101.i16[0] = vaddlv_u8(v101);
        if (v101.u32[0] >= 2uLL)
        {
          v102 = v81;
          if (v81 >= *&v82)
          {
            v102 = v81 % *&v82;
          }
        }

        else
        {
          v102 = (*&v82 - 1) & v81;
        }

        v103 = *(__p[0] + v102);
        if (v103)
        {
          v104 = *v103;
          if (v104)
          {
            if (v101.u32[0] < 2uLL)
            {
              v105 = *&v82 - 1;
              while (1)
              {
                v107 = v104[1];
                if (v107 == v81)
                {
                  if (v104[2] == v81)
                  {
                    goto LABEL_81;
                  }
                }

                else if ((v107 & v105) != v102)
                {
                  goto LABEL_82;
                }

                v104 = *v104;
                if (!v104)
                {
                  goto LABEL_82;
                }
              }
            }

            do
            {
              v106 = v104[1];
              if (v106 == v81)
              {
                if (v104[2] == v81)
                {
LABEL_81:
                  sub_38AC8(v74 + 3, v104 + 3, a1, v113, v114, 0, v115);
                  break;
                }
              }

              else
              {
                if (v106 >= *&v82)
                {
                  v106 %= *&v82;
                }

                if (v106 != v102)
                {
                  break;
                }
              }

              v104 = *v104;
            }

            while (v104);
          }
        }
      }

LABEL_82:
      v74 = *v74;
      if (!v74)
      {
        v108 = v121[0];
        if (v121[0])
        {
          do
          {
            v110 = *v108;
            v111 = v108[3];
            if (v111)
            {
              v108[4] = v111;
              operator delete(v111);
            }

            operator delete(v108);
            v108 = v110;
          }

          while (v110);
        }

        break;
      }
    }
  }

  v109 = __p[0];
  __p[0] = 0;
  if (v109)
  {
    operator delete(v109);
  }
}

void sub_39AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_39AFC(va);
  v10 = *a5;
  if (*a5)
  {
    *(a5 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_39AFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        v2[4] = v6;
        operator delete(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void *sub_39B68(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_39E90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

void **sub_39EA4(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t sub_39F0C(void *a1, void *a2, int a3, double a4)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2) < 2 || 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2) < 2)
  {
    return 0;
  }

  sub_3AA94(&v142, a1);
  sub_3AA94(&v139, a2);
  LODWORD(v9) = *(*a1 + 4);
  v10 = exp(v9 * -6.28318531 / 4294967300.0 + 3.14159265);
  v11 = atan((v10 - 1.0 / v10) * 0.5);
  v12 = 3.14159265;
  v13 = cos(v11 * 57.2957795 / 180.0 * 3.14159265);
  v145 = 0;
  v146 = 0;
  v147 = 0;
  sub_4216C(&v142, v143 - v142, a4 / (0.00932288077 / (1.0 / v13)), 0, 1, &v145);
  if (v145)
  {
    operator delete(v145);
  }

  LODWORD(v14) = *(*a2 + 4);
  v15 = exp(v14 * -6.28318531 / 4294967300.0 + 3.14159265);
  v16 = atan((v15 - 1.0 / v15) * 0.5);
  v17 = cos(v16 * 57.2957795 / 180.0 * 3.14159265);
  v145 = 0;
  v146 = 0;
  v147 = 0;
  sub_4216C(&v139, (v140 - v139) >> 4, a4 / (0.00932288077 / (1.0 / v17)), 0, 1, &v145);
  if (v145)
  {
    operator delete(v145);
  }

  v18 = v140 - v139;
  v20 = v142;
  v19 = v143;
  if (v140 - v139 <= (v143 - v142))
  {
    v22 = v140 - v139;
    v18 = v143 - v142;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    if (v140 == v139)
    {
      goto LABEL_14;
    }

LABEL_12:
    if (!((v22 >> 4) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v21 = v144;
  v142 = v139;
  v143 = v140;
  v144 = v141;
  v139 = v20;
  v140 = v19;
  v141 = v21;
  v22 = v19 - v20;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  if (v19 != v20)
  {
    goto LABEL_12;
  }

LABEL_14:
  sub_3ACA0(&__p, v18 >> 4);
  v125 = a3;
  v123 = a1;
  if (v145)
  {
    v146 = v145;
    operator delete(v145);
  }

  v25 = v142;
  v24 = v143;
  v126 = v140;
  v130 = v139;
  v124 = v140 - v139;
  if (v143 != v142 && v140 != v139)
  {
    v26 = v143 - v142;
    v27 = v124 >> 4;
    v28 = __p;
    if (v125)
    {
      v29 = 0;
      v127 = (v139 + 8);
      v30 = 6.28318531;
      v134 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
      v31 = 1.0;
      v32 = 0.5;
      v132 = vdupq_n_s64(0xC066800000000000);
      v133 = vdupq_n_s64(0x4076800000000000uLL);
      v131 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
      v128 = __p;
      v129 = v143 - v142;
      do
      {
        f64 = v25[v29].f64;
        v34 = v28[3 * v29];
        v35 = v127;
        v36 = v27;
        do
        {
          v135 = *f64;
          v37 = f64[1];
          if (v37 >= 0xFFFFFFFE)
          {
            v37 = -2;
          }

          v38 = v35 - 1;
          v39 = *v35;
          v35 += 2;
          v40 = v39;
          if (v39 >= 0xFFFFFFFE)
          {
            v41 = -2;
          }

          else
          {
            v41 = v40;
          }

          v42 = v12;
          v43 = exp(v12 - v37 * v30 / 4294967300.0);
          v44 = atan((v43 - v31 / v43) * v32) * 57.2957795 * 0.0174532925;
          v45 = exp(v12 - v41 * v30 / 4294967300.0);
          v46 = atan((v45 - 1.0 / v45) * v32);
          v47 = v30;
          v48 = v46 * 57.2957795 * 0.0174532925;
          v49.f64[0] = v135;
          v49.f64[1] = *v38;
          v50.i64[0] = 0xFFFFFFFFLL;
          v50.i64[1] = 0xFFFFFFFFLL;
          v51 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(vandq_s8(vcvtq_u64_f64(v49), v50)), v133), v134), v132), v131);
          v136 = vsubq_f64(v51, vdupq_laneq_s64(v51, 1)).f64[0];
          v52 = sin((v44 - v48) * 0.5);
          v53 = v52 * v52;
          v54 = cos(v44);
          v55 = v48;
          v30 = v47;
          v32 = 0.5;
          v56 = v54 * cos(v55);
          v57 = sin(0.5 * v136);
          v58 = v57 * v57 * v56;
          v31 = 1.0;
          v59 = v58 + v53;
          v12 = v42;
          v23.f64[0] = atan2(sqrt(v59), sqrt(1.0 - v59));
          v23.f64[0] = (v23.f64[0] + v23.f64[0]) * 6372797.56;
          *v34++ = *&v23.f64[0];
          --v27;
        }

        while (v27);
        ++v29;
        v28 = v128;
        v27 = v36;
      }

      while (v29 != v129);
      goto LABEL_34;
    }

    if (v27 < 4)
    {
      v60 = 0;
      do
      {
        v61 = v28[3 * v60];
        v62 = v130;
        v63 = v124 >> 4;
        do
        {
          v64 = *v62++;
          v23 = vsubq_f64(v25[v60], v64);
          v23.f64[0] = vaddvq_f64(vmulq_f64(v23, v23));
          *v61++ = *&v23.f64[0];
          --v63;
        }

        while (v63);
        ++v60;
      }

      while (v60 != v26);
      goto LABEL_34;
    }

    v102 = 0;
    v103 = (v139 + 32);
    do
    {
      v104 = v28[3 * v102];
      v105 = v104 + (v124 >> 1);
      v107 = v104 < v126 && v130 < v105;
      if ((v25 >= v105 || v104 >= v24) && !v107)
      {
        v111 = v25[v102].f64;
        v23 = vld1q_dup_f64(v111++);
        v112 = vld1q_dup_f64(v111);
        v113 = v104 + 1;
        v114 = v27 & 0xFFFFFFFFFFFFFFFCLL;
        v115 = v103;
        do
        {
          v116 = v115 - 4;
          v148 = vld2q_f64(v116);
          v149 = vld2q_f64(v115);
          v117 = vsubq_f64(v23, v148.val[0]);
          v118 = vsubq_f64(v23, v149.val[0]);
          v148.val[0] = vsubq_f64(v112, v148.val[1]);
          v148.val[1] = vsubq_f64(v112, v149.val[1]);
          v113[-1] = vaddq_f64(vmulq_f64(v117, v117), vmulq_f64(v148.val[0], v148.val[0]));
          *v113 = vaddq_f64(vmulq_f64(v118, v118), vmulq_f64(v148.val[1], v148.val[1]));
          v115 += 8;
          v113 += 2;
          v114 -= 4;
        }

        while (v114);
        v110 = v27 & 0xFFFFFFFFFFFFFFFCLL;
        if (v27 == (v27 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_99;
        }
      }

      else
      {
        v110 = 0;
      }

      v119 = v27 - v110;
      v120 = &v104->f64[v110];
      v121 = &v130[v110];
      do
      {
        v122 = *v121++;
        v23 = vsubq_f64(v25[v102], v122);
        v23.f64[0] = vaddvq_f64(vmulq_f64(v23, v23));
        *v120++ = *&v23.f64[0];
        --v119;
      }

      while (v119);
LABEL_99:
      ++v102;
    }

    while (v102 != v26);
  }

LABEL_34:
  if (v126 != v130)
  {
    if ((v124 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v68 = 0;
  v70 = 0;
  if (v143 == v142)
  {
    v69 = 0;
    v86 = *(((v140 - v139) >> 1) - 8);
    if ((v125 & 1) == 0)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v65 = v143 - v142;
    v66 = v140 - v139;
    if (v140 == v139)
    {
      do
      {
        v69 = v70;
        v70 = v68;
        v68 = v69;
        --v65;
      }

      while (v65);
    }

    else
    {
      v67 = 0;
      do
      {
        v69 = v70;
        v70 = v68;
        v71 = __p;
        if (v67)
        {
          v72 = (__p + 24 * v67);
          v23.f64[0] = *v68;
          if (*v68 < **v72)
          {
            v23.f64[0] = **v72;
          }

          *v69 = v23.f64[0];
          if (v66 != 16)
          {
            v73 = *v72;
            v74 = v69 + 1;
            v75 = v73 + 1;
            v76 = v68 + 1;
            v77 = (v66 >> 4) - 1;
            do
            {
              v78 = *(v76 - 1);
              if (v78 >= *v76)
              {
                v78 = *v76;
              }

              if (v23.f64[0] >= v78)
              {
                v23.f64[0] = v78;
              }

              v79 = *v75++;
              v80 = v79;
              if (v23.f64[0] < v79)
              {
                v23.f64[0] = v80;
              }

              *v74++ = *&v23.f64[0];
              ++v76;
              --v77;
            }

            while (v77);
          }
        }

        else
        {
          v23.f64[0] = **__p;
          *v69 = v23.f64[0];
          if (v66 != 16)
          {
            v81 = (*v71 + 8);
            v82 = v69 + 1;
            v83 = (v66 >> 4) - 1;
            do
            {
              v84 = *v81++;
              v85 = v84;
              if (v23.f64[0] < v84)
              {
                v23.f64[0] = v85;
              }

              *v82++ = *&v23.f64[0];
              --v83;
            }

            while (v83);
          }
        }

        ++v67;
        v68 = v69;
      }

      while (v67 != v65);
    }

    v86 = *(v69 + ((v140 - v139) >> 1) - 8);
    if ((v125 & 1) == 0)
    {
LABEL_66:
      LODWORD(v23.f64[0]) = *(*v123 + 4);
      v90 = exp(*&v23.f64[0] * -6.28318531 / 4294967300.0 + v12);
      v91 = atan((v90 - 1.0 / v90) * 0.5);
      v87 = sqrt(v86) * (0.00932288077 / (1.0 / cos(v91 * 57.2957795 / 180.0 * v12))) * 100.0;
      if (v87 >= 0.0)
      {
        v92 = v87;
        if (v87 >= 4.50359963e15)
        {
          goto LABEL_79;
        }

        v93 = (v87 + v87) + 1;
      }

      else
      {
        v92 = v87;
        if (v87 <= -4.50359963e15)
        {
          goto LABEL_79;
        }

        v93 = (v87 + v87) - 1 + (((v87 + v87) - 1) >> 63);
      }

      v92 = (v93 >> 1);
LABEL_79:
      if (v92 >= 9.22337204e18)
      {
        goto LABEL_80;
      }

LABEL_73:
      if (v87 >= 0.0)
      {
        if (v87 < 4.50359963e15)
        {
          v94 = (v87 + v87) + 1;
          goto LABEL_83;
        }
      }

      else if (v87 > -4.50359963e15)
      {
        v94 = (v87 + v87) - 1 + (((v87 + v87) - 1) >> 63);
LABEL_83:
        v87 = (v94 >> 1);
      }

      v95 = v87;
      goto LABEL_85;
    }
  }

  v87 = v86 * 100.0;
  if (v86 * 100.0 >= 0.0)
  {
    v88 = v86 * 100.0;
    if (v87 >= 4.50359963e15)
    {
      goto LABEL_72;
    }

    v89 = (v87 + v87) + 1;
  }

  else
  {
    v88 = v86 * 100.0;
    if (v87 <= -4.50359963e15)
    {
      goto LABEL_72;
    }

    v89 = (v87 + v87) - 1 + (((v87 + v87) - 1) >> 63);
  }

  v88 = (v89 >> 1);
LABEL_72:
  if (v88 < 9.22337204e18)
  {
    goto LABEL_73;
  }

LABEL_80:
  v95 = 0x7FFFFFFFFFFFFFFELL;
LABEL_85:
  operator delete(v69);
  v96 = __p;
  if (__p)
  {
    v97 = v138;
    v98 = __p;
    if (v138 != __p)
    {
      v99 = v138;
      do
      {
        v101 = *(v99 - 3);
        v99 -= 24;
        v100 = v101;
        if (v101)
        {
          *(v97 - 2) = v100;
          operator delete(v100);
        }

        v97 = v99;
      }

      while (v99 != v96);
      v98 = __p;
    }

    v138 = v96;
    operator delete(v98);
  }

  if (v139)
  {
    v140 = v139;
    operator delete(v139);
  }

  if (v142)
  {
    v143 = v142;
    operator delete(v142);
  }

  return v95;
}

void sub_3A9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  operator delete(v37);
  sub_34BE0(&a33);
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
    v40 = *(v38 - 208);
    if (!v40)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v40 = *(v38 - 208);
    if (!v40)
    {
      goto LABEL_3;
    }
  }

  *(v38 - 200) = v40;
  operator delete(v40);
  _Unwind_Resume(a1);
}

void *sub_3AA94(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 2)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = result;
  return result;
}

void sub_3AB58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_3AB74(uint64_t *result, _OWORD *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 4;
    v8 = (v6 >> 4) + 1;
    if (v8 >> 60)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(16 * v7) = *a2;
    v12 = 16 * v7 + 16;
    memcpy(0, v5, v6);
    *v2 = 0;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    result = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    *v4 = *a2;
    *(v2 + 8) = v4 + 1;
  }

  return result;
}

void *sub_3ACA0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_3AE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  *(v9 + 8) = v10;
  sub_35390(&a9);
  _Unwind_Resume(a1);
}

void sub_3AE3C(unsigned int *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v7 = a2 / 100.0;
  v8 = a1[1];
  v9 = exp(v8 * -6.28318531 / 4294967300.0 + 3.14159265);
  v10 = atan((v9 - 1.0 / v9) * 0.5);
  v11 = v7 / (0.00932288077 / (1.0 / cos(v10 * 57.2957795 / 180.0 * 3.14159265)));
  v12 = *a1;
  if (*a1 >= ~*a1)
  {
    v12 = ~v12;
  }

  if (v11 >= v12)
  {
    goto LABEL_28;
  }

  v13 = -2 - v8;
  if (-2 - v8 >= v8)
  {
    v13 = v8;
  }

  if (v11 >= v13)
  {
LABEL_28:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    a4[1] = sub_3B4FC(a4);
    if (a3 >= 1)
    {
      v14 = 0;
      do
      {
        while (1)
        {
          v15 = sub_3B298(a4, 0);
          LODWORD(v16) = *a1;
          v17 = v16;
          v18 = __sincos_stret(v14 * 6.28318531 / a3);
          *&v19 = v11 * v18.__sinval + v17;
          v20 = *&v19;
          LODWORD(v19) = a1[1];
          LODWORD(v21) = (v11 * v18.__cosval + v19);
          v21 = v21 >= 0xFFFFFFFE ? 4294967294 : v21;
          v22 = v20 | (v21 << 32);
          v23 = *(v15 + 8);
          v24 = *(v15 + 16);
          if (v23 >= v24)
          {
            break;
          }

          *v23 = v22;
          *(v23 + 8) = 0x7FFFFFFF;
          *(v15 + 8) = v23 + 12;
          if (a3 == ++v14)
          {
            goto LABEL_26;
          }
        }

        v25 = *v15;
        v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *v15) >> 2);
        v27 = v26 + 1;
        if (v26 + 1 > 0x1555555555555555)
        {
          sub_1794();
        }

        v28 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v25) >> 2);
        if (2 * v28 > v27)
        {
          v27 = 2 * v28;
        }

        if (v28 >= 0xAAAAAAAAAAAAAAALL)
        {
          v29 = 0x1555555555555555;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          if (v29 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v30 = 4 * ((v23 - *v15) >> 2);
        *v30 = v22;
        *(v30 + 8) = 0x7FFFFFFF;
        v31 = 12 * v26 + 12;
        v32 = (12 * v26 - (v23 - v25));
        memcpy(v32, v25, v23 - v25);
        *v15 = v32;
        *(v15 + 8) = v31;
        *(v15 + 16) = 0;
        if (v25)
        {
          operator delete(v25);
        }

        *(v15 + 8) = v31;
        ++v14;
      }

      while (a3 != v14);
    }

LABEL_26:
    v33 = sub_3B298(a4, 0);
    v34 = sub_3B298(a4, 0);
    v35 = sub_37268(v34, 0);
    v37 = *(v33 + 8);
    v36 = *(v33 + 16);
    if (v37 >= v36)
    {
      v40 = *v33;
      v41 = 0xAAAAAAAAAAAAAAABLL * ((v37 - *v33) >> 2);
      v42 = v41 + 1;
      if (v41 + 1 > 0x1555555555555555)
      {
        sub_1794();
      }

      v43 = 0xAAAAAAAAAAAAAAABLL * ((v36 - v40) >> 2);
      if (2 * v43 > v42)
      {
        v42 = 2 * v43;
      }

      if (v43 >= 0xAAAAAAAAAAAAAAALL)
      {
        v44 = 0x1555555555555555;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        if (v44 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v45 = 4 * ((v37 - *v33) >> 2);
      v46 = *v35;
      *(v45 + 8) = *(v35 + 8);
      *v45 = v46;
      v39 = 12 * v41 + 12;
      v47 = (v45 - (v37 - v40));
      memcpy(v47, v40, v37 - v40);
      *v33 = v47;
      *(v33 + 8) = v39;
      *(v33 + 16) = 0;
      if (v40)
      {
        operator delete(v40);
      }
    }

    else
    {
      v38 = *v35;
      *(v37 + 8) = *(v35 + 8);
      *v37 = v38;
      v39 = v37 + 12;
    }

    *(v33 + 8) = v39;
  }
}

uint64_t sub_3B298(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 24 * a2;
}

void sub_3B3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

unint64_t sub_3B4B4(uint64_t a1, unsigned int **a2)
{
  v2 = *a2;
  v3 = a2[1];
  result = 31337;
  if (*a2 != v3)
  {
    do
    {
      v5 = *v2;
      v6 = v2[1];
      v2 += 3;
      v7 = ((result << 6) + 2654435769u + (result >> 2) + v5) ^ result;
      result = (v6 + 2654435769 + (v7 << 6) + (v7 >> 2)) ^ v7;
    }

    while (v2 != v3);
  }

  return result;
}

void *sub_3B4FC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = v2 - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3) + 1;
  if (v4 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - v1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = (8 * (v3 >> 3));
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  v8 = v7 + 3;
  v9 = v7 - v3;
  if (v1 != v2)
  {
    v10 = v1;
    v11 = v9;
    do
    {
      *v11 = *v10;
      *(v11 + 2) = v10[2];
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      v10 += 3;
      v11 += 24;
    }

    while (v10 != v2);
    do
    {
      v12 = *v1;
      if (*v1)
      {
        v1[1] = v12;
        operator delete(v12);
      }

      v1 += 3;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v9;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v8;
}

BOOL sub_3B658(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6)
{
  v6 = *a1;
  v7 = *a2;
  if (*a1 == *a2)
  {
    while (1)
    {
      v8 = a3;
      v9 = a4;
      v10 = a6;
      v12 = a1[1];
      v11 = a2[1];
      if (v12 != v11)
      {
        break;
      }

      if (*a3 == *a4)
      {
        v22 = a3[1];
        if (v22 == a4[1])
        {
          v23 = v12 == v22 && v6 == *a3;
          v24 = NAN;
          if (v23)
          {
            v24 = 0.0;
          }

          *a6 = v24;
          *a5 = v24;
          return *a1 == *a3 && a1[1] == a3[1];
        }
      }

      v6 = *a3;
      v7 = *a4;
      a3 = a1;
      a4 = a2;
      a6 = a5;
      a5 = v10;
      a2 = v9;
      a1 = v8;
      if (*v8 != *v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
    v8 = a1;
    v9 = a2;
    v10 = a5;
LABEL_3:
    v11 = v9[1];
    v12 = v8[1];
    v8 = a3;
    v9 = a4;
    a5 = v10;
    v10 = a6;
  }

  v13 = v7 - v6;
  v14 = *v8;
  v15 = v9[1];
  v16 = *v9 - *v8;
  v17 = v8[1];
  v18 = v6 - *v8;
  v19 = v13 * (v12 - v17) - (v11 - v12) * v18;
  v20 = v13 * (v15 - v17) - (v11 - v12) * v16;
  if (v19 == 0.0 && v20 == 0.0)
  {
    if (v14 != *v9 || v17 != v15)
    {
      operator new();
    }

    v26 = (v17 - v12) / (v11 - v12);
    v27 = (v14 - v6) / v13;
    if (v13 == 0.0)
    {
      v27 = v26;
    }

    *a5 = v27;
    *v10 = 0.0;
  }

  else
  {
    if (v20 == 0.0)
    {
      result = 0;
      *v10 = NAN;
      *a5 = NAN;
      return result;
    }

    *a5 = (v16 * (v12 - v17) - v18 * (v15 - v17)) / v20;
    *v10 = v19 / v20;
  }

  return 1;
}

float64x2_t sub_3B918(float64x2_t *a1, float64x2_t *a2, double *a3, double *a4, float64x2_t *a5)
{
  v10 = 0.0;
  if (sub_3B658(a1->f64, a2->f64, a3, a4, &v10, &v9))
  {
    result = vaddq_f64(vmulq_n_f64(*a1, 1.0 - v10), vmulq_n_f64(*a2, v10));
    *a5 = result;
  }

  return result;
}

uint64_t sub_3B988(unsigned int *a1, unsigned int *a2, void *a3, void *a4, uint64_t a5)
{
  v19 = 0.0;
  v20 = 0.0;
  v8.i64[0] = *a1;
  v8.i64[1] = HIDWORD(*a1);
  v9 = vcvtq_f64_u64(v8);
  v8.i64[0] = *a2;
  v8.i64[1] = HIDWORD(*a2);
  v17 = vcvtq_f64_u64(v8);
  v18 = v9;
  v8.i64[0] = *a3;
  v8.i64[1] = HIDWORD(*a3);
  v10 = vcvtq_f64_u64(v8);
  v8.i64[0] = *a4;
  v8.i64[1] = HIDWORD(*a4);
  v15 = vcvtq_f64_u64(v8);
  v16 = v10;
  if (sub_3B658(v18.f64, v17.f64, v16.f64, v15.f64, &v20, &v19) && (v20 >= 0.0 ? (v11 = v20 > 1.0) : (v11 = 1), !v11 && v19 >= 0.0 && v19 <= 1.0))
  {
    v14 = sub_6EFC0(a1, a2, v20);
    result = 1;
  }

  else
  {
    result = 0;
    v13 = 0x7FFFFFFF;
    v14 = -1;
  }

  *a5 = v14;
  *(a5 + 8) = v13;
  return result;
}

BOOL sub_3BA74(void *a1, void *a2, void *a3, void *a4)
{
  v9 = 0.0;
  v10 = 0.0;
  v4.i64[0] = *a1;
  v4.i64[1] = HIDWORD(*a1);
  v5 = vcvtq_f64_u64(v4);
  v4.i64[0] = *a2;
  v4.i64[1] = HIDWORD(*a2);
  v13 = vcvtq_f64_u64(v4);
  v14 = v5;
  v4.i64[0] = *a3;
  v4.i64[1] = HIDWORD(*a3);
  v6 = vcvtq_f64_u64(v4);
  v4.i64[0] = *a4;
  v4.i64[1] = HIDWORD(*a4);
  v11 = vcvtq_f64_u64(v4);
  v12 = v6;
  result = sub_3B658(v14.f64, v13.f64, v12.f64, v11.f64, &v10, &v9);
  if (result)
  {
    if (v10 < 0.0 || v10 > 1.0)
    {
      return 0;
    }

    else
    {
      return v9 >= 0.0 && v9 <= 1.0;
    }
  }

  return result;
}

uint64_t sub_3BB34(unsigned int *a1, unsigned int *a2, void *a3, char **a4)
{
  v5 = *a3;
  v4 = a3[1];
  if (*a3 == v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v31 = a3[1];
    do
    {
      v11 = *v5;
      v10 = v5[1];
      v12 = (*v5 + 12);
      if (*v5 != v10 && v12 != v10)
      {
        do
        {
          v36 = 0.0;
          v37 = 0.0;
          v15.i64[0] = *a1;
          v15.i64[1] = HIDWORD(*a1);
          v16 = vcvtq_f64_u64(v15);
          v15.i64[0] = *a2;
          v15.i64[1] = HIDWORD(*a2);
          v34 = vcvtq_f64_u64(v15);
          v35 = v16;
          v15.i64[0] = *v11;
          v15.i64[1] = HIDWORD(*v11);
          v17 = vcvtq_f64_u64(v15);
          v15.i64[0] = *v12;
          v15.i64[1] = HIDWORD(*v12);
          v32 = vcvtq_f64_u64(v15);
          v33 = v17;
          if (sub_3B658(v35.f64, v34.f64, v33.f64, v32.f64, &v37, &v36))
          {
            v18 = v37 < 0.0 || v37 > 1.0;
            if (!v18 && v36 >= 0.0 && v36 <= 1.0)
            {
              v19 = sub_6EFC0(a1, a2, v37);
              v22 = *a4;
              v21 = a4[1];
              v23 = *a4;
              if (*a4 != v21)
              {
                v23 = *a4;
                while (*v23 != v19 || *(v23 + 4) != __PAIR64__(v20, HIDWORD(v19)))
                {
                  v23 += 12;
                  if (v23 == v21)
                  {
                    goto LABEL_27;
                  }
                }
              }

              if (v23 == v21)
              {
LABEL_27:
                v24 = a4[2];
                if (v21 < v24)
                {
                  *v21 = v19;
                  *(v21 + 2) = v20;
                  v14 = (v21 + 12);
                }

                else
                {
                  v25 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v22) >> 2) + 1;
                  if (v25 > 0x1555555555555555)
                  {
                    sub_1794();
                  }

                  v26 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v22) >> 2);
                  if (2 * v26 > v25)
                  {
                    v25 = 2 * v26;
                  }

                  if (v26 >= 0xAAAAAAAAAAAAAAALL)
                  {
                    v27 = 0x1555555555555555;
                  }

                  else
                  {
                    v27 = v25;
                  }

                  if (v27)
                  {
                    if (v27 <= 0x1555555555555555)
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v28 = 4 * ((v21 - v22) >> 2);
                  *v28 = v19;
                  *(v28 + 8) = v20;
                  v14 = v28 + 12;
                  v29 = (v28 - (v21 - v22));
                  memcpy(v29, v22, v21 - v22);
                  *a4 = v29;
                  a4[1] = v14;
                  a4[2] = 0;
                  if (v22)
                  {
                    operator delete(v22);
                  }

                  v4 = v31;
                }

                a4[1] = v14;
              }

              v9 = 1;
            }
          }

          v11 = (v11 + 12);
          v12 = (v12 + 12);
        }

        while (v12 != v10);
      }

      v5 += 3;
    }

    while (v5 != v4);
  }

  return v9 & 1;
}

uint64_t sub_3BDD4(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  if (*a3 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = v3[1];
      v9 = (*v3 + 12);
      if (*v3 != v8 && v9 != v8)
      {
        do
        {
          v21 = 0.0;
          v22 = 0.0;
          v11.i64[0] = *a1;
          v11.i64[1] = HIDWORD(*a1);
          v12 = vcvtq_f64_u64(v11);
          v11.i64[0] = *a2;
          v11.i64[1] = HIDWORD(*a2);
          v19 = vcvtq_f64_u64(v11);
          v20 = v12;
          v13 = *(v9 - 12);
          v11.i64[0] = v13;
          v11.i64[1] = HIDWORD(v13);
          v14 = vcvtq_f64_u64(v11);
          v11.i64[0] = *v9;
          v11.i64[1] = HIDWORD(*v9);
          v17 = vcvtq_f64_u64(v11);
          v18 = v14;
          if (sub_3B658(v20.f64, v19.f64, v18.f64, v17.f64, &v22, &v21))
          {
            v15 = v22 < 0.0 || v22 > 1.0;
            if (!v15 && v21 >= 0.0 && v21 <= 1.0)
            {
              sub_6EFC0(a1, a2, v22);
              v7 = 1;
            }
          }

          v9 = (v9 + 12);
        }

        while (v9 != v8);
      }

      v3 += 3;
    }

    while (v3 != v4);
  }

  return v7 & 1;
}

uint64_t sub_3BF04(unsigned int *a1, unsigned int *a2, uint64_t a3, char **a4)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  if (*a3 == v5)
  {
    return 0;
  }

  v9 = 0;
  do
  {
    v9 |= sub_3BB34(a1, a2, v4, a4);
    v4 += 3;
  }

  while (v4 != v5);
  return v9 & 1;
}

void sub_3BF90(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = (a1[1] - *a1) >> 4;
  if (v2 != -2)
  {
    if (!((v2 + 2) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  operator new();
}

void sub_3C16C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_3C1F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3C214(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

float64_t sub_3C274(void *a1, uint64_t a2)
{
  v2 = *a1 + 16 * *a2;
  if (*(a2 + 16) == 1)
  {
    v3 = *v2;
  }

  else
  {
    v4 = *v2;
    v3 = *(v2 + 16);
    v5 = vsubq_f64(v3, *v2);
    v6 = vmulq_f64(v5, v5);
    v7 = vaddvq_f64(v6);
    if (v7 == 0.0)
    {
      goto LABEL_7;
    }

    if (v7 <= 0.0)
    {
      v7 = -v7;
    }

    if (v7 < 2.22044605e-16)
    {
LABEL_7:
      v8 = 0.0;
    }

    else
    {
      v12 = vmulq_f64(v5, vsubq_f64(*(a1[3] + 16 * *(a2 + 8)), v4));
      *&v8 = *&vdivq_f64(vaddq_f64(v12, vdupq_laneq_s64(v12, 1)), vaddq_f64(v6, vdupq_laneq_s64(v6, 1)));
    }

    if (v8 <= 1.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1.0;
    }

    v10 = v8 < 0.0;
    v11 = 0.0;
    if (!v10)
    {
      v11 = v9;
    }

    *&v3.f64[0] = *&vaddq_f64(vmulq_n_f64(v3, v11), vmulq_n_f64(v4, 1.0 - v11));
  }

  return v3.f64[0];
}

float64x2_t sub_3C32C(void *a1, uint64_t a2)
{
  v2 = a1[3] + 16 * *(a2 + 8);
  if (*(a2 + 16))
  {
    v4 = *v2;
    result = *(v2 + 16);
    v5 = vsubq_f64(result, *v2);
    v6 = vmulq_f64(v5, v5);
    v7 = vaddvq_f64(v6);
    if (v7 == 0.0)
    {
      goto LABEL_6;
    }

    if (v7 <= 0.0)
    {
      v7 = -v7;
    }

    if (v7 < 2.22044605e-16)
    {
LABEL_6:
      v8 = 0.0;
    }

    else
    {
      v12 = vmulq_f64(v5, vsubq_f64(*(*a1 + 16 * *a2), v4));
      *&v8 = *&vdivq_f64(vaddq_f64(v12, vdupq_laneq_s64(v12, 1)), vaddq_f64(v6, vdupq_laneq_s64(v6, 1)));
    }

    if (v8 <= 1.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1.0;
    }

    v10 = v8 < 0.0;
    v11 = 0.0;
    if (!v10)
    {
      v11 = v9;
    }

    *&result.f64[0] = *&vaddq_f64(vmulq_n_f64(result, v11), vmulq_n_f64(v4, 1.0 - v11));
  }

  else
  {
    return *v2;
  }

  return result;
}

uint64_t sub_3C3E0(uint64_t *a1)
{
  if (a1[11])
  {
    return sub_3CD2C(a1);
  }

  else
  {
    return sub_3C3F0(a1);
  }
}

uint64_t sub_3C3F0(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  memset(v94, 0, 23);
  memset(v93, 0, 23);
  v6 = v4 - v5;
  if (v6)
  {
    if ((v6 >> 4) <= 0x249249249249249)
    {
      operator new();
    }

    sub_1794();
  }

  v91 = 0;
  v92 = 0;
  __p = 0;
  *v94 = &__p;
  v94[8] = 0;
  if (v2 != v3)
  {
    if (((v2 - v3) >> 4) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  p_p = &__p;
  v7 = __p;
  v8 = *__p;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 1;
  v9 = xmmword_2266630;
  *(v8 + 80) = xmmword_2266630;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  v10 = *v7;
  *(v10 + 16) = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 24) = xmmword_2266630;
  *(v10 + 40) = 0;
  *(v10 + 48) = 0;
  v88[0] = a1;
  v88[1] = &p_p;
  v11 = *(a1 + 8);
  if (v11 == *a1)
  {
    v21 = *(a1 + 8);
  }

  else
  {
    v12 = 0;
    v13 = (v11 - *a1) >> 4;
    do
    {
      v14 = v12 + 1;
      v15 = *(a1 + 32) - *(a1 + 24);
      if (v15)
      {
        v16 = 0;
        v17 = v15 >> 4;
        do
        {
          *&v86 = v12;
          *(&v86 + 1) = v16;
          v87 = 1;
          *v94 = v12 + 1;
          *&v94[8] = v16;
          v94[16] = 1;
          ++v16;
          v93[0] = v12;
          v93[1] = v16;
          LOBYTE(v93[2]) = 0;
          v18 = sub_3DF3C(v88, &v86, v94, v9);
          v19 = sub_3DF3C(v88, &v86, v93, v18);
          *&v86 = v12;
          *(&v86 + 1) = v16 - 1;
          v87 = 0;
          *v94 = v12 + 1;
          *&v94[8] = v16 - 1;
          v94[16] = 1;
          v93[0] = v12;
          v93[1] = v16;
          LOBYTE(v93[2]) = 0;
          v20 = sub_3DF3C(v88, &v86, v94, v19);
          v9 = sub_3DF3C(v88, &v86, v93, v20);
        }

        while (v16 != v17);
      }

      ++v12;
    }

    while (v14 != v13);
    v11 = *a1;
    v21 = *(a1 + 8);
    v7 = *p_p;
  }

  v22 = ((v21 - v11) >> 4) - 2;
  v23 = ((*(a1 + 32) - *(a1 + 24)) >> 4) - 2;
  v93[0] = v22;
  v93[1] = v23;
  LOBYTE(v93[2]) = 1;
  *&v86 = v22;
  *(&v86 + 1) = v23;
  v87 = 0;
  v24 = (v7[3 * v22] + 112 * v23);
  v25 = v24[13];
  if (v25 == 0.0)
  {
    v26 = v24[12];
  }

  else
  {
    v26 = v24[12] / v25;
  }

  v27 = v24[6];
  if (v27 == 0.0)
  {
    v28 = v24[5];
  }

  else
  {
    v28 = v24[5] / v27;
  }

  v29 = v26 < v28;
  v30 = &v86;
  if (v26 < v28)
  {
    v30 = v93;
  }

  *v85 = *(v30 + 17);
  *&v85[3] = *(v30 + 5);
  v31 = &v24[7 * (v26 < v28)];
  v32 = *(v31 + 5);
  *(a1 + 104) = *(v31 + 3);
  *(a1 + 120) = v32;
  v33 = *(a1 + 56);
  *(a1 + 64) = v33;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 72) - v33) >> 3) < v23 + v22)
  {
    if ((v23 + v22) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *v94 = *v85;
  *&v94[3] = *&v85[3];
  v34 = 1;
  if (v22 | v23)
  {
    while (1)
    {
      v36 = *(a1 + 56);
      if (v36 != v33)
      {
        break;
      }

LABEL_44:
      v48 = *(a1 + 72);
      if (v33 < v48)
      {
        *v33 = v22;
        v33[1] = v23;
        *(v33 + 16) = v29;
        *(v33 + 17) = *v94;
        *(v33 + 5) = *&v94[3];
        v33 += 3;
      }

      else
      {
        v49 = 0xAAAAAAAAAAAAAAABLL * (v33 - v36);
        v50 = v49 + 1;
        if (v49 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v51 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v36) >> 3);
        if (2 * v51 > v50)
        {
          v50 = 2 * v51;
        }

        if (v51 >= 0x555555555555555)
        {
          v52 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v52 = v50;
        }

        if (v52)
        {
          if (v52 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v53 = v33;
        v54 = 8 * (v33 - v36);
        *v54 = v22;
        *(v54 + 8) = v23;
        *(v54 + 16) = v29;
        *(v54 + 17) = *v94;
        *(v54 + 20) = *&v94[3];
        v33 = (v54 + 24);
        v55 = 24 * v49 - (v53 - v36);
        memcpy((v54 - (v53 - v36)), v36, v53 - v36);
        *(a1 + 56) = v55;
        *(a1 + 64) = v33;
        *(a1 + 72) = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      *(a1 + 64) = v33;
      v35 = *(*p_p + 3 * v22) + 112 * v23 + 56 * v29;
      v22 = *v35;
      v23 = *(v35 + 8);
      v29 = *(v35 + 16);
      if (*v35 == 0)
      {
        goto LABEL_58;
      }
    }

    if (*(v33 - 8) != v29)
    {
      v45 = 1;
LABEL_43:
      v34 &= v45;
      goto LABEL_44;
    }

    if (v29)
    {
      v37 = v33 - 3;
      v38 = (*(a1 + 24) + 16 * v23);
      v39 = *a1;
      v40 = (*a1 + 16 * v22);
      v41 = *v38;
      v42 = vsubq_f64(v38[1], *v38);
      v43 = vmulq_f64(v42, v42);
      v44 = vaddvq_f64(v43);
      if (v44 == 0.0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v46 = (*a1 + 16 * v22);
      v39 = *(a1 + 24);
      v40 = (v39 + 16 * v23);
      v37 = v33 - 2;
      v41 = *v46;
      v42 = vsubq_f64(v46[1], *v46);
      v43 = vmulq_f64(v42, v42);
      v44 = vaddvq_f64(v43);
      if (v44 == 0.0)
      {
        goto LABEL_41;
      }
    }

    if (v44 <= 0.0)
    {
      v44 = -v44;
    }

    if (v44 >= 2.22044605e-16)
    {
      v56 = (v39 + 16 * *v37);
      v57.f64[0] = *v40;
      v58.f64[0] = *v56;
      v58.f64[1] = v40[1];
      v59 = vmulq_f64(v42, vsubq_f64(v58, v41));
      v57.f64[1] = v56[1];
      v60 = vmulq_f64(v42, vsubq_f64(v57, v41));
      v47 = vdivq_f64(vaddq_f64(v59, vextq_s8(v60, v60, 8uLL)), vdupq_lane_s64(*&vaddq_f64(v43, vdupq_laneq_s64(v43, 1)), 0));
      goto LABEL_42;
    }

LABEL_41:
    v47 = 0uLL;
LABEL_42:
    v45 = vmovn_s64(vcgeq_f64(v47, vdupq_laneq_s64(v47, 1))).u8[0];
    goto LABEL_43;
  }

LABEL_58:
  v61 = *(a1 + 56);
  if (v61 != v33)
  {
    v62 = v33 - 3;
    if ((v33 - 3) > v61)
    {
      v63 = v61 + 24;
      do
      {
        *v94 = *(v63 - 24);
        v64 = *v94;
        *&v94[16] = *(v63 - 8);
        v65 = v94[16];
        v66 = *(v62 + 16);
        *(v63 - 24) = *v62;
        *(v63 - 8) = v66;
        *(v62 + 16) = v65;
        *v62 = v64;
        v62 -= 3;
        v67 = v63 >= v62;
        v63 += 24;
      }

      while (!v67);
    }
  }

  *(a1 + 88) = 0;
  sub_3D41C(a1 + 80, ((*(a1 + 8) - *a1) >> 4) + ((*(a1 + 32) - *(a1 + 24)) >> 4) - 4);
  v68 = *(a1 + 56);
  for (i = *(a1 + 64); v68 != i; v68 += 24)
  {
    while (1)
    {
      v70 = *(v68 + 16);
      v71 = *(a1 + 88);
      v72 = *(a1 + 96);
      if (v71 == v72 << 6)
      {
        if ((v71 + 1) < 0)
        {
          sub_1794();
        }

        v73 = v72 << 7;
        if (v73 <= (v71 & 0x3FFFFFFFFFFFFFC0) + 64)
        {
          v73 = (v71 & 0x3FFFFFFFFFFFFFC0) + 64;
        }

        if (v71 <= 0x3FFFFFFFFFFFFFFELL)
        {
          v74 = v73;
        }

        else
        {
          v74 = 0x7FFFFFFFFFFFFFFFLL;
        }

        sub_3D41C(a1 + 80, v74);
        v71 = *(a1 + 88);
      }

      *(a1 + 88) = v71 + 1;
      v75 = *(a1 + 80);
      v76 = v71 >> 6;
      v77 = 1 << v71;
      if (v70)
      {
        break;
      }

      *(v75 + 8 * v76) &= ~v77;
      v68 += 24;
      if (v68 == i)
      {
        goto LABEL_76;
      }
    }

    *(v75 + 8 * v76) |= v77;
  }

LABEL_76:
  v78 = __p;
  if (__p)
  {
    v79 = v91;
    v80 = __p;
    if (v91 != __p)
    {
      v81 = v91;
      do
      {
        v83 = *(v81 - 3);
        v81 -= 24;
        v82 = v83;
        if (v83)
        {
          *(v79 - 2) = v82;
          operator delete(v82);
        }

        v79 = v81;
      }

      while (v81 != v78);
      v80 = __p;
    }

    v91 = v78;
    operator delete(v80);
  }

  return v34 & 1;
}

void sub_3CCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  v18 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v18;
    operator delete(v18);
  }

  sub_35390(va);
  if (v15)
  {
    operator delete(v15);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3CD2C(uint64_t *a1)
{
  *(a1 + 13) = xmmword_2266630;
  a1[15] = 0;
  a1[16] = 0;
  v2 = a1[7];
  a1[8] = v2;
  v3 = ((a1[1] - *a1) >> 4) + ((a1[4] - a1[3]) >> 4) - 4;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[9] - v2) >> 3) < v3)
  {
    if (v3 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_101:
    sub_1794();
  }

  v5 = a1[10];
  v4 = a1[11];
  v6 = v4 & 0x3F;
  if (v4 > 0x3F || (v4 & 0x3F) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v7 = 1;
    v12 = 1;
    v13 = &v5[v4 >> 6];
    v102 = v13;
    while (1)
    {
      v14 = *v5 & (1 << v11);
      v15 = v14 != 0;
      if (v14)
      {
        v16 = v10 + 1;
      }

      else
      {
        v16 = v10;
      }

      v106 = v9;
      if ((*v5 & (1 << v11)) == 0)
      {
        ++v9;
      }

      v112 = v16;
      v111 = v9;
      v17 = a1[8];
      v18 = a1[9];
      if (v17 >= v18)
      {
        v30 = v11;
        v31 = v6;
        v32 = v5;
        v33 = a1[7];
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v33) >> 3) + 1;
        if (v34 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_101;
        }

        v35 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v33) >> 3);
        if (2 * v35 > v34)
        {
          v34 = 2 * v35;
        }

        if (v35 >= 0x555555555555555)
        {
          v36 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v36 = v34;
        }

        v104 = v14;
        v105 = v10;
        v103 = v12;
        if (v36)
        {
          if (v36 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v64 = 8 * ((v17 - v33) >> 3);
        *v64 = v16;
        *(v64 + 8) = v9;
        *(v64 + 16) = v15;
        v65 = v64 + 24;
        v66 = (v64 - (v17 - v33));
        memcpy(v66, v33, v17 - v33);
        a1[7] = v66;
        a1[8] = v65;
        a1[9] = 0;
        if (v33)
        {
          operator delete(v33);
        }

        v5 = v32;
        v6 = v31;
        v11 = v30;
        v13 = v102;
        v19 = v15;
        v14 = v104;
        v10 = v105;
        v12 = v103;
        a1[8] = v65;
        if (v15 == v103)
        {
LABEL_16:
          v20 = v106;
          if (v12)
          {
            v21 = (a1[3] + 16 * v106);
            v22 = *a1;
            v23 = (*a1 + 16 * v10);
            v24 = &v112;
            v25 = *a1;
            v26 = *v21;
            v27 = vsubq_f64(v21[1], *v21);
            v28 = vmulq_f64(v27, v27);
            v29 = vaddvq_f64(v28);
            if (v29 == 0.0)
            {
              goto LABEL_32;
            }

LABEL_29:
            if (v29 <= 0.0)
            {
              v29 = -v29;
            }

            if (v29 >= 2.22044605e-16)
            {
              v94 = (v25 + 16 * *v24);
              v95.f64[0] = *v23;
              v96.f64[0] = *v94;
              v96.f64[1] = v23[1];
              v97 = vmulq_f64(v27, vsubq_f64(v96, v26));
              v95.f64[1] = v94[1];
              v98 = vmulq_f64(v27, vsubq_f64(v95, v26));
              v38 = vdivq_f64(vaddq_f64(v97, vextq_s8(v98, v98, 8uLL)), vdupq_lane_s64(*&vaddq_f64(v28, vdupq_laneq_s64(v28, 1)), 0));
            }

            else
            {
LABEL_32:
              v38 = 0uLL;
            }

            v7 &= vmovn_s64(vcgeq_f64(v38, vdupq_laneq_s64(v38, 1))).u8[0];
            v39 = v22 + 16 * v10;
            if (v12)
            {
              goto LABEL_64;
            }

            goto LABEL_34;
          }

          v22 = *a1;
          v37 = (*a1 + 16 * v10);
          v25 = a1[3];
          v23 = (v25 + 16 * v106);
          v24 = &v111;
          v26 = *v37;
          v27 = vsubq_f64(v37[1], *v37);
          v28 = vmulq_f64(v27, v27);
          v29 = vaddvq_f64(v28);
          if (v29 != 0.0)
          {
            goto LABEL_29;
          }

          goto LABEL_32;
        }
      }

      else
      {
        *v17 = v16;
        *(v17 + 8) = v9;
        *(v17 + 16) = v15;
        v19 = v14 != 0;
        a1[8] = v17 + 24;
        if (v15 == v12)
        {
          goto LABEL_16;
        }
      }

      v22 = *a1;
      v39 = *a1 + 16 * v10;
      v20 = v106;
      if (v12)
      {
LABEL_64:
        v46 = 1;
        v110 = *v39;
        v49 = v112;
        v50 = (v22 + 16 * v112);
        if (v14)
        {
          goto LABEL_65;
        }

        goto LABEL_46;
      }

LABEL_34:
      v41 = *v39;
      v40 = *(v39 + 16);
      v42 = vsubq_f64(v40, *v39);
      v43 = vmulq_f64(v42, v42);
      v44 = vaddvq_f64(v43);
      if (v44 == 0.0)
      {
        goto LABEL_38;
      }

      if (v44 <= 0.0)
      {
        v44 = -v44;
      }

      if (v44 < 2.22044605e-16)
      {
LABEL_38:
        v45 = 0.0;
      }

      else
      {
        v99 = vmulq_f64(v42, vsubq_f64(*(a1[3] + 16 * v20), v41));
        *&v45 = *&vdivq_f64(vaddq_f64(v99, vdupq_laneq_s64(v99, 1)), vaddq_f64(v43, vdupq_laneq_s64(v43, 1)));
      }

      v46 = 0;
      if (v45 <= 1.0)
      {
        v47 = v45;
      }

      else
      {
        v47 = 1.0;
      }

      if (v45 >= 0.0)
      {
        v48 = v47;
      }

      else
      {
        v48 = 0.0;
      }

      v110 = vaddq_f64(vmulq_n_f64(v40, v48), vmulq_n_f64(v41, 1.0 - v48));
      v49 = v112;
      v50 = (v22 + 16 * v112);
      if (v14)
      {
LABEL_65:
        v109 = *v50;
        v59 = a1[3];
        v60 = (v59 + 16 * v20);
        if ((v46 & 1) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_66;
      }

LABEL_46:
      v52 = *v50;
      v51 = v50[1];
      v53 = vsubq_f64(v51, *v50);
      v54 = vmulq_f64(v53, v53);
      v55 = vaddvq_f64(v54);
      if (v55 == 0.0)
      {
        goto LABEL_50;
      }

      if (v55 <= 0.0)
      {
        v55 = -v55;
      }

      if (v55 < 2.22044605e-16)
      {
LABEL_50:
        v56 = 0.0;
      }

      else
      {
        v101 = vmulq_f64(v53, vsubq_f64(*(a1[3] + 16 * v111), v52));
        *&v56 = *&vdivq_f64(vaddq_f64(v101, vdupq_laneq_s64(v101, 1)), vaddq_f64(v54, vdupq_laneq_s64(v54, 1)));
      }

      if (v56 <= 1.0)
      {
        v57 = v56;
      }

      else
      {
        v57 = 1.0;
      }

      if (v56 >= 0.0)
      {
        v58 = v57;
      }

      else
      {
        v58 = 0.0;
      }

      v109 = vaddq_f64(vmulq_n_f64(v51, v58), vmulq_n_f64(v52, 1.0 - v58));
      v59 = a1[3];
      v60 = (v59 + 16 * v20);
      if ((v46 & 1) == 0)
      {
LABEL_58:
        v108 = *v60;
        v9 = v111;
        v61 = (v59 + 16 * v111);
        if (v14)
        {
          goto LABEL_78;
        }

        goto LABEL_59;
      }

LABEL_66:
      v68 = *v60;
      v67 = v60[1];
      v69 = vsubq_f64(v67, *v60);
      v70 = vmulq_f64(v69, v69);
      v71 = vaddvq_f64(v70);
      if (v71 == 0.0)
      {
        goto LABEL_70;
      }

      if (v71 <= 0.0)
      {
        v71 = -v71;
      }

      if (v71 < 2.22044605e-16)
      {
LABEL_70:
        v72 = 0.0;
      }

      else
      {
        v100 = vmulq_f64(v69, vsubq_f64(*v39, v68));
        *&v72 = *&vdivq_f64(vaddq_f64(v100, vdupq_laneq_s64(v100, 1)), vaddq_f64(v70, vdupq_laneq_s64(v70, 1)));
      }

      if (v72 <= 1.0)
      {
        v73 = v72;
      }

      else
      {
        v73 = 1.0;
      }

      if (v72 >= 0.0)
      {
        v74 = v73;
      }

      else
      {
        v74 = 0.0;
      }

      v108 = vaddq_f64(vmulq_n_f64(v67, v74), vmulq_n_f64(v68, 1.0 - v74));
      v9 = v111;
      v61 = (v59 + 16 * v111);
      if (v14)
      {
LABEL_78:
        v76 = *v61;
        v75 = v61[1];
        v77 = vsubq_f64(v75, *v61);
        v78 = vmulq_f64(v77, v77);
        v79 = vaddvq_f64(v78);
        if (v79 == 0.0)
        {
          goto LABEL_82;
        }

        if (v79 <= 0.0)
        {
          v79 = -v79;
        }

        if (v79 < 2.22044605e-16)
        {
LABEL_82:
          v80 = 0.0;
        }

        else
        {
          v93 = vmulq_f64(v77, vsubq_f64(*v50, v76));
          *&v80 = *&vdivq_f64(vaddq_f64(v93, vdupq_laneq_s64(v93, 1)), vaddq_f64(v78, vdupq_laneq_s64(v78, 1)));
        }

        v62 = v49;
        if (v80 <= 1.0)
        {
          v81 = v80;
        }

        else
        {
          v81 = 1.0;
        }

        if (v80 >= 0.0)
        {
          v82 = v81;
        }

        else
        {
          v82 = 0.0;
        }

        v63 = vaddq_f64(vmulq_n_f64(v75, v82), vmulq_n_f64(v76, 1.0 - v82));
        goto LABEL_90;
      }

LABEL_59:
      v62 = v49;
      v63 = *v61;
LABEL_90:
      v107 = v63;
      v83 = sub_42F7C(&v110, &v109, &v108, &v107);
      v84 = vsubq_f64(v110, v109);
      v85 = vsubq_f64(v108, v107);
      v86 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v84, v84), vmulq_f64(v85, v85)));
      *&v87.f64[1] = a1[14];
      v87.f64[0] = v83;
      *&v88.f64[0] = a1[13];
      v88.f64[1] = v89;
      v90 = vcgtq_f64(v88, v87);
      v88.f64[0] = v83;
      v91 = vbslq_s8(v90, v88, *(a1 + 13));
      *(a1 + 13) = v91;
      *v91.i64 = v92 * vaddvq_f64(v86);
      *(a1 + 15) = vaddq_f64(*(a1 + 15), vzip1q_s64(v91, vaddq_f64(v86, vdupq_laneq_s64(v86, 1))));
      v5 += v11 == 63;
      if (v11 == 63)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v12 = v19;
      v10 = v62;
      if (v5 == v13)
      {
        v12 = v19;
        if (v11 == v6)
        {
          return v7 & 1;
        }
      }
    }
  }

  v7 = 1;
  return v7 & 1;
}

uint64_t sub_3D41C(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_3D548(uint64_t *a1@<X0>, int a2@<W1>, float64x2_t **a3@<X8>)
{
  v3 = a2;
  v5 = a1[7];
  v6 = a1[8];
  v7 = v5 + 24;
  if (v5 != v6 && v7 != v6)
  {
    v20 = 0;
    while (1)
    {
      v34 = *(v7 - 8);
      if (v34 == *(v7 + 16))
      {
        if (*(v7 - 8))
        {
          v25 = a1[3];
          v28 = *(v7 - 24);
          v23 = *(v7 - 16);
          v35 = (v25 + 16 * v23);
          v21 = *a1;
          v26 = (*a1 + 16 * v28);
          v22 = v23;
          v27 = v7;
          v29 = *a1;
          v30 = *v35;
          v31 = vsubq_f64(v35[1], *v35);
          v32 = vmulq_f64(v31, v31);
          v33 = vaddvq_f64(v32);
          if (v33 != 0.0)
          {
LABEL_31:
            if (v33 <= 0.0)
            {
              v33 = -v33;
            }

            if (v34 != v3 && v33 >= 2.22044605e-16)
            {
              v36 = vdivq_f64(vpaddq_f64(vmulq_f64(v31, vsubq_f64(*v26, v30)), vmulq_f64(v31, vsubq_f64(*(v29 + 16 * *v27), v30))), vdupq_lane_s64(*&vaddq_f64(v32, vdupq_laneq_s64(v32, 1)), 0));
              if ((vmovn_s64(vcgeq_f64(vdupq_laneq_s64(v36, 1), v36)).u8[0] & 1) == 0)
              {
                v37 = (v25 + 16 * v22);
                v38 = (v21 + 16 * v28);
                v39 = v34 == 0;
                if (*(v7 - 8))
                {
                  v40 = v7;
                }

                else
                {
                  v40 = (v5 + 32);
                }

                if (v39)
                {
                  v41 = v25;
                }

                else
                {
                  v41 = v21;
                }

                if (v39)
                {
                  v25 = v21;
                  v42 = v37;
                }

                else
                {
                  v42 = v38;
                }

                v43 = (v25 + 16 * v23);
                v44 = *v43;
                v45 = vsubq_f64(v43[1], *v43);
                v46 = vmulq_f64(v45, v45);
                v47 = vaddvq_f64(v46);
                if (v47 == 0.0)
                {
                  goto LABEL_49;
                }

                if (v47 <= 0.0)
                {
                  v47 = -v47;
                }

                if (v47 < 2.22044605e-16)
                {
LABEL_49:
                  v48.f64[0] = 0.0;
                  v49 = 0.0;
                }

                else
                {
                  v50 = (v41 + 16 * *v40);
                  v51.f64[0] = *v42;
                  v52.f64[0] = *v50;
                  v52.f64[1] = v42[1];
                  v53 = vmulq_f64(v45, vsubq_f64(v52, v44));
                  v51.f64[1] = v50[1];
                  v54 = vmulq_f64(v45, vsubq_f64(v51, v44));
                  v48 = vdivq_f64(vaddq_f64(v53, vextq_s8(v54, v54, 8uLL)), vdupq_lane_s64(*&vaddq_f64(v46, vdupq_laneq_s64(v46, 1)), 0));
                  v49 = v48.f64[1];
                }

                v55 = v20;
                v56 = v20 >> 4;
                if ((v56 + 1) >> 60)
                {
                  sub_1794();
                }

                v95 = v48.f64[0];
                if (v56 != -1)
                {
                  if (!((v56 + 1) >> 60))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                MEMORY[0xFFFFFFFFFFFFFFF0] = v23;
                if (v49 <= 1.0)
                {
                  v57 = v49;
                }

                else
                {
                  v57 = 1.0;
                }

                if (v49 < 0.0)
                {
                  v57 = 0.0;
                }

                *&dword_8[4 * v56] = v57;
                memcpy(0, 0, v55);
                v58 = 16 * v56 + 16;
                v59 = v58 >> 4;
                if (((v58 >> 4) + 1) >> 60)
                {
                  sub_1794();
                }

                if (v58 >> 4 != -1)
                {
                  if (!(((v58 >> 4) + 1) >> 60))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                *(16 * v59) = v23;
                if (v95 <= 1.0)
                {
                  v60 = v95;
                }

                else
                {
                  v60 = 1.0;
                }

                if (v95 < 0.0)
                {
                  v60 = 0.0;
                }

                *&dword_8[4 * v59] = v60;
                v20 = 16 * v59 + 16;
                memcpy(0, 0, v58);
                v3 = a2;
              }
            }
          }
        }

        else
        {
          v21 = *a1;
          v23 = *(v7 - 24);
          v22 = *(v7 - 16);
          v24 = (*a1 + 16 * v23);
          v25 = a1[3];
          v26 = (v25 + 16 * v22);
          v27 = (v5 + 32);
          v28 = v23;
          v29 = v25;
          v30 = *v24;
          v31 = vsubq_f64(v24[1], *v24);
          v32 = vmulq_f64(v31, v31);
          v33 = vaddvq_f64(v32);
          if (v33 != 0.0)
          {
            goto LABEL_31;
          }
        }
      }

      v5 += 24;
      v7 += 24;
      if (v7 == v6)
      {
        goto LABEL_7;
      }
    }
  }

  v20 = 0;
LABEL_7:
  v9 = 126 - 2 * __clz(v20 >> 4);
  if (v20)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  sub_3E760(0, v20, &v96, v10, 1);
  if (v20)
  {
    v11 = 0;
    while (1)
    {
      v12 = v11;
      v11 += 2;
      if (v11 == v20)
      {
        break;
      }

      v13 = *v12;
      if (*v12 == *(v12 + 2) && v12[1] == v12[3])
      {
        if (v12 + 4 != v20)
        {
          v15 = 2;
          do
          {
            v16 = v13;
            v17 = &v11[v15];
            v13 = v11[v15];
            v18 = *&v11[v15 + 1];
            if (v16 != v13 || v12[1] != v18)
            {
              *(v12 + 2) = v13;
              v12 += 2;
              v12[1] = v18;
            }

            v15 += 2;
          }

          while (v17 + 2 != v20);
        }

        v61 = (v12 + 2);
        if (v12 + 2 != v20)
        {
          goto LABEL_72;
        }

        break;
      }
    }
  }

  v61 = v20;
LABEL_72:
  if (v61)
  {
    v62 = (v61 - 16);
    if (v61 != 16)
    {
      v63 = 0;
      do
      {
        v64 = *v63;
        *v63 = *v62;
        *v62 = v64;
        v65 = v63[1];
        v63[1] = v62[1];
        v62[1] = v65;
        v63 += 2;
        v62 -= 2;
      }

      while (v63 < v62);
    }
  }

  v66 = 3;
  if (v3)
  {
    v66 = 0;
  }

  v67 = &a1[v66];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v69 = a1[v66];
  v68 = a1[v66 + 1];
  v70 = ((v68 - *v67) >> 4) + (v61 >> 4);
  if (v70)
  {
    if (!(v70 >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v71 = 0;
  if (v68 == v69)
  {
    return;
  }

  v93 = (v68 - *v67) >> 4;
  v72 = 0;
  v73 = 0;
  do
  {
    v75 = *v67;
    if (v73 >= v70)
    {
      v76 = v73 - v71;
      v77 = v73 - v71;
      v78 = v77 + 1;
      if ((v77 + 1) >> 60)
      {
        sub_1794();
      }

      if ((v70 - v71) >> 3 > v78)
      {
        v78 = (v70 - v71) >> 3;
      }

      if (v70 - v71 >= 0x7FFFFFFFFFFFFFF0)
      {
        v79 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v79 = v78;
      }

      if (v79)
      {
        if (!(v79 >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      *(16 * v77) = *(v75 + 16 * v72);
      v73 = (16 * v77 + 16);
      memcpy(0, v71, v76);
      *a3 = 0;
      a3[1] = v73;
      a3[2] = 0;
      if (v71)
      {
        operator delete(v71);
      }

      v70 = a3[2];
      v71 = *a3;
      if (!v61)
      {
        goto LABEL_83;
      }
    }

    else
    {
      *v73++ = *(v75 + 16 * v72);
      v70 = a3[2];
      v71 = *a3;
      if (!v61)
      {
        goto LABEL_83;
      }
    }

    v74 = v61;
    while (1)
    {
      v80 = *(v74 - 16);
      v74 -= 16;
      if (v80 != v72)
      {
        break;
      }

      v81 = vaddq_f64(vmulq_n_f64(*(*v67 + 16 * v72), 1.0 - *(v61 - 8)), vmulq_n_f64(*(*v67 + 16 * v72 + 16), *(v61 - 8)));
      if (v73 < v70)
      {
        *v73++ = v81;
        v61 = v74;
        if (!v74)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v82 = v73 - v71;
        v83 = v73 - v71;
        v84 = v83 + 1;
        if ((v83 + 1) >> 60)
        {
          a3[1] = v73;
          a3[2] = v70;
          *a3 = v71;
          sub_1794();
        }

        if ((v70 - v71) >> 3 > v84)
        {
          v84 = (v70 - v71) >> 3;
        }

        if (v70 - v71 >= 0x7FFFFFFFFFFFFFF0)
        {
          v85 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v85 = v84;
        }

        if (v85)
        {
          if (!(v85 >> 60))
          {
            operator new();
          }

          a3[1] = v73;
          a3[2] = v70;
          *a3 = v71;
          sub_1808();
        }

        v70 = 0;
        *(16 * v83) = v81;
        v73 = (16 * v83 + 16);
        memcpy(0, v71, v82);
        if (v71)
        {
          operator delete(v71);
        }

        v71 = 0;
        v61 = v74;
        if (!v74)
        {
          goto LABEL_84;
        }
      }
    }

LABEL_83:
    v74 = v61;
LABEL_84:
    a3[1] = v73;
    a3[2] = v70;
    *a3 = v71;
    ++v72;
    v61 = v74;
  }

  while (v72 != v93);
  if (v71 != v73)
  {
    f64 = v71[-1].f64;
    do
    {
      if (f64 + 4 == v73)
      {
        return;
      }

      v87 = f64[2];
      f64 += 2;
    }

    while (v87 != f64[2] || f64[1] != f64[3]);
    v89 = f64 + 4;
    if (f64 + 4 == v73)
    {
      v90 = f64 + 2;
      if (f64 + 2 == v73)
      {
        return;
      }

      goto LABEL_135;
    }

    do
    {
      if (*f64 != *v89 || f64[1] != v89[1])
      {
        *(f64 + 1) = *v89;
        f64 += 2;
      }

      v89 += 2;
    }

    while (v89 != v73);
    v90 = f64 + 2;
    if (f64 + 2 != a3[1])
    {
LABEL_135:
      a3[1] = v90;
    }
  }
}